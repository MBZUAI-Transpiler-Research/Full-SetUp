	.file	"code.c"
	.text
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"One"
.LC2:
	.string	"Two"
.LC3:
	.string	"Three"
.LC4:
	.string	"Four"
.LC5:
	.string	"Five"
.LC6:
	.string	"Six"
.LC7:
	.string	"Seven"
.LC8:
	.string	"Eight"
.LC9:
	.string	"Nine"
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
	movl	%esi, -124(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
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
	movl	$0, -108(%rbp)
	jmp	.L2
.L6:
	movl	$0, -104(%rbp)
	jmp	.L3
.L5:
	movl	-104(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-104(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rcx
	movq	-120(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L4
	movl	-104(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -100(%rbp)
	movl	-104(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	-104(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-120(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-104(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movl	-100(%rbp), %eax
	movl	%eax, (%rdx)
.L4:
	addl	$1, -104(%rbp)
.L3:
	movl	-124(%rbp), %eax
	subl	-108(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -104(%rbp)
	jl	.L5
	addl	$1, -108(%rbp)
.L2:
	movl	-124(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -108(%rbp)
	jl	.L6
	movq	-144(%rbp), %rax
	movl	$0, (%rax)
	movl	-124(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.L7
.L9:
	movl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L8
	movl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$9, %eax
	jg	.L8
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-144(%rbp), %rax
	movl	%edx, (%rax)
.L8:
	subl	$1, -108(%rbp)
.L7:
	cmpl	$0, -108(%rbp)
	jns	.L9
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-124(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -108(%rbp)
	movl	$0, -104(%rbp)
	jmp	.L10
.L13:
	movl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L11
	movl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$9, %eax
	jg	.L11
	movl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-136(%rbp), %rax
	movq	(%rax), %rsi
	movl	-104(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -104(%rbp)
	cltq
	salq	$3, %rax
	leaq	(%rsi,%rax), %rdx
	movslq	%ecx, %rax
	movq	-96(%rbp,%rax,8), %rax
	movq	%rax, (%rdx)
.L11:
	subl	$1, -108(%rbp)
.L10:
	cmpl	$0, -108(%rbp)
	js	.L15
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -104(%rbp)
	jl	.L13
.L15:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
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
