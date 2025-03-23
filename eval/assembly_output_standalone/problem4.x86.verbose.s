	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	movq	%rdi, -24(%rbp)	# operations, operations
	movl	%esi, -28(%rbp)	# size, size
# eval/problem4//code.c:4:     int num = 0;
	movl	$0, -8(%rbp)	#, num
# eval/problem4//code.c:5:     for (int i = 0; i < size; i++) {
	movl	$0, -4(%rbp)	#, i
# eval/problem4//code.c:5:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L5:
# eval/problem4//code.c:6:         num += operations[i];
	movl	-4(%rbp), %eax	# i, tmp88
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# operations, tmp89
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# eval/problem4//code.c:6:         num += operations[i];
	addl	%eax, -8(%rbp)	# _4, num
# eval/problem4//code.c:7:         if (num < 0) return 1;
	cmpl	$0, -8(%rbp)	#, num
	jns	.L3	#,
# eval/problem4//code.c:7:         if (num < 0) return 1;
	movl	$1, %eax	#, _7
	jmp	.L4	#
.L3:
# eval/problem4//code.c:5:     for (int i = 0; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L2:
# eval/problem4//code.c:5:     for (int i = 0; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp90
	cmpl	-28(%rbp), %eax	# size, tmp90
	jl	.L5	#,
# eval/problem4//code.c:9:     return 0;
	movl	$0, %eax	#, _7
.L4:
# eval/problem4//code.c:10: }
	popq	%rbp	#
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
