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
	mv	a5,a1	# tmp83, size
	sw	a5,-44(s0)	# tmp84, size
# eval/problem44//code.c:5:     for (int i = 0; i < size; i++)
	sw	zero,-24(s0)	#, i
# eval/problem44//code.c:5:     for (int i = 0; i < size; i++)
	j	.L2		#
.L7:
# eval/problem44//code.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-24(s0)		# tmp87, i
	addiw	a5,a5,1	#, tmp85, tmp86
	sw	a5,-20(s0)	# tmp85, j
# eval/problem44//code.c:6:         for (int j = i + 1; j < size; j++)
	j	.L3		#
.L6:
# eval/problem44//code.c:7:             if (l[i] + l[j] == 0) return true;
	lw	a5,-24(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp88, l
	add	a5,a4,a5	# _2, _3, tmp88
	lw	a4,0(a5)		# _4, *_3
# eval/problem44//code.c:7:             if (l[i] + l[j] == 0) return true;
	lw	a5,-20(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	ld	a3,-40(s0)		# tmp89, l
	add	a5,a3,a5	# _6, _7, tmp89
	lw	a5,0(a5)		# _8, *_7
# eval/problem44//code.c:7:             if (l[i] + l[j] == 0) return true;
	addw	a5,a4,a5	# _8, tmp90, _4
	sext.w	a5,a5	# _9, tmp90
# eval/problem44//code.c:7:             if (l[i] + l[j] == 0) return true;
	bne	a5,zero,.L4	#, _9,,
# eval/problem44//code.c:7:             if (l[i] + l[j] == 0) return true;
	li	a5,1		# _12,
	j	.L5		#
.L4:
# eval/problem44//code.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-20(s0)		# tmp93, j
	addiw	a5,a5,1	#, tmp91, tmp92
	sw	a5,-20(s0)	# tmp91, j
.L3:
# eval/problem44//code.c:6:         for (int j = i + 1; j < size; j++)
	lw	a5,-20(s0)		# tmp95, j
	mv	a4,a5	# tmp94, tmp95
	lw	a5,-44(s0)		# tmp97, size
	sext.w	a4,a4	# tmp98, tmp94
	sext.w	a5,a5	# tmp99, tmp96
	blt	a4,a5,.L6	#, tmp98, tmp99,
# eval/problem44//code.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp102, i
	addiw	a5,a5,1	#, tmp100, tmp101
	sw	a5,-24(s0)	# tmp100, i
.L2:
# eval/problem44//code.c:5:     for (int i = 0; i < size; i++)
	lw	a5,-24(s0)		# tmp104, i
	mv	a4,a5	# tmp103, tmp104
	lw	a5,-44(s0)		# tmp106, size
	sext.w	a4,a4	# tmp107, tmp103
	sext.w	a5,a5	# tmp108, tmp105
	blt	a4,a5,.L7	#, tmp107, tmp108,
# eval/problem44//code.c:8:     return false;
	li	a5,0		# _12,
.L5:
# eval/problem44//code.c:9: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
