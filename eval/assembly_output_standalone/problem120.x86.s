	.file	"code.c"
	.text
	.section	.rodata
.LC0:
	.string	"Yes"
.LC1:
	.string	"No"
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
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
	movl	$1, -12(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L2
.L6:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	jne	.L3
	addl	$1, -20(%rbp)
.L3:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	jne	.L4
	subl	$1, -20(%rbp)
.L4:
	cmpl	$0, -20(%rbp)
	jns	.L5
	movl	$0, -12(%rbp)
.L5:
	addl	$1, -16(%rbp)
.L2:
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L6
	movl	$0, -16(%rbp)
	jmp	.L7
.L11:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	jne	.L8
	addl	$1, -20(%rbp)
.L8:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	jne	.L9
	subl	$1, -20(%rbp)
.L9:
	cmpl	$0, -20(%rbp)
	jns	.L10
	movl	$0, -12(%rbp)
.L10:
	addl	$1, -16(%rbp)
.L7:
	movl	-16(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L11
	cmpl	$0, -20(%rbp)
	jne	.L12
	cmpl	$0, -12(%rbp)
	je	.L12
	leaq	.LC0(%rip), %rax
	jmp	.L13
.L12:
	movl	$0, -20(%rbp)
	movl	$1, -12(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L14
.L18:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	jne	.L15
	addl	$1, -20(%rbp)
.L15:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	jne	.L16
	subl	$1, -20(%rbp)
.L16:
	cmpl	$0, -20(%rbp)
	jns	.L17
	movl	$0, -12(%rbp)
.L17:
	addl	$1, -16(%rbp)
.L14:
	movl	-16(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L18
	movl	$0, -16(%rbp)
	jmp	.L19
.L23:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	jne	.L20
	addl	$1, -20(%rbp)
.L20:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	jne	.L21
	subl	$1, -20(%rbp)
.L21:
	cmpl	$0, -20(%rbp)
	jns	.L22
	movl	$0, -12(%rbp)
.L22:
	addl	$1, -16(%rbp)
.L19:
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L23
	cmpl	$0, -20(%rbp)
	jne	.L24
	cmpl	$0, -12(%rbp)
	je	.L24
	leaq	.LC0(%rip), %rax
	jmp	.L13
.L24:
	leaq	.LC1(%rip), %rax
.L13:
	leave
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
