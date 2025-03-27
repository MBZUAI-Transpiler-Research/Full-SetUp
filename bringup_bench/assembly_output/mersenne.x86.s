	.file	"mersenne.c"
	.text
	.local	mt
	.comm	mt,2496,32
	.data
	.align 4
	.type	mti, @object
	.size	mti, 4
mti:
	.long	625
	.text
	.globl	sgenrand
	.type	sgenrand, @function
sgenrand:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-20(%rbp), %eax
	movw	$0, %ax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	mt(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-20(%rbp), %eax
	imull	$69069, %eax, %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	mt(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-20(%rbp), %edx
	shrl	$16, %edx
	orl	%edx, %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	mt(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-20(%rbp), %eax
	imull	$69069, %eax, %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	addl	$1, -4(%rbp)
.L2:
	cmpl	$623, -4(%rbp)
	jle	.L3
	movl	$624, mti(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	sgenrand, .-sgenrand
	.globl	lsgenrand
	.type	lsgenrand, @function
lsgenrand:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L5
.L6:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	mt(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
	addl	$1, -4(%rbp)
.L5:
	cmpl	$623, -4(%rbp)
	jle	.L6
	movl	$624, mti(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	lsgenrand, .-lsgenrand
	.globl	genrand
	.type	genrand, @function
genrand:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	mti(%rip), %eax
	cmpl	$623, %eax
	jle	.L8
	movl	mti(%rip), %eax
	cmpl	$625, %eax
	jne	.L9
	movl	$4357, %edi
	call	sgenrand
.L9:
	movl	$0, -8(%rbp)
	jmp	.L10
.L11:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	mt(%rip), %rax
	movl	(%rdx,%rax), %eax
	andl	$-2147483648, %eax
	movl	%eax, %ecx
	movl	-8(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	mt(%rip), %rax
	movl	(%rdx,%rax), %eax
	andl	$2147483647, %eax
	orl	%ecx, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	$397, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	mt(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-4(%rbp), %edx
	shrl	%edx
	xorl	%edx, %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	mag01.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	xorl	%eax, %ecx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	mt(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	addl	$1, -8(%rbp)
.L10:
	cmpl	$226, -8(%rbp)
	jle	.L11
	jmp	.L12
.L13:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	mt(%rip), %rax
	movl	(%rdx,%rax), %eax
	andl	$-2147483648, %eax
	movl	%eax, %ecx
	movl	-8(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	mt(%rip), %rax
	movl	(%rdx,%rax), %eax
	andl	$2147483647, %eax
	orl	%ecx, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	subl	$227, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	mt(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-4(%rbp), %edx
	shrl	%edx
	xorl	%edx, %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	mag01.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	xorl	%eax, %ecx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	mt(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	addl	$1, -8(%rbp)
.L12:
	cmpl	$622, -8(%rbp)
	jle	.L13
	movl	2492+mt(%rip), %eax
	andl	$-2147483648, %eax
	movl	%eax, %edx
	movl	mt(%rip), %eax
	andl	$2147483647, %eax
	orl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	1584+mt(%rip), %eax
	movl	-4(%rbp), %edx
	shrl	%edx
	xorl	%edx, %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	mag01.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	xorl	%ecx, %eax
	movl	%eax, 2492+mt(%rip)
	movl	$0, mti(%rip)
.L8:
	movl	mti(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, mti(%rip)
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	mt(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$11, %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$7, %eax
	andl	$-1658038656, %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$15, %eax
	andl	$-272236544, %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$18, %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	genrand, .-genrand
	.section	.rodata
.LC0:
	.string	"%10u "
.LC1:
	.string	"\n"
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
	subq	$16, %rsp
	movl	$10000, -4(%rbp)
	movl	$4357, %edi
	call	sgenrand
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L16
.L18:
	movl	-12(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1374389535, %rax, %rax
	shrq	$32, %rax
	sarl	$5, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$100, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	testl	%eax, %eax
	jne	.L17
	call	genrand
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -8(%rbp)
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	jne	.L17
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
.L17:
	addl	$1, -12(%rbp)
.L16:
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L18
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.data
	.align 8
	.type	mag01.0, @object
	.size	mag01.0, 8
mag01.0:
	.long	0
	.long	-1727483681
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
