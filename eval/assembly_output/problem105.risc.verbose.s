	.file	"problem105.c"
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
# problem105.c:6:     *out = malloc(size * sizeof(int));
	lw	a5,-60(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp192,
	mv	a4,a5	# _3, tmp192
# problem105.c:6:     *out = malloc(size * sizeof(int));
	ld	a5,-72(s0)		# tmp193, out
	sd	a4,0(a5)	# _3, *out_72(D)
# problem105.c:7:     *out_size = 0;
	ld	a5,-80(s0)		# tmp194, out_size
	sw	zero,0(a5)	#, *out_size_74(D)
# problem105.c:9:     for (int i = 0; i < size; i++) {
	sw	zero,-36(s0)	#, i
# problem105.c:9:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L9:
# problem105.c:10:         int num = x[i];
	lw	a5,-36(s0)		# _4, i
	slli	a5,a5,2	#, _5, _4
	ld	a4,-56(s0)		# tmp195, x
	add	a5,a4,a5	# _5, _6, tmp195
# problem105.c:10:         int num = x[i];
	lw	a5,0(a5)		# tmp196, *_6
	sw	a5,-32(s0)	# tmp196, num
# problem105.c:11:         bool has_even_digit = false;
	sb	zero,-37(s0)	#, has_even_digit
# problem105.c:12:         if (num == 0) has_even_digit = true;
	lw	a5,-32(s0)		# tmp198, num
	sext.w	a5,a5	# tmp199, tmp197
	bne	a5,zero,.L4	#, tmp199,,
# problem105.c:12:         if (num == 0) has_even_digit = true;
	li	a5,1		# tmp200,
	sb	a5,-37(s0)	# tmp200, has_even_digit
# problem105.c:14:         while (num > 0 && !has_even_digit) {
	j	.L4		#
.L7:
# problem105.c:15:             if (num % 2 == 0) has_even_digit = true;
	lw	a5,-32(s0)		# num.0_7, num
	andi	a5,a5,1	#, tmp202, tmp201
	sext.w	a5,a5	# _8, tmp202
# problem105.c:15:             if (num % 2 == 0) has_even_digit = true;
	bne	a5,zero,.L5	#, _8,,
# problem105.c:15:             if (num % 2 == 0) has_even_digit = true;
	li	a5,1		# tmp203,
	sb	a5,-37(s0)	# tmp203, has_even_digit
.L5:
# problem105.c:16:             num = num / 10;
	lw	a5,-32(s0)		# tmp206, num
	mv	a4,a5	# tmp205, tmp206
	li	a5,10		# tmp208,
	divw	a5,a4,a5	# tmp208, tmp207, tmp205
	sw	a5,-32(s0)	# tmp207, num
.L4:
# problem105.c:14:         while (num > 0 && !has_even_digit) {
	lw	a5,-32(s0)		# tmp210, num
	sext.w	a5,a5	# tmp211, tmp209
	ble	a5,zero,.L6	#, tmp211,,
# problem105.c:14:         while (num > 0 && !has_even_digit) {
	lbu	a5,-37(s0)	# tmp213, has_even_digit
	xori	a5,a5,1	#, tmp214, tmp212
	andi	a5,a5,0xff	# _9, tmp214
# problem105.c:14:         while (num > 0 && !has_even_digit) {
	bne	a5,zero,.L7	#, _9,,
.L6:
# problem105.c:19:         if (!has_even_digit) {
	lbu	a5,-37(s0)	# tmp216, has_even_digit
	xori	a5,a5,1	#, tmp217, tmp215
	andi	a5,a5,0xff	# _10, tmp217
# problem105.c:19:         if (!has_even_digit) {
	beq	a5,zero,.L8	#, _10,,
# problem105.c:20:             (*out)[*out_size] = x[i];
	lw	a5,-36(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-56(s0)		# tmp218, x
	add	a4,a4,a5	# _12, _13, tmp218
# problem105.c:20:             (*out)[*out_size] = x[i];
	ld	a5,-72(s0)		# tmp219, out
	ld	a3,0(a5)		# _14, *out_72(D)
# problem105.c:20:             (*out)[*out_size] = x[i];
	ld	a5,-80(s0)		# tmp220, out_size
	lw	a5,0(a5)		# _15, *out_size_74(D)
# problem105.c:20:             (*out)[*out_size] = x[i];
	slli	a5,a5,2	#, _17, _16
	add	a5,a3,a5	# _17, _18, _14
# problem105.c:20:             (*out)[*out_size] = x[i];
	lw	a4,0(a4)		# _19, *_13
# problem105.c:20:             (*out)[*out_size] = x[i];
	sw	a4,0(a5)	# _19, *_18
# problem105.c:21:             (*out_size)++;
	ld	a5,-80(s0)		# tmp221, out_size
	lw	a5,0(a5)		# _20, *out_size_74(D)
# problem105.c:21:             (*out_size)++;
	addiw	a5,a5,1	#, tmp222, _20
	sext.w	a4,a5	# _21, tmp222
	ld	a5,-80(s0)		# tmp223, out_size
	sw	a4,0(a5)	# _21, *out_size_74(D)
.L8:
# problem105.c:9:     for (int i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp226, i
	addiw	a5,a5,1	#, tmp224, tmp225
	sw	a5,-36(s0)	# tmp224, i
.L2:
# problem105.c:9:     for (int i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp228, i
	mv	a4,a5	# tmp227, tmp228
	lw	a5,-60(s0)		# tmp230, size
	sext.w	a4,a4	# tmp231, tmp227
	sext.w	a5,a5	# tmp232, tmp229
	blt	a4,a5,.L9	#, tmp231, tmp232,
# problem105.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	sw	zero,-28(s0)	#, i
# problem105.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	j	.L10		#
.L14:
# problem105.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	sw	zero,-24(s0)	#, j
# problem105.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	j	.L11		#
.L13:
# problem105.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	ld	a5,-72(s0)		# tmp233, out
	ld	a4,0(a5)		# _22, *out_72(D)
# problem105.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	lw	a5,-24(s0)		# _23, j
	slli	a5,a5,2	#, _24, _23
	add	a5,a4,a5	# _24, _25, _22
	lw	a3,0(a5)		# _26, *_25
# problem105.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	ld	a5,-72(s0)		# tmp234, out
	ld	a4,0(a5)		# _27, *out_72(D)
# problem105.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	lw	a5,-24(s0)		# _28, j
	addi	a5,a5,1	#, _29, _28
	slli	a5,a5,2	#, _30, _29
	add	a5,a4,a5	# _30, _31, _27
	lw	a5,0(a5)		# _32, *_31
# problem105.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	mv	a4,a3	# tmp235, _26
	ble	a4,a5,.L12	#, tmp235, tmp236,
# problem105.c:28:                 int temp = (*out)[j];
	ld	a5,-72(s0)		# tmp237, out
	ld	a4,0(a5)		# _33, *out_72(D)
# problem105.c:28:                 int temp = (*out)[j];
	lw	a5,-24(s0)		# _34, j
	slli	a5,a5,2	#, _35, _34
	add	a5,a4,a5	# _35, _36, _33
# problem105.c:28:                 int temp = (*out)[j];
	lw	a5,0(a5)		# tmp238, *_36
	sw	a5,-20(s0)	# tmp238, temp
# problem105.c:29:                 (*out)[j] = (*out)[j + 1];
	ld	a5,-72(s0)		# tmp239, out
	ld	a4,0(a5)		# _37, *out_72(D)
# problem105.c:29:                 (*out)[j] = (*out)[j + 1];
	lw	a5,-24(s0)		# _38, j
	addi	a5,a5,1	#, _39, _38
	slli	a5,a5,2	#, _40, _39
	add	a4,a4,a5	# _40, _41, _37
# problem105.c:29:                 (*out)[j] = (*out)[j + 1];
	ld	a5,-72(s0)		# tmp240, out
	ld	a3,0(a5)		# _42, *out_72(D)
# problem105.c:29:                 (*out)[j] = (*out)[j + 1];
	lw	a5,-24(s0)		# _43, j
	slli	a5,a5,2	#, _44, _43
	add	a5,a3,a5	# _44, _45, _42
# problem105.c:29:                 (*out)[j] = (*out)[j + 1];
	lw	a4,0(a4)		# _46, *_41
# problem105.c:29:                 (*out)[j] = (*out)[j + 1];
	sw	a4,0(a5)	# _46, *_45
# problem105.c:30:                 (*out)[j + 1] = temp;
	ld	a5,-72(s0)		# tmp241, out
	ld	a4,0(a5)		# _47, *out_72(D)
# problem105.c:30:                 (*out)[j + 1] = temp;
	lw	a5,-24(s0)		# _48, j
	addi	a5,a5,1	#, _49, _48
	slli	a5,a5,2	#, _50, _49
	add	a5,a4,a5	# _50, _51, _47
# problem105.c:30:                 (*out)[j + 1] = temp;
	lw	a4,-20(s0)		# tmp242, temp
	sw	a4,0(a5)	# tmp242, *_51
.L12:
# problem105.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	lw	a5,-24(s0)		# tmp245, j
	addiw	a5,a5,1	#, tmp243, tmp244
	sw	a5,-24(s0)	# tmp243, j
.L11:
# problem105.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	ld	a5,-80(s0)		# tmp246, out_size
	lw	a5,0(a5)		# _52, *out_size_74(D)
# problem105.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	lw	a4,-28(s0)		# tmp249, i
	subw	a5,a5,a4	# tmp247, _52, tmp248
	sext.w	a5,a5	# _53, tmp247
# problem105.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	addiw	a5,a5,-1	#, tmp250, _53
	sext.w	a4,a5	# _54, tmp250
# problem105.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	lw	a5,-24(s0)		# tmp252, j
	sext.w	a5,a5	# tmp253, tmp251
	blt	a5,a4,.L13	#, tmp253, tmp254,
# problem105.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	lw	a5,-28(s0)		# tmp257, i
	addiw	a5,a5,1	#, tmp255, tmp256
	sw	a5,-28(s0)	# tmp255, i
.L10:
# problem105.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	ld	a5,-80(s0)		# tmp258, out_size
	lw	a5,0(a5)		# _55, *out_size_74(D)
# problem105.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	addiw	a5,a5,-1	#, tmp259, _55
	sext.w	a4,a5	# _56, tmp259
# problem105.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	lw	a5,-28(s0)		# tmp261, i
	sext.w	a5,a5	# tmp262, tmp260
	blt	a5,a4,.L14	#, tmp262, tmp263,
# problem105.c:34: }
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
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# a, a
	mv	a5,a1	# tmp144, a_size
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp146, b_size
	sw	a5,-44(s0)	# tmp145, a_size
	mv	a5,a4	# tmp147, tmp146
	sw	a5,-48(s0)	# tmp147, b_size
# problem105.c:44:     if (a_size != b_size) return false;
	lw	a5,-44(s0)		# tmp149, a_size
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-48(s0)		# tmp151, b_size
	sext.w	a4,a4	# tmp152, tmp148
	sext.w	a5,a5	# tmp153, tmp150
	beq	a4,a5,.L16	#, tmp152, tmp153,
# problem105.c:44:     if (a_size != b_size) return false;
	li	a5,0		# _10,
# problem105.c:44:     if (a_size != b_size) return false;
	j	.L17		#
.L16:
# problem105.c:45:     for (int i = 0; i < a_size; i++) {
	sw	zero,-20(s0)	#, i
# problem105.c:45:     for (int i = 0; i < a_size; i++) {
	j	.L18		#
.L20:
# problem105.c:46:         if (a[i] != b[i]) return false;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp154, a
	add	a5,a4,a5	# _2, _3, tmp154
	lw	a3,0(a5)		# _4, *_3
# problem105.c:46:         if (a[i] != b[i]) return false;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp155, b
	add	a5,a4,a5	# _6, _7, tmp155
	lw	a5,0(a5)		# _8, *_7
# problem105.c:46:         if (a[i] != b[i]) return false;
	mv	a4,a3	# tmp156, _4
	beq	a4,a5,.L19	#, tmp156, tmp157,
# problem105.c:46:         if (a[i] != b[i]) return false;
	li	a5,0		# _10,
# problem105.c:46:         if (a[i] != b[i]) return false;
	j	.L17		#
.L19:
# problem105.c:45:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L18:
# problem105.c:45:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-44(s0)		# tmp164, a_size
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L20	#, tmp165, tmp166,
# problem105.c:48:     return true;
	li	a5,1		# _10,
.L17:
# problem105.c:49: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC3:
	.string	"problem105.c"
	.align	3
.LC4:
	.string	"issame(out1, out1_size, expected1, 3)"
	.align	3
.LC5:
	.string	"issame(out2, out2_size, NULL, 0)"
	.align	3
.LC6:
	.string	"issame(out3, out3_size, expected3, 2)"
	.align	3
.LC7:
	.string	"issame(out4, out4_size, expected4, 2)"
	.align	3
.LC0:
	.word	15
	.word	33
	.word	1422
	.word	1
	.align	3
.LC1:
	.word	152
	.word	323
	.word	1422
	.word	10
	.align	3
.LC2:
	.word	12345
	.word	2033
	.word	111
	.word	151
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-176	#,,
	.cfi_def_cfa_offset 176
	sd	ra,168(sp)	#,
	sd	s0,160(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,176	#,,
	.cfi_def_cfa 8, 0
# problem105.c:51: int main() {
	la	a5,__stack_chk_guard		# tmp152,
	ld	a4, 0(a5)	# tmp194, __stack_chk_guard
	sd	a4, -24(s0)	# tmp194, D.3345
	li	a4, 0	# tmp194
# problem105.c:53:     int test1[] = {15, 33, 1422, 1};
	lla	a5,.LC0	# tmp153,
	ld	a4,0(a5)		# tmp154,
	sd	a4,-72(s0)	# tmp154, test1
	ld	a5,8(a5)		# tmp155,
	sd	a5,-64(s0)	# tmp155, test1
# problem105.c:54:     int expected1[] = {1, 15, 33};
	li	a5,1		# tmp156,
	sw	a5,-104(s0)	# tmp156, expected1[0]
	li	a5,15		# tmp157,
	sw	a5,-100(s0)	# tmp157, expected1[1]
	li	a5,33		# tmp158,
	sw	a5,-96(s0)	# tmp158, expected1[2]
# problem105.c:57:     func0(test1, 4, &out1, &out1_size);
	addi	a3,s0,-168	#, tmp159,
	addi	a4,s0,-152	#, tmp160,
	addi	a5,s0,-72	#, tmp161,
	mv	a2,a4	#, tmp160
	li	a1,4		#,
	mv	a0,a5	#, tmp161
	call	func0		#
# problem105.c:58:     assert(issame(out1, out1_size, expected1, 3));
	ld	a5,-152(s0)		# out1.1_1, out1
	lw	a4,-168(s0)		# out1_size.2_2, out1_size
	addi	a2,s0,-104	#, tmp162,
	li	a3,3		#,
	mv	a1,a4	#, out1_size.2_2
	mv	a0,a5	#, out1.1_1
	call	issame		#
	mv	a5,a0	# tmp163,
# problem105.c:58:     assert(issame(out1, out1_size, expected1, 3));
	bne	a5,zero,.L22	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,58		#,
	lla	a1,.LC3	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L22:
# problem105.c:59:     free(out1);
	ld	a5,-152(s0)		# out1.3_4, out1
	mv	a0,a5	#, out1.3_4
	call	free@plt	#
# problem105.c:61:     int test2[] = {152, 323, 1422, 10};
	lla	a5,.LC1	# tmp164,
	ld	a4,0(a5)		# tmp165,
	sd	a4,-56(s0)	# tmp165, test2
	ld	a5,8(a5)		# tmp166,
	sd	a5,-48(s0)	# tmp166, test2
# problem105.c:64:     func0(test2, 4, &out2, &out2_size);
	addi	a3,s0,-164	#, tmp167,
	addi	a4,s0,-144	#, tmp168,
	addi	a5,s0,-56	#, tmp169,
	mv	a2,a4	#, tmp168
	li	a1,4		#,
	mv	a0,a5	#, tmp169
	call	func0		#
# problem105.c:65:     assert(issame(out2, out2_size, NULL, 0));
	ld	a5,-144(s0)		# out2.4_5, out2
	lw	a4,-164(s0)		# out2_size.5_6, out2_size
	li	a3,0		#,
	li	a2,0		#,
	mv	a1,a4	#, out2_size.5_6
	mv	a0,a5	#, out2.4_5
	call	issame		#
	mv	a5,a0	# tmp170,
# problem105.c:65:     assert(issame(out2, out2_size, NULL, 0));
	bne	a5,zero,.L23	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,65		#,
	lla	a1,.LC3	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L23:
# problem105.c:66:     free(out2);
	ld	a5,-144(s0)		# out2.6_8, out2
	mv	a0,a5	#, out2.6_8
	call	free@plt	#
# problem105.c:68:     int test3[] = {12345, 2033, 111, 151};
	lla	a5,.LC2	# tmp171,
	ld	a4,0(a5)		# tmp172,
	sd	a4,-40(s0)	# tmp172, test3
	ld	a5,8(a5)		# tmp173,
	sd	a5,-32(s0)	# tmp173, test3
# problem105.c:69:     int expected3[] = {111, 151};
	li	a5,111		# tmp174,
	sw	a5,-120(s0)	# tmp174, expected3[0]
	li	a5,151		# tmp175,
	sw	a5,-116(s0)	# tmp175, expected3[1]
# problem105.c:72:     func0(test3, 4, &out3, &out3_size);
	addi	a3,s0,-160	#, tmp176,
	addi	a4,s0,-136	#, tmp177,
	addi	a5,s0,-40	#, tmp178,
	mv	a2,a4	#, tmp177
	li	a1,4		#,
	mv	a0,a5	#, tmp178
	call	func0		#
# problem105.c:73:     assert(issame(out3, out3_size, expected3, 2));
	ld	a5,-136(s0)		# out3.7_9, out3
	lw	a4,-160(s0)		# out3_size.8_10, out3_size
	addi	a2,s0,-120	#, tmp179,
	li	a3,2		#,
	mv	a1,a4	#, out3_size.8_10
	mv	a0,a5	#, out3.7_9
	call	issame		#
	mv	a5,a0	# tmp180,
# problem105.c:73:     assert(issame(out3, out3_size, expected3, 2));
	bne	a5,zero,.L24	#, _11,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,73		#,
	lla	a1,.LC3	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L24:
# problem105.c:74:     free(out3);
	ld	a5,-136(s0)		# out3.9_12, out3
	mv	a0,a5	#, out3.9_12
	call	free@plt	#
# problem105.c:76:     int test4[] = {135, 103, 31};
	li	a5,135		# tmp181,
	sw	a5,-88(s0)	# tmp181, test4[0]
	li	a5,103		# tmp182,
	sw	a5,-84(s0)	# tmp182, test4[1]
	li	a5,31		# tmp183,
	sw	a5,-80(s0)	# tmp183, test4[2]
# problem105.c:77:     int expected4[] = {31, 135};
	li	a5,31		# tmp184,
	sw	a5,-112(s0)	# tmp184, expected4[0]
	li	a5,135		# tmp185,
	sw	a5,-108(s0)	# tmp185, expected4[1]
# problem105.c:80:     func0(test4, 3, &out4, &out4_size);
	addi	a3,s0,-156	#, tmp186,
	addi	a4,s0,-128	#, tmp187,
	addi	a5,s0,-88	#, tmp188,
	mv	a2,a4	#, tmp187
	li	a1,3		#,
	mv	a0,a5	#, tmp188
	call	func0		#
# problem105.c:81:     assert(issame(out4, out4_size, expected4, 2));
	ld	a5,-128(s0)		# out4.10_13, out4
	lw	a4,-156(s0)		# out4_size.11_14, out4_size
	addi	a2,s0,-112	#, tmp189,
	li	a3,2		#,
	mv	a1,a4	#, out4_size.11_14
	mv	a0,a5	#, out4.10_13
	call	issame		#
	mv	a5,a0	# tmp190,
# problem105.c:81:     assert(issame(out4, out4_size, expected4, 2));
	bne	a5,zero,.L25	#, _15,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,81		#,
	lla	a1,.LC3	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L25:
# problem105.c:82:     free(out4);
	ld	a5,-128(s0)		# out4.12_16, out4
	mv	a0,a5	#, out4.12_16
	call	free@plt	#
# problem105.c:84:     return 0;
	li	a5,0		# _47,
# problem105.c:85: }
	mv	a4,a5	# <retval>, _47
	la	a5,__stack_chk_guard		# tmp192,
	ld	a3, -24(s0)	# tmp195, D.3345
	ld	a5, 0(a5)	# tmp193, __stack_chk_guard
	xor	a5, a3, a5	# tmp193, tmp195
	li	a3, 0	# tmp195
	beq	a5,zero,.L27	#, tmp193,,
	call	__stack_chk_fail@plt	#
.L27:
	mv	a0,a4	#, <retval>
	ld	ra,168(sp)		#,
	.cfi_restore 1
	ld	s0,160(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	addi	sp,sp,176	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
