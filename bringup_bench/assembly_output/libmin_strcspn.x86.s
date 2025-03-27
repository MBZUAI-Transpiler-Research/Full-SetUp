	.file	"libmin_strcspn.c"
	.text
	.type	__strchrnul, @function
__strchrnul:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	libmin_strlen@PLT
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	jmp	.L3
.L7:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L5
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -28(%rbp)
	jne	.L6
.L5:
	movq	-24(%rbp), %rax
	jmp	.L3
.L6:
	addq	$1, -24(%rbp)
.L4:
	movq	-24(%rbp), %rax
	andl	$7, %eax
	testq	%rax, %rax
	jne	.L7
	movl	-28(%rbp), %eax
	cltq
	movabsq	$72340172838076673, %rdx
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L8
.L10:
	addq	$8, -16(%rbp)
.L8:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movabsq	$-72340172838076673, %rdx
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	notq	%rax
	andq	%rax, %rdx
	movabsq	$-9187201950435737472, %rax
	andq	%rdx, %rax
	testq	%rax, %rax
	jne	.L9
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	xorq	-8(%rbp), %rax
	movabsq	$-72340172838076673, %rdx
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	xorq	-8(%rbp), %rax
	notq	%rax
	andq	%rax, %rdx
	movabsq	$-9187201950435737472, %rax
	andq	%rdx, %rax
	testq	%rax, %rax
	je	.L10
.L9:
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L11
.L13:
	addq	$1, -24(%rbp)
.L11:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L12
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -28(%rbp)
	jne	.L13
.L12:
	movq	-24(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	__strchrnul, .-__strchrnul
	.globl	libmin_strcspn
	.type	libmin_strcspn, @function
libmin_strcspn:
.LFB4:
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
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L15
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L16
.L15:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	__strchrnul
	subq	-56(%rbp), %rax
	jmp	.L24
.L16:
	leaq	-48(%rbp), %rax
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	libmin_memset@PLT
	jmp	.L18
.L20:
	addq	$1, -80(%rbp)
.L18:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L21
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
	jne	.L20
	jmp	.L21
.L23:
	addq	$1, -72(%rbp)
.L21:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L22
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
	je	.L23
.L22:
	movq	-72(%rbp), %rax
	subq	-56(%rbp), %rax
.L24:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L25
	call	__stack_chk_fail@PLT
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	libmin_strcspn, .-libmin_strcspn
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
