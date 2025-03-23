	.file	"cp.c"
	.text
	.section	.rodata
.LC0:
	.string	"--help"
	.align 8
.LC1:
	.string	"\nUsage: cpcmd source destination"
	.align 8
.LC2:
	.string	"\nError opening file %s errno = %d\n"
.LC3:
	.string	"\nError in writing data to "
.LC4:
	.string	"\nError in closing file"
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
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$48, %rsp
	movl	%edi, -8228(%rbp)
	movq	%rsi, -8240(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$3, -8228(%rbp)
	jne	.L2
	movq	-8240(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L3
.L2:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L3:
	movq	-8240(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -8220(%rbp)
	cmpl	$-1, -8220(%rbp)
	jne	.L4
	call	__errno_location@PLT
	movl	(%rax), %edx
	movq	-8240(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L4:
	movq	-8240(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movl	$438, %edx
	movl	$577, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -8216(%rbp)
	cmpl	$-1, -8216(%rbp)
	jne	.L6
	call	__errno_location@PLT
	movl	(%rax), %edx
	movq	-8240(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L7:
	movl	-8212(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-8208(%rbp), %rcx
	movl	-8216(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	write@PLT
	movl	-8212(%rbp), %edx
	movslq	%edx, %rdx
	cmpq	%rdx, %rax
	je	.L6
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L6:
	leaq	-8208(%rbp), %rcx
	movl	-8220(%rbp), %eax
	movl	$1024, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	movl	%eax, -8212(%rbp)
	cmpl	$0, -8212(%rbp)
	jg	.L7
	movl	-8220(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	cmpl	$-1, %eax
	jne	.L8
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L8:
	movl	-8216(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	cmpl	$-1, %eax
	jne	.L9
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L9:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
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
