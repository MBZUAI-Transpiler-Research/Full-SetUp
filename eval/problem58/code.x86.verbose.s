	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
	movq	%rdi, -24(%rbp)	# l, l
	movl	%esi, -28(%rbp)	# size, size
# code.c:6:     incr = decr = 0;
	movl	$0, -8(%rbp)	#, decr
# code.c:6:     incr = decr = 0;
	movl	-8(%rbp), %eax	# decr, tmp103
	movl	%eax, -12(%rbp)	# tmp103, incr
# code.c:8:     for (int i = 1; i < size; i++) {
	movl	$1, -4(%rbp)	#, i
# code.c:8:     for (int i = 1; i < size; i++) {
	jmp	.L2	#
.L7:
# code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	movl	-4(%rbp), %eax	# i, tmp104
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# l, tmp105
	addq	%rdx, %rax	# _2, _3
	movss	(%rax), %xmm0	# *_3, _4
# code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	movl	-4(%rbp), %eax	# i, tmp106
	cltq
	salq	$2, %rax	#, _6
	leaq	-4(%rax), %rdx	#, _7
	movq	-24(%rbp), %rax	# l, tmp107
	addq	%rdx, %rax	# _7, _8
	movss	(%rax), %xmm1	# *_8, _9
# code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	comiss	%xmm1, %xmm0	# _9, _4
	jbe	.L3	#,
# code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	movl	$1, -12(%rbp)	#, incr
.L3:
# code.c:10:         if (l[i] < l[i - 1]) decr = 1;
	movl	-4(%rbp), %eax	# i, tmp108
	cltq
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-24(%rbp), %rax	# l, tmp109
	addq	%rdx, %rax	# _11, _12
	movss	(%rax), %xmm1	# *_12, _13
# code.c:10:         if (l[i] < l[i - 1]) decr = 1;
	movl	-4(%rbp), %eax	# i, tmp110
	cltq
	salq	$2, %rax	#, _15
	leaq	-4(%rax), %rdx	#, _16
	movq	-24(%rbp), %rax	# l, tmp111
	addq	%rdx, %rax	# _16, _17
	movss	(%rax), %xmm0	# *_17, _18
# code.c:10:         if (l[i] < l[i - 1]) decr = 1;
	comiss	%xmm1, %xmm0	# _13, _18
	jbe	.L5	#,
# code.c:10:         if (l[i] < l[i - 1]) decr = 1;
	movl	$1, -8(%rbp)	#, decr
.L5:
# code.c:8:     for (int i = 1; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L2:
# code.c:8:     for (int i = 1; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp112
	cmpl	-28(%rbp), %eax	# size, tmp112
	jl	.L7	#,
# code.c:12:     if (incr + decr == 2) return false;
	movl	-12(%rbp), %edx	# incr, tmp113
	movl	-8(%rbp), %eax	# decr, tmp114
	addl	%edx, %eax	# tmp113, _19
# code.c:12:     if (incr + decr == 2) return false;
	cmpl	$2, %eax	#, _19
	jne	.L8	#,
# code.c:12:     if (incr + decr == 2) return false;
	movl	$0, %eax	#, _25
# code.c:12:     if (incr + decr == 2) return false;
	jmp	.L9	#
.L8:
# code.c:13:     return true;
	movl	$1, %eax	#, _25
.L9:
# code.c:14: }
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
