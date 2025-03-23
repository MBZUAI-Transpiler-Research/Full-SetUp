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
	mv	a5,a1	# tmp108, arr_size
	mv	a4,a2	# tmp110, k
	sd	a3,-56(s0)	# out, out
	sw	a5,-44(s0)	# tmp109, arr_size
	mv	a5,a4	# tmp111, tmp110
	sw	a5,-48(s0)	# tmp111, k
# eval/problem121//code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	sw	zero,-32(s0)	#, i
# eval/problem121//code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	j	.L2		#
.L6:
# eval/problem121//code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	sw	zero,-28(s0)	#, j
# eval/problem121//code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	j	.L3		#
.L5:
# eval/problem121//code.c:7:             if (arr[j] > arr[j + 1]) {
	lw	a5,-28(s0)		# _1, j
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp112, arr
	add	a5,a4,a5	# _2, _3, tmp112
	lw	a3,0(a5)		# _4, *_3
# eval/problem121//code.c:7:             if (arr[j] > arr[j + 1]) {
	lw	a5,-28(s0)		# _5, j
	addi	a5,a5,1	#, _6, _5
	slli	a5,a5,2	#, _7, _6
	ld	a4,-40(s0)		# tmp113, arr
	add	a5,a4,a5	# _7, _8, tmp113
	lw	a5,0(a5)		# _9, *_8
# eval/problem121//code.c:7:             if (arr[j] > arr[j + 1]) {
	mv	a4,a3	# tmp114, _4
	ble	a4,a5,.L4	#, tmp114, tmp115,
# eval/problem121//code.c:8:                 int temp = arr[j];
	lw	a5,-28(s0)		# _10, j
	slli	a5,a5,2	#, _11, _10
	ld	a4,-40(s0)		# tmp116, arr
	add	a5,a4,a5	# _11, _12, tmp116
# eval/problem121//code.c:8:                 int temp = arr[j];
	lw	a5,0(a5)		# tmp117, *_12
	sw	a5,-20(s0)	# tmp117, temp
# eval/problem121//code.c:9:                 arr[j] = arr[j + 1];
	lw	a5,-28(s0)		# _13, j
	addi	a5,a5,1	#, _14, _13
	slli	a5,a5,2	#, _15, _14
	ld	a4,-40(s0)		# tmp118, arr
	add	a4,a4,a5	# _15, _16, tmp118
# eval/problem121//code.c:9:                 arr[j] = arr[j + 1];
	lw	a5,-28(s0)		# _17, j
	slli	a5,a5,2	#, _18, _17
	ld	a3,-40(s0)		# tmp119, arr
	add	a5,a3,a5	# _18, _19, tmp119
# eval/problem121//code.c:9:                 arr[j] = arr[j + 1];
	lw	a4,0(a4)		# _20, *_16
# eval/problem121//code.c:9:                 arr[j] = arr[j + 1];
	sw	a4,0(a5)	# _20, *_19
# eval/problem121//code.c:10:                 arr[j + 1] = temp;
	lw	a5,-28(s0)		# _21, j
	addi	a5,a5,1	#, _22, _21
	slli	a5,a5,2	#, _23, _22
	ld	a4,-40(s0)		# tmp120, arr
	add	a5,a4,a5	# _23, _24, tmp120
# eval/problem121//code.c:10:                 arr[j + 1] = temp;
	lw	a4,-20(s0)		# tmp121, temp
	sw	a4,0(a5)	# tmp121, *_24
.L4:
# eval/problem121//code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	lw	a5,-28(s0)		# tmp124, j
	addiw	a5,a5,1	#, tmp122, tmp123
	sw	a5,-28(s0)	# tmp122, j
.L3:
# eval/problem121//code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	lw	a5,-44(s0)		# tmp127, arr_size
	mv	a4,a5	# tmp126, tmp127
	lw	a5,-32(s0)		# tmp129, i
	subw	a5,a4,a5	# tmp125, tmp126, tmp128
	sext.w	a5,a5	# _25, tmp125
# eval/problem121//code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	addiw	a5,a5,-1	#, tmp130, _25
	sext.w	a4,a5	# _26, tmp130
# eval/problem121//code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	lw	a5,-28(s0)		# tmp132, j
	sext.w	a5,a5	# tmp133, tmp131
	blt	a5,a4,.L5	#, tmp133, tmp134,
# eval/problem121//code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	lw	a5,-32(s0)		# tmp137, i
	addiw	a5,a5,1	#, tmp135, tmp136
	sw	a5,-32(s0)	# tmp135, i
.L2:
# eval/problem121//code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	lw	a5,-44(s0)		# tmp140, arr_size
	addiw	a5,a5,-1	#, tmp138, tmp139
	sext.w	a4,a5	# _27, tmp138
# eval/problem121//code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	lw	a5,-32(s0)		# tmp142, i
	sext.w	a5,a5	# tmp143, tmp141
	blt	a5,a4,.L6	#, tmp143, tmp144,
# eval/problem121//code.c:15:     for (int i = 0; i < k; i++) {
	sw	zero,-24(s0)	#, i
# eval/problem121//code.c:15:     for (int i = 0; i < k; i++) {
	j	.L7		#
.L8:
# eval/problem121//code.c:16:         out[i] = arr[arr_size - k + i];
	lw	a5,-44(s0)		# tmp147, arr_size
	mv	a4,a5	# tmp146, tmp147
	lw	a5,-48(s0)		# tmp149, k
	subw	a5,a4,a5	# tmp145, tmp146, tmp148
	sext.w	a5,a5	# _28, tmp145
# eval/problem121//code.c:16:         out[i] = arr[arr_size - k + i];
	lw	a4,-24(s0)		# tmp152, i
	addw	a5,a4,a5	# _28, tmp150, tmp151
	sext.w	a5,a5	# _29, tmp150
# eval/problem121//code.c:16:         out[i] = arr[arr_size - k + i];
	slli	a5,a5,2	#, _31, _30
	ld	a4,-40(s0)		# tmp153, arr
	add	a4,a4,a5	# _31, _32, tmp153
# eval/problem121//code.c:16:         out[i] = arr[arr_size - k + i];
	lw	a5,-24(s0)		# _33, i
	slli	a5,a5,2	#, _34, _33
	ld	a3,-56(s0)		# tmp154, out
	add	a5,a3,a5	# _34, _35, tmp154
# eval/problem121//code.c:16:         out[i] = arr[arr_size - k + i];
	lw	a4,0(a4)		# _36, *_32
# eval/problem121//code.c:16:         out[i] = arr[arr_size - k + i];
	sw	a4,0(a5)	# _36, *_35
# eval/problem121//code.c:15:     for (int i = 0; i < k; i++) {
	lw	a5,-24(s0)		# tmp157, i
	addiw	a5,a5,1	#, tmp155, tmp156
	sw	a5,-24(s0)	# tmp155, i
.L7:
# eval/problem121//code.c:15:     for (int i = 0; i < k; i++) {
	lw	a5,-24(s0)		# tmp159, i
	mv	a4,a5	# tmp158, tmp159
	lw	a5,-48(s0)		# tmp161, k
	sext.w	a4,a4	# tmp162, tmp158
	sext.w	a5,a5	# tmp163, tmp160
	blt	a4,a5,.L8	#, tmp162, tmp163,
# eval/problem121//code.c:18: }
	nop	
	nop	
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
