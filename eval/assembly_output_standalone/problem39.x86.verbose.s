	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# s, s
	movl	%esi, -44(%rbp)	# encode, encode
# eval/problem39//code.c:4: void func0(char *s, int encode) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp130
	movq	%rax, -8(%rbp)	# tmp130, D.3411
	xorl	%eax, %eax	# tmp130
# eval/problem39//code.c:5:     int l = strlen(s);
	movq	-40(%rbp), %rax	# s, tmp100
	movq	%rax, %rdi	# tmp100,
	call	strlen@PLT	#
# eval/problem39//code.c:5:     int l = strlen(s);
	movl	%eax, -24(%rbp)	# _1, l
# eval/problem39//code.c:6:     int num = (l + 2) / 3;
	movl	-24(%rbp), %eax	# l, tmp101
	addl	$2, %eax	#, _2
# eval/problem39//code.c:6:     int num = (l + 2) / 3;
	movslq	%eax, %rdx	# _2, tmp102
	imulq	$1431655766, %rdx, %rdx	#, tmp102, tmp103
	movq	%rdx, %rcx	# tmp103, tmp103
	shrq	$32, %rcx	#, tmp103
	cltd
	movl	%ecx, %eax	# tmp104, tmp106
	subl	%edx, %eax	# tmp105, tmp106
	movl	%eax, -20(%rbp)	# tmp106, num
# eval/problem39//code.c:9:     for (int i = 0; i < num; ++i) {
	movl	$0, -28(%rbp)	#, i
# eval/problem39//code.c:9:     for (int i = 0; i < num; ++i) {
	jmp	.L2	#
.L7:
# eval/problem39//code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	movl	-28(%rbp), %eax	# i, tmp107
	leal	1(%rax), %edx	#, _3
	movl	%edx, %eax	# _3, tmp108
	addl	%eax, %eax	# tmp108
	addl	%edx, %eax	# _3, _4
# eval/problem39//code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	cmpl	%eax, -24(%rbp)	# _4, l
	jge	.L3	#,
# eval/problem39//code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	movl	-28(%rbp), %eax	# i, tmp109
	movl	%eax, %edx	# tmp109, tmp110
	sall	$2, %eax	#, tmp111
	subl	%eax, %edx	# tmp111, _5
# eval/problem39//code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	movl	-24(%rbp), %eax	# l, tmp112
	addl	%edx, %eax	# _5, iftmp.0_19
	jmp	.L4	#
.L3:
# eval/problem39//code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	movl	$3, %eax	#, iftmp.0_19
.L4:
# eval/problem39//code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	movl	%eax, -16(%rbp)	# iftmp.0_19, len
# eval/problem39//code.c:11:         strncpy(x, s + i * 3, len);
	movl	-16(%rbp), %eax	# len, tmp113
	movslq	%eax, %rcx	# tmp113, _6
# eval/problem39//code.c:11:         strncpy(x, s + i * 3, len);
	movl	-28(%rbp), %edx	# i, tmp114
	movl	%edx, %eax	# tmp114, tmp115
	addl	%eax, %eax	# tmp115
	addl	%edx, %eax	# tmp114, _7
	movslq	%eax, %rdx	# _7, _8
# eval/problem39//code.c:11:         strncpy(x, s + i * 3, len);
	movq	-40(%rbp), %rax	# s, tmp116
	leaq	(%rdx,%rax), %rsi	#, _9
# eval/problem39//code.c:11:         strncpy(x, s + i * 3, len);
	leaq	-12(%rbp), %rax	#, tmp117
	movq	%rcx, %rdx	# _6,
	movq	%rax, %rdi	# tmp117,
	call	strncpy@PLT	#
# eval/problem39//code.c:12:         x[len] = '\0';
	movl	-16(%rbp), %eax	# len, tmp119
	cltq
	movb	$0, -12(%rbp,%rax)	#, x[len_30]
# eval/problem39//code.c:14:         if (len == 3) {
	cmpl	$3, -16(%rbp)	#, len
	jne	.L5	#,
# eval/problem39//code.c:15:             if (encode) {
	cmpl	$0, -44(%rbp)	#, encode
	je	.L6	#,
# eval/problem39//code.c:16:                 char temp = x[2];
	movzbl	-10(%rbp), %eax	# x[2], tmp120
	movb	%al, -29(%rbp)	# tmp120, temp
# eval/problem39//code.c:17:                 x[2] = x[1];
	movzbl	-11(%rbp), %eax	# x[1], _10
# eval/problem39//code.c:17:                 x[2] = x[1];
	movb	%al, -10(%rbp)	# _10, x[2]
# eval/problem39//code.c:18:                 x[1] = x[0];
	movzbl	-12(%rbp), %eax	# x[0], _11
# eval/problem39//code.c:18:                 x[1] = x[0];
	movb	%al, -11(%rbp)	# _11, x[1]
# eval/problem39//code.c:19:                 x[0] = temp;
	movzbl	-29(%rbp), %eax	# temp, tmp121
	movb	%al, -12(%rbp)	# tmp121, x[0]
	jmp	.L5	#
.L6:
# eval/problem39//code.c:21:                 char temp = x[0];
	movzbl	-12(%rbp), %eax	# x[0], tmp122
	movb	%al, -30(%rbp)	# tmp122, temp
# eval/problem39//code.c:22:                 x[0] = x[1];
	movzbl	-11(%rbp), %eax	# x[1], _12
# eval/problem39//code.c:22:                 x[0] = x[1];
	movb	%al, -12(%rbp)	# _12, x[0]
# eval/problem39//code.c:23:                 x[1] = x[2];
	movzbl	-10(%rbp), %eax	# x[2], _13
# eval/problem39//code.c:23:                 x[1] = x[2];
	movb	%al, -11(%rbp)	# _13, x[1]
# eval/problem39//code.c:24:                 x[2] = temp;
	movzbl	-30(%rbp), %eax	# temp, tmp123
	movb	%al, -10(%rbp)	# tmp123, x[2]
.L5:
# eval/problem39//code.c:27:         strncpy(s + i * 3, x, len);
	movl	-16(%rbp), %eax	# len, tmp124
	movslq	%eax, %rcx	# tmp124, _14
# eval/problem39//code.c:27:         strncpy(s + i * 3, x, len);
	movl	-28(%rbp), %edx	# i, tmp125
	movl	%edx, %eax	# tmp125, tmp126
	addl	%eax, %eax	# tmp126
	addl	%edx, %eax	# tmp125, _15
	movslq	%eax, %rdx	# _15, _16
# eval/problem39//code.c:27:         strncpy(s + i * 3, x, len);
	movq	-40(%rbp), %rax	# s, tmp127
	leaq	(%rdx,%rax), %rdi	#, _17
	leaq	-12(%rbp), %rax	#, tmp128
	movq	%rcx, %rdx	# _14,
	movq	%rax, %rsi	# tmp128,
	call	strncpy@PLT	#
# eval/problem39//code.c:9:     for (int i = 0; i < num; ++i) {
	addl	$1, -28(%rbp)	#, i
.L2:
# eval/problem39//code.c:9:     for (int i = 0; i < num; ++i) {
	movl	-28(%rbp), %eax	# i, tmp129
	cmpl	-20(%rbp), %eax	# num, tmp129
	jl	.L7	#,
# eval/problem39//code.c:29: }
	nop	
	movq	-8(%rbp), %rax	# D.3411, tmp131
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp131
	je	.L8	#,
	call	__stack_chk_fail@PLT	#
.L8:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
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
