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
	movl	%edi, -4(%rbp)	# a, a
	movl	%esi, -8(%rbp)	# b, b
# eval/problem98//code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	movl	-4(%rbp), %eax	# a, tmp103
	movl	%eax, %edx	# tmp103, tmp104
	negl	%edx	# tmp104
	cmovs	%eax, %edx	# tmp104,, tmp103, _1
# eval/problem98//code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	movslq	%edx, %rax	# _1, tmp88
	imulq	$1717986919, %rax, %rax	#, tmp88, tmp89
	shrq	$32, %rax	#, tmp90
	movl	%eax, %ecx	# tmp90, tmp91
	sarl	$2, %ecx	#, tmp91
	movl	%edx, %eax	# _1, tmp92
	sarl	$31, %eax	#, tmp92
	subl	%eax, %ecx	# tmp92, _2
	movl	%ecx, %eax	# _2, tmp93
	sall	$2, %eax	#, tmp93
	addl	%ecx, %eax	# _2, tmp93
	addl	%eax, %eax	# tmp94
	movl	%edx, %ecx	# _1, _1
	subl	%eax, %ecx	# tmp93, _1
# eval/problem98//code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	movl	-8(%rbp), %eax	# b, tmp105
	movl	%eax, %edx	# tmp105, tmp106
	negl	%edx	# tmp106
	cmovns	%edx, %eax	# tmp106,, tmp105
	movl	%eax, %esi	# tmp105, _3
# eval/problem98//code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	movslq	%esi, %rax	# _3, tmp95
	imulq	$1717986919, %rax, %rax	#, tmp95, tmp96
	shrq	$32, %rax	#, tmp97
	movl	%eax, %edx	# tmp97, tmp98
	sarl	$2, %edx	#, tmp98
	movl	%esi, %eax	# _3, tmp99
	sarl	$31, %eax	#, tmp99
	subl	%eax, %edx	# tmp99, _4
	movl	%edx, %eax	# _4, tmp100
	sall	$2, %eax	#, tmp100
	addl	%edx, %eax	# _4, tmp100
	addl	%eax, %eax	# tmp101
	subl	%eax, %esi	# tmp100, _3
	movl	%esi, %edx	# _3, _4
# eval/problem98//code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	movl	%ecx, %eax	# _2, _2
	imull	%edx, %eax	# _4, _2
# eval/problem98//code.c:6: }
	popq	%rbp	#
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
