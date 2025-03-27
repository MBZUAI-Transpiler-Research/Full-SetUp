	.file	"libmin_scanf.c"
	.text
	.globl	libmin_sscanf
	.type	libmin_sscanf, @function
libmin_sscanf:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L2
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L2:
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$0, -224(%rbp)
	movl	$0, -220(%rbp)
	movl	$16, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	$0, -228(%rbp)
	jmp	.L3
.L17:
	movl	-228(%rbp), %eax
	movslq	%eax, %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	jne	.L4
	addl	$1, -228(%rbp)
	movl	-228(%rbp), %eax
	movslq	%eax, %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$120, %eax
	je	.L5
	cmpl	$120, %eax
	jg	.L15
	cmpl	$99, %eax
	je	.L7
	cmpl	$100, %eax
	je	.L8
	jmp	.L15
.L7:
	movl	-224(%rbp), %eax
	movslq	%eax, %rdx
	movq	-248(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-208(%rbp), %eax
	cmpl	$47, %eax
	ja	.L9
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	.L10
.L9:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L10:
	movq	(%rax), %rax
	movzbl	(%rcx), %edx
	movb	%dl, (%rax)
	addl	$1, -224(%rbp)
	addl	$1, -220(%rbp)
	jmp	.L15
.L8:
	movl	-224(%rbp), %eax
	movslq	%eax, %rdx
	movq	-248(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-216(%rbp), %rax
	movl	$10, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	libmin_strtol@PLT
	movq	%rax, %rcx
	movl	-208(%rbp), %eax
	cmpl	$47, %eax
	ja	.L11
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	.L12
.L11:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L12:
	movq	(%rax), %rax
	movl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-216(%rbp), %rdx
	movl	-224(%rbp), %eax
	movslq	%eax, %rcx
	movq	-248(%rbp), %rax
	addq	%rcx, %rax
	subq	%rax, %rdx
	movl	-224(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -224(%rbp)
	addl	$1, -220(%rbp)
	jmp	.L15
.L5:
	movl	-224(%rbp), %eax
	movslq	%eax, %rdx
	movq	-248(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-216(%rbp), %rax
	movl	$16, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	libmin_strtol@PLT
	movq	%rax, %rcx
	movl	-208(%rbp), %eax
	cmpl	$47, %eax
	ja	.L13
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	.L14
.L13:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L14:
	movq	(%rax), %rax
	movl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-216(%rbp), %rdx
	movl	-224(%rbp), %eax
	movslq	%eax, %rcx
	movq	-248(%rbp), %rax
	addq	%rcx, %rax
	subq	%rax, %rdx
	movl	-224(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -224(%rbp)
	addl	$1, -220(%rbp)
	jmp	.L15
.L4:
	addl	$1, -224(%rbp)
.L15:
	addl	$1, -228(%rbp)
.L3:
	cmpq	$0, -256(%rbp)
	je	.L16
	movl	-228(%rbp), %eax
	movslq	%eax, %rdx
	movq	-256(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L16
	movl	-224(%rbp), %eax
	movslq	%eax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L17
.L16:
	movl	-220(%rbp), %eax
	movq	-184(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_sscanf, .-libmin_sscanf
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
