	.file	"code.c"
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	cmpl	$1, -20(%rbp)
	jg	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movl	$0, -8(%rbp)
	movl	$2, -4(%rbp)
	jmp	.L4
.L6:
	movl	-20(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	movl	%eax, -20(%rbp)
	addl	$1, -8(%rbp)
.L5:
	movl	-20(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L6
	addl	$1, -4(%rbp)
.L4:
	movl	-4(%rbp), %eax
	imull	%eax, %eax
	cmpl	%eax, -20(%rbp)
	jge	.L5
	cmpl	$1, -20(%rbp)
	jle	.L8
	addl	$1, -8(%rbp)
.L8:
	cmpl	$3, -8(%rbp)
	sete	%al
	movzbl	%al, %eax
.L3:
	popq	%rbp
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
