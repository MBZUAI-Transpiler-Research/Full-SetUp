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
	sd	a0,-56(s0)	# arr, arr
	mv	a5,a1	# tmp101, size
	sw	a5,-60(s0)	# tmp102, size
# eval/problem117//code.c:6:     for (int i = 0; i < size; i++) {
	sw	zero,-28(s0)	#, i
# eval/problem117//code.c:6:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L11:
# eval/problem117//code.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-28(s0)		# tmp105, i
	addiw	a5,a5,1	#, tmp103, tmp104
	sw	a5,-24(s0)	# tmp103, j
# eval/problem117//code.c:7:         for (int j = i + 1; j < size; j++) {
	j	.L3		#
.L10:
# eval/problem117//code.c:8:             count_ones = 0;
	sw	zero,-40(s0)	#, count_ones
# eval/problem117//code.c:9:             x = arr[i];
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-56(s0)		# tmp106, arr
	add	a5,a4,a5	# _2, _3, tmp106
# eval/problem117//code.c:9:             x = arr[i];
	lw	a5,0(a5)		# tmp107, *_3
	sw	a5,-36(s0)	# tmp107, x
# eval/problem117//code.c:10:             y = arr[j];
	lw	a5,-24(s0)		# _4, j
	slli	a5,a5,2	#, _5, _4
	ld	a4,-56(s0)		# tmp108, arr
	add	a5,a4,a5	# _5, _6, tmp108
# eval/problem117//code.c:10:             y = arr[j];
	lw	a5,0(a5)		# tmp109, *_6
	sw	a5,-32(s0)	# tmp109, y
# eval/problem117//code.c:11:             while (x > 0) {
	j	.L4		#
.L5:
# eval/problem117//code.c:12:                 count_ones += x & 1;
	lw	a5,-36(s0)		# tmp111, x
	andi	a5,a5,1	#, tmp112, tmp110
	sext.w	a5,a5	# _7, tmp112
# eval/problem117//code.c:12:                 count_ones += x & 1;
	lw	a4,-40(s0)		# tmp115, count_ones
	addw	a5,a4,a5	# _7, tmp113, tmp114
	sw	a5,-40(s0)	# tmp113, count_ones
# eval/problem117//code.c:13:                 x >>= 1;
	lw	a5,-36(s0)		# tmp118, x
	sraiw	a5,a5,1	#, tmp116, tmp117
	sw	a5,-36(s0)	# tmp116, x
.L4:
# eval/problem117//code.c:11:             while (x > 0) {
	lw	a5,-36(s0)		# tmp120, x
	sext.w	a5,a5	# tmp121, tmp119
	bgt	a5,zero,.L5	#, tmp121,,
# eval/problem117//code.c:15:             x = count_ones;
	lw	a5,-40(s0)		# tmp122, count_ones
	sw	a5,-36(s0)	# tmp122, x
# eval/problem117//code.c:16:             count_ones = 0;
	sw	zero,-40(s0)	#, count_ones
# eval/problem117//code.c:17:             while (y > 0) {
	j	.L6		#
.L7:
# eval/problem117//code.c:18:                 count_ones += y & 1;
	lw	a5,-32(s0)		# tmp124, y
	andi	a5,a5,1	#, tmp125, tmp123
	sext.w	a5,a5	# _8, tmp125
# eval/problem117//code.c:18:                 count_ones += y & 1;
	lw	a4,-40(s0)		# tmp128, count_ones
	addw	a5,a4,a5	# _8, tmp126, tmp127
	sw	a5,-40(s0)	# tmp126, count_ones
# eval/problem117//code.c:19:                 y >>= 1;
	lw	a5,-32(s0)		# tmp131, y
	sraiw	a5,a5,1	#, tmp129, tmp130
	sw	a5,-32(s0)	# tmp129, y
.L6:
# eval/problem117//code.c:17:             while (y > 0) {
	lw	a5,-32(s0)		# tmp133, y
	sext.w	a5,a5	# tmp134, tmp132
	bgt	a5,zero,.L7	#, tmp134,,
# eval/problem117//code.c:21:             y = count_ones;
	lw	a5,-40(s0)		# tmp135, count_ones
	sw	a5,-32(s0)	# tmp135, y
# eval/problem117//code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	lw	a5,-32(s0)		# tmp137, y
	mv	a4,a5	# tmp136, tmp137
	lw	a5,-36(s0)		# tmp139, x
	sext.w	a4,a4	# tmp140, tmp136
	sext.w	a5,a5	# tmp141, tmp138
	blt	a4,a5,.L8	#, tmp140, tmp141,
# eval/problem117//code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	lw	a5,-32(s0)		# tmp143, y
	mv	a4,a5	# tmp142, tmp143
	lw	a5,-36(s0)		# tmp145, x
	sext.w	a4,a4	# tmp146, tmp142
	sext.w	a5,a5	# tmp147, tmp144
	bne	a4,a5,.L9	#, tmp146, tmp147,
# eval/problem117//code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	lw	a5,-24(s0)		# _9, j
	slli	a5,a5,2	#, _10, _9
	ld	a4,-56(s0)		# tmp148, arr
	add	a5,a4,a5	# _10, _11, tmp148
	lw	a3,0(a5)		# _12, *_11
# eval/problem117//code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	lw	a5,-28(s0)		# _13, i
	slli	a5,a5,2	#, _14, _13
	ld	a4,-56(s0)		# tmp149, arr
	add	a5,a4,a5	# _14, _15, tmp149
	lw	a5,0(a5)		# _16, *_15
# eval/problem117//code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	mv	a4,a3	# tmp150, _12
	bge	a4,a5,.L9	#, tmp150, tmp151,
.L8:
# eval/problem117//code.c:23:                 temp = arr[i];
	lw	a5,-28(s0)		# _17, i
	slli	a5,a5,2	#, _18, _17
	ld	a4,-56(s0)		# tmp152, arr
	add	a5,a4,a5	# _18, _19, tmp152
# eval/problem117//code.c:23:                 temp = arr[i];
	lw	a5,0(a5)		# tmp153, *_19
	sw	a5,-20(s0)	# tmp153, temp
# eval/problem117//code.c:24:                 arr[i] = arr[j];
	lw	a5,-24(s0)		# _20, j
	slli	a5,a5,2	#, _21, _20
	ld	a4,-56(s0)		# tmp154, arr
	add	a4,a4,a5	# _21, _22, tmp154
# eval/problem117//code.c:24:                 arr[i] = arr[j];
	lw	a5,-28(s0)		# _23, i
	slli	a5,a5,2	#, _24, _23
	ld	a3,-56(s0)		# tmp155, arr
	add	a5,a3,a5	# _24, _25, tmp155
# eval/problem117//code.c:24:                 arr[i] = arr[j];
	lw	a4,0(a4)		# _26, *_22
# eval/problem117//code.c:24:                 arr[i] = arr[j];
	sw	a4,0(a5)	# _26, *_25
# eval/problem117//code.c:25:                 arr[j] = temp;
	lw	a5,-24(s0)		# _27, j
	slli	a5,a5,2	#, _28, _27
	ld	a4,-56(s0)		# tmp156, arr
	add	a5,a4,a5	# _28, _29, tmp156
# eval/problem117//code.c:25:                 arr[j] = temp;
	lw	a4,-20(s0)		# tmp157, temp
	sw	a4,0(a5)	# tmp157, *_29
.L9:
# eval/problem117//code.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-24(s0)		# tmp160, j
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-24(s0)	# tmp158, j
.L3:
# eval/problem117//code.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-24(s0)		# tmp162, j
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-60(s0)		# tmp164, size
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L10	#, tmp165, tmp166,
# eval/problem117//code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp169, i
	addiw	a5,a5,1	#, tmp167, tmp168
	sw	a5,-28(s0)	# tmp167, i
.L2:
# eval/problem117//code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp171, i
	mv	a4,a5	# tmp170, tmp171
	lw	a5,-60(s0)		# tmp173, size
	sext.w	a4,a4	# tmp174, tmp170
	sext.w	a5,a5	# tmp175, tmp172
	blt	a4,a5,.L11	#, tmp174, tmp175,
# eval/problem117//code.c:29: }
	nop	
	nop	
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
