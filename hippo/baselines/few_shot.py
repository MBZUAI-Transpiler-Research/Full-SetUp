import os
import openai
import json
import random
from solver.docker_evaluate import run_qemu

openai.api_key = os.getenv("OPENAI_API_KEY")
print('OPENAI API KEY: ', openai.api_key)



cloze_examples = [
    {
        "risc": '\t.file\t"program19928025.c"\n\t.option pic\n\t.text\n\t.section\t.rodata\n\t.align\t3\n.LC0:\n\t.string\t"Enter your age: "\n\t.align\t3\n.LC1:\n\t.string\t"%d"\n\t.align\t3\n.LC2:\n\t.string\t"You are %d years old.\\n"\n\t.align\t3\n.LC3:\n\t.string\t"Enter your grade: "\n\t.align\t3\n.LC4:\n\t.string\t"%c"\n\t.align\t3\n.LC5:\n\t.string\t"Your grade is: %c"\n\t.align\t3\n.LC6:\n\t.string\t"Enter your gpa: "\n\t.align\t3\n.LC7:\n\t.string\t"%lf"\n\t.align\t3\n.LC8:\n\t.string\t"Your gpa is: %lf \\n"\n\t.align\t3\n.LC9:\n\t.string\t"Enter your name: "\n\t.align\t3\n.LC10:\n\t.string\t"Your name is %s"\n\t.text\n\t.align\t1\n\t.globl\tmain\n\t.type\tmain, @function\n{main}\t.size\tmain, .-main\n\t.ident\t"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"\n\t.section\t.note.GNU-stack,"",@progbits\n',
        "arm": '\t.arch armv8-a\n\t.file\t"program19928025.c"\n\t.text\n\t.section\t.rodata\n\t.align\t3\n.LC0:\n\t.string\t"Enter your age: "\n\t.align\t3\n.LC1:\n\t.string\t"%d"\n\t.align\t3\n.LC2:\n\t.string\t"You are %d years old.\\n"\n\t.align\t3\n.LC3:\n\t.string\t"Enter your grade: "\n\t.align\t3\n.LC4:\n\t.string\t"%c"\n\t.align\t3\n.LC5:\n\t.string\t"Your grade is: %c"\n\t.align\t3\n.LC6:\n\t.string\t"Enter your gpa: "\n\t.align\t3\n.LC7:\n\t.string\t"%lf"\n\t.align\t3\n.LC8:\n\t.string\t"Your gpa is: %lf \\n"\n\t.align\t3\n.LC9:\n\t.string\t"Enter your name: "\n\t.align\t3\n.LC10:\n\t.string\t"Your name is %s"\n\t.text\n\t.align\t2\n\t.global\tmain\n\t.type\tmain, %function\n{main}.LFE6:\n\t.size\tmain, .-main\n\t.ident\t"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"\n\t.section\t.note.GNU-stack,"",@progbits\n',
    },
    {
        "risc": '\t.file\t"program12490936.c"\n\t.option pic\n\t.text\n\t.section\t.rodata\n\t.align\t3\n.LC0:\n\t.string\t"Enter the distance the van has travelled:"\n\t.align\t3\n.LC1:\n\t.string\t"%d"\n\t.align\t3\n.LC2:\n\t.string\t"Amount = %d"\n\t.text\n\t.align\t1\n\t.globl\tmain\n\t.type\tmain, @function\n{main}\t.size\tmain, .-main\n\t.ident\t"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"\n\t.section\t.note.GNU-stack,"",@progbits\n',
        "arm": '\t.arch armv8-a\n\t.file\t"program12490936.c"\n\t.text\n\t.section\t.rodata\n\t.align\t3\n.LC0:\n\t.string\t"Enter the distance the van has travelled:"\n\t.align\t3\n.LC1:\n\t.string\t"%d"\n\t.align\t3\n.LC2:\n\t.string\t"Amount = %d"\n\t.text\n\t.align\t2\n\t.global\tmain\n\t.type\tmain, %function\n{main}.LFE0:\n\t.size\tmain, .-main\n\t.ident\t"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"\n\t.section\t.note.GNU-stack,"",@progbits\n',
    },
    {
        "risc": '\t.file\t"program14079072.c"\n\t.option pic\n\t.text\n\t.globl\tb\n\t.bss\n\t.align\t3\n\t.type\tb, @object\n\t.size\tb, 8\n{b}{c}{d}{e}{f}\t.size\tf, .-f\n\t.ident\t"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"\n\t.section\t.note.GNU-stack,"",@progbits\n',
        "arm": '\t.arch armv8-a\n\t.file\t"program14079072.c"\n\t.text\n\t.global\tb\n\t.bss\n\t.align\t3\n\t.type\tb, %object\n\t.size\tb, 8\n{b}{c}{d}{e}{f}.LFE0:\n\t.size\tf, .-f\n\t.ident\t"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"\n\t.section\t.note.GNU-stack,"",@progbits\n',
    },
    {
        "risc": '\t.file\t"program17748089.c"\n\t.option pic\n\t.text\n\t.section\t.rodata\n\t.align\t3\n.LC0:\n\t.string\t"%f\\n%f\\n%f"\n\t.align\t3\n.LC1:\n\t.string\t"%lf"\n\t.text\n\t.align\t1\n\t.globl\tmain\n\t.type\tmain, @function\n{main}\t.size\tmain, .-main\n\t.ident\t"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"\n\t.section\t.note.GNU-stack,"",@progbits\n',
        "arm": '\t.arch armv8-a\n\t.file\t"program17748089.c"\n\t.text\n\t.section\t.rodata\n\t.align\t3\n.LC0:\n\t.string\t"%f\\n%f\\n%f"\n\t.align\t3\n.LC1:\n\t.string\t"%lf"\n\t.text\n\t.align\t2\n\t.global\tmain\n\t.type\tmain, %function\n{main}.LFE0:\n\t.size\tmain, .-main\n\t.ident\t"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"\n\t.section\t.note.GNU-stack,"",@progbits\n',
    },
]

fn_examples = [
    {
        "risc": "main:\n\taddi\tsp,sp,-48\n\tsd\tra,40(sp)\n\tsd\ts0,32(sp)\n\taddi\ts0,sp,48\n\tla\ta5,__stack_chk_guard\n\tld\ta4, 0(a5)\n\tsd\ta4, -24(s0)\n\tli\ta4, 0\n\tlla\ta0,.LC0\n\tcall\tprintf@plt\n\taddi\ta5,s0,-40\n\tmv\ta1,a5\n\tlla\ta0,.LC1\n\tcall\t__isoc99_scanf@plt\n\tlw\ta5,-40(s0)\n\tmv\ta4,a5\n\tli\ta5,30\n\tdivw\ta5,a4,a5\n\tsext.w\ta4,a5\n\tli\ta5,1500\n\tmulw\ta5,a4,a5\n\tsw\ta5,-36(s0)\n\tlw\ta5,-40(s0)\n\tmv\ta4,a5\n\tli\ta5,30\n\tremw\ta5,a4,a5\n\tsext.w\ta5,a5\n\tmv\ta4,a5\n\tmv\ta5,a4\n\tslliw\ta5,a5,2\n\taddw\ta5,a5,a4\n\tslliw\ta5,a5,3\n\tsw\ta5,-32(s0)\n\tlw\ta5,-36(s0)\n\tmv\ta4,a5\n\tlw\ta5,-32(s0)\n\taddw\ta5,a4,a5\n\tsw\ta5,-28(s0)\n\tlw\ta5,-28(s0)\n\tmv\ta1,a5\n\tlla\ta0,.LC2\n\tcall\tprintf@plt\n\tli\ta5,0\n\tmv\ta4,a5\n\tla\ta5,__stack_chk_guard\n\tld\ta3, -24(s0)\n\tld\ta5, 0(a5)\n\txor\ta5, a3, a5\n\tli\ta3, 0\n\tbeq\ta5,zero,.L3\n\tcall\t__stack_chk_fail@plt\n.L3:\n\tmv\ta0,a4\n\tld\tra,40(sp)\n\tld\ts0,32(sp)\n\taddi\tsp,sp,48\n\tjr\tra\n",
        "arm": "main:\n.LFB0:\n\t.cfi_startproc\n\tstp\tx29, x30, [sp, -48]!\n\t.cfi_def_cfa_offset 48\n\t.cfi_offset 29, -48\n\t.cfi_offset 30, -40\n\tmov\tx29, sp\n\tadrp\tx0, :got:__stack_chk_guard\n\tldr\tx0, [x0, #:got_lo12:__stack_chk_guard]\n\tldr\tx1, [x0]\n\tstr\tx1, [sp, 40]\n\tmov\tx1, 0\n\tadrp\tx0, .LC0\n\tadd\tx0, x0, :lo12:.LC0\n\tbl\tprintf\n\tadd\tx0, sp, 24\n\tmov\tx1, x0\n\tadrp\tx0, .LC1\n\tadd\tx0, x0, :lo12:.LC1\n\tbl\t__isoc99_scanf\n\tldr\tw0, [sp, 24]\n\tmov\tw1, 34953\n\tmovk\tw1, 0x8888, lsl 16\n\tsmull\tx1, w0, w1\n\tlsr\tx1, x1, 32\n\tadd\tw1, w0, w1\n\tasr\tw1, w1, 4\n\tasr\tw0, w0, 31\n\tsub\tw1, w1, w0\n\tmov\tw0, 1500\n\tmul\tw0, w1, w0\n\tstr\tw0, [sp, 28]\n\tldr\tw1, [sp, 24]\n\tmov\tw0, 34953\n\tmovk\tw0, 0x8888, lsl 16\n\tsmull\tx0, w1, w0\n\tlsr\tx0, x0, 32\n\tadd\tw0, w1, w0\n\tasr\tw2, w0, 4\n\tasr\tw0, w1, 31\n\tsub\tw2, w2, w0\n\tmov\tw0, w2\n\tlsl\tw0, w0, 4\n\tsub\tw0, w0, w2\n\tlsl\tw0, w0, 1\n\tsub\tw2, w1, w0\n\tmov\tw0, w2\n\tlsl\tw0, w0, 2\n\tadd\tw0, w0, w2\n\tlsl\tw0, w0, 3\n\tstr\tw0, [sp, 32]\n\tldr\tw1, [sp, 28]\n\tldr\tw0, [sp, 32]\n\tadd\tw0, w1, w0\n\tstr\tw0, [sp, 36]\n\tldr\tw1, [sp, 36]\n\tadrp\tx0, .LC2\n\tadd\tx0, x0, :lo12:.LC2\n\tbl\tprintf\n\tmov\tw0, 0\n\tmov\tw1, w0\n\tadrp\tx0, :got:__stack_chk_guard\n\tldr\tx0, [x0, #:got_lo12:__stack_chk_guard]\n\tldr\tx3, [sp, 40]\n\tldr\tx2, [x0]\n\tsubs\tx3, x3, x2\n\tmov\tx2, 0\n\tbeq\t.L3\n\tbl\t__stack_chk_fail\n.L3:\n\tmov\tw0, w1\n\tldp\tx29, x30, [sp], 48\n\t.cfi_restore 30\n\t.cfi_restore 29\n\t.cfi_def_cfa_offset 0\n\tret\n\t.cfi_endproc\n",
    },
    {
        "risc": "main:\n\taddi\tsp,sp,-64\n\tsd\tra,56(sp)\n\tsd\ts0,48(sp)\n\taddi\ts0,sp,64\n\tla\ta5,__stack_chk_guard\n\tld\ta4, 0(a5)\n\tsd\ta4, -24(s0)\n\tli\ta4, 0\n\tlla\ta0,.LC0\n\tcall\tprintf@plt\n\taddi\ta5,s0,-60\n\tmv\ta1,a5\n\tlla\ta0,.LC1\n\tcall\t__isoc99_scanf@plt\n\tlw\ta5,-60(s0)\n\tmv\ta1,a5\n\tlla\ta0,.LC2\n\tcall\tprintf@plt\n\tlla\ta0,.LC3\n\tcall\tprintf@plt\n\taddi\ta5,s0,-61\n\tmv\ta1,a5\n\tlla\ta0,.LC4\n\tcall\t__isoc99_scanf@plt\n\tlbu\ta5,-61(s0)\n\tsext.w\ta5,a5\n\tmv\ta1,a5\n\tlla\ta0,.LC5\n\tcall\tprintf@plt\n\tlla\ta0,.LC6\n\tcall\tprintf@plt\n\taddi\ta5,s0,-56\n\tmv\ta1,a5\n\tlla\ta0,.LC7\n\tcall\t__isoc99_scanf@plt\n\tfld\tfa5,-56(s0)\n\tfmv.x.d\ta1,fa5\n\tlla\ta0,.LC8\n\tcall\tprintf@plt\n\tlla\ta0,.LC9\n\tcall\tprintf@plt\n\tla\ta5,stdin\n\tld\ta4,0(a5)\n\taddi\ta5,s0,-48\n\tmv\ta2,a4\n\tli\ta1,20\n\tmv\ta0,a5\n\tcall\tfgets@plt\n\taddi\ta5,s0,-48\n\tmv\ta1,a5\n\tlla\ta0,.LC10\n\tcall\tprintf@plt\n\tli\ta5,0\n\tmv\ta4,a5\n\tla\ta5,__stack_chk_guard\n\tld\ta3, -24(s0)\n\tld\ta5, 0(a5)\n\txor\ta5, a3, a5\n\tli\ta3, 0\n\tbeq\ta5,zero,.L3\n\tcall\t__stack_chk_fail@plt\n.L3:\n\tmv\ta0,a4\n\tld\tra,56(sp)\n\tld\ts0,48(sp)\n\taddi\tsp,sp,64\n\tjr\tra\n",
        "arm": "main:\n.LFB6:\n\t.cfi_startproc\n\tstp\tx29, x30, [sp, -64]!\n\t.cfi_def_cfa_offset 64\n\t.cfi_offset 29, -64\n\t.cfi_offset 30, -56\n\tmov\tx29, sp\n\tadrp\tx0, :got:__stack_chk_guard\n\tldr\tx0, [x0, #:got_lo12:__stack_chk_guard]\n\tldr\tx1, [x0]\n\tstr\tx1, [sp, 56]\n\tmov\tx1, 0\n\tadrp\tx0, .LC0\n\tadd\tx0, x0, :lo12:.LC0\n\tbl\tprintf\n\tadd\tx0, sp, 20\n\tmov\tx1, x0\n\tadrp\tx0, .LC1\n\tadd\tx0, x0, :lo12:.LC1\n\tbl\t__isoc99_scanf\n\tldr\tw0, [sp, 20]\n\tmov\tw1, w0\n\tadrp\tx0, .LC2\n\tadd\tx0, x0, :lo12:.LC2\n\tbl\tprintf\n\tadrp\tx0, .LC3\n\tadd\tx0, x0, :lo12:.LC3\n\tbl\tprintf\n\tadd\tx0, sp, 19\n\tmov\tx1, x0\n\tadrp\tx0, .LC4\n\tadd\tx0, x0, :lo12:.LC4\n\tbl\t__isoc99_scanf\n\tldrb\tw0, [sp, 19]\n\tmov\tw1, w0\n\tadrp\tx0, .LC5\n\tadd\tx0, x0, :lo12:.LC5\n\tbl\tprintf\n\tadrp\tx0, .LC6\n\tadd\tx0, x0, :lo12:.LC6\n\tbl\tprintf\n\tadd\tx0, sp, 24\n\tmov\tx1, x0\n\tadrp\tx0, .LC7\n\tadd\tx0, x0, :lo12:.LC7\n\tbl\t__isoc99_scanf\n\tldr\td0, [sp, 24]\n\tadrp\tx0, .LC8\n\tadd\tx0, x0, :lo12:.LC8\n\tbl\tprintf\n\tadrp\tx0, .LC9\n\tadd\tx0, x0, :lo12:.LC9\n\tbl\tprintf\n\tadrp\tx0, :got:stdin\n\tldr\tx0, [x0, #:got_lo12:stdin]\n\tldr\tx1, [x0]\n\tadd\tx0, sp, 32\n\tmov\tx2, x1\n\tmov\tw1, 20\n\tbl\tfgets\n\tadd\tx0, sp, 32\n\tmov\tx1, x0\n\tadrp\tx0, .LC10\n\tadd\tx0, x0, :lo12:.LC10\n\tbl\tprintf\n\tmov\tw0, 0\n\tmov\tw1, w0\n\tadrp\tx0, :got:__stack_chk_guard\n\tldr\tx0, [x0, #:got_lo12:__stack_chk_guard]\n\tldr\tx3, [sp, 56]\n\tldr\tx2, [x0]\n\tsubs\tx3, x3, x2\n\tmov\tx2, 0\n\tbeq\t.L3\n\tbl\t__stack_chk_fail\n.L3:\n\tmov\tw0, w1\n\tldp\tx29, x30, [sp], 64\n\t.cfi_restore 30\n\t.cfi_restore 29\n\t.cfi_def_cfa_offset 0\n\tret\n\t.cfi_endproc\n",
    },
    {
        "risc": "b:\n\t.zero\t8\n\t.globl\tc\n\t.align\t3\n\t.type\tc, @object\n\t.size\tc, 8\n",
        "arm": "b:\n\t.zero\t8\n\t.global\tc\n\t.align\t3\n\t.type\tc, %object\n\t.size\tc, 8\n",
    },
    # {
    #     'risc': "main:\n\taddi\tsp,sp,-208\n\tsd\tra,200(sp)\n\tsd\ts0,192(sp)\n\taddi\ts0,sp,208\n\tmv\ta5,a0\n\tsd\ta1,-192(s0)\n\tsw\ta5,-180(s0)\n\tla\ta5,__stack_chk_guard\n\tld\ta4, 0(a5)\n\tsd\ta4, -24(s0)\n\tli\ta4, 0\n\tlw\ta5,-180(s0)\n\tsext.w\ta4,a5\n\tli\ta5,7\n\tbeq\ta4,a5,.L2\n\tmv\ta3,zero\n\tmv\ta2,zero\n\tmv\ta1,zero\n\tlla\ta0,.LC0\n\tcall\tprintf@plt\n\tli\ta0,1\n\tcall\texit@plt\n.L2:\n\tld\ta5,-192(s0)\n\taddi\ta5,a5,8\n\tld\ta5,0(a5)\n\taddi\ta4,s0,-168\n\tmv\ta2,a4\n\tlla\ta1,.LC1\n\tmv\ta0,a5\n\tcall\t__isoc99_sscanf@plt\n\tld\ta5,-192(s0)\n\taddi\ta5,a5,16\n\tld\ta5,0(a5)\n\taddi\ta4,s0,-160\n\tmv\ta2,a4\n\tlla\ta1,.LC1\n\tmv\ta0,a5\n\tcall\t__isoc99_sscanf@plt\n\tld\ta5,-192(s0)\n\taddi\ta5,a5,24\n\tld\ta5,0(a5)\n\taddi\ta4,s0,-152\n\tmv\ta2,a4\n\tlla\ta1,.LC1\n\tmv\ta0,a5\n\tcall\t__isoc99_sscanf@plt\n\tld\ta5,-192(s0)\n\taddi\ta5,a5,32\n\tld\ta5,0(a5)\n\taddi\ta4,s0,-144\n\tmv\ta2,a4\n\tlla\ta1,.LC1\n\tmv\ta0,a5\n\tcall\t__isoc99_sscanf@plt\n\tld\ta5,-192(s0)\n\taddi\ta5,a5,40\n\tld\ta5,0(a5)\n\taddi\ta4,s0,-136\n\tmv\ta2,a4\n\tlla\ta1,.LC1\n\tmv\ta0,a5\n\tcall\t__isoc99_sscanf@plt\n\tld\ta5,-192(s0)\n\taddi\ta5,a5,48\n\tld\ta5,0(a5)\n\taddi\ta4,s0,-128\n\tmv\ta2,a4\n\tlla\ta1,.LC1\n\tmv\ta0,a5\n\tcall\t__isoc99_sscanf@plt\n\tfld\tfa5,-168(s0)\n\tfld\tfa4,-160(s0)\n\tfld\tfa3,-152(s0)\n\taddi\ta7,s0,-64\n\taddi\ta6,s0,-72\n\taddi\tt1,s0,-80\n\taddi\ta4,s0,-88\n\taddi\ta3,s0,-96\n\taddi\ta2,s0,-104\n\taddi\ta1,s0,-112\n\taddi\ta0,s0,-120\n\taddi\ta5,s0,-56\n\tsd\ta5,0(sp)\n\tmv\ta5,t1\n\tfmv.d\tfa2,fa3\n\tfmv.d\tfa1,fa4\n\tfmv.d\tfa0,fa5\n\tcall\ttransmat@plt\n\tfld\tfa4,-120(s0)\n\tfld\tfa5,-144(s0)\n\tfmul.d\tfa4,fa4,fa5\n\tfld\tfa3,-96(s0)\n\tfld\tfa5,-136(s0)\n\tfmul.d\tfa5,fa3,fa5\n\tfadd.d\tfa4,fa4,fa5\n\tfld\tfa3,-72(s0)\n\tfld\tfa5,-128(s0)\n\tfmul.d\tfa5,fa3,fa5\n\tfadd.d\tfa5,fa4,fa5\n\tfsd\tfa5,-48(s0)\n\tfld\tfa4,-112(s0)\n\tfld\tfa5,-144(s0)\n\tfmul.d\tfa4,fa4,fa5\n\tfld\tfa3,-88(s0)\n\tfld\tfa5,-136(s0)\n\tfmul.d\tfa5,fa3,fa5\n\tfadd.d\tfa4,fa4,fa5\n\tfld\tfa3,-64(s0)\n\tfld\tfa5,-128(s0)\n\tfmul.d\tfa5,fa3,fa5\n\tfadd.d\tfa5,fa4,fa5\n\tfsd\tfa5,-40(s0)\n\tfld\tfa4,-104(s0)\n\tfld\tfa5,-144(s0)\n\tfmul.d\tfa4,fa4,fa5\n\tfld\tfa3,-80(s0)\n\tfld\tfa5,-136(s0)\n\tfmul.d\tfa5,fa3,fa5\n\tfadd.d\tfa4,fa4,fa5\n\tfld\tfa3,-56(s0)\n\tfld\tfa5,-128(s0)\n\tfmul.d\tfa5,fa3,fa5\n\tfadd.d\tfa5,fa4,fa5\n\tfsd\tfa5,-32(s0)\n\tld\ta3,-32(s0)\n\tld\ta2,-40(s0)\n\tld\ta1,-48(s0)\n\tlla\ta0,.LC0\n\tcall\tprintf@plt\n\tli\ta5,0\n\tmv\ta4,a5\n\tla\ta5,__stack_chk_guard\n\tld\ta3, -24(s0)\n\tld\ta5, 0(a5)\n\txor\ta5, a3, a5\n\tli\ta3, 0\n\tbeq\ta5,zero,.L4\n\tcall\t__stack_chk_fail@plt\n.L4:\n\tmv\ta0,a4\n\tld\tra,200(sp)\n\tld\ts0,192(sp)\n\taddi\tsp,sp,208\n\tjr\tra\n",
    #     'arm': "main:\n.LFB0:\n\t.cfi_startproc\n\tsub\tsp, sp, #208\n\t.cfi_def_cfa_offset 208\n\tstp\tx29, x30, [sp, 16]\n\t.cfi_offset 29, -192\n\t.cfi_offset 30, -184\n\tadd\tx29, sp, 16\n\tstr\tw0, [sp, 44]\n\tstr\tx1, [sp, 32]\n\tadrp\tx0, :got:__stack_chk_guard\n\tldr\tx0, [x0, #:got_lo12:__stack_chk_guard]\n\tldr\tx1, [x0]\n\tstr\tx1, [sp, 200]\n\tmov\tx1, 0\n\tldr\tw0, [sp, 44]\n\tcmp\tw0, 7\n\tbeq\t.L2\n\tmovi\td2, #0\n\tmovi\td1, #0\n\tmovi\td0, #0\n\tadrp\tx0, .LC0\n\tadd\tx0, x0, :lo12:.LC0\n\tbl\tprintf\n\tmov\tw0, 1\n\tbl\texit\n.L2:\n\tldr\tx0, [sp, 32]\n\tadd\tx0, x0, 8\n\tldr\tx3, [x0]\n\tadd\tx0, sp, 56\n\tmov\tx2, x0\n\tadrp\tx0, .LC1\n\tadd\tx1, x0, :lo12:.LC1\n\tmov\tx0, x3\n\tbl\t__isoc99_sscanf\n\tldr\tx0, [sp, 32]\n\tadd\tx0, x0, 16\n\tldr\tx3, [x0]\n\tadd\tx0, sp, 64\n\tmov\tx2, x0\n\tadrp\tx0, .LC1\n\tadd\tx1, x0, :lo12:.LC1\n\tmov\tx0, x3\n\tbl\t__isoc99_sscanf\n\tldr\tx0, [sp, 32]\n\tadd\tx0, x0, 24\n\tldr\tx3, [x0]\n\tadd\tx0, sp, 72\n\tmov\tx2, x0\n\tadrp\tx0, .LC1\n\tadd\tx1, x0, :lo12:.LC1\n\tmov\tx0, x3\n\tbl\t__isoc99_sscanf\n\tldr\tx0, [sp, 32]\n\tadd\tx0, x0, 32\n\tldr\tx3, [x0]\n\tadd\tx0, sp, 80\n\tmov\tx2, x0\n\tadrp\tx0, .LC1\n\tadd\tx1, x0, :lo12:.LC1\n\tmov\tx0, x3\n\tbl\t__isoc99_sscanf\n\tldr\tx0, [sp, 32]\n\tadd\tx0, x0, 40\n\tldr\tx3, [x0]\n\tadd\tx0, sp, 88\n\tmov\tx2, x0\n\tadrp\tx0, .LC1\n\tadd\tx1, x0, :lo12:.LC1\n\tmov\tx0, x3\n\tbl\t__isoc99_sscanf\n\tldr\tx0, [sp, 32]\n\tadd\tx0, x0, 48\n\tldr\tx3, [x0]\n\tadd\tx0, sp, 96\n\tmov\tx2, x0\n\tadrp\tx0, .LC1\n\tadd\tx1, x0, :lo12:.LC1\n\tmov\tx0, x3\n\tbl\t__isoc99_sscanf\n\tldr\td0, [sp, 56]\n\tldr\td1, [sp, 64]\n\tldr\td2, [sp, 72]\n\tadd\tx7, sp, 160\n\tadd\tx6, sp, 152\n\tadd\tx5, sp, 144\n\tadd\tx4, sp, 136\n\tadd\tx3, sp, 128\n\tadd\tx2, sp, 120\n\tadd\tx1, sp, 112\n\tadd\tx8, sp, 104\n\tadd\tx0, sp, 168\n\tstr\tx0, [sp]\n\tmov\tx0, x8\n\tbl\ttransmat\n\tldr\td1, [sp, 104]\n\tldr\td0, [sp, 80]\n\tfmul\td1, d1, d0\n\tldr\td2, [sp, 128]\n\tldr\td0, [sp, 88]\n\tfmul\td0, d2, d0\n\tfadd\td1, d1, d0\n\tldr\td2, [sp, 152]\n\tldr\td0, [sp, 96]\n\tfmul\td0, d2, d0\n\tfadd\td0, d1, d0\n\tstr\td0, [sp, 176]\n\tldr\td1, [sp, 112]\n\tldr\td0, [sp, 80]\n\tfmul\td1, d1, d0\n\tldr\td2, [sp, 136]\n\tldr\td0, [sp, 88]\n\tfmul\td0, d2, d0\n\tfadd\td1, d1, d0\n\tldr\td2, [sp, 160]\n\tldr\td0, [sp, 96]\n\tfmul\td0, d2, d0\n\tfadd\td0, d1, d0\n\tstr\td0, [sp, 184]\n\tldr\td1, [sp, 120]\n\tldr\td0, [sp, 80]\n\tfmul\td1, d1, d0\n\tldr\td2, [sp, 144]\n\tldr\td0, [sp, 88]\n\tfmul\td0, d2, d0\n\tfadd\td1, d1, d0\n\tldr\td2, [sp, 168]\n\tldr\td0, [sp, 96]\n\tfmul\td0, d2, d0\n\tfadd\td0, d1, d0\n\tstr\td0, [sp, 192]\n\tldr\td2, [sp, 192]\n\tldr\td1, [sp, 184]\n\tldr\td0, [sp, 176]\n\tadrp\tx0, .LC0\n\tadd\tx0, x0, :lo12:.LC0\n\tbl\tprintf\n\tmov\tw0, 0\n\tmov\tw1, w0\n\tadrp\tx0, :got:__stack_chk_guard\n\tldr\tx0, [x0, #:got_lo12:__stack_chk_guard]\n\tldr\tx3, [sp, 200]\n\tldr\tx2, [x0]\n\tsubs\tx3, x3, x2\n\tmov\tx2, 0\n\tbeq\t.L4\n\tbl\t__stack_chk_fail\n.L4:\n\tmov\tw0, w1\n\tldp\tx29, x30, [sp, 16]\n\tadd\tsp, sp, 208\n\t.cfi_restore 29\n\t.cfi_restore 30\n\t.cfi_def_cfa_offset 0\n\tret\n\t.cfi_endproc\n"
    # },
    {
        "risc": "foo:\n\taddi\tsp,sp,-16\n\tsd\tra,8(sp)\n\tsd\ts0,0(sp)\n\taddi\ts0,sp,16\n\tlla\ta0,global\n\tcall\tbar@plt\n\tlla\ta0,global_2\n\tcall\tbar@plt\n\tla\ta0,global_3\n\tcall\tbar@plt\n\tlla\ta0,global_5\n\tcall\tbar@plt\n\tlla\ta0,global_6\n\tcall\tbar@plt\n\tnop\n\tld\tra,8(sp)\n\tld\ts0,0(sp)\n\taddi\tsp,sp,16\n\tjr\tra\n",
        "arm": "foo:\n.LFB0:\n\t.cfi_startproc\n\tstp\tx29, x30, [sp, -16]!\n\t.cfi_def_cfa_offset 16\n\t.cfi_offset 29, -16\n\t.cfi_offset 30, -8\n\tmov\tx29, sp\n\tadrp\tx0, global\n\tadd\tx0, x0, :lo12:global\n\tbl\tbar\n\tadrp\tx0, global_2\n\tadd\tx0, x0, :lo12:global_2\n\tbl\tbar\n\tadrp\tx0, :got:global_3\n\tldr\tx0, [x0, #:got_lo12:global_3]\n\tbl\tbar\n\tadrp\tx0, global_5\n\tadd\tx0, x0, :lo12:global_5\n\tbl\tbar\n\tadrp\tx0, global_6\n\tadd\tx0, x0, :lo12:global_6\n\tbl\tbar\n\tnop\n\tldp\tx29, x30, [sp], 16\n\t.cfi_restore 30\n\t.cfi_restore 29\n\t.cfi_def_cfa_offset 0\n\tret\n\t.cfi_endproc\n",
    },
    # {
    #     'risc': "main:\n\taddi\tsp,sp,-48\n\tsd\tra,40(sp)\n\tsd\ts0,32(sp)\n\taddi\ts0,sp,48\n\tli\ta5,1572712448\n\taddi\ta0,a5,186\n\tcall\tsrand@plt\n\tsw\tzero,-40(s0)\n\tsw\tzero,-36(s0)\n\tli\ta5,3\n\tsw\ta5,-28(s0)\n\tj\t.L9\n.L40:\n\tlw\ta5,-28(s0)\n\tsw\ta5,-32(s0)\n\tli\ta5,1\n\tsh\ta5,-46(s0)\n\tsh\tzero,-44(s0)\n\tli\ta5,1\n\tsh\ta5,-42(s0)\n\tlw\ta5,-32(s0)\n\tsext.w\ta4,a5\n\tli\ta5,1\n\tbne\ta4,a5,.L10\n\tsh\tzero,-42(s0)\n\tj\t.L11\n.L10:\n\tlw\ta5,-32(s0)\n\tandi\ta5,a5,1\n\tsext.w\ta5,a5\n\tbne\ta5,zero,.L12\n\tlw\ta5,-32(s0)\n\tsext.w\ta4,a5\n\tli\ta5,4\n\tbleu\ta4,a5,.L12\n\tsh\tzero,-42(s0)\n\tj\t.L11\n.L12:\n\tlw\ta5,-32(s0)\n\tmv\ta4,a5\n\tli\ta5,3\n\tremuw\ta5,a4,a5\n\tsext.w\ta5,a5\n\tbne\ta5,zero,.L13\n\tlw\ta5,-32(s0)\n\tsext.w\ta4,a5\n\tli\ta5,9\n\tbleu\ta4,a5,.L13\n\tsh\tzero,-42(s0)\n\tj\t.L11\n.L13:\n\tli\ta5,5\n\tsw\ta5,-24(s0)\n\tj\t.L14\n.L17:\n\tlw\ta5,-32(s0)\n\tmv\ta4,a5\n\tlw\ta5,-24(s0)\n\tremuw\ta5,a4,a5\n\tsext.w\ta5,a5\n\tbeq\ta5,zero,.L15\n\tlw\ta5,-24(s0)\n\taddiw\ta5,a5,2\n\tsext.w\ta5,a5\n\tlw\ta4,-32(s0)\n\tremuw\ta5,a4,a5\n\tsext.w\ta5,a5\n\tbne\ta5,zero,.L16\n.L15:\n\tsh\tzero,-42(s0)\n.L16:\n\tlw\ta5,-24(s0)\n\taddiw\ta5,a5,6\n\tsw\ta5,-24(s0)\n.L14:\n\tlh\ta5,-42(s0)\n\tsext.w\ta4,a5\n\tli\ta5,1\n\tbne\ta4,a5,.L11\n\tlw\ta5,-24(s0)\n\tmulw\ta5,a5,a5\n\tsext.w\ta4,a5\n\tlw\ta5,-32(s0)\n\tsext.w\ta5,a5\n\tbgeu\ta5,a4,.L17\n.L11:\n\tlh\ta5,-42(s0)\n\tsext.w\ta5,a5\n\tbne\ta5,zero,.L18\n\tlw\ta5,-32(s0)\n\tandi\ta5,a5,1\n\tsext.w\ta5,a5\n\tbne\ta5,zero,.L19\n\tsw\tzero,-36(s0)\n\tj\t.L20\n.L21:\n\tlw\ta5,-32(s0)\n\tsrliw\ta5,a5,1\n\tsw\ta5,-32(s0)\n\tlw\ta5,-36(s0)\n\taddiw\ta5,a5,1\n\tsw\ta5,-36(s0)\n.L20:\n\tlw\ta5,-32(s0)\n\tandi\ta5,a5,1\n\tsext.w\ta5,a5\n\tbeq\ta5,zero,.L21\n\tlw\ta5,-36(s0)\n\tsext.w\ta4,a5\n\tli\ta5,1\n\tbne\ta4,a5,.L22\n\tsh\tzero,-46(s0)\n\tj\t.L19\n.L22:\n\tlw\ta5,-36(s0)\n\tslliw\ta4,a5,16\n\tsraiw\ta4,a4,16\n\tlh\ta5,-44(s0)\n\tmv\ta1,a4\n\tmv\ta0,a5\n\tcall\t_gcd\n\tmv\ta5,a0\n\tsh\ta5,-44(s0)\n.L19:\n\tlw\ta5,-32(s0)\n\tmv\ta4,a5\n\tli\ta5,3\n\tremuw\ta5,a4,a5\n\tsext.w\ta5,a5\n\tbne\ta5,zero,.L23\n\tlh\ta5,-46(s0)\n\tsext.w\ta5,a5\n\tbeq\ta5,zero,.L23\n\tsw\tzero,-36(s0)\n\tj\t.L24\n.L25:\n\tlw\ta5,-32(s0)\n\tmv\ta4,a5\n\tli\ta5,3\n\tdivuw\ta5,a4,a5\n\tsw\ta5,-32(s0)\n\tlw\ta5,-36(s0)\n\taddiw\ta5,a5,1\n\tsw\ta5,-36(s0)\n.L24:\n\tlw\ta5,-32(s0)\n\tmv\ta4,a5\n\tli\ta5,3\n\tremuw\ta5,a4,a5\n\tsext.w\ta5,a5\n\tbeq\ta5,zero,.L25\n\tlw\ta5,-36(s0)\n\tsext.w\ta4,a5\n\tli\ta5,1\n\tbne\ta4,a5,.L26\n\tsh\tzero,-46(s0)\n\tj\t.L23\n.L26:\n\tlw\ta5,-36(s0)\n\tslliw\ta4,a5,16\n\tsraiw\ta4,a4,16\n\tlh\ta5,-44(s0)\n\tmv\ta1,a4\n\tmv\ta0,a5\n\tcall\t_gcd\n\tmv\ta5,a0\n\tsh\ta5,-44(s0)\n.L23:\n\tlh\ta5,-46(s0)\n\tsext.w\ta5,a5\n\tbeq\ta5,zero,.L27\n\tli\ta5,5\n\tsw\ta5,-20(s0)\n\tj\t.L28\n.L39:\n\tsw\tzero,-36(s0)\n\tj\t.L29\n.L30:\n\tlw\ta5,-32(s0)\n\tmv\ta4,a5\n\tlw\ta5,-20(s0)\n\tdivuw\ta5,a4,a5\n\tsw\ta5,-32(s0)\n\tlw\ta5,-36(s0)\n\taddiw\ta5,a5,1\n\tsw\ta5,-36(s0)\n.L29:\n\tlw\ta5,-32(s0)\n\tmv\ta4,a5\n\tlw\ta5,-20(s0)\n\tremuw\ta5,a4,a5\n\tsext.w\ta5,a5\n\tbeq\ta5,zero,.L30\n\tlw\ta5,-36(s0)\n\tsext.w\ta4,a5\n\tli\ta5,1\n\tbne\ta4,a5,.L31\n\tsh\tzero,-46(s0)\n\tj\t.L27\n.L31:\n\tlh\ta5,-44(s0)\n\tsext.w\ta5,a5\n\tbeq\ta5,zero,.L32\n\tlw\ta5,-36(s0)\n\tsext.w\ta4,a5\n\tli\ta5,1\n\tbleu\ta4,a5,.L33\n.L32:\n\tlw\ta5,-36(s0)\n\tslliw\ta4,a5,16\n\tsraiw\ta4,a4,16\n\tlh\ta5,-44(s0)\n\tmv\ta1,a4\n\tmv\ta0,a5\n\tcall\t_gcd\n\tmv\ta5,a0\n\tsh\ta5,-44(s0)\n.L33:\n\tsw\tzero,-36(s0)\n\tj\t.L34\n.L35:\n\tlw\ta5,-20(s0)\n\taddiw\ta5,a5,2\n\tsext.w\ta5,a5\n\tlw\ta4,-32(s0)\n\tdivuw\ta5,a4,a5\n\tsw\ta5,-32(s0)\n\tlw\ta5,-36(s0)\n\taddiw\ta5,a5,1\n\tsw\ta5,-36(s0)\n.L34:\n\tlw\ta5,-20(s0)\n\taddiw\ta5,a5,2\n\tsext.w\ta5,a5\n\tlw\ta4,-32(s0)\n\tremuw\ta5,a4,a5\n\tsext.w\ta5,a5\n\tbeq\ta5,zero,.L35\n\tlw\ta5,-36(s0)\n\tsext.w\ta4,a5\n\tli\ta5,1\n\tbne\ta4,a5,.L36\n\tsh\tzero,-46(s0)\n\tj\t.L27\n.L36:\n\tlh\ta5,-44(s0)\n\tsext.w\ta5,a5\n\tbeq\ta5,zero,.L37\n\tlw\ta5,-36(s0)\n\tsext.w\ta4,a5\n\tli\ta5,1\n\tbleu\ta4,a5,.L38\n.L37:\n\tlw\ta5,-36(s0)\n\tslliw\ta4,a5,16\n\tsraiw\ta4,a4,16\n\tlh\ta5,-44(s0)\n\tmv\ta1,a4\n\tmv\ta0,a5\n\tcall\t_gcd\n\tmv\ta5,a0\n\tsh\ta5,-44(s0)\n.L38:\n\tlw\ta5,-20(s0)\n\taddiw\ta5,a5,6\n\tsw\ta5,-20(s0)\n.L28:\n\tlw\ta5,-20(s0)\n\tmulw\ta5,a5,a5\n\tsext.w\ta4,a5\n\tlw\ta5,-32(s0)\n\tsext.w\ta5,a5\n\tbgeu\ta5,a4,.L39\n.L27:\n\tlw\ta5,-32(s0)\n\tsext.w\ta4,a5\n\tli\ta5,1\n\tbne\ta4,a5,.L18\n\tlh\ta5,-46(s0)\n\tsext.w\ta5,a5\n\tbeq\ta5,zero,.L18\n\tlh\ta5,-44(s0)\n\tsext.w\ta4,a5\n\tli\ta5,1\n\tbne\ta4,a5,.L18\n\tlw\ta5,-40(s0)\n\taddiw\ta5,a5,1\n\tsw\ta5,-40(s0)\n.L18:\n\tlw\ta5,-28(s0)\n\taddiw\ta5,a5,1\n\tsw\ta5,-28(s0)\n.L9:\n\tlw\ta5,-28(s0)\n\tsext.w\ta4,a5\n\tli\ta5,9998336\n\taddi\ta5,a5,1663\n\tbleu\ta4,a5,.L40\n\tlw\ta4,-40(s0)\n\tli\ta5,9998336\n\taddi\ta2,a5,1664\n\tmv\ta1,a4\n\tlla\ta0,.LC0\n\tcall\tprintf@plt\n\tli\ta5,0\n\tmv\ta0,a5\n\tld\tra,40(sp)\n\tld\ts0,32(sp)\n\taddi\tsp,sp,48\n\tjr\tra\n",
    #     'arm': "main:\n.LFB7:\n\t.cfi_startproc\n\tstp\tx29, x30, [sp, -48]!\n\t.cfi_def_cfa_offset 48\n\t.cfi_offset 29, -48\n\t.cfi_offset 30, -40\n\tmov\tx29, sp\n\tmov\tw0, 45242\n\tmovk\tw0, 0x5dbd, lsl 16\n\tbl\tsrand\n\tstr\twzr, [sp, 24]\n\tstr\twzr, [sp, 28]\n\tmov\tw0, 3\n\tstr\tw0, [sp, 36]\n\tb\t.L9\n.L40:\n\tldr\tw0, [sp, 36]\n\tstr\tw0, [sp, 32]\n\tmov\tw0, 1\n\tstrh\tw0, [sp, 18]\n\tstrh\twzr, [sp, 20]\n\tmov\tw0, 1\n\tstrh\tw0, [sp, 22]\n\tldr\tw0, [sp, 32]\n\tcmp\tw0, 1\n\tbne\t.L10\n\tstrh\twzr, [sp, 22]\n\tb\t.L11\n.L10:\n\tldr\tw0, [sp, 32]\n\tand\tw0, w0, 1\n\tcmp\tw0, 0\n\tbne\t.L12\n\tldr\tw0, [sp, 32]\n\tcmp\tw0, 4\n\tbls\t.L12\n\tstrh\twzr, [sp, 22]\n\tb\t.L11\n.L12:\n\tldr\tw2, [sp, 32]\n\tmov\tw0, 43691\n\tmovk\tw0, 0xaaaa, lsl 16\n\tumull\tx0, w2, w0\n\tlsr\tx0, x0, 32\n\tlsr\tw1, w0, 1\n\tmov\tw0, w1\n\tlsl\tw0, w0, 1\n\tadd\tw0, w0, w1\n\tsub\tw1, w2, w0\n\tcmp\tw1, 0\n\tbne\t.L13\n\tldr\tw0, [sp, 32]\n\tcmp\tw0, 9\n\tbls\t.L13\n\tstrh\twzr, [sp, 22]\n\tb\t.L11\n.L13:\n\tmov\tw0, 5\n\tstr\tw0, [sp, 40]\n\tb\t.L14\n.L17:\n\tldr\tw0, [sp, 32]\n\tldr\tw1, [sp, 40]\n\tudiv\tw2, w0, w1\n\tldr\tw1, [sp, 40]\n\tmul\tw1, w2, w1\n\tsub\tw0, w0, w1\n\tcmp\tw0, 0\n\tbeq\t.L15\n\tldr\tw0, [sp, 40]\n\tadd\tw1, w0, 2\n\tldr\tw0, [sp, 32]\n\tudiv\tw2, w0, w1\n\tmul\tw1, w2, w1\n\tsub\tw0, w0, w1\n\tcmp\tw0, 0\n\tbne\t.L16\n.L15:\n\tstrh\twzr, [sp, 22]\n.L16:\n\tldr\tw0, [sp, 40]\n\tadd\tw0, w0, 6\n\tstr\tw0, [sp, 40]\n.L14:\n\tldrsh\tw0, [sp, 22]\n\tcmp\tw0, 1\n\tbne\t.L11\n\tldr\tw0, [sp, 40]\n\tmul\tw0, w0, w0\n\tldr\tw1, [sp, 32]\n\tcmp\tw1, w0\n\tbcs\t.L17\n.L11:\n\tldrsh\tw0, [sp, 22]\n\tcmp\tw0, 0\n\tbne\t.L18\n\tldr\tw0, [sp, 32]\n\tand\tw0, w0, 1\n\tcmp\tw0, 0\n\tbne\t.L19\n\tstr\twzr, [sp, 28]\n\tb\t.L20\n.L21:\n\tldr\tw0, [sp, 32]\n\tlsr\tw0, w0, 1\n\tstr\tw0, [sp, 32]\n\tldr\tw0, [sp, 28]\n\tadd\tw0, w0, 1\n\tstr\tw0, [sp, 28]\n.L20:\n\tldr\tw0, [sp, 32]\n\tand\tw0, w0, 1\n\tcmp\tw0, 0\n\tbeq\t.L21\n\tldr\tw0, [sp, 28]\n\tcmp\tw0, 1\n\tbne\t.L22\n\tstrh\twzr, [sp, 18]\n\tb\t.L19\n.L22:\n\tldr\tw0, [sp, 28]\n\tsxth\tw0, w0\n\tmov\tw1, w0\n\tldrh\tw0, [sp, 20]\n\tbl\t_gcd\n\tstrh\tw0, [sp, 20]\n.L19:\n\tldr\tw2, [sp, 32]\n\tmov\tw0, 43691\n\tmovk\tw0, 0xaaaa, lsl 16\n\tumull\tx0, w2, w0\n\tlsr\tx0, x0, 32\n\tlsr\tw1, w0, 1\n\tmov\tw0, w1\n\tlsl\tw0, w0, 1\n\tadd\tw0, w0, w1\n\tsub\tw1, w2, w0\n\tcmp\tw1, 0\n\tbne\t.L23\n\tldrsh\tw0, [sp, 18]\n\tcmp\tw0, 0\n\tbeq\t.L23\n\tstr\twzr, [sp, 28]\n\tb\t.L24\n.L25:\n\tldr\tw1, [sp, 32]\n\tmov\tw0, 43691\n\tmovk\tw0, 0xaaaa, lsl 16\n\tumull\tx0, w1, w0\n\tlsr\tx0, x0, 32\n\tlsr\tw0, w0, 1\n\tstr\tw0, [sp, 32]\n\tldr\tw0, [sp, 28]\n\tadd\tw0, w0, 1\n\tstr\tw0, [sp, 28]\n.L24:\n\tldr\tw2, [sp, 32]\n\tmov\tw0, 43691\n\tmovk\tw0, 0xaaaa, lsl 16\n\tumull\tx0, w2, w0\n\tlsr\tx0, x0, 32\n\tlsr\tw1, w0, 1\n\tmov\tw0, w1\n\tlsl\tw0, w0, 1\n\tadd\tw0, w0, w1\n\tsub\tw1, w2, w0\n\tcmp\tw1, 0\n\tbeq\t.L25\n\tldr\tw0, [sp, 28]\n\tcmp\tw0, 1\n\tbne\t.L26\n\tstrh\twzr, [sp, 18]\n\tb\t.L23\n.L26:\n\tldr\tw0, [sp, 28]\n\tsxth\tw0, w0\n\tmov\tw1, w0\n\tldrh\tw0, [sp, 20]\n\tbl\t_gcd\n\tstrh\tw0, [sp, 20]\n.L23:\n\tldrsh\tw0, [sp, 18]\n\tcmp\tw0, 0\n\tbeq\t.L27\n\tmov\tw0, 5\n\tstr\tw0, [sp, 44]\n\tb\t.L28\n.L39:\n\tstr\twzr, [sp, 28]\n\tb\t.L29\n.L30:\n\tldr\tw1, [sp, 32]\n\tldr\tw0, [sp, 44]\n\tudiv\tw0, w1, w0\n\tstr\tw0, [sp, 32]\n\tldr\tw0, [sp, 28]\n\tadd\tw0, w0, 1\n\tstr\tw0, [sp, 28]\n.L29:\n\tldr\tw0, [sp, 32]\n\tldr\tw1, [sp, 44]\n\tudiv\tw2, w0, w1\n\tldr\tw1, [sp, 44]\n\tmul\tw1, w2, w1\n\tsub\tw0, w0, w1\n\tcmp\tw0, 0\n\tbeq\t.L30\n\tldr\tw0, [sp, 28]\n\tcmp\tw0, 1\n\tbne\t.L31\n\tstrh\twzr, [sp, 18]\n\tb\t.L27\n.L31:\n\tldrsh\tw0, [sp, 20]\n\tcmp\tw0, 0\n\tbeq\t.L32\n\tldr\tw0, [sp, 28]\n\tcmp\tw0, 1\n\tbls\t.L33\n.L32:\n\tldr\tw0, [sp, 28]\n\tsxth\tw0, w0\n\tmov\tw1, w0\n\tldrh\tw0, [sp, 20]\n\tbl\t_gcd\n\tstrh\tw0, [sp, 20]\n.L33:\n\tstr\twzr, [sp, 28]\n\tb\t.L34\n.L35:\n\tldr\tw0, [sp, 44]\n\tadd\tw0, w0, 2\n\tldr\tw1, [sp, 32]\n\tudiv\tw0, w1, w0\n\tstr\tw0, [sp, 32]\n\tldr\tw0, [sp, 28]\n\tadd\tw0, w0, 1\n\tstr\tw0, [sp, 28]\n.L34:\n\tldr\tw0, [sp, 44]\n\tadd\tw1, w0, 2\n\tldr\tw0, [sp, 32]\n\tudiv\tw2, w0, w1\n\tmul\tw1, w2, w1\n\tsub\tw0, w0, w1\n\tcmp\tw0, 0\n\tbeq\t.L35\n\tldr\tw0, [sp, 28]\n\tcmp\tw0, 1\n\tbne\t.L36\n\tstrh\twzr, [sp, 18]\n\tb\t.L27\n.L36:\n\tldrsh\tw0, [sp, 20]\n\tcmp\tw0, 0\n\tbeq\t.L37\n\tldr\tw0, [sp, 28]\n\tcmp\tw0, 1\n\tbls\t.L38\n.L37:\n\tldr\tw0, [sp, 28]\n\tsxth\tw0, w0\n\tmov\tw1, w0\n\tldrh\tw0, [sp, 20]\n\tbl\t_gcd\n\tstrh\tw0, [sp, 20]\n.L38:\n\tldr\tw0, [sp, 44]\n\tadd\tw0, w0, 6\n\tstr\tw0, [sp, 44]\n.L28:\n\tldr\tw0, [sp, 44]\n\tmul\tw0, w0, w0\n\tldr\tw1, [sp, 32]\n\tcmp\tw1, w0\n\tbcs\t.L39\n.L27:\n\tldr\tw0, [sp, 32]\n\tcmp\tw0, 1\n\tbne\t.L18\n\tldrsh\tw0, [sp, 18]\n\tcmp\tw0, 0\n\tbeq\t.L18\n\tldrsh\tw0, [sp, 20]\n\tcmp\tw0, 1\n\tbne\t.L18\n\tldr\tw0, [sp, 24]\n\tadd\tw0, w0, 1\n\tstr\tw0, [sp, 24]\n.L18:\n\tldr\tw0, [sp, 36]\n\tadd\tw0, w0, 1\n\tstr\tw0, [sp, 36]\n.L9:\n\tldr\tw1, [sp, 36]\n\tmov\tw0, 38527\n\tmovk\tw0, 0x98, lsl 16\n\tcmp\tw1, w0\n\tbls\t.L40\n\tmov\tw2, 38528\n\tmovk\tw2, 0x98, lsl 16\n\tldr\tw1, [sp, 24]\n\tadrp\tx0, .LC0\n\tadd\tx0, x0, :lo12:.LC0\n\tbl\tprintf\n\tmov\tw0, 0\n\tldp\tx29, x30, [sp], 48\n\t.cfi_restore 30\n\t.cfi_restore 29\n\t.cfi_def_cfa_offset 0\n\tret\n\t.cfi_endproc\n"
    # }
]


def few_shot(datapoint, write_to_folder, src_lang, tgt_lang, openai_model="gpt-4"):
    progname = datapoint["source"].split(".c")[0]
    print(progname)
    if os.path.exists(f"{write_to_folder}/few_shot_{openai_model}_{progname}.json"): return

    make_run_commands = {
        "as_cmd": "{prefix}-linux-gnu-as",
        # "gcc_cmd": "./../../verification_image/linux-riscv64-verification sh -c 'riscv64-unknown-linux-gnu-gcc {write_filename_prefix}.s -o {write_filename_prefix} {gcc_flags}'",
        "gcc_cmd": "{prefix}-linux-gnu-gcc -pthread",
        "qemu_cmd": "qemu-{prefix} -L /usr/{prefix}-linux-gnu",
    }
    problem_prediction = {
        "src": datapoint["source"],
        "c": datapoint["c"],
        "risc": datapoint["risc"],
        "arm": datapoint["arm"],
        "prompt_used": {},
        f"pred_{tgt_lang}": {
            "fns": {},
            "translation": None
        }
    }

    if "benchmarks" in write_to_folder:
        make_run_commands["gcc_flags"] = "-lapr-1 -lm -lgmp" if args.target_lang == 'arm' else "$(pkg-config --libs apr-1 gmp) -lm"
        # make_run_commands["gcc_flags"] = "-lapr-1 -lm -lgmp"
        make_run_commands["qemu_setup"] = {
            "binary-trees": {
                "setup": [],
                "test": [],
                "cleanup": [],
                "qemu_args": "18",  # "21",
            },
            "fannkuch-redux": {
                "setup": [],
                "test": [],
                "cleanup": [],
                "qemu_args": "9",  # "12",
            },
            "pidigits": {
                "setup": [],
                "test": [],
                "cleanup": [],
                "qemu_args": "1000",  # 0,
            },
            "nbody": {
                "setup": [],
                "test": [],
                "cleanup": [],
                "qemu_args": "500000",  # 00,
            },
            "fasta": {
                "setup": [],
                "test": [],
                "cleanup": [],
                "qemu_args": "250",  # 00000,
            },
            "toosimple": {
                "setup": [],
                "test": [],
                "cleanup": [],
                "qemu_args": "100000000",  # 00,
            },
        }
    elif "euler" in write_to_folder:
        make_run_commands["gcc_flags"] = "-lm -lgmp" if args.target_lang == 'arm' else "$(pkg-config --libs gmp) -lm"
        # make_run_commands["gcc_flags"] = "-lm" if tgt_lang == "risc" else "-lm -lgmp"
        make_run_commands["qemu_setup"] = {
            "problem": {"setup": [], "qemu_args": "", "test": [], "cleanup": []}
        }
    elif "unix_commands" in write_to_folder:
        make_run_commands["gcc_flags"] = ""
        random_num = random.randint(0, 1000)
        make_run_commands["qemu_setup"] = {
            "cat": {
                "setup": ["echo hello " + str(random_num) + " > {folder}/testfile.txt"],
                "qemu_args": "{folder}/testfile.txt",
                "test": [""],
                "cleanup": ["rm testfile.txt"],
            },
            "cd": {
                "setup": ["mkdir -p {folder}/atestfolder"],
                "qemu_args": "{folder}/atestfolder",
                "test": [],
                "cleanup": ["rmdir {folder}/atestfolder"],
            },
            "cp": {
                "setup": ["echo hello " + str(random_num) + " > {folder}/testfile.txt"],
                "qemu_args": "{folder}/testfile.txt {folder}/copiedtestfile.txt",
                "test": ["cat {folder}/copiedtestfile.txt", "ls {folder}"],
                "cleanup": [
                    "rm {folder}/testfile.txt",
                    "rm {folder}/copiedtestfile.txt",
                ],
            },
            "ls": {
                "setup": [],
                "qemu_args": "",
                "test": [],
                "cleanup": [],
            },
            "mkdir": {
                "setup": [],
                "qemu_args": "atestfolder",
                "test": ["ls"],
                "cleanup": ["rmdir atestfolder"],
            },
            "ps": {
                "setup": [],
                "qemu_args": "",
                "test": [],
                "cleanup": [],
            },
            "rm": {
                "setup": ["touch filetorm.txt"],
                "qemu_args": "filetorm.txt",
                "test": ["ls"],
                "cleanup": ["rm filetorm.txt"],
            },
            "rmdir": {
                "setup": ["mkdir -p newfolder"],
                "qemu_args": "newfolder",
                "test": ["ls"],
                "cleanup": ["rmdir newfolder"],
            },
            "tee": {
                "setup": [],
                "qemu_args": "",
                "test": [],
                "cleanup": [],
            },
            "touch": {
                "setup": ["echo hello " + str(random_num) + " > {folder}/testfile.txt"],
                "qemu_args": "testfile.txt",
                "test": [],
                "cleanup": ["rm testfile.txt"],
            },
            "xargs": {
                "setup": [],
                "qemu_args": "",
                "test": [],
                "cleanup": [],
            },
        }
    # Get truth execution.
    input_assembly = datapoint[src_lang]
    (succeeded, _, true_execution_output) = run_qemu(
        input_assembly,
        progname,
        f"baselines/few_shot_true",
        make_run_commands,
        src_lang,
    )
    if not succeeded:
        (_, _, true_execution_output) = run_qemu(
            problem_prediction[tgt_lang],
            progname,
            f"baselines/few_shot_true",
            make_run_commands,
            tgt_lang,
        )
    print("expected exc output:", true_execution_output)
    problem_prediction["exc_true"] = true_execution_output

    fn_translations = {}
    for fn_name, fn_src_text in datapoint[f"{src_lang}_fns"].items():
        print(fn_name)
        fn_translation, prompt_used = call_gpt(fn_src_text, False, src_lang, tgt_lang)
        if fn_translation[-1] != '\n': fn_translation += '\n'
        fn_translations[fn_name] = fn_translation
        problem_prediction["prompt_used"][fn_name] = prompt_used
        problem_prediction[f"pred_{tgt_lang}"]["fns"][fn_name] = fn_translation
    cloze_translation, prompt_used = call_gpt(
        datapoint[f"{src_lang}_cloze"], True, src_lang, tgt_lang
    )
    if cloze_translation[-1] != '\n': cloze_translation += '\n'
    problem_prediction["prompt_used"][None] = prompt_used
    problem_prediction[f"pred_{tgt_lang}"]["fns"][None] = cloze_translation

    with open(f"{write_to_folder}/few_shot_{openai_model}_{progname}.json", "w") as f:
        json.dump(problem_prediction, f, indent=4)
    try:
        translation = cloze_translation.format(**fn_translations)
        (actually_run, _, pred_execution_output) = run_qemu(
            translation,
            progname,
            f"few_shot_exc",
            make_run_commands,
            tgt_lang,
        )
        problem_prediction[f"pred_{tgt_lang}"]["translation"] = translation
        problem_prediction["exc_output"] = pred_execution_output
        if pred_execution_output == true_execution_output:
            print("Matched!")
        else:
            print("Successfully compiled but did not match.")
    except:
        problem_prediction[f"pred_{tgt_lang}"]["translation"] = None

    with open(f"{write_to_folder}/few_shot_{openai_model}_{progname}.json", "w") as f:
        json.dump(problem_prediction, f, indent=4)


def call_gpt(input, is_cloze, src_lang, tgt_lang, openai_model="gpt-4"):
    src_lang_str = "ARMv8" if src_lang == "arm" else "RISC-V 64"
    tgt_lang_str = "ARMv8" if tgt_lang == "arm" else "RISC-V 64"

    messages = [
        {
            "role": "system",
            "content": f"You are able to translate assembly code from {src_lang_str} to {tgt_lang_str}.",
        }
    ]

    if is_cloze:
        examples = cloze_examples
    else:
        examples = fn_examples
    for ex in examples:
        messages.append({"role": "user", "content": f"{src_lang_str}:\n{ex[src_lang]}"})
        messages.append(
            {"role": "assistant", "content": f"{tgt_lang_str}:\n{ex[tgt_lang]}"}
        )
    messages.append({"role": "user", "content": f"{src_lang_str}:\n{input}"})
    response = None
    while len(messages) > 0:
        try:
            response = openai.ChatCompletion.create(
                model=openai_model,
                messages=messages,
                stop=["Human:", f"{src_lang_str}:"],
            )
            break
        except openai.error.InvalidRequestError as e:
            messages = messages[2:]
        except:
            return None, [
        m["content"] for m in messages
    ]
    if response is None:
        return None, [
        m["content"] for m in messages
    ]
    return response["choices"][0]["message"]["content"][len(tgt_lang_str) + 1 :], [
        m["content"] for m in messages
    ]
