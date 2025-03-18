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
	subq	$96, %rsp	#,
	movl	%edi, -84(%rbp)	# x, x
	movl	%esi, -88(%rbp)	# shift, shift
# eval/problem66//code.c:5: char* func0(int x, int shift) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp132
	movq	%rax, -8(%rbp)	# tmp132, D.3931
	xorl	%eax, %eax	# tmp132
# eval/problem66//code.c:7:     sprintf(xs, "%d", x);
	movl	-84(%rbp), %eax	# x, tmp97
	movl	%eax, %edx	# tmp97,
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	xs.0(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# eval/problem66//code.c:8:     int len = strlen(xs);
	leaq	xs.0(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	strlen@PLT	#
# eval/problem66//code.c:8:     int len = strlen(xs);
	movl	%eax, -68(%rbp)	# _1, len
# eval/problem66//code.c:10:     if (len < shift) {
	movl	-68(%rbp), %eax	# len, tmp101
	cmpl	-88(%rbp), %eax	# shift, tmp101
	jge	.L2	#,
# eval/problem66//code.c:11:         for (int i = 0; i < len / 2; i++) {
	movl	$0, -72(%rbp)	#, i
# eval/problem66//code.c:11:         for (int i = 0; i < len / 2; i++) {
	jmp	.L3	#
.L4:
# eval/problem66//code.c:12:             char temp = xs[i];
	movl	-72(%rbp), %eax	# i, tmp103
	cltq
	leaq	xs.0(%rip), %rdx	#, tmp104
	movzbl	(%rax,%rdx), %eax	# xs[i_14], tmp105
	movb	%al, -73(%rbp)	# tmp105, temp
# eval/problem66//code.c:13:             xs[i] = xs[len - 1 - i];
	movl	-68(%rbp), %eax	# len, tmp106
	subl	$1, %eax	#, _2
# eval/problem66//code.c:13:             xs[i] = xs[len - 1 - i];
	subl	-72(%rbp), %eax	# i, _3
# eval/problem66//code.c:13:             xs[i] = xs[len - 1 - i];
	cltq
	leaq	xs.0(%rip), %rdx	#, tmp108
	movzbl	(%rax,%rdx), %edx	# xs[_3], _4
# eval/problem66//code.c:13:             xs[i] = xs[len - 1 - i];
	movl	-72(%rbp), %eax	# i, tmp110
	cltq
	leaq	xs.0(%rip), %rcx	#, tmp111
	movb	%dl, (%rax,%rcx)	# _4, xs[i_14]
# eval/problem66//code.c:14:             xs[len - 1 - i] = temp;
	movl	-68(%rbp), %eax	# len, tmp112
	subl	$1, %eax	#, _5
# eval/problem66//code.c:14:             xs[len - 1 - i] = temp;
	subl	-72(%rbp), %eax	# i, _6
# eval/problem66//code.c:14:             xs[len - 1 - i] = temp;
	cltq
	leaq	xs.0(%rip), %rcx	#, tmp114
	movzbl	-73(%rbp), %edx	# temp, tmp115
	movb	%dl, (%rax,%rcx)	# tmp115, xs[_6]
# eval/problem66//code.c:11:         for (int i = 0; i < len / 2; i++) {
	addl	$1, -72(%rbp)	#, i
.L3:
# eval/problem66//code.c:11:         for (int i = 0; i < len / 2; i++) {
	movl	-68(%rbp), %eax	# len, tmp116
	movl	%eax, %edx	# tmp116, tmp117
	shrl	$31, %edx	#, tmp117
	addl	%edx, %eax	# tmp117, tmp118
	sarl	%eax	# tmp119
# eval/problem66//code.c:11:         for (int i = 0; i < len / 2; i++) {
	cmpl	%eax, -72(%rbp)	# _7, i
	jl	.L4	#,
	jmp	.L5	#
.L2:
# eval/problem66//code.c:18:         strcpy(temp, xs + len - shift);
	movl	-68(%rbp), %eax	# len, tmp120
	movslq	%eax, %rdx	# tmp120, _8
	movl	-88(%rbp), %eax	# shift, tmp121
	cltq
	subq	%rax, %rdx	# _9, _10
# eval/problem66//code.c:18:         strcpy(temp, xs + len - shift);
	leaq	xs.0(%rip), %rax	#, tmp122
	addq	%rax, %rdx	# tmp122, _11
	leaq	-64(%rbp), %rax	#, tmp123
	movq	%rdx, %rsi	# _11,
	movq	%rax, %rdi	# tmp123,
	call	strcpy@PLT	#
# eval/problem66//code.c:19:         temp[shift] = '\0';
	movl	-88(%rbp), %eax	# shift, tmp125
	cltq
	movb	$0, -64(%rbp,%rax)	#, temp[shift_21(D)]
# eval/problem66//code.c:20:         strncat(temp, xs, len - shift);
	movl	-68(%rbp), %eax	# len, tmp126
	subl	-88(%rbp), %eax	# shift, _12
# eval/problem66//code.c:20:         strncat(temp, xs, len - shift);
	movslq	%eax, %rdx	# _12, _13
	leaq	-64(%rbp), %rax	#, tmp127
	leaq	xs.0(%rip), %rcx	#, tmp128
	movq	%rcx, %rsi	# tmp128,
	movq	%rax, %rdi	# tmp127,
	call	strncat@PLT	#
# eval/problem66//code.c:21:         strcpy(xs, temp);
	leaq	-64(%rbp), %rax	#, tmp129
	movq	%rax, %rsi	# tmp129,
	leaq	xs.0(%rip), %rax	#, tmp130
	movq	%rax, %rdi	# tmp130,
	call	strcpy@PLT	#
.L5:
# eval/problem66//code.c:24:     return xs;
	leaq	xs.0(%rip), %rax	#, _32
# eval/problem66//code.c:25: }
	movq	-8(%rbp), %rdx	# D.3931, tmp133
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp133
	je	.L7	#,
	call	__stack_chk_fail@PLT	#
.L7:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.local	xs.0
	.comm	xs.0,50,32
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
