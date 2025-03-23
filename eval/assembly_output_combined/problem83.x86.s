	.file	"problem83.c"
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
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	jg	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movl	$2, -8(%rbp)
	jmp	.L4
.L6:
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L5
	movl	$0, %eax
	jmp	.L3
.L5:
	addl	$1, -8(%rbp)
.L4:
	movl	-8(%rbp), %eax
	imull	%eax, %eax
	cmpl	%eax, -4(%rbp)
	jge	.L6
	movl	$1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"Hello"
.LC1:
	.string	"problem83.c"
.LC2:
	.string	"func0(\"Hello\") == true"
.LC3:
	.string	"abcdcba"
.LC4:
	.string	"func0(\"abcdcba\") == true"
.LC5:
	.string	"kittens"
.LC6:
	.string	"func0(\"kittens\") == true"
.LC7:
	.string	"orange"
.LC8:
	.string	"func0(\"orange\") == false"
.LC9:
	.string	"wow"
.LC10:
	.string	"func0(\"wow\") == true"
.LC11:
	.string	"world"
.LC12:
	.string	"func0(\"world\") == true"
.LC13:
	.string	"MadaM"
.LC14:
	.string	"func0(\"MadaM\") == true"
.LC15:
	.string	"Wow"
.LC16:
	.string	"func0(\"Wow\") == true"
.LC17:
	.string	""
.LC18:
	.string	"func0(\"\") == false"
.LC19:
	.string	"HI"
.LC20:
	.string	"func0(\"HI\") == true"
.LC21:
	.string	"go"
.LC22:
	.string	"func0(\"go\") == true"
.LC23:
	.string	"gogo"
.LC24:
	.string	"func0(\"gogo\") == false"
.LC25:
	.string	"aaaaaaaaaaaaaaa"
	.align 8
.LC26:
	.string	"func0(\"aaaaaaaaaaaaaaa\") == false"
.LC27:
	.string	"Madam"
.LC28:
	.string	"func0(\"Madam\") == true"
.LC29:
	.string	"M"
.LC30:
	.string	"func0(\"M\") == false"
.LC31:
	.string	"0"
.LC32:
	.string	"func0(\"0\") == false"
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
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L8
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$20, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L8:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L9
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$21, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L9:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$22, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$23, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$24, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$25, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$26, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$27, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$29, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$30, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$31, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	movl	$0, %eax
	popq	%rbp
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
