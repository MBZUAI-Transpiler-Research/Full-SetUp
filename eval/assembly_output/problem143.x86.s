	.file	"problem143.c"
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
	movl	$0, -4(%rbp)
	jmp	.L2
.L6:
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	jne	.L3
	movl	-4(%rbp), %eax
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
	imull	%edx, %eax
	addl	%eax, -8(%rbp)
	jmp	.L4
.L3:
	movl	-4(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L5
	movl	-4(%rbp), %eax
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
	imull	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	addl	%eax, -8(%rbp)
	jmp	.L4
.L5:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -8(%rbp)
.L4:
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L6
	movl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem143.c"
	.align 8
.LC1:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 6"
	.align 8
.LC2:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 14"
	.align 8
.LC3:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 0"
	.align 8
.LC4:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 9"
	.align 8
.LC5:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -3"
	.align 8
.LC6:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -126"
	.align 8
.LC7:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 3030"
	.align 8
.LC8:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -14196"
	.align 8
.LC9:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -1448"
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
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -96(%rbp)
	movl	$2, -92(%rbp)
	movl	$3, -88(%rbp)
	leaq	-96(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$6, %eax
	je	.L9
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$20, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L9:
	movl	$1, -96(%rbp)
	movl	$4, -92(%rbp)
	movl	$9, -88(%rbp)
	leaq	-96(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$14, %eax
	je	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$24, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	leaq	-96(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	movl	$1, -96(%rbp)
	movl	$1, -92(%rbp)
	movl	$1, -88(%rbp)
	movl	$1, -84(%rbp)
	movl	$1, -80(%rbp)
	movl	$1, -76(%rbp)
	movl	$1, -72(%rbp)
	movl	$1, -68(%rbp)
	movl	$1, -64(%rbp)
	leaq	-96(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$9, %eax
	je	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	movl	$-1, -96(%rbp)
	movl	$-1, -92(%rbp)
	movl	$-1, -88(%rbp)
	movl	$-1, -84(%rbp)
	movl	$-1, -80(%rbp)
	movl	$-1, -76(%rbp)
	movl	$-1, -72(%rbp)
	movl	$-1, -68(%rbp)
	movl	$-1, -64(%rbp)
	leaq	-96(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$-3, %eax
	je	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$36, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	movl	$0, -96(%rbp)
	leaq	-96(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$40, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	movl	$-1, -96(%rbp)
	movl	$-5, -92(%rbp)
	movl	$2, -88(%rbp)
	movl	$-1, -84(%rbp)
	movl	$-5, -80(%rbp)
	leaq	-96(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$-126, %eax
	je	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$44, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	movl	$-56, -96(%rbp)
	movl	$-99, -92(%rbp)
	movl	$1, -88(%rbp)
	movl	$0, -84(%rbp)
	movl	$-2, -80(%rbp)
	leaq	-96(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$3030, %eax
	je	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$48, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	movl	$-1, -96(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -68(%rbp)
	movl	$-1, -64(%rbp)
	leaq	-96(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$52, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	movl	$-16, -96(%rbp)
	movl	$-9, -92(%rbp)
	movl	$-2, -88(%rbp)
	movl	$36, -84(%rbp)
	movl	$36, -80(%rbp)
	movl	$26, -76(%rbp)
	movl	$-20, -72(%rbp)
	movl	$25, -68(%rbp)
	movl	$-40, -64(%rbp)
	movl	$20, -60(%rbp)
	movl	$-4, -56(%rbp)
	movl	$12, -52(%rbp)
	movl	$-26, -48(%rbp)
	movl	$35, -44(%rbp)
	movl	$37, -40(%rbp)
	leaq	-96(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$-14196, %eax
	je	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$56, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	movl	$-1, -96(%rbp)
	movl	$-3, -92(%rbp)
	movl	$17, -88(%rbp)
	movl	$-1, -84(%rbp)
	movl	$-15, -80(%rbp)
	movl	$13, -76(%rbp)
	movl	$-1, -72(%rbp)
	movl	$14, -68(%rbp)
	movl	$-14, -64(%rbp)
	movl	$-12, -60(%rbp)
	movl	$-5, -56(%rbp)
	movl	$14, -52(%rbp)
	movl	$-14, -48(%rbp)
	movl	$6, -44(%rbp)
	movl	$13, -40(%rbp)
	movl	$11, -36(%rbp)
	movl	$16, -32(%rbp)
	movl	$16, -28(%rbp)
	movl	$4, -24(%rbp)
	movl	$10, -20(%rbp)
	leaq	-96(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$-1448, %eax
	je	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$60, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
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
