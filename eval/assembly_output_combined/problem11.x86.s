	.file	"problem11.c"
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
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	%eax, %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movl	$0, -24(%rbp)
	jmp	.L4
.L12:
	movl	$1, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L5
.L8:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-12(%rbp), %eax
	subl	$1, %eax
	subl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L6
	movl	$0, -16(%rbp)
	jmp	.L7
.L6:
	addl	$1, -20(%rbp)
.L5:
	movl	-12(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	%eax, -20(%rbp)
	jl	.L8
.L7:
	cmpl	$0, -16(%rbp)
	je	.L9
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movl	$0, -20(%rbp)
	jmp	.L10
.L11:
	movl	-24(%rbp), %eax
	subl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-12(%rbp), %ecx
	movl	-20(%rbp), %edx
	addl	%ecx, %edx
	movslq	%edx, %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -20(%rbp)
.L10:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L11
	movl	-12(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L3
.L9:
	addl	$1, -24(%rbp)
.L4:
	movl	-24(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L12
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movl	$0, -20(%rbp)
	jmp	.L13
.L14:
	movl	-12(%rbp), %eax
	subl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-12(%rbp), %ecx
	movl	-20(%rbp), %edx
	addl	%ecx, %edx
	movslq	%edx, %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -20(%rbp)
.L13:
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L14
	movl	-12(%rbp), %eax
	addl	%eax, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"problem11.c"
.LC2:
	.string	"strcmp(palindrome, \"\") == 0"
.LC3:
	.string	"x"
.LC4:
	.string	"strcmp(palindrome, \"x\") == 0"
.LC5:
	.string	"xyz"
.LC6:
	.string	"xyzyx"
	.align 8
.LC7:
	.string	"strcmp(palindrome, \"xyzyx\") == 0"
.LC8:
	.string	"xyx"
	.align 8
.LC9:
	.string	"strcmp(palindrome, \"xyx\") == 0"
.LC10:
	.string	"jerry"
.LC11:
	.string	"jerryrrej"
	.align 8
.LC12:
	.string	"strcmp(palindrome, \"jerryrrej\") == 0"
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
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$49, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$54, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$59, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$64, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$69, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	leave
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
