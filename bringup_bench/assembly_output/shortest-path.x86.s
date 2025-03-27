	.file	"shortest-path.c"
	.text
	.globl	dist
	.bss
	.align 32
	.type	dist, @object
	.size	dist, 256
dist:
	.zero	256
	.text
	.globl	floydWarshall
	.type	floydWarshall, @function
floydWarshall:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L2
.L5:
	movl	$0, -8(%rbp)
	jmp	.L3
.L4:
	movl	-12(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	dist(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
	addl	$1, -8(%rbp)
.L3:
	cmpl	$7, -8(%rbp)
	jle	.L4
	addl	$1, -12(%rbp)
.L2:
	cmpl	$7, -12(%rbp)
	jle	.L5
	movl	$0, -4(%rbp)
	jmp	.L6
.L12:
	movl	$0, -12(%rbp)
	jmp	.L7
.L11:
	movl	$0, -8(%rbp)
	jmp	.L8
.L10:
	movl	-4(%rbp), %eax
	cltq
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	dist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-8(%rbp), %eax
	cltq
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rcx
	leaq	dist(%rip), %rax
	movl	(%rcx,%rax), %eax
	leal	(%rdx,%rax), %ecx
	movl	-8(%rbp), %eax
	cltq
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	dist(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jge	.L9
	movl	-4(%rbp), %eax
	cltq
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	dist(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-8(%rbp), %eax
	cltq
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rcx
	leaq	dist(%rip), %rax
	movl	(%rcx,%rax), %eax
	leal	(%rdx,%rax), %ecx
	movl	-8(%rbp), %eax
	cltq
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	dist(%rip), %rax
	movl	%ecx, (%rdx,%rax)
.L9:
	addl	$1, -8(%rbp)
.L8:
	cmpl	$7, -8(%rbp)
	jle	.L10
	addl	$1, -12(%rbp)
.L7:
	cmpl	$7, -12(%rbp)
	jle	.L11
	addl	$1, -4(%rbp)
.L6:
	cmpl	$7, -4(%rbp)
	jle	.L12
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	floydWarshall, .-floydWarshall
	.section	.rodata
	.align 8
.LC0:
	.string	"Following matrix shows the shortest distances between every pair of vertices \n"
.LC1:
	.string	"INF"
.LC2:
	.string	"%7s"
.LC3:
	.string	"%7d"
.LC4:
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
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$0, -8(%rbp)
	jmp	.L14
.L19:
	movl	$0, -4(%rbp)
	jmp	.L15
.L18:
	movl	-8(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	cmpl	$99999, %eax
	jne	.L16
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	jmp	.L17
.L16:
	movl	-8(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
.L17:
	addl	$1, -4(%rbp)
.L15:
	cmpl	$7, -4(%rbp)
	jle	.L18
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -8(%rbp)
.L14:
	cmpl	$7, -8(%rbp)
	jle	.L19
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	printSolution, .-printSolution
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -272(%rbp)
	movl	$99999, -268(%rbp)
	movl	$4, -264(%rbp)
	movl	$99999, -260(%rbp)
	movl	$99999, -256(%rbp)
	movl	$7, -252(%rbp)
	movl	$99999, -248(%rbp)
	movl	$99999, -244(%rbp)
	movl	$99999, -240(%rbp)
	movl	$0, -236(%rbp)
	movl	$99999, -232(%rbp)
	movl	$99999, -228(%rbp)
	movl	$9, -224(%rbp)
	movl	$99999, -220(%rbp)
	movl	$99999, -216(%rbp)
	movl	$3, -212(%rbp)
	movl	$4, -208(%rbp)
	movl	$99999, -204(%rbp)
	movl	$0, -200(%rbp)
	movl	$3, -196(%rbp)
	movl	$99999, -192(%rbp)
	movl	$2, -188(%rbp)
	movl	$9, -184(%rbp)
	movl	$99999, -180(%rbp)
	movl	$99999, -176(%rbp)
	movl	$99999, -172(%rbp)
	movl	$3, -168(%rbp)
	movl	$0, -164(%rbp)
	movl	$3, -160(%rbp)
	movl	$99999, -156(%rbp)
	movl	$7, -152(%rbp)
	movl	$99999, -148(%rbp)
	movl	$99999, -144(%rbp)
	movl	$9, -140(%rbp)
	movl	$99999, -136(%rbp)
	movl	$3, -132(%rbp)
	movl	$0, -128(%rbp)
	movl	$99999, -124(%rbp)
	movl	$2, -120(%rbp)
	movl	$7, -116(%rbp)
	movl	$7, -112(%rbp)
	movl	$99999, -108(%rbp)
	movl	$2, -104(%rbp)
	movl	$99999, -100(%rbp)
	movl	$99999, -96(%rbp)
	movl	$0, -92(%rbp)
	movl	$8, -88(%rbp)
	movl	$99999, -84(%rbp)
	movl	$99999, -80(%rbp)
	movl	$99999, -76(%rbp)
	movl	$9, -72(%rbp)
	movl	$7, -68(%rbp)
	movl	$2, -64(%rbp)
	movl	$8, -60(%rbp)
	movl	$0, -56(%rbp)
	movl	$3, -52(%rbp)
	movl	$99999, -48(%rbp)
	movl	$3, -44(%rbp)
	movl	$99999, -40(%rbp)
	movl	$99999, -36(%rbp)
	movl	$7, -32(%rbp)
	movl	$99999, -28(%rbp)
	movl	$3, -24(%rbp)
	movl	$0, -20(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	floydWarshall
	leaq	dist(%rip), %rax
	movq	%rax, %rdi
	call	printSolution
	call	libmin_success@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
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
