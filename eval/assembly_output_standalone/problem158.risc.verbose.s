	.file	"code.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-32	#,,
	sd	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	fsw	fa0,-20(s0)	# a, a
	fsw	fa1,-24(s0)	# b, b
	fsw	fa2,-28(s0)	# c, c
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-20(s0)	# tmp95, a
	fmul.s	fa4,fa5,fa5	# _1, tmp95, tmp95
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-24(s0)	# tmp96, b
	fmul.s	fa5,fa5,fa5	# _2, tmp96, tmp96
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fadd.s	fa4,fa4,fa5	# _3, _1, _2
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-28(s0)	# tmp97, c
	fmul.s	fa5,fa5,fa5	# _4, tmp97, tmp97
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fsub.s	fa5,fa4,fa5	# _5, _3, _4
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fabs.s	fa5,fa5	# _6, _5
	fcvt.d.s	fa4,fa5	# _7, _6
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	lla	a5,.LC0	# tmp99,
	fld	fa5,0(a5)	# tmp98,
	flt.d	a5,fa4,fa5	#, tmp100, _7, tmp98
	bne	a5,zero,.L2	#, tmp100,,
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-20(s0)	# tmp101, a
	fmul.s	fa4,fa5,fa5	# _8, tmp101, tmp101
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-28(s0)	# tmp102, c
	fmul.s	fa5,fa5,fa5	# _9, tmp102, tmp102
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fadd.s	fa4,fa4,fa5	# _10, _8, _9
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-24(s0)	# tmp103, b
	fmul.s	fa5,fa5,fa5	# _11, tmp103, tmp103
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fsub.s	fa5,fa4,fa5	# _12, _10, _11
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fabs.s	fa5,fa5	# _13, _12
	fcvt.d.s	fa4,fa5	# _14, _13
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	lla	a5,.LC0	# tmp105,
	fld	fa5,0(a5)	# tmp104,
	flt.d	a5,fa4,fa5	#, tmp106, _14, tmp104
	bne	a5,zero,.L2	#, tmp106,,
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-24(s0)	# tmp107, b
	fmul.s	fa4,fa5,fa5	# _15, tmp107, tmp107
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-28(s0)	# tmp108, c
	fmul.s	fa5,fa5,fa5	# _16, tmp108, tmp108
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fadd.s	fa4,fa4,fa5	# _17, _15, _16
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	flw	fa5,-20(s0)	# tmp109, a
	fmul.s	fa5,fa5,fa5	# _18, tmp109, tmp109
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fsub.s	fa5,fa4,fa5	# _19, _17, _18
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	fabs.s	fa5,fa5	# _20, _19
	fcvt.d.s	fa4,fa5	# _21, _20
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	lla	a5,.LC0	# tmp111,
	fld	fa5,0(a5)	# tmp110,
	flt.d	a5,fa4,fa5	#, tmp112, _21, tmp110
	beq	a5,zero,.L6	#, tmp112,,
.L2:
# eval/problem158//code.c:5:     if (fabs(a*a + b*b - c*c) < 1e-4 || fabs(a*a + c*c - b*b) < 1e-4 || fabs(b*b + c*c - a*a) < 1e-4) return 1;
	li	a5,1		# _22,
	j	.L5		#
.L6:
# eval/problem158//code.c:6:     return 0;
	li	a5,0		# _22,
.L5:
# eval/problem158//code.c:7: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
