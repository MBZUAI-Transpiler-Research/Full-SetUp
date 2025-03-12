	.file	"problem47.c"
	.text
	.section	.rodata
.LC0:
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
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$2, -8(%rbp)
	jmp	.L2
.L7:
	movl	$0, -4(%rbp)
	jmp	.L3
.L5:
	addl	$1, -4(%rbp)
.L3:
	cmpl	$3, -4(%rbp)
	ja	.L4
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edi
	call	distinct_factor_count
	cmpl	$4, %eax
	je	.L5
.L4:
	addl	$1, -8(%rbp)
.L2:
	cmpl	$999999, -8(%rbp)
	ja	.L6
	cmpl	$3, -4(%rbp)
	jbe	.L7
.L6:
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.type	distinct_factor_count, @function
distinct_factor_count:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$0, -8(%rbp)
	movl	$2, -4(%rbp)
	jmp	.L10
.L14:
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	-4(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L11
	addl	$1, -8(%rbp)
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	-4(%rbp)
	movl	%eax, -20(%rbp)
	jmp	.L12
.L13:
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	-4(%rbp)
	movl	%eax, -20(%rbp)
.L12:
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	-4(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L13
.L11:
	addl	$1, -4(%rbp)
.L10:
	movl	-4(%rbp), %eax
	cmpl	%eax, -20(%rbp)
	jnb	.L14
	movl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	distinct_factor_count, .-distinct_factor_count
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
