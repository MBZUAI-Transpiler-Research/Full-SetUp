	.file	"code.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-112	#,,
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	sd	s1,88(sp)	#,
	addi	s0,sp,112	#,,
	sd	a0,-88(s0)	# s, s
	mv	a5,a1	# tmp128, n
	sd	a2,-104(s0)	# returnSize, returnSize
	sw	a5,-92(s0)	# tmp129, n
# eval/problem118//code.c:7:     const char *vowels = "aeiouAEIOU";
	lla	a5,.LC0	# tmp130,
	sd	a5,-56(s0)	# tmp130, vowels
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
	ld	a5,-48(s0)		# tmp131, length
	addi	a5,a5,1	#, _1, tmp131
	mv	a0,a5	#, _1
	call	malloc@plt	#
	mv	a5,a0	# tmp132,
	sd	a5,-40(s0)	# tmp132, current
# eval/problem118//code.c:13:     for (int i = 0; i <= length; i++) {
	sw	zero,-68(s0)	#, i
# eval/problem118//code.c:13:     for (int i = 0; i <= length; i++) {
	j	.L2		#
.L7:
# eval/problem118//code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
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
# eval/problem118//code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	bne	a5,zero,.L3	#, _12,,
# eval/problem118//code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	lw	a5,-68(s0)		# _13, i
	ld	a4,-88(s0)		# tmp136, s
	add	a5,a4,a5	# _13, _14, tmp136
	lbu	a5,0(a5)	# _15, *_14
# eval/problem118//code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	bne	a5,zero,.L4	#, _15,,
.L3:
# eval/problem118//code.c:15:             if (numc == n) {
	lw	a5,-80(s0)		# tmp138, numc
	mv	a4,a5	# tmp137, tmp138
	lw	a5,-92(s0)		# tmp140, n
	sext.w	a4,a4	# tmp141, tmp137
	sext.w	a5,a5	# tmp142, tmp139
	bne	a4,a5,.L5	#, tmp141, tmp142,
# eval/problem118//code.c:16:                 current[i - begin] = '\0';
	lw	a5,-68(s0)		# tmp145, i
	mv	a4,a5	# tmp144, tmp145
	lw	a5,-72(s0)		# tmp147, begin
	subw	a5,a4,a5	# tmp143, tmp144, tmp146
	sext.w	a5,a5	# _16, tmp143
	mv	a4,a5	# _17, _16
# eval/problem118//code.c:16:                 current[i - begin] = '\0';
	ld	a5,-40(s0)		# tmp148, current
	add	a5,a5,a4	# _17, _18, tmp148
# eval/problem118//code.c:16:                 current[i - begin] = '\0';
	sb	zero,0(a5)	#, *_18
# eval/problem118//code.c:17:                 out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
	lw	a5,-76(s0)		# tmp151, word_count
	addiw	a5,a5,1	#, tmp149, tmp150
	sext.w	a5,a5	# _19, tmp149
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
	ld	a4,-64(s0)		# tmp152, out
	add	s1,a4,a5	# _25, _26, tmp152
# eval/problem118//code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	mv	a0,a3	#, _23
	call	malloc@plt	#
	mv	a5,a0	# tmp153,
# eval/problem118//code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	sd	a5,0(s1)	# _27, *_26
# eval/problem118//code.c:19:                 strcpy(out[word_count], current);
	lw	a5,-76(s0)		# _28, word_count
	slli	a5,a5,3	#, _29, _28
	ld	a4,-64(s0)		# tmp154, out
	add	a5,a4,a5	# _29, _30, tmp154
# eval/problem118//code.c:19:                 strcpy(out[word_count], current);
	ld	a5,0(a5)		# _31, *_30
	ld	a1,-40(s0)		#, current
	mv	a0,a5	#, _31
	call	strcpy@plt	#
# eval/problem118//code.c:20:                 word_count++;
	lw	a5,-76(s0)		# tmp157, word_count
	addiw	a5,a5,1	#, tmp155, tmp156
	sw	a5,-76(s0)	# tmp155, word_count
.L5:
# eval/problem118//code.c:22:             begin = i + 1;
	lw	a5,-68(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-72(s0)	# tmp158, begin
# eval/problem118//code.c:23:             numc = 0;
	sw	zero,-80(s0)	#, numc
	j	.L6		#
.L4:
# eval/problem118//code.c:25:             current[i - begin] = s[i];
	lw	a5,-68(s0)		# _32, i
	ld	a4,-88(s0)		# tmp161, s
	add	a4,a4,a5	# _32, _33, tmp161
# eval/problem118//code.c:25:             current[i - begin] = s[i];
	lw	a5,-68(s0)		# tmp164, i
	mv	a3,a5	# tmp163, tmp164
	lw	a5,-72(s0)		# tmp166, begin
	subw	a5,a3,a5	# tmp162, tmp163, tmp165
	sext.w	a5,a5	# _34, tmp162
	mv	a3,a5	# _35, _34
# eval/problem118//code.c:25:             current[i - begin] = s[i];
	ld	a5,-40(s0)		# tmp167, current
	add	a5,a5,a3	# _35, _36, tmp167
# eval/problem118//code.c:25:             current[i - begin] = s[i];
	lbu	a4,0(a4)	# _37, *_33
# eval/problem118//code.c:25:             current[i - begin] = s[i];
	sb	a4,0(a5)	# _37, *_36
# eval/problem118//code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	lw	a5,-68(s0)		# _38, i
	ld	a4,-88(s0)		# tmp168, s
	add	a5,a4,a5	# _38, _39, tmp168
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
	ld	a3,-88(s0)		# tmp169, s
	add	a5,a3,a5	# _45, _46, tmp169
	lbu	a5,0(a5)	# _47, *_46
	slli	a5,a5,1	#, _49, _48
	add	a5,a4,a5	# _49, _50, _44
	lhu	a5,0(a5)	# _51, *_50
	sext.w	a5,a5	# _52, _51
	andi	a5,a5,1024	#, tmp170, _52
	sext.w	a5,a5	# _53, tmp170
# eval/problem118//code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	beq	a5,zero,.L6	#, _53,,
# eval/problem118//code.c:27:                 numc++;
	lw	a5,-80(s0)		# tmp173, numc
	addiw	a5,a5,1	#, tmp171, tmp172
	sw	a5,-80(s0)	# tmp171, numc
.L6:
# eval/problem118//code.c:13:     for (int i = 0; i <= length; i++) {
	lw	a5,-68(s0)		# tmp176, i
	addiw	a5,a5,1	#, tmp174, tmp175
	sw	a5,-68(s0)	# tmp174, i
.L2:
# eval/problem118//code.c:13:     for (int i = 0; i <= length; i++) {
	lw	a5,-68(s0)		# _54, i
	ld	a4,-48(s0)		# tmp177, length
	bgeu	a4,a5,.L7	#, tmp177, _54,
# eval/problem118//code.c:31:     free(current);
	ld	a0,-40(s0)		#, current
	call	free@plt	#
# eval/problem118//code.c:33:     *returnSize = word_count;
	ld	a5,-104(s0)		# tmp178, returnSize
	lw	a4,-76(s0)		# tmp179, word_count
	sw	a4,0(a5)	# tmp179, *returnSize_81(D)
# eval/problem118//code.c:34:     return out;
	ld	a5,-64(s0)		# _83, out
# eval/problem118//code.c:35: }
	mv	a0,a5	#, <retval>
	ld	ra,104(sp)		#,
	ld	s0,96(sp)		#,
	ld	s1,88(sp)		#,
	addi	sp,sp,112	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
