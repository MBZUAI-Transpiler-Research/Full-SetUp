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
	sd	a0,-40(s0)	# l, l
	mv	a5,a1	# tmp78, size
	mv	a4,a2	# tmp80, t
	sw	a5,-44(s0)	# tmp79, size
	mv	a5,a4	# tmp81, tmp80
	sw	a5,-48(s0)	# tmp81, t
# eval/problem53//code.c:5:     for (int i = 0; i < size; i++)
	sw	zero,-20(s0)	#, i
# eval/problem53//code.c:5:     for (int i = 0; i < size; i++)
	j	.L2		#
.L5:
# eval/problem53//code.c:6:         if (l[i] >= t) return false;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp82, l
	add	a5,a4,a5	# _2, _3, tmp82
	lw	a4,0(a5)		# _4, *_3
# eval/problem53//code.c:6:         if (l[i] >= t) return false;
	lw	a5,-48(s0)		# tmp84, t
	sext.w	a5,a5	# tmp85, tmp83
	bgt	a5,a4,.L3	#, tmp85, tmp86,
# eval/problem53//code.c:6:         if (l[i] >= t) return false;
	li	a5,0		# _6,
	j	.L4		#
.L3:
# eval/problem53//code.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-20(s0)		# tmp89, i
	addiw	a5,a5,1	#, tmp87, tmp88
	sw	a5,-20(s0)	# tmp87, i
.L2:
# eval/problem53//code.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-20(s0)		# tmp91, i
	mv	a4,a5	# tmp90, tmp91
	lw	a5,-44(s0)		# tmp93, size
	sext.w	a4,a4	# tmp94, tmp90
	sext.w	a5,a5	# tmp95, tmp92
	blt	a4,a5,.L5	#, tmp94, tmp95,
# eval/problem53//code.c:7:     return true;
	li	a5,1		# _6,
.L4:
# eval/problem53//code.c:8: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
