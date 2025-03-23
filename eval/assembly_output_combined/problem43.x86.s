	.file	"problem43.c"
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
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	addl	$1, %edx
	movl	%edx, (%rax)
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L3
	nop
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
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.L5
	movl	$0, %eax
	jmp	.L6
.L5:
	movl	$0, -4(%rbp)
	jmp	.L7
.L9:
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
	je	.L8
	movl	$0, %eax
	jmp	.L6
.L8:
	addl	$1, -4(%rbp)
.L7:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L9
	movl	$1, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem43.c"
.LC1:
	.string	"issame(list1, 0, result1, 0)"
.LC2:
	.string	"issame(list2, 3, result2, 3)"
.LC3:
	.string	"issame(list3, 9, result3, 9)"
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
	addq	$-128, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-128(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-124(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$25, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	movl	$3, -120(%rbp)
	movl	$2, -116(%rbp)
	movl	$1, -112(%rbp)
	movl	$4, -108(%rbp)
	movl	$3, -104(%rbp)
	movl	$2, -100(%rbp)
	leaq	-120(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-108(%rbp), %rdx
	leaq	-120(%rbp), %rax
	movl	$3, %ecx
	movl	$3, %esi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$30, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	movl	$5, -96(%rbp)
	movl	$2, -92(%rbp)
	movl	$5, -88(%rbp)
	movl	$2, -84(%rbp)
	movl	$3, -80(%rbp)
	movl	$3, -76(%rbp)
	movl	$9, -72(%rbp)
	movl	$0, -68(%rbp)
	movl	$123, -64(%rbp)
	movl	$6, -48(%rbp)
	movl	$3, -44(%rbp)
	movl	$6, -40(%rbp)
	movl	$3, -36(%rbp)
	movl	$4, -32(%rbp)
	movl	$4, -28(%rbp)
	movl	$10, -24(%rbp)
	movl	$1, -20(%rbp)
	movl	$124, -16(%rbp)
	leaq	-96(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$9, %ecx
	movl	$9, %esi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
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
