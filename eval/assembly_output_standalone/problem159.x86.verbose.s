	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
# eval/problem159//code.c:4: char *func0(char *words[], int count) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp144
	movq	%rax, -8(%rbp)	# tmp144, D.2557
	xorl	%eax, %eax	# tmp144
# eval/problem159//code.c:5:     char *max = "";
	leaq	.LC0(%rip), %rax	#, tmp117
	movq	%rax, -280(%rbp)	# tmp117, max
# eval/problem159//code.c:6:     int maxu = 0;
	movl	$0, -300(%rbp)	#, maxu
# eval/problem159//code.c:7:     for (int i = 0; i < count; i++) {
	movl	$0, -296(%rbp)	#, i
# eval/problem159//code.c:7:     for (int i = 0; i < count; i++) {
	jmp	.L2	#
.L8:
# eval/problem159//code.c:8:         char unique[256] = {0};
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
# eval/problem159//code.c:9:         int unique_count = 0;
	movl	$0, -292(%rbp)	#, unique_count
# eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	movl	$0, -288(%rbp)	#, j
# eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	jmp	.L3	#
.L5:
# eval/problem159//code.c:11:             if (!strchr(unique, words[i][j])) {
	movl	-296(%rbp), %eax	# i, tmp118
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-312(%rbp), %rax	# words, tmp119
	addq	%rdx, %rax	# _2, _3
	movq	(%rax), %rdx	# *_3, _4
# eval/problem159//code.c:11:             if (!strchr(unique, words[i][j])) {
	movl	-288(%rbp), %eax	# j, tmp120
	cltq
	addq	%rdx, %rax	# _4, _6
	movzbl	(%rax), %eax	# *_6, _7
# eval/problem159//code.c:11:             if (!strchr(unique, words[i][j])) {
	movsbl	%al, %edx	# _7, _8
	leaq	-272(%rbp), %rax	#, tmp121
	movl	%edx, %esi	# _8,
	movq	%rax, %rdi	# tmp121,
	call	strchr@PLT	#
# eval/problem159//code.c:11:             if (!strchr(unique, words[i][j])) {
	testq	%rax, %rax	# _9
	jne	.L4	#,
# eval/problem159//code.c:12:                 int len = strlen(unique);
	leaq	-272(%rbp), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	strlen@PLT	#
# eval/problem159//code.c:12:                 int len = strlen(unique);
	movl	%eax, -284(%rbp)	# _10, len
# eval/problem159//code.c:13:                 unique[len] = words[i][j];
	movl	-296(%rbp), %eax	# i, tmp123
	cltq
	leaq	0(,%rax,8), %rdx	#, _12
	movq	-312(%rbp), %rax	# words, tmp124
	addq	%rdx, %rax	# _12, _13
	movq	(%rax), %rdx	# *_13, _14
# eval/problem159//code.c:13:                 unique[len] = words[i][j];
	movl	-288(%rbp), %eax	# j, tmp125
	cltq
	addq	%rdx, %rax	# _14, _16
	movzbl	(%rax), %edx	# *_16, _17
# eval/problem159//code.c:13:                 unique[len] = words[i][j];
	movl	-284(%rbp), %eax	# len, tmp127
	cltq
	movb	%dl, -272(%rbp,%rax)	# _17, unique[len_59]
# eval/problem159//code.c:14:                 unique[len + 1] = '\0';
	movl	-284(%rbp), %eax	# len, tmp128
	addl	$1, %eax	#, _18
# eval/problem159//code.c:14:                 unique[len + 1] = '\0';
	cltq
	movb	$0, -272(%rbp,%rax)	#, unique[_18]
# eval/problem159//code.c:15:                 unique_count++;
	addl	$1, -292(%rbp)	#, unique_count
.L4:
# eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	addl	$1, -288(%rbp)	#, j
.L3:
# eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	movl	-296(%rbp), %eax	# i, tmp130
	cltq
	leaq	0(,%rax,8), %rdx	#, _20
	movq	-312(%rbp), %rax	# words, tmp131
	addq	%rdx, %rax	# _20, _21
	movq	(%rax), %rdx	# *_21, _22
# eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	movl	-288(%rbp), %eax	# j, tmp132
	cltq
	addq	%rdx, %rax	# _22, _24
	movzbl	(%rax), %eax	# *_24, _25
# eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	testb	%al, %al	# _25
	jne	.L5	#,
# eval/problem159//code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	movl	-292(%rbp), %eax	# unique_count, tmp133
	cmpl	-300(%rbp), %eax	# maxu, tmp133
	jg	.L6	#,
# eval/problem159//code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	movl	-292(%rbp), %eax	# unique_count, tmp134
	cmpl	-300(%rbp), %eax	# maxu, tmp134
	jne	.L7	#,
# eval/problem159//code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	movl	-296(%rbp), %eax	# i, tmp135
	cltq
	leaq	0(,%rax,8), %rdx	#, _27
	movq	-312(%rbp), %rax	# words, tmp136
	addq	%rdx, %rax	# _27, _28
# eval/problem159//code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	movq	(%rax), %rax	# *_28, _29
	movq	-280(%rbp), %rdx	# max, tmp137
	movq	%rdx, %rsi	# tmp137,
	movq	%rax, %rdi	# _29,
	call	strcmp@PLT	#
# eval/problem159//code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	testl	%eax, %eax	# _30
	jns	.L7	#,
.L6:
# eval/problem159//code.c:19:             max = words[i];
	movl	-296(%rbp), %eax	# i, tmp138
	cltq
	leaq	0(,%rax,8), %rdx	#, _32
	movq	-312(%rbp), %rax	# words, tmp139
	addq	%rdx, %rax	# _32, _33
# eval/problem159//code.c:19:             max = words[i];
	movq	(%rax), %rax	# *_33, tmp140
	movq	%rax, -280(%rbp)	# tmp140, max
# eval/problem159//code.c:20:             maxu = unique_count;
	movl	-292(%rbp), %eax	# unique_count, tmp141
	movl	%eax, -300(%rbp)	# tmp141, maxu
.L7:
# eval/problem159//code.c:7:     for (int i = 0; i < count; i++) {
	addl	$1, -296(%rbp)	#, i
.L2:
# eval/problem159//code.c:7:     for (int i = 0; i < count; i++) {
	movl	-296(%rbp), %eax	# i, tmp142
	cmpl	-316(%rbp), %eax	# count, tmp142
	jl	.L8	#,
# eval/problem159//code.c:23:     return max;
	movq	-280(%rbp), %rax	# max, _50
# eval/problem159//code.c:24: }
	movq	-8(%rbp), %rdx	# D.2557, tmp145
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
