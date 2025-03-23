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
	mv	a5,a1	# tmp89, size
	sw	a5,-44(s0)	# tmp90, size
# eval/problem110//code.c:5:     int num = 0;
	sw	zero,-24(s0)	#, num
# eval/problem110//code.c:6:     if (size == 0) return true;
	lw	a5,-44(s0)		# tmp92, size
	sext.w	a5,a5	# tmp93, tmp91
	bne	a5,zero,.L2	#, tmp93,,
# eval/problem110//code.c:6:     if (size == 0) return true;
	li	a5,1		# _20,
	j	.L3		#
.L2:
# eval/problem110//code.c:7:     for (int i = 1; i < size; i++)
	li	a5,1		# tmp94,
	sw	a5,-20(s0)	# tmp94, i
# eval/problem110//code.c:7:     for (int i = 1; i < size; i++)
	j	.L4		#
.L6:
# eval/problem110//code.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp95, arr
	add	a5,a4,a5	# _2, _3, tmp95
	lw	a3,0(a5)		# _4, *_3
# eval/problem110//code.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	addi	a5,a5,-4	#, _7, _6
	ld	a4,-40(s0)		# tmp96, arr
	add	a5,a4,a5	# _7, _8, tmp96
	lw	a5,0(a5)		# _9, *_8
# eval/problem110//code.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	mv	a4,a3	# tmp97, _4
	bge	a4,a5,.L5	#, tmp97, tmp98,
# eval/problem110//code.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	lw	a5,-24(s0)		# tmp101, num
	addiw	a5,a5,1	#, tmp99, tmp100
	sw	a5,-24(s0)	# tmp99, num
.L5:
# eval/problem110//code.c:7:     for (int i = 1; i < size; i++)
	lw	a5,-20(s0)		# tmp104, i
	addiw	a5,a5,1	#, tmp102, tmp103
	sw	a5,-20(s0)	# tmp102, i
.L4:
# eval/problem110//code.c:7:     for (int i = 1; i < size; i++)
	lw	a5,-20(s0)		# tmp106, i
	mv	a4,a5	# tmp105, tmp106
	lw	a5,-44(s0)		# tmp108, size
	sext.w	a4,a4	# tmp109, tmp105
	sext.w	a5,a5	# tmp110, tmp107
	blt	a4,a5,.L6	#, tmp109, tmp110,
# eval/problem110//code.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	lw	a5,-44(s0)		# _10, size
	slli	a5,a5,2	#, _11, _10
	addi	a5,a5,-4	#, _12, _11
	ld	a4,-40(s0)		# tmp111, arr
	add	a5,a4,a5	# _12, _13, tmp111
	lw	a4,0(a5)		# _14, *_13
# eval/problem110//code.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	ld	a5,-40(s0)		# tmp112, arr
	lw	a5,0(a5)		# _15, *arr_24(D)
# eval/problem110//code.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	ble	a4,a5,.L7	#, tmp113, tmp114,
# eval/problem110//code.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	lw	a5,-24(s0)		# tmp117, num
	addiw	a5,a5,1	#, tmp115, tmp116
	sw	a5,-24(s0)	# tmp115, num
.L7:
# eval/problem110//code.c:10:     if (num < 2) return true;
	lw	a5,-24(s0)		# tmp119, num
	sext.w	a4,a5	# tmp120, tmp118
	li	a5,1		# tmp121,
	bgt	a4,a5,.L8	#, tmp120, tmp121,
# eval/problem110//code.c:10:     if (num < 2) return true;
	li	a5,1		# _20,
	j	.L3		#
.L8:
# eval/problem110//code.c:11:     return false;
	li	a5,0		# _20,
.L3:
# eval/problem110//code.c:12: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
