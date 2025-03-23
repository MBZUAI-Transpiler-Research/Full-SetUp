	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"NO"
.LC1:
	.string	"YES"
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
	movl	%edi, -20(%rbp)	# interval1_start, interval1_start
	movl	%esi, -24(%rbp)	# interval1_end, interval1_end
	movl	%edx, -28(%rbp)	# interval2_start, interval2_start
	movl	%ecx, -32(%rbp)	# interval2_end, interval2_end
# eval/problem128//code.c:5:     inter1 = interval1_start > interval2_start ? interval1_start : interval2_start;
	movl	-28(%rbp), %edx	# interval2_start, tmp87
	movl	-20(%rbp), %eax	# interval1_start, tmp99
	cmpl	%eax, %edx	# tmp99, tmp87
	cmovge	%edx, %eax	# tmp87,, tmp86
	movl	%eax, -12(%rbp)	# tmp86, inter1
# eval/problem128//code.c:6:     inter2 = interval1_end < interval2_end ? interval1_end : interval2_end;
	movl	-32(%rbp), %edx	# interval2_end, tmp89
	movl	-24(%rbp), %eax	# interval1_end, tmp100
	cmpl	%eax, %edx	# tmp100, tmp89
	cmovle	%edx, %eax	# tmp89,, tmp88
	movl	%eax, -8(%rbp)	# tmp88, inter2
# eval/problem128//code.c:7:     l = inter2 - inter1;
	movl	-8(%rbp), %eax	# inter2, tmp93
	subl	-12(%rbp), %eax	# inter1, tmp92
	movl	%eax, -4(%rbp)	# tmp92, l
# eval/problem128//code.c:9:     if (l < 2) return "NO";
	cmpl	$1, -4(%rbp)	#, l
	jg	.L2	#,
# eval/problem128//code.c:9:     if (l < 2) return "NO";
	leaq	.LC0(%rip), %rax	#, _4
	jmp	.L3	#
.L2:
# eval/problem128//code.c:11:     for (i = 2; i * i <= l; i++)
	movl	$2, -16(%rbp)	#, i
# eval/problem128//code.c:11:     for (i = 2; i * i <= l; i++)
	jmp	.L4	#
.L6:
# eval/problem128//code.c:12:         if (l % i == 0) return "NO";
	movl	-4(%rbp), %eax	# l, tmp94
	cltd
	idivl	-16(%rbp)	# i
	movl	%edx, %eax	# tmp95, _1
# eval/problem128//code.c:12:         if (l % i == 0) return "NO";
	testl	%eax, %eax	# _1
	jne	.L5	#,
# eval/problem128//code.c:12:         if (l % i == 0) return "NO";
	leaq	.LC0(%rip), %rax	#, _4
	jmp	.L3	#
.L5:
# eval/problem128//code.c:11:     for (i = 2; i * i <= l; i++)
	addl	$1, -16(%rbp)	#, i
.L4:
# eval/problem128//code.c:11:     for (i = 2; i * i <= l; i++)
	movl	-16(%rbp), %eax	# i, tmp97
	imull	%eax, %eax	# tmp97, _2
# eval/problem128//code.c:11:     for (i = 2; i * i <= l; i++)
	cmpl	%eax, -4(%rbp)	# _2, l
	jge	.L6	#,
# eval/problem128//code.c:14:     return "YES";
	leaq	.LC1(%rip), %rax	#, _4
.L3:
# eval/problem128//code.c:15: }
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
