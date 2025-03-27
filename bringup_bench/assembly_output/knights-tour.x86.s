	.file	"knights-tour.c"
	.text
	.globl	isSafe
	.type	isSafe, @function
isSafe:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L2
	cmpl	$4, -4(%rbp)
	jg	.L2
	cmpl	$0, -8(%rbp)
	js	.L2
	cmpl	$4, -8(%rbp)
	jg	.L2
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	cmpl	$-1, %eax
	jne	.L2
	movl	$1, %eax
	jmp	.L4
.L2:
	movl	$0, %eax
.L4:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	isSafe, .-isSafe
	.section	.rodata
.LC0:
	.string	" %2d "
.LC1:
	.string	"\n"
	.text
	.globl	printSolution
	.type	printSolution, @function
printSolution:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L6
.L9:
	movl	$0, -4(%rbp)
	jmp	.L7
.L8:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -4(%rbp)
.L7:
	cmpl	$4, -4(%rbp)
	jle	.L8
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -8(%rbp)
.L6:
	cmpl	$4, -8(%rbp)
	jle	.L9
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	printSolution, .-printSolution
	.section	.rodata
.LC2:
	.string	"Solution does not exist"
	.text
	.globl	solveKT
	.type	solveKT, @function
solveKT:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -184(%rbp)
	jmp	.L11
.L14:
	movl	$0, -180(%rbp)
	jmp	.L12
.L13:
	movl	-180(%rbp), %eax
	movslq	%eax, %rcx
	movl	-184(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movl	$-1, -112(%rbp,%rax,4)
	addl	$1, -180(%rbp)
.L12:
	cmpl	$4, -180(%rbp)
	jle	.L13
	addl	$1, -184(%rbp)
.L11:
	cmpl	$4, -184(%rbp)
	jle	.L14
	movl	$2, -176(%rbp)
	movl	$1, -172(%rbp)
	movl	$-1, -168(%rbp)
	movl	$-2, -164(%rbp)
	movl	$-2, -160(%rbp)
	movl	$-1, -156(%rbp)
	movl	$1, -152(%rbp)
	movl	$2, -148(%rbp)
	movl	$1, -144(%rbp)
	movl	$2, -140(%rbp)
	movl	$2, -136(%rbp)
	movl	$1, -132(%rbp)
	movl	$-1, -128(%rbp)
	movl	$-2, -124(%rbp)
	movl	$-2, -120(%rbp)
	movl	$-1, -116(%rbp)
	movl	$0, -112(%rbp)
	leaq	-144(%rbp), %rcx
	leaq	-176(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	solveKTUtil
	testl	%eax, %eax
	jne	.L15
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$0, %eax
	jmp	.L17
.L15:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	printSolution
	movl	$1, %eax
.L17:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	solveKT, .-solveKT
	.globl	solveKTUtil
	.type	solveKTUtil, @function
solveKTUtil:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	cmpl	$25, -28(%rbp)
	jne	.L20
	movl	$1, %eax
	jmp	.L21
.L20:
	movl	$0, -12(%rbp)
	jmp	.L22
.L25:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rdx
	movl	-4(%rbp), %ecx
	movl	-8(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	isSafe
	testl	%eax, %eax
	je	.L23
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	movl	-28(%rbp), %edx
	movl	%edx, (%rcx,%rax,4)
	movl	-28(%rbp), %eax
	leal	1(%rax), %edi
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %eax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%edi, %edx
	movl	%eax, %edi
	call	solveKTUtil
	cmpl	$1, %eax
	jne	.L24
	movl	$1, %eax
	jmp	.L21
.L24:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movl	$-1, (%rdx,%rax,4)
.L23:
	addl	$1, -12(%rbp)
.L22:
	cmpl	$7, -12(%rbp)
	jle	.L25
	movl	$0, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	solveKTUtil, .-solveKTUtil
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	solveKT
	call	libmin_success@PLT
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
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
