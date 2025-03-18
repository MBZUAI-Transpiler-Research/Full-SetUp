	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	fsw	fa0,-20(s0)	# a, a
	fsw	fa1,-24(s0)	# b, b
	fsw	fa2,-28(s0)	# c, c
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-20(s0)	# tmp157, a
	fmul.s	fa4,fa5,fa5	# _1, tmp157, tmp157
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-24(s0)	# tmp158, b
	fmul.s	fa5,fa5,fa5	# _2, tmp158, tmp158
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fadd.s	fa4,fa4,fa5	# _3, _1, _2
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-28(s0)	# tmp159, c
	fmul.s	fa5,fa5,fa5	# _4, tmp159, tmp159
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fsub.s	fa5,fa4,fa5	# _5, _3, _4
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fabs.s	fa5,fa5	# _6, _5
	fcvt.d.s	fa4,fa5	# _7, _6
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	lla	a5,.LC0	# tmp161,
	fld	fa5,0(a5)	# tmp160,
	flt.d	a5,fa4,fa5	#, tmp162, _7, tmp160
	bne	a5,zero,.L2	#, tmp162,,
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-20(s0)	# tmp163, a
	fmul.s	fa4,fa5,fa5	# _8, tmp163, tmp163
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-28(s0)	# tmp164, c
	fmul.s	fa5,fa5,fa5	# _9, tmp164, tmp164
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fadd.s	fa4,fa4,fa5	# _10, _8, _9
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-24(s0)	# tmp165, b
	fmul.s	fa5,fa5,fa5	# _11, tmp165, tmp165
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fsub.s	fa5,fa4,fa5	# _12, _10, _11
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fabs.s	fa5,fa5	# _13, _12
	fcvt.d.s	fa4,fa5	# _14, _13
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	lla	a5,.LC0	# tmp167,
	fld	fa5,0(a5)	# tmp166,
	flt.d	a5,fa4,fa5	#, tmp168, _14, tmp166
	bne	a5,zero,.L2	#, tmp168,,
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-24(s0)	# tmp169, b
	fmul.s	fa4,fa5,fa5	# _15, tmp169, tmp169
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-28(s0)	# tmp170, c
	fmul.s	fa5,fa5,fa5	# _16, tmp170, tmp170
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fadd.s	fa4,fa4,fa5	# _17, _15, _16
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-20(s0)	# tmp171, a
	fmul.s	fa5,fa5,fa5	# _18, tmp171, tmp171
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fsub.s	fa5,fa4,fa5	# _19, _17, _18
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fabs.s	fa5,fa5	# _20, _19
	fcvt.d.s	fa4,fa5	# _21, _20
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	lla	a5,.LC0	# tmp173,
	fld	fa5,0(a5)	# tmp172,
	flt.d	a5,fa4,fa5	#, tmp174, _21, tmp172
	beq	a5,zero,.L6	#, tmp174,,
.L2:
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	li	a5,1		# _22,
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	j	.L5		#
.L6:
# eval/problem158//code.c:6:     return 0;
	li	a5,0		# _22,
.L5:
# eval/problem158//code.c:7: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
