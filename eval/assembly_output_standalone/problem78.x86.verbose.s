	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	movl	%edi, -20(%rbp)	# a, a
# eval/problem78//code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	movl	$0, -4(%rbp)	#, i
# eval/problem78//code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	jmp	.L2	#
.L5:
# eval/problem78//code.c:7:         if (i * i * i == abs(a)) return 1;
	movl	-4(%rbp), %eax	# i, tmp90
	imull	%eax, %eax	# tmp90, _1
# eval/problem78//code.c:7:         if (i * i * i == abs(a)) return 1;
	imull	-4(%rbp), %eax	# i, _1
	movl	%eax, %edx	# _1, _2
# eval/problem78//code.c:7:         if (i * i * i == abs(a)) return 1;
	movl	-20(%rbp), %eax	# a, tmp95
	movl	%eax, %ecx	# tmp95, tmp96
	negl	%ecx	# tmp96
	cmovns	%ecx, %eax	# tmp96,, _3
# eval/problem78//code.c:7:         if (i * i * i == abs(a)) return 1;
	cmpl	%eax, %edx	# _3, _2
	jne	.L3	#,
# eval/problem78//code.c:7:         if (i * i * i == abs(a)) return 1;
	movl	$1, %eax	#, _8
	jmp	.L4	#
.L3:
# eval/problem78//code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	addl	$1, -4(%rbp)	#, i
.L2:
# eval/problem78//code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	movl	-4(%rbp), %eax	# i, tmp91
	imull	%eax, %eax	# tmp91, _4
# eval/problem78//code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	imull	-4(%rbp), %eax	# i, _4
	movl	%eax, %edx	# _4, _5
# eval/problem78//code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	movl	-20(%rbp), %eax	# a, tmp93
	movl	%eax, %ecx	# tmp93, tmp94
	negl	%ecx	# tmp94
	cmovns	%ecx, %eax	# tmp94,, _6
# eval/problem78//code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	cmpl	%eax, %edx	# _6, _5
	jle	.L5	#,
# eval/problem78//code.c:8:     return 0;
	movl	$0, %eax	#, _8
.L4:
# eval/problem78//code.c:9: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
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
