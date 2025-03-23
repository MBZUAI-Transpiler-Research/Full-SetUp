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
	mv	a5,a1	# tmp83, size
	sw	a5,-44(s0)	# tmp84, size
# eval/problem136//code.c:4:     int max = -1;
	li	a5,-1		# tmp85,
	sw	a5,-24(s0)	# tmp85, max
# eval/problem136//code.c:5:     for (int i = 1; i < size; ++i) {
	li	a5,1		# tmp86,
	sw	a5,-20(s0)	# tmp86, i
# eval/problem136//code.c:5:     for (int i = 1; i < size; ++i) {
	j	.L2		#
.L4:
# eval/problem136//code.c:6:         if (arr[i] < arr[i - 1]) max = i;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp87, arr
	add	a5,a4,a5	# _2, _3, tmp87
	lw	a3,0(a5)		# _4, *_3
# eval/problem136//code.c:6:         if (arr[i] < arr[i - 1]) max = i;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	addi	a5,a5,-4	#, _7, _6
	ld	a4,-40(s0)		# tmp88, arr
	add	a5,a4,a5	# _7, _8, tmp88
	lw	a5,0(a5)		# _9, *_8
# eval/problem136//code.c:6:         if (arr[i] < arr[i - 1]) max = i;
	mv	a4,a3	# tmp89, _4
	bge	a4,a5,.L3	#, tmp89, tmp90,
# eval/problem136//code.c:6:         if (arr[i] < arr[i - 1]) max = i;
	lw	a5,-20(s0)		# tmp91, i
	sw	a5,-24(s0)	# tmp91, max
.L3:
# eval/problem136//code.c:5:     for (int i = 1; i < size; ++i) {
	lw	a5,-20(s0)		# tmp94, i
	addiw	a5,a5,1	#, tmp92, tmp93
	sw	a5,-20(s0)	# tmp92, i
.L2:
# eval/problem136//code.c:5:     for (int i = 1; i < size; ++i) {
	lw	a5,-20(s0)		# tmp96, i
	mv	a4,a5	# tmp95, tmp96
	lw	a5,-44(s0)		# tmp98, size
	sext.w	a4,a4	# tmp99, tmp95
	sext.w	a5,a5	# tmp100, tmp97
	blt	a4,a5,.L4	#, tmp99, tmp100,
# eval/problem136//code.c:8:     return max;
	lw	a5,-24(s0)		# _16, max
# eval/problem136//code.c:9: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
