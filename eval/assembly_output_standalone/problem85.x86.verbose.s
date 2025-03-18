	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%d"
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
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# N, N
# eval/problem85//code.c:4: char* func0(int N) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp154
	movq	%rax, -8(%rbp)	# tmp154, D.3729
	xorl	%eax, %eax	# tmp154
# eval/problem85//code.c:6:     sprintf(str, "%d", N);
	movl	-52(%rbp), %edx	# N, tmp114
	leaq	-14(%rbp), %rax	#, tmp115
	leaq	.LC0(%rip), %rcx	#, tmp116
	movq	%rcx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp115,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# eval/problem85//code.c:7:     int sum = 0;
	movl	$0, -40(%rbp)	#, sum
# eval/problem85//code.c:8:     for (int i = 0; str[i] != '\0'; i++)
	movl	$0, -36(%rbp)	#, i
# eval/problem85//code.c:8:     for (int i = 0; str[i] != '\0'; i++)
	jmp	.L2	#
.L3:
# eval/problem85//code.c:9:         sum += str[i] - '0';
	movl	-36(%rbp), %eax	# i, tmp118
	cltq
	movzbl	-14(%rbp,%rax), %eax	# str[i_33], _1
	movsbl	%al, %eax	# _1, _2
# eval/problem85//code.c:9:         sum += str[i] - '0';
	subl	$48, %eax	#, _3
# eval/problem85//code.c:9:         sum += str[i] - '0';
	addl	%eax, -40(%rbp)	# _3, sum
# eval/problem85//code.c:8:     for (int i = 0; str[i] != '\0'; i++)
	addl	$1, -36(%rbp)	#, i
.L2:
# eval/problem85//code.c:8:     for (int i = 0; str[i] != '\0'; i++)
	movl	-36(%rbp), %eax	# i, tmp120
	cltq
	movzbl	-14(%rbp,%rax), %eax	# str[i_33], _4
# eval/problem85//code.c:8:     for (int i = 0; str[i] != '\0'; i++)
	testb	%al, %al	# _4
	jne	.L3	#,
# eval/problem85//code.c:11:     char* bi = malloc(33);
	movl	$33, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -24(%rbp)	# tmp121, bi
# eval/problem85//code.c:12:     int index = 0;
	movl	$0, -32(%rbp)	#, index
# eval/problem85//code.c:13:     if (sum == 0) {
	cmpl	$0, -40(%rbp)	#, sum
	jne	.L6	#,
# eval/problem85//code.c:14:         bi[index++] = '0';
	movl	-32(%rbp), %eax	# index, index.0_5
	leal	1(%rax), %edx	#, tmp122
	movl	%edx, -32(%rbp)	# tmp122, index
	movslq	%eax, %rdx	# index.0_5, _6
# eval/problem85//code.c:14:         bi[index++] = '0';
	movq	-24(%rbp), %rax	# bi, tmp123
	addq	%rdx, %rax	# _6, _7
# eval/problem85//code.c:14:         bi[index++] = '0';
	movb	$48, (%rax)	#, *_7
	jmp	.L5	#
.L7:
# eval/problem85//code.c:17:             bi[index++] = (sum % 2) + '0';
	movl	-40(%rbp), %edx	# sum, tmp124
	movl	%edx, %eax	# tmp124, tmp125
	sarl	$31, %eax	#, tmp125
	shrl	$31, %eax	#, tmp126
	addl	%eax, %edx	# tmp126, tmp127
	andl	$1, %edx	#, tmp128
	subl	%eax, %edx	# tmp126, tmp129
	movl	%edx, %eax	# tmp129, _8
# eval/problem85//code.c:17:             bi[index++] = (sum % 2) + '0';
	leal	48(%rax), %ecx	#, _10
# eval/problem85//code.c:17:             bi[index++] = (sum % 2) + '0';
	movl	-32(%rbp), %eax	# index, index.1_11
	leal	1(%rax), %edx	#, tmp130
	movl	%edx, -32(%rbp)	# tmp130, index
	movslq	%eax, %rdx	# index.1_11, _12
# eval/problem85//code.c:17:             bi[index++] = (sum % 2) + '0';
	movq	-24(%rbp), %rax	# bi, tmp131
	addq	%rdx, %rax	# _12, _13
# eval/problem85//code.c:17:             bi[index++] = (sum % 2) + '0';
	movl	%ecx, %edx	# _10, _14
# eval/problem85//code.c:17:             bi[index++] = (sum % 2) + '0';
	movb	%dl, (%rax)	# _14, *_13
# eval/problem85//code.c:18:             sum /= 2;
	movl	-40(%rbp), %eax	# sum, tmp133
	movl	%eax, %edx	# tmp133, tmp134
	shrl	$31, %edx	#, tmp134
	addl	%edx, %eax	# tmp134, tmp135
	sarl	%eax	# tmp136
	movl	%eax, -40(%rbp)	# tmp136, sum
.L6:
# eval/problem85//code.c:16:         while (sum > 0) {
	cmpl	$0, -40(%rbp)	#, sum
	jg	.L7	#,
.L5:
# eval/problem85//code.c:21:     bi[index] = '\0';
	movl	-32(%rbp), %eax	# index, tmp137
	movslq	%eax, %rdx	# tmp137, _15
	movq	-24(%rbp), %rax	# bi, tmp138
	addq	%rdx, %rax	# _15, _16
# eval/problem85//code.c:21:     bi[index] = '\0';
	movb	$0, (%rax)	#, *_16
# eval/problem85//code.c:23:     for (int i = 0; i < index / 2; i++) {
	movl	$0, -28(%rbp)	#, i
# eval/problem85//code.c:23:     for (int i = 0; i < index / 2; i++) {
	jmp	.L8	#
.L9:
# eval/problem85//code.c:24:         char temp = bi[i];
	movl	-28(%rbp), %eax	# i, tmp139
	movslq	%eax, %rdx	# tmp139, _17
	movq	-24(%rbp), %rax	# bi, tmp140
	addq	%rdx, %rax	# _17, _18
# eval/problem85//code.c:24:         char temp = bi[i];
	movzbl	(%rax), %eax	# *_18, tmp141
	movb	%al, -41(%rbp)	# tmp141, temp
# eval/problem85//code.c:25:         bi[i] = bi[index - i - 1];
	movl	-32(%rbp), %eax	# index, tmp142
	subl	-28(%rbp), %eax	# i, _19
	cltq
# eval/problem85//code.c:25:         bi[i] = bi[index - i - 1];
	leaq	-1(%rax), %rdx	#, _21
	movq	-24(%rbp), %rax	# bi, tmp143
	addq	%rdx, %rax	# _21, _22
# eval/problem85//code.c:25:         bi[i] = bi[index - i - 1];
	movl	-28(%rbp), %edx	# i, tmp144
	movslq	%edx, %rcx	# tmp144, _23
	movq	-24(%rbp), %rdx	# bi, tmp145
	addq	%rcx, %rdx	# _23, _24
# eval/problem85//code.c:25:         bi[i] = bi[index - i - 1];
	movzbl	(%rax), %eax	# *_22, _25
# eval/problem85//code.c:25:         bi[i] = bi[index - i - 1];
	movb	%al, (%rdx)	# _25, *_24
# eval/problem85//code.c:26:         bi[index - i - 1] = temp;
	movl	-32(%rbp), %eax	# index, tmp146
	subl	-28(%rbp), %eax	# i, _26
	cltq
# eval/problem85//code.c:26:         bi[index - i - 1] = temp;
	leaq	-1(%rax), %rdx	#, _28
	movq	-24(%rbp), %rax	# bi, tmp147
	addq	%rax, %rdx	# tmp147, _29
# eval/problem85//code.c:26:         bi[index - i - 1] = temp;
	movzbl	-41(%rbp), %eax	# temp, tmp148
	movb	%al, (%rdx)	# tmp148, *_29
# eval/problem85//code.c:23:     for (int i = 0; i < index / 2; i++) {
	addl	$1, -28(%rbp)	#, i
.L8:
# eval/problem85//code.c:23:     for (int i = 0; i < index / 2; i++) {
	movl	-32(%rbp), %eax	# index, tmp149
	movl	%eax, %edx	# tmp149, tmp150
	shrl	$31, %edx	#, tmp150
	addl	%edx, %eax	# tmp150, tmp151
	sarl	%eax	# tmp152
# eval/problem85//code.c:23:     for (int i = 0; i < index / 2; i++) {
	cmpl	%eax, -28(%rbp)	# _30, i
	jl	.L9	#,
# eval/problem85//code.c:29:     return bi;
	movq	-24(%rbp), %rax	# bi, _55
# eval/problem85//code.c:30: }
	movq	-8(%rbp), %rdx	# D.3729, tmp155
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp155
	je	.L11	#,
	call	__stack_chk_fail@PLT	#
.L11:
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
