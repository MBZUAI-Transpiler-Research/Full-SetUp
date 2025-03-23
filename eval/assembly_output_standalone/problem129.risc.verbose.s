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
	mv	a5,a1	# tmp87, arr_size
	sw	a5,-44(s0)	# tmp88, arr_size
# eval/problem129//code.c:5:     if (arr_size == 0) return -32768;
	lw	a5,-44(s0)		# tmp90, arr_size
	sext.w	a5,a5	# tmp91, tmp89
	bne	a5,zero,.L2	#, tmp91,,
# eval/problem129//code.c:5:     if (arr_size == 0) return -32768;
	li	a5,-32768		# _19,
	j	.L3		#
.L2:
# eval/problem129//code.c:6:     int sum = 0, prods = 1, i;
	sw	zero,-28(s0)	#, sum
# eval/problem129//code.c:6:     int sum = 0, prods = 1, i;
	li	a5,1		# tmp92,
	sw	a5,-24(s0)	# tmp92, prods
# eval/problem129//code.c:7:     for (i = 0; i < arr_size; i++) {
	sw	zero,-20(s0)	#, i
# eval/problem129//code.c:7:     for (i = 0; i < arr_size; i++) {
	j	.L4		#
.L7:
# eval/problem129//code.c:8:         sum += abs(arr[i]);
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp93, arr
	add	a5,a4,a5	# _2, _3, tmp93
	lw	a4,0(a5)		# _4, *_3
# eval/problem129//code.c:8:         sum += abs(arr[i]);
	sraiw	a5,a4,31	#, tmp94, _4
	xor	a4,a4,a5	# tmp94, tmp95, _4
	subw	a5,a4,a5	# tmp96, tmp95, tmp94
	sext.w	a5,a5	# _5, tmp96
# eval/problem129//code.c:8:         sum += abs(arr[i]);
	lw	a4,-28(s0)		# tmp99, sum
	addw	a5,a4,a5	# _5, tmp97, tmp98
	sw	a5,-28(s0)	# tmp97, sum
# eval/problem129//code.c:9:         if (arr[i] == 0) prods = 0;
	lw	a5,-20(s0)		# _6, i
	slli	a5,a5,2	#, _7, _6
	ld	a4,-40(s0)		# tmp100, arr
	add	a5,a4,a5	# _7, _8, tmp100
	lw	a5,0(a5)		# _9, *_8
# eval/problem129//code.c:9:         if (arr[i] == 0) prods = 0;
	bne	a5,zero,.L5	#, _9,,
# eval/problem129//code.c:9:         if (arr[i] == 0) prods = 0;
	sw	zero,-24(s0)	#, prods
.L5:
# eval/problem129//code.c:10:         if (arr[i] < 0) prods = -prods;
	lw	a5,-20(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a4,-40(s0)		# tmp101, arr
	add	a5,a4,a5	# _11, _12, tmp101
	lw	a5,0(a5)		# _13, *_12
# eval/problem129//code.c:10:         if (arr[i] < 0) prods = -prods;
	bge	a5,zero,.L6	#, tmp102,,
# eval/problem129//code.c:10:         if (arr[i] < 0) prods = -prods;
	lw	a5,-24(s0)		# tmp105, prods
	negw	a5,a5	# tmp103, tmp104
	sw	a5,-24(s0)	# tmp103, prods
.L6:
# eval/problem129//code.c:7:     for (i = 0; i < arr_size; i++) {
	lw	a5,-20(s0)		# tmp108, i
	addiw	a5,a5,1	#, tmp106, tmp107
	sw	a5,-20(s0)	# tmp106, i
.L4:
# eval/problem129//code.c:7:     for (i = 0; i < arr_size; i++) {
	lw	a5,-20(s0)		# tmp110, i
	mv	a4,a5	# tmp109, tmp110
	lw	a5,-44(s0)		# tmp112, arr_size
	sext.w	a4,a4	# tmp113, tmp109
	sext.w	a5,a5	# tmp114, tmp111
	blt	a4,a5,.L7	#, tmp113, tmp114,
# eval/problem129//code.c:12:     return sum * prods;
	lw	a5,-28(s0)		# tmp117, sum
	mv	a4,a5	# tmp116, tmp117
	lw	a5,-24(s0)		# tmp119, prods
	mulw	a5,a4,a5	# tmp115, tmp116, tmp118
	sext.w	a5,a5	# _19, tmp115
.L3:
# eval/problem129//code.c:13: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
