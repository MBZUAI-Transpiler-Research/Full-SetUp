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
	movq	%rdi, -24(%rbp)	# n, n
# eval/problem32//code.c:4:     if (n < 2) return false;
	cmpq	$1, -24(%rbp)	#, n
	jg	.L2	#,
# eval/problem32//code.c:4:     if (n < 2) return false;
	movl	$0, %eax	#, _4
# eval/problem32//code.c:4:     if (n < 2) return false;
	jmp	.L3	#
.L2:
# eval/problem32//code.c:5:     for (long long i = 2; i * i <= n; i++)
	movq	$2, -8(%rbp)	#, i
# eval/problem32//code.c:5:     for (long long i = 2; i * i <= n; i++)
	jmp	.L4	#
.L6:
# eval/problem32//code.c:6:         if (n % i == 0) return false;
	movq	-24(%rbp), %rax	# n, tmp86
	cqto
	idivq	-8(%rbp)	# i
	movq	%rdx, %rax	# tmp87, _1
# eval/problem32//code.c:6:         if (n % i == 0) return false;
	testq	%rax, %rax	# _1
	jne	.L5	#,
# eval/problem32//code.c:6:         if (n % i == 0) return false;
	movl	$0, %eax	#, _4
# eval/problem32//code.c:6:         if (n % i == 0) return false;
	jmp	.L3	#
.L5:
# eval/problem32//code.c:5:     for (long long i = 2; i * i <= n; i++)
	addq	$1, -8(%rbp)	#, i
.L4:
# eval/problem32//code.c:5:     for (long long i = 2; i * i <= n; i++)
	movq	-8(%rbp), %rax	# i, tmp89
	imulq	%rax, %rax	# tmp89, _2
# eval/problem32//code.c:5:     for (long long i = 2; i * i <= n; i++)
	cmpq	%rax, -24(%rbp)	# _2, n
	jge	.L6	#,
# eval/problem32//code.c:7:     return true;
	movl	$1, %eax	#, _4
.L3:
# eval/problem32//code.c:8: }
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
