	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# x, x
	mv	a5,a1	# tmp190, size
	sd	a2,-72(s0)	# out, out
	sd	a3,-80(s0)	# out_size, out_size
	sw	a5,-60(s0)	# tmp191, size
# eval/problem105//code.c:6:     *out = malloc(size * sizeof(int));
	lw	a5,-60(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp192,
	mv	a4,a5	# _3, tmp192
# eval/problem105//code.c:6:     *out = malloc(size * sizeof(int));
	ld	a5,-72(s0)		# tmp193, out
	sd	a4,0(a5)	# _3, *out_72(D)
# eval/problem105//code.c:7:     *out_size = 0;
	ld	a5,-80(s0)		# tmp194, out_size
	sw	zero,0(a5)	#, *out_size_74(D)
# eval/problem105//code.c:9:     for (int i = 0; i < size; i++) {
	sw	zero,-36(s0)	#, i
# eval/problem105//code.c:9:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L9:
# eval/problem105//code.c:10:         int num = x[i];
	lw	a5,-36(s0)		# _4, i
	slli	a5,a5,2	#, _5, _4
	ld	a4,-56(s0)		# tmp195, x
	add	a5,a4,a5	# _5, _6, tmp195
# eval/problem105//code.c:10:         int num = x[i];
	lw	a5,0(a5)		# tmp196, *_6
	sw	a5,-32(s0)	# tmp196, num
# eval/problem105//code.c:11:         bool has_even_digit = false;
	sb	zero,-37(s0)	#, has_even_digit
# eval/problem105//code.c:12:         if (num == 0) has_even_digit = true;
	lw	a5,-32(s0)		# tmp198, num
	sext.w	a5,a5	# tmp199, tmp197
	bne	a5,zero,.L4	#, tmp199,,
# eval/problem105//code.c:12:         if (num == 0) has_even_digit = true;
	li	a5,1		# tmp200,
	sb	a5,-37(s0)	# tmp200, has_even_digit
# eval/problem105//code.c:14:         while (num > 0 && !has_even_digit) {
	j	.L4		#
.L7:
# eval/problem105//code.c:15:             if (num % 2 == 0) has_even_digit = true;
	lw	a5,-32(s0)		# num.0_7, num
	andi	a5,a5,1	#, tmp202, tmp201
	sext.w	a5,a5	# _8, tmp202
# eval/problem105//code.c:15:             if (num % 2 == 0) has_even_digit = true;
	bne	a5,zero,.L5	#, _8,,
# eval/problem105//code.c:15:             if (num % 2 == 0) has_even_digit = true;
	li	a5,1		# tmp203,
	sb	a5,-37(s0)	# tmp203, has_even_digit
.L5:
# eval/problem105//code.c:16:             num = num / 10;
	lw	a5,-32(s0)		# tmp206, num
	mv	a4,a5	# tmp205, tmp206
	li	a5,10		# tmp208,
	divw	a5,a4,a5	# tmp208, tmp207, tmp205
	sw	a5,-32(s0)	# tmp207, num
.L4:
# eval/problem105//code.c:14:         while (num > 0 && !has_even_digit) {
	lw	a5,-32(s0)		# tmp210, num
	sext.w	a5,a5	# tmp211, tmp209
	ble	a5,zero,.L6	#, tmp211,,
# eval/problem105//code.c:14:         while (num > 0 && !has_even_digit) {
	lbu	a5,-37(s0)	# tmp213, has_even_digit
	xori	a5,a5,1	#, tmp214, tmp212
	andi	a5,a5,0xff	# _9, tmp214
# eval/problem105//code.c:14:         while (num > 0 && !has_even_digit) {
	bne	a5,zero,.L7	#, _9,,
.L6:
# eval/problem105//code.c:19:         if (!has_even_digit) {
	lbu	a5,-37(s0)	# tmp216, has_even_digit
	xori	a5,a5,1	#, tmp217, tmp215
	andi	a5,a5,0xff	# _10, tmp217
# eval/problem105//code.c:19:         if (!has_even_digit) {
	beq	a5,zero,.L8	#, _10,,
# eval/problem105//code.c:20:             (*out)[*out_size] = x[i];
	lw	a5,-36(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-56(s0)		# tmp218, x
	add	a4,a4,a5	# _12, _13, tmp218
# eval/problem105//code.c:20:             (*out)[*out_size] = x[i];
	ld	a5,-72(s0)		# tmp219, out
	ld	a3,0(a5)		# _14, *out_72(D)
# eval/problem105//code.c:20:             (*out)[*out_size] = x[i];
	ld	a5,-80(s0)		# tmp220, out_size
	lw	a5,0(a5)		# _15, *out_size_74(D)
# eval/problem105//code.c:20:             (*out)[*out_size] = x[i];
	slli	a5,a5,2	#, _17, _16
	add	a5,a3,a5	# _17, _18, _14
# eval/problem105//code.c:20:             (*out)[*out_size] = x[i];
	lw	a4,0(a4)		# _19, *_13
# eval/problem105//code.c:20:             (*out)[*out_size] = x[i];
	sw	a4,0(a5)	# _19, *_18
# eval/problem105//code.c:21:             (*out_size)++;
	ld	a5,-80(s0)		# tmp221, out_size
	lw	a5,0(a5)		# _20, *out_size_74(D)
# eval/problem105//code.c:21:             (*out_size)++;
	addiw	a5,a5,1	#, tmp222, _20
	sext.w	a4,a5	# _21, tmp222
	ld	a5,-80(s0)		# tmp223, out_size
	sw	a4,0(a5)	# _21, *out_size_74(D)
.L8:
# eval/problem105//code.c:9:     for (int i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp226, i
	addiw	a5,a5,1	#, tmp224, tmp225
	sw	a5,-36(s0)	# tmp224, i
.L2:
# eval/problem105//code.c:9:     for (int i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp228, i
	mv	a4,a5	# tmp227, tmp228
	lw	a5,-60(s0)		# tmp230, size
	sext.w	a4,a4	# tmp231, tmp227
	sext.w	a5,a5	# tmp232, tmp229
	blt	a4,a5,.L9	#, tmp231, tmp232,
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
	ld	a5,-72(s0)		# tmp233, out
	ld	a4,0(a5)		# _22, *out_72(D)
# eval/problem105//code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	lw	a5,-24(s0)		# _23, j
	slli	a5,a5,2	#, _24, _23
	add	a5,a4,a5	# _24, _25, _22
	lw	a3,0(a5)		# _26, *_25
# eval/problem105//code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	ld	a5,-72(s0)		# tmp234, out
	ld	a4,0(a5)		# _27, *out_72(D)
# eval/problem105//code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	lw	a5,-24(s0)		# _28, j
	addi	a5,a5,1	#, _29, _28
	slli	a5,a5,2	#, _30, _29
	add	a5,a4,a5	# _30, _31, _27
	lw	a5,0(a5)		# _32, *_31
# eval/problem105//code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	mv	a4,a3	# tmp235, _26
	ble	a4,a5,.L12	#, tmp235, tmp236,
# eval/problem105//code.c:28:                 int temp = (*out)[j];
	ld	a5,-72(s0)		# tmp237, out
	ld	a4,0(a5)		# _33, *out_72(D)
# eval/problem105//code.c:28:                 int temp = (*out)[j];
	lw	a5,-24(s0)		# _34, j
	slli	a5,a5,2	#, _35, _34
	add	a5,a4,a5	# _35, _36, _33
# eval/problem105//code.c:28:                 int temp = (*out)[j];
	lw	a5,0(a5)		# tmp238, *_36
	sw	a5,-20(s0)	# tmp238, temp
# eval/problem105//code.c:29:                 (*out)[j] = (*out)[j + 1];
	ld	a5,-72(s0)		# tmp239, out
	ld	a4,0(a5)		# _37, *out_72(D)
# eval/problem105//code.c:29:                 (*out)[j] = (*out)[j + 1];
	lw	a5,-24(s0)		# _38, j
	addi	a5,a5,1	#, _39, _38
	slli	a5,a5,2	#, _40, _39
	add	a4,a4,a5	# _40, _41, _37
# eval/problem105//code.c:29:                 (*out)[j] = (*out)[j + 1];
	ld	a5,-72(s0)		# tmp240, out
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
	ld	a5,-72(s0)		# tmp241, out
	ld	a4,0(a5)		# _47, *out_72(D)
# eval/problem105//code.c:30:                 (*out)[j + 1] = temp;
	lw	a5,-24(s0)		# _48, j
	addi	a5,a5,1	#, _49, _48
	slli	a5,a5,2	#, _50, _49
	add	a5,a4,a5	# _50, _51, _47
# eval/problem105//code.c:30:                 (*out)[j + 1] = temp;
	lw	a4,-20(s0)		# tmp242, temp
	sw	a4,0(a5)	# tmp242, *_51
.L12:
# eval/problem105//code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	lw	a5,-24(s0)		# tmp245, j
	addiw	a5,a5,1	#, tmp243, tmp244
	sw	a5,-24(s0)	# tmp243, j
.L11:
# eval/problem105//code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	ld	a5,-80(s0)		# tmp246, out_size
	lw	a5,0(a5)		# _52, *out_size_74(D)
# eval/problem105//code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	lw	a4,-28(s0)		# tmp249, i
	subw	a5,a5,a4	# tmp247, _52, tmp248
	sext.w	a5,a5	# _53, tmp247
# eval/problem105//code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	addiw	a5,a5,-1	#, tmp250, _53
	sext.w	a4,a5	# _54, tmp250
# eval/problem105//code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	lw	a5,-24(s0)		# tmp252, j
	sext.w	a5,a5	# tmp253, tmp251
	blt	a5,a4,.L13	#, tmp253, tmp254,
# eval/problem105//code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	lw	a5,-28(s0)		# tmp257, i
	addiw	a5,a5,1	#, tmp255, tmp256
	sw	a5,-28(s0)	# tmp255, i
.L10:
# eval/problem105//code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	ld	a5,-80(s0)		# tmp258, out_size
	lw	a5,0(a5)		# _55, *out_size_74(D)
# eval/problem105//code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	addiw	a5,a5,-1	#, tmp259, _55
	sext.w	a4,a5	# _56, tmp259
# eval/problem105//code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	lw	a5,-28(s0)		# tmp261, i
	sext.w	a5,a5	# tmp262, tmp260
	blt	a5,a4,.L14	#, tmp262, tmp263,
# eval/problem105//code.c:34: }
	nop	
	nop	
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
