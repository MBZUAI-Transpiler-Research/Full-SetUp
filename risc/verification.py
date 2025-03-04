from rosette import RISCVToRosette, ARMToRosette
from registers import get_inputs_and_output
import subprocess
import tempfile


def generate_rosette_verification(pred_fn, target_fn, inputs_count) -> str:
    inputs_bv = ' '.join(
        ['input' + str(i) for i in range(1, inputs_count + 1)]
    )

    return f"""
#lang rosette
(require rosette/lib/synthax)

(define ({pred_fn.name} {' '.join(pred_fn.args)})
  {pred_fn.body})

(define ({target_fn.name} {' '.join(target_fn.args)})
  {target_fn.body})

(define-symbolic {inputs_bv} (bitvector 64))

(verify
  (assert (bveq ({pred_fn.name} {inputs_bv})
                  ({target_fn.name} {inputs_bv}))))
"""


def to_rosette(
    assembly,
    lang,
    input_registers,
    output_register
):
    if lang == 'riscv':
        return RISCVToRosette(
            block=assembly,
            input_registers=input_registers,
            output_register=output_register
        )
    elif lang == 'arm':
        return ARMToRosette(
            block=assembly,
            input_registers=input_registers,
            output_register=output_register
        )


def verify_equivalence(
    pred_assembly,
    pred_lang,
    target_assembly,
    target_lang,
):
    pred_inputs, pred_output = get_inputs_and_output(pred_assembly)
    target_inputs, target_output = get_inputs_and_output(target_assembly)

    pred = to_rosette(
        assembly=pred_assembly,
        lang=pred_lang,
        input_registers=pred_inputs,
        output_register=pred_output
    )
    target = to_rosette(
        assembly=target_assembly,
        lang=target_lang,
        input_registers=target_inputs,
        output_register=target_output
    )

    pred_fn = pred.translate()
    target_fn = target.translate()

    rosette_prog = generate_rosette_verification(
        pred_fn, target_fn, len(pred_fn.args)
    )

    with tempfile.NamedTemporaryFile(mode='w', suffix='.rkt') as f:
        f.write(rosette_prog)
        f.flush()

        try:
            result = subprocess.run(
                ['racket', f.name],
                capture_output=True,
                text=True
            )
            return result.stdout
        except FileNotFoundError:
            raise ValueError(
                "Error: Racket/Rosette not found. Please ensure it's installed and in PATH"
            )


if __name__ == '__main__':
    riscv_block = """
    addi x5, x2, 42
    mulw x6, x5, x3
    """

    arm_block = """
        mov  x8, 42
        add  x9, x2, x8
        and  x14, x9, 0xffffffff
        and  x15, x3, 0xffffffff
        mul  x10, x14, x15
        sxtw x10, x10
    """
    verify_equivalence(
        source_assembly=riscv_block,
        source_lang='riscv',
        target_assembly=arm_block,
        target_lang='arm'
    )
