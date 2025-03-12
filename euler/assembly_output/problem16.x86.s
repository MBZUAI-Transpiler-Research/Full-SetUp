	.file	"problem16.c"
	.text
	.section	.rodata
.LC0:
	.string	"%u\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB26:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -60(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_init@PLT
	leaq	-32(%rbp), %rax
	movl	$1000, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	__gmpz_ui_pow_ui@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$10, %esi
	movl	$0, %edi
	call	__gmpz_get_str@PLT
	movq	%rax, -48(%rbp)
	leaq	-32(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	__gmpz_sizeinbase@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -56(%rbp)
	jmp	.L2
.L3:
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movl	-60(%rbp), %eax
	addl	%edx, %eax
	subl	$48, %eax
	movl	%eax, -60(%rbp)
	addq	$1, -56(%rbp)
.L2:
	movq	-56(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L3
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	main, .-main
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
