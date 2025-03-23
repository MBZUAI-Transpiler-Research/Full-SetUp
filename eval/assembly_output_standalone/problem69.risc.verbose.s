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
	addi	sp,sp,-64	#,,
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# arr, arr
	mv	a5,a1	# tmp88, length
	sd	a2,-56(s0)	# output, output
	sw	a5,-44(s0)	# tmp89, length
# eval/problem69//code.c:5:     int smallestEven = INT_MAX;
	li	a5,-2147483648		# tmp91,
	xori	a5,a5,-1	#, tmp90, tmp91
	sw	a5,-28(s0)	# tmp90, smallestEven
# eval/problem69//code.c:6:     int index = -1;
	li	a5,-1		# tmp92,
	sw	a5,-24(s0)	# tmp92, index
# eval/problem69//code.c:8:     for (int i = 0; i < length; ++i) {
	sw	zero,-20(s0)	#, i
# eval/problem69//code.c:8:     for (int i = 0; i < length; ++i) {
	j	.L2		#
.L5:
# eval/problem69//code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp93, arr
	add	a5,a4,a5	# _2, _3, tmp93
	lw	a5,0(a5)		# _4, *_3
# eval/problem69//code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	sext.w	a5,a5	# _5, _4
	andi	a5,a5,1	#, tmp95, tmp94
	sext.w	a5,a5	# _6, tmp95
# eval/problem69//code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	bne	a5,zero,.L3	#, _6,,
# eval/problem69//code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	lw	a5,-20(s0)		# _7, i
	slli	a5,a5,2	#, _8, _7
	ld	a4,-40(s0)		# tmp96, arr
	add	a5,a4,a5	# _8, _9, tmp96
	lw	a4,0(a5)		# _10, *_9
# eval/problem69//code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	lw	a5,-28(s0)		# tmp98, smallestEven
	sext.w	a5,a5	# tmp99, tmp97
	bgt	a5,a4,.L4	#, tmp99, tmp100,
# eval/problem69//code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	lw	a5,-24(s0)		# tmp102, index
	sext.w	a4,a5	# tmp103, tmp101
	li	a5,-1		# tmp104,
	bne	a4,a5,.L3	#, tmp103, tmp104,
.L4:
# eval/problem69//code.c:10:             smallestEven = arr[i];
	lw	a5,-20(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-40(s0)		# tmp105, arr
	add	a5,a4,a5	# _12, _13, tmp105
# eval/problem69//code.c:10:             smallestEven = arr[i];
	lw	a5,0(a5)		# tmp106, *_13
	sw	a5,-28(s0)	# tmp106, smallestEven
# eval/problem69//code.c:11:             index = i;
	lw	a5,-20(s0)		# tmp107, i
	sw	a5,-24(s0)	# tmp107, index
.L3:
# eval/problem69//code.c:8:     for (int i = 0; i < length; ++i) {
	lw	a5,-20(s0)		# tmp110, i
	addiw	a5,a5,1	#, tmp108, tmp109
	sw	a5,-20(s0)	# tmp108, i
.L2:
# eval/problem69//code.c:8:     for (int i = 0; i < length; ++i) {
	lw	a5,-20(s0)		# tmp112, i
	mv	a4,a5	# tmp111, tmp112
	lw	a5,-44(s0)		# tmp114, length
	sext.w	a4,a4	# tmp115, tmp111
	sext.w	a5,a5	# tmp116, tmp113
	blt	a4,a5,.L5	#, tmp115, tmp116,
# eval/problem69//code.c:15:     if (index == -1) {
	lw	a5,-24(s0)		# tmp118, index
	sext.w	a4,a5	# tmp119, tmp117
	li	a5,-1		# tmp120,
	bne	a4,a5,.L6	#, tmp119, tmp120,
# eval/problem69//code.c:16:         return NULL;
	li	a5,0		# _20,
	j	.L7		#
.L6:
# eval/problem69//code.c:19:     output[0] = smallestEven;
	ld	a5,-56(s0)		# tmp121, output
	lw	a4,-28(s0)		# tmp122, smallestEven
	sw	a4,0(a5)	# tmp122, *output_27(D)
# eval/problem69//code.c:20:     output[1] = index;
	ld	a5,-56(s0)		# tmp123, output
	addi	a5,a5,4	#, _14, tmp123
# eval/problem69//code.c:20:     output[1] = index;
	lw	a4,-24(s0)		# tmp124, index
	sw	a4,0(a5)	# tmp124, *_14
# eval/problem69//code.c:21:     return output;
	ld	a5,-56(s0)		# _20, output
.L7:
# eval/problem69//code.c:22: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
