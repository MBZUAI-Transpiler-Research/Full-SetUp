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
	fsw	fa1,-24(s0)	# h, h
# eval/problem46//code.c:5:     return (a * h) * 0.5;
	flw	fa4,-20(s0)	# tmp75, a
	flw	fa5,-24(s0)	# tmp76, h
	fmul.s	fa4,fa4,fa5	# _1, tmp75, tmp76
# eval/problem46//code.c:5:     return (a * h) * 0.5;
	lla	a5,.LC0	# tmp78,
	flw	fa5,0(a5)	# tmp77,
	fmul.s	fa5,fa4,fa5	# _4, _1, tmp77
# eval/problem46//code.c:6: }
	fmv.s	fa0,fa5	#, <retval>
	ld	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	2
.LC0:
	.word	1056964608
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
