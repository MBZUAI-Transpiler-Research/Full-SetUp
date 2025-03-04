from pathlib import Path
from lark import Lark, Transformer, Token
from dataclasses import dataclass
from typing import List, Optional, Union
import re


@dataclass
class MemoryRef:
    base: str
    offset: str = "0"


@dataclass
class Constant:
    value: str
    base: int  # 10 for decimal, 16 for hex

    def __str__(self):
        return self.value


@dataclass
class Register:
    name: str

    def __str__(self):
        return self.name


@dataclass
class Hole:
    """Represents a hole (???) in the assembly code"""


@dataclass
class Instruction:
    name: str | Hole  # Now can be either string or Hole
    operands: list[Register | Constant | MemoryRef | Hole]
    label: Optional[str] = None
    comment: Optional[str] = None


class RISCTransformer(Transformer):
    def __init__(self):
        self.instructions = []
        self.current_label = None
        self.current_comment = None

    def start(self, items):
        return self.instructions

    def line(self, items):
        instr = None
        for item in items:
            if isinstance(item, Instruction):
                instr = item
                if self.current_label:
                    instr.label = self.current_label
                    self.current_label = None
                if self.current_comment:
                    instr.comment = self.current_comment
                    self.current_comment = None
            elif isinstance(item, tuple):
                if item[0] == 'LABEL':
                    self.current_label = item[1]
                elif item[0] == 'COMMENT':
                    self.current_comment = item[1]

        if instr:
            self.instructions.append(instr)
        return items

    def hex_number(self, items):
        # items is a list with one Token
        return Constant(value=items[0].value[2:], base=16)

    def dec_number(self, items):
        # items is a list with one Token
        return Constant(value=items[0].value, base=10)

    def number(self, items):
        return items[0]

    def instruction(self, items):
        name = items[0]  # items[0] is already the instruction name token
        operands = items[1] if len(items) > 1 else []
        return Instruction(name=name, operands=operands)

    def instruction_token(self, items):
        item = items[0]
        if item.type == 'IDENTIFIER':
            return str(item)
        elif item.type == 'HOLE':
            return Hole()
        else:
            return item

    def operands(self, items):
        return [item for item in items]

    def operand(self, items):
        if len(items) == 1:
            item = items[0]
            if isinstance(item, Token) and item.type == 'REG':
                return Register(name=item.value)
            elif isinstance(item, Token) and item.type == 'HOLE':
                return Hole()
            elif isinstance(item, Constant):
                return item
            return str(item)  # for identifiers
        else:  # Memory reference
            offset_tree, reg = items
            offset = str(offset_tree.children[0]
                         ) if offset_tree.children else "0"
            return MemoryRef(
                base=str(reg),
                offset=offset
            )

    def directive(self, items):
        name = f".{str(items[0])}"
        args = [str(arg) for arg in items[1:]]
        return Instruction(name=name, operands=args)


def format_operand(op):
    if isinstance(op, MemoryRef):
        return f"{op.offset}({op.base})"
    return str(op)


class RISCParser:
    def __init__(self):
        grammar_path = Path(__file__).parent / 'grammar.lark'
        with open(grammar_path, 'r') as f:
            grammar = f.read()
        self.parser = Lark(
            grammar, parser='lalr',
            transformer=RISCTransformer()
        )

    def parse(self, code):
        code = re.sub(r'[ \t]+', ' ', code)
        code = re.sub(r'[ \t]*\n', '\n', code)
        code = re.sub(r',[ \t]+', ',', code)

        return self.parser.parse(code)

    def parse_file(self, filename):
        with open(filename, 'r') as f:
            return self.parse(f.read())
