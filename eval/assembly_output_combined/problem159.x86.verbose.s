	.file	"problem159.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	""
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$320, %rsp	#,
	movq	%rdi, -312(%rbp)	# words, words
	movl	%esi, -316(%rbp)	# count, count
# problem159.c:4: char *func0(char *words[], int count) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp144
	movq	%rax, -8(%rbp)	# tmp144, D.3480
	xorl	%eax, %eax	# tmp144
# problem159.c:5:     char *max = "";
	leaq	.LC0(%rip), %rax	#, tmp117
	movq	%rax, -280(%rbp)	# tmp117, max
# problem159.c:6:     int maxu = 0;
	movl	$0, -300(%rbp)	#, maxu
# problem159.c:7:     for (int i = 0; i < count; i++) {
	movl	$0, -296(%rbp)	#, i
# problem159.c:7:     for (int i = 0; i < count; i++) {
	jmp	.L2	#
.L8:
# problem159.c:8:         char unique[256] = {0};
	movq	$0, -272(%rbp)	#, unique
	movq	$0, -264(%rbp)	#, unique
	movq	$0, -256(%rbp)	#, unique
	movq	$0, -248(%rbp)	#, unique
	movq	$0, -240(%rbp)	#, unique
	movq	$0, -232(%rbp)	#, unique
	movq	$0, -224(%rbp)	#, unique
	movq	$0, -216(%rbp)	#, unique
	movq	$0, -208(%rbp)	#, unique
	movq	$0, -200(%rbp)	#, unique
	movq	$0, -192(%rbp)	#, unique
	movq	$0, -184(%rbp)	#, unique
	movq	$0, -176(%rbp)	#, unique
	movq	$0, -168(%rbp)	#, unique
	movq	$0, -160(%rbp)	#, unique
	movq	$0, -152(%rbp)	#, unique
	movq	$0, -144(%rbp)	#, unique
	movq	$0, -136(%rbp)	#, unique
	movq	$0, -128(%rbp)	#, unique
	movq	$0, -120(%rbp)	#, unique
	movq	$0, -112(%rbp)	#, unique
	movq	$0, -104(%rbp)	#, unique
	movq	$0, -96(%rbp)	#, unique
	movq	$0, -88(%rbp)	#, unique
	movq	$0, -80(%rbp)	#, unique
	movq	$0, -72(%rbp)	#, unique
	movq	$0, -64(%rbp)	#, unique
	movq	$0, -56(%rbp)	#, unique
	movq	$0, -48(%rbp)	#, unique
	movq	$0, -40(%rbp)	#, unique
	movq	$0, -32(%rbp)	#, unique
	movq	$0, -24(%rbp)	#, unique
# problem159.c:9:         int unique_count = 0;
	movl	$0, -292(%rbp)	#, unique_count
# problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	movl	$0, -288(%rbp)	#, j
# problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	jmp	.L3	#
.L5:
# problem159.c:11:             if (!strchr(unique, words[i][j])) {
	movl	-296(%rbp), %eax	# i, tmp118
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-312(%rbp), %rax	# words, tmp119
	addq	%rdx, %rax	# _2, _3
	movq	(%rax), %rdx	# *_3, _4
# problem159.c:11:             if (!strchr(unique, words[i][j])) {
	movl	-288(%rbp), %eax	# j, tmp120
	cltq
	addq	%rdx, %rax	# _4, _6
	movzbl	(%rax), %eax	# *_6, _7
# problem159.c:11:             if (!strchr(unique, words[i][j])) {
	movsbl	%al, %edx	# _7, _8
	leaq	-272(%rbp), %rax	#, tmp121
	movl	%edx, %esi	# _8,
	movq	%rax, %rdi	# tmp121,
	call	strchr@PLT	#
# problem159.c:11:             if (!strchr(unique, words[i][j])) {
	testq	%rax, %rax	# _9
	jne	.L4	#,
# problem159.c:12:                 int len = strlen(unique);
	leaq	-272(%rbp), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	strlen@PLT	#
# problem159.c:12:                 int len = strlen(unique);
	movl	%eax, -284(%rbp)	# _10, len
# problem159.c:13:                 unique[len] = words[i][j];
	movl	-296(%rbp), %eax	# i, tmp123
	cltq
	leaq	0(,%rax,8), %rdx	#, _12
	movq	-312(%rbp), %rax	# words, tmp124
	addq	%rdx, %rax	# _12, _13
	movq	(%rax), %rdx	# *_13, _14
# problem159.c:13:                 unique[len] = words[i][j];
	movl	-288(%rbp), %eax	# j, tmp125
	cltq
	addq	%rdx, %rax	# _14, _16
	movzbl	(%rax), %edx	# *_16, _17
# problem159.c:13:                 unique[len] = words[i][j];
	movl	-284(%rbp), %eax	# len, tmp127
	cltq
	movb	%dl, -272(%rbp,%rax)	# _17, unique[len_59]
# problem159.c:14:                 unique[len + 1] = '\0';
	movl	-284(%rbp), %eax	# len, tmp128
	addl	$1, %eax	#, _18
# problem159.c:14:                 unique[len + 1] = '\0';
	cltq
	movb	$0, -272(%rbp,%rax)	#, unique[_18]
# problem159.c:15:                 unique_count++;
	addl	$1, -292(%rbp)	#, unique_count
.L4:
# problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	addl	$1, -288(%rbp)	#, j
.L3:
# problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	movl	-296(%rbp), %eax	# i, tmp130
	cltq
	leaq	0(,%rax,8), %rdx	#, _20
	movq	-312(%rbp), %rax	# words, tmp131
	addq	%rdx, %rax	# _20, _21
	movq	(%rax), %rdx	# *_21, _22
# problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	movl	-288(%rbp), %eax	# j, tmp132
	cltq
	addq	%rdx, %rax	# _22, _24
	movzbl	(%rax), %eax	# *_24, _25
# problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	testb	%al, %al	# _25
	jne	.L5	#,
# problem159.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	movl	-292(%rbp), %eax	# unique_count, tmp133
	cmpl	-300(%rbp), %eax	# maxu, tmp133
	jg	.L6	#,
# problem159.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	movl	-292(%rbp), %eax	# unique_count, tmp134
	cmpl	-300(%rbp), %eax	# maxu, tmp134
	jne	.L7	#,
# problem159.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	movl	-296(%rbp), %eax	# i, tmp135
	cltq
	leaq	0(,%rax,8), %rdx	#, _27
	movq	-312(%rbp), %rax	# words, tmp136
	addq	%rdx, %rax	# _27, _28
# problem159.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	movq	(%rax), %rax	# *_28, _29
	movq	-280(%rbp), %rdx	# max, tmp137
	movq	%rdx, %rsi	# tmp137,
	movq	%rax, %rdi	# _29,
	call	strcmp@PLT	#
# problem159.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	testl	%eax, %eax	# _30
	jns	.L7	#,
.L6:
# problem159.c:19:             max = words[i];
	movl	-296(%rbp), %eax	# i, tmp138
	cltq
	leaq	0(,%rax,8), %rdx	#, _32
	movq	-312(%rbp), %rax	# words, tmp139
	addq	%rdx, %rax	# _32, _33
# problem159.c:19:             max = words[i];
	movq	(%rax), %rax	# *_33, tmp140
	movq	%rax, -280(%rbp)	# tmp140, max
# problem159.c:20:             maxu = unique_count;
	movl	-292(%rbp), %eax	# unique_count, tmp141
	movl	%eax, -300(%rbp)	# tmp141, maxu
.L7:
# problem159.c:7:     for (int i = 0; i < count; i++) {
	addl	$1, -296(%rbp)	#, i
.L2:
# problem159.c:7:     for (int i = 0; i < count; i++) {
	movl	-296(%rbp), %eax	# i, tmp142
	cmpl	-316(%rbp), %eax	# count, tmp142
	jl	.L8	#,
# problem159.c:23:     return max;
	movq	-280(%rbp), %rax	# max, _50
# problem159.c:24: }
	movq	-8(%rbp), %rdx	# D.3480, tmp145
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp145
	je	.L10	#,
	call	__stack_chk_fail@PLT	#
.L10:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC1:
	.string	"name"
.LC2:
	.string	"of"
.LC3:
	.string	"string"
.LC4:
	.string	"problem159.c"
	.align 8
.LC5:
	.string	"strcmp(func0(words1, 3), \"string\") == 0"
.LC6:
	.string	"enam"
.LC7:
	.string	"game"
	.align 8
.LC8:
	.string	"strcmp(func0(words2, 3), \"enam\") == 0"
.LC9:
	.string	"aaaaaaa"
.LC10:
	.string	"bb"
.LC11:
	.string	"cc"
	.align 8
.LC12:
	.string	"strcmp(func0(words3, 3), \"aaaaaaa\") == 0"
.LC13:
	.string	"abc"
.LC14:
	.string	"cba"
	.align 8
.LC15:
	.string	"strcmp(func0(words4, 2), \"abc\") == 0"
.LC16:
	.string	"play"
.LC17:
	.string	"this"
.LC18:
	.string	"footbott"
	.align 8
.LC19:
	.string	"strcmp(func0(words5, 5), \"footbott\") == 0"
.LC20:
	.string	"we"
.LC21:
	.string	"are"
.LC22:
	.string	"gonna"
.LC23:
	.string	"rock"
	.align 8
.LC24:
	.string	"strcmp(func0(words6, 4), \"gonna\") == 0"
.LC25:
	.string	"a"
.LC26:
	.string	"mad"
.LC27:
	.string	"nation"
	.align 8
.LC28:
	.string	"strcmp(func0(words7, 5), \"nation\") == 0"
.LC29:
	.string	"is"
.LC30:
	.string	"prrk"
	.align 8
.LC31:
	.string	"strcmp(func0(words8, 4), \"this\") == 0"
.LC32:
	.string	"b"
	.align 8
.LC33:
	.string	"strcmp(func0(words9, 1), \"b\") == 0"
	.align 8
.LC34:
	.string	"strcmp(func0(words10, 3), \"play\") == 0"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$320, %rsp	#,
# problem159.c:31: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp188
	movq	%rax, -8(%rbp)	# tmp188, D.3483
	xorl	%eax, %eax	# tmp188
# problem159.c:32:     char *words1[] = {"name", "of", "string"};
	leaq	.LC1(%rip), %rax	#, tmp104
	movq	%rax, -288(%rbp)	# tmp104, words1[0]
	leaq	.LC2(%rip), %rax	#, tmp105
	movq	%rax, -280(%rbp)	# tmp105, words1[1]
	leaq	.LC3(%rip), %rax	#, tmp106
	movq	%rax, -272(%rbp)	# tmp106, words1[2]
# problem159.c:33:     assert(strcmp(func0(words1, 3), "string") == 0);
	leaq	-288(%rbp), %rax	#, tmp107
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	func0	#
	movq	%rax, %rdx	#, _1
# problem159.c:33:     assert(strcmp(func0(words1, 3), "string") == 0);
	leaq	.LC3(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	movq	%rdx, %rdi	# _1,
	call	strcmp@PLT	#
# problem159.c:33:     assert(strcmp(func0(words1, 3), "string") == 0);
	testl	%eax, %eax	# _2
	je	.L12	#,
# problem159.c:33:     assert(strcmp(func0(words1, 3), "string") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$33, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC5(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L12:
# problem159.c:35:     char *words2[] = {"name", "enam", "game"};
	leaq	.LC1(%rip), %rax	#, tmp112
	movq	%rax, -256(%rbp)	# tmp112, words2[0]
	leaq	.LC6(%rip), %rax	#, tmp113
	movq	%rax, -248(%rbp)	# tmp113, words2[1]
	leaq	.LC7(%rip), %rax	#, tmp114
	movq	%rax, -240(%rbp)	# tmp114, words2[2]
# problem159.c:36:     assert(strcmp(func0(words2, 3), "enam") == 0);
	leaq	-256(%rbp), %rax	#, tmp115
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp115,
	call	func0	#
	movq	%rax, %rdx	#, _3
# problem159.c:36:     assert(strcmp(func0(words2, 3), "enam") == 0);
	leaq	.LC6(%rip), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	movq	%rdx, %rdi	# _3,
	call	strcmp@PLT	#
# problem159.c:36:     assert(strcmp(func0(words2, 3), "enam") == 0);
	testl	%eax, %eax	# _4
	je	.L13	#,
# problem159.c:36:     assert(strcmp(func0(words2, 3), "enam") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$36, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC8(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	__assert_fail@PLT	#
.L13:
# problem159.c:38:     char *words3[] = {"aaaaaaa", "bb", "cc"};
	leaq	.LC9(%rip), %rax	#, tmp120
	movq	%rax, -224(%rbp)	# tmp120, words3[0]
	leaq	.LC10(%rip), %rax	#, tmp121
	movq	%rax, -216(%rbp)	# tmp121, words3[1]
	leaq	.LC11(%rip), %rax	#, tmp122
	movq	%rax, -208(%rbp)	# tmp122, words3[2]
# problem159.c:39:     assert(strcmp(func0(words3, 3), "aaaaaaa") == 0);
	leaq	-224(%rbp), %rax	#, tmp123
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp123,
	call	func0	#
	movq	%rax, %rdx	#, _5
# problem159.c:39:     assert(strcmp(func0(words3, 3), "aaaaaaa") == 0);
	leaq	.LC9(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	movq	%rdx, %rdi	# _5,
	call	strcmp@PLT	#
# problem159.c:39:     assert(strcmp(func0(words3, 3), "aaaaaaa") == 0);
	testl	%eax, %eax	# _6
	je	.L14	#,
# problem159.c:39:     assert(strcmp(func0(words3, 3), "aaaaaaa") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp125
	movq	%rax, %rcx	# tmp125,
	movl	$39, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	leaq	.LC12(%rip), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	__assert_fail@PLT	#
.L14:
# problem159.c:41:     char *words4[] = {"abc", "cba"};
	leaq	.LC13(%rip), %rax	#, tmp128
	movq	%rax, -304(%rbp)	# tmp128, words4[0]
	leaq	.LC14(%rip), %rax	#, tmp129
	movq	%rax, -296(%rbp)	# tmp129, words4[1]
# problem159.c:42:     assert(strcmp(func0(words4, 2), "abc") == 0);
	leaq	-304(%rbp), %rax	#, tmp130
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	func0	#
	movq	%rax, %rdx	#, _7
# problem159.c:42:     assert(strcmp(func0(words4, 2), "abc") == 0);
	leaq	.LC13(%rip), %rax	#, tmp131
	movq	%rax, %rsi	# tmp131,
	movq	%rdx, %rdi	# _7,
	call	strcmp@PLT	#
# problem159.c:42:     assert(strcmp(func0(words4, 2), "abc") == 0);
	testl	%eax, %eax	# _8
	je	.L15	#,
# problem159.c:42:     assert(strcmp(func0(words4, 2), "abc") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp132
	movq	%rax, %rcx	# tmp132,
	movl	$42, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp133
	movq	%rax, %rsi	# tmp133,
	leaq	.LC15(%rip), %rax	#, tmp134
	movq	%rax, %rdi	# tmp134,
	call	__assert_fail@PLT	#
.L15:
# problem159.c:44:     char *words5[] = {"play", "this", "game", "of", "footbott"};
	leaq	.LC16(%rip), %rax	#, tmp135
	movq	%rax, -96(%rbp)	# tmp135, words5[0]
	leaq	.LC17(%rip), %rax	#, tmp136
	movq	%rax, -88(%rbp)	# tmp136, words5[1]
	leaq	.LC7(%rip), %rax	#, tmp137
	movq	%rax, -80(%rbp)	# tmp137, words5[2]
	leaq	.LC2(%rip), %rax	#, tmp138
	movq	%rax, -72(%rbp)	# tmp138, words5[3]
	leaq	.LC18(%rip), %rax	#, tmp139
	movq	%rax, -64(%rbp)	# tmp139, words5[4]
# problem159.c:45:     assert(strcmp(func0(words5, 5), "footbott") == 0);
	leaq	-96(%rbp), %rax	#, tmp140
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp140,
	call	func0	#
	movq	%rax, %rdx	#, _9
# problem159.c:45:     assert(strcmp(func0(words5, 5), "footbott") == 0);
	leaq	.LC18(%rip), %rax	#, tmp141
	movq	%rax, %rsi	# tmp141,
	movq	%rdx, %rdi	# _9,
	call	strcmp@PLT	#
# problem159.c:45:     assert(strcmp(func0(words5, 5), "footbott") == 0);
	testl	%eax, %eax	# _10
	je	.L16	#,
# problem159.c:45:     assert(strcmp(func0(words5, 5), "footbott") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp142
	movq	%rax, %rcx	# tmp142,
	movl	$45, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp143
	movq	%rax, %rsi	# tmp143,
	leaq	.LC19(%rip), %rax	#, tmp144
	movq	%rax, %rdi	# tmp144,
	call	__assert_fail@PLT	#
.L16:
# problem159.c:47:     char *words6[] = {"we", "are", "gonna", "rock"};
	leaq	.LC20(%rip), %rax	#, tmp145
	movq	%rax, -160(%rbp)	# tmp145, words6[0]
	leaq	.LC21(%rip), %rax	#, tmp146
	movq	%rax, -152(%rbp)	# tmp146, words6[1]
	leaq	.LC22(%rip), %rax	#, tmp147
	movq	%rax, -144(%rbp)	# tmp147, words6[2]
	leaq	.LC23(%rip), %rax	#, tmp148
	movq	%rax, -136(%rbp)	# tmp148, words6[3]
# problem159.c:48:     assert(strcmp(func0(words6, 4), "gonna") == 0);
	leaq	-160(%rbp), %rax	#, tmp149
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp149,
	call	func0	#
	movq	%rax, %rdx	#, _11
# problem159.c:48:     assert(strcmp(func0(words6, 4), "gonna") == 0);
	leaq	.LC22(%rip), %rax	#, tmp150
	movq	%rax, %rsi	# tmp150,
	movq	%rdx, %rdi	# _11,
	call	strcmp@PLT	#
# problem159.c:48:     assert(strcmp(func0(words6, 4), "gonna") == 0);
	testl	%eax, %eax	# _12
	je	.L17	#,
# problem159.c:48:     assert(strcmp(func0(words6, 4), "gonna") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp151
	movq	%rax, %rcx	# tmp151,
	movl	$48, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp152
	movq	%rax, %rsi	# tmp152,
	leaq	.LC24(%rip), %rax	#, tmp153
	movq	%rax, %rdi	# tmp153,
	call	__assert_fail@PLT	#
.L17:
# problem159.c:50:     char *words7[] = {"we", "are", "a", "mad", "nation"};
	leaq	.LC20(%rip), %rax	#, tmp154
	movq	%rax, -48(%rbp)	# tmp154, words7[0]
	leaq	.LC21(%rip), %rax	#, tmp155
	movq	%rax, -40(%rbp)	# tmp155, words7[1]
	leaq	.LC25(%rip), %rax	#, tmp156
	movq	%rax, -32(%rbp)	# tmp156, words7[2]
	leaq	.LC26(%rip), %rax	#, tmp157
	movq	%rax, -24(%rbp)	# tmp157, words7[3]
	leaq	.LC27(%rip), %rax	#, tmp158
	movq	%rax, -16(%rbp)	# tmp158, words7[4]
# problem159.c:51:     assert(strcmp(func0(words7, 5), "nation") == 0);
	leaq	-48(%rbp), %rax	#, tmp159
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp159,
	call	func0	#
	movq	%rax, %rdx	#, _13
# problem159.c:51:     assert(strcmp(func0(words7, 5), "nation") == 0);
	leaq	.LC27(%rip), %rax	#, tmp160
	movq	%rax, %rsi	# tmp160,
	movq	%rdx, %rdi	# _13,
	call	strcmp@PLT	#
# problem159.c:51:     assert(strcmp(func0(words7, 5), "nation") == 0);
	testl	%eax, %eax	# _14
	je	.L18	#,
# problem159.c:51:     assert(strcmp(func0(words7, 5), "nation") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp161
	movq	%rax, %rcx	# tmp161,
	movl	$51, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp162
	movq	%rax, %rsi	# tmp162,
	leaq	.LC28(%rip), %rax	#, tmp163
	movq	%rax, %rdi	# tmp163,
	call	__assert_fail@PLT	#
.L18:
# problem159.c:53:     char *words8[] = {"this", "is", "a", "prrk"};
	leaq	.LC17(%rip), %rax	#, tmp164
	movq	%rax, -128(%rbp)	# tmp164, words8[0]
	leaq	.LC29(%rip), %rax	#, tmp165
	movq	%rax, -120(%rbp)	# tmp165, words8[1]
	leaq	.LC25(%rip), %rax	#, tmp166
	movq	%rax, -112(%rbp)	# tmp166, words8[2]
	leaq	.LC30(%rip), %rax	#, tmp167
	movq	%rax, -104(%rbp)	# tmp167, words8[3]
# problem159.c:54:     assert(strcmp(func0(words8, 4), "this") == 0);
	leaq	-128(%rbp), %rax	#, tmp168
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp168,
	call	func0	#
	movq	%rax, %rdx	#, _15
# problem159.c:54:     assert(strcmp(func0(words8, 4), "this") == 0);
	leaq	.LC17(%rip), %rax	#, tmp169
	movq	%rax, %rsi	# tmp169,
	movq	%rdx, %rdi	# _15,
	call	strcmp@PLT	#
# problem159.c:54:     assert(strcmp(func0(words8, 4), "this") == 0);
	testl	%eax, %eax	# _16
	je	.L19	#,
# problem159.c:54:     assert(strcmp(func0(words8, 4), "this") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp170
	movq	%rax, %rcx	# tmp170,
	movl	$54, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp171
	movq	%rax, %rsi	# tmp171,
	leaq	.LC31(%rip), %rax	#, tmp172
	movq	%rax, %rdi	# tmp172,
	call	__assert_fail@PLT	#
.L19:
# problem159.c:56:     char *words9[] = {"b"};
	leaq	.LC32(%rip), %rax	#, tmp173
	movq	%rax, -312(%rbp)	# tmp173, words9[0]
# problem159.c:57:     assert(strcmp(func0(words9, 1), "b") == 0);
	leaq	-312(%rbp), %rax	#, tmp174
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp174,
	call	func0	#
	movq	%rax, %rdx	#, _17
# problem159.c:57:     assert(strcmp(func0(words9, 1), "b") == 0);
	leaq	.LC32(%rip), %rax	#, tmp175
	movq	%rax, %rsi	# tmp175,
	movq	%rdx, %rdi	# _17,
	call	strcmp@PLT	#
# problem159.c:57:     assert(strcmp(func0(words9, 1), "b") == 0);
	testl	%eax, %eax	# _18
	je	.L20	#,
# problem159.c:57:     assert(strcmp(func0(words9, 1), "b") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp176
	movq	%rax, %rcx	# tmp176,
	movl	$57, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp177
	movq	%rax, %rsi	# tmp177,
	leaq	.LC33(%rip), %rax	#, tmp178
	movq	%rax, %rdi	# tmp178,
	call	__assert_fail@PLT	#
.L20:
# problem159.c:59:     char *words10[] = {"play", "play", "play"};
	leaq	.LC16(%rip), %rax	#, tmp179
	movq	%rax, -192(%rbp)	# tmp179, words10[0]
	leaq	.LC16(%rip), %rax	#, tmp180
	movq	%rax, -184(%rbp)	# tmp180, words10[1]
	leaq	.LC16(%rip), %rax	#, tmp181
	movq	%rax, -176(%rbp)	# tmp181, words10[2]
# problem159.c:60:     assert(strcmp(func0(words10, 3), "play") == 0);
	leaq	-192(%rbp), %rax	#, tmp182
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp182,
	call	func0	#
	movq	%rax, %rdx	#, _19
# problem159.c:60:     assert(strcmp(func0(words10, 3), "play") == 0);
	leaq	.LC16(%rip), %rax	#, tmp183
	movq	%rax, %rsi	# tmp183,
	movq	%rdx, %rdi	# _19,
	call	strcmp@PLT	#
# problem159.c:60:     assert(strcmp(func0(words10, 3), "play") == 0);
	testl	%eax, %eax	# _20
	je	.L21	#,
# problem159.c:60:     assert(strcmp(func0(words10, 3), "play") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp184
	movq	%rax, %rcx	# tmp184,
	movl	$60, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp185
	movq	%rax, %rsi	# tmp185,
	leaq	.LC34(%rip), %rax	#, tmp186
	movq	%rax, %rdi	# tmp186,
	call	__assert_fail@PLT	#
.L21:
# problem159.c:62:     return 0;
	movl	$0, %eax	#, _75
# problem159.c:63: }
	movq	-8(%rbp), %rdx	# D.3483, tmp189
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp189
	je	.L23	#,
	call	__stack_chk_fail@PLT	#
.L23:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
