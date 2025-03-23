	.file	"problem6.c"
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L2
	movl	-28(%rbp), %eax
	addl	%eax, %eax
	leal	-1(%rax), %edx
	jmp	.L3
.L2:
	movl	$0, %edx
.L3:
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L4
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
.L4:
	movl	$1, -16(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L5
.L6:
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-32(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	addl	$1, -16(%rbp)
.L5:
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L6
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	movl	$0, -4(%rbp)
	jmp	.L11
.L13:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L12
	movl	$0, %eax
	jmp	.L10
.L12:
	addl	$1, -4(%rbp)
.L11:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L13
	movl	$1, %eax
.L10:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem6.c"
	.align 8
.LC1:
	.string	"issame(result_empty, (const int[]){}, out_size, 0)"
	.align 8
.LC2:
	.string	"issame(result1, result_expected1, out_size, 7)"
	.align 8
.LC3:
	.string	"issame(result2, result_expected2, out_size, 5)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-140(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rcx
	movl	$7, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -136(%rbp)
	movl	-140(%rbp), %edx
	leaq	-48(%rbp), %rsi
	movq	-136(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$5, -48(%rbp)
	movl	$8, -44(%rbp)
	movl	$6, -40(%rbp)
	movl	$8, -36(%rbp)
	movl	$3, -32(%rbp)
	movl	$8, -28(%rbp)
	movl	$2, -24(%rbp)
	movl	$5, -96(%rbp)
	movl	$6, -92(%rbp)
	movl	$3, -88(%rbp)
	movl	$2, -84(%rbp)
	leaq	-140(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -128(%rbp)
	movl	-140(%rbp), %edx
	leaq	-48(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	$7, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$40, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$2, -80(%rbp)
	movl	$2, -76(%rbp)
	movl	$2, -72(%rbp)
	movl	$2, -68(%rbp)
	movl	$2, -64(%rbp)
	movl	$2, -108(%rbp)
	movl	$2, -104(%rbp)
	movl	$2, -100(%rbp)
	leaq	-140(%rbp), %rdx
	leaq	-108(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -120(%rbp)
	movl	-140(%rbp), %edx
	leaq	-80(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	$5, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$46, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
