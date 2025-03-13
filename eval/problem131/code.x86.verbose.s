	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# n, n
# code.c:5:     int* out = (int*)malloc((n + 1) * sizeof(int));
	movl	-20(%rbp), %eax	# n, tmp113
	addl	$1, %eax	#, _1
	cltq
# code.c:5:     int* out = (int*)malloc((n + 1) * sizeof(int));
	salq	$2, %rax	#, _3
	movq	%rax, %rdi	# _3,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp114, out
# code.c:6:     out[0] = 1;
	movq	-8(%rbp), %rax	# out, tmp115
	movl	$1, (%rax)	#, *out_38
# code.c:7:     if (n == 0) return out;
	cmpl	$0, -20(%rbp)	#, n
	jne	.L2	#,
# code.c:7:     if (n == 0) return out;
	movq	-8(%rbp), %rax	# out, _31
# code.c:7:     if (n == 0) return out;
	jmp	.L3	#
.L2:
# code.c:8:     out[1] = 3;
	movq	-8(%rbp), %rax	# out, tmp116
	addq	$4, %rax	#, _4
# code.c:8:     out[1] = 3;
	movl	$3, (%rax)	#, *_4
# code.c:9:     for (int i = 2; i <= n; i++) {
	movl	$2, -12(%rbp)	#, i
# code.c:9:     for (int i = 2; i <= n; i++) {
	jmp	.L4	#
.L7:
# code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	movl	-12(%rbp), %eax	# i, i.0_5
	andl	$1, %eax	#, _6
# code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	testl	%eax, %eax	# _6
	jne	.L5	#,
# code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	movl	-12(%rbp), %eax	# i, tmp117
	movl	%eax, %edx	# tmp117, tmp118
	shrl	$31, %edx	#, tmp118
	addl	%edx, %eax	# tmp118, tmp119
	sarl	%eax	# tmp120
	movl	%eax, %ecx	# tmp120, _7
# code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	movl	-12(%rbp), %eax	# i, tmp121
	cltq
	leaq	0(,%rax,4), %rdx	#, _9
	movq	-8(%rbp), %rax	# out, tmp122
	addq	%rdx, %rax	# _9, _10
# code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	leal	1(%rcx), %edx	#, _11
# code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	movl	%edx, (%rax)	# _11, *_10
	jmp	.L6	#
.L5:
# code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	movl	-12(%rbp), %eax	# i, tmp123
	cltq
	salq	$2, %rax	#, _13
	leaq	-4(%rax), %rdx	#, _14
	movq	-8(%rbp), %rax	# out, tmp124
	addq	%rdx, %rax	# _14, _15
	movl	(%rax), %edx	# *_15, _16
# code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	movl	-12(%rbp), %eax	# i, tmp125
	cltq
	salq	$2, %rax	#, _18
	leaq	-8(%rax), %rcx	#, _19
	movq	-8(%rbp), %rax	# out, tmp126
	addq	%rcx, %rax	# _19, _20
	movl	(%rax), %eax	# *_20, _21
# code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	addl	%edx, %eax	# _16, _22
# code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	leal	1(%rax), %edx	#, _23
# code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	movl	-12(%rbp), %eax	# i, tmp127
	addl	$1, %eax	#, _24
# code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	movl	%eax, %ecx	# _24, tmp128
	shrl	$31, %ecx	#, tmp128
	addl	%ecx, %eax	# tmp128, tmp129
	sarl	%eax	# tmp130
	movl	%eax, %esi	# tmp130, _25
# code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	movl	-12(%rbp), %eax	# i, tmp131
	cltq
	leaq	0(,%rax,4), %rcx	#, _27
	movq	-8(%rbp), %rax	# out, tmp132
	addq	%rcx, %rax	# _27, _28
# code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	addl	%esi, %edx	# _25, _29
# code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	movl	%edx, (%rax)	# _29, *_28
.L6:
# code.c:9:     for (int i = 2; i <= n; i++) {
	addl	$1, -12(%rbp)	#, i
.L4:
# code.c:9:     for (int i = 2; i <= n; i++) {
	movl	-12(%rbp), %eax	# i, tmp133
	cmpl	-20(%rbp), %eax	# n, tmp133
	jle	.L7	#,
# code.c:13:     return out;
	movq	-8(%rbp), %rax	# out, _31
.L3:
# code.c:14: }
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
