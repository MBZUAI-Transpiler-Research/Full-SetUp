	.file	"code.c"
	.text
	.section	.rodata
.LC0:
	.string	"m"
.LC1:
	.string	"cm"
.LC2:
	.string	"d"
.LC3:
	.string	"cd"
.LC4:
	.string	"c"
.LC5:
	.string	"xc"
.LC6:
	.string	"l"
.LC7:
	.string	"xl"
.LC8:
	.string	"x"
.LC9:
	.string	"ix"
.LC10:
	.string	"v"
.LC11:
	.string	"iv"
.LC12:
	.string	"i"
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
	subq	$208, %rsp
	movl	%edi, -196(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC12(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	$1000, -176(%rbp)
	movl	$900, -172(%rbp)
	movl	$500, -168(%rbp)
	movl	$400, -164(%rbp)
	movl	$100, -160(%rbp)
	movl	$90, -156(%rbp)
	movl	$50, -152(%rbp)
	movl	$40, -148(%rbp)
	movl	$10, -144(%rbp)
	movl	$9, -140(%rbp)
	movl	$5, -136(%rbp)
	movl	$4, -132(%rbp)
	movl	$1, -128(%rbp)
	movl	$0, -180(%rbp)
	movq	-208(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L2
.L4:
	movl	-180(%rbp), %eax
	cltq
	movq	-112(%rbp,%rax,8), %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	movl	-180(%rbp), %eax
	cltq
	movl	-176(%rbp,%rax,4), %eax
	subl	%eax, -196(%rbp)
.L3:
	movl	-180(%rbp), %eax
	cltq
	movl	-176(%rbp,%rax,4), %eax
	cmpl	%eax, -196(%rbp)
	jge	.L4
	cmpl	$0, -196(%rbp)
	jle	.L2
	addl	$1, -180(%rbp)
.L2:
	cmpl	$0, -196(%rbp)
	jg	.L3
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
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
