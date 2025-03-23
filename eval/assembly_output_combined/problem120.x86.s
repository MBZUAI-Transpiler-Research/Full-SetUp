	.file	"problem120.c"
	.text
	.section	.rodata
.LC0:
	.string	"Yes"
.LC1:
	.string	"No"
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
	movq	%rsi, -48(%rbp)
	movl	$0, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
	movl	$1, -12(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L2
.L6:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	jne	.L3
	addl	$1, -20(%rbp)
.L3:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	jne	.L4
	subl	$1, -20(%rbp)
.L4:
	cmpl	$0, -20(%rbp)
	jns	.L5
	movl	$0, -12(%rbp)
.L5:
	addl	$1, -16(%rbp)
.L2:
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L6
	movl	$0, -16(%rbp)
	jmp	.L7
.L11:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	jne	.L8
	addl	$1, -20(%rbp)
.L8:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	jne	.L9
	subl	$1, -20(%rbp)
.L9:
	cmpl	$0, -20(%rbp)
	jns	.L10
	movl	$0, -12(%rbp)
.L10:
	addl	$1, -16(%rbp)
.L7:
	movl	-16(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L11
	cmpl	$0, -20(%rbp)
	jne	.L12
	cmpl	$0, -12(%rbp)
	je	.L12
	leaq	.LC0(%rip), %rax
	jmp	.L13
.L12:
	movl	$0, -20(%rbp)
	movl	$1, -12(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L14
.L18:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	jne	.L15
	addl	$1, -20(%rbp)
.L15:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	jne	.L16
	subl	$1, -20(%rbp)
.L16:
	cmpl	$0, -20(%rbp)
	jns	.L17
	movl	$0, -12(%rbp)
.L17:
	addl	$1, -16(%rbp)
.L14:
	movl	-16(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L18
	movl	$0, -16(%rbp)
	jmp	.L19
.L23:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	jne	.L20
	addl	$1, -20(%rbp)
.L20:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	jne	.L21
	subl	$1, -20(%rbp)
.L21:
	cmpl	$0, -20(%rbp)
	jns	.L22
	movl	$0, -12(%rbp)
.L22:
	addl	$1, -16(%rbp)
.L19:
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L23
	cmpl	$0, -20(%rbp)
	jne	.L24
	cmpl	$0, -12(%rbp)
	je	.L24
	leaq	.LC0(%rip), %rax
	jmp	.L13
.L24:
	leaq	.LC1(%rip), %rax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC2:
	.string	")"
.LC3:
	.string	"()("
.LC4:
	.string	"problem120.c"
	.align 8
.LC5:
	.string	"strcmp(func0(\"()(\", \")\"), \"Yes\") == 0"
	.align 8
.LC6:
	.string	"strcmp(func0(\")\", \")\"), \"No\") == 0"
.LC7:
	.string	"())())"
.LC8:
	.string	"(()(())"
	.align 8
.LC9:
	.string	"strcmp(func0(\"(()(())\", \"())())\"), \"No\") == 0"
.LC10:
	.string	"(()()("
.LC11:
	.string	")())"
	.align 8
.LC12:
	.string	"strcmp(func0(\")())\", \"(()()(\"), \"Yes\") == 0"
.LC13:
	.string	"(()())(("
.LC14:
	.string	"(())))"
	.align 8
.LC15:
	.string	"strcmp(func0(\"(())))\", \"(()())((\"), \"Yes\") == 0"
.LC16:
	.string	"())"
.LC17:
	.string	"()"
	.align 8
.LC18:
	.string	"strcmp(func0(\"()\", \"())\"), \"No\") == 0"
.LC19:
	.string	"()))()"
.LC20:
	.string	"(()("
	.align 8
.LC21:
	.string	"strcmp(func0(\"(()(\", \"()))()\"), \"Yes\") == 0"
.LC22:
	.string	"((())"
.LC23:
	.string	"(((("
	.align 8
.LC24:
	.string	"strcmp(func0(\"((((\", \"((())\"), \"No\") == 0"
.LC25:
	.string	")(()"
	.align 8
.LC26:
	.string	"strcmp(func0(\")(()\", \"(()(\"), \"No\") == 0"
.LC27:
	.string	")("
	.align 8
.LC28:
	.string	"strcmp(func0(\")(\", \")(\"), \"No\") == 0"
.LC29:
	.string	"("
	.align 8
.LC30:
	.string	"strcmp(func0(\"(\", \")\"), \"Yes\") == 0"
	.align 8
.LC31:
	.string	"strcmp(func0(\")\", \"(\"), \"Yes\") == 0"
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
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L26
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$48, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L26:
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L27
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$49, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L27:
	leaq	.LC7(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L28
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$50, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L28:
	leaq	.LC10(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L29
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$51, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L29:
	leaq	.LC13(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L30
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$52, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L30:
	leaq	.LC16(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L31
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$53, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L31:
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L32
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$54, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L32:
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L33
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$55, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L33:
	leaq	.LC20(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L34
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$56, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L34:
	leaq	.LC27(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L35
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$57, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L35:
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L36
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$58, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L36:
	leaq	.LC29(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L37
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$59, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L37:
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
