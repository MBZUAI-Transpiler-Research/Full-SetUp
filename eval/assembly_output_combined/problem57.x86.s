	.file	"problem57.c"
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
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L7:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$60, %al
	jne	.L3
	addl	$1, -8(%rbp)
.L3:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	jne	.L4
	subl	$1, -8(%rbp)
.L4:
	cmpl	$0, -8(%rbp)
	jns	.L5
	movl	$0, %eax
	jmp	.L6
.L5:
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L7
	cmpl	$0, -8(%rbp)
	je	.L8
	movl	$0, %eax
	jmp	.L6
.L8:
	movl	$1, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"<>"
.LC1:
	.string	"problem57.c"
.LC2:
	.string	"func0(\"<>\")"
.LC3:
	.string	"<<><>>"
.LC4:
	.string	"func0(\"<<><>>\")"
.LC5:
	.string	"<><><<><>><>"
.LC6:
	.string	"func0(\"<><><<><>><>\")"
.LC7:
	.string	"<><><<<><><>><>><<><><<>>>"
	.align 8
.LC8:
	.string	"func0(\"<><><<<><><>><>><<><><<>>>\")"
.LC9:
	.string	"<<<><>>>>"
.LC10:
	.string	"!func0(\"<<<><>>>>\")"
.LC11:
	.string	"><<>"
.LC12:
	.string	"!func0(\"><<>\")"
.LC13:
	.string	"<"
.LC14:
	.string	"!func0(\"<\")"
.LC15:
	.string	"<<<<"
.LC16:
	.string	"!func0(\"<<<<\")"
.LC17:
	.string	">"
.LC18:
	.string	"!func0(\">\")"
.LC19:
	.string	"<<>"
.LC20:
	.string	"!func0(\"<<>\")"
.LC21:
	.string	"<><><<><>><>><<>"
.LC22:
	.string	"!func0(\"<><><<><>><>><<>\")"
.LC23:
	.string	"<><><<><>><>>><>"
.LC24:
	.string	"!func0(\"<><><<><>><>>><>\")"
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
	jne	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$24, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$25, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$26, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$27, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$29, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$30, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$31, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
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
