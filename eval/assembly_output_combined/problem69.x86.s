	.file	"problem69.c"
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
	movq	%rdx, -40(%rbp)
	movl	$2147483647, -12(%rbp)
	movl	$-1, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L5:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L3
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jg	.L4
	cmpl	$-1, -8(%rbp)
	jne	.L3
.L4:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
.L3:
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L5
	cmpl	$-1, -8(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movl	-8(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rax
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	movl	$0, -4(%rbp)
	jmp	.L11
.L13:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L12
	movl	$0, %eax
	jmp	.L10
.L12:
	addl	$1, -4(%rbp)
.L11:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L13
	movl	$1, %eax
.L10:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem69.c"
.LC1:
	.string	"issame(result, expect1, 2, 2)"
.LC2:
	.string	"issame(result, expect2, 2, 2)"
.LC3:
	.string	"result == NULL"
.LC4:
	.string	"issame(result, expect4, 2, 2)"
.LC5:
	.string	"issame(result, expect5, 2, 2)"
.LC6:
	.string	"issame(result, expect6, 2, 2)"
.LC7:
	.string	"issame(result, expect7, 2, 2)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
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
	movl	$4, -152(%rbp)
	movl	$2, -148(%rbp)
	movl	$3, -144(%rbp)
	movl	$2, -200(%rbp)
	movl	$1, -196(%rbp)
	leaq	-208(%rbp), %rdx
	leaq	-152(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -224(%rbp)
	leaq	-200(%rbp), %rsi
	movq	-224(%rbp), %rax
	movl	$2, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$45, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	movl	$1, -140(%rbp)
	movl	$2, -136(%rbp)
	movl	$3, -132(%rbp)
	movl	$2, -192(%rbp)
	movl	$1, -188(%rbp)
	leaq	-208(%rbp), %rdx
	leaq	-140(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -224(%rbp)
	leaq	-192(%rbp), %rsi
	movq	-224(%rbp), %rax
	movl	$2, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$50, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	leaq	-208(%rbp), %rdx
	leaq	-212(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	je	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$54, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	movl	$5, -64(%rbp)
	movl	$0, -60(%rbp)
	movl	$3, -56(%rbp)
	movl	$0, -52(%rbp)
	movl	$4, -48(%rbp)
	movl	$2, -44(%rbp)
	movl	$0, -184(%rbp)
	movl	$1, -180(%rbp)
	leaq	-208(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -224(%rbp)
	leaq	-184(%rbp), %rsi
	movq	-224(%rbp), %rax
	movl	$2, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$59, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	movl	$1, -32(%rbp)
	movl	$2, -28(%rbp)
	movl	$3, -24(%rbp)
	movl	$0, -20(%rbp)
	movl	$5, -16(%rbp)
	movl	$3, -12(%rbp)
	movl	$0, -176(%rbp)
	movl	$3, -172(%rbp)
	leaq	-208(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -224(%rbp)
	leaq	-176(%rbp), %rsi
	movq	-224(%rbp), %rax
	movl	$2, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$64, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	movl	$5, -96(%rbp)
	movl	$4, -92(%rbp)
	movl	$8, -88(%rbp)
	movl	$4, -84(%rbp)
	movl	$8, -80(%rbp)
	movl	$4, -168(%rbp)
	movl	$1, -164(%rbp)
	leaq	-208(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -224(%rbp)
	leaq	-168(%rbp), %rsi
	movq	-224(%rbp), %rax
	movl	$2, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$69, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	movl	$7, -128(%rbp)
	movl	$6, -124(%rbp)
	movl	$7, -120(%rbp)
	movl	$1, -116(%rbp)
	movl	$6, -160(%rbp)
	movl	$1, -156(%rbp)
	leaq	-208(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -224(%rbp)
	leaq	-160(%rbp), %rsi
	movq	-224(%rbp), %rax
	movl	$2, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$74, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	movl	$7, -112(%rbp)
	movl	$9, -108(%rbp)
	movl	$7, -104(%rbp)
	movl	$1, -100(%rbp)
	leaq	-208(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	je	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$78, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L24
	call	__stack_chk_fail@PLT
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
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
