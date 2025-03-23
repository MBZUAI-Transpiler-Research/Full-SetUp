	.file	"problem33.c"
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
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	$1, -48(%rbp)
	jmp	.L2
.L5:
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L3
.L4:
	movsd	-8(%rbp), %xmm0
	mulsd	-32(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$1, -44(%rbp)
.L3:
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L4
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	mulsd	-8(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	addl	$1, -48(%rbp)
.L2:
	movl	-48(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L5
	jmp	.L6
.L15:
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	$1, -48(%rbp)
	jmp	.L7
.L10:
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$1, -40(%rbp)
	jmp	.L8
.L9:
	movsd	-8(%rbp), %xmm0
	mulsd	-32(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$1, -40(%rbp)
.L8:
	movl	-40(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L9
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-48(%rbp), %xmm1
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	-8(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	addl	$1, -48(%rbp)
.L7:
	movl	-48(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L10
	movsd	-24(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	divsd	-16(%rbp), %xmm1
	movsd	-32(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	$1, -48(%rbp)
	jmp	.L11
.L14:
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L12
.L13:
	movsd	-8(%rbp), %xmm0
	mulsd	-32(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$1, -36(%rbp)
.L12:
	movl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L13
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	mulsd	-8(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	addl	$1, -48(%rbp)
.L11:
	movl	-48(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L14
.L6:
	movsd	-24(%rbp), %xmm0
	movq	.LC2(%rip), %xmm1
	andpd	%xmm1, %xmm0
	comisd	.LC3(%rip), %xmm0
	ja	.L15
	movsd	-32(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.globl	evaluate_polynomial
	.type	evaluate_polynomial, @function
evaluate_polynomial:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movsd	%xmm0, -56(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L18
.L20:
	cmpl	$0, -20(%rbp)
	jle	.L19
	movsd	-8(%rbp), %xmm0
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
.L19:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	mulsd	-8(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	addl	$1, -20(%rbp)
.L18:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L20
	movsd	-16(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	evaluate_polynomial, .-evaluate_polynomial
	.section	.rodata
.LC5:
	.string	"problem33.c"
	.align 8
.LC6:
	.string	"fabs(evaluate_polynomial(coeffs, ncoeff, solution)) < 1e-3"
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movl	$0, -100(%rbp)
	jmp	.L23
.L32:
	movq	%rsp, %rax
	movq	%rax, %rbx
	call	rand@PLT
	cltd
	shrl	$30, %edx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	addl	$1, %eax
	addl	%eax, %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -80(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %r12
	movl	$0, %r13d
	movslq	%eax, %rdx
	movq	%rdx, %r14
	movl	$0, %r15d
	cltq
	leaq	0(,%rax,8), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L24:
	cmpq	%rdx, %rsp
	je	.L25
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L24
.L25:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L26
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L26:
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -72(%rbp)
	movl	$0, -96(%rbp)
	jmp	.L27
.L30:
	call	rand@PLT
	movl	%eax, %ecx
	movslq	%ecx, %rax
	imulq	$818089009, %rax, %rax
	shrq	$32, %rax
	sarl	$2, %eax
	movl	%ecx, %esi
	sarl	$31, %esi
	subl	%esi, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	leal	-10(%rdx), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -88(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-88(%rbp), %xmm0
	jp	.L28
	pxor	%xmm0, %xmm0
	ucomisd	-88(%rbp), %xmm0
	jne	.L28
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -88(%rbp)
.L28:
	movq	-72(%rbp), %rax
	movl	-96(%rbp), %edx
	movslq	%edx, %rdx
	movsd	-88(%rbp), %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
	addl	$1, -96(%rbp)
.L27:
	movl	-96(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L30
	movl	-92(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	func0
	movq	%xmm0, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rcx
	movl	-92(%rbp), %edx
	movq	-72(%rbp), %rax
	movq	%rcx, %xmm0
	movl	%edx, %esi
	movq	%rax, %rdi
	call	evaluate_polynomial
	movq	%xmm0, %rax
	movq	.LC2(%rip), %xmm0
	movq	%rax, %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC4(%rip), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L31
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$76, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L31:
	movq	%rbx, %rsp
	addl	$1, -100(%rbp)
.L23:
	cmpl	$99, -100(%rbp)
	jle	.L32
	movl	$0, %eax
	movq	-56(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L34
	call	__stack_chk_fail@PLT
.L34:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
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
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 16
.LC2:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC3:
	.long	-1598689907
	.long	1051772663
	.align 8
.LC4:
	.long	-755914244
	.long	1062232653
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
