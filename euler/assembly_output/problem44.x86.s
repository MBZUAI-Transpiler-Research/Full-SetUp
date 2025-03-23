	.file	"problem44.c"
	.text
	.section	.rodata
.LC0:
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
	movl	$-1, -12(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L2
.L6:
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.L3
.L5:
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	pentagonal
	movl	%eax, -8(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	pentagonal
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edi
	call	is_pentagonal
	testl	%eax, %eax
	je	.L4
	movl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, %edi
	call	is_pentagonal
	testl	%eax, %eax
	je	.L4
	movl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jnb	.L4
	movl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
.L4:
	addl	$1, -16(%rbp)
.L3:
	cmpl	$9999, -16(%rbp)
	jbe	.L5
	addl	$1, -20(%rbp)
.L2:
	cmpl	$9999, -20(%rbp)
	jbe	.L6
	movl	-12(%rbp), %eax
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
	.type	pentagonal, @function
pentagonal:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	$1, %eax
	imull	-4(%rbp), %eax
	shrl	%eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	pentagonal, .-pentagonal
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
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	$1, %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L11
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movq	%xmm1, %rax
	jmp	.L12
.L11:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
	movq	%xmm0, %rax
.L12:
	movq	%rax, %xmm0
	call	sqrt@PLT
	cvttsd2siq	%xmm0, %rax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	imull	%eax, %eax
	movl	%eax, %ecx
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	$1, %eax
	cmpl	%eax, %ecx
	jne	.L13
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, %edx
	movl	$2863311531, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$2, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	jne	.L13
	movl	$1, %eax
	jmp	.L15
.L13:
	movl	$0, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	is_pentagonal, .-is_pentagonal
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
