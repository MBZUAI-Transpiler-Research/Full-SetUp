	.file	"code.c"
	.text
	.section	.rodata
.LC0:
	.string	"%s.%s"
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
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movl	$-1000, -32(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L2
.L8:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L3
.L6:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -33(%rbp)
	cmpb	$64, -33(%rbp)
	jle	.L4
	cmpb	$90, -33(%rbp)
	jg	.L4
	addl	$1, -24(%rbp)
.L4:
	cmpb	$96, -33(%rbp)
	jle	.L5
	cmpb	$122, -33(%rbp)
	jg	.L5
	subl	$1, -24(%rbp)
.L5:
	addl	$1, -20(%rbp)
.L3:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L6
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	.L7
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.L7:
	addl	$1, -28(%rbp)
.L2:
	movl	-28(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L8
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-80(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	nop
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
