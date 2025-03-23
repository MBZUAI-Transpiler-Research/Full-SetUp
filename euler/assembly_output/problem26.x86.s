	.file	"problem26.c"
	.text
	.section	.rodata
.LC0:
	.string	"%u\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB20:
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
	movl	$0, -64(%rbp)
	movl	$0, -60(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_init@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_init@PLT
	movl	$2, -56(%rbp)
	jmp	.L2
.L8:
	movl	$1, -52(%rbp)
	movl	-56(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L11
	movl	-56(%rbp), %ecx
	movl	%ecx, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	shrl	$2, %eax
	movl	%eax, %edx
	sall	$2, %edx
	addl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	testl	%eax, %eax
	je	.L11
	leaq	-48(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	__gmpz_set_ui@PLT
	jmp	.L6
.L7:
	addl	$1, -52(%rbp)
	leaq	-48(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__gmpz_mul_ui@PLT
.L6:
	movl	-56(%rbp), %edx
	leaq	-48(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__gmpz_fdiv_r_ui@PLT
	leaq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	__gmpz_cmp_ui@PLT
	testl	%eax, %eax
	jne	.L7
	movl	-52(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jbe	.L5
	movl	-52(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.L5
.L11:
	nop
.L5:
	addl	$1, -56(%rbp)
.L2:
	cmpl	$999, -56(%rbp)
	jbe	.L8
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
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
