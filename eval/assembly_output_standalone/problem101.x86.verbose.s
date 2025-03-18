	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
# eval/problem101//code.c:5:     int* out = (int*)malloc(n * sizeof(int));
	movl	-20(%rbp), %eax	# n, tmp95
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp96, out
# eval/problem101//code.c:6:     *out = n;
	movq	-8(%rbp), %rax	# out, tmp97
	movl	-20(%rbp), %edx	# n, tmp98
	movl	%edx, (%rax)	# tmp98, *out_17
# eval/problem101//code.c:7:     for (int i = 1; i < n; i++)
	movl	$1, -12(%rbp)	#, i
# eval/problem101//code.c:7:     for (int i = 1; i < n; i++)
	jmp	.L2	#
.L3:
# eval/problem101//code.c:8:         *(out + i) = *(out + i - 1) + 2;
	movl	-12(%rbp), %eax	# i, tmp99
	cltq
	salq	$2, %rax	#, _4
# eval/problem101//code.c:8:         *(out + i) = *(out + i - 1) + 2;
	leaq	-4(%rax), %rdx	#, _5
	movq	-8(%rbp), %rax	# out, tmp100
	addq	%rdx, %rax	# _5, _6
# eval/problem101//code.c:8:         *(out + i) = *(out + i - 1) + 2;
	movl	(%rax), %edx	# *_6, _7
# eval/problem101//code.c:8:         *(out + i) = *(out + i - 1) + 2;
	movl	-12(%rbp), %eax	# i, tmp101
	cltq
	leaq	0(,%rax,4), %rcx	#, _9
	movq	-8(%rbp), %rax	# out, tmp102
	addq	%rcx, %rax	# _9, _10
# eval/problem101//code.c:8:         *(out + i) = *(out + i - 1) + 2;
	addl	$2, %edx	#, _11
# eval/problem101//code.c:8:         *(out + i) = *(out + i - 1) + 2;
	movl	%edx, (%rax)	# _11, *_10
# eval/problem101//code.c:7:     for (int i = 1; i < n; i++)
	addl	$1, -12(%rbp)	#, i
.L2:
# eval/problem101//code.c:7:     for (int i = 1; i < n; i++)
	movl	-12(%rbp), %eax	# i, tmp103
	cmpl	-20(%rbp), %eax	# n, tmp103
	jl	.L3	#,
# eval/problem101//code.c:9:     return out;
	movq	-8(%rbp), %rax	# out, _20
# eval/problem101//code.c:10: }
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
