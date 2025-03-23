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
	mv	a5,a1	# tmp88, size
	sw	a5,-44(s0)	# tmp89, size
# eval/problem41//code.c:5:     for (int i = 0; i < size; i++)
	sw	zero,-28(s0)	#, i
# eval/problem41//code.c:5:     for (int i = 0; i < size; i++)
	j	.L2		#
.L9:
# eval/problem41//code.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-28(s0)		# tmp92, i
	addiw	a5,a5,1	#, tmp90, tmp91
	sw	a5,-24(s0)	# tmp90, j
# eval/problem41//code.c:6:         for (int j = i + 1; j < size; j++)
	j	.L3		#
.L8:
# eval/problem41//code.c:7:             for (int k = j + 1; k < size; k++)
	lw	a5,-24(s0)		# tmp95, j
	addiw	a5,a5,1	#, tmp93, tmp94
	sw	a5,-20(s0)	# tmp93, k
# eval/problem41//code.c:7:             for (int k = j + 1; k < size; k++)
	j	.L4		#
.L7:
# eval/problem41//code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp96, l
	add	a5,a4,a5	# _2, _3, tmp96
	lw	a4,0(a5)		# _4, *_3
# eval/problem41//code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	lw	a5,-24(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	ld	a3,-40(s0)		# tmp97, l
	add	a5,a3,a5	# _6, _7, tmp97
	lw	a5,0(a5)		# _8, *_7
# eval/problem41//code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	addw	a5,a4,a5	# _8, tmp98, _4
	sext.w	a4,a5	# _9, tmp98
# eval/problem41//code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	lw	a5,-20(s0)		# _10, k
	slli	a5,a5,2	#, _11, _10
	ld	a3,-40(s0)		# tmp99, l
	add	a5,a3,a5	# _11, _12, tmp99
	lw	a5,0(a5)		# _13, *_12
# eval/problem41//code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	addw	a5,a4,a5	# _13, tmp100, _9
	sext.w	a5,a5	# _14, tmp100
# eval/problem41//code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	bne	a5,zero,.L5	#, _14,,
# eval/problem41//code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	li	a5,1		# _18,
	j	.L6		#
.L5:
# eval/problem41//code.c:7:             for (int k = j + 1; k < size; k++)
	lw	a5,-20(s0)		# tmp103, k
	addiw	a5,a5,1	#, tmp101, tmp102
	sw	a5,-20(s0)	# tmp101, k
.L4:
# eval/problem41//code.c:7:             for (int k = j + 1; k < size; k++)
	lw	a5,-20(s0)		# tmp105, k
	mv	a4,a5	# tmp104, tmp105
	lw	a5,-44(s0)		# tmp107, size
	sext.w	a4,a4	# tmp108, tmp104
	sext.w	a5,a5	# tmp109, tmp106
	blt	a4,a5,.L7	#, tmp108, tmp109,
# eval/problem41//code.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-24(s0)		# tmp112, j
	addiw	a5,a5,1	#, tmp110, tmp111
	sw	a5,-24(s0)	# tmp110, j
.L3:
# eval/problem41//code.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-24(s0)		# tmp114, j
	mv	a4,a5	# tmp113, tmp114
	lw	a5,-44(s0)		# tmp116, size
	sext.w	a4,a4	# tmp117, tmp113
	sext.w	a5,a5	# tmp118, tmp115
	blt	a4,a5,.L8	#, tmp117, tmp118,
# eval/problem41//code.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-28(s0)		# tmp121, i
	addiw	a5,a5,1	#, tmp119, tmp120
	sw	a5,-28(s0)	# tmp119, i
.L2:
# eval/problem41//code.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-28(s0)		# tmp123, i
	mv	a4,a5	# tmp122, tmp123
	lw	a5,-44(s0)		# tmp125, size
	sext.w	a4,a4	# tmp126, tmp122
	sext.w	a5,a5	# tmp127, tmp124
	blt	a4,a5,.L9	#, tmp126, tmp127,
# eval/problem41//code.c:9:     return false;
	li	a5,0		# _18,
.L6:
# eval/problem41//code.c:10: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
