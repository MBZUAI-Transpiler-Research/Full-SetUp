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
	movl	%edi, -4(%rbp)	# number, number
	movl	%esi, -8(%rbp)	# need, need
	movl	%edx, -12(%rbp)	# remaining, remaining
	movq	%rcx, -24(%rbp)	# result, result
# code.c:4:     if (need > remaining) {
	movl	-8(%rbp), %eax	# need, tmp87
	cmpl	-12(%rbp), %eax	# remaining, tmp87
	jle	.L2	#,
# code.c:5:         result[0] = number + remaining;
	movl	-4(%rbp), %edx	# number, tmp88
	movl	-12(%rbp), %eax	# remaining, tmp89
	addl	%eax, %edx	# tmp89, _1
# code.c:5:         result[0] = number + remaining;
	movq	-24(%rbp), %rax	# result, tmp90
	movl	%edx, (%rax)	# _1, *result_11(D)
# code.c:6:         result[1] = 0;
	movq	-24(%rbp), %rax	# result, tmp91
	addq	$4, %rax	#, _2
# code.c:6:         result[1] = 0;
	movl	$0, (%rax)	#, *_2
# code.c:11: }
	jmp	.L4	#
.L2:
# code.c:8:         result[0] = number + need;
	movl	-4(%rbp), %edx	# number, tmp92
	movl	-8(%rbp), %eax	# need, tmp93
	addl	%eax, %edx	# tmp93, _3
# code.c:8:         result[0] = number + need;
	movq	-24(%rbp), %rax	# result, tmp94
	movl	%edx, (%rax)	# _3, *result_11(D)
# code.c:9:         result[1] = remaining - need;
	movq	-24(%rbp), %rax	# result, tmp95
	leaq	4(%rax), %rdx	#, _4
# code.c:9:         result[1] = remaining - need;
	movl	-12(%rbp), %eax	# remaining, tmp96
	subl	-8(%rbp), %eax	# need, _5
# code.c:9:         result[1] = remaining - need;
	movl	%eax, (%rdx)	# _5, *_4
.L4:
# code.c:11: }
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
