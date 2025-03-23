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
	mv	a5,a0	# tmp78, a
	mv	a4,a1	# tmp80, b
	sw	a5,-20(s0)	# tmp79, a
	mv	a5,a4	# tmp81, tmp80
	sw	a5,-24(s0)	# tmp81, b
# eval/problem98//code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	lw	a5,-20(s0)		# tmp84, a
	sraiw	a5,a5,31	#, tmp82, tmp83
	lw	a4,-20(s0)		# tmp86, a
	xor	a4,a5,a4	# tmp85, tmp87, tmp82
	subw	a5,a4,a5	# tmp88, tmp87, tmp82
	sext.w	a5,a5	# _1, tmp88
# eval/problem98//code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	mv	a4,a5	# tmp90, _1
	li	a5,10		# tmp92,
	remw	a5,a4,a5	# tmp92, tmp91, tmp90
	sext.w	a4,a5	# _2, tmp91
# eval/problem98//code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	lw	a5,-24(s0)		# tmp95, b
	sraiw	a5,a5,31	#, tmp93, tmp94
	lw	a3,-24(s0)		# tmp97, b
	xor	a3,a5,a3	# tmp96, tmp98, tmp93
	subw	a5,a3,a5	# tmp99, tmp98, tmp93
	sext.w	a5,a5	# _3, tmp99
# eval/problem98//code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	mv	a3,a5	# tmp101, _3
	li	a5,10		# tmp103,
	remw	a5,a3,a5	# tmp103, tmp102, tmp101
	sext.w	a5,a5	# _4, tmp102
# eval/problem98//code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	mulw	a5,a4,a5	# tmp104, _2, _4
	sext.w	a5,a5	# _7, tmp104
# eval/problem98//code.c:6: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
