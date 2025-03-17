	.file	"problem115.c"
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
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L2
.L6:
	cmpq	$0, -16(%rbp)
	jns	.L3
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L4
.L3:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
.L4:
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.L5
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L5:
	addl	$1, -20(%rbp)
.L2:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L6
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem115.c"
.LC1:
	.string	"func0(nums1, 6) == 1"
.LC2:
	.string	"func0(nums2, 3) == -6"
.LC3:
	.string	"func0(nums3, 5) == -14"
	.align 8
.LC4:
	.string	"func0(nums4, 1) == -9999999999999999"
.LC5:
	.string	"func0(nums5, 4) == 0"
.LC6:
	.string	"func0(nums6, 5) == -6"
.LC7:
	.string	"func0(nums7, 6) == -6"
.LC8:
	.string	"func0(nums8, 6) == 3"
.LC9:
	.string	"func0(nums9, 6) == -33"
.LC10:
	.string	"func0(nums10, 1) == -10"
.LC11:
	.string	"func0(nums11, 1) == 7"
.LC12:
	.string	"func0(nums12, 2) == -1"
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
	subq	$416, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$2, -208(%rbp)
	movq	$3, -200(%rbp)
	movq	$4, -192(%rbp)
	movq	$1, -184(%rbp)
	movq	$2, -176(%rbp)
	movq	$4, -168(%rbp)
	leaq	-208(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	cmpq	$1, %rax
	je	.L9
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$19, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L9:
	movq	$-1, -368(%rbp)
	movq	$-2, -360(%rbp)
	movq	$-3, -352(%rbp)
	leaq	-368(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	cmpq	$-6, %rax
	je	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$22, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	movq	$-1, -304(%rbp)
	movq	$-2, -296(%rbp)
	movq	$-3, -288(%rbp)
	movq	$2, -280(%rbp)
	movq	$-10, -272(%rbp)
	leaq	-304(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	cmpq	$-14, %rax
	je	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$25, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	movabsq	$-9999999999999999, %rax
	movq	%rax, -408(%rbp)
	leaq	-408(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	func0
	movabsq	$-9999999999999999, %rdx
	cmpq	%rdx, %rax
	je	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	movq	$0, -336(%rbp)
	movq	$10, -328(%rbp)
	movq	$20, -320(%rbp)
	movq	$1000000, -312(%rbp)
	leaq	-336(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	testq	%rax, %rax
	je	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$31, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	movq	$-1, -256(%rbp)
	movq	$-2, -248(%rbp)
	movq	$-3, -240(%rbp)
	movq	$10, -232(%rbp)
	movq	$-5, -224(%rbp)
	leaq	-256(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	cmpq	$-6, %rax
	je	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	movq	$100, -160(%rbp)
	movq	$-1, -152(%rbp)
	movq	$-2, -144(%rbp)
	movq	$-3, -136(%rbp)
	movq	$10, -128(%rbp)
	movq	$-5, -120(%rbp)
	leaq	-160(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	cmpq	$-6, %rax
	je	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$37, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	movq	$10, -112(%rbp)
	movq	$11, -104(%rbp)
	movq	$13, -96(%rbp)
	movq	$8, -88(%rbp)
	movq	$3, -80(%rbp)
	movq	$4, -72(%rbp)
	leaq	-112(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	cmpq	$3, %rax
	je	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$40, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	movq	$100, -64(%rbp)
	movq	$-33, -56(%rbp)
	movq	$32, -48(%rbp)
	movq	$-1, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$-2, -24(%rbp)
	leaq	-64(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	cmpq	$-33, %rax
	je	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$43, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	movq	$-10, -400(%rbp)
	leaq	-400(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	func0
	cmpq	$-10, %rax
	je	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$46, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	movq	$7, -392(%rbp)
	leaq	-392(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	func0
	cmpq	$7, %rax
	je	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$49, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	movq	$1, -384(%rbp)
	movq	$-1, -376(%rbp)
	leaq	-384(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	func0
	cmpq	$-1, %rax
	je	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$52, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
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
