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
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# str, str
# eval/problem11//code.c:6:     int len = strlen(str), i, j;
	ld	a0,-56(s0)		#, str
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem11//code.c:6:     int len = strlen(str), i, j;
	sw	a5,-28(s0)	# _1, len
# eval/problem11//code.c:7:     char *result = (char *)malloc(2 * len + 1);
	lw	a5,-28(s0)		# tmp177, len
	slliw	a5,a5,1	#, tmp175, tmp176
	sext.w	a5,a5	# _2, tmp175
# eval/problem11//code.c:7:     char *result = (char *)malloc(2 * len + 1);
	addiw	a5,a5,1	#, tmp178, _2
	sext.w	a5,a5	# _3, tmp178
# eval/problem11//code.c:7:     char *result = (char *)malloc(2 * len + 1);
	mv	a0,a5	#, _4
	call	malloc@plt	#
	mv	a5,a0	# tmp179,
	sd	a5,-24(s0)	# tmp179, result
# eval/problem11//code.c:8:     if (!result) {
	ld	a5,-24(s0)		# tmp180, result
	bne	a5,zero,.L2	#, tmp180,,
# eval/problem11//code.c:9:         return NULL; 
	li	a5,0		# _45,
	j	.L3		#
.L2:
# eval/problem11//code.c:12:     for (i = 0; i < len; i++) {
	sw	zero,-40(s0)	#, i
# eval/problem11//code.c:12:     for (i = 0; i < len; i++) {
	j	.L4		#
.L12:
# eval/problem11//code.c:13:         int is_palindrome = 1;
	li	a5,1		# tmp181,
	sw	a5,-32(s0)	# tmp181, is_palindrome
# eval/problem11//code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	sw	zero,-36(s0)	#, j
# eval/problem11//code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	j	.L5		#
.L8:
# eval/problem11//code.c:15:             if (str[i + j] != str[len - 1 - j]) {
	lw	a5,-40(s0)		# tmp184, i
	mv	a4,a5	# tmp183, tmp184
	lw	a5,-36(s0)		# tmp186, j
	addw	a5,a4,a5	# tmp185, tmp182, tmp183
	sext.w	a5,a5	# _5, tmp182
	mv	a4,a5	# _6, _5
# eval/problem11//code.c:15:             if (str[i + j] != str[len - 1 - j]) {
	ld	a5,-56(s0)		# tmp187, str
	add	a5,a5,a4	# _6, _7, tmp187
	lbu	a4,0(a5)	# _8, *_7
# eval/problem11//code.c:15:             if (str[i + j] != str[len - 1 - j]) {
	lw	a5,-28(s0)		# tmp190, len
	addiw	a5,a5,-1	#, tmp188, tmp189
	sext.w	a5,a5	# _9, tmp188
# eval/problem11//code.c:15:             if (str[i + j] != str[len - 1 - j]) {
	lw	a3,-36(s0)		# tmp193, j
	subw	a5,a5,a3	# tmp191, _9, tmp192
	sext.w	a5,a5	# _10, tmp191
	mv	a3,a5	# _11, _10
# eval/problem11//code.c:15:             if (str[i + j] != str[len - 1 - j]) {
	ld	a5,-56(s0)		# tmp194, str
	add	a5,a5,a3	# _11, _12, tmp194
	lbu	a5,0(a5)	# _13, *_12
# eval/problem11//code.c:15:             if (str[i + j] != str[len - 1 - j]) {
	beq	a4,a5,.L6	#, tmp195, tmp196,
# eval/problem11//code.c:16:                 is_palindrome = 0;
	sw	zero,-32(s0)	#, is_palindrome
# eval/problem11//code.c:17:                 break;
	j	.L7		#
.L6:
# eval/problem11//code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	lw	a5,-36(s0)		# tmp199, j
	addiw	a5,a5,1	#, tmp197, tmp198
	sw	a5,-36(s0)	# tmp197, j
.L5:
# eval/problem11//code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	lw	a5,-28(s0)		# tmp202, len
	mv	a4,a5	# tmp201, tmp202
	lw	a5,-40(s0)		# tmp204, i
	subw	a5,a4,a5	# tmp200, tmp201, tmp203
	sext.w	a5,a5	# _14, tmp200
# eval/problem11//code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	srliw	a4,a5,31	#, tmp207, tmp206
	addw	a5,a4,a5	# tmp206, tmp208, tmp207
	sraiw	a5,a5,1	#, tmp209, tmp208
	sext.w	a4,a5	# _15, tmp209
# eval/problem11//code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	lw	a5,-36(s0)		# tmp211, j
	sext.w	a5,a5	# tmp212, tmp210
	blt	a5,a4,.L8	#, tmp212, tmp213,
.L7:
# eval/problem11//code.c:20:         if (is_palindrome) {
	lw	a5,-32(s0)		# tmp215, is_palindrome
	sext.w	a5,a5	# tmp216, tmp214
	beq	a5,zero,.L9	#, tmp216,,
# eval/problem11//code.c:21:             strncpy(result, str, len);
	lw	a5,-28(s0)		# _16, len
	mv	a2,a5	#, _16
	ld	a1,-56(s0)		#, str
	ld	a0,-24(s0)		#, result
	call	strncpy@plt	#
# eval/problem11//code.c:22:             for (j = 0; j < i; j++) {
	sw	zero,-36(s0)	#, j
# eval/problem11//code.c:22:             for (j = 0; j < i; j++) {
	j	.L10		#
.L11:
# eval/problem11//code.c:23:                 result[len + j] = str[i - j - 1];
	lw	a5,-40(s0)		# tmp219, i
	mv	a4,a5	# tmp218, tmp219
	lw	a5,-36(s0)		# tmp221, j
	subw	a5,a4,a5	# tmp217, tmp218, tmp220
	sext.w	a5,a5	# _17, tmp217
# eval/problem11//code.c:23:                 result[len + j] = str[i - j - 1];
	addi	a5,a5,-1	#, _19, _18
	ld	a4,-56(s0)		# tmp222, str
	add	a4,a4,a5	# _19, _20, tmp222
# eval/problem11//code.c:23:                 result[len + j] = str[i - j - 1];
	lw	a5,-28(s0)		# tmp225, len
	mv	a3,a5	# tmp224, tmp225
	lw	a5,-36(s0)		# tmp227, j
	addw	a5,a3,a5	# tmp226, tmp223, tmp224
	sext.w	a5,a5	# _21, tmp223
	mv	a3,a5	# _22, _21
# eval/problem11//code.c:23:                 result[len + j] = str[i - j - 1];
	ld	a5,-24(s0)		# tmp228, result
	add	a5,a5,a3	# _22, _23, tmp228
# eval/problem11//code.c:23:                 result[len + j] = str[i - j - 1];
	lbu	a4,0(a4)	# _24, *_20
# eval/problem11//code.c:23:                 result[len + j] = str[i - j - 1];
	sb	a4,0(a5)	# _24, *_23
# eval/problem11//code.c:22:             for (j = 0; j < i; j++) {
	lw	a5,-36(s0)		# tmp231, j
	addiw	a5,a5,1	#, tmp229, tmp230
	sw	a5,-36(s0)	# tmp229, j
.L10:
# eval/problem11//code.c:22:             for (j = 0; j < i; j++) {
	lw	a5,-36(s0)		# tmp233, j
	mv	a4,a5	# tmp232, tmp233
	lw	a5,-40(s0)		# tmp235, i
	sext.w	a4,a4	# tmp236, tmp232
	sext.w	a5,a5	# tmp237, tmp234
	blt	a4,a5,.L11	#, tmp236, tmp237,
# eval/problem11//code.c:25:             result[len + i] = '\0';
	lw	a5,-28(s0)		# tmp240, len
	mv	a4,a5	# tmp239, tmp240
	lw	a5,-40(s0)		# tmp242, i
	addw	a5,a4,a5	# tmp241, tmp238, tmp239
	sext.w	a5,a5	# _25, tmp238
	mv	a4,a5	# _26, _25
# eval/problem11//code.c:25:             result[len + i] = '\0';
	ld	a5,-24(s0)		# tmp243, result
	add	a5,a5,a4	# _26, _27, tmp243
# eval/problem11//code.c:25:             result[len + i] = '\0';
	sb	zero,0(a5)	#, *_27
# eval/problem11//code.c:26:             return result;
	ld	a5,-24(s0)		# _45, result
	j	.L3		#
.L9:
# eval/problem11//code.c:12:     for (i = 0; i < len; i++) {
	lw	a5,-40(s0)		# tmp246, i
	addiw	a5,a5,1	#, tmp244, tmp245
	sw	a5,-40(s0)	# tmp244, i
.L4:
# eval/problem11//code.c:12:     for (i = 0; i < len; i++) {
	lw	a5,-40(s0)		# tmp248, i
	mv	a4,a5	# tmp247, tmp248
	lw	a5,-28(s0)		# tmp250, len
	sext.w	a4,a4	# tmp251, tmp247
	sext.w	a5,a5	# tmp252, tmp249
	blt	a4,a5,.L12	#, tmp251, tmp252,
# eval/problem11//code.c:30:     strncpy(result, str, len);
	lw	a5,-28(s0)		# _28, len
	mv	a2,a5	#, _28
	ld	a1,-56(s0)		#, str
	ld	a0,-24(s0)		#, result
	call	strncpy@plt	#
# eval/problem11//code.c:31:     for (j = 0; j < len; j++) {
	sw	zero,-36(s0)	#, j
# eval/problem11//code.c:31:     for (j = 0; j < len; j++) {
	j	.L13		#
.L14:
# eval/problem11//code.c:32:         result[len + j] = str[len - j - 1];
	lw	a5,-28(s0)		# tmp255, len
	mv	a4,a5	# tmp254, tmp255
	lw	a5,-36(s0)		# tmp257, j
	subw	a5,a4,a5	# tmp253, tmp254, tmp256
	sext.w	a5,a5	# _29, tmp253
# eval/problem11//code.c:32:         result[len + j] = str[len - j - 1];
	addi	a5,a5,-1	#, _31, _30
	ld	a4,-56(s0)		# tmp258, str
	add	a4,a4,a5	# _31, _32, tmp258
# eval/problem11//code.c:32:         result[len + j] = str[len - j - 1];
	lw	a5,-28(s0)		# tmp261, len
	mv	a3,a5	# tmp260, tmp261
	lw	a5,-36(s0)		# tmp263, j
	addw	a5,a3,a5	# tmp262, tmp259, tmp260
	sext.w	a5,a5	# _33, tmp259
	mv	a3,a5	# _34, _33
# eval/problem11//code.c:32:         result[len + j] = str[len - j - 1];
	ld	a5,-24(s0)		# tmp264, result
	add	a5,a5,a3	# _34, _35, tmp264
# eval/problem11//code.c:32:         result[len + j] = str[len - j - 1];
	lbu	a4,0(a4)	# _36, *_32
# eval/problem11//code.c:32:         result[len + j] = str[len - j - 1];
	sb	a4,0(a5)	# _36, *_35
# eval/problem11//code.c:31:     for (j = 0; j < len; j++) {
	lw	a5,-36(s0)		# tmp267, j
	addiw	a5,a5,1	#, tmp265, tmp266
	sw	a5,-36(s0)	# tmp265, j
.L13:
# eval/problem11//code.c:31:     for (j = 0; j < len; j++) {
	lw	a5,-36(s0)		# tmp269, j
	mv	a4,a5	# tmp268, tmp269
	lw	a5,-28(s0)		# tmp271, len
	sext.w	a4,a4	# tmp272, tmp268
	sext.w	a5,a5	# tmp273, tmp270
	blt	a4,a5,.L14	#, tmp272, tmp273,
# eval/problem11//code.c:34:     result[2 * len] = '\0';
	lw	a5,-28(s0)		# tmp276, len
	slliw	a5,a5,1	#, tmp274, tmp275
	sext.w	a5,a5	# _37, tmp274
	mv	a4,a5	# _38, _37
# eval/problem11//code.c:34:     result[2 * len] = '\0';
	ld	a5,-24(s0)		# tmp277, result
	add	a5,a5,a4	# _38, _39, tmp277
# eval/problem11//code.c:34:     result[2 * len] = '\0';
	sb	zero,0(a5)	#, *_39
# eval/problem11//code.c:35:     return result;
	ld	a5,-24(s0)		# _45, result
.L3:
# eval/problem11//code.c:36: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
