	.file	"libmin_strspn.c"
	.text
	.globl	libmin_strspn
	.type	libmin_strspn, @function
libmin_strspn:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L2
	movl	$0, %eax
	jmp	.L13
.L2:
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L7
	jmp	.L5
.L6:
	addq	$1, -72(%rbp)
.L5:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L6
	movq	-72(%rbp), %rax
	subq	-56(%rbp), %rax
	jmp	.L13
.L9:
	addq	$1, -80(%rbp)
.L7:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L10
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$6, %al
	movzbl	%al, %edx
	movq	-48(%rbp,%rdx,8), %rsi
	movq	-80(%rbp), %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	andl	$63, %edx
	movl	$1, %edi
	movl	%edx, %ecx
	salq	%cl, %rdi
	movq	%rdi, %rdx
	movzbl	%al, %eax
	orq	%rsi, %rdx
	movq	%rdx, -48(%rbp,%rax,8)
	movq	-48(%rbp,%rax,8), %rax
	testq	%rax, %rax
	jne	.L9
	jmp	.L10
.L12:
	addq	$1, -72(%rbp)
.L10:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L11
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	movq	-48(%rbp,%rax,8), %rdx
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$63, %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L12
.L11:
	movq	-72(%rbp), %rax
	subq	-56(%rbp), %rax
.L13:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_strspn, .-libmin_strspn
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
