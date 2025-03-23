	.file	"problem26.c"
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
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$256, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movl	$2, -12(%rbp)
	jmp	.L2
.L4:
	movl	-20(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %ecx
	movq	-32(%rbp), %rdx
	movl	%ecx, (%rdx)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, (%rdx)
.L3:
	movl	-20(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L4
	addl	$1, -12(%rbp)
.L2:
	movl	-12(%rbp), %eax
	imull	%eax, %eax
	cmpl	%eax, -20(%rbp)
	jge	.L3
	cmpl	$1, -20(%rbp)
	jle	.L6
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %ecx
	movq	-32(%rbp), %rdx
	movl	%ecx, (%rdx)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, (%rdx)
.L6:
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
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
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
	movq	-40(%rbp), %rax
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
	cmpl	-28(%rbp), %eax
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
	.string	"problem26.c"
	.align 8
.LC1:
	.string	"issame(result, size, (int[]){2}, 1)"
	.align 8
.LC2:
	.string	"issame(result, size, (int[]){2, 2}, 2)"
	.align 8
.LC3:
	.string	"issame(result, size, (int[]){2, 2, 2}, 3)"
	.align 8
.LC4:
	.string	"issame(result, size, (int[]){3, 19}, 2)"
	.align 8
.LC5:
	.string	"issame(result, size, (int[]){3, 3, 19, 19}, 4)"
	.align 8
.LC6:
	.string	"issame(result, size, (int[]){3, 3, 3, 19, 19, 19}, 6)"
	.align 8
.LC7:
	.string	"issame(result, size, (int[]){3, 19, 19, 19}, 4)"
	.align 8
.LC8:
	.string	"issame(result, size, (int[]){2, 3, 3}, 3)"
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
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-44(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	func0
	movq	%rax, -40(%rbp)
	movl	$2, -32(%rbp)
	movl	-44(%rbp), %esi
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$38, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-44(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	func0
	movq	%rax, -40(%rbp)
	movl	$2, -32(%rbp)
	movl	$2, -28(%rbp)
	movl	-44(%rbp), %esi
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$42, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-44(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	func0
	movq	%rax, -40(%rbp)
	movl	$2, -32(%rbp)
	movl	$2, -28(%rbp)
	movl	$2, -24(%rbp)
	movl	-44(%rbp), %esi
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$3, %ecx
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
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-44(%rbp), %rax
	movq	%rax, %rsi
	movl	$57, %edi
	call	func0
	movq	%rax, -40(%rbp)
	movl	$3, -32(%rbp)
	movl	$19, -28(%rbp)
	movl	-44(%rbp), %esi
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$50, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-44(%rbp), %rax
	movq	%rax, %rsi
	movl	$3249, %edi
	call	func0
	movq	%rax, -40(%rbp)
	movl	$3, -32(%rbp)
	movl	$3, -28(%rbp)
	movl	$19, -24(%rbp)
	movl	$19, -20(%rbp)
	movl	-44(%rbp), %esi
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$54, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-44(%rbp), %rax
	movq	%rax, %rsi
	movl	$185193, %edi
	call	func0
	movq	%rax, -40(%rbp)
	movl	$3, -32(%rbp)
	movl	$3, -28(%rbp)
	movl	$3, -24(%rbp)
	movl	$19, -20(%rbp)
	movl	$19, -16(%rbp)
	movl	$19, -12(%rbp)
	movl	-44(%rbp), %esi
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$6, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$58, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-44(%rbp), %rax
	movq	%rax, %rsi
	movl	$20577, %edi
	call	func0
	movq	%rax, -40(%rbp)
	movl	$3, -32(%rbp)
	movl	$19, -28(%rbp)
	movl	$19, -24(%rbp)
	movl	$19, -20(%rbp)
	movl	-44(%rbp), %esi
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$62, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-44(%rbp), %rax
	movq	%rax, %rsi
	movl	$18, %edi
	call	func0
	movq	%rax, -40(%rbp)
	movl	$2, -32(%rbp)
	movl	$3, -28(%rbp)
	movl	$3, -24(%rbp)
	movl	-44(%rbp), %esi
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$3, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$66, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L24
	call	__stack_chk_fail@PLT
.L24:
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
