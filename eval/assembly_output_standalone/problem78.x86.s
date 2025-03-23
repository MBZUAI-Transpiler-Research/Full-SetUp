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
	movl	$0, -4(%rbp)
	jmp	.L2
.L5:
	movl	-4(%rbp), %eax
	imull	%eax, %eax
	imull	-4(%rbp), %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovns	%ecx, %eax
	cmpl	%eax, %edx
	jne	.L3
	movl	$1, %eax
	jmp	.L4
.L3:
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	imull	%eax, %eax
	imull	-4(%rbp), %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovns	%ecx, %eax
	cmpl	%eax, %edx
	jle	.L5
	movl	$0, %eax
.L4:
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
