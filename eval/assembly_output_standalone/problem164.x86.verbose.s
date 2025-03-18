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
	movl	%edi, -20(%rbp)	# a, a
	movl	%esi, -24(%rbp)	# b, b
	movq	%rdx, -32(%rbp)	# out, out
	movq	%rcx, -40(%rbp)	# size, size
# eval/problem164//code.c:5:     *size = 0;
	movq	-40(%rbp), %rax	# size, tmp89
	movl	$0, (%rax)	#, *size_15(D)
# eval/problem164//code.c:7:     if (b < a) {
	movl	-24(%rbp), %eax	# b, tmp90
	cmpl	-20(%rbp), %eax	# a, tmp90
	jge	.L2	#,
# eval/problem164//code.c:8:         m = a;
	movl	-20(%rbp), %eax	# a, tmp91
	movl	%eax, -4(%rbp)	# tmp91, m
# eval/problem164//code.c:9:         a = b;
	movl	-24(%rbp), %eax	# b, tmp92
	movl	%eax, -20(%rbp)	# tmp92, a
# eval/problem164//code.c:10:         b = m;
	movl	-4(%rbp), %eax	# m, tmp93
	movl	%eax, -24(%rbp)	# tmp93, b
.L2:
# eval/problem164//code.c:13:     for (int i = a; i <= b; i++) {
	movl	-20(%rbp), %eax	# a, tmp94
	movl	%eax, -8(%rbp)	# tmp94, i
# eval/problem164//code.c:13:     for (int i = a; i <= b; i++) {
	jmp	.L3	#
.L5:
# eval/problem164//code.c:14:         if (i < 10 && i % 2 == 0) {
	cmpl	$9, -8(%rbp)	#, i
	jg	.L4	#,
# eval/problem164//code.c:14:         if (i < 10 && i % 2 == 0) {
	movl	-8(%rbp), %eax	# i, i.0_1
	andl	$1, %eax	#, _2
# eval/problem164//code.c:14:         if (i < 10 && i % 2 == 0) {
	testl	%eax, %eax	# _2
	jne	.L4	#,
# eval/problem164//code.c:15:             out[(*size)++] = i;
	movq	-40(%rbp), %rax	# size, tmp95
	movl	(%rax), %eax	# *size_15(D), _3
# eval/problem164//code.c:15:             out[(*size)++] = i;
	leal	1(%rax), %ecx	#, _5
	movq	-40(%rbp), %rdx	# size, tmp96
	movl	%ecx, (%rdx)	# _5, *size_15(D)
	cltq
# eval/problem164//code.c:15:             out[(*size)++] = i;
	leaq	0(,%rax,4), %rdx	#, _7
	movq	-32(%rbp), %rax	# out, tmp97
	addq	%rax, %rdx	# tmp97, _8
# eval/problem164//code.c:15:             out[(*size)++] = i;
	movl	-8(%rbp), %eax	# i, tmp98
	movl	%eax, (%rdx)	# tmp98, *_8
.L4:
# eval/problem164//code.c:13:     for (int i = a; i <= b; i++) {
	addl	$1, -8(%rbp)	#, i
.L3:
# eval/problem164//code.c:13:     for (int i = a; i <= b; i++) {
	movl	-8(%rbp), %eax	# i, tmp99
	cmpl	-24(%rbp), %eax	# b, tmp99
	jle	.L5	#,
# eval/problem164//code.c:18: }
	nop	
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
