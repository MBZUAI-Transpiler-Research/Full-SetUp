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
	movl	%edi, -4(%rbp)	# n, n
# eval/problem139//code.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	movl	-4(%rbp), %eax	# n, n.0_1
	andl	$1, %eax	#, _2
# eval/problem139//code.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	testl	%eax, %eax	# _2
	jne	.L2	#,
# eval/problem139//code.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	cmpl	$7, -4(%rbp)	#, n
	jle	.L2	#,
# eval/problem139//code.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	movl	$1, %eax	#, _3
# eval/problem139//code.c:4:     if (n % 2 == 0 && n >= 8) return 1;
	jmp	.L3	#
.L2:
# eval/problem139//code.c:5:     return 0;
	movl	$0, %eax	#, _3
.L3:
# eval/problem139//code.c:6: }
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
