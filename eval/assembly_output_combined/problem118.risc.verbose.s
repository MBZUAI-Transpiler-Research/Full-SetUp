	.file	"problem118.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-112	#,,
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	sd	s1,88(sp)	#,
	addi	s0,sp,112	#,,
	sd	a0,-88(s0)	# s, s
	mv	a5,a1	# tmp128, n
	sd	a2,-104(s0)	# returnSize, returnSize
	sw	a5,-92(s0)	# tmp129, n
# problem118.c:7:     const char *vowels = "aeiouAEIOU";
	lla	a5,.LC5	# tmp130,
	sd	a5,-56(s0)	# tmp130, vowels
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
	ld	a5,-48(s0)		# tmp131, length
	addi	a5,a5,1	#, _1, tmp131
	mv	a0,a5	#, _1
	call	malloc@plt	#
	mv	a5,a0	# tmp132,
	sd	a5,-40(s0)	# tmp132, current
# problem118.c:13:     for (int i = 0; i <= length; i++) {
	sw	zero,-68(s0)	#, i
# problem118.c:13:     for (int i = 0; i <= length; i++) {
	j	.L2		#
.L7:
# problem118.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _2,
	ld	a4,0(a5)		# _3, *_2
	lw	a5,-68(s0)		# _4, i
	ld	a3,-88(s0)		# tmp133, s
	add	a5,a3,a5	# _4, _5, tmp133
	lbu	a5,0(a5)	# _6, *_5
	slli	a5,a5,1	#, _8, _7
	add	a5,a4,a5	# _8, _9, _3
	lhu	a5,0(a5)	# _10, *_9
	sext.w	a4,a5	# _11, _10
	li	a5,8192		# tmp135,
	and	a5,a4,a5	# tmp135, tmp134, _11
	sext.w	a5,a5	# _12, tmp134
# problem118.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	bne	a5,zero,.L3	#, _12,,
# problem118.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	lw	a5,-68(s0)		# _13, i
	ld	a4,-88(s0)		# tmp136, s
	add	a5,a4,a5	# _13, _14, tmp136
	lbu	a5,0(a5)	# _15, *_14
# problem118.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	bne	a5,zero,.L4	#, _15,,
.L3:
# problem118.c:15:             if (numc == n) {
	lw	a5,-80(s0)		# tmp138, numc
	mv	a4,a5	# tmp137, tmp138
	lw	a5,-92(s0)		# tmp140, n
	sext.w	a4,a4	# tmp141, tmp137
	sext.w	a5,a5	# tmp142, tmp139
	bne	a4,a5,.L5	#, tmp141, tmp142,
# problem118.c:16:                 current[i - begin] = '\0';
	lw	a5,-68(s0)		# tmp145, i
	mv	a4,a5	# tmp144, tmp145
	lw	a5,-72(s0)		# tmp147, begin
	subw	a5,a4,a5	# tmp143, tmp144, tmp146
	sext.w	a5,a5	# _16, tmp143
	mv	a4,a5	# _17, _16
# problem118.c:16:                 current[i - begin] = '\0';
	ld	a5,-40(s0)		# tmp148, current
	add	a5,a5,a4	# _17, _18, tmp148
# problem118.c:16:                 current[i - begin] = '\0';
	sb	zero,0(a5)	#, *_18
# problem118.c:17:                 out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
	lw	a5,-76(s0)		# tmp151, word_count
	addiw	a5,a5,1	#, tmp149, tmp150
	sext.w	a5,a5	# _19, tmp149
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
	ld	a4,-64(s0)		# tmp152, out
	add	s1,a4,a5	# _25, _26, tmp152
# problem118.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	mv	a0,a3	#, _23
	call	malloc@plt	#
	mv	a5,a0	# tmp153,
# problem118.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	sd	a5,0(s1)	# _27, *_26
# problem118.c:19:                 strcpy(out[word_count], current);
	lw	a5,-76(s0)		# _28, word_count
	slli	a5,a5,3	#, _29, _28
	ld	a4,-64(s0)		# tmp154, out
	add	a5,a4,a5	# _29, _30, tmp154
# problem118.c:19:                 strcpy(out[word_count], current);
	ld	a5,0(a5)		# _31, *_30
	ld	a1,-40(s0)		#, current
	mv	a0,a5	#, _31
	call	strcpy@plt	#
# problem118.c:20:                 word_count++;
	lw	a5,-76(s0)		# tmp157, word_count
	addiw	a5,a5,1	#, tmp155, tmp156
	sw	a5,-76(s0)	# tmp155, word_count
.L5:
# problem118.c:22:             begin = i + 1;
	lw	a5,-68(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-72(s0)	# tmp158, begin
# problem118.c:23:             numc = 0;
	sw	zero,-80(s0)	#, numc
	j	.L6		#
.L4:
# problem118.c:25:             current[i - begin] = s[i];
	lw	a5,-68(s0)		# _32, i
	ld	a4,-88(s0)		# tmp161, s
	add	a4,a4,a5	# _32, _33, tmp161
# problem118.c:25:             current[i - begin] = s[i];
	lw	a5,-68(s0)		# tmp164, i
	mv	a3,a5	# tmp163, tmp164
	lw	a5,-72(s0)		# tmp166, begin
	subw	a5,a3,a5	# tmp162, tmp163, tmp165
	sext.w	a5,a5	# _34, tmp162
	mv	a3,a5	# _35, _34
# problem118.c:25:             current[i - begin] = s[i];
	ld	a5,-40(s0)		# tmp167, current
	add	a5,a5,a3	# _35, _36, tmp167
# problem118.c:25:             current[i - begin] = s[i];
	lbu	a4,0(a4)	# _37, *_33
# problem118.c:25:             current[i - begin] = s[i];
	sb	a4,0(a5)	# _37, *_36
# problem118.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	lw	a5,-68(s0)		# _38, i
	ld	a4,-88(s0)		# tmp168, s
	add	a5,a4,a5	# _38, _39, tmp168
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
	ld	a3,-88(s0)		# tmp169, s
	add	a5,a3,a5	# _45, _46, tmp169
	lbu	a5,0(a5)	# _47, *_46
	slli	a5,a5,1	#, _49, _48
	add	a5,a4,a5	# _49, _50, _44
	lhu	a5,0(a5)	# _51, *_50
	sext.w	a5,a5	# _52, _51
	andi	a5,a5,1024	#, tmp170, _52
	sext.w	a5,a5	# _53, tmp170
# problem118.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	beq	a5,zero,.L6	#, _53,,
# problem118.c:27:                 numc++;
	lw	a5,-80(s0)		# tmp173, numc
	addiw	a5,a5,1	#, tmp171, tmp172
	sw	a5,-80(s0)	# tmp171, numc
.L6:
# problem118.c:13:     for (int i = 0; i <= length; i++) {
	lw	a5,-68(s0)		# tmp176, i
	addiw	a5,a5,1	#, tmp174, tmp175
	sw	a5,-68(s0)	# tmp174, i
.L2:
# problem118.c:13:     for (int i = 0; i <= length; i++) {
	lw	a5,-68(s0)		# _54, i
	ld	a4,-48(s0)		# tmp177, length
	bgeu	a4,a5,.L7	#, tmp177, _54,
# problem118.c:31:     free(current);
	ld	a0,-40(s0)		#, current
	call	free@plt	#
# problem118.c:33:     *returnSize = word_count;
	ld	a5,-104(s0)		# tmp178, returnSize
	lw	a4,-76(s0)		# tmp179, word_count
	sw	a4,0(a5)	# tmp179, *returnSize_81(D)
# problem118.c:34:     return out;
	ld	a5,-64(s0)		# _83, out
# problem118.c:35: }
	mv	a0,a5	#, <retval>
	ld	ra,104(sp)		#,
	ld	s0,96(sp)		#,
	ld	s1,88(sp)		#,
	addi	sp,sp,112	#,,
	jr	ra		#
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# a, a
	mv	a5,a1	# tmp83, aSize
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp85, bSize
	sw	a5,-44(s0)	# tmp84, aSize
	mv	a5,a4	# tmp86, tmp85
	sw	a5,-48(s0)	# tmp86, bSize
# problem118.c:45:     if (aSize != bSize) return 0;
	lw	a5,-44(s0)		# tmp88, aSize
	mv	a4,a5	# tmp87, tmp88
	lw	a5,-48(s0)		# tmp90, bSize
	sext.w	a4,a4	# tmp91, tmp87
	sext.w	a5,a5	# tmp92, tmp89
	beq	a4,a5,.L10	#, tmp91, tmp92,
# problem118.c:45:     if (aSize != bSize) return 0;
	li	a5,0		# _11,
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
	ld	a4,-40(s0)		# tmp93, a
	add	a5,a4,a5	# _2, _3, tmp93
# problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	ld	a3,0(a5)		# _4, *_3
# problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-56(s0)		# tmp94, b
	add	a5,a4,a5	# _6, _7, tmp94
# problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	ld	a5,0(a5)		# _8, *_7
	mv	a1,a5	#, _8
	mv	a0,a3	#, _4
	call	strcmp@plt	#
	mv	a5,a0	# tmp95,
# problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	beq	a5,zero,.L13	#, _9,,
# problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	li	a5,0		# _11,
	j	.L11		#
.L13:
# problem118.c:46:     for (int i = 0; i < aSize; i++) {
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L12:
# problem118.c:46:     for (int i = 0; i < aSize; i++) {
	lw	a5,-20(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-44(s0)		# tmp102, aSize
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L14	#, tmp103, tmp104,
# problem118.c:49:     return 1;
	li	a5,1		# _11,
.L11:
# problem118.c:50: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.align	1
	.globl	free_words
	.type	free_words, @function
free_words:
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# words, words
	mv	a5,a1	# tmp76, count
	sw	a5,-44(s0)	# tmp77, count
# problem118.c:53:     for (int i = 0; i < count; i++) {
	sw	zero,-20(s0)	#, i
# problem118.c:53:     for (int i = 0; i < count; i++) {
	j	.L16		#
.L17:
# problem118.c:54:         free(words[i]);
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp78, words
	add	a5,a4,a5	# _2, _3, tmp78
# problem118.c:54:         free(words[i]);
	ld	a5,0(a5)		# _4, *_3
	mv	a0,a5	#, _4
	call	free@plt	#
# problem118.c:53:     for (int i = 0; i < count; i++) {
	lw	a5,-20(s0)		# tmp81, i
	addiw	a5,a5,1	#, tmp79, tmp80
	sw	a5,-20(s0)	# tmp79, i
.L16:
# problem118.c:53:     for (int i = 0; i < count; i++) {
	lw	a5,-20(s0)		# tmp83, i
	mv	a4,a5	# tmp82, tmp83
	lw	a5,-44(s0)		# tmp85, count
	sext.w	a4,a4	# tmp86, tmp82
	sext.w	a5,a5	# tmp87, tmp84
	blt	a4,a5,.L17	#, tmp86, tmp87,
# problem118.c:56:     free(words);
	ld	a0,-40(s0)		#, words
	call	free@plt	#
# problem118.c:57: }
	nop	
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
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
	addi	sp,sp,-112	#,,
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	addi	s0,sp,112	#,,
# problem118.c:59: int main() {
	la	a5,__stack_chk_guard		# tmp93,
	ld	a4, 0(a5)	# tmp124, __stack_chk_guard
	sd	a4, -24(s0)	# tmp124, D.2812
	li	a4, 0	# tmp124
# problem118.c:63:     words = func0("Mary had a little lamb", 4, &size);
	addi	a5,s0,-108	#, tmp94,
	mv	a2,a5	#, tmp94
	li	a1,4		#,
	lla	a0,.LC6	#,
	call	func0		#
	sd	a0,-104(s0)	#, words
# problem118.c:64:     char *expected1[] = {"little"};
	lla	a5,.LC7	# tmp95,
	sd	a5,-96(s0)	# tmp95, expected1[0]
# problem118.c:65:     assert(issame(words, size, expected1, 1));
	lw	a5,-108(s0)		# size.0_1, size
	addi	a4,s0,-96	#, tmp96,
	li	a3,1		#,
	mv	a2,a4	#, tmp96
	mv	a1,a5	#, size.0_1
	ld	a0,-104(s0)		#, words
	call	issame		#
	mv	a5,a0	# tmp97,
	bne	a5,zero,.L19	#, _2,,
# problem118.c:65:     assert(issame(words, size, expected1, 1));
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
	addi	a5,s0,-108	#, tmp98,
	mv	a2,a5	#, tmp98
	li	a1,3		#,
	lla	a0,.LC6	#,
	call	func0		#
	sd	a0,-104(s0)	#, words
# problem118.c:69:     char *expected2[] = {"Mary", "lamb"};
	lla	a5,.LC10	# tmp99,
	sd	a5,-72(s0)	# tmp99, expected2[0]
	lla	a5,.LC11	# tmp100,
	sd	a5,-64(s0)	# tmp100, expected2[1]
# problem118.c:70:     assert(issame(words, size, expected2, 2));
	lw	a5,-108(s0)		# size.2_4, size
	addi	a4,s0,-72	#, tmp101,
	li	a3,2		#,
	mv	a2,a4	#, tmp101
	mv	a1,a5	#, size.2_4
	ld	a0,-104(s0)		#, words
	call	issame		#
	mv	a5,a0	# tmp102,
	bne	a5,zero,.L20	#, _5,,
# problem118.c:70:     assert(issame(words, size, expected2, 2));
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
	addi	a5,s0,-108	#, tmp103,
	mv	a2,a5	#, tmp103
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
	addi	a5,s0,-108	#, tmp104,
	mv	a2,a5	#, tmp104
	li	a1,4		#,
	lla	a0,.LC15	#,
	call	func0		#
	sd	a0,-104(s0)	#, words
# problem118.c:78:     char *expected3[] = {"world"};
	lla	a5,.LC16	# tmp105,
	sd	a5,-88(s0)	# tmp105, expected3[0]
# problem118.c:79:     assert(issame(words, size, expected3, 1));
	lw	a5,-108(s0)		# size.6_9, size
	addi	a4,s0,-88	#, tmp106,
	li	a3,1		#,
	mv	a2,a4	#, tmp106
	mv	a1,a5	#, size.6_9
	ld	a0,-104(s0)		#, words
	call	issame		#
	mv	a5,a0	# tmp107,
	bne	a5,zero,.L22	#, _10,,
# problem118.c:79:     assert(issame(words, size, expected3, 1));
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
	addi	a5,s0,-108	#, tmp108,
	mv	a2,a5	#, tmp108
	li	a1,3		#,
	lla	a0,.LC18	#,
	call	func0		#
	sd	a0,-104(s0)	#, words
# problem118.c:83:     char *expected4[] = {"Uncle"};
	lla	a5,.LC19	# tmp109,
	sd	a5,-80(s0)	# tmp109, expected4[0]
# problem118.c:84:     assert(issame(words, size, expected4, 1));
	lw	a5,-108(s0)		# size.8_12, size
	addi	a4,s0,-80	#, tmp110,
	li	a3,1		#,
	mv	a2,a4	#, tmp110
	mv	a1,a5	#, size.8_12
	ld	a0,-104(s0)		#, words
	call	issame		#
	mv	a5,a0	# tmp111,
	bne	a5,zero,.L23	#, _13,,
# problem118.c:84:     assert(issame(words, size, expected4, 1));
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
	addi	a5,s0,-108	#, tmp112,
	mv	a2,a5	#, tmp112
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
	addi	a5,s0,-108	#, tmp113,
	mv	a2,a5	#, tmp113
	li	a1,1		#,
	lla	a0,.LC22	#,
	call	func0		#
	sd	a0,-104(s0)	#, words
# problem118.c:92:     char *expected5[] = {"b", "c", "d", "f"};
	lla	a5,.LC23	# tmp114,
	ld	a2,0(a5)		# tmp115,
	ld	a3,8(a5)		# tmp116,
	ld	a4,16(a5)		# tmp117,
	ld	a5,24(a5)		# tmp118,
	sd	a2,-56(s0)	# tmp115, expected5
	sd	a3,-48(s0)	# tmp116, expected5
	sd	a4,-40(s0)	# tmp117, expected5
	sd	a5,-32(s0)	# tmp118, expected5
# problem118.c:93:     assert(issame(words, size, expected5, 4));
	lw	a5,-108(s0)		# size.12_17, size
	addi	a4,s0,-56	#, tmp119,
	li	a3,4		#,
	mv	a2,a4	#, tmp119
	mv	a1,a5	#, size.12_17
	ld	a0,-104(s0)		#, words
	call	issame		#
	mv	a5,a0	# tmp120,
	bne	a5,zero,.L25	#, _18,,
# problem118.c:93:     assert(issame(words, size, expected5, 4));
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
	la	a5,__stack_chk_guard		# tmp122,
	ld	a3, -24(s0)	# tmp125, D.2812
	ld	a5, 0(a5)	# tmp123, __stack_chk_guard
	xor	a5, a3, a5	# tmp123, tmp125
	li	a3, 0	# tmp125
	beq	a5,zero,.L27	#, tmp123,,
	call	__stack_chk_fail@plt	#
.L27:
	mv	a0,a4	#, <retval>
	ld	ra,104(sp)		#,
	ld	s0,96(sp)		#,
	addi	sp,sp,112	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
