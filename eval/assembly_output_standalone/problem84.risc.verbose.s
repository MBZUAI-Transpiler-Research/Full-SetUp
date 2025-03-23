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
	mv	a5,a0	# tmp74, n
	sw	a5,-36(s0)	# tmp75, n
# eval/problem84//code.c:4:     if (n < 1) return 0;
	lw	a5,-36(s0)		# tmp77, n
	sext.w	a5,a5	# tmp78, tmp76
	bgt	a5,zero,.L2	#, tmp78,,
# eval/problem84//code.c:4:     if (n < 1) return 0;
	li	a5,0		# _3,
	j	.L3		#
.L2:
# eval/problem84//code.c:5:     if (n == 1) return 1;
	lw	a5,-36(s0)		# tmp80, n
	sext.w	a4,a5	# tmp81, tmp79
	li	a5,1		# tmp82,
	bne	a4,a5,.L4	#, tmp81, tmp82,
# eval/problem84//code.c:5:     if (n == 1) return 1;
	li	a5,1		# _3,
	j	.L3		#
.L4:
# eval/problem84//code.c:6:     int out = 18;
	li	a5,18		# tmp83,
	sw	a5,-24(s0)	# tmp83, out
# eval/problem84//code.c:7:     for (int i = 2; i < n; i++)
	li	a5,2		# tmp84,
	sw	a5,-20(s0)	# tmp84, i
# eval/problem84//code.c:7:     for (int i = 2; i < n; i++)
	j	.L5		#
.L6:
# eval/problem84//code.c:8:         out = out * 10;
	lw	a5,-24(s0)		# tmp86, out
	mv	a4,a5	# tmp85, tmp86
	mv	a5,a4	# tmp87, tmp85
	slliw	a5,a5,2	#, tmp88, tmp87
	addw	a5,a5,a4	# tmp85, tmp87, tmp87
	slliw	a5,a5,1	#, tmp89, tmp87
	sw	a5,-24(s0)	# tmp87, out
# eval/problem84//code.c:7:     for (int i = 2; i < n; i++)
	lw	a5,-20(s0)		# tmp92, i
	addiw	a5,a5,1	#, tmp90, tmp91
	sw	a5,-20(s0)	# tmp90, i
.L5:
# eval/problem84//code.c:7:     for (int i = 2; i < n; i++)
	lw	a5,-20(s0)		# tmp94, i
	mv	a4,a5	# tmp93, tmp94
	lw	a5,-36(s0)		# tmp96, n
	sext.w	a4,a4	# tmp97, tmp93
	sext.w	a5,a5	# tmp98, tmp95
	blt	a4,a5,.L6	#, tmp97, tmp98,
# eval/problem84//code.c:9:     return out;
	lw	a5,-24(s0)		# _3, out
.L3:
# eval/problem84//code.c:10: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
