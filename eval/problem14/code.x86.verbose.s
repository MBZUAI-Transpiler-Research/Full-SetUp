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
	movl	%edi, -20(%rbp)	# a, a
	movl	%esi, -24(%rbp)	# b, b
# code.c:4:     while (b != 0) {
	jmp	.L2	#
.L3:
# code.c:5:         int m = a % b;
	movl	-20(%rbp), %eax	# a, tmp85
	cltd
	idivl	-24(%rbp)	# b
	movl	%edx, -4(%rbp)	# tmp86, m
# code.c:6:         a = b;
	movl	-24(%rbp), %eax	# b, tmp88
	movl	%eax, -20(%rbp)	# tmp88, a
# code.c:7:         b = m;
	movl	-4(%rbp), %eax	# m, tmp89
	movl	%eax, -24(%rbp)	# tmp89, b
.L2:
# code.c:4:     while (b != 0) {
	cmpl	$0, -24(%rbp)	#, b
	jne	.L3	#,
# code.c:9:     return a;
	movl	-20(%rbp), %eax	# a, _5
# code.c:10: }
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
