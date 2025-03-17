	.file	"problem152.c"
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
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L2
.L6:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, -56(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	call	round@PLT
	movapd	%xmm0, %xmm1
	movsd	-56(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movq	.LC0(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC1(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L3
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	pxor	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L3
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	pxor	%xmm4, %xmm4
	cvtss2sd	%xmm0, %xmm4
	movq	%xmm4, %rax
	movq	%rax, %xmm0
	call	round@PLT
	cvttsd2sil	%xmm0, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$1, %eax
	jne	.L3
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	pxor	%xmm5, %xmm5
	cvtss2sd	%xmm0, %xmm5
	movq	%xmm5, %rax
	movq	%rax, %xmm0
	call	round@PLT
	cvttsd2sil	%xmm0, %ebx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	pxor	%xmm6, %xmm6
	cvtss2sd	%xmm0, %xmm6
	movq	%xmm6, %rax
	movq	%rax, %xmm0
	call	round@PLT
	cvttsd2sil	%xmm0, %eax
	imull	%ebx, %eax
	cltq
	addq	%rax, -24(%rbp)
.L3:
	addl	$1, -28(%rbp)
.L2:
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L6
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC3:
	.string	"problem152.c"
.LC4:
	.string	"func0((float[]){}, 0) == 0"
	.align 8
.LC7:
	.string	"func0((float[]){5, 4}, 2) == 25"
	.align 8
.LC11:
	.string	"func0((float[]){0.1, 0.2, 0.3}, 3) == 0"
	.align 8
.LC15:
	.string	"func0((float[]){-10, -20, -30}, 3) == 0"
	.align 8
.LC19:
	.string	"func0((float[]){-1, -2, 8}, 3) == 0"
	.align 8
.LC21:
	.string	"func0((float[]){0.2, 3, 5}, 3) == 34"
	.align 8
.LC22:
	.string	"func0(lst, lst_size) == odd_sum"
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
	subq	$832, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-816(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	func0
	testq	%rax, %rax
	je	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$21, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -816(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -812(%rbp)
	leaq	-816(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	func0
	cmpq	$25, %rax
	je	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$22, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	movss	.LC8(%rip), %xmm0
	movss	%xmm0, -816(%rbp)
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -812(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -808(%rbp)
	leaq	-816(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	testq	%rax, %rax
	je	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$23, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	movss	.LC12(%rip), %xmm0
	movss	%xmm0, -816(%rbp)
	movss	.LC13(%rip), %xmm0
	movss	%xmm0, -812(%rbp)
	movss	.LC14(%rip), %xmm0
	movss	%xmm0, -808(%rbp)
	leaq	-816(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	testq	%rax, %rax
	je	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$24, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	movss	.LC16(%rip), %xmm0
	movss	%xmm0, -816(%rbp)
	movss	.LC17(%rip), %xmm0
	movss	%xmm0, -812(%rbp)
	movss	.LC18(%rip), %xmm0
	movss	%xmm0, -808(%rbp)
	leaq	-816(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	testq	%rax, %rax
	je	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$25, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -816(%rbp)
	movss	.LC20(%rip), %xmm0
	movss	%xmm0, -812(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -808(%rbp)
	leaq	-816(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	cmpq	$34, %rax
	je	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$26, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	movq	$0, -824(%rbp)
	movl	$0, -832(%rbp)
	movl	$-99, -828(%rbp)
	jmp	.L17
.L19:
	movl	-832(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -832(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-828(%rbp), %xmm0
	cltq
	movss	%xmm0, -816(%rbp,%rax,4)
	cmpl	$0, -828(%rbp)
	jle	.L18
	movl	-828(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$1, %eax
	jne	.L18
	movl	-828(%rbp), %eax
	imull	%eax, %eax
	cltq
	addq	%rax, -824(%rbp)
.L18:
	addl	$2, -828(%rbp)
.L17:
	cmpl	$99, -828(%rbp)
	jle	.L19
	movl	-832(%rbp), %edx
	leaq	-816(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	func0
	cmpq	%rax, -824(%rbp)
	je	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$37, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
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
	.align 16
.LC0:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC1:
	.long	-350469331
	.long	1058682594
	.align 4
.LC5:
	.long	1084227584
	.align 4
.LC6:
	.long	1082130432
	.align 4
.LC8:
	.long	1036831949
	.align 4
.LC9:
	.long	1045220557
	.align 4
.LC10:
	.long	1050253722
	.align 4
.LC12:
	.long	-1054867456
	.align 4
.LC13:
	.long	-1046478848
	.align 4
.LC14:
	.long	-1041235968
	.align 4
.LC16:
	.long	-1082130432
	.align 4
.LC17:
	.long	-1073741824
	.align 4
.LC18:
	.long	1090519040
	.align 4
.LC20:
	.long	1077936128
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
