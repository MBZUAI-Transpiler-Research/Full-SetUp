	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -O0 -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	fsw	fa0,-36(s0)	# a, a
	fsw	fa1,-40(s0)	# b, b
	fsw	fa2,-44(s0)	# c, c
# code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-36(s0)	# tmp149, a
	flw	fa5,-40(s0)	# tmp150, b
	fadd.s	fa5,fa4,fa5	# _1, tmp149, tmp150
# code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-44(s0)	# tmp151, c
	fge.s	a5,fa4,fa5	#, tmp152, tmp151, _1
	bne	a5,zero,.L2	#, tmp152,,
# code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-36(s0)	# tmp153, a
	flw	fa5,-44(s0)	# tmp154, c
	fadd.s	fa5,fa4,fa5	# _2, tmp153, tmp154
# code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-40(s0)	# tmp155, b
	fge.s	a5,fa4,fa5	#, tmp156, tmp155, _2
	bne	a5,zero,.L2	#, tmp156,,
# code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-40(s0)	# tmp157, b
	flw	fa5,-44(s0)	# tmp158, c
	fadd.s	fa5,fa4,fa5	# _3, tmp157, tmp158
# code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	flw	fa4,-36(s0)	# tmp159, a
	fge.s	a5,fa4,fa5	#, tmp160, tmp159, _3
	beq	a5,zero,.L6	#, tmp160,,
.L2:
# code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	lla	a5,.LC0	# tmp161,
	flw	fa5,0(a5)	# _14,
# code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	j	.L5		#
.L6:
# code.c:6: float s = (a + b + c) / 2;
	flw	fa4,-36(s0)	# tmp162, a
	flw	fa5,-40(s0)	# tmp163, b
	fadd.s	fa4,fa4,fa5	# _4, tmp162, tmp163
# code.c:6: float s = (a + b + c) / 2;
	flw	fa5,-44(s0)	# tmp164, c
	fadd.s	fa4,fa4,fa5	# _5, _4, tmp164
# code.c:6: float s = (a + b + c) / 2;
	lla	a5,.LC1	# tmp167,
	flw	fa5,0(a5)	# tmp166,
	fdiv.s	fa5,fa4,fa5	# tmp165, _5, tmp166
	fsw	fa5,-24(s0)	# tmp165, s
# code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	flw	fa4,-24(s0)	# tmp168, s
	flw	fa5,-36(s0)	# tmp169, a
	fsub.s	fa4,fa4,fa5	# _6, tmp168, tmp169
# code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	flw	fa5,-24(s0)	# tmp170, s
	fmul.s	fa4,fa4,fa5	# _7, _6, tmp170
# code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	flw	fa3,-24(s0)	# tmp171, s
	flw	fa5,-40(s0)	# tmp172, b
	fsub.s	fa5,fa3,fa5	# _8, tmp171, tmp172
# code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	fmul.s	fa4,fa4,fa5	# _9, _7, _8
# code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	flw	fa3,-24(s0)	# tmp173, s
	flw	fa5,-44(s0)	# tmp174, c
	fsub.s	fa5,fa3,fa5	# _10, tmp173, tmp174
# code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	fmul.s	fa5,fa4,fa5	# _11, _9, _10
	fmv.s	fa0,fa5	#, _11
	call	sqrtf@plt	#
	fsw	fa0,-20(s0)	#, area
# code.c:8: return roundf(area * 100) / 100;
	flw	fa4,-20(s0)	# tmp175, area
	lla	a5,.LC2	# tmp177,
	flw	fa5,0(a5)	# tmp176,
	fmul.s	fa5,fa4,fa5	# _12, tmp175, tmp176
	fmv.s	fa0,fa5	#, _12
	call	roundf@plt	#
	fmv.s	fa4,fa0	# _13,
# code.c:8: return roundf(area * 100) / 100;
	lla	a5,.LC2	# tmp179,
	flw	fa5,0(a5)	# tmp178,
	fdiv.s	fa5,fa4,fa5	# _14, _13, tmp178
.L5:
# code.c:9: }
	fmv.s	fa0,fa5	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	2
.LC0:
	.word	-1082130432
	.align	2
.LC1:
	.word	1073741824
	.align	2
.LC2:
	.word	1120403456
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
