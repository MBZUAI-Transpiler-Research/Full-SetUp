	.file	"problem101.c"
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
	movl	-20(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, -12(%rbp)
	jmp	.L2
.L3:
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	addl	$2, %edx
	movl	%edx, (%rax)
	addl	$1, -12(%rbp)
.L2:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L3
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem101.c"
.LC1:
	.string	"result[i] == test1[i]"
.LC2:
	.string	"result[i] == test2[i]"
.LC3:
	.string	"result[i] == test3[i]"
.LC4:
	.string	"result[i] == test4[i]"
.LC5:
	.string	"result[i] == test5[i]"
	.text
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
	subq	$176, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$3, -140(%rbp)
	movl	$5, -136(%rbp)
	movl	$7, -132(%rbp)
	movl	$4, -128(%rbp)
	movl	$6, -124(%rbp)
	movl	$8, -120(%rbp)
	movl	$10, -116(%rbp)
	movl	$5, -112(%rbp)
	movl	$7, -108(%rbp)
	movl	$9, -104(%rbp)
	movl	$11, -100(%rbp)
	movl	$13, -96(%rbp)
	movl	$6, -80(%rbp)
	movl	$8, -76(%rbp)
	movl	$10, -72(%rbp)
	movl	$12, -68(%rbp)
	movl	$14, -64(%rbp)
	movl	$16, -60(%rbp)
	movl	$8, -48(%rbp)
	movl	$10, -44(%rbp)
	movl	$12, -40(%rbp)
	movl	$14, -36(%rbp)
	movl	$16, -32(%rbp)
	movl	$18, -28(%rbp)
	movl	$20, -24(%rbp)
	movl	$22, -20(%rbp)
	movl	$3, %edi
	call	func0
	movq	%rax, -152(%rbp)
	movl	$0, -172(%rbp)
	jmp	.L6
.L8:
	movl	-172(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-172(%rbp), %eax
	cltq
	movl	-140(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	je	.L7
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$27, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L7:
	addl	$1, -172(%rbp)
.L6:
	cmpl	$2, -172(%rbp)
	jle	.L8
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$4, %edi
	call	func0
	movq	%rax, -152(%rbp)
	movl	$0, -168(%rbp)
	jmp	.L9
.L11:
	movl	-168(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-168(%rbp), %eax
	cltq
	movl	-128(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	je	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$31, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	addl	$1, -168(%rbp)
.L9:
	cmpl	$3, -168(%rbp)
	jle	.L11
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$5, %edi
	call	func0
	movq	%rax, -152(%rbp)
	movl	$0, -164(%rbp)
	jmp	.L12
.L14:
	movl	-164(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-164(%rbp), %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	je	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	addl	$1, -164(%rbp)
.L12:
	cmpl	$4, -164(%rbp)
	jle	.L14
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$6, %edi
	call	func0
	movq	%rax, -152(%rbp)
	movl	$0, -160(%rbp)
	jmp	.L15
.L17:
	movl	-160(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-160(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	je	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$39, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	addl	$1, -160(%rbp)
.L15:
	cmpl	$5, -160(%rbp)
	jle	.L17
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$8, %edi
	call	func0
	movq	%rax, -152(%rbp)
	movl	$0, -156(%rbp)
	jmp	.L18
.L20:
	movl	-156(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-156(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	je	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$43, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	addl	$1, -156(%rbp)
.L18:
	cmpl	$7, -156(%rbp)
	jle	.L20
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
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
.LFE7:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
