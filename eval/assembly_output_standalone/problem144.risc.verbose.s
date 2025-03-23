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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# sentence, sentence
	sd	a1,-64(s0)	# out, out
# eval/problem144//code.c:6:     int index = 0, word_len = 0;
	sw	zero,-20(s0)	#, index
# eval/problem144//code.c:6:     int index = 0, word_len = 0;
	sw	zero,-36(s0)	#, word_len
# eval/problem144//code.c:7:     int out_index = 0;
	sw	zero,-32(s0)	#, out_index
# eval/problem144//code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	sw	zero,-28(s0)	#, i
# eval/problem144//code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	j	.L2		#
.L13:
# eval/problem144//code.c:12:         if (sentence[i] != ' ') {
	lw	a5,-28(s0)		# _1, i
	ld	a4,-56(s0)		# tmp166, sentence
	add	a5,a4,a5	# _1, _2, tmp166
	lbu	a5,0(a5)	# _3, *_2
# eval/problem144//code.c:12:         if (sentence[i] != ' ') {
	mv	a4,a5	# tmp167, _3
	li	a5,32		# tmp168,
	beq	a4,a5,.L3	#, tmp167, tmp168,
# eval/problem144//code.c:13:             word_len++;
	lw	a5,-36(s0)		# tmp171, word_len
	addiw	a5,a5,1	#, tmp169, tmp170
	sw	a5,-36(s0)	# tmp169, word_len
	j	.L4		#
.L3:
# eval/problem144//code.c:15:             if (word_len > 1) {
	lw	a5,-36(s0)		# tmp173, word_len
	sext.w	a4,a5	# tmp174, tmp172
	li	a5,1		# tmp175,
	ble	a4,a5,.L5	#, tmp174, tmp175,
# eval/problem144//code.c:16:                 is_prime = true;
	li	a5,1		# tmp176,
	sb	a5,-37(s0)	# tmp176, is_prime
# eval/problem144//code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	li	a5,2		# tmp177,
	sw	a5,-24(s0)	# tmp177, j
# eval/problem144//code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	j	.L6		#
.L9:
# eval/problem144//code.c:18:                     if (word_len % j == 0) {
	lw	a5,-36(s0)		# tmp180, word_len
	mv	a4,a5	# tmp179, tmp180
	lw	a5,-24(s0)		# tmp183, j
	remw	a5,a4,a5	# tmp182, tmp181, tmp179
	sext.w	a5,a5	# _4, tmp181
# eval/problem144//code.c:18:                     if (word_len % j == 0) {
	bne	a5,zero,.L7	#, _4,,
# eval/problem144//code.c:19:                         is_prime = false;
	sb	zero,-37(s0)	#, is_prime
# eval/problem144//code.c:20:                         break;
	j	.L10		#
.L7:
# eval/problem144//code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-24(s0)		# tmp186, j
	addiw	a5,a5,1	#, tmp184, tmp185
	sw	a5,-24(s0)	# tmp184, j
.L6:
# eval/problem144//code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-24(s0)		# tmp189, j
	mulw	a5,a5,a5	# tmp187, tmp188, tmp188
	sext.w	a4,a5	# _5, tmp187
# eval/problem144//code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-36(s0)		# tmp191, word_len
	sext.w	a5,a5	# tmp192, tmp190
	bge	a5,a4,.L9	#, tmp192, tmp193,
	j	.L10		#
.L5:
# eval/problem144//code.c:24:                 is_prime = false;
	sb	zero,-37(s0)	#, is_prime
.L10:
# eval/problem144//code.c:27:             if (is_prime) {
	lbu	a5,-37(s0)	# tmp195, is_prime
	andi	a5,a5,0xff	# tmp196, tmp194
	beq	a5,zero,.L11	#, tmp196,,
# eval/problem144//code.c:28:                 if (out_index > 0) {
	lw	a5,-32(s0)		# tmp198, out_index
	sext.w	a5,a5	# tmp199, tmp197
	ble	a5,zero,.L12	#, tmp199,,
# eval/problem144//code.c:29:                     out[out_index++] = ' ';
	lw	a5,-32(s0)		# out_index.0_6, out_index
	addiw	a4,a5,1	#, tmp200, out_index.0_6
	sw	a4,-32(s0)	# tmp200, out_index
	mv	a4,a5	# _7, out_index.0_6
# eval/problem144//code.c:29:                     out[out_index++] = ' ';
	ld	a5,-64(s0)		# tmp201, out
	add	a5,a5,a4	# _7, _8, tmp201
# eval/problem144//code.c:29:                     out[out_index++] = ' ';
	li	a4,32		# tmp202,
	sb	a4,0(a5)	# tmp202, *_8
.L12:
# eval/problem144//code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a5,-32(s0)		# _9, out_index
# eval/problem144//code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	ld	a4,-64(s0)		# tmp203, out
	add	a3,a4,a5	# _9, _10, tmp203
# eval/problem144//code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a4,-28(s0)		# _11, i
	lw	a5,-36(s0)		# _12, word_len
	sub	a5,a4,a5	# _13, _11, _12
	ld	a4,-56(s0)		# tmp204, sentence
	add	a5,a4,a5	# _13, _14, tmp204
# eval/problem144//code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a4,-36(s0)		# _15, word_len
	mv	a2,a4	#, _15
	mv	a1,a5	#, _14
	mv	a0,a3	#, _10
	call	memcpy@plt	#
# eval/problem144//code.c:32:                 out_index += word_len;
	lw	a5,-32(s0)		# tmp207, out_index
	mv	a4,a5	# tmp206, tmp207
	lw	a5,-36(s0)		# tmp209, word_len
	addw	a5,a4,a5	# tmp208, tmp205, tmp206
	sw	a5,-32(s0)	# tmp205, out_index
.L11:
# eval/problem144//code.c:34:             word_len = 0;
	sw	zero,-36(s0)	#, word_len
.L4:
# eval/problem144//code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	lw	a5,-28(s0)		# tmp212, i
	addiw	a5,a5,1	#, tmp210, tmp211
	sw	a5,-28(s0)	# tmp210, i
.L2:
# eval/problem144//code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	lw	a5,-28(s0)		# _16, i
	ld	a4,-56(s0)		# tmp213, sentence
	add	a5,a4,a5	# _16, _17, tmp213
	lbu	a5,0(a5)	# _18, *_17
# eval/problem144//code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	bne	a5,zero,.L13	#, _18,,
# eval/problem144//code.c:38:     if (word_len > 1) {
	lw	a5,-36(s0)		# tmp215, word_len
	sext.w	a4,a5	# tmp216, tmp214
	li	a5,1		# tmp217,
	ble	a4,a5,.L14	#, tmp216, tmp217,
# eval/problem144//code.c:39:         is_prime = true;
	li	a5,1		# tmp218,
	sb	a5,-37(s0)	# tmp218, is_prime
# eval/problem144//code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	li	a5,2		# tmp219,
	sw	a5,-24(s0)	# tmp219, j
# eval/problem144//code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	j	.L15		#
.L18:
# eval/problem144//code.c:41:             if (word_len % j == 0) {
	lw	a5,-36(s0)		# tmp222, word_len
	mv	a4,a5	# tmp221, tmp222
	lw	a5,-24(s0)		# tmp225, j
	remw	a5,a4,a5	# tmp224, tmp223, tmp221
	sext.w	a5,a5	# _19, tmp223
# eval/problem144//code.c:41:             if (word_len % j == 0) {
	bne	a5,zero,.L16	#, _19,,
# eval/problem144//code.c:42:                 is_prime = false;
	sb	zero,-37(s0)	#, is_prime
# eval/problem144//code.c:43:                 break;
	j	.L19		#
.L16:
# eval/problem144//code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-24(s0)		# tmp228, j
	addiw	a5,a5,1	#, tmp226, tmp227
	sw	a5,-24(s0)	# tmp226, j
.L15:
# eval/problem144//code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-24(s0)		# tmp231, j
	mulw	a5,a5,a5	# tmp229, tmp230, tmp230
	sext.w	a4,a5	# _20, tmp229
# eval/problem144//code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-36(s0)		# tmp233, word_len
	sext.w	a5,a5	# tmp234, tmp232
	bge	a5,a4,.L18	#, tmp234, tmp235,
	j	.L19		#
.L14:
# eval/problem144//code.c:47:         is_prime = false;
	sb	zero,-37(s0)	#, is_prime
.L19:
# eval/problem144//code.c:50:     if (is_prime) {
	lbu	a5,-37(s0)	# tmp237, is_prime
	andi	a5,a5,0xff	# tmp238, tmp236
	beq	a5,zero,.L20	#, tmp238,,
# eval/problem144//code.c:51:         if (out_index > 0) {
	lw	a5,-32(s0)		# tmp240, out_index
	sext.w	a5,a5	# tmp241, tmp239
	ble	a5,zero,.L21	#, tmp241,,
# eval/problem144//code.c:52:             out[out_index++] = ' ';
	lw	a5,-32(s0)		# out_index.1_21, out_index
	addiw	a4,a5,1	#, tmp242, out_index.1_21
	sw	a4,-32(s0)	# tmp242, out_index
	mv	a4,a5	# _22, out_index.1_21
# eval/problem144//code.c:52:             out[out_index++] = ' ';
	ld	a5,-64(s0)		# tmp243, out
	add	a5,a5,a4	# _22, _23, tmp243
# eval/problem144//code.c:52:             out[out_index++] = ' ';
	li	a4,32		# tmp244,
	sb	a4,0(a5)	# tmp244, *_23
.L21:
# eval/problem144//code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a5,-32(s0)		# _24, out_index
# eval/problem144//code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	ld	a4,-64(s0)		# tmp245, out
	add	a3,a4,a5	# _24, _25, tmp245
# eval/problem144//code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a4,-28(s0)		# _26, i
	lw	a5,-36(s0)		# _27, word_len
	sub	a5,a4,a5	# _28, _26, _27
	ld	a4,-56(s0)		# tmp246, sentence
	add	a5,a4,a5	# _28, _29, tmp246
# eval/problem144//code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a4,-36(s0)		# _30, word_len
	mv	a2,a4	#, _30
	mv	a1,a5	#, _29
	mv	a0,a3	#, _25
	call	memcpy@plt	#
# eval/problem144//code.c:55:         out_index += word_len;
	lw	a5,-32(s0)		# tmp249, out_index
	mv	a4,a5	# tmp248, tmp249
	lw	a5,-36(s0)		# tmp251, word_len
	addw	a5,a4,a5	# tmp250, tmp247, tmp248
	sw	a5,-32(s0)	# tmp247, out_index
.L20:
# eval/problem144//code.c:58:     out[out_index] = '\0';
	lw	a5,-32(s0)		# _31, out_index
	ld	a4,-64(s0)		# tmp252, out
	add	a5,a4,a5	# _31, _32, tmp252
# eval/problem144//code.c:58:     out[out_index] = '\0';
	sb	zero,0(a5)	#, *_32
# eval/problem144//code.c:59: }
	nop	
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
