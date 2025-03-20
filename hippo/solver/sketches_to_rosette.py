import re
import subprocess, os, glob
import math
import time

### The purpose of this file is to take assembly code chunks (from the LM) and translate them into Rosette program sequences
### The fields we want to populate are: risc_input_reg, symbolic_consts_risc, risc_program_sequence, risc_output_reg; then same for arm
### This may resemble a synchronous grammar

class AssemblyToRosette:
    def __init__(self, block, input_registers, output_register, verbose):
        self.hole = "??"
        self.block = block
        self.verbose = verbose
        self.language = None
        self.regtype = 'reg64'
        self.bv_template = '(bv {number} 64)'
        self.input_registers = input_registers
        self.output_register = output_register
        self.imm5 = (f'({self.regtype} 0)', f'({self.regtype} {(2**5)-1})')
        self.imm12 = (f'({self.regtype} 0)', f'({self.regtype} {(2**12)-1})')
        self.imm16 = (f'({self.regtype} 0)', f'({self.regtype} {(2**16)-1})')
        self.imm32 = (f'({self.regtype} {-(2**31)})', f'({self.regtype} {(2**32)-1})')
        self.imm64 = (f'({self.regtype} {-(2**63)})', f'({self.regtype} {(2**64)-1})')
        self.hex16 = (f'({self.regtype} 0)', f'({self.regtype} {(2**64)-1})')

    def reset(self):
        self.sym_const_count = 0
        self.sym_consts_to_constraints = {}
        self.program_sequence = []
        self.out_reg = None
        self.nonfree_vars = set()

    def add_constraint_and_regenerate(self, const_varname, new_constraint):
        if const_varname not in self.sym_consts_to_constraints:
            self.sym_consts_to_constraints[const_varname] = []
        self.sym_consts_to_constraints[const_varname].append(new_constraint)
        self.rosette_function = self.extractions_to_rosette()

    def extractions_to_rosette(self):
        sym_consts = ""
        if len(self.sym_consts_to_constraints) > 0:
            sym_consts = f"\n\t(define-symbolic {' '.join(self.sym_consts_to_constraints.keys())} {self.regtype}?)"
            for sym_constraints in self.sym_consts_to_constraints.values():
                for sym_constraint in sym_constraints:
                    sym_consts += f"\n\t{sym_constraint}"
        rosette_prog = "\n\t".join(self.program_sequence)
        if (self.output_register[0] == 'w') and (self.language == 'arm'): rosette_prog += f"\n\t[{self.output_register} (extract 31 0 x{self.output_register[1:]})]"
        return f"(define ({self.language} {' '.join(self.input_registers)}){sym_consts}\n\t(let* ({rosette_prog}) {self.output_register}))"

    def block_to_rosette(self, block):
        self.reset()
        # if self.verbose: print(f'{self.language}:\n{block}')
        for line in block.split("\n"):
            line = line.strip()
            if len(line) == 0:
                continue
            matched = False
            for regex, action in self.regex_action_pairs:
                try:
                    if action(re.search(regex, line)):
                        matched = True
                        break
                except AssertionError:
                    return
            if not matched:
                print(f"Could not match on line {line}")
                # import pdb;pdb.set_trace()
                return

    def float_to_bitvector(self, float_val:str, bv_size:int):
        assert bv_size==64
        return ''.join('{:0>8b}'.format(c) for c in struct.pack('!d', 1)) 

    def bitvector_to_float(self, bitvector:str, bv_size:int):
        assert bv_size==64
        sign = (-1) ** int(bitvector[0])
        exponent = 2**(int(bitvector[1:12], 2) - 1023)
        significand = 1 + sum(int(bitvector[i])*(2**(11-i)) for i in range(12, len(bitvector)))
        return sign * significand * exponent

class RISCVToRosette(AssemblyToRosette):
    def __init__(self, block, input_registers, output_register, verbose):
        super().__init__(block, input_registers, output_register, verbose)
        self.language = "risc"
        ht = re.escape(self.hole)
        self.regex_action_pairs = [
            (re.compile(f"(slli?w?)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*(\S+|{ht})"), self.slli),
            (re.compile(f"(sr[la]i?w?)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*(\S+|{ht})"), self.srlai),
            (re.compile(f"(l[ai])\s+([a-z]+\d*),\s*(-?\d+|{ht})"), self.li),
            (re.compile(f"(addiw?)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*(-?\d+|{ht})"), self.addi),
            (re.compile("([f]?(add|sub|mul|divu?|remu?|and|or|xor)\.?\S?)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*([a-z]+\d*)"), self.bop),
            (re.compile("((add|sub)w)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*([a-z]+\d*)"), self.bopw),
            (
                re.compile(f"(and|or|xor)i\s+([a-z]+\d*),\s*([a-z]+\d*),\s*(0x[a-f0-9]+|\d+|{ht})"),
                self.bopi,
            ),
            (re.compile("(f?mv(\.[xwsd](\.[xwsd])?)?)\s+([a-z]+\d*),\s*([a-z]+\d+|zero)"), self.mv),
            (
                re.compile("sext\.w\s+([a-z]+\d*),\s*([a-z]+\d*)"),
                self.sext,
            ),
            # (re.compile("([f|s]cvt(\.[dlsw]\.[dlsw])?)\s+([a-z]+\d*),\s*([a-z]+\d*)"), self.cvt),
            # (re.compile("s(eq|ne|lt|gt)z\s+([a-z]+\d*),\s*([a-z]+\d*)"), self.zero_comparator),
            # (
            #     re.compile("f(eq|le|lt)\.[sd]\s+([a-z]+\d*),\s*([a-z]+\d*),\s*([a-z]+\d*)"),
            #     self.reg_comparator,
            # ),
            # (
            #     re.compile("(s[lg]tu?)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*([a-z]+\d*)"),
            #     self.signed_comparator,
            # ),
            (re.compile(f"(sltiu?)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*(\d+|{ht})"), self.imm_comparator),
            (re.compile("(fneg\.d|negw?)\s+([a-z]+\d*),\s*([a-z]+\d*)"), self.neg),
            # (re.compile('lla\s+([a-z]+\d*),\s*(\.LC\d+)'), self.lla),
        ]

        self.block_to_rosette(block)
        self.rosette_function = self.extractions_to_rosette()

    def slli(self, matches):
        # (re.compile("(slli?w?)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*(\S+|{ht})"), self.slli),
        if not matches:
            return False
        op = matches.group(1)
        regt = matches.group(2)
        regs = matches.group(3)
        
        assert (regs in self.nonfree_vars) or (regs in self.input_registers)
        if op.endswith('w'): bvsize = 32
        else: bvsize = 64
        regs = f'(extract {bvsize-1} 0 {regs})' # if we are working at word level, need to pull out the bottom 32 bits of regs
        shift_amt = matches.group(4)
        if op.startswith('slli'): # if we are shifting by an immediate, check if it's a hole 
            if shift_amt == self.hole:
                shift_amt = f"imm5_{self.sym_const_count}"
                self.sym_const_count += 1
                self.sym_consts_to_constraints[shift_amt] = [
                    f"(assert (bvugt {shift_amt} {self.imm5[0]}))",
                    f"(assert (bvult {shift_amt} {self.imm5[1]}))",
                ]
                shift_amt = f'(zero-extend (extract 4 0 {shift_amt}) (bitvector {bvsize}))' # pull out the bottom 5 bits and convert back to desired size
            else:
                shift_amt = f'(zero-extend (extract 4 0 ({self.regtype} {shift_amt})) (bitvector {bvsize}))' # pull out the bottom 5 bits and convert back to desired size
        else: 
            assert (shift_amt in self.nonfree_vars) or (shift_amt in self.input_registers) # if instead we are shifting by a register, 
            shift_amt = f'(zero-extend (extract 4 0 {shift_amt}) (bitvector {bvsize}))' # pull out the bottom 5 bits and convert back to desired size
            
        if op.endswith('w'): self.program_sequence.append(f"[{regt} (sign-extend (bvshl {regs} {shift_amt}) (bitvector 64))]")
        else: self.program_sequence.append(f"[{regt} (bvshl {regs} {shift_amt})]")
        self.nonfree_vars.add(regt)
        self.out_reg = regt
        return True

    def srlai(self, matches):
        # (re.compile("(sr[la]i?w?)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*(\S+|{ht})"), self.srlai),
        if not matches: return False
        op = matches.group(1)
        regt = matches.group(2)
        regs = matches.group(3)
        shift_amt = matches.group(4)

        if op.endswith('w'): bvsize = 32
        else: bvsize = 64

        assert (regs in self.nonfree_vars) or (regs in self.input_registers)
        regs = f'(extract {bvsize-1} 0 {regs})' # if we are working at word level, need to pull out the bottom 32 bits of regs
        
        op_str = None
        if op.startswith('srl'): op_str = 'bvlshr'
        elif op.startswith('sra'): op_str = 'bvashr'
        else: assert False
        if 'i' in op: # if we are shifting by an immediate, check if it's a hole 
            if shift_amt == self.hole:
                shift_amt = f"imm5_{self.sym_const_count}"
                self.sym_const_count += 1
                self.sym_consts_to_constraints[shift_amt] = [
                    f"(assert (bvugt {shift_amt} {0}))",
                    f"(assert (bvult {shift_amt} {(2**5)-1}))",
                ]
        else: 
            assert (shift_amt in self.nonfree_vars) or (shift_amt in self.input_registers) # if instead we are shifting by a register,
             
        shift_amt = f'(zero-extend (extract 4 0 ({self.regtype} {shift_amt})) (bitvector {bvsize}))' # pull out the bottom 5 bits and convert back to desired size
            
        if op.endswith('w'): self.program_sequence.append(f"[{regt} (sign-extend ({op_str} {regs} {shift_amt}) (bitvector 64))]")
        else: self.program_sequence.append(f"[{regt} ({op_str} {regs} {shift_amt})]")
        self.nonfree_vars.add(regt)
        self.out_reg = regt
        return True

    def li(self, matches):
        # re.compile("(l[ai])\s+([a-z]+\d*),\s*(-?\d*|{ht})")
        if not matches: return False
        op = matches.group(1)
        regt = matches.group(2)
        imm32 = matches.group(3)
        if imm32 == self.hole:
            imm32 = f"imm32_{self.sym_const_count}"
            self.sym_const_count += 1
            self.sym_consts_to_constraints[imm32] = [
                f"(assert (bvsgt {imm32} {self.imm32[0]}))",
                f"(assert (bvslt {imm32} {self.imm32[1]}))",
            ]
        else: imm32 = f"(bv {imm32} 64)"
        if len(self.program_sequence) == 0:
            if op == 'la': self.program_sequence.append(f"[{regt} (concat (extract 31 0 {imm32}) (bv 0 32))]")
            elif op == 'li': self.program_sequence.append(f"[{regt} (zero-extend (extract 31 0 {imm32}) (bitvector 64))]") 
        else: 
            if op == 'la': self.program_sequence.append(f"[{regt} (concat (extract 31 0 {imm32}) (extract 31 0 {regt}))]")
            elif op == 'li': 
                if (regt in self.nonfree_vars) or (regt in self.input_registers):
                    self.program_sequence.append(f"[{regt} (concat (extract 63 32 {regt}) (extract 31 0 {imm32}))]")
                else: 
                    self.program_sequence.append(f"[{regt} (zero-extend (extract 31 0 {imm32}) (bitvector 64))]")
        self.nonfree_vars.add(regt)
        self.out_reg = regt
        return True

    def addi(self, matches):
        # re.compile("(addiw?)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*(-?\d+)")
        if not matches: return False
        op = matches.group(1)
        regt = matches.group(2)
        regs = matches.group(3)
        imm12 = matches.group(4)

        if op.endswith('w'): bvsize = 32
        else: bvsize = 64

        assert (regs in self.nonfree_vars) or (regs in self.input_registers)
        regs = f'(extract {bvsize-1} 0 {regs})' # if we are working at word level, need to pull out the bottom 32 bits of regs
        
        if imm12 == self.hole:
            imm12 = f"imm12_{self.sym_const_count}"
            self.sym_const_count += 1
            self.sym_consts_to_constraints[imm12] = [
                f"(assert (bvsgt {imm12} {self.imm12[0]}))",
                f"(assert (bvslt {imm12} {self.imm12[1]}))",
            ]
        else: imm12 = f'(bv {imm12} 12)'
        imm12 = f'(sign-extend {imm12} (bitvector {bvsize}))'

        result = f'(bvadd {regs} {imm12})'
        if op.endswith('w'): self.program_sequence.append(f"[{regt} (sign-extend {result} (bitvector 64))]")
        else: self.program_sequence.append(f"[{regt} {result}]")
        self.nonfree_vars.add(regt)
        self.out_reg = regt
        return True

    def bop(self, matches):
        # re.compile("([f]?(add|sub|mul|divu?|remu?|and|or|xor)\.?\S?)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*([a-z]+\d*)"),,
        if matches is None:
            return False
        op = matches.group(1)
        regt = matches.group(3)
        regs1 = matches.group(4)
        regs2 = matches.group(5)
        assert (regs1 in self.nonfree_vars) or (regs1 in self.input_registers)
        assert (regs2 in self.nonfree_vars) or (regs2 in self.input_registers)
        if 'add' in op: op_str = "bvadd"
        elif 'sub' in op: op_str = "bvsub"
        elif 'mul' in op: op_str = "bvmul"
        elif 'divu' in op: op_str = "bvudiv"
        elif 'div': op_str = "bvsdiv"
        elif 'remu' in op: op_str = "bvurem"
        elif 'rem' in op: op_str = "bvsrem"
        elif op == 'and': op_str = "bvand"
        elif op == 'or': op_str = "bvor"
        elif op == 'xor': op_str = "bvxor"
        else: import pdb; pdb.set_trace()
        if op[-1] == 'w':
            self.program_sequence.append(f"[{regt} (sign-extend ({op_str} (extract 31 0 {regs1}) (extract 31 0 {regs2})) (bitvector 64))]")
        else:
            self.program_sequence.append(f"[{regt} ({op_str} {regs1} {regs2})]")
        self.nonfree_vars.add(regt)
        self.out_reg = regt
        return True

    def bopw(self, matches):
        # re.compile("((add|sub)w)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*([a-z]+\d*)"),
        if matches is None:
            return False
        op = matches.group(1)
        regt = matches.group(3)
        regs1 = matches.group(4)
        regs2 = matches.group(5)
        assert (regs1 in self.nonfree_vars) or (regs1 in self.input_registers)
        assert (regs2 in self.nonfree_vars) or (regs2 in self.input_registers)

        regs1 = f'(extract 31 0 {regs1})' # if we are working at word level, need to pull out the bottom 32 bits of regs
        regs2 = f'(extract 31 0 {regs2})' # if we are working at word level, need to pull out the bottom 32 bits of regs
        
        if op in {'addw'}: op_str = "bvadd"
        elif op in {'subw'}: op_str = "bvsub"
        self.program_sequence.append(f"[{regt} (sign-extend ({op_str} {regs1} {regs2}) (bitvector 64))]")
        self.nonfree_vars.add(regt)
        self.out_reg = regt
        return True

    def bopi(self, matches):
        # re.compile("(and|or|xor)i\s+([a-z]+\d*),\s*([a-z]+\d*),\s*(0x[a-f0-9]+|\d+)")
        if matches is None:
            return False
        op = matches.group(1)
        regt = matches.group(2)
        regs1 = matches.group(3)
        imm12 = matches.group(4)
        if imm12[:2] == "0x": imm12 = f"(sign-extend (bv #{imm12[1:]} 12) (bitvector 64))"
        elif imm12.isdigit(): imm12 = f"(sign-extend (bv {imm12} 12) (bitvector 64))"
        elif imm12 == self.hole: 
            imm12 = f"imm12_{self.sym_const_count}"
            self.sym_const_count += 1
            self.sym_consts_to_constraints[imm12] = [
                f"(assert (bvsgt {imm12} {self.imm12[0]}))",
                f"(assert (bvslt {imm12} {self.imm12[1]}))",
            ]
        assert (regs1 in self.nonfree_vars) or (regs1 in self.input_registers)
        if "and" in op:
            op_str = "bvand"
        elif "or" in op:
            op_str = "bvor"
        elif "xor" in op:
            op_str = "bvxor"
        self.program_sequence.append(f"[{regt} ({op_str} {regs1} {imm12})]")
        self.nonfree_vars.add(regt)
        self.out_reg = regt
        return True

    def mv(self, matches):
        # re.compile("(f?mv(\.[xwsd](\.[xwsd])?)?)\s+([a-z]+\d*),\s*([a-z]+\d+|zero)")
        if not matches:
            return False
        op = matches.group(1)
        regt = matches.group(4)
        regs = matches.group(5)
        if regs == "zero": regs = "(reg64 0)"
        else: 
            if (regs not in self.nonfree_vars) and (regs not in self.input_registers):
                import pdb; pdb.set_trace()
                assert False, f'{regs} not a nonfree var {self.nonfree_vars} or input regs {self.input_registers}, {matches.group(0)}'
        if op in {'fmv.x.w','fmv.x.s','fmv.s', 'fmv.w', 'fmv.w.x', 'fmv.s.x'}: 
            if (regt in self.nonfree_vars) or (regt in self.input_registers):
                self.program_sequence.append(f"[{regt} (concat (extract 63 32 {regt}) (extract 31 0 {regs}))]")
            else:
                self.program_sequence.append(f"[{regt} (sign-extend (extract 31 0 {regs}) (bitvector 64))]")
        elif op in {'fmv.d', 'mv'}: self.program_sequence.append(f"[{regt} {regs}]")
        elif op in {'fmv.x.d'}: self.program_sequence.append(f"[{regt} (extract 63 0 {regs})]")
        else: assert False, f"{matches.group(0)}"
        self.nonfree_vars.add(regt)
        self.out_reg = regt
        return True

    def sext(self, matches):
        # re.compile("sext\.w\s+([a-z]+\d*),\s*([a-z]+\d*)"),
        if not matches:
            return False
        regt = matches.group(1)
        regs = matches.group(2)
        assert (regs in self.nonfree_vars) or (regs in self.input_registers)
        regs = f'(extract 31 0 {regs})'
        self.program_sequence.append(f"[{regt} (sign-extend {regs} (bitvector 64))]")
        self.nonfree_vars.add(regt)
        self.out_reg = regt
        return True

    def zero_comparator(self, matches):
        # re.compile("s(eq|ne|lt|gt)z\s+([a-z]+\d*),\s*([a-z]+\d*)")
        if not matches:
            return False
        comparator = matches.group(1)
        regt = matches.group(2)
        regs = matches.group(3)
        assert (regs in self.nonfree_vars) or (regs in self.input_registers)
        
        if comparator in {"eq", "ne"}:
            comparator_str = "bveq"
        if comparator == "lt":
            comparator_str = "bvslt"
        if comparator == "gt":
            comparator_str = "bvsgt"
        if comparator == 'ne': 
            self.program_sequence.append(
                f"[{regt} (bool->bitvector (! ({comparator_str} {regs} (bv 0 64))) 64)]"
            )
        else:
            self.program_sequence.append(
                f"[{regt} (bool->bitvector ({comparator_str} {regs} (bv 0 64)) 64)]"
            )
        self.nonfree_vars.add(regt)
        self.out_reg = regt
        return True

    def reg_comparator(self, matches):
        # re.compile("f(eq|le|lt)\.[sd]\s+([a-z]+\d*),\s*([a-z]+\d*),\s*([a-z]+\d*)")
        if not matches:
            return False
        comparator = matches.group(1)
        regt = matches.group(2)
        regs1 = matches.group(3)
        regs2 = matches.group(4)
        assert (regs1 in self.nonfree_vars) or (regs1 in self.input_registers)
        assert (regs2 in self.nonfree_vars) or (regs2 in self.input_registers)
        if comparator in {"eq", "ne"}:
            comparator_str = "bveq"
        if comparator == "lt":
            comparator_str = "bvslt"
        if comparator == "gt":
            comparator_str = "bvsgt"
        if comparator == 'ne': 
            self.program_sequence.append(
                f"[{regt} (bool->bitvector (! ({comparator_str} {regs1} {regs2})))]"
            )
        else:
            self.program_sequence.append(
                f"[{regt} (bool->bitvector ({comparator_str} {regs1} {regs2}))]"
            )
        self.nonfree_vars.add(regt)
        self.out_reg = regt
        return True

    def signed_comparator(self, matches):
        # re.compile("(s[lg]tu?)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*([a-z]+\d*)"),
        if not matches:
            return False
        comparator = matches.group(1)
        regt = matches.group(2)
        regs1 = matches.group(3)
        regs2 = matches.group(4)
        assert (regs1 in self.nonfree_vars) or (regs1 in self.input_registers)
        assert (regs2 in self.nonfree_vars) or (regs2 in self.input_registers)
        if comparator.endswith('u'):
            if 'l' in comparator: comparator_str = 'bvult'
            elif 'g' in comparator: comparator_str = 'bvugt'
        else:
            if 'l' in comparator: comparator_str = 'bvslt'
            elif 'g' in comparator: comparator_str = 'bvsgt'
        self.program_sequence.append(
            f"[{regt} (bool->bitvector ({comparator_str} {regs1} {regs2}))]"
        )
        self.nonfree_vars.add(regt)
        self.out_reg = regt
        return True

    def imm_comparator(self, matches):
        # re.compile("(sltiu?)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*(\d+)")
        if not matches:
            return False
        comparator = matches.group(1)
        regt = matches.group(2)
        regs1 = matches.group(3)
        imm12 = matches.group(4)
        assert (regs1 in self.nonfree_vars) or (regs1 in self.input_registers)
        if comparator.endswith('u'):
            comparator_str = 'bvult'
        else:
            comparator_str = 'bvslt'
        self.program_sequence.append(
            f"[{regt} (bool->bitvector ({comparator_str} {regs1} (bv {imm12} 64)))]"
        )
        self.nonfree_vars.add(regt)
        self.out_reg = regt
        return True
        return True

    def neg(self, matches):
        # re.compile("(fneg\.d|negw?)\s+([a-z]+\d*),\s*([a-z]+\d*)")
        if not matches:
            return False
        regt = matches.group(2)
        regs = matches.group(3)
        assert (regs in self.nonfree_vars) or (regs in self.input_registers)
        # TODO handle the diff op cases
        self.program_sequence.append(f"[{regt} (bvneg {regs})]")
        self.nonfree_vars.add(regt)
        self.out_reg = regt
        return True

class ArmToRosette(AssemblyToRosette):
    def __init__(self, block, input_registers, output_register, verbose):
        super().__init__(block, input_registers, output_register, verbose)
        self.language = "arm"

        self.input_registers = {f'x{ir[1:]}' if ir[0] in {'x','w','r'} else f'v{ir[1:]}' for ir in input_registers} # | {f'w{ir[1:]}' for ir in input_registers} | {f'r{ir[1:]}' for ir in input_registers} # input registers are overlapped
        ht = re.escape(self.hole)
        self.regex_action_pairs = [
            (re.compile(f"f?mov\s+([a-z]+\d*),\s*({ht}|-?\d+|[a-z]+\d*)"), self.mov),
            (
                re.compile("([us]xtw)\s+([a-z]+\d*),\s*([a-z]+\d*)"),
                self.ext,
            ),
            (
                re.compile(f"movk\s+([a-z]+\d*),\s*({ht}|0x[0-9a-f]+),\s+lsl\s+(\d+|{ht})"),
                self.movk,
            ),
            (re.compile(f"lsl\s+([a-z]+\d*),\s*([a-z]+\d*),\s*({ht}|\d+|[a-z]+\d*)"), self.lsl),
            (
                re.compile(f"([la]sr)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*({ht}|\d+|[a-z]+\d*)"),
                self.lasr,
            ),  
            (
                re.compile(f"(f?add|f?add\..|sub|and|or|xor)s?\s+([a-z]+\d*),\s*([a-z]+\d*),\s*([a-z]+\d*|{ht}|#?-?\d+)"),
                self.bop,
            ),
            (
                re.compile(f"(and|orr|eor)\s+([a-z]+\d*),\s*([a-z]+[0-7]+),\s*([a-z]+[0-7]+)"),
                self.logop,
            ),
            (
                re.compile("([us]?mull?)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*([a-z]+\d*)"),
                self.mull,
            ),
            (
                re.compile("([us]mulh)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*([a-z]+\d*)"),
                self.mulh,
            ),
            (
                re.compile("([usf]div)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*([a-z]+\d*)"),
                self.div,
            ),
            (re.compile("(f?neg)\s+([a-z]+\d*),\s*([a-z]+\d*)"), self.neg),
            # (re.compile("(fcvtzs)\s+([a-z]+\d*),\s*([a-z]+\d*)"), self.fcvt),
            # (re.compile('csel\s+([a-z]+\d*),\s*([a-z]+\d*),\s*([a-z]+\d*),\s*(eq|lt|gt)'), self.csel),
        ]
        self.block_to_rosette(block)
        self.rosette_function = self.extractions_to_rosette()

    def set_lower_bits(self, regt, val, num_total_bits=64, num_lower_bits=32):
        tgt_reg_upper = f'(extract {num_total_bits-1} {num_lower_bits} {regt})'
        src_reg_lower = f'(extract {num_lower_bits-1} 0 {val})'
        return f"[{regt} (concat {tgt_reg_upper} {src_reg_lower})]"

    def get_lower_bits(self, reg, num_bits=32):
        return f'(extract {num_bits-1} 0 {reg})'

    def mov(self, matches):
        # re.compile(f"f?mov\s+([a-z]+\d*),\s*({ht}|-?\d+|[a-z]+\d*)")
        if not matches:
            return False
        regt = matches.group(1)
        src = matches.group(2)
        if 'fmov' in matches.group(0):
            assert regt.startswith('d') or regt.startswith('v') or regt.startswith('h') or regt.startswith('q') or regt.startswith('b') or regt.startswith('s')
            regt = 'v'+regt[1:] # we always reason with the full register for ease
            if src == self.hole:
                src = f"float_{self.sym_const_count}"
                self.sym_const_count += 1
                self.program_sequence.append(f"[{regt} {src}]")
            elif src[0].startswith('d'): 
                assert (f'v{src[1:]}' in self.nonfree_vars) or (f'v{src[1:]}' in self.input_registers)
                src = self.get_lower_bits('v'+src[1:], num_bits=64)
                self.program_sequence.append(self.set_lower_bits(regt, src, num_total_bits=128, num_lower_bits=64))
            elif src[0].startswith('x'): 
                assert (src in self.nonfree_vars) or (src in self.input_registers)
                self.program_sequence.append(self.set_lower_bits(regt, src, num_total_bits=128, num_lower_bits=64))
            elif src[0].startswith('w'): 
                assert (f'x{src[1:]}' in self.nonfree_vars) or (f'x{src[1:]}' in self.input_registers)
                src = self.get_lower_bits('x'+src[1:])
                self.program_sequence.append(self.set_lower_bits(regt, src, num_total_bits=128, num_lower_bits=32))
            elif src[0].startswith('s'): 
                assert (f'v{src[1:]}' in self.nonfree_vars) or (f'v{src[1:]}' in self.input_registers)
                src = self.get_lower_bits('v'+src[1:], num_bits=32)
                self.program_sequence.append(self.set_lower_bits(regt, src, num_total_bits=128, num_lower_bits=32))
            elif src.startswith('v'): 
                assert (src in self.nonfree_vars) or (src in self.input_registers)
                self.program_sequence.append(f"[{regt} {src}]")
            elif re.match(r'-?\d+\.\d+[\+-]\d+', src):
                # should this size depend on register?
                src = f'(reg64 #b{self.float_to_bitvector(src, 64)})'
                self.program_sequence.append(f"[{regt} {src}]")
            else:
                assert False, matches.group(0)
            
            self.nonfree_vars.add(f'v{regt[1:]}')
        else: 
            if regt.startswith('x'): 
                if src.startswith('w'): set_regt = '[{regt} (zero-extend {src} (bitvector 64))]'
                else: set_regt = '[{regt} {src}]'
                bvsize = 64
            elif regt.startswith('w'):
                # regt = 'x'+regt[1:]
                if (regt in self.nonfree_vars) or (regt in self.input_registers):
                    set_regt = "[{regt} (concat (extract 63 32 {regt}) {src})]"
                else:
                    set_regt = '[{regt} (zero-extend {src} (bitvector 64))]'
                bvsize = 32
            else: assert False
            if src == self.hole:
                src = f"imm16_{self.sym_const_count}"
                self.sym_const_count += 1
                self.sym_consts_to_constraints[src] = [
                    f"(assert (bvsge {src} {self.imm16[0]}))",
                    f"(assert (bvsle {src} {self.imm16[1]}))",
                ]
                if regt.startswith('w'): src = f'(extract 31 0 {src})'
                regt = 'x'+regt[1:]
                self.program_sequence.append(set_regt.format(regt=regt, src=src))
            elif src.lstrip('#-').isdigit() :
                if src[0]=='#': src = f'(bv {src[1:]} {bvsize})'
                else: src = f'(bv {src} {bvsize})'
                regt = 'x'+regt[1:]
                self.program_sequence.append(set_regt.format(regt=regt, src=src))
            elif src.startswith('w'): 
                assert (f'x{src[1:]}' in self.nonfree_vars) or (f'x{src[1:]}' in self.input_registers)
                src = 'x'+src[1:]
                src = f'(extract 31 0 {src})'
                regt = 'x'+regt[1:]
                self.program_sequence.append(set_regt.format(regt=regt, src=src))
            else:
                assert (src in self.nonfree_vars) or (src in self.input_registers)
                regt = 'x'+regt[1:]
                self.program_sequence.append(f"[{regt} {src}]")
            self.nonfree_vars.add(regt)

        self.out_reg = regt
        return True

    def ext(self, matches):
        # re.compile("([us]xtw)\s+([a-z]+\d*),\s*([a-z]+\d*)")
        if not matches:
            return False
        op = matches.group(1)
        regt = matches.group(2)
        regs = matches.group(3)
        if op == 'sxtw': assert regt.startswith('x') and regs.startswith('w')
        if op == 'uxtw': assert regt.startswith('x') and regs.startswith('w')
        assert (f'x{regs[1:]}' in self.nonfree_vars) or (f'x{regs[1:]}' in self.input_registers)
        regs = f'(extract 31 0 x{regs[1:]})'
        if op[0] == 's': self.program_sequence.append(f"[{regt} (sign-extend {regs} (bitvector 64))]")
        elif op[0] == 'u': self.program_sequence.append(f"[{regt} (zero-extend {regs} (bitvector 64))]")
        self.nonfree_vars.add(f'x{regt[1:]}')
        self.out_reg = regt
        return True

    def movk(self, matches):
        # re.compile(f"movk\s+([a-z]+\d*),\s*({ht}|0x[0-9a-f]+),\s+lsl\s+(\d+|{ht})"),
        if not matches:
            return False
        regt = matches.group(1)
        if regt[0] == 'w': bvsize = 32
        elif regt[0] == 'x': bvsize = 64

        hex_val = matches.group(2)
        if hex_val == self.hole:
            hex_val = f"hex16_{self.sym_const_count}"
            self.sym_const_count += 1
            self.sym_consts_to_constraints[hex_val] = [
                f"(assert (bvuge {hex_val} {self.hex16[0]}))",
                f"(assert (bvule {hex_val} {self.hex16[1]}))",
            ]
            hex_val = f'(extract {bvsize-1} 0 {hex_val})'
        else:
            hex_val = f'(bv #{hex_val[1:]} {bvsize})'
        shift_amt = matches.group(3)
        if shift_amt == self.hole:
            shift_amt = f"immmovklsl_{self.sym_const_count}"
            self.sym_const_count += 1
            self.sym_consts_to_constraints[shift_amt] = [
                f"(assert (or (bveq {shift_amt} (bv 0 {bvsize})) (equal? {shift_amt} (bv 16 {bvsize})) (equal? {shift_amt} (bv 32 {bvsize})) (equal? {shift_amt} (bv 48 {bvsize}))))"
            ]
        else:
            shift_amt = f'(bv {shift_amt} {bvsize})'

        if regt[0] == 'w': 
            regt = 'x' + regt[1:]
            src_reg = f'(extract 31 0 {regt})'
            if (regt in self.nonfree_vars) or (regt in self.input_registers):
                self.program_sequence.append(f"[{regt} (concat (extract 63 32 {regt}) (bvor {src_reg} (bvshl {hex_val} {shift_amt})))]")
            else: 
                self.program_sequence.append(f"[{regt} (zero-extend (bvor {src_reg} (bvshl {hex_val} {shift_amt})) (bitvector 64))]")
        elif regt[0] == 'x': self.program_sequence.append(f"[{regt} (bvor {regt} (bvshl {hex_val} {shift_amt}))]")
        
        self.out_reg = regt
        self.nonfree_vars.add(f'x{regt[1:]}')
        return True

    def lsl(self, matches):
        # re.compile(f"lsl\s+([a-z]+\d*),\s*([a-z]+\d*),\s*({ht}|\d+|[a-z]+\d*)")
        if matches is None:
            return False

        regt = matches.group(1)
        regs = matches.group(2)
        assert regt[0] == regs[0]
        if regt[0] == 'w': bvsize = 32
        else: bvsize = 64
        assert (f'x{regs[1:]}' in self.nonfree_vars) or (f'x{regs[1:]}' in self.input_registers)
        shift_amt = matches.group(3)
        if shift_amt == self.hole:
            shift_amt = f"immshiftl_{self.sym_const_count}"
            self.sym_const_count += 1
            self.sym_consts_to_constraints[shift_amt] = [
                f"(assert (bvsge {shift_amt} (bv 0 {bvsize})))",
                f"(assert (bvsle {shift_amt} (bv {bvsize - 1} {bvsize})))",
            ]
            shift_amt = f'(extract {bvsize-1} 0 {shift_amt})'
        elif shift_amt.isdigit():
            shift_amt = f'(bv {shift_amt} {bvsize})'
        # elif shift_amt[0] == 'w':
        #     shift_amt = f'()'
        if regt[0] == 'w': 
            regt = f'x{regt[1:]}'
            src_reg = f"(extract 31 0 x{regs[1:]})"
            if (regt in self.nonfree_vars) or (regt in self.input_registers):
                self.program_sequence.append(f"[{regt} (concat (extract 63 32 {regt}) (bvshl {src_reg} {shift_amt}))]")
            else:
                self.program_sequence.append(f"[{regt} (zero-extend (bvshl {src_reg} {shift_amt}) (bitvector 64))]")
        else:
            self.program_sequence.append(f"[{regt} (bvshl {regs} {shift_amt})]")
        self.nonfree_vars.add(regt)
        self.out_reg = regt
        return True

    def lasr(self, matches):
        # re.compile(f"([la]sr)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*({ht}|\d+\[a-z]+\d*)")
        if matches is None:
            return False
        op = matches.group(1)
        regt = matches.group(2)
        regs = matches.group(3)
        assert regt[0] == regs[0], f'registers must be the same type: {regt}, {regs}'
        assert (f'x{regs[1:]}' in self.nonfree_vars) or (f'x{regs[1:]}' in self.input_registers)
        if regt[0] == 'w': bvsize = 32
        else: bvsize = 64
        shift_amt = matches.group(4)
        if shift_amt == self.hole:
            shift_amt = f"shiftr_{self.sym_const_count}"
            self.sym_const_count += 1
            self.sym_consts_to_constraints[shift_amt] = [
                f"(assert (bvsge {shift_amt} (bv {2**1} {bvsize})))",
                f"(assert (bvsle {shift_amt} (bv {2**32} {bvsize})))",
            ]
            shift_amt = f'(extract {bvsize-1} 0 {shift_amt})'
        elif shift_amt.isdigit():
            shift_amt = f"(bv {shift_amt} {shift_amt})"

        if op == 'asr': op_str = 'bvashr'
        elif op == 'lsr': op_str = 'bvlshr'

        if regt[0] == 'w':
            src_reg = f'(extract 31 0 x{regs[1:]})'
            if shift_amt[0] == 'w': shift_amt = f'(extract 31 0 x{shift_amt[1:]})'
            if (f'x{regt[1:]}' not in self.nonfree_vars) and (f'x{regt[1:]}' not in self.input_registers): 
                self.program_sequence.append(f"[x{regt[1:]} (zero-extend ({op_str} {src_reg} {shift_amt}) (bitvector 64))]")
            else: self.program_sequence.append(f"[x{regt[1:]} (concat (extract 63 32 x{regt[1:]}) ({op_str} {src_reg} {shift_amt}))]")
        else:
            self.program_sequence.append(f"[{regt} ({op_str} {regs} {shift_amt})]")
        self.nonfree_vars.add(f'x{regt[1:]}')
        self.out_reg = regt
        return True

    def bop(self, matches):
        # re.compile(f"(f?add|f?add\..|sub|and|or|xor)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*([a-z]+\d*|{ht}|#?-?\d+)"),
        if matches is None:
            return False
        op = matches.group(1)
        regt = matches.group(2)
        regs1 = matches.group(3)
        if op[0] == 'f': assert (f'v{regs1[1:]}' in self.nonfree_vars) or (f'v{regs1[1:]}' in self.input_registers), f"{regs1} not an input reg but its free var"
        else: assert (f'x{regs1[1:]}' in self.nonfree_vars) or (f'x{regs1[1:]}' in self.input_registers), f"{regs1} not an input reg but its free var"
        assert (regt[0] == regs1[0]), f"tgt and regs1 need to be the same type {regt}, {regs1}"
        if regs1[0] == 'w': bvsize = 32
        else: bvsize = 64
        arg2 = matches.group(4)
        if arg2.lstrip('#-').isdigit() :
            if arg2[0]=='#': arg2 = f'(bv {arg2[1:]} {bvsize})'
            else: arg2 = f'(bv {arg2} {bvsize})'
        elif re.match(r'[a-z]\d+', arg2):
            if op[0] == 'f': assert (f'v{arg2[1:]}' in self.nonfree_vars) or (f'v{arg2[1:]}' in self.input_registers), f"{arg2} not an input reg but its free var"
            else: assert (f'x{arg2[1:]}' in self.nonfree_vars) or (f'x{arg2[1:]}' in self.input_registers), f"{arg2} not an input reg but its free var"
            assert (regt[0] == arg2[0]), f"tgt and arg2 need to be the same type {regt}, {arg2}"
            arg2 = f'(extract {bvsize-1} 0 x{arg2[1:]})'
        else:
            assert arg2 == self.hole, f'{matches.group(0)} had a non-hole non-reg non-digit last arg'
            arg2 = f"imm12_{self.sym_const_count}"
            self.sym_const_count += 1
            self.sym_consts_to_constraints[arg2] = [
                f"(assert (bvsge {arg2} {self.imm12[0]}))",
                f"(assert (bvsle {arg2} {self.imm12[1]}))",
            ]    
            arg2 = f'(extract {bvsize-1} 0 {arg2})'
        
        if "add" in op:
            op_str = "bvadd"
        elif "sub" in op:
            op_str = "bvsub"
        elif "and" in op:
            op_str = "bvand"
        elif "or" in op:
            op_str = "bvor"
        elif "xor" in op:
            op_str = "bvxor"

        if regt[0] == 'w': 
            src1_reg_lower = self.get_lower_bits(f'x{regs1[1:]}')
            val_to_place = f'({op_str} {src1_reg_lower} {arg2})'
            self.program_sequence.append(self.set_lower_bits(f'x{regt[1:]}', val_to_place))
        else: self.program_sequence.append(f"[{regt} ({op_str} {regs1} {arg2})]")
        if op[0] == 'f': self.nonfree_vars.add(f'v{regt[1:]}')
        else: self.nonfree_vars.add(f'x{regt[1:]}')
        self.out_reg = regt
        return True

    def logop(self, matches):
        # re.compile(f"(and|orr|eor)\s+([a-z]+\d*),\s*([a-z]+[0-7]),\s*([a-z]+[0-7])"),
        if matches is None:
            return False
        op = matches.group(1)
        regt = matches.group(2)
        regs1 = matches.group(3)
        regs2 = matches.group(4)
        assert (regt[0] == regs1[0]), f"tgt and regs1 need to be the same type {regt}, {regs1}"
        assert (regt[0] == regs2[0]), f"tgt and regs2 need to be the same type {regt}, {regs2}"

        if op[0] == 'f': 
            assert (f'v{regs2[1:]}' in self.nonfree_vars) or (f'v{regs2[1:]}' in self.input_registers), f"{regs2} not an input reg but its free var"
            assert (f'v{regs1[1:]}' in self.nonfree_vars) or (f'v{regs1[1:]}' in self.input_registers), f"{regs1} not an input reg but its free var"
        else: 
            assert (f'x{regs1[1:]}' in self.nonfree_vars) or (f'x{regs1[1:]}' in self.input_registers), f"{regs1} not an input reg but its free var"
            assert (f'x{regs2[1:]}' in self.nonfree_vars) or (f'x{regs2[1:]}' in self.input_registers), f"{regs2} not an input reg but its free var"
        assert (regt[0] == regs1[0]), f"tgt and regs1 need to be the same type {regt}, {regs1}"
        if regs1[0] in {'s', 'w'}: bvsize = 32
        elif regs1[0] == 'b': bvsize = 8
        elif regs1[0] == 'h': bvsize = 16
        elif regs1[0] == 'q': bvsize = 128
        else: bvsize = 64
        if op == "and":
            op_str = "bvand"
        elif op == "orr":
            op_str = "bvor"
        elif op == "eor":
            op_str = "bvxor"
        
        if regt[0] == 'w': 
            src1_reg_lower = self.get_lower_bits(f'x{regs1[1:]}')
            src2_reg_lower = self.get_lower_bits(f'x{regs2[1:]}')
            val_to_place = f'({op_str} {src1_reg_lower} {src2_reg_lower})'
            self.program_sequence.append(self.set_lower_bits(f'x{regt[1:]}', val_to_place))
            self.nonfree_vars.add(f'x{regt[1:]}')
        elif op[0] == 'f':
            src1_reg_lower = self.get_lower_bits(f'v{regs1[1:]}', bvsize)
            src2_reg_lower = self.get_lower_bits(f'v{regs2[1:]}', bvsize)
            val_to_place = f'({op_str} {src1_reg_lower} {src2_reg_lower})'
            self.program_sequence.append(self.set_lower_bits(f'v{regt[1:]}', val_to_place, num_total_bits=128, num_lower_bits=bvsize))
            self.nonfree_vars.add(f'v{regt[1:]}')
        else: 
            self.program_sequence.append(f"[{regt} ({op_str} {regs1} {regs2})]")
            self.nonfree_vars.add(f'x{regt[1:]}')
        self.out_reg = regt
        return True

    def mull(self, matches):
        # re.compile("([us]?mull?)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*([a-z]+\d*)"),
        if matches is None:
            return False
        op = matches.group(1)
        regt = matches.group(2)
        regs1 = matches.group(3)
        regs2 = matches.group(4)
        if regs1[0] in {'h', 'b', 's', 'd', 'q', 'v'}: assert (f'v{regs1[1:]}' in self.nonfree_vars) or (f'v{regs1[1:]}' in self.input_registers), f"{regs1} not an input reg but its free var in {matches.group(0)}"
        else: assert (f'x{regs1[1:]}' in self.nonfree_vars) or (f'x{regs1[1:]}' in self.input_registers), f"{regs1} not an input reg but its free var in {matches.group(0)}"
        if regs2[0] in {'h', 'b', 's', 'd', 'q', 'v'}: assert (f'v{regs2[1:]}' in self.nonfree_vars) or (f'v{regs2[1:]}' in self.input_registers), f"{regs2} not an input reg but its free var in {matches.group(0)}"
        else: assert (f'x{regs2[1:]}' in self.nonfree_vars) or (f'x{regs2[1:]}' in self.input_registers), f"{regs2} not an input reg but its free var"
        
        if op in {'umull', 'smull'}:
            assert (regt[0] == 'x'), f"tgt need to be the x type {regt}"
            assert (regs1[0] == 'w'), f"regs1 need to be the w type {regs1}"
            assert (regs2[0] == 'w'), f"regs1 need to be the w type {regs2}"
            if op == 'umull': extension = 'zero-extend'
            elif op == 'smull': extension = 'sign-extend'
            src1_reg_lower = self.get_lower_bits(f'x{regs1[1:]}')
            src2_reg_lower = self.get_lower_bits(f'x{regs2[1:]}')
            regs1 = f'({extension} {src1_reg_lower} (bitvector 64))'
            regs2 = f'({extension} {src2_reg_lower} (bitvector 64))'
            val = f"(extract 63 0 (bvmul {regs1} {regs2}))"
            self.program_sequence.append(f"[{regt} {val}]")
        elif op == 'mul': 
            if regs1[0] in {'s', 'w'}: bvsize = 32
            elif regs1[0] == 'b': bvsize = 8
            elif regs1[0] == 'h': bvsize = 16
            elif regs1[0] == 'q': bvsize = 128
            else: bvsize = 64

            if regs1[0] == 'w': regs1 = self.get_lower_bits(f'x{regs1[1:]}')
            elif regs1[0] in {'s', 'b', 'h', 'q', 'v'}: regs1 = self.get_lower_bits(f'v{regs1[1:]}', bvsize)
            if regs2[0] == 'w': regs2 = self.get_lower_bits(f'x{regs2[1:]}')
            elif regs2[0] in {'s', 'b', 'h', 'q', 'v'}: regs2 = self.get_lower_bits(f'v{regs2[1:]}', bvsize)
            val = f"(bvmul {regs1} {regs2})"
            if regt[0] == 'w': self.program_sequence.append(self.set_lower_bits(f'x{regt[1:]}', val))
            elif regt[0] in {'s', 'b', 'h', 'q', 'v'}: self.program_sequence.append(self.set_lower_bits(f'v{regt[1:]}', val))
            else: self.program_sequence.append(f"[{regt} {val}]")
        
        if regt[0] in {'w', 'x'}: self.nonfree_vars.add(f'x{regt[1:]}')
        else: self.nonfree_vars.add(f'v{regt[1:]}')
        self.out_reg = regt
        return True

    def mulh(self, matches):
        # re.compile("([us]mulh)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*([a-z]+\d*)"),
        if matches is None:
            return False
        op = matches.group(1)
        regt = matches.group(2)
        regs1 = matches.group(3)
        regs2 = matches.group(4)
        assert (regt[0] == 'x'), f"tgt need to be the x type {regt}"
        assert (regs1[0] == 'x'), f" regs1 need to be x type {regs1}"
        assert (regs2[0] == 'x'), f" regs2 need to be x type {regs2}"
        assert (f'x{regs1[1:]}' in self.nonfree_vars) or (f'x{regs1[1:]}' in self.input_registers), f"{regs1} not an input reg but its free var"
        assert (f'x{regs2[1:]}' in self.nonfree_vars) or (f'x{regs2[1:]}' in self.input_registers), f"{regs2} not an input reg but its free var"
        
        if op == 'umulh': extension = 'zero-extend'
        elif op == 'smulh': extension = 'sign-extend'
        regs1 = f'({extension} {regs1} (bitvector 128))'
        regs2 = f'({extension} {regs2} (bitvector 128))'
        val = f"(extract 127 64 (bvmul {regs1} {regs2}))"
        self.program_sequence.append(f"[{regt} {val}]")
        self.nonfree_vars.add(f'x{regt[1:]}')
        self.out_reg = regt
        return True

    def div(self, matches):
        # re.compile("([usf]div)\s+([a-z]+\d*),\s*([a-z]+\d*),\s*([a-z]+\d*)"),
        if matches is None:
            return False
        op = matches.group(1)
        regt = matches.group(2)
        regs1 = matches.group(3)
        regs2 = matches.group(4)
        if op[0] == 'f': 
            assert (f'v{regs2[1:]}' in self.nonfree_vars) or (f'v{regs2[1:]}' in self.input_registers), f"{regs2} not an input reg but its free var"
            assert (f'v{regs1[1:]}' in self.nonfree_vars) or (f'v{regs1[1:]}' in self.input_registers), f"{regs1} not an input reg but its free var"
        else: 
            assert (f'x{regs1[1:]}' in self.nonfree_vars) or (f'x{regs1[1:]}' in self.input_registers), f"{regs1} not an input reg but its free var"
            assert (f'x{regs2[1:]}' in self.nonfree_vars) or (f'x{regs2[1:]}' in self.input_registers), f"{regs2} not an input reg but its free var"
        
        if op in {'sdiv', 'fdiv'}: op_str = 'bvsdiv'
        elif op in {'udiv'}: op_str = 'bvudiv'
        if regs1[0] in {'s', 'w'}: bvsize = 32
        elif regs1[0] == 'b': bvsize = 8
        elif regs1[0] == 'h': bvsize = 16
        elif regs1[0] == 'q': bvsize = 128
        else: bvsize = 64

        if op[0] == 'f':
            reg1 = self.get_lower_bits(f'v{regs1[1:]}', bvsize)
            reg2 = self.get_lower_bits(f'v{regs2[1:]}', bvsize)
        else:
            reg1 = self.get_lower_bits(f'x{regs1[1:]}', bvsize)
            reg2 = self.get_lower_bits(f'x{regs2[1:]}', bvsize)

        val = f"({op_str} {reg1} {reg2})"
        if regt[0] == 'w': 
            self.program_sequence.append(self.set_lower_bits(f'x{regt[1:]}', val))
            self.nonfree_vars.add(f'x{regt[1:]}')
        elif op[0] == 'f':
            self.program_sequence.append(self.set_lower_bits(f'v{regt[1:]}', val, num_total_bits=128, num_lower_bits=bvsize))
            self.nonfree_vars.add(f'v{regt[1:]}')
        else: 
            self.nonfree_vars.add(f'x{regt[1:]}')
            self.program_sequence.append(f"[{regt} {val}]")
        self.out_reg = regt
        return True

    def neg(self, matches):
        # re.compile("(f?neg)\s+([a-z]+\d*),\s*([a-z]+\d*)")
        if not matches:
            return False
        op = matches.group(1)
        regt = matches.group(2)
        regs = matches.group(3)
        if op[0] == 'f': 
            assert (f'v{regs[1:]}' in self.nonfree_vars) or (f'v{regs[1:]}' in self.input_registers), f"{regs} not an input reg but its free var"
        else: 
            assert (f'x{regs[1:]}' in self.nonfree_vars) or (f'x{regs[1:]}' in self.input_registers), f"{regs} not an input reg but its free var"
        if regs [0] in {'s', 'w'}: bvsize = 32
        elif regs[0] == 'b': bvsize = 8
        elif regs[0] == 'h': bvsize = 16
        elif regs[0] == 'q': bvsize = 128
        else: bvsize = 64
        if regs[0] == 'w': regs = self.get_lower_bits(f'x{regs[1:]}')
        elif op[0] == 'f': regs = self.get_lower_bits(f'v{regs[1:]}', bvsize)
        val = f"(bvneg {regs})"
        if regt[0] == 'w': 
            self.program_sequence.append(self.set_lower_bits(f'x{regt[1:]}', val))
            self.nonfree_vars.add(f'x{regt[1:]}')
        elif op[0] == 'f':
            self.program_sequence.append(self.set_lower_bits(f'v{regt[1:]}', val, num_total_bits=128, num_lower_bits=bvsize))
            self.nonfree_vars.add(f'v{regt[1:]}')
        else: 
            self.program_sequence.append(f"[{regt} {val}]")
            self.nonfree_vars.add(f'x{regt[1:]}')
        self.out_reg = regt
        return True

class RosetteSolver():
    def __init__(self, src_lang, tgt_lang, verbose, hole_tok="??", sketch_name="scratch_sketch.rkt"):
        self.verbose = verbose
        self.src_lang = src_lang
        self.tgt_lang = tgt_lang
        self.hole = hole_tok
        self.sketch_filename = sketch_name

        self.cached_solns = {}

    def solve_aligned_block_sketches(
        self, src_block_info, pred_sketch_info
    ):
        try:
            if self.tgt_lang == 'arm': pred_translator = ArmToRosette; src_translator = RISCVToRosette
            elif self.tgt_lang == 'risc': pred_translator = RISCVToRosette; src_translator = ArmToRosette
        except AssertionError:
            return None

        if not os.path.isdir("sketches"):
            os.mkdir("sketches")
        (_, _, pred_input_regs, pred_output_reg, pred_sketch) = pred_sketch_info
        if self.hole not in pred_sketch:
            return None


        pred_to_rosette = pred_translator(
            pred_sketch, list(pred_input_regs.keys()), pred_output_reg[0], self.verbose
        )
        (_, _, src_input_regs, src_output_reg, src_block) = src_block_info
        if (src_block, pred_sketch) in self.cached_solns: return self.cached_solns[(src_block, pred_sketch)]
        src_to_rosette = src_translator(
            src_block, src_input_regs, src_output_reg[0], self.verbose
        )
        src_rosette = src_to_rosette.rosette_function

        if len(src_input_regs) != len(pred_input_regs):
            return None
        
        if len(src_input_regs) == 0:
            if self.src_lang == 'arm':
                if src_to_rosette.output_register[0] == 'w': solution_solver = f"(solve (assert (bveq ({self.src_lang}) (extract 31 0 ({self.tgt_lang})))))"
                else: solution_solver = f"(solve (assert (bveq ({self.src_lang}) ({self.tgt_lang}))))"
            elif self.tgt_lang == 'arm':
                if pred_to_rosette.output_register[0] == 'w': solution_solver = f"(solve (assert (bveq (extract 31 0 ({self.src_lang})) ({self.tgt_lang}))))"
                else: solution_solver = f"(solve (assert (bveq ({self.src_lang}) ({self.tgt_lang}))))"
        else:
            # TODO handle case of multiple inputs; make sure theyre aligned
            if self.src_lang == 'arm':
                if src_to_rosette.output_register[0] == 'w': 
                    solution_solver = f"(define-symbolic x {pred_to_rosette.regtype}?)\n(define sol\n    (synthesize\n    #:forall (list x)\n    #:guarantee (assert (bveq ({self.src_lang} x) (extract 31 0 ({self.tgt_lang} x))))))\nsol"
                else: 
                    solution_solver = f"(define-symbolic x {pred_to_rosette.regtype}?)\n(define sol\n    (synthesize\n    #:forall (list x)\n    #:guarantee (assert (bveq ({self.src_lang} x) ({self.tgt_lang} x)))))\nsol"

            elif self.tgt_lang == 'arm':
                if pred_to_rosette.output_register[0] == 'w': 
                    solution_solver = f"(define-symbolic x {pred_to_rosette.regtype}?)\n(define sol\n    (synthesize\n    #:forall (list x)\n    #:guarantee (assert (bveq (extract 31 0 ({self.src_lang} x)) ({self.tgt_lang} x)))))\nsol"
                else: 
                    solution_solver = f"(define-symbolic x {pred_to_rosette.regtype}?)\n(define sol\n    (synthesize\n    #:forall (list x)\n    #:guarantee (assert (bveq ({self.src_lang} x) ({self.tgt_lang} x)))))\nsol"

        failed = False
        start_time = time.time()
        while True:
            pred_rosette = pred_to_rosette.rosette_function
            compiled_rosette = f"#lang rosette\n(require rosette/lib/synthax)\n(define {pred_to_rosette.regtype}? (bitvector 64))\n(define ({pred_to_rosette.regtype} i)\n\t(bv i {pred_to_rosette.regtype}?))\n\n{src_rosette}\n{pred_rosette}\n{solution_solver}"
            if self.verbose: 
                print(f'{src_to_rosette.language}:\n{src_to_rosette.block}')
                print(f'{pred_to_rosette.language}:\n{pred_to_rosette.block}')
                print('-->\n', compiled_rosette)
            with open(f"sketches/{self.sketch_filename}", "w") as wf:
                wf.write(compiled_rosette)
            try:
                output = subprocess.check_output(
                    f"racket sketches/{self.sketch_filename}",
                    shell=True,
                    timeout=120,
                    stderr=subprocess.STDOUT,
                ).decode("utf-8")
                if self.verbose: print('==>\n', output)
                if "(unsat)" in output:
                    return None
            except subprocess.TimeoutExpired as e:
                return None
            except:
                return None
            rosette_hole_answers = []
            for hole_match in re.finditer(r"([a-z0-9]+_\d+)+\s+([^\n]+)", output):
                try:
                    r_type = hole_match.group(1)[: hole_match.group(1).index("_")]
                    translated_value = self.translate_to_ass(r_type, hole_match.group(2))
                    rosette_hole_answers.append(translated_value)
                except AssertionError as e:
                    # if it was bc the value was not an integer, we udpate the constraints
                    const_varname = hole_match.group(1)
                    const_value = hole_match.group(2)
                    pred_to_rosette.add_constraint_and_regenerate(
                        const_varname, f"(assert (! (= {const_varname} {const_value})))"
                    )
                    failed = True
                    break
            if not failed:
                break
            if time.time() - start_time > 300:
                break

        if failed:
            return None

        self.cached_solns[(src_block, pred_sketch)] = self.reconstruct_from_sketch(pred_sketch, rosette_hole_answers)

        return self.cached_solns[(src_block, pred_sketch)]

    def translate_to_ass(self, ass_type, rosette_rep):
        # int, hex, shift
        if ass_type.startswith('imm'): 
            val = re.search(r'\(bv (.+) 64\)', rosette_rep).group(1)
            if val[:2] == "#x": return str(int(val[2:], 16))
        if ass_type.startswith('hex16'):
            val = re.search(r'\(bv (.+) 64\)', rosette_rep).group(1)
            if val[:2] == "#x": return f'0{val[1:]}'
        import pdb; pdb.set_trace()

    def reconstruct_from_sketch(self, sketch, rosette_hole_answers):
        reconstructed = ""
        cursor = 0
        hole_count = 0
        for hole_match in re.finditer(re.compile(f"({re.escape(self.hole)})"), sketch):
            reconstructed += sketch[cursor : hole_match.start()]
            if hole_count >= len(rosette_hole_answers):
                return None  # this happens when we cut off the sketch early e.g. too many free vars
            reconstructed += rosette_hole_answers[hole_count]
            cursor = hole_match.end()
            hole_count += 1
        reconstructed += sketch[cursor:]
        return reconstructed