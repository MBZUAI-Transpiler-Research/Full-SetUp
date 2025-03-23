	.file	"problem125.c"
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
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$10, %rax
	je	.L2
	movl	$0, %eax
	jmp	.L18
.L2:
	movl	$0, -36(%rbp)
	jmp	.L4
.L10:
	cmpl	$2, -36(%rbp)
	je	.L5
	cmpl	$5, -36(%rbp)
	jne	.L6
.L5:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L8
	movl	$0, %eax
	jmp	.L18
.L6:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L9
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jle	.L8
.L9:
	movl	$0, %eax
	jmp	.L18
.L8:
	addl	$1, -36(%rbp)
.L4:
	cmpl	$9, -36(%rbp)
	jle	.L10
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -19(%rbp)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movb	%al, -18(%rbp)
	movb	$0, -17(%rbp)
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movb	%al, -16(%rbp)
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movb	%al, -15(%rbp)
	movb	$0, -14(%rbp)
	movq	-56(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movb	%al, -13(%rbp)
	movq	-56(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movb	%al, -12(%rbp)
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movb	%al, -11(%rbp)
	movq	-56(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movb	%al, -10(%rbp)
	movb	$0, -9(%rbp)
	leaq	-19(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -32(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -28(%rbp)
	leaq	-13(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -32(%rbp)
	jle	.L11
	cmpl	$12, -32(%rbp)
	jle	.L12
.L11:
	movl	$0, %eax
	jmp	.L18
.L12:
	cmpl	$0, -28(%rbp)
	jle	.L13
	cmpl	$31, -28(%rbp)
	jle	.L14
.L13:
	movl	$0, %eax
	jmp	.L18
.L14:
	cmpl	$4, -32(%rbp)
	je	.L15
	cmpl	$6, -32(%rbp)
	je	.L15
	cmpl	$9, -32(%rbp)
	je	.L15
	cmpl	$11, -32(%rbp)
	jne	.L16
.L15:
	cmpl	$31, -28(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L18
.L16:
	cmpl	$2, -32(%rbp)
	jne	.L17
	cmpl	$29, -28(%rbp)
	jle	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movl	$1, %eax
.L18:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"03-11-2000"
.LC1:
	.string	"problem125.c"
.LC2:
	.string	"func0(\"03-11-2000\") == 1"
.LC3:
	.string	"15-01-2012"
.LC4:
	.string	"func0(\"15-01-2012\") == 0"
.LC5:
	.string	"04-0-2040"
.LC6:
	.string	"func0(\"04-0-2040\") == 0"
.LC7:
	.string	"06-04-2020"
.LC8:
	.string	"func0(\"06-04-2020\") == 1"
.LC9:
	.string	"01-01-2007"
.LC10:
	.string	"func0(\"01-01-2007\") == 1"
.LC11:
	.string	"03-32-2011"
.LC12:
	.string	"func0(\"03-32-2011\") == 0"
.LC13:
	.string	""
.LC14:
	.string	"func0(\"\") == 0"
.LC15:
	.string	"04-31-3000"
.LC16:
	.string	"func0(\"04-31-3000\") == 0"
.LC17:
	.string	"06-06-2005"
.LC18:
	.string	"func0(\"06-06-2005\") == 1"
.LC19:
	.string	"21-31-2000"
.LC20:
	.string	"func0(\"21-31-2000\") == 0"
.LC21:
	.string	"04-12-2003"
.LC22:
	.string	"func0(\"04-12-2003\") == 1"
.LC23:
	.string	"04122003"
.LC24:
	.string	"func0(\"04122003\") == 0"
.LC25:
	.string	"20030412"
.LC26:
	.string	"func0(\"20030412\") == 0"
.LC27:
	.string	"2003-04"
.LC28:
	.string	"func0(\"2003-04\") == 0"
.LC29:
	.string	"2003-04-12"
.LC30:
	.string	"func0(\"2003-04-12\") == 0"
.LC31:
	.string	"04-2003"
.LC32:
	.string	"func0(\"04-2003\") == 0"
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
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$38, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$39, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$40, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L24
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$41, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L24:
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L25
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$42, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L25:
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L26
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$43, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L26:
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L27
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$44, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L27:
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L28
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$45, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L28:
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L29
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$46, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L29:
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L30
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$47, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L30:
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L31
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$48, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L31:
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L32
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$49, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L32:
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L33
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$50, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L33:
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L34
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$51, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L34:
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L35
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$52, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L35:
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L36
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$53, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L36:
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
