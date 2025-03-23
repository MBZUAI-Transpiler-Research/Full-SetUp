	.file	"problem9.c"
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
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
	movl	$0, -12(%rbp)
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-8(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L3
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movl	-8(%rbp), %eax
	movl	%eax, (%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB1:
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
	movl	$0, -4(%rbp)
	jmp	.L5
.L8:
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
	je	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	addl	$1, -4(%rbp)
.L5:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L8
	movl	$1, %eax
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem9.c"
	.align 8
.LC1:
	.string	"issame(result, (const int[]){0, 1}, 2)"
	.align 8
.LC2:
	.string	"issame(result, (const int[]){3, 1}, 2)"
	.align 8
.LC3:
	.string	"issame(result, (const int[]){100, 0}, 2)"
	.align 8
.LC4:
	.string	"issame(result, (const int[]){3 + 5 + 7, 3 * 5 * 7}, 2)"
	.align 8
.LC5:
	.string	"issame(result, (const int[]){10, 10}, 2)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
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
	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	func0
	movl	$0, -20(%rbp)
	movl	$1, -16(%rbp)
	leaq	-20(%rbp), %rcx
	leaq	-56(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$29, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	movl	$1, -32(%rbp)
	movl	$1, -28(%rbp)
	movl	$1, -24(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movl	$3, -20(%rbp)
	movl	$1, -16(%rbp)
	leaq	-20(%rbp), %rcx
	leaq	-56(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	movl	$100, -48(%rbp)
	movl	$0, -44(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	func0
	movl	$100, -20(%rbp)
	movl	$0, -16(%rbp)
	leaq	-20(%rbp), %rcx
	leaq	-56(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$37, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	movl	$3, -20(%rbp)
	movl	$5, -16(%rbp)
	movl	$7, -12(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	-20(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movl	$15, -40(%rbp)
	movl	$105, -36(%rbp)
	leaq	-40(%rbp), %rcx
	leaq	-56(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$41, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	movl	$10, -60(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	-60(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	func0
	movl	$10, -40(%rbp)
	movl	$10, -36(%rbp)
	leaq	-40(%rbp), %rcx
	leaq	-56(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$45, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
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
