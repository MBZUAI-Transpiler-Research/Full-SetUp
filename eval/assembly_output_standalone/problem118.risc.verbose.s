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
	.section	.rodata
	.align	3
.LC0:
	.string	"aeiouAEIOU"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-112	#,,
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	sd	s1,88(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,112	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-88(s0)	# s, s
	mv	a5,a1	# tmp190, n
	sd	a2,-104(s0)	# returnSize, returnSize
	sw	a5,-92(s0)	# tmp191, n
# eval/problem118//code.c:7:     const char *vowels = "aeiouAEIOU";
	lla	a5,.LC0	# tmp192,
	sd	a5,-56(s0)	# tmp192, vowels
# eval/problem118//code.c:8:     char **out = NULL;
	sd	zero,-64(s0)	#, out
# eval/problem118//code.c:9:     int numc = 0, word_count = 0, begin = 0;
	sw	zero,-80(s0)	#, numc
# eval/problem118//code.c:9:     int numc = 0, word_count = 0, begin = 0;
	sw	zero,-76(s0)	#, word_count
# eval/problem118//code.c:9:     int numc = 0, word_count = 0, begin = 0;
	sw	zero,-72(s0)	#, begin
# eval/problem118//code.c:10:     size_t length = strlen(s);
	ld	a0,-88(s0)		#, s
	call	strlen@plt	#
	sd	a0,-48(s0)	#, length
# eval/problem118//code.c:11:     char *current = (char *)malloc(length + 1);
	ld	a5,-48(s0)		# tmp193, length
	addi	a5,a5,1	#, _1, tmp193
	mv	a0,a5	#, _1
	call	malloc@plt	#
	mv	a5,a0	# tmp194,
	sd	a5,-40(s0)	# tmp194, current
# eval/problem118//code.c:13:     for (int i = 0; i <= length; i++) {
	sw	zero,-68(s0)	#, i
# eval/problem118//code.c:13:     for (int i = 0; i <= length; i++) {
	j	.L2		#
.L7:
# eval/problem118//code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _2,
# eval/problem118//code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	ld	a4,0(a5)		# _3, *_2
	lw	a5,-68(s0)		# _4, i
	ld	a3,-88(s0)		# tmp195, s
	add	a5,a3,a5	# _4, _5, tmp195
	lbu	a5,0(a5)	# _6, *_5
	slli	a5,a5,1	#, _8, _7
	add	a5,a4,a5	# _8, _9, _3
	lhu	a5,0(a5)	# _10, *_9
	sext.w	a4,a5	# _11, _10
	li	a5,8192		# tmp197,
	and	a5,a4,a5	# tmp197, tmp196, _11
	sext.w	a5,a5	# _12, tmp196
# eval/problem118//code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	bne	a5,zero,.L3	#, _12,,
# eval/problem118//code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	lw	a5,-68(s0)		# _13, i
	ld	a4,-88(s0)		# tmp198, s
	add	a5,a4,a5	# _13, _14, tmp198
	lbu	a5,0(a5)	# _15, *_14
# eval/problem118//code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	bne	a5,zero,.L4	#, _15,,
.L3:
# eval/problem118//code.c:15:             if (numc == n) {
	lw	a5,-80(s0)		# tmp200, numc
	mv	a4,a5	# tmp199, tmp200
	lw	a5,-92(s0)		# tmp202, n
	sext.w	a4,a4	# tmp203, tmp199
	sext.w	a5,a5	# tmp204, tmp201
	bne	a4,a5,.L5	#, tmp203, tmp204,
# eval/problem118//code.c:16:                 current[i - begin] = '\0';
	lw	a5,-68(s0)		# tmp207, i
	mv	a4,a5	# tmp206, tmp207
	lw	a5,-72(s0)		# tmp209, begin
	subw	a5,a4,a5	# tmp205, tmp206, tmp208
	sext.w	a5,a5	# _16, tmp205
	mv	a4,a5	# _17, _16
# eval/problem118//code.c:16:                 current[i - begin] = '\0';
	ld	a5,-40(s0)		# tmp210, current
	add	a5,a5,a4	# _17, _18, tmp210
# eval/problem118//code.c:16:                 current[i - begin] = '\0';
	sb	zero,0(a5)	#, *_18
# eval/problem118//code.c:17:                 out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
	lw	a5,-76(s0)		# tmp213, word_count
	addiw	a5,a5,1	#, tmp211, tmp212
	sext.w	a5,a5	# _19, tmp211
# eval/problem118//code.c:17:                 out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
	slli	a5,a5,3	#, _21, _20
	mv	a1,a5	#, _21
	ld	a0,-64(s0)		#, out
	call	realloc@plt	#
	sd	a0,-64(s0)	#, out
# eval/problem118//code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	ld	a0,-40(s0)		#, current
	call	strlen@plt	#
	mv	a5,a0	# _22,
# eval/problem118//code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	addi	a3,a5,1	#, _23, _22
# eval/problem118//code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	lw	a5,-76(s0)		# _24, word_count
	slli	a5,a5,3	#, _25, _24
	ld	a4,-64(s0)		# tmp214, out
	add	s1,a4,a5	# _25, _26, tmp214
# eval/problem118//code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	mv	a0,a3	#, _23
	call	malloc@plt	#
	mv	a5,a0	# tmp215,
# eval/problem118//code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	sd	a5,0(s1)	# _27, *_26
# eval/problem118//code.c:19:                 strcpy(out[word_count], current);
	lw	a5,-76(s0)		# _28, word_count
	slli	a5,a5,3	#, _29, _28
	ld	a4,-64(s0)		# tmp216, out
	add	a5,a4,a5	# _29, _30, tmp216
# eval/problem118//code.c:19:                 strcpy(out[word_count], current);
	ld	a5,0(a5)		# _31, *_30
	ld	a1,-40(s0)		#, current
	mv	a0,a5	#, _31
	call	strcpy@plt	#
# eval/problem118//code.c:20:                 word_count++;
	lw	a5,-76(s0)		# tmp219, word_count
	addiw	a5,a5,1	#, tmp217, tmp218
	sw	a5,-76(s0)	# tmp217, word_count
.L5:
# eval/problem118//code.c:22:             begin = i + 1;
	lw	a5,-68(s0)		# tmp222, i
	addiw	a5,a5,1	#, tmp220, tmp221
	sw	a5,-72(s0)	# tmp220, begin
# eval/problem118//code.c:23:             numc = 0;
	sw	zero,-80(s0)	#, numc
	j	.L6		#
.L4:
# eval/problem118//code.c:25:             current[i - begin] = s[i];
	lw	a5,-68(s0)		# _32, i
	ld	a4,-88(s0)		# tmp223, s
	add	a4,a4,a5	# _32, _33, tmp223
# eval/problem118//code.c:25:             current[i - begin] = s[i];
	lw	a5,-68(s0)		# tmp226, i
	mv	a3,a5	# tmp225, tmp226
	lw	a5,-72(s0)		# tmp228, begin
	subw	a5,a3,a5	# tmp224, tmp225, tmp227
	sext.w	a5,a5	# _34, tmp224
	mv	a3,a5	# _35, _34
# eval/problem118//code.c:25:             current[i - begin] = s[i];
	ld	a5,-40(s0)		# tmp229, current
	add	a5,a5,a3	# _35, _36, tmp229
# eval/problem118//code.c:25:             current[i - begin] = s[i];
	lbu	a4,0(a4)	# _37, *_33
# eval/problem118//code.c:25:             current[i - begin] = s[i];
	sb	a4,0(a5)	# _37, *_36
# eval/problem118//code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	lw	a5,-68(s0)		# _38, i
	ld	a4,-88(s0)		# tmp230, s
	add	a5,a4,a5	# _38, _39, tmp230
	lbu	a5,0(a5)	# _40, *_39
# eval/problem118//code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	sext.w	a5,a5	# _41, _40
	mv	a1,a5	#, _41
	ld	a0,-56(s0)		#, vowels
	call	strchr@plt	#
	mv	a5,a0	# _42,
# eval/problem118//code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	bne	a5,zero,.L6	#, _42,,
# eval/problem118//code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _43,
	ld	a4,0(a5)		# _44, *_43
	lw	a5,-68(s0)		# _45, i
	ld	a3,-88(s0)		# tmp231, s
	add	a5,a3,a5	# _45, _46, tmp231
	lbu	a5,0(a5)	# _47, *_46
	slli	a5,a5,1	#, _49, _48
	add	a5,a4,a5	# _49, _50, _44
	lhu	a5,0(a5)	# _51, *_50
	sext.w	a5,a5	# _52, _51
	andi	a5,a5,1024	#, tmp232, _52
	sext.w	a5,a5	# _53, tmp232
# eval/problem118//code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	beq	a5,zero,.L6	#, _53,,
# eval/problem118//code.c:27:                 numc++;
	lw	a5,-80(s0)		# tmp235, numc
	addiw	a5,a5,1	#, tmp233, tmp234
	sw	a5,-80(s0)	# tmp233, numc
.L6:
# eval/problem118//code.c:13:     for (int i = 0; i <= length; i++) {
	lw	a5,-68(s0)		# tmp238, i
	addiw	a5,a5,1	#, tmp236, tmp237
	sw	a5,-68(s0)	# tmp236, i
.L2:
# eval/problem118//code.c:13:     for (int i = 0; i <= length; i++) {
	lw	a5,-68(s0)		# _54, i
	ld	a4,-48(s0)		# tmp239, length
	bgeu	a4,a5,.L7	#, tmp239, _54,
# eval/problem118//code.c:31:     free(current);
	ld	a0,-40(s0)		#, current
	call	free@plt	#
# eval/problem118//code.c:33:     *returnSize = word_count;
	ld	a5,-104(s0)		# tmp240, returnSize
	lw	a4,-76(s0)		# tmp241, word_count
	sw	a4,0(a5)	# tmp241, *returnSize_81(D)
# eval/problem118//code.c:34:     return out;
	ld	a5,-64(s0)		# _83, out
# eval/problem118//code.c:35: }
	mv	a0,a5	#, <retval>
	ld	ra,104(sp)		#,
	.cfi_restore 1
	ld	s0,96(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	ld	s1,88(sp)		#,
	.cfi_restore 9
	addi	sp,sp,112	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
