	.file	"libmin_scalbn.c"
	.text
	.globl	libmin_scalbn
	.type	libmin_scalbn, @function
libmin_scalbn:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -24(%rbp)
	movl	%edi, -28(%rbp)
	movsd	-24(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	cmpl	$1023, -28(%rbp)
	jle	.L2
	movsd	-8(%rbp), %xmm1
	movsd	.LC0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	subl	$1023, -28(%rbp)
	cmpl	$1023, -28(%rbp)
	jle	.L3
	movsd	-8(%rbp), %xmm1
	movsd	.LC0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	subl	$1023, -28(%rbp)
	cmpl	$1023, -28(%rbp)
	jle	.L3
	movl	$1023, -28(%rbp)
	jmp	.L3
.L2:
	cmpl	$-1022, -28(%rbp)
	jge	.L3
	movsd	-8(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$969, -28(%rbp)
	cmpl	$-1022, -28(%rbp)
	jge	.L3
	movsd	-8(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$969, -28(%rbp)
	cmpl	$-1022, -28(%rbp)
	jge	.L3
	movl	$-1022, -28(%rbp)
.L3:
	movl	-28(%rbp), %eax
	addl	$1023, %eax
	cltq
	salq	$52, %rax
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	movsd	-8(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_scalbn, .-libmin_scalbn
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	2145386496
	.align 8
.LC1:
	.long	0
	.long	56623104
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
