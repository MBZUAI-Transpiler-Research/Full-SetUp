	.file	"problem44.c"
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
	movl	%esi, -28(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L2
.L7:
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L3
.L6:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	testl	%eax, %eax
	jne	.L4
	movl	$1, %eax
	jmp	.L5
.L4:
	addl	$1, -4(%rbp)
.L3:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L6
	addl	$1, -8(%rbp)
.L2:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L7
	movl	$0, %eax
.L5:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem44.c"
.LC1:
	.string	"func0(test1, 4) == false"
.LC2:
	.string	"func0(test2, 4) == false"
.LC3:
	.string	"func0(test3, 4) == false"
.LC4:
	.string	"func0(test4, 6) == true"
.LC5:
	.string	"func0(test5, 1) == false"
.LC6:
	.string	"func0(test6, 6) == true"
.LC7:
	.string	"func0(test7, 6) == true"
.LC8:
	.string	"func0(test8, 6) == false"
.LC9:
	.string	"func0(test9, 6) == false"
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
	subq	$224, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -208(%rbp)
	movl	$3, -204(%rbp)
	movl	$5, -200(%rbp)
	movl	$0, -196(%rbp)
	leaq	-208(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L9
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$19, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L9:
	movl	$1, -192(%rbp)
	movl	$3, -188(%rbp)
	movl	$-2, -184(%rbp)
	movl	$1, -180(%rbp)
	leaq	-192(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$22, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	movl	$1, -176(%rbp)
	movl	$2, -172(%rbp)
	movl	$3, -168(%rbp)
	movl	$7, -164(%rbp)
	leaq	-176(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$25, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	movl	$2, -160(%rbp)
	movl	$4, -156(%rbp)
	movl	$-5, -152(%rbp)
	movl	$3, -148(%rbp)
	movl	$5, -144(%rbp)
	movl	$7, -140(%rbp)
	leaq	-160(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	movl	$1, -212(%rbp)
	leaq	-212(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$31, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	movl	$-3, -128(%rbp)
	movl	$9, -124(%rbp)
	movl	$-1, -120(%rbp)
	movl	$3, -116(%rbp)
	movl	$2, -112(%rbp)
	movl	$30, -108(%rbp)
	leaq	-128(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	movl	$-3, -96(%rbp)
	movl	$9, -92(%rbp)
	movl	$-1, -88(%rbp)
	movl	$3, -84(%rbp)
	movl	$2, -80(%rbp)
	movl	$31, -76(%rbp)
	leaq	-96(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$37, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	movl	$-3, -64(%rbp)
	movl	$9, -60(%rbp)
	movl	$-1, -56(%rbp)
	movl	$4, -52(%rbp)
	movl	$2, -48(%rbp)
	movl	$30, -44(%rbp)
	leaq	-64(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$40, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	movl	$-3, -32(%rbp)
	movl	$9, -28(%rbp)
	movl	$-1, -24(%rbp)
	movl	$4, -20(%rbp)
	movl	$2, -16(%rbp)
	movl	$31, -12(%rbp)
	leaq	-32(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$43, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
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
