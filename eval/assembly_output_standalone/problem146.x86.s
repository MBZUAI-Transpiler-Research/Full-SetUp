	.file	"code.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d"
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
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-76(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L2
.L7:
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	negl	%edx
	cmovs	%eax, %edx
	leaq	-20(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	$0, -56(%rbp)
	leaq	-20(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -36(%rbp)
	movl	$1, -52(%rbp)
	jmp	.L3
.L4:
	movl	-52(%rbp), %eax
	cltq
	movzbl	-20(%rbp,%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	addl	%eax, -56(%rbp)
	addl	$1, -52(%rbp)
.L3:
	movl	-52(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L4
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L5
	movzbl	-20(%rbp), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	addl	%eax, -56(%rbp)
	jmp	.L6
.L5:
	movzbl	-20(%rbp), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	subl	%eax, -56(%rbp)
.L6:
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-56(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -60(%rbp)
.L2:
	movl	-60(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L7
	movl	$0, -48(%rbp)
	jmp	.L8
.L12:
	movl	$1, -44(%rbp)
	jmp	.L9
.L11:
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L10
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-40(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movl	-40(%rbp), %eax
	movl	%eax, (%rdx)
.L10:
	addl	$1, -44(%rbp)
.L9:
	movl	-44(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L11
	addl	$1, -48(%rbp)
.L8:
	movl	-48(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	leave
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
