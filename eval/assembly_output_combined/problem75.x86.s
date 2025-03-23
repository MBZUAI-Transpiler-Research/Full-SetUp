	.file	"problem75.c"
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
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L2
.L3:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	addl	$1, -12(%rbp)
.L2:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L3
	movl	$0, -12(%rbp)
	jmp	.L4
.L5:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	addl	$1, -12(%rbp)
.L4:
	movl	-12(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L5
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.L6
	movq	-24(%rbp), %rax
	jmp	.L7
.L6:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L8
	movq	-40(%rbp), %rax
	jmp	.L7
.L8:
	movq	-24(%rbp), %rax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movl	$0, -4(%rbp)
	jmp	.L12
.L14:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L13
	movl	$0, %eax
	jmp	.L11
.L13:
	addl	$1, -4(%rbp)
.L12:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L14
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"hi"
.LC1:
	.string	"admin"
.LC2:
	.string	"project"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -120(%rbp)
	movl	$0, -116(%rbp)
	movl	-116(%rbp), %ecx
	leaq	-104(%rbp), %rdx
	movl	-120(%rbp), %esi
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdi
	movl	-116(%rbp), %ecx
	leaq	-104(%rbp), %rdx
	movl	-120(%rbp), %eax
	movl	%eax, %esi
	call	issame
	leaq	.LC0(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -72(%rbp)
	movl	$2, -120(%rbp)
	movl	$2, -116(%rbp)
	movl	-116(%rbp), %ecx
	leaq	-80(%rbp), %rdx
	movl	-120(%rbp), %esi
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdi
	movl	-116(%rbp), %ecx
	leaq	-80(%rbp), %rdx
	movl	-120(%rbp), %eax
	movl	%eax, %esi
	call	issame
	leaq	.LC0(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$2, -120(%rbp)
	movl	$4, -116(%rbp)
	movl	-116(%rbp), %ecx
	leaq	-48(%rbp), %rdx
	movl	-120(%rbp), %esi
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdi
	movl	-120(%rbp), %ecx
	leaq	-64(%rbp), %rdx
	movl	-120(%rbp), %eax
	movl	%eax, %esi
	call	issame
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
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
