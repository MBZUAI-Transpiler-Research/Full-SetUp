	.file	"problem32.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d%d%d"
.LC1:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -48(%rbp)
	movl	$1111, -56(%rbp)
	jmp	.L2
.L9:
	movl	$2, -52(%rbp)
	jmp	.L3
.L8:
	movl	-56(%rbp), %eax
	cltd
	idivl	-52(%rbp)
	movl	%edx, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.L12
	movl	-56(%rbp), %eax
	cltd
	idivl	-52(%rbp)
	movl	%eax, -40(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-52(%rbp), %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	log10@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	floor@PLT
	cvttsd2siq	%xmm0, %rbx
	pxor	%xmm2, %xmm2
	cvtsi2sdl	-40(%rbp), %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	call	log10@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	floor@PLT
	cvttsd2siq	%xmm0, %rax
	addq	%rax, %rbx
	pxor	%xmm3, %xmm3
	cvtsi2sdl	-56(%rbp), %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	call	log10@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	floor@PLT
	cvttsd2siq	%xmm0, %rax
	addq	%rbx, %rax
	cmpq	$6, %rax
	jne	.L13
	movl	-56(%rbp), %esi
	movl	-40(%rbp), %ecx
	movl	-52(%rbp), %edx
	leaq	-34(%rbp), %rax
	movl	%esi, %r9d
	movl	%ecx, %r8d
	movl	%edx, %ecx
	leaq	.LC0(%rip), %rdx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	leaq	-34(%rbp), %rax
	movq	%rax, %rdi
	call	is_pandigital
	testl	%eax, %eax
	je	.L5
	movl	-56(%rbp), %eax
	addl	%eax, -48(%rbp)
	jmp	.L7
.L12:
	nop
	jmp	.L5
.L13:
	nop
.L5:
	addl	$1, -52(%rbp)
.L3:
	movl	-52(%rbp), %eax
	imull	%eax, %eax
	cmpl	%eax, -56(%rbp)
	jg	.L8
.L7:
	addl	$1, -56(%rbp)
.L2:
	cmpl	$99999, -56(%rbp)
	jle	.L9
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.type	compare, @function
compare:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	compare, .-compare
	.section	.rodata
.LC2:
	.string	"123456789"
	.text
	.type	is_pandigital, @function
is_pandigital:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	compare(%rip), %rdx
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$9, %esi
	movq	%rax, %rdi
	call	qsort@PLT
	movq	-8(%rbp), %rax
	movl	$9, %edx
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	is_pandigital, .-is_pandigital
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
