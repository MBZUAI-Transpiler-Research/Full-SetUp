	.file	"code.c"
	.text
	.section	.rodata
.LC0:
	.string	"Mercury"
.LC1:
	.string	"Venus"
.LC2:
	.string	"Earth"
.LC3:
	.string	"Mars"
.LC4:
	.string	"Jupiter"
.LC5:
	.string	"Saturn"
.LC6:
	.string	"Uranus"
.LC7:
	.string	"Neptune"
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
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$-1, -104(%rbp)
	movl	$-1, -100(%rbp)
	movl	$0, -96(%rbp)
	jmp	.L2
.L5:
	movl	-96(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L3
	movl	-96(%rbp), %eax
	movl	%eax, -104(%rbp)
.L3:
	movl	-96(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rax
	movq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L4
	movl	-96(%rbp), %eax
	movl	%eax, -100(%rbp)
.L4:
	addl	$1, -96(%rbp)
.L2:
	cmpl	$7, -96(%rbp)
	jle	.L5
	cmpl	$-1, -104(%rbp)
	je	.L6
	cmpl	$-1, -100(%rbp)
	je	.L6
	movl	-104(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jne	.L7
.L6:
	movq	-136(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, %eax
	jmp	.L13
.L7:
	movl	-104(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jle	.L9
	movl	-104(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, -100(%rbp)
.L9:
	movl	-100(%rbp), %eax
	subl	-104(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-136(%rbp), %rax
	movl	%edx, (%rax)
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L10
	movq	-136(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, %eax
	jmp	.L13
.L10:
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -88(%rbp)
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.L11
.L12:
	movl	-96(%rbp), %eax
	subl	-104(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movl	-96(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rax
	movq	%rax, (%rdx)
	addl	$1, -96(%rbp)
.L11:
	movl	-96(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L12
	movq	-88(%rbp), %rax
.L13:
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
