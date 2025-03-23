	.file	"code.c"
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)
	movl	$1, -24(%rbp)
	movl	$2, -20(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L2
.L9:
	movl	-20(%rbp), %eax
	addl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$1, -12(%rbp)
	movl	$2, -8(%rbp)
	jmp	.L3
.L6:
	movl	-24(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L4
	movl	$0, -12(%rbp)
	jmp	.L5
.L4:
	addl	$1, -8(%rbp)
.L3:
	movl	-8(%rbp), %eax
	imull	%eax, %eax
	cmpl	%eax, -24(%rbp)
	jge	.L6
.L5:
	cmpl	$0, -12(%rbp)
	je	.L7
	addl	$1, -16(%rbp)
.L7:
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.L2
	movl	-24(%rbp), %eax
	jmp	.L8
.L2:
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L9
	movl	$0, %eax
.L8:
	popq	%rbp
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
