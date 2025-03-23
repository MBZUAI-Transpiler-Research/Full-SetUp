	.file	"problem25.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
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
	movl	$1, -52(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_init@PLT
	movl	$1, -52(%rbp)
.L4:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	__gmpz_fib_ui@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$10, %esi
	movl	$0, %edi
	call	__gmpz_get_str@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	cmpq	$1000, -40(%rbp)
	jne	.L2
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L6
	jmp	.L7
.L2:
	addl	$1, -52(%rbp)
	jmp	.L4
.L7:
	call	__stack_chk_fail@PLT
.L6:
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
