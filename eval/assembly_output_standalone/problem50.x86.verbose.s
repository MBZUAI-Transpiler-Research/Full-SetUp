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
	movl	%edi, -20(%rbp)	# n, n
	movl	%esi, -24(%rbp)	# p, p
# eval/problem50//code.c:4:     int out = 1;
	movl	$1, -8(%rbp)	#, out
# eval/problem50//code.c:5:     for (int i = 0; i < n; i++)
	movl	$0, -4(%rbp)	#, i
# eval/problem50//code.c:5:     for (int i = 0; i < n; i++)
	jmp	.L2	#
.L3:
# eval/problem50//code.c:6:         out = (out * 2) % p;
	movl	-8(%rbp), %eax	# out, tmp85
	addl	%eax, %eax	# _1
# eval/problem50//code.c:6:         out = (out * 2) % p;
	cltd
	idivl	-24(%rbp)	# p
	movl	%edx, -8(%rbp)	# tmp87, out
# eval/problem50//code.c:5:     for (int i = 0; i < n; i++)
	addl	$1, -4(%rbp)	#, i
.L2:
# eval/problem50//code.c:5:     for (int i = 0; i < n; i++)
	movl	-4(%rbp), %eax	# i, tmp89
	cmpl	-20(%rbp), %eax	# n, tmp89
	jl	.L3	#,
# eval/problem50//code.c:7:     return out;
	movl	-8(%rbp), %eax	# out, _7
# eval/problem50//code.c:8: }
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
