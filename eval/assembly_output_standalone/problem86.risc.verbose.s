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
	mv	a5,a1	# tmp90, size
	sw	a5,-44(s0)	# tmp91, size
# eval/problem86//code.c:4:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	sw	zero,-20(s0)	#, i
# eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	j	.L2		#
.L4:
# eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	lw	a5,-20(s0)		# tmp94, i
	slliw	a5,a5,1	#, tmp92, tmp93
	sext.w	a5,a5	# _1, tmp92
# eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	addi	a5,a5,1	#, _3, _2
	slli	a5,a5,2	#, _4, _3
	ld	a4,-40(s0)		# tmp95, lst
	add	a5,a4,a5	# _4, _5, tmp95
	lw	a5,0(a5)		# _6, *_5
# eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	sext.w	a5,a5	# _7, _6
	andi	a5,a5,1	#, tmp97, tmp96
	sext.w	a5,a5	# _8, tmp97
# eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	bne	a5,zero,.L3	#, _8,,
# eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	lw	a5,-20(s0)		# tmp100, i
	slliw	a5,a5,1	#, tmp98, tmp99
	sext.w	a5,a5	# _9, tmp98
# eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	addi	a5,a5,1	#, _11, _10
	slli	a5,a5,2	#, _12, _11
	ld	a4,-40(s0)		# tmp101, lst
	add	a5,a4,a5	# _12, _13, tmp101
	lw	a5,0(a5)		# _14, *_13
# eval/problem86//code.c:6:         if (lst[i * 2 + 1] % 2 == 0) sum += lst[i * 2 + 1];
	lw	a4,-24(s0)		# tmp104, sum
	addw	a5,a4,a5	# _14, tmp102, tmp103
	sw	a5,-24(s0)	# tmp102, sum
.L3:
# eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	lw	a5,-20(s0)		# tmp107, i
	addiw	a5,a5,1	#, tmp105, tmp106
	sw	a5,-20(s0)	# tmp105, i
.L2:
# eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	lw	a5,-20(s0)		# tmp110, i
	slliw	a5,a5,1	#, tmp108, tmp109
	sext.w	a5,a5	# _15, tmp108
# eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	addiw	a5,a5,1	#, tmp111, _15
	sext.w	a4,a5	# _16, tmp111
# eval/problem86//code.c:5:     for (int i = 0; i * 2 + 1 < size; i++)
	lw	a5,-44(s0)		# tmp113, size
	sext.w	a5,a5	# tmp114, tmp112
	bgt	a5,a4,.L4	#, tmp114, tmp115,
# eval/problem86//code.c:7:     return sum;
	lw	a5,-24(s0)		# _23, sum
# eval/problem86//code.c:8: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
