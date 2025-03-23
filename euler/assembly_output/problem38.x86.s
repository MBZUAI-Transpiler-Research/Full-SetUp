	.file	"problem38.c"
	.text
	.section	.rodata
.LC0:
	.string	"%u"
.LC1:
	.string	"%u\n"
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
	movl	$0, -60(%rbp)
	movl	$1, -56(%rbp)
	jmp	.L2
.L7:
	movq	$0, -44(%rbp)
	movw	$0, -36(%rbp)
	movl	-56(%rbp), %edx
	leaq	-44(%rbp), %rax
	movl	%edx, %ecx
	leaq	.LC0(%rip), %rdx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	movl	$2, -52(%rbp)
.L6:
	movq	$0, -34(%rbp)
	movw	$0, -26(%rbp)
	movl	-56(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %edx
	leaq	-34(%rbp), %rax
	movl	%edx, %ecx
	leaq	.LC0(%rip), %rdx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	leaq	-44(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	leaq	-34(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rbx, %rax
	cmpq	$9, %rax
	jbe	.L3
	leaq	-44(%rbp), %rax
	movq	%rax, %rdi
	call	is_pandigital
	testl	%eax, %eax
	jne	.L4
	jmp	.L5
.L3:
	leaq	-44(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	$10, %edx
	subq	%rax, %rdx
	leaq	-34(%rbp), %rcx
	leaq	-44(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncat@PLT
	addl	$1, -52(%rbp)
	jmp	.L6
.L4:
	leaq	-44(%rbp), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoul@PLT
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jbe	.L5
	movl	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
.L5:
	addl	$1, -56(%rbp)
.L2:
	cmpl	$9999, -56(%rbp)
	jbe	.L7
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
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
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -32(%rbp)
	cmpq	$9, -32(%rbp)
	je	.L13
	movl	$0, %eax
	jmp	.L18
.L13:
	movq	-56(%rbp), %rcx
	leaq	-18(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movq	-32(%rbp), %rsi
	leaq	-18(%rbp), %rax
	leaq	compare(%rip), %rdx
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	qsort@PLT
	movq	$0, -40(%rbp)
	jmp	.L15
.L17:
	leaq	-18(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	movq	-40(%rbp), %rdx
	addq	$49, %rdx
	cmpq	%rdx, %rax
	je	.L16
	movl	$0, %eax
	jmp	.L18
.L16:
	addq	$1, -40(%rbp)
.L15:
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L17
	movl	$1, %eax
.L18:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
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
