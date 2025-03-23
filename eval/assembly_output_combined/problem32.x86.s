	.file	"problem32.c"
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
	cmpq	$1, -24(%rbp)
	jg	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	$2, -8(%rbp)
	jmp	.L4
.L6:
	movq	-24(%rbp), %rax
	cqto
	idivq	-8(%rbp)
	movq	%rdx, %rax
	testq	%rax, %rax
	jne	.L5
	movl	$0, %eax
	jmp	.L3
.L5:
	addq	$1, -8(%rbp)
.L4:
	movq	-8(%rbp), %rax
	imulq	%rax, %rax
	cmpq	%rax, -24(%rbp)
	jge	.L6
	movl	$1, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem32.c"
.LC1:
	.string	"func0(6) == false"
.LC2:
	.string	"func0(101) == true"
.LC3:
	.string	"func0(11) == true"
.LC4:
	.string	"func0(13441) == true"
.LC5:
	.string	"func0(61) == true"
.LC6:
	.string	"func0(4) == false"
.LC7:
	.string	"func0(1) == false"
.LC8:
	.string	"func0(5) == true"
.LC9:
	.string	"func0(17) == true"
.LC10:
	.string	"func0(5 * 17) == false"
.LC11:
	.string	"func0(11 * 7) == false"
.LC12:
	.string	"func0(13441 * 19) == false"
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
	movl	$6, %edi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L8
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$16, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L8:
	movl	$101, %edi
	call	func0
	testb	%al, %al
	jne	.L9
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$17, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L9:
	movl	$11, %edi
	call	func0
	testb	%al, %al
	jne	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$18, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	movl	$13441, %edi
	call	func0
	testb	%al, %al
	jne	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$19, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	movl	$61, %edi
	call	func0
	testb	%al, %al
	jne	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$20, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	movl	$4, %edi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$21, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	movl	$1, %edi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$22, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	movl	$5, %edi
	call	func0
	testb	%al, %al
	jne	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$23, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	movl	$11, %edi
	call	func0
	testb	%al, %al
	jne	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$24, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	movl	$17, %edi
	call	func0
	testb	%al, %al
	jne	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$25, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	movl	$85, %edi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$26, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	movl	$77, %edi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$27, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	movl	$255379, %edi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
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
