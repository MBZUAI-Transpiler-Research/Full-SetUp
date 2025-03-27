	.file	"libmin_rand.c"
	.text
	.local	mt_initialized
	.comm	mt_initialized,4,4
	.local	mt
	.comm	mt,2500,32
	.data
	.align 4
	.type	mti, @object
	.size	mti, 4
mti:
	.long	625
	.text
	.globl	libmin_srand
	.type	libmin_srand, @function
libmin_srand:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$1, mt_initialized(%rip)
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
	.size	libmin_srand, .-libmin_srand
	.section	.rodata
	.align 8
.LC0:
	.string	"ERROR: rng is not initialized, call mysrand()!\n"
	.text
	.globl	libmin_rand
	.type	libmin_rand, @function
libmin_rand:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	mt_initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L5
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %edi
	call	libmin_fail@PLT
.L5:
	movl	mti(%rip), %eax
	cmpl	$623, %eax
	jle	.L6
	movl	mti(%rip), %eax
	cmpl	$625, %eax
	jne	.L7
	movl	$4357, %edi
	call	libmin_srand
.L7:
	movl	$0, -8(%rbp)
	jmp	.L8
.L9:
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
.L8:
	cmpl	$226, -8(%rbp)
	jle	.L9
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
.L10:
	cmpl	$622, -8(%rbp)
	jle	.L11
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
.L6:
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
	andl	$2147483647, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	libmin_rand, .-libmin_rand
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
