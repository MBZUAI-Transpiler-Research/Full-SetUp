	.file	"code.c"
	.text
	.section	.rodata
.LC0:
	.string	"No"
.LC1:
	.string	".txt"
.LC2:
	.string	".exe"
.LC3:
	.string	".dll"
.LC4:
	.string	"Yes"
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
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -12(%rbp)
	cmpl	$4, -12(%rbp)
	jg	.L2
	leaq	.LC0(%rip), %rax
	jmp	.L3
.L2:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -25(%rbp)
	cmpb	$64, -25(%rbp)
	jle	.L4
	cmpb	$90, -25(%rbp)
	jle	.L5
	cmpb	$96, -25(%rbp)
	jle	.L4
.L5:
	cmpb	$122, -25(%rbp)
	jle	.L6
.L4:
	leaq	.LC0(%rip), %rax
	jmp	.L3
.L6:
	movl	-12(%rbp), %eax
	cltq
	leaq	-4(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L7
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L7
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L7
	leaq	.LC0(%rip), %rax
	jmp	.L3
.L7:
	movl	$0, -16(%rbp)
	jmp	.L8
.L11:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L9
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jg	.L9
	addl	$1, -24(%rbp)
.L9:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L10
	addl	$1, -20(%rbp)
.L10:
	addl	$1, -16(%rbp)
.L8:
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L11
	cmpl	$3, -24(%rbp)
	jg	.L12
	cmpl	$1, -20(%rbp)
	je	.L13
.L12:
	leaq	.LC0(%rip), %rax
	jmp	.L3
.L13:
	leaq	.LC4(%rip), %rax
.L3:
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
