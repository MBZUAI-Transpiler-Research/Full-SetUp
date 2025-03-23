	.file	"problem17.c"
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
	subq	$176, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -144(%rbp)
	movl	$3, -140(%rbp)
	movl	$3, -136(%rbp)
	movl	$5, -132(%rbp)
	movl	$4, -128(%rbp)
	movl	$4, -124(%rbp)
	movl	$3, -120(%rbp)
	movl	$5, -116(%rbp)
	movl	$5, -112(%rbp)
	movl	$4, -108(%rbp)
	movl	$3, -96(%rbp)
	movl	$6, -92(%rbp)
	movl	$6, -88(%rbp)
	movl	$8, -84(%rbp)
	movl	$8, -80(%rbp)
	movl	$7, -76(%rbp)
	movl	$7, -72(%rbp)
	movl	$9, -68(%rbp)
	movl	$8, -64(%rbp)
	movl	$8, -60(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
	movl	$6, -40(%rbp)
	movl	$6, -36(%rbp)
	movl	$5, -32(%rbp)
	movl	$5, -28(%rbp)
	movl	$5, -24(%rbp)
	movl	$7, -20(%rbp)
	movl	$6, -16(%rbp)
	movl	$6, -12(%rbp)
	movl	$7, -156(%rbp)
	movl	$3, -152(%rbp)
	movl	$8, -148(%rbp)
	movl	$0, -164(%rbp)
	movl	$1, -168(%rbp)
	jmp	.L2
.L3:
	movl	-168(%rbp), %eax
	movl	-144(%rbp,%rax,4), %eax
	addl	%eax, -164(%rbp)
	addl	$1, -168(%rbp)
.L2:
	cmpl	$9, -168(%rbp)
	jbe	.L3
	movl	$0, -168(%rbp)
	jmp	.L4
.L5:
	movl	-168(%rbp), %eax
	movl	-96(%rbp,%rax,4), %eax
	addl	%eax, -164(%rbp)
	addl	$1, -168(%rbp)
.L4:
	cmpl	$9, -168(%rbp)
	jbe	.L5
	movl	$20, -168(%rbp)
	jmp	.L6
.L7:
	movl	-168(%rbp), %eax
	movl	%eax, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	shrl	$3, %eax
	movl	%eax, %eax
	movl	-48(%rbp,%rax,4), %esi
	movl	-168(%rbp), %ecx
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
	movl	%edx, %eax
	movl	-144(%rbp,%rax,4), %eax
	addl	%esi, %eax
	addl	%eax, -164(%rbp)
	addl	$1, -168(%rbp)
.L6:
	cmpl	$99, -168(%rbp)
	jbe	.L7
	movl	$1, -168(%rbp)
	jmp	.L8
.L15:
	movl	-168(%rbp), %eax
	movl	-144(%rbp,%rax,4), %edx
	movl	-156(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -164(%rbp)
	movl	$1, -160(%rbp)
	jmp	.L9
.L10:
	movl	-168(%rbp), %eax
	movl	-144(%rbp,%rax,4), %edx
	movl	-156(%rbp), %eax
	addl	%eax, %edx
	movl	-152(%rbp), %eax
	addl	%eax, %edx
	movl	-160(%rbp), %eax
	cltq
	movl	-144(%rbp,%rax,4), %eax
	addl	%edx, %eax
	addl	%eax, -164(%rbp)
	addl	$1, -160(%rbp)
.L9:
	cmpl	$9, -160(%rbp)
	jle	.L10
	movl	$0, -160(%rbp)
	jmp	.L11
.L12:
	movl	-168(%rbp), %eax
	movl	-144(%rbp,%rax,4), %edx
	movl	-156(%rbp), %eax
	addl	%eax, %edx
	movl	-152(%rbp), %eax
	addl	%eax, %edx
	movl	-160(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	addl	%edx, %eax
	addl	%eax, -164(%rbp)
	addl	$1, -160(%rbp)
.L11:
	cmpl	$9, -160(%rbp)
	jle	.L12
	movl	$20, -160(%rbp)
	jmp	.L13
.L14:
	movl	-168(%rbp), %eax
	movl	-144(%rbp,%rax,4), %edx
	movl	-156(%rbp), %eax
	addl	%eax, %edx
	movl	-152(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-160(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$2, %edx
	sarl	$31, %eax
	movl	%eax, %esi
	movl	%edx, %eax
	subl	%esi, %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	leal	(%rcx,%rax), %esi
	movl	-160(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	sarl	$2, %eax
	movl	%ecx, %edi
	sarl	$31, %edi
	subl	%edi, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movslq	%edx, %rax
	movl	-144(%rbp,%rax,4), %eax
	addl	%esi, %eax
	addl	%eax, -164(%rbp)
	addl	$1, -160(%rbp)
.L13:
	cmpl	$99, -160(%rbp)
	jle	.L14
	addl	$1, -168(%rbp)
.L8:
	cmpl	$9, -168(%rbp)
	jbe	.L15
	movl	-140(%rbp), %edx
	movl	-148(%rbp), %eax
	addl	%edx, %eax
	addl	%eax, -164(%rbp)
	movl	-164(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
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
