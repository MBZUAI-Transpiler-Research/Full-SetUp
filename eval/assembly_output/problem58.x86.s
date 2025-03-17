	.file	"problem58.c"
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
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L2
.L7:
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
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L3
	movl	$1, -12(%rbp)
.L3:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L5
	movl	$1, -8(%rbp)
.L5:
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L7
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	cmpl	$2, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movl	$1, %eax
.L9:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC11:
	.string	"problem58.c"
.LC12:
	.string	"func0(list1, 4) == true"
.LC13:
	.string	"func0(list2, 4) == true"
.LC14:
	.string	"func0(list3, 4) == false"
.LC15:
	.string	"func0(list4, 4) == true"
.LC16:
	.string	"func0(list5, 4) == true"
.LC17:
	.string	"func0(list6, 6) == false"
.LC18:
	.string	"func0(list7, 6) == true"
.LC19:
	.string	"func0(list8, 4) == true"
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
	subq	$160, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -160(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -156(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -152(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -148(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -144(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -140(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -136(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -132(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -128(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -124(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -120(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -116(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -112(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -108(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -104(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -100(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -96(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -92(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -88(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -84(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -64(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	.LC8(%rip), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	.LC8(%rip), %xmm0
	movss	%xmm0, -16(%rbp)
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -80(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -76(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -72(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -68(%rbp)
	leaq	-160(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$31, %edx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	leaq	-144(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	leaq	-128(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	leaq	-112(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	leaq	-96(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	leaq	-64(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$36, %edx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	leaq	-32(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$37, %edx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	leaq	-80(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$38, %edx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
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
	.align 4
.LC0:
	.long	1065353216
	.align 4
.LC1:
	.long	1073741824
	.align 4
.LC2:
	.long	1082130432
	.align 4
.LC3:
	.long	1092616192
	.align 4
.LC4:
	.long	1101004800
	.align 4
.LC6:
	.long	-1054867456
	.align 4
.LC7:
	.long	1077936128
	.align 4
.LC8:
	.long	1084227584
	.align 4
.LC9:
	.long	1114636288
	.align 4
.LC10:
	.long	1091567616
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
