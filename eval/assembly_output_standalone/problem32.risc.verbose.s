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
	sd	a0,-40(s0)	# n, n
# eval/problem32//code.c:4:     if (n < 2) return false;
	ld	a4,-40(s0)		# tmp76, n
	li	a5,1		# tmp77,
	bgt	a4,a5,.L2	#, tmp76, tmp77,
# eval/problem32//code.c:4:     if (n < 2) return false;
	li	a5,0		# _4,
	j	.L3		#
.L2:
# eval/problem32//code.c:5:     for (long long i = 2; i * i <= n; i++)
	li	a5,2		# tmp78,
	sd	a5,-24(s0)	# tmp78, i
# eval/problem32//code.c:5:     for (long long i = 2; i * i <= n; i++)
	j	.L4		#
.L6:
# eval/problem32//code.c:6:         if (n % i == 0) return false;
	ld	a4,-40(s0)		# tmp79, n
	ld	a5,-24(s0)		# tmp80, i
	rem	a5,a4,a5	# tmp80, _1, tmp79
# eval/problem32//code.c:6:         if (n % i == 0) return false;
	bne	a5,zero,.L5	#, _1,,
# eval/problem32//code.c:6:         if (n % i == 0) return false;
	li	a5,0		# _4,
	j	.L3		#
.L5:
# eval/problem32//code.c:5:     for (long long i = 2; i * i <= n; i++)
	ld	a5,-24(s0)		# tmp82, i
	addi	a5,a5,1	#, tmp81, tmp82
	sd	a5,-24(s0)	# tmp81, i
.L4:
# eval/problem32//code.c:5:     for (long long i = 2; i * i <= n; i++)
	ld	a5,-24(s0)		# tmp83, i
	mul	a5,a5,a5	# _2, tmp83, tmp83
# eval/problem32//code.c:5:     for (long long i = 2; i * i <= n; i++)
	ld	a4,-40(s0)		# tmp84, n
	bge	a4,a5,.L6	#, tmp84, _2,
# eval/problem32//code.c:7:     return true;
	li	a5,1		# _4,
.L3:
# eval/problem32//code.c:8: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
