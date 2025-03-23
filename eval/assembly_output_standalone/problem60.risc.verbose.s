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
# eval/problem60//code.c:4:     for (int i = 2; i * i <= n; i++)
	li	a5,2		# tmp78,
	sw	a5,-20(s0)	# tmp78, i
# eval/problem60//code.c:4:     for (int i = 2; i * i <= n; i++)
	j	.L2		#
.L5:
# eval/problem60//code.c:5:         while (n % i == 0 && n > i) n = n / i;
	lw	a5,-36(s0)		# tmp82, n
	mv	a4,a5	# tmp81, tmp82
	lw	a5,-20(s0)		# tmp84, i
	divw	a5,a4,a5	# tmp83, tmp80, tmp81
	sw	a5,-36(s0)	# tmp80, n
.L3:
# eval/problem60//code.c:5:         while (n % i == 0 && n > i) n = n / i;
	lw	a5,-36(s0)		# tmp87, n
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-20(s0)		# tmp90, i
	remw	a5,a4,a5	# tmp89, tmp88, tmp86
	sext.w	a5,a5	# _1, tmp88
# eval/problem60//code.c:5:         while (n % i == 0 && n > i) n = n / i;
	bne	a5,zero,.L4	#, _1,,
# eval/problem60//code.c:5:         while (n % i == 0 && n > i) n = n / i;
	lw	a5,-36(s0)		# tmp92, n
	mv	a4,a5	# tmp91, tmp92
	lw	a5,-20(s0)		# tmp94, i
	sext.w	a4,a4	# tmp95, tmp91
	sext.w	a5,a5	# tmp96, tmp93
	bgt	a4,a5,.L5	#, tmp95, tmp96,
.L4:
# eval/problem60//code.c:4:     for (int i = 2; i * i <= n; i++)
	lw	a5,-20(s0)		# tmp99, i
	addiw	a5,a5,1	#, tmp97, tmp98
	sw	a5,-20(s0)	# tmp97, i
.L2:
# eval/problem60//code.c:4:     for (int i = 2; i * i <= n; i++)
	lw	a5,-20(s0)		# tmp102, i
	mulw	a5,a5,a5	# tmp100, tmp101, tmp101
	sext.w	a4,a5	# _2, tmp100
# eval/problem60//code.c:4:     for (int i = 2; i * i <= n; i++)
	lw	a5,-36(s0)		# tmp104, n
	sext.w	a5,a5	# tmp105, tmp103
	bge	a5,a4,.L3	#, tmp105, tmp106,
# eval/problem60//code.c:6:     return n;
	lw	a5,-36(s0)		# _8, n
# eval/problem60//code.c:7: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
