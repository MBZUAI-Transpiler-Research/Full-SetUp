	.file	"code.c"
	.text
	.section	.rodata
.LC0:
	.string	"zero"
.LC1:
	.string	"one"
.LC2:
	.string	"two"
.LC3:
	.string	"three"
.LC4:
	.string	"four"
.LC5:
	.string	"five"
.LC6:
	.string	"six"
.LC7:
	.string	"seven"
.LC8:
	.string	"eight"
.LC9:
	.string	"nine"
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
	subq	$176, %rsp
	movq	%rdi, -168(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -128(%rbp)
	movq	%xmm0, -112(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -160(%rbp)
	movq	-168(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L2
.L10:
	movl	$0, -156(%rbp)
	jmp	.L3
.L5:
	movl	-156(%rbp), %eax
	movslq	%eax, %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-156(%rbp), %eax
	cltq
	movb	%dl, -14(%rbp,%rax)
	addl	$1, -156(%rbp)
.L3:
	movl	-156(%rbp), %eax
	movslq	%eax, %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L4
	movl	-156(%rbp), %eax
	movslq	%eax, %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L5
.L4:
	movl	-156(%rbp), %eax
	cltq
	movb	$0, -14(%rbp,%rax)
	movl	$0, -152(%rbp)
	jmp	.L6
.L9:
	movl	-152(%rbp), %eax
	cltq
	movq	-96(%rbp,%rax,8), %rdx
	leaq	-14(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L7
	movl	-152(%rbp), %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	leal	1(%rax), %edx
	movl	-152(%rbp), %eax
	cltq
	movl	%edx, -144(%rbp,%rax,4)
	jmp	.L8
.L7:
	addl	$1, -152(%rbp)
.L6:
	cmpl	$9, -152(%rbp)
	jle	.L9
.L8:
	movl	-156(%rbp), %eax
	cltq
	addq	$1, %rax
	addq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L10
.L2:
	movl	$0, -156(%rbp)
	jmp	.L11
.L16:
	movl	$0, -152(%rbp)
	jmp	.L12
.L15:
	movl	$0, -148(%rbp)
	jmp	.L13
.L14:
	movl	-156(%rbp), %eax
	cltq
	movq	-96(%rbp,%rax,8), %rdx
	movl	-148(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-160(%rbp), %eax
	cltq
	leaq	out.0(%rip), %rcx
	movb	%dl, (%rax,%rcx)
	addl	$1, -148(%rbp)
	addl	$1, -160(%rbp)
.L13:
	movl	-156(%rbp), %eax
	cltq
	movq	-96(%rbp,%rax,8), %rdx
	movl	-148(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L14
	movl	-160(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -160(%rbp)
	cltq
	leaq	out.0(%rip), %rdx
	movb	$32, (%rax,%rdx)
	addl	$1, -152(%rbp)
.L12:
	movl	-156(%rbp), %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	cmpl	%eax, -152(%rbp)
	jl	.L15
	addl	$1, -156(%rbp)
.L11:
	cmpl	$9, -156(%rbp)
	jle	.L16
	cmpl	$0, -160(%rbp)
	jle	.L17
	movl	-160(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	out.0(%rip), %rdx
	movb	$0, (%rax,%rdx)
	jmp	.L18
.L17:
	movb	$0, out.0(%rip)
.L18:
	leaq	out.0(%rip), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.local	out.0
	.comm	out.0,1000,32
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
