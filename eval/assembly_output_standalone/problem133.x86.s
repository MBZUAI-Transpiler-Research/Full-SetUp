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
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L2
.L9:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$91, %al
	jne	.L3
	addl	$1, -28(%rbp)
.L3:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$93, %al
	jne	.L4
	subl	$1, -28(%rbp)
.L4:
	cmpl	$0, -28(%rbp)
	jns	.L5
	movl	$0, -28(%rbp)
.L5:
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.L6
	movl	-28(%rbp), %eax
	movl	%eax, -24(%rbp)
.L6:
	movl	-24(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -28(%rbp)
	jge	.L7
	movl	$1, %eax
	jmp	.L8
.L7:
	addl	$1, -20(%rbp)
.L2:
	movl	-20(%rbp), %eax
	movslq	%eax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	jb	.L9
	movl	$0, %eax
.L8:
	movq	-8(%rbp), %rbx
	leave
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
