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
	fsw	fa0,-20(s0)	# number, number
# eval/problem3//code.c:5:     return number - (int)number;
	flw	fa5,-20(s0)	# tmp77, number
	fcvt.w.s a5,fa5,rtz	# tmp76, tmp77
	sext.w	a5,a5	# _1, tmp76
# eval/problem3//code.c:5:     return number - (int)number;
	fcvt.s.w	fa5,a5	# _2, _1
	flw	fa4,-20(s0)	# tmp78, number
	fsub.s	fa5,fa4,fa5	# _4, tmp78, _2
# eval/problem3//code.c:6: }
	fmv.s	fa0,fa5	#, <retval>
	ld	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
