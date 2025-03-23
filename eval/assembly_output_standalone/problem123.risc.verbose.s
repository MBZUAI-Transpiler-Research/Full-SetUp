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
	sd	a0,-40(s0)	# arr, arr
	mv	a5,a1	# tmp86, k
	sw	a5,-44(s0)	# tmp87, k
# eval/problem123//code.c:4:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# eval/problem123//code.c:5:     for (int i = 0; i < k; i++)
	sw	zero,-20(s0)	#, i
# eval/problem123//code.c:5:     for (int i = 0; i < k; i++)
	j	.L2		#
.L4:
# eval/problem123//code.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp88, arr
	add	a5,a4,a5	# _2, _3, tmp88
	lw	a5,0(a5)		# _4, *_3
# eval/problem123//code.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	mv	a4,a5	# tmp89, _4
	li	a5,-99		# tmp90,
	blt	a4,a5,.L3	#, tmp89, tmp90,
# eval/problem123//code.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp91, arr
	add	a5,a4,a5	# _6, _7, tmp91
	lw	a5,0(a5)		# _8, *_7
# eval/problem123//code.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	mv	a4,a5	# tmp92, _8
	li	a5,99		# tmp93,
	bgt	a4,a5,.L3	#, tmp92, tmp93,
# eval/problem123//code.c:7:             sum += arr[i];
	lw	a5,-20(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a4,-40(s0)		# tmp94, arr
	add	a5,a4,a5	# _10, _11, tmp94
	lw	a5,0(a5)		# _12, *_11
# eval/problem123//code.c:7:             sum += arr[i];
	lw	a4,-24(s0)		# tmp97, sum
	addw	a5,a4,a5	# _12, tmp95, tmp96
	sw	a5,-24(s0)	# tmp95, sum
.L3:
# eval/problem123//code.c:5:     for (int i = 0; i < k; i++)
	lw	a5,-20(s0)		# tmp100, i
	addiw	a5,a5,1	#, tmp98, tmp99
	sw	a5,-20(s0)	# tmp98, i
.L2:
# eval/problem123//code.c:5:     for (int i = 0; i < k; i++)
	lw	a5,-20(s0)		# tmp102, i
	mv	a4,a5	# tmp101, tmp102
	lw	a5,-44(s0)		# tmp104, k
	sext.w	a4,a4	# tmp105, tmp101
	sext.w	a5,a5	# tmp106, tmp103
	blt	a4,a5,.L4	#, tmp105, tmp106,
# eval/problem123//code.c:8:     return sum;
	lw	a5,-24(s0)		# _19, sum
# eval/problem123//code.c:9: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
