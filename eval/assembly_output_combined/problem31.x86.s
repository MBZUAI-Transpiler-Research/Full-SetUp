	.file	"problem31.c"
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
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	-28(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, -12(%rbp)
	jmp	.L2
.L5:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L3
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %ecx
	movq	-40(%rbp), %rdx
	movl	%ecx, (%rdx)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rsi), %xmm0
	movss	%xmm0, (%rax)
.L3:
	addl	$1, -12(%rbp)
.L2:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L5
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
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
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	movl	$0, -4(%rbp)
	jmp	.L11
.L14:
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
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC2(%rip), %xmm0
	jbe	.L16
	movl	$0, %eax
	jmp	.L10
.L16:
	addl	$1, -4(%rbp)
.L11:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L14
	movl	$1, %eax
.L10:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC8:
	.string	"problem31.c"
	.align 8
.LC9:
	.string	"issame(result, count, (float[]){4, 5, 6}, 3)"
	.align 8
.LC17:
	.string	"issame(result, count, (float[]){5, 3, 2, 3, 3, 9, 123, 1}, 8)"
	.align 8
.LC18:
	.string	"issame(result, count, (float[]){}, 0)"
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
	subq	$160, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -128(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -124(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -120(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -116(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -112(%rbp)
	leaq	-148(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -144(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -64(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -56(%rbp)
	movl	-148(%rbp), %esi
	leaq	-64(%rbp), %rdx
	movq	-144(%rbp), %rax
	movl	$3, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$37, %edx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -64(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	.LC11(%rip), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	.LC12(%rip), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	.LC13(%rip), %xmm0
	movss	%xmm0, -40(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	movss	.LC14(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	.LC15(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	.LC16(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	leaq	-148(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$11, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -144(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -96(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -92(%rbp)
	movss	.LC12(%rip), %xmm0
	movss	%xmm0, -88(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -84(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -80(%rbp)
	movss	.LC13(%rip), %xmm0
	movss	%xmm0, -76(%rbp)
	movss	.LC14(%rip), %xmm0
	movss	%xmm0, -72(%rbp)
	movss	.LC15(%rip), %xmm0
	movss	%xmm0, -68(%rbp)
	movl	-148(%rbp), %esi
	leaq	-96(%rbp), %rdx
	movq	-144(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$41, %edx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -96(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -92(%rbp)
	leaq	-148(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -144(%rbp)
	movl	-148(%rbp), %esi
	leaq	-132(%rbp), %rdx
	movq	-144(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$45, %edx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-148(%rbp), %rdx
	leaq	-136(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -144(%rbp)
	movl	-148(%rbp), %esi
	leaq	-132(%rbp), %rdx
	movq	-144(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$49, %edx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L23
	call	__stack_chk_fail@PLT
.L23:
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
	.align 16
.LC1:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 8
.LC2:
	.long	-350469331
	.long	1058682594
	.align 4
.LC3:
	.long	-1082130432
	.align 4
.LC4:
	.long	-1073741824
	.align 4
.LC5:
	.long	1082130432
	.align 4
.LC6:
	.long	1084227584
	.align 4
.LC7:
	.long	1086324736
	.align 4
.LC10:
	.long	1077936128
	.align 4
.LC11:
	.long	-1063256064
	.align 4
.LC12:
	.long	1073741824
	.align 4
.LC13:
	.long	1091567616
	.align 4
.LC14:
	.long	1123418112
	.align 4
.LC15:
	.long	1065353216
	.align 4
.LC16:
	.long	-1054867456
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
