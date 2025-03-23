	.file	"problem118.c"
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
.LC5:
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
# problem118.c:7:     const char *vowels = "aeiouAEIOU";
	lla	a5,.LC5	# tmp192,
	sd	a5,-56(s0)	# tmp192, vowels
# problem118.c:8:     char **out = NULL;
	sd	zero,-64(s0)	#, out
# problem118.c:9:     int numc = 0, word_count = 0, begin = 0;
	sw	zero,-80(s0)	#, numc
# problem118.c:9:     int numc = 0, word_count = 0, begin = 0;
	sw	zero,-76(s0)	#, word_count
# problem118.c:9:     int numc = 0, word_count = 0, begin = 0;
	sw	zero,-72(s0)	#, begin
# problem118.c:10:     size_t length = strlen(s);
	ld	a0,-88(s0)		#, s
	call	strlen@plt	#
	sd	a0,-48(s0)	#, length
# problem118.c:11:     char *current = (char *)malloc(length + 1);
	ld	a5,-48(s0)		# tmp193, length
	addi	a5,a5,1	#, _1, tmp193
	mv	a0,a5	#, _1
	call	malloc@plt	#
	mv	a5,a0	# tmp194,
	sd	a5,-40(s0)	# tmp194, current
# problem118.c:13:     for (int i = 0; i <= length; i++) {
	sw	zero,-68(s0)	#, i
# problem118.c:13:     for (int i = 0; i <= length; i++) {
	j	.L2		#
.L7:
# problem118.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _2,
# problem118.c:14:         if (isspace(s[i]) || s[i] == '\0') {
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
# problem118.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	bne	a5,zero,.L3	#, _12,,
# problem118.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	lw	a5,-68(s0)		# _13, i
	ld	a4,-88(s0)		# tmp198, s
	add	a5,a4,a5	# _13, _14, tmp198
	lbu	a5,0(a5)	# _15, *_14
# problem118.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	bne	a5,zero,.L4	#, _15,,
.L3:
# problem118.c:15:             if (numc == n) {
	lw	a5,-80(s0)		# tmp200, numc
	mv	a4,a5	# tmp199, tmp200
	lw	a5,-92(s0)		# tmp202, n
	sext.w	a4,a4	# tmp203, tmp199
	sext.w	a5,a5	# tmp204, tmp201
	bne	a4,a5,.L5	#, tmp203, tmp204,
# problem118.c:16:                 current[i - begin] = '\0';
	lw	a5,-68(s0)		# tmp207, i
	mv	a4,a5	# tmp206, tmp207
	lw	a5,-72(s0)		# tmp209, begin
	subw	a5,a4,a5	# tmp205, tmp206, tmp208
	sext.w	a5,a5	# _16, tmp205
	mv	a4,a5	# _17, _16
# problem118.c:16:                 current[i - begin] = '\0';
	ld	a5,-40(s0)		# tmp210, current
	add	a5,a5,a4	# _17, _18, tmp210
# problem118.c:16:                 current[i - begin] = '\0';
	sb	zero,0(a5)	#, *_18
# problem118.c:17:                 out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
	lw	a5,-76(s0)		# tmp213, word_count
	addiw	a5,a5,1	#, tmp211, tmp212
	sext.w	a5,a5	# _19, tmp211
# problem118.c:17:                 out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
	slli	a5,a5,3	#, _21, _20
	mv	a1,a5	#, _21
	ld	a0,-64(s0)		#, out
	call	realloc@plt	#
	sd	a0,-64(s0)	#, out
# problem118.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	ld	a0,-40(s0)		#, current
	call	strlen@plt	#
	mv	a5,a0	# _22,
# problem118.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	addi	a3,a5,1	#, _23, _22
# problem118.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	lw	a5,-76(s0)		# _24, word_count
	slli	a5,a5,3	#, _25, _24
	ld	a4,-64(s0)		# tmp214, out
	add	s1,a4,a5	# _25, _26, tmp214
# problem118.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	mv	a0,a3	#, _23
	call	malloc@plt	#
	mv	a5,a0	# tmp215,
# problem118.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	sd	a5,0(s1)	# _27, *_26
# problem118.c:19:                 strcpy(out[word_count], current);
	lw	a5,-76(s0)		# _28, word_count
	slli	a5,a5,3	#, _29, _28
	ld	a4,-64(s0)		# tmp216, out
	add	a5,a4,a5	# _29, _30, tmp216
# problem118.c:19:                 strcpy(out[word_count], current);
	ld	a5,0(a5)		# _31, *_30
	ld	a1,-40(s0)		#, current
	mv	a0,a5	#, _31
	call	strcpy@plt	#
# problem118.c:20:                 word_count++;
	lw	a5,-76(s0)		# tmp219, word_count
	addiw	a5,a5,1	#, tmp217, tmp218
	sw	a5,-76(s0)	# tmp217, word_count
.L5:
# problem118.c:22:             begin = i + 1;
	lw	a5,-68(s0)		# tmp222, i
	addiw	a5,a5,1	#, tmp220, tmp221
	sw	a5,-72(s0)	# tmp220, begin
# problem118.c:23:             numc = 0;
	sw	zero,-80(s0)	#, numc
	j	.L6		#
.L4:
# problem118.c:25:             current[i - begin] = s[i];
	lw	a5,-68(s0)		# _32, i
	ld	a4,-88(s0)		# tmp223, s
	add	a4,a4,a5	# _32, _33, tmp223
# problem118.c:25:             current[i - begin] = s[i];
	lw	a5,-68(s0)		# tmp226, i
	mv	a3,a5	# tmp225, tmp226
	lw	a5,-72(s0)		# tmp228, begin
	subw	a5,a3,a5	# tmp224, tmp225, tmp227
	sext.w	a5,a5	# _34, tmp224
	mv	a3,a5	# _35, _34
# problem118.c:25:             current[i - begin] = s[i];
	ld	a5,-40(s0)		# tmp229, current
	add	a5,a5,a3	# _35, _36, tmp229
# problem118.c:25:             current[i - begin] = s[i];
	lbu	a4,0(a4)	# _37, *_33
# problem118.c:25:             current[i - begin] = s[i];
	sb	a4,0(a5)	# _37, *_36
# problem118.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	lw	a5,-68(s0)		# _38, i
	ld	a4,-88(s0)		# tmp230, s
	add	a5,a4,a5	# _38, _39, tmp230
	lbu	a5,0(a5)	# _40, *_39
# problem118.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	sext.w	a5,a5	# _41, _40
	mv	a1,a5	#, _41
	ld	a0,-56(s0)		#, vowels
	call	strchr@plt	#
	mv	a5,a0	# _42,
# problem118.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	bne	a5,zero,.L6	#, _42,,
# problem118.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
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
# problem118.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	beq	a5,zero,.L6	#, _53,,
# problem118.c:27:                 numc++;
	lw	a5,-80(s0)		# tmp235, numc
	addiw	a5,a5,1	#, tmp233, tmp234
	sw	a5,-80(s0)	# tmp233, numc
.L6:
# problem118.c:13:     for (int i = 0; i <= length; i++) {
	lw	a5,-68(s0)		# tmp238, i
	addiw	a5,a5,1	#, tmp236, tmp237
	sw	a5,-68(s0)	# tmp236, i
.L2:
# problem118.c:13:     for (int i = 0; i <= length; i++) {
	lw	a5,-68(s0)		# _54, i
	ld	a4,-48(s0)		# tmp239, length
	bgeu	a4,a5,.L7	#, tmp239, _54,
# problem118.c:31:     free(current);
	ld	a0,-40(s0)		#, current
	call	free@plt	#
# problem118.c:33:     *returnSize = word_count;
	ld	a5,-104(s0)		# tmp240, returnSize
	lw	a4,-76(s0)		# tmp241, word_count
	sw	a4,0(a5)	# tmp241, *returnSize_81(D)
# problem118.c:34:     return out;
	ld	a5,-64(s0)		# _83, out
# problem118.c:35: }
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
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# a, a
	mv	a5,a1	# tmp145, aSize
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp147, bSize
	sw	a5,-44(s0)	# tmp146, aSize
	mv	a5,a4	# tmp148, tmp147
	sw	a5,-48(s0)	# tmp148, bSize
# problem118.c:45:     if (aSize != bSize) return 0;
	lw	a5,-44(s0)		# tmp150, aSize
	mv	a4,a5	# tmp149, tmp150
	lw	a5,-48(s0)		# tmp152, bSize
	sext.w	a4,a4	# tmp153, tmp149
	sext.w	a5,a5	# tmp154, tmp151
	beq	a4,a5,.L10	#, tmp153, tmp154,
# problem118.c:45:     if (aSize != bSize) return 0;
	li	a5,0		# _11,
# problem118.c:45:     if (aSize != bSize) return 0;
	j	.L11		#
.L10:
# problem118.c:46:     for (int i = 0; i < aSize; i++) {
	sw	zero,-20(s0)	#, i
# problem118.c:46:     for (int i = 0; i < aSize; i++) {
	j	.L12		#
.L14:
# problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp155, a
	add	a5,a4,a5	# _2, _3, tmp155
# problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	ld	a3,0(a5)		# _4, *_3
# problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-56(s0)		# tmp156, b
	add	a5,a4,a5	# _6, _7, tmp156
# problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	ld	a5,0(a5)		# _8, *_7
	mv	a1,a5	#, _8
	mv	a0,a3	#, _4
	call	strcmp@plt	#
	mv	a5,a0	# tmp157,
# problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	beq	a5,zero,.L13	#, _9,,
# problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	li	a5,0		# _11,
# problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	j	.L11		#
.L13:
# problem118.c:46:     for (int i = 0; i < aSize; i++) {
	lw	a5,-20(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L12:
# problem118.c:46:     for (int i = 0; i < aSize; i++) {
	lw	a5,-20(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-44(s0)		# tmp164, aSize
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L14	#, tmp165, tmp166,
# problem118.c:49:     return 1;
	li	a5,1		# _11,
.L11:
# problem118.c:50: }
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
.LFE7:
	.size	issame, .-issame
	.align	1
	.globl	free_words
	.type	free_words, @function
free_words:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# words, words
	mv	a5,a1	# tmp138, count
	sw	a5,-44(s0)	# tmp139, count
# problem118.c:53:     for (int i = 0; i < count; i++) {
	sw	zero,-20(s0)	#, i
# problem118.c:53:     for (int i = 0; i < count; i++) {
	j	.L16		#
.L17:
# problem118.c:54:         free(words[i]);
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp140, words
	add	a5,a4,a5	# _2, _3, tmp140
# problem118.c:54:         free(words[i]);
	ld	a5,0(a5)		# _4, *_3
	mv	a0,a5	#, _4
	call	free@plt	#
# problem118.c:53:     for (int i = 0; i < count; i++) {
	lw	a5,-20(s0)		# tmp143, i
	addiw	a5,a5,1	#, tmp141, tmp142
	sw	a5,-20(s0)	# tmp141, i
.L16:
# problem118.c:53:     for (int i = 0; i < count; i++) {
	lw	a5,-20(s0)		# tmp145, i
	mv	a4,a5	# tmp144, tmp145
	lw	a5,-44(s0)		# tmp147, count
	sext.w	a4,a4	# tmp148, tmp144
	sext.w	a5,a5	# tmp149, tmp146
	blt	a4,a5,.L17	#, tmp148, tmp149,
# problem118.c:56:     free(words);
	ld	a0,-40(s0)		#, words
	call	free@plt	#
# problem118.c:57: }
	nop	
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE8:
	.size	free_words, .-free_words
	.section	.rodata
	.align	3
.LC6:
	.string	"Mary had a little lamb"
	.align	3
.LC7:
	.string	"little"
	.align	3
.LC8:
	.string	"problem118.c"
	.align	3
.LC9:
	.string	"issame(words, size, expected1, 1)"
	.align	3
.LC10:
	.string	"Mary"
	.align	3
.LC11:
	.string	"lamb"
	.align	3
.LC12:
	.string	"issame(words, size, expected2, 2)"
	.align	3
.LC13:
	.string	"simple white space"
	.align	3
.LC14:
	.string	"size == 0"
	.align	3
.LC15:
	.string	"Hello world"
	.align	3
.LC16:
	.string	"world"
	.align	3
.LC17:
	.string	"issame(words, size, expected3, 1)"
	.align	3
.LC18:
	.string	"Uncle sam"
	.align	3
.LC19:
	.string	"Uncle"
	.align	3
.LC20:
	.string	"issame(words, size, expected4, 1)"
	.align	3
.LC21:
	.string	""
	.align	3
.LC22:
	.string	"a b c d e f"
	.align	3
.LC24:
	.string	"issame(words, size, expected5, 4)"
	.align	3
.LC0:
	.string	"b"
	.align	3
.LC1:
	.string	"c"
	.align	3
.LC2:
	.string	"d"
	.align	3
.LC3:
	.string	"f"
	.data
	.align	3
.LC23:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB9:
	.cfi_startproc
	addi	sp,sp,-112	#,,
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,112	#,,
	.cfi_def_cfa 8, 0
# problem118.c:59: int main() {
	la	a5,__stack_chk_guard		# tmp155,
	ld	a4, 0(a5)	# tmp186, __stack_chk_guard
	sd	a4, -24(s0)	# tmp186, D.3664
	li	a4, 0	# tmp186
# problem118.c:63:     words = func0("Mary had a little lamb", 4, &size);
	addi	a5,s0,-108	#, tmp156,
	mv	a2,a5	#, tmp156
	li	a1,4		#,
	lla	a0,.LC6	#,
	call	func0		#
	sd	a0,-104(s0)	#, words
# problem118.c:64:     char *expected1[] = {"little"};
	lla	a5,.LC7	# tmp157,
	sd	a5,-96(s0)	# tmp157, expected1[0]
# problem118.c:65:     assert(issame(words, size, expected1, 1));
	lw	a5,-108(s0)		# size.0_1, size
	addi	a4,s0,-96	#, tmp158,
	li	a3,1		#,
	mv	a2,a4	#, tmp158
	mv	a1,a5	#, size.0_1
	ld	a0,-104(s0)		#, words
	call	issame		#
	mv	a5,a0	# tmp159,
# problem118.c:65:     assert(issame(words, size, expected1, 1));
	bne	a5,zero,.L19	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,65		#,
	lla	a1,.LC8	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L19:
# problem118.c:66:     free_words(words, size);
	lw	a5,-108(s0)		# size.1_3, size
	mv	a1,a5	#, size.1_3
	ld	a0,-104(s0)		#, words
	call	free_words		#
# problem118.c:68:     words = func0("Mary had a little lamb", 3, &size);
	addi	a5,s0,-108	#, tmp160,
	mv	a2,a5	#, tmp160
	li	a1,3		#,
	lla	a0,.LC6	#,
	call	func0		#
	sd	a0,-104(s0)	#, words
# problem118.c:69:     char *expected2[] = {"Mary", "lamb"};
	lla	a5,.LC10	# tmp161,
	sd	a5,-72(s0)	# tmp161, expected2[0]
	lla	a5,.LC11	# tmp162,
	sd	a5,-64(s0)	# tmp162, expected2[1]
# problem118.c:70:     assert(issame(words, size, expected2, 2));
	lw	a5,-108(s0)		# size.2_4, size
	addi	a4,s0,-72	#, tmp163,
	li	a3,2		#,
	mv	a2,a4	#, tmp163
	mv	a1,a5	#, size.2_4
	ld	a0,-104(s0)		#, words
	call	issame		#
	mv	a5,a0	# tmp164,
# problem118.c:70:     assert(issame(words, size, expected2, 2));
	bne	a5,zero,.L20	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,70		#,
	lla	a1,.LC8	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L20:
# problem118.c:71:     free_words(words, size);
	lw	a5,-108(s0)		# size.3_6, size
	mv	a1,a5	#, size.3_6
	ld	a0,-104(s0)		#, words
	call	free_words		#
# problem118.c:73:     words = func0("simple white space", 2, &size);
	addi	a5,s0,-108	#, tmp165,
	mv	a2,a5	#, tmp165
	li	a1,2		#,
	lla	a0,.LC13	#,
	call	func0		#
	sd	a0,-104(s0)	#, words
# problem118.c:74:     assert(size == 0);
	lw	a5,-108(s0)		# size.4_7, size
	beq	a5,zero,.L21	#, size.4_7,,
# problem118.c:74:     assert(size == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,74		#,
	lla	a1,.LC8	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L21:
# problem118.c:75:     free_words(words, size);
	lw	a5,-108(s0)		# size.5_8, size
	mv	a1,a5	#, size.5_8
	ld	a0,-104(s0)		#, words
	call	free_words		#
# problem118.c:77:     words = func0("Hello world", 4, &size);
	addi	a5,s0,-108	#, tmp166,
	mv	a2,a5	#, tmp166
	li	a1,4		#,
	lla	a0,.LC15	#,
	call	func0		#
	sd	a0,-104(s0)	#, words
# problem118.c:78:     char *expected3[] = {"world"};
	lla	a5,.LC16	# tmp167,
	sd	a5,-88(s0)	# tmp167, expected3[0]
# problem118.c:79:     assert(issame(words, size, expected3, 1));
	lw	a5,-108(s0)		# size.6_9, size
	addi	a4,s0,-88	#, tmp168,
	li	a3,1		#,
	mv	a2,a4	#, tmp168
	mv	a1,a5	#, size.6_9
	ld	a0,-104(s0)		#, words
	call	issame		#
	mv	a5,a0	# tmp169,
# problem118.c:79:     assert(issame(words, size, expected3, 1));
	bne	a5,zero,.L22	#, _10,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,79		#,
	lla	a1,.LC8	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L22:
# problem118.c:80:     free_words(words, size);
	lw	a5,-108(s0)		# size.7_11, size
	mv	a1,a5	#, size.7_11
	ld	a0,-104(s0)		#, words
	call	free_words		#
# problem118.c:82:     words = func0("Uncle sam", 3, &size);
	addi	a5,s0,-108	#, tmp170,
	mv	a2,a5	#, tmp170
	li	a1,3		#,
	lla	a0,.LC18	#,
	call	func0		#
	sd	a0,-104(s0)	#, words
# problem118.c:83:     char *expected4[] = {"Uncle"};
	lla	a5,.LC19	# tmp171,
	sd	a5,-80(s0)	# tmp171, expected4[0]
# problem118.c:84:     assert(issame(words, size, expected4, 1));
	lw	a5,-108(s0)		# size.8_12, size
	addi	a4,s0,-80	#, tmp172,
	li	a3,1		#,
	mv	a2,a4	#, tmp172
	mv	a1,a5	#, size.8_12
	ld	a0,-104(s0)		#, words
	call	issame		#
	mv	a5,a0	# tmp173,
# problem118.c:84:     assert(issame(words, size, expected4, 1));
	bne	a5,zero,.L23	#, _13,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,84		#,
	lla	a1,.LC8	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L23:
# problem118.c:85:     free_words(words, size);
	lw	a5,-108(s0)		# size.9_14, size
	mv	a1,a5	#, size.9_14
	ld	a0,-104(s0)		#, words
	call	free_words		#
# problem118.c:87:     words = func0("", 4, &size);
	addi	a5,s0,-108	#, tmp174,
	mv	a2,a5	#, tmp174
	li	a1,4		#,
	lla	a0,.LC21	#,
	call	func0		#
	sd	a0,-104(s0)	#, words
# problem118.c:88:     assert(size == 0);
	lw	a5,-108(s0)		# size.10_15, size
	beq	a5,zero,.L24	#, size.10_15,,
# problem118.c:88:     assert(size == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,88		#,
	lla	a1,.LC8	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L24:
# problem118.c:89:     free_words(words, size);
	lw	a5,-108(s0)		# size.11_16, size
	mv	a1,a5	#, size.11_16
	ld	a0,-104(s0)		#, words
	call	free_words		#
# problem118.c:91:     words = func0("a b c d e f", 1, &size);
	addi	a5,s0,-108	#, tmp175,
	mv	a2,a5	#, tmp175
	li	a1,1		#,
	lla	a0,.LC22	#,
	call	func0		#
	sd	a0,-104(s0)	#, words
# problem118.c:92:     char *expected5[] = {"b", "c", "d", "f"};
	lla	a5,.LC23	# tmp176,
	ld	a2,0(a5)		# tmp177,
	ld	a3,8(a5)		# tmp178,
	ld	a4,16(a5)		# tmp179,
	ld	a5,24(a5)		# tmp180,
	sd	a2,-56(s0)	# tmp177, expected5
	sd	a3,-48(s0)	# tmp178, expected5
	sd	a4,-40(s0)	# tmp179, expected5
	sd	a5,-32(s0)	# tmp180, expected5
# problem118.c:93:     assert(issame(words, size, expected5, 4));
	lw	a5,-108(s0)		# size.12_17, size
	addi	a4,s0,-56	#, tmp181,
	li	a3,4		#,
	mv	a2,a4	#, tmp181
	mv	a1,a5	#, size.12_17
	ld	a0,-104(s0)		#, words
	call	issame		#
	mv	a5,a0	# tmp182,
# problem118.c:93:     assert(issame(words, size, expected5, 4));
	bne	a5,zero,.L25	#, _18,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,93		#,
	lla	a1,.LC8	#,
	lla	a0,.LC24	#,
	call	__assert_fail@plt	#
.L25:
# problem118.c:94:     free_words(words, size);
	lw	a5,-108(s0)		# size.13_19, size
	mv	a1,a5	#, size.13_19
	ld	a0,-104(s0)		#, words
	call	free_words		#
# problem118.c:96:     return 0;
	li	a5,0		# _60,
# problem118.c:97: }
	mv	a4,a5	# <retval>, _60
	la	a5,__stack_chk_guard		# tmp184,
	ld	a3, -24(s0)	# tmp187, D.3664
	ld	a5, 0(a5)	# tmp185, __stack_chk_guard
	xor	a5, a3, a5	# tmp185, tmp187
	li	a3, 0	# tmp187
	beq	a5,zero,.L27	#, tmp185,,
	call	__stack_chk_fail@plt	#
.L27:
	mv	a0,a4	#, <retval>
	ld	ra,104(sp)		#,
	.cfi_restore 1
	ld	s0,96(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
