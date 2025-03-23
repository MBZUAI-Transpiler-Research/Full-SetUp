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
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-56(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-40(%rbp), %rax
	movss	4(%rax), %xmm0
	movss	%xmm0, (%rdx)
	movl	$0, -16(%rbp)
	jmp	.L2
.L7:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L3
.L6:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	.LC1(%rip), %xmm1
	andps	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-20(%rbp), %xmm0
	comiss	-4(%rbp), %xmm0
	jbe	.L4
	movss	-4(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, (%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movss	(%rdx), %xmm0
	movss	%xmm0, (%rax)
.L4:
	addl	$1, -12(%rbp)
.L3:
	movl	-12(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L6
	addl	$1, -16(%rbp)
.L2:
	movl	-16(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L7
	movq	-56(%rbp), %rax
	movss	(%rax), %xmm0
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movss	(%rax), %xmm1
	comiss	%xmm1, %xmm0
	ja	.L11
	jmp	.L12
.L11:
	movq	-56(%rbp), %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -8(%rbp)
	movq	-56(%rbp), %rax
	movss	4(%rax), %xmm0
	movq	-56(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movss	-8(%rbp), %xmm0
	movss	%xmm0, (%rax)
.L12:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align 4
.LC0:
	.long	2139095039
	.align 16
.LC1:
	.long	2147483647
	.long	0
	.long	0
	.long	0
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
