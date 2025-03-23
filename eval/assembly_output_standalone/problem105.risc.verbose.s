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
	addi	sp,sp,-80	#,,
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	addi	s0,sp,80	#,,
	sd	a0,-56(s0)	# x, x
	mv	a5,a1	# tmp128, size
	sd	a2,-72(s0)	# out, out
	sd	a3,-80(s0)	# out_size, out_size
	sw	a5,-60(s0)	# tmp129, size
# eval/problem105//code.c:6:     *out = malloc(size * sizeof(int));
	lw	a5,-60(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp130,
	mv	a4,a5	# _3, tmp130
# eval/problem105//code.c:6:     *out = malloc(size * sizeof(int));
	ld	a5,-72(s0)		# tmp131, out
	sd	a4,0(a5)	# _3, *out_72(D)
# eval/problem105//code.c:7:     *out_size = 0;
	ld	a5,-80(s0)		# tmp132, out_size
	sw	zero,0(a5)	#, *out_size_74(D)
# eval/problem105//code.c:9:     for (int i = 0; i < size; i++) {
	sw	zero,-36(s0)	#, i
# eval/problem105//code.c:9:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L9:
# eval/problem105//code.c:10:         int num = x[i];
	lw	a5,-36(s0)		# _4, i
	slli	a5,a5,2	#, _5, _4
	ld	a4,-56(s0)		# tmp133, x
	add	a5,a4,a5	# _5, _6, tmp133
# eval/problem105//code.c:10:         int num = x[i];
	lw	a5,0(a5)		# tmp134, *_6
	sw	a5,-32(s0)	# tmp134, num
# eval/problem105//code.c:11:         bool has_even_digit = false;
	sb	zero,-37(s0)	#, has_even_digit
# eval/problem105//code.c:12:         if (num == 0) has_even_digit = true;
	lw	a5,-32(s0)		# tmp136, num
	sext.w	a5,a5	# tmp137, tmp135
	bne	a5,zero,.L4	#, tmp137,,
# eval/problem105//code.c:12:         if (num == 0) has_even_digit = true;
	li	a5,1		# tmp138,
	sb	a5,-37(s0)	# tmp138, has_even_digit
# eval/problem105//code.c:14:         while (num > 0 && !has_even_digit) {
	j	.L4		#
.L7:
# eval/problem105//code.c:15:             if (num % 2 == 0) has_even_digit = true;
	lw	a5,-32(s0)		# num.0_7, num
	andi	a5,a5,1	#, tmp140, tmp139
	sext.w	a5,a5	# _8, tmp140
# eval/problem105//code.c:15:             if (num % 2 == 0) has_even_digit = true;
	bne	a5,zero,.L5	#, _8,,
# eval/problem105//code.c:15:             if (num % 2 == 0) has_even_digit = true;
	li	a5,1		# tmp141,
	sb	a5,-37(s0)	# tmp141, has_even_digit
.L5:
# eval/problem105//code.c:16:             num = num / 10;
	lw	a5,-32(s0)		# tmp144, num
	mv	a4,a5	# tmp143, tmp144
	li	a5,10		# tmp146,
	divw	a5,a4,a5	# tmp146, tmp145, tmp143
	sw	a5,-32(s0)	# tmp145, num
.L4:
# eval/problem105//code.c:14:         while (num > 0 && !has_even_digit) {
	lw	a5,-32(s0)		# tmp148, num
	sext.w	a5,a5	# tmp149, tmp147
	ble	a5,zero,.L6	#, tmp149,,
# eval/problem105//code.c:14:         while (num > 0 && !has_even_digit) {
	lbu	a5,-37(s0)	# tmp151, has_even_digit
	xori	a5,a5,1	#, tmp152, tmp150
	andi	a5,a5,0xff	# _9, tmp152
# eval/problem105//code.c:14:         while (num > 0 && !has_even_digit) {
	bne	a5,zero,.L7	#, _9,,
.L6:
# eval/problem105//code.c:19:         if (!has_even_digit) {
	lbu	a5,-37(s0)	# tmp154, has_even_digit
	xori	a5,a5,1	#, tmp155, tmp153
	andi	a5,a5,0xff	# _10, tmp155
# eval/problem105//code.c:19:         if (!has_even_digit) {
	beq	a5,zero,.L8	#, _10,,
# eval/problem105//code.c:20:             (*out)[*out_size] = x[i];
	lw	a5,-36(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-56(s0)		# tmp156, x
	add	a4,a4,a5	# _12, _13, tmp156
# eval/problem105//code.c:20:             (*out)[*out_size] = x[i];
	ld	a5,-72(s0)		# tmp157, out
	ld	a3,0(a5)		# _14, *out_72(D)
# eval/problem105//code.c:20:             (*out)[*out_size] = x[i];
	ld	a5,-80(s0)		# tmp158, out_size
	lw	a5,0(a5)		# _15, *out_size_74(D)
# eval/problem105//code.c:20:             (*out)[*out_size] = x[i];
	slli	a5,a5,2	#, _17, _16
	add	a5,a3,a5	# _17, _18, _14
# eval/problem105//code.c:20:             (*out)[*out_size] = x[i];
	lw	a4,0(a4)		# _19, *_13
# eval/problem105//code.c:20:             (*out)[*out_size] = x[i];
	sw	a4,0(a5)	# _19, *_18
# eval/problem105//code.c:21:             (*out_size)++;
	ld	a5,-80(s0)		# tmp159, out_size
	lw	a5,0(a5)		# _20, *out_size_74(D)
# eval/problem105//code.c:21:             (*out_size)++;
	addiw	a5,a5,1	#, tmp160, _20
	sext.w	a4,a5	# _21, tmp160
	ld	a5,-80(s0)		# tmp161, out_size
	sw	a4,0(a5)	# _21, *out_size_74(D)
.L8:
# eval/problem105//code.c:9:     for (int i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp164, i
	addiw	a5,a5,1	#, tmp162, tmp163
	sw	a5,-36(s0)	# tmp162, i
.L2:
# eval/problem105//code.c:9:     for (int i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp166, i
	mv	a4,a5	# tmp165, tmp166
	lw	a5,-60(s0)		# tmp168, size
	sext.w	a4,a4	# tmp169, tmp165
	sext.w	a5,a5	# tmp170, tmp167
	blt	a4,a5,.L9	#, tmp169, tmp170,
# eval/problem105//code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	sw	zero,-28(s0)	#, i
# eval/problem105//code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	j	.L10		#
.L14:
# eval/problem105//code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	sw	zero,-24(s0)	#, j
# eval/problem105//code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	j	.L11		#
.L13:
# eval/problem105//code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	ld	a5,-72(s0)		# tmp171, out
	ld	a4,0(a5)		# _22, *out_72(D)
# eval/problem105//code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	lw	a5,-24(s0)		# _23, j
	slli	a5,a5,2	#, _24, _23
	add	a5,a4,a5	# _24, _25, _22
	lw	a3,0(a5)		# _26, *_25
# eval/problem105//code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	ld	a5,-72(s0)		# tmp172, out
	ld	a4,0(a5)		# _27, *out_72(D)
# eval/problem105//code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	lw	a5,-24(s0)		# _28, j
	addi	a5,a5,1	#, _29, _28
	slli	a5,a5,2	#, _30, _29
	add	a5,a4,a5	# _30, _31, _27
	lw	a5,0(a5)		# _32, *_31
# eval/problem105//code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	mv	a4,a3	# tmp173, _26
	ble	a4,a5,.L12	#, tmp173, tmp174,
# eval/problem105//code.c:28:                 int temp = (*out)[j];
	ld	a5,-72(s0)		# tmp175, out
	ld	a4,0(a5)		# _33, *out_72(D)
# eval/problem105//code.c:28:                 int temp = (*out)[j];
	lw	a5,-24(s0)		# _34, j
	slli	a5,a5,2	#, _35, _34
	add	a5,a4,a5	# _35, _36, _33
# eval/problem105//code.c:28:                 int temp = (*out)[j];
	lw	a5,0(a5)		# tmp176, *_36
	sw	a5,-20(s0)	# tmp176, temp
# eval/problem105//code.c:29:                 (*out)[j] = (*out)[j + 1];
	ld	a5,-72(s0)		# tmp177, out
	ld	a4,0(a5)		# _37, *out_72(D)
# eval/problem105//code.c:29:                 (*out)[j] = (*out)[j + 1];
	lw	a5,-24(s0)		# _38, j
	addi	a5,a5,1	#, _39, _38
	slli	a5,a5,2	#, _40, _39
	add	a4,a4,a5	# _40, _41, _37
# eval/problem105//code.c:29:                 (*out)[j] = (*out)[j + 1];
	ld	a5,-72(s0)		# tmp178, out
	ld	a3,0(a5)		# _42, *out_72(D)
# eval/problem105//code.c:29:                 (*out)[j] = (*out)[j + 1];
	lw	a5,-24(s0)		# _43, j
	slli	a5,a5,2	#, _44, _43
	add	a5,a3,a5	# _44, _45, _42
# eval/problem105//code.c:29:                 (*out)[j] = (*out)[j + 1];
	lw	a4,0(a4)		# _46, *_41
# eval/problem105//code.c:29:                 (*out)[j] = (*out)[j + 1];
	sw	a4,0(a5)	# _46, *_45
# eval/problem105//code.c:30:                 (*out)[j + 1] = temp;
	ld	a5,-72(s0)		# tmp179, out
	ld	a4,0(a5)		# _47, *out_72(D)
# eval/problem105//code.c:30:                 (*out)[j + 1] = temp;
	lw	a5,-24(s0)		# _48, j
	addi	a5,a5,1	#, _49, _48
	slli	a5,a5,2	#, _50, _49
	add	a5,a4,a5	# _50, _51, _47
# eval/problem105//code.c:30:                 (*out)[j + 1] = temp;
	lw	a4,-20(s0)		# tmp180, temp
	sw	a4,0(a5)	# tmp180, *_51
.L12:
# eval/problem105//code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	lw	a5,-24(s0)		# tmp183, j
	addiw	a5,a5,1	#, tmp181, tmp182
	sw	a5,-24(s0)	# tmp181, j
.L11:
# eval/problem105//code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	ld	a5,-80(s0)		# tmp184, out_size
	lw	a5,0(a5)		# _52, *out_size_74(D)
# eval/problem105//code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	lw	a4,-28(s0)		# tmp187, i
	subw	a5,a5,a4	# tmp185, _52, tmp186
	sext.w	a5,a5	# _53, tmp185
# eval/problem105//code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	addiw	a5,a5,-1	#, tmp188, _53
	sext.w	a4,a5	# _54, tmp188
# eval/problem105//code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	lw	a5,-24(s0)		# tmp190, j
	sext.w	a5,a5	# tmp191, tmp189
	blt	a5,a4,.L13	#, tmp191, tmp192,
# eval/problem105//code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	lw	a5,-28(s0)		# tmp195, i
	addiw	a5,a5,1	#, tmp193, tmp194
	sw	a5,-28(s0)	# tmp193, i
.L10:
# eval/problem105//code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	ld	a5,-80(s0)		# tmp196, out_size
	lw	a5,0(a5)		# _55, *out_size_74(D)
# eval/problem105//code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	addiw	a5,a5,-1	#, tmp197, _55
	sext.w	a4,a5	# _56, tmp197
# eval/problem105//code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	lw	a5,-28(s0)		# tmp199, i
	sext.w	a5,a5	# tmp200, tmp198
	blt	a5,a4,.L14	#, tmp200, tmp201,
# eval/problem105//code.c:34: }
	nop	
	nop	
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
