from parser import RISCParser, Instruction, Constant, Register


def get_inputs_and_output(assembly):
    parser = RISCParser()

    assigned_registers = set()
    input_registers = set()
    output_register = None

    instructions = parser.parse(assembly)
    for instr in instructions:
        [target, *src] = instr.operands

        for operand in src:
            if isinstance(operand, Register):
                if operand.name not in assigned_registers:
                    input_registers.add(operand.name)

        if isinstance(target, Register):
            output_register = target.name
            assigned_registers.add(target.name)

    return list(input_registers), output_register
