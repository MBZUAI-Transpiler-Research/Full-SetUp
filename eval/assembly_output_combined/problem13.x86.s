	.file	"problem13.c"
	.text
	.section	.rodata
.LC0:
	.string	""
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
	movl	%esi, -44(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L2
.L4:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L3
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
.L3:
	addl	$1, -16(%rbp)
.L2:
	movl	-16(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L4
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC1:
	.string	"x"
.LC2:
	.string	"y"
.LC3:
	.string	"z"
.LC4:
	.string	"yyy"
.LC5:
	.string	"zzzz"
.LC6:
	.string	"www"
.LC7:
	.string	"kkkk"
.LC8:
	.string	"abc"
.LC9:
	.string	"problem13.c"
	.align 8
.LC10:
	.string	"strcmp(func0(empty_array, 0), \"\") == 0"
	.align 8
.LC11:
	.string	"strcmp(func0(array1, 3), \"x\") == 0"
	.align 8
.LC12:
	.string	"strcmp(func0(array2, 6), \"zzzz\") == 0"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	-104(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	func0
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L7
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L7:
	leaq	-96(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L8
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$29, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L8:
	leaq	-64(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L9
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$30, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L9:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
