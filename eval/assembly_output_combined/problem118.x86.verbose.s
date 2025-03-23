	.file	"problem118.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
# problem118.c:7:     const char *vowels = "aeiouAEIOU";
	leaq	.LC0(%rip), %rax	#, tmp139
	movq	%rax, -40(%rbp)	# tmp139, vowels
# problem118.c:8:     char **out = NULL;
	movq	$0, -48(%rbp)	#, out
# problem118.c:9:     int numc = 0, word_count = 0, begin = 0;
	movl	$0, -64(%rbp)	#, numc
# problem118.c:9:     int numc = 0, word_count = 0, begin = 0;
	movl	$0, -60(%rbp)	#, word_count
# problem118.c:9:     int numc = 0, word_count = 0, begin = 0;
	movl	$0, -56(%rbp)	#, begin
# problem118.c:10:     size_t length = strlen(s);
	movq	-72(%rbp), %rax	# s, tmp140
	movq	%rax, %rdi	# tmp140,
	call	strlen@PLT	#
	movq	%rax, -32(%rbp)	# tmp141, length
# problem118.c:11:     char *current = (char *)malloc(length + 1);
	movq	-32(%rbp), %rax	# length, tmp142
	addq	$1, %rax	#, _1
	movq	%rax, %rdi	# _1,
	call	malloc@PLT	#
	movq	%rax, -24(%rbp)	# tmp143, current
# problem118.c:13:     for (int i = 0; i <= length; i++) {
	movl	$0, -52(%rbp)	#, i
# problem118.c:13:     for (int i = 0; i <= length; i++) {
	jmp	.L2	#
.L7:
# problem118.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	call	__ctype_b_loc@PLT	#
	movq	(%rax), %rdx	# *_2, _3
	movl	-52(%rbp), %eax	# i, tmp144
	movslq	%eax, %rcx	# tmp144, _4
	movq	-72(%rbp), %rax	# s, tmp145
	addq	%rcx, %rax	# _4, _5
	movzbl	(%rax), %eax	# *_5, _6
	movsbq	%al, %rax	# _6, _7
	addq	%rax, %rax	# _8
	addq	%rdx, %rax	# _3, _9
	movzwl	(%rax), %eax	# *_9, _10
	movzwl	%ax, %eax	# _10, _11
	andl	$8192, %eax	#, _12
# problem118.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	testl	%eax, %eax	# _12
	jne	.L3	#,
# problem118.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	movl	-52(%rbp), %eax	# i, tmp146
	movslq	%eax, %rdx	# tmp146, _13
	movq	-72(%rbp), %rax	# s, tmp147
	addq	%rdx, %rax	# _13, _14
	movzbl	(%rax), %eax	# *_14, _15
# problem118.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	testb	%al, %al	# _15
	jne	.L4	#,
.L3:
# problem118.c:15:             if (numc == n) {
	movl	-64(%rbp), %eax	# numc, tmp148
	cmpl	-76(%rbp), %eax	# n, tmp148
	jne	.L5	#,
# problem118.c:16:                 current[i - begin] = '\0';
	movl	-52(%rbp), %eax	# i, tmp149
	subl	-56(%rbp), %eax	# begin, _16
	movslq	%eax, %rdx	# _16, _17
# problem118.c:16:                 current[i - begin] = '\0';
	movq	-24(%rbp), %rax	# current, tmp150
	addq	%rdx, %rax	# _17, _18
# problem118.c:16:                 current[i - begin] = '\0';
	movb	$0, (%rax)	#, *_18
# problem118.c:17:                 out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
	movl	-60(%rbp), %eax	# word_count, tmp151
	addl	$1, %eax	#, _19
	cltq
# problem118.c:17:                 out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
	leaq	0(,%rax,8), %rdx	#, _21
	movq	-48(%rbp), %rax	# out, tmp152
	movq	%rdx, %rsi	# _21,
	movq	%rax, %rdi	# tmp152,
	call	realloc@PLT	#
	movq	%rax, -48(%rbp)	# tmp153, out
# problem118.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	movq	-24(%rbp), %rax	# current, tmp154
	movq	%rax, %rdi	# tmp154,
	call	strlen@PLT	#
# problem118.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	addq	$1, %rax	#, _23
# problem118.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	movl	-60(%rbp), %edx	# word_count, tmp155
	movslq	%edx, %rdx	# tmp155, _24
	leaq	0(,%rdx,8), %rcx	#, _25
	movq	-48(%rbp), %rdx	# out, tmp156
	leaq	(%rcx,%rdx), %rbx	#, _26
# problem118.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	movq	%rax, %rdi	# _23,
	call	malloc@PLT	#
# problem118.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	movq	%rax, (%rbx)	# _27, *_26
# problem118.c:19:                 strcpy(out[word_count], current);
	movl	-60(%rbp), %eax	# word_count, tmp158
	cltq
	leaq	0(,%rax,8), %rdx	#, _29
	movq	-48(%rbp), %rax	# out, tmp159
	addq	%rdx, %rax	# _29, _30
# problem118.c:19:                 strcpy(out[word_count], current);
	movq	(%rax), %rax	# *_30, _31
	movq	-24(%rbp), %rdx	# current, tmp160
	movq	%rdx, %rsi	# tmp160,
	movq	%rax, %rdi	# _31,
	call	strcpy@PLT	#
# problem118.c:20:                 word_count++;
	addl	$1, -60(%rbp)	#, word_count
.L5:
# problem118.c:22:             begin = i + 1;
	movl	-52(%rbp), %eax	# i, tmp164
	addl	$1, %eax	#, tmp163
	movl	%eax, -56(%rbp)	# tmp163, begin
# problem118.c:23:             numc = 0;
	movl	$0, -64(%rbp)	#, numc
	jmp	.L6	#
.L4:
# problem118.c:25:             current[i - begin] = s[i];
	movl	-52(%rbp), %eax	# i, tmp165
	movslq	%eax, %rdx	# tmp165, _32
	movq	-72(%rbp), %rax	# s, tmp166
	leaq	(%rdx,%rax), %rcx	#, _33
# problem118.c:25:             current[i - begin] = s[i];
	movl	-52(%rbp), %eax	# i, tmp167
	subl	-56(%rbp), %eax	# begin, _34
	movslq	%eax, %rdx	# _34, _35
# problem118.c:25:             current[i - begin] = s[i];
	movq	-24(%rbp), %rax	# current, tmp168
	addq	%rax, %rdx	# tmp168, _36
# problem118.c:25:             current[i - begin] = s[i];
	movzbl	(%rcx), %eax	# *_33, _37
# problem118.c:25:             current[i - begin] = s[i];
	movb	%al, (%rdx)	# _37, *_36
# problem118.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	movl	-52(%rbp), %eax	# i, tmp169
	movslq	%eax, %rdx	# tmp169, _38
	movq	-72(%rbp), %rax	# s, tmp170
	addq	%rdx, %rax	# _38, _39
	movzbl	(%rax), %eax	# *_39, _40
# problem118.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	movsbl	%al, %edx	# _40, _41
	movq	-40(%rbp), %rax	# vowels, tmp171
	movl	%edx, %esi	# _41,
	movq	%rax, %rdi	# tmp171,
	call	strchr@PLT	#
# problem118.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	testq	%rax, %rax	# _42
	jne	.L6	#,
# problem118.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	call	__ctype_b_loc@PLT	#
	movq	(%rax), %rdx	# *_43, _44
	movl	-52(%rbp), %eax	# i, tmp172
	movslq	%eax, %rcx	# tmp172, _45
	movq	-72(%rbp), %rax	# s, tmp173
	addq	%rcx, %rax	# _45, _46
	movzbl	(%rax), %eax	# *_46, _47
	movzbl	%al, %eax	# _48, _49
	addq	%rax, %rax	# _50
	addq	%rdx, %rax	# _44, _51
	movzwl	(%rax), %eax	# *_51, _52
	movzwl	%ax, %eax	# _52, _53
	andl	$1024, %eax	#, _54
# problem118.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	testl	%eax, %eax	# _54
	je	.L6	#,
# problem118.c:27:                 numc++;
	addl	$1, -64(%rbp)	#, numc
.L6:
# problem118.c:13:     for (int i = 0; i <= length; i++) {
	addl	$1, -52(%rbp)	#, i
.L2:
# problem118.c:13:     for (int i = 0; i <= length; i++) {
	movl	-52(%rbp), %eax	# i, tmp174
	cltq
	cmpq	%rax, -32(%rbp)	# _55, length
	jnb	.L7	#,
# problem118.c:31:     free(current);
	movq	-24(%rbp), %rax	# current, tmp175
	movq	%rax, %rdi	# tmp175,
	call	free@PLT	#
# problem118.c:33:     *returnSize = word_count;
	movq	-88(%rbp), %rax	# returnSize, tmp176
	movl	-60(%rbp), %edx	# word_count, tmp177
	movl	%edx, (%rax)	# tmp177, *returnSize_82(D)
# problem118.c:34:     return out;
	movq	-48(%rbp), %rax	# out, _84
# problem118.c:35: }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# a, a
	movl	%esi, -28(%rbp)	# aSize, aSize
	movq	%rdx, -40(%rbp)	# b, b
	movl	%ecx, -32(%rbp)	# bSize, bSize
# problem118.c:45:     if (aSize != bSize) return 0;
	movl	-28(%rbp), %eax	# aSize, tmp93
	cmpl	-32(%rbp), %eax	# bSize, tmp93
	je	.L10	#,
# problem118.c:45:     if (aSize != bSize) return 0;
	movl	$0, %eax	#, _11
	jmp	.L11	#
.L10:
# problem118.c:46:     for (int i = 0; i < aSize; i++) {
	movl	$0, -4(%rbp)	#, i
# problem118.c:46:     for (int i = 0; i < aSize; i++) {
	jmp	.L12	#
.L14:
# problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-40(%rbp), %rax	# b, tmp95
	addq	%rdx, %rax	# _2, _3
# problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	movq	(%rax), %rdx	# *_3, _4
# problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	movl	-4(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,8), %rcx	#, _6
	movq	-24(%rbp), %rax	# a, tmp97
	addq	%rcx, %rax	# _6, _7
# problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	movq	(%rax), %rax	# *_7, _8
	movq	%rdx, %rsi	# _4,
	movq	%rax, %rdi	# _8,
	call	strcmp@PLT	#
# problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	testl	%eax, %eax	# _9
	je	.L13	#,
# problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	movl	$0, %eax	#, _11
	jmp	.L11	#
.L13:
# problem118.c:46:     for (int i = 0; i < aSize; i++) {
	addl	$1, -4(%rbp)	#, i
.L12:
# problem118.c:46:     for (int i = 0; i < aSize; i++) {
	movl	-4(%rbp), %eax	# i, tmp98
	cmpl	-28(%rbp), %eax	# aSize, tmp98
	jl	.L14	#,
# problem118.c:49:     return 1;
	movl	$1, %eax	#, _11
.L11:
# problem118.c:50: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.globl	free_words
	.type	free_words, @function
free_words:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# words, words
	movl	%esi, -28(%rbp)	# count, count
# problem118.c:53:     for (int i = 0; i < count; i++) {
	movl	$0, -4(%rbp)	#, i
# problem118.c:53:     for (int i = 0; i < count; i++) {
	jmp	.L16	#
.L17:
# problem118.c:54:         free(words[i]);
	movl	-4(%rbp), %eax	# i, tmp86
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-24(%rbp), %rax	# words, tmp87
	addq	%rdx, %rax	# _2, _3
# problem118.c:54:         free(words[i]);
	movq	(%rax), %rax	# *_3, _4
	movq	%rax, %rdi	# _4,
	call	free@PLT	#
# problem118.c:53:     for (int i = 0; i < count; i++) {
	addl	$1, -4(%rbp)	#, i
.L16:
# problem118.c:53:     for (int i = 0; i < count; i++) {
	movl	-4(%rbp), %eax	# i, tmp88
	cmpl	-28(%rbp), %eax	# count, tmp88
	jl	.L17	#,
# problem118.c:56:     free(words);
	movq	-24(%rbp), %rax	# words, tmp89
	movq	%rax, %rdi	# tmp89,
	call	free@PLT	#
# problem118.c:57: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	free_words, .-free_words
	.section	.rodata
.LC1:
	.string	"Mary had a little lamb"
.LC2:
	.string	"little"
.LC3:
	.string	"problem118.c"
	.align 8
.LC4:
	.string	"issame(words, size, expected1, 1)"
.LC5:
	.string	"Mary"
.LC6:
	.string	"lamb"
	.align 8
.LC7:
	.string	"issame(words, size, expected2, 2)"
.LC8:
	.string	"simple white space"
.LC9:
	.string	"size == 0"
.LC10:
	.string	"Hello world"
.LC11:
	.string	"world"
	.align 8
.LC12:
	.string	"issame(words, size, expected3, 1)"
.LC13:
	.string	"Uncle sam"
.LC14:
	.string	"Uncle"
	.align 8
.LC15:
	.string	"issame(words, size, expected4, 1)"
.LC16:
	.string	""
.LC17:
	.string	"a b c d e f"
.LC18:
	.string	"b"
.LC19:
	.string	"c"
.LC20:
	.string	"d"
.LC21:
	.string	"f"
	.align 8
.LC22:
	.string	"issame(words, size, expected5, 4)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB9:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
# problem118.c:59: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp172
	movq	%rax, -8(%rbp)	# tmp172, D.3266
	xorl	%eax, %eax	# tmp172
# problem118.c:63:     words = func0("Mary had a little lamb", 4, &size);
	leaq	-100(%rbp), %rax	#, tmp103
	movq	%rax, %rdx	# tmp103,
	movl	$4, %esi	#,
	leaq	.LC1(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	func0	#
	movq	%rax, -96(%rbp)	# tmp105, words
# problem118.c:64:     char *expected1[] = {"little"};
	leaq	.LC2(%rip), %rax	#, tmp106
	movq	%rax, -88(%rbp)	# tmp106, expected1[0]
# problem118.c:65:     assert(issame(words, size, expected1, 1));
	movl	-100(%rbp), %esi	# size, size.0_1
	leaq	-88(%rbp), %rdx	#, tmp107
	movq	-96(%rbp), %rax	# words, tmp108
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp108,
	call	issame	#
	testl	%eax, %eax	# _2
	jne	.L19	#,
# problem118.c:65:     assert(issame(words, size, expected1, 1));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$65, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC4(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L19:
# problem118.c:66:     free_words(words, size);
	movl	-100(%rbp), %edx	# size, size.1_3
	movq	-96(%rbp), %rax	# words, tmp112
	movl	%edx, %esi	# size.1_3,
	movq	%rax, %rdi	# tmp112,
	call	free_words	#
# problem118.c:68:     words = func0("Mary had a little lamb", 3, &size);
	leaq	-100(%rbp), %rax	#, tmp113
	movq	%rax, %rdx	# tmp113,
	movl	$3, %esi	#,
	leaq	.LC1(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	func0	#
	movq	%rax, -96(%rbp)	# tmp115, words
# problem118.c:69:     char *expected2[] = {"Mary", "lamb"};
	leaq	.LC5(%rip), %rax	#, tmp116
	movq	%rax, -64(%rbp)	# tmp116, expected2[0]
	leaq	.LC6(%rip), %rax	#, tmp117
	movq	%rax, -56(%rbp)	# tmp117, expected2[1]
# problem118.c:70:     assert(issame(words, size, expected2, 2));
	movl	-100(%rbp), %esi	# size, size.2_4
	leaq	-64(%rbp), %rdx	#, tmp118
	movq	-96(%rbp), %rax	# words, tmp119
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp119,
	call	issame	#
	testl	%eax, %eax	# _5
	jne	.L20	#,
# problem118.c:70:     assert(issame(words, size, expected2, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp120
	movq	%rax, %rcx	# tmp120,
	movl	$70, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp121
	movq	%rax, %rsi	# tmp121,
	leaq	.LC7(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	__assert_fail@PLT	#
.L20:
# problem118.c:71:     free_words(words, size);
	movl	-100(%rbp), %edx	# size, size.3_6
	movq	-96(%rbp), %rax	# words, tmp123
	movl	%edx, %esi	# size.3_6,
	movq	%rax, %rdi	# tmp123,
	call	free_words	#
# problem118.c:73:     words = func0("simple white space", 2, &size);
	leaq	-100(%rbp), %rax	#, tmp124
	movq	%rax, %rdx	# tmp124,
	movl	$2, %esi	#,
	leaq	.LC8(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	func0	#
	movq	%rax, -96(%rbp)	# tmp126, words
# problem118.c:74:     assert(size == 0);
	movl	-100(%rbp), %eax	# size, size.4_7
	testl	%eax, %eax	# size.4_7
	je	.L21	#,
# problem118.c:74:     assert(size == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp127
	movq	%rax, %rcx	# tmp127,
	movl	$74, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp128
	movq	%rax, %rsi	# tmp128,
	leaq	.LC9(%rip), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	__assert_fail@PLT	#
.L21:
# problem118.c:75:     free_words(words, size);
	movl	-100(%rbp), %edx	# size, size.5_8
	movq	-96(%rbp), %rax	# words, tmp130
	movl	%edx, %esi	# size.5_8,
	movq	%rax, %rdi	# tmp130,
	call	free_words	#
# problem118.c:77:     words = func0("Hello world", 4, &size);
	leaq	-100(%rbp), %rax	#, tmp131
	movq	%rax, %rdx	# tmp131,
	movl	$4, %esi	#,
	leaq	.LC10(%rip), %rax	#, tmp132
	movq	%rax, %rdi	# tmp132,
	call	func0	#
	movq	%rax, -96(%rbp)	# tmp133, words
# problem118.c:78:     char *expected3[] = {"world"};
	leaq	.LC11(%rip), %rax	#, tmp134
	movq	%rax, -80(%rbp)	# tmp134, expected3[0]
# problem118.c:79:     assert(issame(words, size, expected3, 1));
	movl	-100(%rbp), %esi	# size, size.6_9
	leaq	-80(%rbp), %rdx	#, tmp135
	movq	-96(%rbp), %rax	# words, tmp136
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp136,
	call	issame	#
	testl	%eax, %eax	# _10
	jne	.L22	#,
# problem118.c:79:     assert(issame(words, size, expected3, 1));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp137
	movq	%rax, %rcx	# tmp137,
	movl	$79, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp138
	movq	%rax, %rsi	# tmp138,
	leaq	.LC12(%rip), %rax	#, tmp139
	movq	%rax, %rdi	# tmp139,
	call	__assert_fail@PLT	#
.L22:
# problem118.c:80:     free_words(words, size);
	movl	-100(%rbp), %edx	# size, size.7_11
	movq	-96(%rbp), %rax	# words, tmp140
	movl	%edx, %esi	# size.7_11,
	movq	%rax, %rdi	# tmp140,
	call	free_words	#
# problem118.c:82:     words = func0("Uncle sam", 3, &size);
	leaq	-100(%rbp), %rax	#, tmp141
	movq	%rax, %rdx	# tmp141,
	movl	$3, %esi	#,
	leaq	.LC13(%rip), %rax	#, tmp142
	movq	%rax, %rdi	# tmp142,
	call	func0	#
	movq	%rax, -96(%rbp)	# tmp143, words
# problem118.c:83:     char *expected4[] = {"Uncle"};
	leaq	.LC14(%rip), %rax	#, tmp144
	movq	%rax, -72(%rbp)	# tmp144, expected4[0]
# problem118.c:84:     assert(issame(words, size, expected4, 1));
	movl	-100(%rbp), %esi	# size, size.8_12
	leaq	-72(%rbp), %rdx	#, tmp145
	movq	-96(%rbp), %rax	# words, tmp146
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp146,
	call	issame	#
	testl	%eax, %eax	# _13
	jne	.L23	#,
# problem118.c:84:     assert(issame(words, size, expected4, 1));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp147
	movq	%rax, %rcx	# tmp147,
	movl	$84, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp148
	movq	%rax, %rsi	# tmp148,
	leaq	.LC15(%rip), %rax	#, tmp149
	movq	%rax, %rdi	# tmp149,
	call	__assert_fail@PLT	#
.L23:
# problem118.c:85:     free_words(words, size);
	movl	-100(%rbp), %edx	# size, size.9_14
	movq	-96(%rbp), %rax	# words, tmp150
	movl	%edx, %esi	# size.9_14,
	movq	%rax, %rdi	# tmp150,
	call	free_words	#
# problem118.c:87:     words = func0("", 4, &size);
	leaq	-100(%rbp), %rax	#, tmp151
	movq	%rax, %rdx	# tmp151,
	movl	$4, %esi	#,
	leaq	.LC16(%rip), %rax	#, tmp152
	movq	%rax, %rdi	# tmp152,
	call	func0	#
	movq	%rax, -96(%rbp)	# tmp153, words
# problem118.c:88:     assert(size == 0);
	movl	-100(%rbp), %eax	# size, size.10_15
	testl	%eax, %eax	# size.10_15
	je	.L24	#,
# problem118.c:88:     assert(size == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp154
	movq	%rax, %rcx	# tmp154,
	movl	$88, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp155
	movq	%rax, %rsi	# tmp155,
	leaq	.LC9(%rip), %rax	#, tmp156
	movq	%rax, %rdi	# tmp156,
	call	__assert_fail@PLT	#
.L24:
# problem118.c:89:     free_words(words, size);
	movl	-100(%rbp), %edx	# size, size.11_16
	movq	-96(%rbp), %rax	# words, tmp157
	movl	%edx, %esi	# size.11_16,
	movq	%rax, %rdi	# tmp157,
	call	free_words	#
# problem118.c:91:     words = func0("a b c d e f", 1, &size);
	leaq	-100(%rbp), %rax	#, tmp158
	movq	%rax, %rdx	# tmp158,
	movl	$1, %esi	#,
	leaq	.LC17(%rip), %rax	#, tmp159
	movq	%rax, %rdi	# tmp159,
	call	func0	#
	movq	%rax, -96(%rbp)	# tmp160, words
# problem118.c:92:     char *expected5[] = {"b", "c", "d", "f"};
	leaq	.LC18(%rip), %rax	#, tmp161
	movq	%rax, -48(%rbp)	# tmp161, expected5[0]
	leaq	.LC19(%rip), %rax	#, tmp162
	movq	%rax, -40(%rbp)	# tmp162, expected5[1]
	leaq	.LC20(%rip), %rax	#, tmp163
	movq	%rax, -32(%rbp)	# tmp163, expected5[2]
	leaq	.LC21(%rip), %rax	#, tmp164
	movq	%rax, -24(%rbp)	# tmp164, expected5[3]
# problem118.c:93:     assert(issame(words, size, expected5, 4));
	movl	-100(%rbp), %esi	# size, size.12_17
	leaq	-48(%rbp), %rdx	#, tmp165
	movq	-96(%rbp), %rax	# words, tmp166
	movl	$4, %ecx	#,
	movq	%rax, %rdi	# tmp166,
	call	issame	#
	testl	%eax, %eax	# _18
	jne	.L25	#,
# problem118.c:93:     assert(issame(words, size, expected5, 4));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp167
	movq	%rax, %rcx	# tmp167,
	movl	$93, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp168
	movq	%rax, %rsi	# tmp168,
	leaq	.LC22(%rip), %rax	#, tmp169
	movq	%rax, %rdi	# tmp169,
	call	__assert_fail@PLT	#
.L25:
# problem118.c:94:     free_words(words, size);
	movl	-100(%rbp), %edx	# size, size.13_19
	movq	-96(%rbp), %rax	# words, tmp170
	movl	%edx, %esi	# size.13_19,
	movq	%rax, %rdi	# tmp170,
	call	free_words	#
# problem118.c:96:     return 0;
	movl	$0, %eax	#, _63
# problem118.c:97: }
	movq	-8(%rbp), %rdx	# D.3266, tmp173
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp173
	je	.L27	#,
	call	__stack_chk_fail@PLT	#
.L27:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
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
