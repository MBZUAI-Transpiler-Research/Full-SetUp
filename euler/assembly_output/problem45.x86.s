	.file	"problem45.c"
	.text
	.section	.rodata
.LC0:
	.string	"%llu\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$144, -16(%rbp)
	jmp	.L2
.L3:
	addq	$1, -16(%rbp)
.L2:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	hexagonal
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	is_pentagonal
	testl	%eax, %eax
	je	.L3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	is_triangle
	testl	%eax, %eax
	je	.L3
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	is_triangle
	.type	is_triangle, @function
is_triangle:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	salq	$3, %rax
	addq	$1, %rax
	testq	%rax, %rax
	js	.L6
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rax, %xmm2
	movq	%xmm2, %rax
	jmp	.L7
.L6:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
	movq	%xmm0, %rax
.L7:
	movq	%rax, %xmm0
	call	sqrt@PLT
	comisd	.LC1(%rip), %xmm0
	jnb	.L8
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	jmp	.L9
.L8:
	movsd	.LC1(%rip), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movabsq	$-9223372036854775808, %rax
	xorq	%rax, -8(%rbp)
.L9:
	movq	-8(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	imulq	%rax, %rax
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L10
	movq	-8(%rbp), %rax
	subq	$1, %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L10
	movl	$1, %eax
	jmp	.L12
.L10:
	movl	$0, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	is_triangle, .-is_triangle
	.globl	is_pentagonal
	.type	is_pentagonal, @function
is_pentagonal:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	$1, %rax
	testq	%rax, %rax
	js	.L14
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rax, %xmm2
	movq	%xmm2, %rax
	jmp	.L15
.L14:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
	movq	%xmm0, %rax
.L15:
	movq	%rax, %xmm0
	call	sqrt@PLT
	comisd	.LC1(%rip), %xmm0
	jnb	.L16
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	jmp	.L17
.L16:
	movsd	.LC1(%rip), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movabsq	$-9223372036854775808, %rax
	xorq	%rax, -8(%rbp)
.L17:
	movq	-8(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	imulq	%rax, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L18
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rcx
	movabsq	$-6148914691236517205, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$2, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	testq	%rdx, %rdx
	jne	.L18
	movl	$1, %eax
	jmp	.L20
.L18:
	movl	$0, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	is_pentagonal, .-is_pentagonal
	.globl	hexagonal
	.type	hexagonal, @function
hexagonal:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, %rax
	subq	$1, %rax
	imulq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	hexagonal, .-hexagonal
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1138753536
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
