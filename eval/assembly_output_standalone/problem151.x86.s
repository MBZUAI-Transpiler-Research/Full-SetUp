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
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$1, -8(%rbp)
	cmpl	$1, -20(%rbp)
	jg	.L2
	movl	$0, -8(%rbp)
.L2:
	movl	$2, -4(%rbp)
	jmp	.L3
.L5:
	movl	-20(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L4
	movl	$0, -8(%rbp)
.L4:
	addl	$1, -4(%rbp)
.L3:
	movl	-4(%rbp), %eax
	imull	%eax, %eax
	cmpl	%eax, -20(%rbp)
	jge	.L5
	cmpl	$0, -8(%rbp)
	je	.L6
	movl	-24(%rbp), %eax
	jmp	.L7
.L6:
	movl	-28(%rbp), %eax
.L7:
	popq	%rbp
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
