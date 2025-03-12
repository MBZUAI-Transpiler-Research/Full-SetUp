	.file	"problem34.c"
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
	movl	$0, -44(%rbp)
	movl	$3, -48(%rbp)
	jmp	.L2
.L6:
	movl	$0, -36(%rbp)
	movl	-48(%rbp), %edx
	leaq	-32(%rbp), %rax
	movl	%edx, %ecx
	leaq	.LC0(%rip), %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	movl	$0, -40(%rbp)
	jmp	.L3
.L4:
	movl	-40(%rbp), %eax
	movzbl	-32(%rbp,%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	movl	%eax, %edi
	call	fact
	addl	%eax, -36(%rbp)
	addl	$1, -40(%rbp)
.L3:
	movl	-40(%rbp), %eax
	movzbl	-32(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L4
	movl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.L5
	movl	-36(%rbp), %eax
	addl	%eax, -44(%rbp)
.L5:
	addl	$1, -48(%rbp)
.L2:
	cmpl	$99999, -48(%rbp)
	jbe	.L6
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	fact
	.type	fact, @function
fact:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L10
.L11:
	movl	-20(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -20(%rbp)
	movl	-4(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -4(%rbp)
.L10:
	cmpl	$0, -20(%rbp)
	jne	.L11
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	fact, .-fact
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
