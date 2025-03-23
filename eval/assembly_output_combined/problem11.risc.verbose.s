	.file	"problem11.c"
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
# problem11.c:6:     int len = strlen(str), i, j;
	ld	a0,-56(s0)		#, str
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem11.c:6:     int len = strlen(str), i, j;
	sw	a5,-28(s0)	# _1, len
# problem11.c:7:     char *result = (char *)malloc(2 * len + 1);
	lw	a5,-28(s0)		# tmp177, len
	slliw	a5,a5,1	#, tmp175, tmp176
	sext.w	a5,a5	# _2, tmp175
# problem11.c:7:     char *result = (char *)malloc(2 * len + 1);
	addiw	a5,a5,1	#, tmp178, _2
	sext.w	a5,a5	# _3, tmp178
# problem11.c:7:     char *result = (char *)malloc(2 * len + 1);
	mv	a0,a5	#, _4
	call	malloc@plt	#
	mv	a5,a0	# tmp179,
	sd	a5,-24(s0)	# tmp179, result
# problem11.c:8:     if (!result) {
	ld	a5,-24(s0)		# tmp180, result
	bne	a5,zero,.L2	#, tmp180,,
# problem11.c:9:         return NULL; 
	li	a5,0		# _45,
	j	.L3		#
.L2:
# problem11.c:12:     for (i = 0; i < len; i++) {
	sw	zero,-40(s0)	#, i
# problem11.c:12:     for (i = 0; i < len; i++) {
	j	.L4		#
.L12:
# problem11.c:13:         int is_palindrome = 1;
	li	a5,1		# tmp181,
	sw	a5,-32(s0)	# tmp181, is_palindrome
# problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	sw	zero,-36(s0)	#, j
# problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	j	.L5		#
.L8:
# problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	lw	a5,-40(s0)		# tmp184, i
	mv	a4,a5	# tmp183, tmp184
	lw	a5,-36(s0)		# tmp186, j
	addw	a5,a4,a5	# tmp185, tmp182, tmp183
	sext.w	a5,a5	# _5, tmp182
	mv	a4,a5	# _6, _5
# problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	ld	a5,-56(s0)		# tmp187, str
	add	a5,a5,a4	# _6, _7, tmp187
	lbu	a4,0(a5)	# _8, *_7
# problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	lw	a5,-28(s0)		# tmp190, len
	addiw	a5,a5,-1	#, tmp188, tmp189
	sext.w	a5,a5	# _9, tmp188
# problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	lw	a3,-36(s0)		# tmp193, j
	subw	a5,a5,a3	# tmp191, _9, tmp192
	sext.w	a5,a5	# _10, tmp191
	mv	a3,a5	# _11, _10
# problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	ld	a5,-56(s0)		# tmp194, str
	add	a5,a5,a3	# _11, _12, tmp194
	lbu	a5,0(a5)	# _13, *_12
# problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	beq	a4,a5,.L6	#, tmp195, tmp196,
# problem11.c:16:                 is_palindrome = 0;
	sw	zero,-32(s0)	#, is_palindrome
# problem11.c:17:                 break;
	j	.L7		#
.L6:
# problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	lw	a5,-36(s0)		# tmp199, j
	addiw	a5,a5,1	#, tmp197, tmp198
	sw	a5,-36(s0)	# tmp197, j
.L5:
# problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	lw	a5,-28(s0)		# tmp202, len
	mv	a4,a5	# tmp201, tmp202
	lw	a5,-40(s0)		# tmp204, i
	subw	a5,a4,a5	# tmp200, tmp201, tmp203
	sext.w	a5,a5	# _14, tmp200
# problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	srliw	a4,a5,31	#, tmp207, tmp206
	addw	a5,a4,a5	# tmp206, tmp208, tmp207
	sraiw	a5,a5,1	#, tmp209, tmp208
	sext.w	a4,a5	# _15, tmp209
# problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	lw	a5,-36(s0)		# tmp211, j
	sext.w	a5,a5	# tmp212, tmp210
	blt	a5,a4,.L8	#, tmp212, tmp213,
.L7:
# problem11.c:20:         if (is_palindrome) {
	lw	a5,-32(s0)		# tmp215, is_palindrome
	sext.w	a5,a5	# tmp216, tmp214
	beq	a5,zero,.L9	#, tmp216,,
# problem11.c:21:             strncpy(result, str, len);
	lw	a5,-28(s0)		# _16, len
	mv	a2,a5	#, _16
	ld	a1,-56(s0)		#, str
	ld	a0,-24(s0)		#, result
	call	strncpy@plt	#
# problem11.c:22:             for (j = 0; j < i; j++) {
	sw	zero,-36(s0)	#, j
# problem11.c:22:             for (j = 0; j < i; j++) {
	j	.L10		#
.L11:
# problem11.c:23:                 result[len + j] = str[i - j - 1];
	lw	a5,-40(s0)		# tmp219, i
	mv	a4,a5	# tmp218, tmp219
	lw	a5,-36(s0)		# tmp221, j
	subw	a5,a4,a5	# tmp217, tmp218, tmp220
	sext.w	a5,a5	# _17, tmp217
# problem11.c:23:                 result[len + j] = str[i - j - 1];
	addi	a5,a5,-1	#, _19, _18
	ld	a4,-56(s0)		# tmp222, str
	add	a4,a4,a5	# _19, _20, tmp222
# problem11.c:23:                 result[len + j] = str[i - j - 1];
	lw	a5,-28(s0)		# tmp225, len
	mv	a3,a5	# tmp224, tmp225
	lw	a5,-36(s0)		# tmp227, j
	addw	a5,a3,a5	# tmp226, tmp223, tmp224
	sext.w	a5,a5	# _21, tmp223
	mv	a3,a5	# _22, _21
# problem11.c:23:                 result[len + j] = str[i - j - 1];
	ld	a5,-24(s0)		# tmp228, result
	add	a5,a5,a3	# _22, _23, tmp228
# problem11.c:23:                 result[len + j] = str[i - j - 1];
	lbu	a4,0(a4)	# _24, *_20
# problem11.c:23:                 result[len + j] = str[i - j - 1];
	sb	a4,0(a5)	# _24, *_23
# problem11.c:22:             for (j = 0; j < i; j++) {
	lw	a5,-36(s0)		# tmp231, j
	addiw	a5,a5,1	#, tmp229, tmp230
	sw	a5,-36(s0)	# tmp229, j
.L10:
# problem11.c:22:             for (j = 0; j < i; j++) {
	lw	a5,-36(s0)		# tmp233, j
	mv	a4,a5	# tmp232, tmp233
	lw	a5,-40(s0)		# tmp235, i
	sext.w	a4,a4	# tmp236, tmp232
	sext.w	a5,a5	# tmp237, tmp234
	blt	a4,a5,.L11	#, tmp236, tmp237,
# problem11.c:25:             result[len + i] = '\0';
	lw	a5,-28(s0)		# tmp240, len
	mv	a4,a5	# tmp239, tmp240
	lw	a5,-40(s0)		# tmp242, i
	addw	a5,a4,a5	# tmp241, tmp238, tmp239
	sext.w	a5,a5	# _25, tmp238
	mv	a4,a5	# _26, _25
# problem11.c:25:             result[len + i] = '\0';
	ld	a5,-24(s0)		# tmp243, result
	add	a5,a5,a4	# _26, _27, tmp243
# problem11.c:25:             result[len + i] = '\0';
	sb	zero,0(a5)	#, *_27
# problem11.c:26:             return result;
	ld	a5,-24(s0)		# _45, result
	j	.L3		#
.L9:
# problem11.c:12:     for (i = 0; i < len; i++) {
	lw	a5,-40(s0)		# tmp246, i
	addiw	a5,a5,1	#, tmp244, tmp245
	sw	a5,-40(s0)	# tmp244, i
.L4:
# problem11.c:12:     for (i = 0; i < len; i++) {
	lw	a5,-40(s0)		# tmp248, i
	mv	a4,a5	# tmp247, tmp248
	lw	a5,-28(s0)		# tmp250, len
	sext.w	a4,a4	# tmp251, tmp247
	sext.w	a5,a5	# tmp252, tmp249
	blt	a4,a5,.L12	#, tmp251, tmp252,
# problem11.c:30:     strncpy(result, str, len);
	lw	a5,-28(s0)		# _28, len
	mv	a2,a5	#, _28
	ld	a1,-56(s0)		#, str
	ld	a0,-24(s0)		#, result
	call	strncpy@plt	#
# problem11.c:31:     for (j = 0; j < len; j++) {
	sw	zero,-36(s0)	#, j
# problem11.c:31:     for (j = 0; j < len; j++) {
	j	.L13		#
.L14:
# problem11.c:32:         result[len + j] = str[len - j - 1];
	lw	a5,-28(s0)		# tmp255, len
	mv	a4,a5	# tmp254, tmp255
	lw	a5,-36(s0)		# tmp257, j
	subw	a5,a4,a5	# tmp253, tmp254, tmp256
	sext.w	a5,a5	# _29, tmp253
# problem11.c:32:         result[len + j] = str[len - j - 1];
	addi	a5,a5,-1	#, _31, _30
	ld	a4,-56(s0)		# tmp258, str
	add	a4,a4,a5	# _31, _32, tmp258
# problem11.c:32:         result[len + j] = str[len - j - 1];
	lw	a5,-28(s0)		# tmp261, len
	mv	a3,a5	# tmp260, tmp261
	lw	a5,-36(s0)		# tmp263, j
	addw	a5,a3,a5	# tmp262, tmp259, tmp260
	sext.w	a5,a5	# _33, tmp259
	mv	a3,a5	# _34, _33
# problem11.c:32:         result[len + j] = str[len - j - 1];
	ld	a5,-24(s0)		# tmp264, result
	add	a5,a5,a3	# _34, _35, tmp264
# problem11.c:32:         result[len + j] = str[len - j - 1];
	lbu	a4,0(a4)	# _36, *_32
# problem11.c:32:         result[len + j] = str[len - j - 1];
	sb	a4,0(a5)	# _36, *_35
# problem11.c:31:     for (j = 0; j < len; j++) {
	lw	a5,-36(s0)		# tmp267, j
	addiw	a5,a5,1	#, tmp265, tmp266
	sw	a5,-36(s0)	# tmp265, j
.L13:
# problem11.c:31:     for (j = 0; j < len; j++) {
	lw	a5,-36(s0)		# tmp269, j
	mv	a4,a5	# tmp268, tmp269
	lw	a5,-28(s0)		# tmp271, len
	sext.w	a4,a4	# tmp272, tmp268
	sext.w	a5,a5	# tmp273, tmp270
	blt	a4,a5,.L14	#, tmp272, tmp273,
# problem11.c:34:     result[2 * len] = '\0';
	lw	a5,-28(s0)		# tmp276, len
	slliw	a5,a5,1	#, tmp274, tmp275
	sext.w	a5,a5	# _37, tmp274
	mv	a4,a5	# _38, _37
# problem11.c:34:     result[2 * len] = '\0';
	ld	a5,-24(s0)		# tmp277, result
	add	a5,a5,a4	# _38, _39, tmp277
# problem11.c:34:     result[2 * len] = '\0';
	sb	zero,0(a5)	#, *_39
# problem11.c:35:     return result;
	ld	a5,-24(s0)		# _45, result
.L3:
# problem11.c:36: }
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
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"problem11.c"
	.align	3
.LC2:
	.string	"strcmp(palindrome, \"\") == 0"
	.align	3
.LC3:
	.string	"x"
	.align	3
.LC4:
	.string	"strcmp(palindrome, \"x\") == 0"
	.align	3
.LC5:
	.string	"xyz"
	.align	3
.LC6:
	.string	"xyzyx"
	.align	3
.LC7:
	.string	"strcmp(palindrome, \"xyzyx\") == 0"
	.align	3
.LC8:
	.string	"xyx"
	.align	3
.LC9:
	.string	"strcmp(palindrome, \"xyx\") == 0"
	.align	3
.LC10:
	.string	"jerry"
	.align	3
.LC11:
	.string	"jerryrrej"
	.align	3
.LC12:
	.string	"strcmp(palindrome, \"jerryrrej\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
# problem11.c:48:     palindrome = func0("");
	lla	a0,.LC0	#,
	call	func0		#
	sd	a0,-24(s0)	#, palindrome
# problem11.c:49:     assert(strcmp(palindrome, "") == 0);
	ld	a5,-24(s0)		# tmp142, palindrome
	lbu	a5,0(a5)	# _9, MEM[(const unsigned char * {ref-all})palindrome_8]
	sext.w	a5,a5	# _1, _9
	beq	a5,zero,.L16	#, _1,,
# problem11.c:49:     assert(strcmp(palindrome, "") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,49		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L16:
# problem11.c:50:     free(palindrome);
	ld	a0,-24(s0)		#, palindrome
	call	free@plt	#
# problem11.c:53:     palindrome = func0("x");
	lla	a0,.LC3	#,
	call	func0		#
	sd	a0,-24(s0)	#, palindrome
# problem11.c:54:     assert(strcmp(palindrome, "x") == 0);
	lla	a1,.LC3	#,
	ld	a0,-24(s0)		#, palindrome
	call	strcmp@plt	#
	mv	a5,a0	# tmp143,
# problem11.c:54:     assert(strcmp(palindrome, "x") == 0);
	beq	a5,zero,.L17	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,54		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L17:
# problem11.c:55:     free(palindrome);
	ld	a0,-24(s0)		#, palindrome
	call	free@plt	#
# problem11.c:58:     palindrome = func0("xyz");
	lla	a0,.LC5	#,
	call	func0		#
	sd	a0,-24(s0)	#, palindrome
# problem11.c:59:     assert(strcmp(palindrome, "xyzyx") == 0);
	lla	a1,.LC6	#,
	ld	a0,-24(s0)		#, palindrome
	call	strcmp@plt	#
	mv	a5,a0	# tmp144,
# problem11.c:59:     assert(strcmp(palindrome, "xyzyx") == 0);
	beq	a5,zero,.L18	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,59		#,
	lla	a1,.LC1	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L18:
# problem11.c:60:     free(palindrome);
	ld	a0,-24(s0)		#, palindrome
	call	free@plt	#
# problem11.c:63:     palindrome = func0("xyx");
	lla	a0,.LC8	#,
	call	func0		#
	sd	a0,-24(s0)	#, palindrome
# problem11.c:64:     assert(strcmp(palindrome, "xyx") == 0);
	lla	a1,.LC8	#,
	ld	a0,-24(s0)		#, palindrome
	call	strcmp@plt	#
	mv	a5,a0	# tmp145,
# problem11.c:64:     assert(strcmp(palindrome, "xyx") == 0);
	beq	a5,zero,.L19	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,64		#,
	lla	a1,.LC1	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L19:
# problem11.c:65:     free(palindrome);
	ld	a0,-24(s0)		#, palindrome
	call	free@plt	#
# problem11.c:68:     palindrome = func0("jerry");
	lla	a0,.LC10	#,
	call	func0		#
	sd	a0,-24(s0)	#, palindrome
# problem11.c:69:     assert(strcmp(palindrome, "jerryrrej") == 0);
	lla	a1,.LC11	#,
	ld	a0,-24(s0)		#, palindrome
	call	strcmp@plt	#
	mv	a5,a0	# tmp146,
# problem11.c:69:     assert(strcmp(palindrome, "jerryrrej") == 0);
	beq	a5,zero,.L20	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,69		#,
	lla	a1,.LC1	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L20:
# problem11.c:70:     free(palindrome);
	ld	a0,-24(s0)		#, palindrome
	call	free@plt	#
# problem11.c:72:     return 0;
	li	a5,0		# _28,
# problem11.c:73: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	.cfi_restore 1
	ld	s0,16(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
