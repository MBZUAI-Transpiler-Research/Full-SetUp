	.file	"problem145.c"
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
	subq	$272, %rsp
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -248(%rbp)
	jmp	.L2
.L3:
	movl	-248(%rbp), %eax
	movslq	%eax, %rdx
	movq	-264(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-248(%rbp), %eax
	cltq
	movb	%dl, -224(%rbp,%rax)
	addl	$1, -248(%rbp)
.L2:
	movl	-248(%rbp), %eax
	movslq	%eax, %rdx
	movq	-264(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L3
	movl	-248(%rbp), %eax
	cltq
	movb	$0, -224(%rbp,%rax)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -240(%rbp)
	movl	$0, -244(%rbp)
	addl	$1, -248(%rbp)
	jmp	.L4
.L5:
	movl	-248(%rbp), %eax
	movslq	%eax, %rdx
	movq	-264(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-244(%rbp), %eax
	cltq
	movb	%dl, -112(%rbp,%rax)
	addl	$1, -248(%rbp)
	addl	$1, -244(%rbp)
.L4:
	movl	-248(%rbp), %eax
	movslq	%eax, %rdx
	movq	-264(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L5
	movl	-244(%rbp), %eax
	cltq
	movb	$0, -112(%rbp,%rax)
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -236(%rbp)
	movl	$0, -248(%rbp)
	jmp	.L6
.L7:
	movl	-248(%rbp), %eax
	movslq	%eax, %rdx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-248(%rbp), %eax
	cltq
	movb	%dl, -224(%rbp,%rax)
	addl	$1, -248(%rbp)
.L6:
	movl	-248(%rbp), %eax
	movslq	%eax, %rdx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L7
	movl	-248(%rbp), %eax
	cltq
	movb	$0, -224(%rbp,%rax)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -232(%rbp)
	movl	$0, -244(%rbp)
	addl	$1, -248(%rbp)
	jmp	.L8
.L9:
	movl	-248(%rbp), %eax
	movslq	%eax, %rdx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-244(%rbp), %eax
	cltq
	movb	%dl, -112(%rbp,%rax)
	addl	$1, -248(%rbp)
	addl	$1, -244(%rbp)
.L8:
	movl	-248(%rbp), %eax
	movslq	%eax, %rdx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L9
	movl	-244(%rbp), %eax
	cltq
	movb	$0, -112(%rbp,%rax)
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -228(%rbp)
	movl	-240(%rbp), %eax
	imull	-232(%rbp), %eax
	movl	-236(%rbp), %edx
	movl	%edx, %esi
	imull	-228(%rbp), %esi
	cltd
	idivl	%esi
	movl	%edx, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	.L10
	movl	$1, %eax
	jmp	.L12
.L10:
	movl	$0, %eax
.L12:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"5/1"
.LC1:
	.string	"1/5"
.LC2:
	.string	"problem145.c"
.LC3:
	.string	"func0(\"1/5\", \"5/1\") == 1"
.LC4:
	.string	"2/1"
.LC5:
	.string	"1/6"
.LC6:
	.string	"func0(\"1/6\", \"2/1\") == 0"
.LC7:
	.string	"3/1"
.LC8:
	.string	"func0(\"5/1\", \"3/1\") == 1"
.LC9:
	.string	"10/2"
.LC10:
	.string	"7/10"
.LC11:
	.string	"func0(\"7/10\", \"10/2\") == 0"
.LC12:
	.string	"50/10"
.LC13:
	.string	"2/10"
.LC14:
	.string	"func0(\"2/10\", \"50/10\") == 1"
.LC15:
	.string	"4/2"
.LC16:
	.string	"7/2"
.LC17:
	.string	"func0(\"7/2\", \"4/2\") == 1"
.LC18:
	.string	"6/1"
.LC19:
	.string	"11/6"
.LC20:
	.string	"func0(\"11/6\", \"6/1\") == 1"
.LC21:
	.string	"5/2"
.LC22:
	.string	"2/3"
.LC23:
	.string	"func0(\"2/3\", \"5/2\") == 0"
.LC24:
	.string	"3/5"
.LC25:
	.string	"func0(\"5/2\", \"3/5\") == 0"
.LC26:
	.string	"8/4"
.LC27:
	.string	"2/4"
.LC28:
	.string	"func0(\"2/4\", \"8/4\") == 1"
.LC29:
	.string	"func0(\"2/4\", \"4/2\") == 1"
.LC30:
	.string	"func0(\"1/5\", \"1/5\") == 0"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$41, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$42, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	leaq	.LC7(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$43, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$44, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	leaq	.LC12(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$45, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	leaq	.LC15(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$46, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$47, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	leaq	.LC21(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$48, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$49, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	leaq	.LC26(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L24
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$50, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L24:
	leaq	.LC15(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L25
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$51, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L25:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L26
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$52, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L26:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L27
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$53, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L27:
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
