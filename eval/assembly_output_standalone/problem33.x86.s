	.file	"code.c"
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
	.section	.rodata
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
