	.file	"problem53.c"
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
	movl	%edx, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L5:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jg	.L3
	movl	$0, %eax
	jmp	.L4
.L3:
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L5
	movl	$1, %eax
.L4:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem53.c"
.LC1:
	.string	"func0(list1, 4, 100)"
.LC2:
	.string	"!func0(list2, 4, 5)"
.LC3:
	.string	"func0(list3, 4, 21)"
.LC4:
	.string	"func0(list4, 4, 22)"
.LC5:
	.string	"func0(list5, 4, 11)"
.LC6:
	.string	"!func0(list6, 4, 10)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -112(%rbp)
	movl	$2, -108(%rbp)
	movl	$4, -104(%rbp)
	movl	$10, -100(%rbp)
	leaq	-112(%rbp), %rax
	movl	$100, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L7
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$17, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L7:
	movl	$1, -96(%rbp)
	movl	$20, -92(%rbp)
	movl	$4, -88(%rbp)
	movl	$10, -84(%rbp)
	leaq	-96(%rbp), %rax
	movl	$5, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L8
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$20, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L8:
	movl	$1, -80(%rbp)
	movl	$20, -76(%rbp)
	movl	$4, -72(%rbp)
	movl	$10, -68(%rbp)
	leaq	-80(%rbp), %rax
	movl	$21, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L9
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$23, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L9:
	movl	$1, -64(%rbp)
	movl	$20, -60(%rbp)
	movl	$4, -56(%rbp)
	movl	$10, -52(%rbp)
	leaq	-64(%rbp), %rax
	movl	$22, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$26, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	movl	$1, -48(%rbp)
	movl	$8, -44(%rbp)
	movl	$4, -40(%rbp)
	movl	$10, -36(%rbp)
	leaq	-48(%rbp), %rax
	movl	$11, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	testb	%al, %al
	jne	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$29, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	movl	$1, -32(%rbp)
	movl	$8, -28(%rbp)
	movl	$4, -24(%rbp)
	movl	$10, -20(%rbp)
	leaq	-32(%rbp), %rax
	movl	$10, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	xorl	$1, %eax
	testb	%al, %al
	jne	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
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
