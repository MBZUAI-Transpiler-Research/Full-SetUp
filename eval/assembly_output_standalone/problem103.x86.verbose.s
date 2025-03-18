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
	movl	%edi, -4(%rbp)	# x, x
	movl	%esi, -8(%rbp)	# y, y
# eval/problem103//code.c:4:     if (y < x) return -1;
	movl	-8(%rbp), %eax	# y, tmp86
	cmpl	-4(%rbp), %eax	# x, tmp86
	jge	.L2	#,
# eval/problem103//code.c:4:     if (y < x) return -1;
	movl	$-1, %eax	#, _3
# eval/problem103//code.c:4:     if (y < x) return -1;
	jmp	.L3	#
.L2:
# eval/problem103//code.c:5:     if (y == x && y % 2 == 1) return -1;
	movl	-8(%rbp), %eax	# y, tmp87
	cmpl	-4(%rbp), %eax	# x, tmp87
	jne	.L4	#,
# eval/problem103//code.c:5:     if (y == x && y % 2 == 1) return -1;
	movl	-8(%rbp), %edx	# y, tmp88
	movl	%edx, %eax	# tmp88, tmp89
	sarl	$31, %eax	#, tmp89
	shrl	$31, %eax	#, tmp90
	addl	%eax, %edx	# tmp90, tmp91
	andl	$1, %edx	#, tmp92
	subl	%eax, %edx	# tmp90, tmp93
	movl	%edx, %eax	# tmp93, _1
# eval/problem103//code.c:5:     if (y == x && y % 2 == 1) return -1;
	cmpl	$1, %eax	#, _1
	jne	.L4	#,
# eval/problem103//code.c:5:     if (y == x && y % 2 == 1) return -1;
	movl	$-1, %eax	#, _3
# eval/problem103//code.c:5:     if (y == x && y % 2 == 1) return -1;
	jmp	.L3	#
.L4:
# eval/problem103//code.c:6:     if (y % 2 == 1) return y - 1;
	movl	-8(%rbp), %edx	# y, tmp94
	movl	%edx, %eax	# tmp94, tmp95
	sarl	$31, %eax	#, tmp95
	shrl	$31, %eax	#, tmp96
	addl	%eax, %edx	# tmp96, tmp97
	andl	$1, %edx	#, tmp98
	subl	%eax, %edx	# tmp96, tmp99
	movl	%edx, %eax	# tmp99, _2
# eval/problem103//code.c:6:     if (y % 2 == 1) return y - 1;
	cmpl	$1, %eax	#, _2
	jne	.L5	#,
# eval/problem103//code.c:6:     if (y % 2 == 1) return y - 1;
	movl	-8(%rbp), %eax	# y, tmp100
	subl	$1, %eax	#, _3
# eval/problem103//code.c:6:     if (y % 2 == 1) return y - 1;
	jmp	.L3	#
.L5:
# eval/problem103//code.c:7:     return y;
	movl	-8(%rbp), %eax	# y, _3
.L3:
# eval/problem103//code.c:8: }
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
