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
	mv	a5,a0	# tmp75, n
	mv	a4,a1	# tmp77, p
	sw	a5,-36(s0)	# tmp76, n
	mv	a5,a4	# tmp78, tmp77
	sw	a5,-40(s0)	# tmp78, p
# eval/problem50//code.c:4:     int out = 1;
	li	a5,1		# tmp79,
	sw	a5,-24(s0)	# tmp79, out
# eval/problem50//code.c:5:     for (int i = 0; i < n; i++)
	sw	zero,-20(s0)	#, i
# eval/problem50//code.c:5:     for (int i = 0; i < n; i++)
	j	.L2		#
.L3:
# eval/problem50//code.c:6:         out = (out * 2) % p;
	lw	a5,-24(s0)		# tmp82, out
	slliw	a5,a5,1	#, tmp80, tmp81
	sext.w	a5,a5	# _1, tmp80
# eval/problem50//code.c:6:         out = (out * 2) % p;
	mv	a4,a5	# tmp84, _1
	lw	a5,-40(s0)		# tmp87, p
	remw	a5,a4,a5	# tmp86, tmp85, tmp84
	sw	a5,-24(s0)	# tmp85, out
# eval/problem50//code.c:5:     for (int i = 0; i < n; i++)
	lw	a5,-20(s0)		# tmp90, i
	addiw	a5,a5,1	#, tmp88, tmp89
	sw	a5,-20(s0)	# tmp88, i
.L2:
# eval/problem50//code.c:5:     for (int i = 0; i < n; i++)
	lw	a5,-20(s0)		# tmp92, i
	mv	a4,a5	# tmp91, tmp92
	lw	a5,-36(s0)		# tmp94, n
	sext.w	a4,a4	# tmp95, tmp91
	sext.w	a5,a5	# tmp96, tmp93
	blt	a4,a5,.L3	#, tmp95, tmp96,
# eval/problem50//code.c:7:     return out;
	lw	a5,-24(s0)		# _7, out
# eval/problem50//code.c:8: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
