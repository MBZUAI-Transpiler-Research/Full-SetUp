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
	mv	a5,a0	# tmp76, n
	sw	a5,-20(s0)	# tmp77, n
# eval/problem61//code.c:4:     return n * (n + 1) / 2;
	lw	a5,-20(s0)		# tmp80, n
	addiw	a5,a5,1	#, tmp78, tmp79
	sext.w	a5,a5	# _1, tmp78
# eval/problem61//code.c:4:     return n * (n + 1) / 2;
	lw	a4,-20(s0)		# tmp83, n
	mulw	a5,a4,a5	# tmp81, tmp82, _1
	sext.w	a5,a5	# _2, tmp81
# eval/problem61//code.c:4:     return n * (n + 1) / 2;
	srliw	a4,a5,31	#, tmp86, tmp85
	addw	a5,a4,a5	# tmp85, tmp87, tmp86
	sraiw	a5,a5,1	#, tmp88, tmp87
	sext.w	a5,a5	# _4, tmp88
# eval/problem61//code.c:5: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
