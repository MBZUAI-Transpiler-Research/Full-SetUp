	.file	"problem33.c"
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
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -40(%rbp)
	movl	$1, -36(%rbp)
	movl	$11, -32(%rbp)
	jmp	.L2
.L12:
	movl	-32(%rbp), %ecx
	movl	%ecx, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	je	.L15
	movl	$11, -28(%rbp)
	jmp	.L5
.L11:
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	je	.L16
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	gcd
	movl	%eax, -24(%rbp)
	cmpl	$1, -24(%rbp)
	je	.L17
	movl	-28(%rbp), %eax
	movl	$0, %edx
	divl	-24(%rbp)
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %eax
	movl	$0, %edx
	divl	-24(%rbp)
	movl	%eax, -16(%rbp)
	leaq	-44(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	cancel
	testl	%eax, %eax
	je	.L10
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	gcd
	movl	%eax, -12(%rbp)
	movl	-48(%rbp), %eax
	movl	$0, %edx
	divl	-12(%rbp)
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	movl	$0, %edx
	divl	-12(%rbp)
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L10
	movl	-44(%rbp), %eax
	cmpl	%eax, -16(%rbp)
	jne	.L10
	movl	-40(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.L10
.L16:
	nop
	jmp	.L10
.L17:
	nop
.L10:
	addl	$1, -28(%rbp)
.L5:
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jb	.L11
	jmp	.L4
.L15:
	nop
.L4:
	addl	$1, -32(%rbp)
.L2:
	cmpl	$99, -32(%rbp)
	jbe	.L12
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	gcd
	movl	%eax, %edi
	movl	-36(%rbp), %eax
	movl	$0, %edx
	divl	%edi
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.type	gcd, @function
gcd:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	jmp	.L19
.L20:
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
.L19:
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	-24(%rbp)
	movl	%edx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L20
	movl	-24(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	gcd, .-gcd
	.type	cancel, @function
cancel:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	-4(%rbp), %edx
	movl	%edx, %ecx
	movl	$3435973837, %eax
	imulq	%rcx, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	shrl	$3, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	%eax, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-8(%rbp), %esi
	movl	%esi, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %esi
	movl	%esi, %edx
	cmpl	%edx, %ecx
	jne	.L23
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$3, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$3, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L24
.L23:
	movl	-4(%rbp), %ecx
	movl	%ecx, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	movl	$3435973837, %eax
	imulq	%rcx, %rax
	shrq	$32, %rax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	.L25
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$3, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	-8(%rbp), %ecx
	movl	%ecx, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L24
.L25:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %esi
	shrl	$3, %esi
	movl	-8(%rbp), %ecx
	movl	%ecx, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	jne	.L26
	movl	-4(%rbp), %ecx
	movl	%ecx, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$3, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L24
.L26:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$3, %edx
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	movl	$3435973837, %eax
	imulq	%rcx, %rax
	shrq	$32, %rax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	.L27
	movl	-4(%rbp), %ecx
	movl	%ecx, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	-8(%rbp), %ecx
	movl	%ecx, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L24
.L27:
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
	movl	$0, %eax
.L24:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	cancel, .-cancel
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
