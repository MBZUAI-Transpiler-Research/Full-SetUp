	.file	"problem63.c"
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
	movl	$1, -4(%rbp)
	jmp	.L2
.L3:
	pxor	%xmm1, %xmm1
	cvtsi2ssl	-4(%rbp), %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%rax)
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L3
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB1:
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
	movl	%ecx, -32(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.L5
	movl	$0, %eax
	jmp	.L6
.L5:
	movl	$0, -4(%rbp)
	jmp	.L7
.L10:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	.LC0(%rip), %xmm1
	andps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC1(%rip), %xmm0
	jbe	.L12
	movl	$0, %eax
	jmp	.L6
.L12:
	addl	$1, -4(%rbp)
.L7:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L10
	movl	$1, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
.LC9:
	.string	"problem63.c"
	.align 8
.LC10:
	.string	"issame(result, 4, expected1, 4)"
	.align 8
.LC12:
	.string	"issame(result, 2, expected2, 2)"
	.align 8
.LC13:
	.string	"issame(result, 2, expected3, 2)"
	.align 8
.LC16:
	.string	"issame(result, 4, expected4, 4)"
.LC17:
	.string	"issame(result, 0, NULL, 0)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -64(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -96(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -92(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -88(%rbp)
	movss	.LC8(%rip), %xmm0
	movss	%xmm0, -84(%rbp)
	leaq	-112(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-96(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movl	$4, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	issame
	testb	%al, %al
	jne	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$30, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -136(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -132(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -128(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -152(%rbp)
	movss	.LC11(%rip), %xmm0
	movss	%xmm0, -148(%rbp)
	leaq	-112(%rbp), %rdx
	leaq	-136(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-152(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movl	$2, %ecx
	movl	$2, %esi
	movq	%rax, %rdi
	call	issame
	testb	%al, %al
	jne	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -124(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -120(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -116(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -144(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -140(%rbp)
	leaq	-112(%rbp), %rdx
	leaq	-124(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-144(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movl	$2, %ecx
	movl	$2, %esi
	movq	%rax, %rdi
	call	issame
	testb	%al, %al
	jne	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$40, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -16(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -80(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -76(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -72(%rbp)
	movss	.LC15(%rip), %xmm0
	movss	%xmm0, -68(%rbp)
	leaq	-112(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-80(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movl	$4, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	issame
	testb	%al, %al
	jne	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$45, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -156(%rbp)
	leaq	-112(%rbp), %rdx
	leaq	-156(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-112(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	issame
	testb	%al, %al
	jne	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$49, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align 16
.LC0:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 8
.LC1:
	.long	-350469331
	.long	1058682594
	.align 4
.LC2:
	.long	1077936128
	.align 4
.LC3:
	.long	1065353216
	.align 4
.LC4:
	.long	1073741824
	.align 4
.LC5:
	.long	1082130432
	.align 4
.LC6:
	.long	1084227584
	.align 4
.LC7:
	.long	1094713344
	.align 4
.LC8:
	.long	1101004800
	.align 4
.LC11:
	.long	1086324736
	.align 4
.LC15:
	.long	1098907648
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
