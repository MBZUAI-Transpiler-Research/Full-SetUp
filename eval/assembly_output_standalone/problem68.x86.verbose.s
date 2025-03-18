	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# s, s
	movl	%esi, -76(%rbp)	# n, n
# eval/problem68//code.c:5: int func0(const char *s, int n) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp125
	movq	%rax, -24(%rbp)	# tmp125, D.3840
	xorl	%eax, %eax	# tmp125
# eval/problem68//code.c:6:     char num1[10] = "";
	movq	$0, -44(%rbp)	#, num1
	movw	$0, -36(%rbp)	#, num1
# eval/problem68//code.c:7:     char num2[10] = "";
	movq	$0, -34(%rbp)	#, num2
	movw	$0, -26(%rbp)	#, num2
# eval/problem68//code.c:8:     int is12 = 0, j = 0;
	movl	$0, -56(%rbp)	#, is12
# eval/problem68//code.c:8:     int is12 = 0, j = 0;
	movl	$0, -52(%rbp)	#, j
# eval/problem68//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	movl	$0, -48(%rbp)	#, i
# eval/problem68//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	jmp	.L2	#
.L6:
# eval/problem68//code.c:11:         if (isdigit(s[i])) {
	call	__ctype_b_loc@PLT	#
# eval/problem68//code.c:11:         if (isdigit(s[i])) {
	movq	(%rax), %rax	# *_1, _2
	movl	-48(%rbp), %edx	# i, tmp109
	movslq	%edx, %rcx	# tmp109, _3
	movq	-72(%rbp), %rdx	# s, tmp110
	addq	%rcx, %rdx	# _3, _4
	movzbl	(%rdx), %edx	# *_4, _5
	movsbq	%dl, %rdx	# _5, _6
	addq	%rdx, %rdx	# _7
	addq	%rdx, %rax	# _7, _8
	movzwl	(%rax), %eax	# *_8, _9
	movzwl	%ax, %eax	# _9, _10
	andl	$2048, %eax	#, _11
# eval/problem68//code.c:11:         if (isdigit(s[i])) {
	testl	%eax, %eax	# _11
	je	.L3	#,
# eval/problem68//code.c:12:             if (is12 == 0) {
	cmpl	$0, -56(%rbp)	#, is12
	jne	.L4	#,
# eval/problem68//code.c:13:                 num1[j++] = s[i];
	movl	-48(%rbp), %eax	# i, tmp111
	movslq	%eax, %rdx	# tmp111, _12
	movq	-72(%rbp), %rax	# s, tmp112
	leaq	(%rdx,%rax), %rcx	#, _13
# eval/problem68//code.c:13:                 num1[j++] = s[i];
	movl	-52(%rbp), %eax	# j, j.0_14
	leal	1(%rax), %edx	#, tmp113
	movl	%edx, -52(%rbp)	# tmp113, j
# eval/problem68//code.c:13:                 num1[j++] = s[i];
	movzbl	(%rcx), %edx	# *_13, _15
# eval/problem68//code.c:13:                 num1[j++] = s[i];
	cltq
	movb	%dl, -44(%rbp,%rax)	# _15, num1[j.0_14]
	jmp	.L5	#
.L4:
# eval/problem68//code.c:15:                 num2[j++] = s[i];
	movl	-48(%rbp), %eax	# i, tmp115
	movslq	%eax, %rdx	# tmp115, _16
	movq	-72(%rbp), %rax	# s, tmp116
	leaq	(%rdx,%rax), %rcx	#, _17
# eval/problem68//code.c:15:                 num2[j++] = s[i];
	movl	-52(%rbp), %eax	# j, j.1_18
	leal	1(%rax), %edx	#, tmp117
	movl	%edx, -52(%rbp)	# tmp117, j
# eval/problem68//code.c:15:                 num2[j++] = s[i];
	movzbl	(%rcx), %edx	# *_17, _19
# eval/problem68//code.c:15:                 num2[j++] = s[i];
	cltq
	movb	%dl, -34(%rbp,%rax)	# _19, num2[j.1_18]
	jmp	.L5	#
.L3:
# eval/problem68//code.c:18:             if (is12 == 0 && j > 0) {
	cmpl	$0, -56(%rbp)	#, is12
	jne	.L5	#,
# eval/problem68//code.c:18:             if (is12 == 0 && j > 0) {
	cmpl	$0, -52(%rbp)	#, j
	jle	.L5	#,
# eval/problem68//code.c:19:                 is12 = 1;
	movl	$1, -56(%rbp)	#, is12
# eval/problem68//code.c:20:                 j = 0;
	movl	$0, -52(%rbp)	#, j
.L5:
# eval/problem68//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	addl	$1, -48(%rbp)	#, i
.L2:
# eval/problem68//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	movl	-48(%rbp), %eax	# i, tmp119
	movslq	%eax, %rdx	# tmp119, _20
	movq	-72(%rbp), %rax	# s, tmp120
	addq	%rdx, %rax	# _20, _21
	movzbl	(%rax), %eax	# *_21, _22
# eval/problem68//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	testb	%al, %al	# _22
	jne	.L6	#,
# eval/problem68//code.c:24:     return n - atoi(num1) - atoi(num2);
	leaq	-44(%rbp), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	atoi@PLT	#
# eval/problem68//code.c:24:     return n - atoi(num1) - atoi(num2);
	movl	-76(%rbp), %edx	# n, tmp122
	movl	%edx, %ebx	# tmp122, tmp122
	subl	%eax, %ebx	# _23, tmp122
# eval/problem68//code.c:24:     return n - atoi(num1) - atoi(num2);
	leaq	-34(%rbp), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	atoi@PLT	#
# eval/problem68//code.c:24:     return n - atoi(num1) - atoi(num2);
	subl	%eax, %ebx	# _25, _24
	movl	%ebx, %edx	# _24, _41
# eval/problem68//code.c:24:     return n - atoi(num1) - atoi(num2);
	movl	%edx, %eax	# _41, <retval>
# eval/problem68//code.c:25: }
	movq	-24(%rbp), %rdx	# D.3840, tmp126
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp126
	je	.L8	#,
	call	__stack_chk_fail@PLT	#
.L8:
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
