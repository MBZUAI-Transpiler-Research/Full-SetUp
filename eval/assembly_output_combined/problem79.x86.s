	.file	"problem79.c"
	.text
	.section	.rodata
.LC0:
	.string	"2357BD"
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
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L2
.L4:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L3
	addl	$1, -32(%rbp)
.L3:
	addl	$1, -28(%rbp)
.L2:
	movl	-28(%rbp), %eax
	movslq	%eax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	jb	.L4
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC1:
	.string	"AB"
.LC2:
	.string	"problem79.c"
.LC3:
	.string	"func0(\"AB\") == 1"
.LC4:
	.string	"1077E"
.LC5:
	.string	"func0(\"1077E\") == 2"
.LC6:
	.string	"ABED1A33"
.LC7:
	.string	"func0(\"ABED1A33\") == 4"
.LC8:
	.string	"2020"
.LC9:
	.string	"func0(\"2020\") == 2"
.LC10:
	.string	"123456789ABCDEF0"
	.align 8
.LC11:
	.string	"func0(\"123456789ABCDEF0\") == 6"
	.align 8
.LC12:
	.string	"112233445566778899AABBCCDDEEFF00"
	.align 8
.LC13:
	.string	"func0(\"112233445566778899AABBCCDDEEFF00\") == 12"
.LC14:
	.string	""
.LC15:
	.string	"func0(\"\") == 0"
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
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L7
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$18, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L7:
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$2, %eax
	je	.L8
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$19, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L8:
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$4, %eax
	je	.L9
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$20, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L9:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$2, %eax
	je	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$21, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$6, %eax
	je	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$22, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$12, %eax
	je	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$23, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$24, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
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
