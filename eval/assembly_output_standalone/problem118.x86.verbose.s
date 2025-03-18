	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"aeiouAEIOU"
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# s, s
	movl	%esi, -76(%rbp)	# n, n
	movq	%rdx, -88(%rbp)	# returnSize, returnSize
# eval/problem118//code.c:7:     const char *vowels = "aeiouAEIOU";
	leaq	.LC0(%rip), %rax	#, tmp139
	movq	%rax, -40(%rbp)	# tmp139, vowels
# eval/problem118//code.c:8:     char **out = NULL;
	movq	$0, -48(%rbp)	#, out
# eval/problem118//code.c:9:     int numc = 0, word_count = 0, begin = 0;
	movl	$0, -64(%rbp)	#, numc
# eval/problem118//code.c:9:     int numc = 0, word_count = 0, begin = 0;
	movl	$0, -60(%rbp)	#, word_count
# eval/problem118//code.c:9:     int numc = 0, word_count = 0, begin = 0;
	movl	$0, -56(%rbp)	#, begin
# eval/problem118//code.c:10:     size_t length = strlen(s);
	movq	-72(%rbp), %rax	# s, tmp140
	movq	%rax, %rdi	# tmp140,
	call	strlen@PLT	#
	movq	%rax, -32(%rbp)	# tmp141, length
# eval/problem118//code.c:11:     char *current = (char *)malloc(length + 1);
	movq	-32(%rbp), %rax	# length, tmp142
	addq	$1, %rax	#, _1
	movq	%rax, %rdi	# _1,
	call	malloc@PLT	#
	movq	%rax, -24(%rbp)	# tmp143, current
# eval/problem118//code.c:13:     for (int i = 0; i <= length; i++) {
	movl	$0, -52(%rbp)	#, i
# eval/problem118//code.c:13:     for (int i = 0; i <= length; i++) {
	jmp	.L2	#
.L7:
# eval/problem118//code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	call	__ctype_b_loc@PLT	#
# eval/problem118//code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	movq	(%rax), %rax	# *_2, _3
	movl	-52(%rbp), %edx	# i, tmp144
	movslq	%edx, %rcx	# tmp144, _4
	movq	-72(%rbp), %rdx	# s, tmp145
	addq	%rcx, %rdx	# _4, _5
	movzbl	(%rdx), %edx	# *_5, _6
	movsbq	%dl, %rdx	# _6, _7
	addq	%rdx, %rdx	# _8
	addq	%rdx, %rax	# _8, _9
	movzwl	(%rax), %eax	# *_9, _10
	movzwl	%ax, %eax	# _10, _11
	andl	$8192, %eax	#, _12
# eval/problem118//code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	testl	%eax, %eax	# _12
	jne	.L3	#,
# eval/problem118//code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	movl	-52(%rbp), %eax	# i, tmp146
	movslq	%eax, %rdx	# tmp146, _13
	movq	-72(%rbp), %rax	# s, tmp147
	addq	%rdx, %rax	# _13, _14
	movzbl	(%rax), %eax	# *_14, _15
# eval/problem118//code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	testb	%al, %al	# _15
	jne	.L4	#,
.L3:
# eval/problem118//code.c:15:             if (numc == n) {
	movl	-64(%rbp), %eax	# numc, tmp148
	cmpl	-76(%rbp), %eax	# n, tmp148
	jne	.L5	#,
# eval/problem118//code.c:16:                 current[i - begin] = '\0';
	movl	-52(%rbp), %eax	# i, tmp149
	subl	-56(%rbp), %eax	# begin, _16
	movslq	%eax, %rdx	# _16, _17
# eval/problem118//code.c:16:                 current[i - begin] = '\0';
	movq	-24(%rbp), %rax	# current, tmp150
	addq	%rdx, %rax	# _17, _18
# eval/problem118//code.c:16:                 current[i - begin] = '\0';
	movb	$0, (%rax)	#, *_18
# eval/problem118//code.c:17:                 out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
	movl	-60(%rbp), %eax	# word_count, tmp151
	addl	$1, %eax	#, _19
	cltq
# eval/problem118//code.c:17:                 out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
	leaq	0(,%rax,8), %rdx	#, _21
	movq	-48(%rbp), %rax	# out, tmp152
	movq	%rdx, %rsi	# _21,
	movq	%rax, %rdi	# tmp152,
	call	realloc@PLT	#
	movq	%rax, -48(%rbp)	# tmp153, out
# eval/problem118//code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	movq	-24(%rbp), %rax	# current, tmp154
	movq	%rax, %rdi	# tmp154,
	call	strlen@PLT	#
# eval/problem118//code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	addq	$1, %rax	#, _23
# eval/problem118//code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	movl	-60(%rbp), %edx	# word_count, tmp155
	movslq	%edx, %rdx	# tmp155, _24
	leaq	0(,%rdx,8), %rcx	#, _25
	movq	-48(%rbp), %rdx	# out, tmp156
	leaq	(%rcx,%rdx), %rbx	#, _26
# eval/problem118//code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	movq	%rax, %rdi	# _23,
	call	malloc@PLT	#
# eval/problem118//code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	movq	%rax, (%rbx)	# _27, *_26
# eval/problem118//code.c:19:                 strcpy(out[word_count], current);
	movl	-60(%rbp), %eax	# word_count, tmp158
	cltq
	leaq	0(,%rax,8), %rdx	#, _29
	movq	-48(%rbp), %rax	# out, tmp159
	addq	%rdx, %rax	# _29, _30
# eval/problem118//code.c:19:                 strcpy(out[word_count], current);
	movq	(%rax), %rax	# *_30, _31
	movq	-24(%rbp), %rdx	# current, tmp160
	movq	%rdx, %rsi	# tmp160,
	movq	%rax, %rdi	# _31,
	call	strcpy@PLT	#
# eval/problem118//code.c:20:                 word_count++;
	addl	$1, -60(%rbp)	#, word_count
.L5:
# eval/problem118//code.c:22:             begin = i + 1;
	movl	-52(%rbp), %eax	# i, tmp164
	addl	$1, %eax	#, tmp163
	movl	%eax, -56(%rbp)	# tmp163, begin
# eval/problem118//code.c:23:             numc = 0;
	movl	$0, -64(%rbp)	#, numc
	jmp	.L6	#
.L4:
# eval/problem118//code.c:25:             current[i - begin] = s[i];
	movl	-52(%rbp), %eax	# i, tmp165
	movslq	%eax, %rdx	# tmp165, _32
	movq	-72(%rbp), %rax	# s, tmp166
	leaq	(%rdx,%rax), %rcx	#, _33
# eval/problem118//code.c:25:             current[i - begin] = s[i];
	movl	-52(%rbp), %eax	# i, tmp167
	subl	-56(%rbp), %eax	# begin, _34
	movslq	%eax, %rdx	# _34, _35
# eval/problem118//code.c:25:             current[i - begin] = s[i];
	movq	-24(%rbp), %rax	# current, tmp168
	addq	%rax, %rdx	# tmp168, _36
# eval/problem118//code.c:25:             current[i - begin] = s[i];
	movzbl	(%rcx), %eax	# *_33, _37
# eval/problem118//code.c:25:             current[i - begin] = s[i];
	movb	%al, (%rdx)	# _37, *_36
# eval/problem118//code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	movl	-52(%rbp), %eax	# i, tmp169
	movslq	%eax, %rdx	# tmp169, _38
	movq	-72(%rbp), %rax	# s, tmp170
	addq	%rdx, %rax	# _38, _39
	movzbl	(%rax), %eax	# *_39, _40
# eval/problem118//code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	movsbl	%al, %edx	# _40, _41
	movq	-40(%rbp), %rax	# vowels, tmp171
	movl	%edx, %esi	# _41,
	movq	%rax, %rdi	# tmp171,
	call	strchr@PLT	#
# eval/problem118//code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	testq	%rax, %rax	# _42
	jne	.L6	#,
# eval/problem118//code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	call	__ctype_b_loc@PLT	#
	movq	(%rax), %rax	# *_43, _44
	movl	-52(%rbp), %edx	# i, tmp172
	movslq	%edx, %rcx	# tmp172, _45
	movq	-72(%rbp), %rdx	# s, tmp173
	addq	%rcx, %rdx	# _45, _46
	movzbl	(%rdx), %edx	# *_46, _47
	movzbl	%dl, %edx	# _48, _49
	addq	%rdx, %rdx	# _50
	addq	%rdx, %rax	# _50, _51
	movzwl	(%rax), %eax	# *_51, _52
	movzwl	%ax, %eax	# _52, _53
	andl	$1024, %eax	#, _54
# eval/problem118//code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	testl	%eax, %eax	# _54
	je	.L6	#,
# eval/problem118//code.c:27:                 numc++;
	addl	$1, -64(%rbp)	#, numc
.L6:
# eval/problem118//code.c:13:     for (int i = 0; i <= length; i++) {
	addl	$1, -52(%rbp)	#, i
.L2:
# eval/problem118//code.c:13:     for (int i = 0; i <= length; i++) {
	movl	-52(%rbp), %eax	# i, tmp174
	cltq
	cmpq	%rax, -32(%rbp)	# _55, length
	jnb	.L7	#,
# eval/problem118//code.c:31:     free(current);
	movq	-24(%rbp), %rax	# current, tmp175
	movq	%rax, %rdi	# tmp175,
	call	free@PLT	#
# eval/problem118//code.c:33:     *returnSize = word_count;
	movq	-88(%rbp), %rax	# returnSize, tmp176
	movl	-60(%rbp), %edx	# word_count, tmp177
	movl	%edx, (%rax)	# tmp177, *returnSize_82(D)
# eval/problem118//code.c:34:     return out;
	movq	-48(%rbp), %rax	# out, _84
# eval/problem118//code.c:35: }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
