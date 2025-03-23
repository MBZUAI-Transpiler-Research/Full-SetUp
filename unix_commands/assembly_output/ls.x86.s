	.file	"ls.c"
	.text
	.section	.rodata
.LC0:
	.string	"."
.LC1:
	.string	"-R"
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
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$1, -36(%rbp)
	jne	.L2
	leaq	-16(%rbp), %rax
	movq	alphasort@GOTPCREL(%rip), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	scandir@PLT
	movl	%eax, -20(%rbp)
	jmp	.L3
.L4:
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$19, %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L3:
	movl	-20(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -20(%rbp)
	testl	%eax, %eax
	jne	.L4
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L5
.L2:
	cmpl	$2, -36(%rbp)
	je	.L6
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	leaq	.LC1(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L5
.L6:
	movl	$0, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	recursive
.L5:
	movl	$0, %edi
	call	exit@PLT
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
.LC2:
	.string	".."
.LC3:
	.string	"%s"
.LC4:
	.string	""
.LC5:
	.string	"%*s[[%s]]\n"
.LC6:
	.string	"%*s-> %s\n"
	.text
	.globl	recursive
	.type	recursive, @function
recursive:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1072, %rsp
	movq	%rdi, -1064(%rbp)
	movl	%esi, -1068(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-1064(%rbp), %rax
	movq	%rax, %rdi
	call	opendir@PLT
	movq	%rax, -1056(%rbp)
	cmpq	$0, -1056(%rbp)
	je	.L18
	jmp	.L11
.L16:
	movq	-1048(%rbp), %rax
	movzbl	18(%rax), %eax
	cmpb	$4, %al
	jne	.L12
	movq	-1048(%rbp), %rax
	addq	$19, %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L19
	movq	-1048(%rbp), %rax
	addq	$19, %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L19
	movq	-1048(%rbp), %rax
	leaq	19(%rax), %rdx
	leaq	-1040(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movq	-1048(%rbp), %rax
	leaq	19(%rax), %rdx
	movl	-1068(%rbp), %eax
	movq	%rdx, %rcx
	leaq	.LC4(%rip), %rdx
	movl	%eax, %esi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-1068(%rbp), %eax
	leal	3(%rax), %edx
	leaq	-1040(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	recursive
	jmp	.L11
.L12:
	movq	-1048(%rbp), %rax
	leaq	19(%rax), %rdx
	movl	-1068(%rbp), %eax
	movq	%rdx, %rcx
	leaq	.LC4(%rip), %rdx
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L11
.L19:
	nop
.L11:
	movq	-1056(%rbp), %rax
	movq	%rax, %rdi
	call	readdir@PLT
	movq	%rax, -1048(%rbp)
	cmpq	$0, -1048(%rbp)
	jne	.L16
	movq	-1056(%rbp), %rax
	movq	%rax, %rdi
	call	closedir@PLT
	jmp	.L8
.L18:
	nop
.L8:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	recursive, .-recursive
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
