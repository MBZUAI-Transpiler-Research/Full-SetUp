from abc import ABC, abstractmethod
from typing import Dict, List, Optional, Tuple, Set
from dataclasses import dataclass
from parser import Hole, RISCParser, Instruction, Constant, Register


@dataclass
class RosetteFn:
    name: str
    args: List[str]
    body: str


class RISCToRosette(ABC):
    def __init__(self, block: str, input_registers: List[str], output_register: str, verbose: bool = False):
        self.block = block
        self.input_registers = input_registers
        self.output_register = output_register
        self.verbose = verbose
        self.parser = RISCParser()
        self.hole_counter = 0

    @abstractmethod
    def _get_instruction_map(self) -> Dict[str, Tuple[str, str]]:
        """Return mapping of instruction names to (rosette_op, operation_type)"""
        pass

    @abstractmethod
    def _validate_register(self, reg: str) -> bool:
        """Validate register name for specific architecture"""
        pass

    @abstractmethod
    def _normalize_register(self, reg: str) -> str:
        """Convert register name to normalized form"""
        pass

    @abstractmethod
    def _get_fn_name(self) -> str:
        """Get architecture-specific function name"""
        pass

    def translate(self) -> RosetteFn:
        instructions = self.parser.parse(self.block)
        self.instructions_with_stmts = []

        for instr in instructions:
            if not self._validate_instruction(instr):
                raise ValueError(f"Invalid instruction: {instr}")

            rosette_expr = self._translate_instruction(instr)
            if rosette_expr:
                self.instructions_with_stmts.append(rosette_expr)

        body = self._generate_body()
        return RosetteFn(
            name=self._get_fn_name(),
            args=self.input_registers,  # Use list directly, not converting set->list
            body=body
        )

    def _validate_instruction(self, instr: Instruction) -> bool:
        if isinstance(instr.name, Hole):
            return False  # not supported yet

        if not instr.name in self._get_instruction_map():
            return False

        return True

    def _generate_body(self) -> str:
        if not self.instructions_with_stmts:
            return "(let* [] (bv 0 64))"

        body = "(let* [\n"
        for dst, expr in self.instructions_with_stmts:
            body += f"  [{dst} {expr}]\n"
        body += f"] {self._normalize_register(self.output_register)})"
        return body

    def _translate_operand(self, op) -> str:
        if isinstance(op, Constant):
            if op.base == 16:
                return f"(bv #x{op.value} 64)"
            return f"(bv {op.value} 64)"
        elif isinstance(op, Register):
            return self._normalize_register(op.name)
        elif isinstance(op, Hole):
            self.hole_counter += 1
            return f"hole_{self.hole_counter}"

    def _translate_instruction(self, instr: Instruction) -> Optional[str]:
        if instr.name not in self._get_instruction_map():
            return None

        op, op_type = self._get_instruction_map()[instr.name]
        dst = self._translate_operand(instr.operands[0])

        if op_type == "arith":
            expr = self._translate_arith(instr, op)
        elif op_type == "move":
            expr = self._translate_move(instr)
        elif op_type == "lambda":
            expr = op(self, instr)
        else:
            return None

        return (dst, expr)

    def _translate_arith(self, instr: Instruction, op: str) -> str:
        operands = list(map(self._translate_operand, instr.operands))
        if len(operands) == 2:  # Two operand format
            src1 = operands[0]
            src2 = operands[1]
        else:
            _, src1, src2 = operands

        if instr.name.endswith('w'):
            return f"(sign-extend ({op} (extract 31 0 {src1}) (extract 31 0 {src2})) (bitvector 64))"
        else:
            return f"({op} {src1} {src2})"

    def _translate_move(self, instr: Instruction) -> str:
        _, src = map(self._translate_operand, instr.operands)
        return src


class RISCVToRosette(RISCToRosette):
    def _get_fn_name(self) -> str:
        return "riscv_impl"

    def _get_instruction_map(self) -> Dict[str, Tuple[str, str]]:
        return {
            "add": ("bvadd", "arith"),
            "addi": ("bvadd", "arith"),
            "sub": ("bvsub", "arith"),
            "mul": ("*", "arith"),
            "and": ("bvand", "arith"),
            "andi": ("bvand", "arith"),
            "or": ("bvor", "arith"),
            "ori": ("bvor", "arith"),
            "xor": ("bvxor", "arith"),
            "xori": ("bvxor", "arith"),
            "sll": ("bvshl", "arith"),
            "slli": ("bvshl", "arith"),
            "srl": ("bvlshr", "arith"),
            "srli": ("bvlshr", "arith"),
            "sra": ("bvashr", "arith"),
            "srai": ("bvashr", "arith"),
            "mv": ("move", "move"),
            "div": ("bvsdiv", "arith"),
            "divu": ("bvudiv", "arith"),
            "rem": ("bvsrem", "arith"),
            "remu": ("bvurem", "arith"),
            "addw": ("bvadd", "arith"),
            "subw": ("bvsub", "arith"),
            "mulw": ("bvmul", "arith"),
            "divw": ("bvsdiv", "arith"),
            "divuw": ("bvudiv", "arith"),
            "remw": ("bvsrem", "arith"),
            "remuw": ("bvurem", "arith"),
        }

    def _validate_register(self, reg: str) -> bool:
        if reg in ["zero", "ra", "sp", "gp", "tp"]:
            return True
        if reg.startswith(('x', 'a', 's', 't')):
            try:
                num = int(reg[1:])
                return 0 <= num <= 31
            except ValueError:
                return False
        return False

    def _normalize_register(self, reg: str) -> str:
        if reg == "zero":
            return "x0"
        if reg.startswith(('a', 's', 't')):
            # Convert ABI names to x-names if needed
            abi_map = {
                'a': lambda n: f"x{n+10}",
                's': lambda n: f"x{n+16}",
                't': lambda n: f"x{n+5}",
            }
            prefix = reg[0]
            try:
                num = int(reg[1:])
                return abi_map[prefix](num)
            except (ValueError, KeyError):
                return reg
        return reg


class ARMToRosette(RISCToRosette):
    def _get_fn_name(self) -> str:
        return "arm_impl"

    def _get_instruction_map(self) -> Dict[str, Tuple[str, str]]:
        return {
            "add": ("bvadd", "arith"),
            "sub": ("bvsub", "arith"),
            "mul": ("bvmul", "arith"),
            "and": ("bvand", "arith"),
            "orr": ("bvor", "arith"),
            "eor": ("bvxor", "arith"),
            "lsl": ("bvshl", "arith"),
            "lsr": ("bvlshr", "arith"),
            "asr": ("bvashr", "arith"),
            "sdiv": ("bvsdiv", "arith"),
            "udiv": ("bvudiv", "arith"),
            "mov": ("move", "move"),
            "addw": ("bvadd", "arith"),
            "subw": ("bvsub", "arith"),
            "mulw": ("bvmul", "arith"),
            "sdivw": ("bvsdiv", "arith"),
            "udivw": ("bvudiv", "arith"),
            "sxtw": (
                lambda self, instr: f"(sign-extend (extract 31 0 {self._translate_operand(instr.operands[1])}) (bitvector 64))",
                "lambda"
            ),
        }

    def _validate_register(self, reg: str) -> bool:
        if reg.startswith('x'):
            try:
                num = int(reg[1:])
                return 0 <= num <= 31
            except ValueError:
                return False
        return False

    def _normalize_register(self, reg: str) -> str:
        return reg
