	.file	"problem35.c"
	.text
	.section	.rodata
.LC1:
	.string	"%u\n"
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
	subq	$32, %rsp
	movl	$0, -24(%rbp)
	movl	$2, -28(%rbp)
	jmp	.L2
.L13:
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	is_prime
	testl	%eax, %eax
	je	.L15
	movl	-28(%rbp), %eax
	testq	%rax, %rax
	js	.L5
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rax, %xmm2
	movq	%xmm2, %rax
	jmp	.L6
.L5:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
	movq	%xmm0, %rax
.L6:
	movq	%rax, %xmm0
	call	log10@PLT
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -12(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L7
.L12:
	movl	-12(%rbp), %eax
	testq	%rax, %rax
	js	.L8
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L9
.L8:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L9:
	movq	.LC0(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -8(%rbp)
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	-8(%rbp)
	movl	%edx, -4(%rbp)
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	-8(%rbp)
	movl	%eax, -20(%rbp)
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	is_prime
	testl	%eax, %eax
	je	.L16
	addl	$1, -16(%rbp)
.L7:
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jb	.L12
	addl	$1, -24(%rbp)
	jmp	.L4
.L11:
.L15:
	nop
	jmp	.L4
.L16:
	nop
.L4:
	addl	$1, -28(%rbp)
.L2:
	cmpl	$999999, -28(%rbp)
	jbe	.L13
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
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
	.type	is_prime, @function
is_prime:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	cmpl	$1, -20(%rbp)
	ja	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	cmpl	$2, -20(%rbp)
	jne	.L20
	movl	$1, %eax
	jmp	.L19
.L20:
	movl	$2, -4(%rbp)
	jmp	.L21
.L23:
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	-4(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L22
	movl	$0, %eax
	jmp	.L19
.L22:
	addl	$1, -4(%rbp)
.L21:
	movl	-4(%rbp), %eax
	imull	%eax, %eax
	cmpl	%eax, -20(%rbp)
	jnb	.L23
	movl	$1, %eax
.L19:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	is_prime, .-is_prime
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1076101120
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
