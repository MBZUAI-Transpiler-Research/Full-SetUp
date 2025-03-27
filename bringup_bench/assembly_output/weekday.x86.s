	.file	"weekday.c"
	.text
	.globl	dayOfWeek
	.type	dayOfWeek, @function
dayOfWeek:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movl	%esi, -72(%rbp)
	movl	%edx, -76(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -64(%rbp)
	movl	$3, -60(%rbp)
	movl	$2, -56(%rbp)
	movl	$5, -52(%rbp)
	movl	$0, -48(%rbp)
	movl	$3, -44(%rbp)
	movl	$5, -40(%rbp)
	movl	$1, -36(%rbp)
	movl	$4, -32(%rbp)
	movl	$6, -28(%rbp)
	movl	$2, -24(%rbp)
	movl	$4, -20(%rbp)
	cmpl	$2, -72(%rbp)
	setle	%al
	movzbl	%al, %eax
	subl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	-68(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1374389535, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$5, %edx
	sarl	$31, %eax
	subl	%edx, %eax
	addl	%eax, %ecx
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1374389535, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$7, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	addl	%ecx, %edx
	movl	-72(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-64(%rbp,%rax,4), %eax
	addl	%eax, %edx
	movl	-76(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	imulq	$-1840700269, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	%edx, %ecx
	sarl	$2, %ecx
	cltd
	subl	%edx, %ecx
	movl	%ecx, %edx
	sall	$3, %edx
	subl	%ecx, %edx
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	dayOfWeek, .-dayOfWeek
	.section	.rodata
.LC0:
	.string	"Sunday"
.LC1:
	.string	"Monday"
.LC2:
	.string	"Tuesday"
.LC3:
	.string	"Wednesday"
.LC4:
	.string	"Thursday"
.LC5:
	.string	"Friday"
.LC6:
	.string	"Saturday"
.LC7:
	.string	"%02d/%02d/%04d was a `%s'\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	$20, %edx
	movl	$2, %esi
	movl	$2024, %edi
	call	dayOfWeek
	cltq
	movq	-64(%rbp,%rax,8), %rax
	movq	%rax, %r8
	movl	$2024, %ecx
	movl	$20, %edx
	movl	$2, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$5, %edx
	movl	$4, %esi
	movl	$1994, %edi
	call	dayOfWeek
	cltq
	movq	-64(%rbp,%rax,8), %rax
	movq	%rax, %r8
	movl	$1994, %ecx
	movl	$5, %edx
	movl	$4, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %edx
	movl	$1, %esi
	movl	$1975, %edi
	call	dayOfWeek
	cltq
	movq	-64(%rbp,%rax,8), %rax
	movq	%rax, %r8
	movl	$1975, %ecx
	movl	$1, %edx
	movl	$1, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$7, %edx
	movl	$2, %esi
	movl	$1964, %edi
	call	dayOfWeek
	cltq
	movq	-64(%rbp,%rax,8), %rax
	movq	%rax, %r8
	movl	$1964, %ecx
	movl	$7, %edx
	movl	$2, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
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
