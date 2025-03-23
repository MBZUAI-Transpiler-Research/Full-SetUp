	.file	"problem96.c"
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
	movl	%esi, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L4
.L11:
	movl	-16(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L5
.L10:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L3
.L6:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L7
	movl	$1, -20(%rbp)
.L7:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L8
	movl	$1, -24(%rbp)
.L8:
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	cmpl	$2, %eax
	jne	.L9
	movl	$0, %eax
	jmp	.L3
.L9:
	addl	$1, -12(%rbp)
.L5:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L10
	addl	$1, -16(%rbp)
.L4:
	movl	-16(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L11
	movl	$1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"p"
.LC1:
	.string	"pineapple"
.LC2:
	.string	"b"
.LC3:
	.string	"banana"
.LC4:
	.string	"problem96.c"
.LC5:
	.string	"func0(test1, 2) == 1"
.LC6:
	.string	"A"
.LC7:
	.string	"B"
.LC8:
	.string	"func0(test2, 3) == 0"
.LC9:
	.string	"5"
.LC10:
	.string	"a"
.LC11:
	.string	"apple"
.LC12:
	.string	"func0(test3, 3) == 0"
.LC13:
	.string	"Name"
.LC14:
	.string	"John"
.LC15:
	.string	"Age"
.LC16:
	.string	"36"
.LC17:
	.string	"City"
.LC18:
	.string	"Houston"
.LC19:
	.string	"func0(test4, 3) == 0"
.LC20:
	.string	"STATE"
.LC21:
	.string	"NC"
.LC22:
	.string	"ZIP"
.LC23:
	.string	"12345"
.LC24:
	.string	"func0(test5, 2) == 1"
.LC25:
	.string	"fruit"
.LC26:
	.string	"Orange"
.LC27:
	.string	"taste"
.LC28:
	.string	"Sweet"
.LC29:
	.string	"func0(test6, 2) == 1"
.LC30:
	.string	"func0(NULL, 0) == 0"
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
	subq	$256, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, -256(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -248(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -240(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -232(%rbp)
	leaq	-256(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	leaq	.LC0(%rip), %rax
	movq	%rax, -160(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -152(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	-160(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$31, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	leaq	.LC0(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	-112(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	leaq	.LC13(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC18(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	-64(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$37, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	leaq	.LC20(%rip), %rax
	movq	%rax, -224(%rbp)
	leaq	.LC21(%rip), %rax
	movq	%rax, -216(%rbp)
	leaq	.LC22(%rip), %rax
	movq	%rax, -208(%rbp)
	leaq	.LC23(%rip), %rax
	movq	%rax, -200(%rbp)
	leaq	-224(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$40, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	leaq	.LC25(%rip), %rax
	movq	%rax, -192(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -184(%rbp)
	leaq	.LC27(%rip), %rax
	movq	%rax, -176(%rbp)
	leaq	.LC28(%rip), %rax
	movq	%rax, -168(%rbp)
	leaq	-192(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$43, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	movl	$0, %esi
	movl	$0, %edi
	call	func0
	testl	%eax, %eax
	je	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$45, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L21
	call	__stack_chk_fail@PLT
.L21:
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
