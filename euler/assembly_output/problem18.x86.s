	.file	"problem18.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
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
	subq	$240, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$75, -240(%rbp)
	movq	$0, -233(%rbp)
	movq	$16479, -225(%rbp)
	movq	$0, -218(%rbp)
	movq	$5386001, -210(%rbp)
	movq	$0, -203(%rbp)
	movq	$173482770, -195(%rbp)
	movq	$0, -188(%rbp)
	movabsq	$279966778388, %rax
	movq	%rax, -180(%rbp)
	movq	$0, -173(%rbp)
	movabsq	$37397540045075, %rax
	movq	%rax, -165(%rbp)
	movq	$0, -158(%rbp)
	movabsq	$18928123966718552, %rax
	movq	%rax, -150(%rbp)
	movq	$0, -143(%rbp)
	movabsq	$6649019518285005155, %rax
	movq	%rax, -135(%rbp)
	movq	$92, -128(%rbp)
	movabsq	$5066593918680443177, %rax
	movq	%rax, -120(%rbp)
	movq	$8518, -113(%rbp)
	movabsq	$1163371465539072041, %rax
	movq	%rax, -105(%rbp)
	movq	$1924624, -98(%rbp)
	movabsq	$3772656500320519989, %rax
	movq	%rax, -90(%rbp)
	movq	$238248244, -83(%rbp)
	movabsq	$5625358005095697222, %rax
	movq	%rax, -75(%rbp)
	movabsq	$245102815054, %rax
	movq	%rax, -68(%rbp)
	movabsq	$3124106233329764187, %rax
	movq	%rax, -60(%rbp)
	movabsq	$52901568461355, %rax
	movq	%rax, -53(%rbp)
	movabsq	$2180645302086943295, %rax
	movq	%rax, -45(%rbp)
	movabsq	$8770079563991326, %rax
	movq	%rax, -38(%rbp)
	movabsq	$7081357458935004676, %rax
	movq	%rax, -30(%rbp)
	movabsq	$1658516761753766242, %rax
	movq	%rax, -23(%rbp)
	leaq	-240(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	findmax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.type	findmax, @function
findmax:
.LFB1:
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
	movl	%edx, -32(%rbp)
	cmpl	$15, -28(%rbp)
	jne	.L5
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	(%rcx,%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	jmp	.L6
.L5:
	movl	-28(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-32(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	findmax
	movl	%eax, -8(%rbp)
	movl	-32(%rbp), %eax
	leal	1(%rax), %edx
	movl	-28(%rbp), %eax
	leal	1(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	findmax
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	(%rcx,%rax), %rdx
	movl	-32(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %ecx
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	addl	%ecx, %eax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	findmax, .-findmax
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
