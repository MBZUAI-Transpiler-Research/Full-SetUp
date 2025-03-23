	.file	"problem37.c"
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
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	movl	$10, -20(%rbp)
	jmp	.L2
.L14:
	movl	-20(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L3
.L6:
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	is_prime
	testl	%eax, %eax
	je	.L16
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	shrl	$3, %eax
	movl	%eax, -8(%rbp)
.L3:
	cmpl	$0, -8(%rbp)
	jne	.L6
	movl	-20(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	testq	%rax, %rax
	js	.L7
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rax, %xmm2
	movq	%xmm2, %rax
	jmp	.L8
.L7:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
	movq	%xmm0, %rax
.L8:
	movq	%rax, %xmm0
	call	log10@PLT
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	testq	%rax, %rax
	js	.L9
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L10
.L9:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L10:
	movq	.LC0(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -4(%rbp)
	jmp	.L11
.L13:
	movl	-8(%rbp), %eax
	movl	$0, %edx
	divl	-4(%rbp)
	movl	%edx, %eax
	movl	%eax, %edi
	call	is_prime
	testl	%eax, %eax
	je	.L17
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	shrl	$3, %eax
	movl	%eax, -4(%rbp)
.L11:
	cmpl	$1, -4(%rbp)
	jne	.L13
	movl	-20(%rbp), %eax
	addl	%eax, -12(%rbp)
	addl	$1, -16(%rbp)
	jmp	.L5
.L16:
	nop
	jmp	.L5
.L17:
	nop
.L5:
	addl	$1, -20(%rbp)
.L2:
	cmpl	$10, -16(%rbp)
	jbe	.L14
	movl	-12(%rbp), %eax
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
	ja	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	cmpl	$2, -20(%rbp)
	jne	.L21
	movl	$1, %eax
	jmp	.L20
.L21:
	movl	$2, -4(%rbp)
	jmp	.L22
.L24:
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	-4(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L23
	movl	$0, %eax
	jmp	.L20
.L23:
	addl	$1, -4(%rbp)
.L22:
	movl	-4(%rbp), %eax
	imull	%eax, %eax
	cmpl	%eax, -20(%rbp)
	jnb	.L24
	movl	$1, %eax
.L20:
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
