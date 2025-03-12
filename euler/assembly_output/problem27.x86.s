	.file	"problem27.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
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
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	movl	$-999, -24(%rbp)
	jmp	.L2
.L8:
	movl	$-999, -20(%rbp)
	jmp	.L3
.L7:
	movl	$0, -16(%rbp)
	jmp	.L4
.L5:
	addl	$1, -16(%rbp)
.L4:
	movl	-16(%rbp), %eax
	imull	%eax, %eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	-16(%rbp), %eax
	addl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edi
	call	is_prime
	testl	%eax, %eax
	jne	.L5
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.L6
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.L6:
	addl	$1, -20(%rbp)
.L3:
	cmpl	$999, -20(%rbp)
	jle	.L7
	addl	$1, -24(%rbp)
.L2:
	cmpl	$999, -24(%rbp)
	jle	.L8
	movl	-8(%rbp), %eax
	imull	-4(%rbp), %eax
	movl	%eax, %esi
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
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	cmpl	$1, -20(%rbp)
	jg	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	cmpl	$2, -20(%rbp)
	jne	.L13
	movl	$1, %eax
	jmp	.L12
.L13:
	movl	$2, -4(%rbp)
	jmp	.L14
.L16:
	movl	-20(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L15
	movl	$0, %eax
	jmp	.L12
.L15:
	addl	$1, -4(%rbp)
.L14:
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-4(%rbp), %xmm1
	movsd	%xmm1, -32(%rbp)
	pxor	%xmm2, %xmm2
	cvtsi2sdl	-20(%rbp), %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm3
	comisd	-32(%rbp), %xmm3
	ja	.L16
	movl	$1, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	is_prime, .-is_prime
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
