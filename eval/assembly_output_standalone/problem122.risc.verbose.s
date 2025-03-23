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
	sd	a0,-40(s0)	# lst, lst
	mv	a5,a1	# tmp86, size
	sw	a5,-44(s0)	# tmp87, size
# eval/problem122//code.c:4:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# eval/problem122//code.c:5:     for (int i = 0; i * 2 < size; i++)
	sw	zero,-20(s0)	#, i
# eval/problem122//code.c:5:     for (int i = 0; i * 2 < size; i++)
	j	.L2		#
.L4:
# eval/problem122//code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	lw	a5,-20(s0)		# tmp90, i
	slliw	a5,a5,1	#, tmp88, tmp89
	sext.w	a5,a5	# _1, tmp88
# eval/problem122//code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	slli	a5,a5,2	#, _3, _2
	ld	a4,-40(s0)		# tmp91, lst
	add	a5,a4,a5	# _3, _4, tmp91
	lw	a5,0(a5)		# _5, *_4
# eval/problem122//code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	mv	a4,a5	# tmp93, _5
	sraiw	a5,a4,31	#, tmp94, tmp93
	srliw	a5,a5,31	#, tmp95, tmp94
	addw	a4,a4,a5	# tmp95, tmp96, tmp93
	andi	a4,a4,1	#, tmp97, tmp96
	subw	a5,a4,a5	# tmp98, tmp97, tmp95
	sext.w	a5,a5	# _6, tmp98
# eval/problem122//code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	mv	a4,a5	# tmp99, _6
	li	a5,1		# tmp100,
	bne	a4,a5,.L3	#, tmp99, tmp100,
# eval/problem122//code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	lw	a5,-20(s0)		# tmp103, i
	slliw	a5,a5,1	#, tmp101, tmp102
	sext.w	a5,a5	# _7, tmp101
# eval/problem122//code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	slli	a5,a5,2	#, _9, _8
	ld	a4,-40(s0)		# tmp104, lst
	add	a5,a4,a5	# _9, _10, tmp104
	lw	a5,0(a5)		# _11, *_10
# eval/problem122//code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	lw	a4,-24(s0)		# tmp107, sum
	addw	a5,a4,a5	# _11, tmp105, tmp106
	sw	a5,-24(s0)	# tmp105, sum
.L3:
# eval/problem122//code.c:5:     for (int i = 0; i * 2 < size; i++)
	lw	a5,-20(s0)		# tmp110, i
	addiw	a5,a5,1	#, tmp108, tmp109
	sw	a5,-20(s0)	# tmp108, i
.L2:
# eval/problem122//code.c:5:     for (int i = 0; i * 2 < size; i++)
	lw	a5,-20(s0)		# tmp113, i
	slliw	a5,a5,1	#, tmp111, tmp112
	sext.w	a4,a5	# _12, tmp111
# eval/problem122//code.c:5:     for (int i = 0; i * 2 < size; i++)
	lw	a5,-44(s0)		# tmp115, size
	sext.w	a5,a5	# tmp116, tmp114
	bgt	a5,a4,.L4	#, tmp116, tmp117,
# eval/problem122//code.c:7:     return sum;
	lw	a5,-24(s0)		# _19, sum
# eval/problem122//code.c:8: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
