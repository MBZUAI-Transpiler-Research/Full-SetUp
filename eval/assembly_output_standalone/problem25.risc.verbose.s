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
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp76, n
	sw	a5,-36(s0)	# tmp77, n
# eval/problem25//code.c:4:     for (int i = 2; i * i <= n; i++)
	li	a5,2		# tmp78,
	sw	a5,-20(s0)	# tmp78, i
# eval/problem25//code.c:4:     for (int i = 2; i * i <= n; i++)
	j	.L2		#
.L5:
# eval/problem25//code.c:5:         if (n % i == 0) return n / i;
	lw	a5,-36(s0)		# tmp81, n
	mv	a4,a5	# tmp80, tmp81
	lw	a5,-20(s0)		# tmp84, i
	remw	a5,a4,a5	# tmp83, tmp82, tmp80
	sext.w	a5,a5	# _1, tmp82
# eval/problem25//code.c:5:         if (n % i == 0) return n / i;
	bne	a5,zero,.L3	#, _1,,
# eval/problem25//code.c:5:         if (n % i == 0) return n / i;
	lw	a5,-36(s0)		# tmp88, n
	mv	a4,a5	# tmp87, tmp88
	lw	a5,-20(s0)		# tmp90, i
	divw	a5,a4,a5	# tmp89, tmp86, tmp87
	sext.w	a5,a5	# _4, tmp86
	j	.L4		#
.L3:
# eval/problem25//code.c:4:     for (int i = 2; i * i <= n; i++)
	lw	a5,-20(s0)		# tmp93, i
	addiw	a5,a5,1	#, tmp91, tmp92
	sw	a5,-20(s0)	# tmp91, i
.L2:
# eval/problem25//code.c:4:     for (int i = 2; i * i <= n; i++)
	lw	a5,-20(s0)		# tmp96, i
	mulw	a5,a5,a5	# tmp94, tmp95, tmp95
	sext.w	a4,a5	# _2, tmp94
# eval/problem25//code.c:4:     for (int i = 2; i * i <= n; i++)
	lw	a5,-36(s0)		# tmp98, n
	sext.w	a5,a5	# tmp99, tmp97
	bge	a5,a4,.L5	#, tmp99, tmp100,
# eval/problem25//code.c:6:     return 1;
	li	a5,1		# _4,
.L4:
# eval/problem25//code.c:7: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
