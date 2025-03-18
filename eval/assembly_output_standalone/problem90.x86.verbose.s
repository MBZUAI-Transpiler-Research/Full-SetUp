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
	movq	%rdi, -24(%rbp)	# s, s
	movq	%rsi, -32(%rbp)	# out, out
# eval/problem90//code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	movl	$0, -8(%rbp)	#, i
# eval/problem90//code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	jmp	.L2	#
.L3:
# eval/problem90//code.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	movl	-8(%rbp), %eax	# i, tmp96
	movslq	%eax, %rdx	# tmp96, _1
	movq	-24(%rbp), %rax	# s, tmp97
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# eval/problem90//code.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	movsbl	%al, %eax	# _3, _4
# eval/problem90//code.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	leal	-93(%rax), %edx	#, _5
# eval/problem90//code.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	movslq	%edx, %rax	# _5, tmp98
	imulq	$1321528399, %rax, %rax	#, tmp98, tmp99
	shrq	$32, %rax	#, tmp100
	sarl	$3, %eax	#, tmp101
	movl	%edx, %ecx	# _5, tmp102
	sarl	$31, %ecx	#, tmp102
	subl	%ecx, %eax	# tmp102, _6
	imull	$26, %eax, %ecx	#, _6, tmp103
	movl	%edx, %eax	# _5, _5
	subl	%ecx, %eax	# tmp103, _5
# eval/problem90//code.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	addl	$97, %eax	#, tmp104
	movl	%eax, -4(%rbp)	# tmp104, w
# eval/problem90//code.c:8:         out[i] = (char)w;
	movl	-8(%rbp), %eax	# i, tmp105
	movslq	%eax, %rdx	# tmp105, _7
	movq	-32(%rbp), %rax	# out, tmp106
	addq	%rdx, %rax	# _7, _8
# eval/problem90//code.c:8:         out[i] = (char)w;
	movl	-4(%rbp), %edx	# w, tmp107
# eval/problem90//code.c:8:         out[i] = (char)w;
	movb	%dl, (%rax)	# _9, *_8
# eval/problem90//code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	addl	$1, -8(%rbp)	#, i
.L2:
# eval/problem90//code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	movl	-8(%rbp), %eax	# i, tmp108
	movslq	%eax, %rdx	# tmp108, _10
	movq	-24(%rbp), %rax	# s, tmp109
	addq	%rdx, %rax	# _10, _11
	movzbl	(%rax), %eax	# *_11, _12
# eval/problem90//code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	testb	%al, %al	# _12
	jne	.L3	#,
# eval/problem90//code.c:10:     out[i] = '\0';
	movl	-8(%rbp), %eax	# i, tmp110
	movslq	%eax, %rdx	# tmp110, _13
	movq	-32(%rbp), %rax	# out, tmp111
	addq	%rdx, %rax	# _13, _14
# eval/problem90//code.c:10:     out[i] = '\0';
	movb	$0, (%rax)	#, *_14
# eval/problem90//code.c:11: }
	nop	
	popq	%rbp	#
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
