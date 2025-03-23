	.file	"problem105.c"
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
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, -20(%rbp)
	jmp	.L2
.L9:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	movb	$0, -21(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.L4
	movb	$1, -21(%rbp)
	jmp	.L4
.L7:
	movl	-16(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L5
	movb	$1, -21(%rbp)
.L5:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$2, %edx
	sarl	$31, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, -16(%rbp)
.L4:
	cmpl	$0, -16(%rbp)
	jle	.L6
	movzbl	-21(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L7
.L6:
	movzbl	-21(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L8
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
.L8:
	addl	$1, -20(%rbp)
.L2:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L9
	movl	$0, -12(%rbp)
	jmp	.L10
.L14:
	movl	$0, -8(%rbp)
	jmp	.L11
.L13:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movl	-8(%rbp), %eax
	cltq
	addq	$1, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L12
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	$1, %rax
	salq	$2, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	$1, %rax
	salq	$2, %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
.L12:
	addl	$1, -8(%rbp)
.L11:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	subl	-12(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -8(%rbp)
	jl	.L13
	addl	$1, -12(%rbp)
.L10:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jl	.L14
	nop
	nop
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
	je	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movl	$0, -4(%rbp)
	jmp	.L18
.L20:
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
	je	.L19
	movl	$0, %eax
	jmp	.L17
.L19:
	addl	$1, -4(%rbp)
.L18:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L20
	movl	$1, %eax
.L17:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem105.c"
	.align 8
.LC1:
	.string	"issame(out1, out1_size, expected1, 3)"
	.align 8
.LC2:
	.string	"issame(out2, out2_size, NULL, 0)"
	.align 8
.LC3:
	.string	"issame(out3, out3_size, expected3, 2)"
	.align 8
.LC4:
	.string	"issame(out4, out4_size, expected4, 2)"
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
	subq	$160, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$15, -64(%rbp)
	movl	$33, -60(%rbp)
	movl	$1422, -56(%rbp)
	movl	$1, -52(%rbp)
	movl	$1, -88(%rbp)
	movl	$15, -84(%rbp)
	movl	$33, -80(%rbp)
	leaq	-152(%rbp), %rcx
	leaq	-136(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movl	-152(%rbp), %esi
	movq	-136(%rbp), %rax
	leaq	-88(%rbp), %rdx
	movl	$3, %ecx
	movq	%rax, %rdi
	call	issame
	testb	%al, %al
	jne	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$58, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$152, -48(%rbp)
	movl	$323, -44(%rbp)
	movl	$1422, -40(%rbp)
	movl	$10, -36(%rbp)
	leaq	-148(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movl	-148(%rbp), %esi
	movq	-128(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	issame
	testb	%al, %al
	jne	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$65, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$12345, -32(%rbp)
	movl	$2033, -28(%rbp)
	movl	$111, -24(%rbp)
	movl	$151, -20(%rbp)
	movl	$111, -104(%rbp)
	movl	$151, -100(%rbp)
	leaq	-144(%rbp), %rcx
	leaq	-120(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movl	-144(%rbp), %esi
	movq	-120(%rbp), %rax
	leaq	-104(%rbp), %rdx
	movl	$2, %ecx
	movq	%rax, %rdi
	call	issame
	testb	%al, %al
	jne	.L24
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$73, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L24:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$135, -76(%rbp)
	movl	$103, -72(%rbp)
	movl	$31, -68(%rbp)
	movl	$31, -96(%rbp)
	movl	$135, -92(%rbp)
	leaq	-140(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	leaq	-76(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movl	-140(%rbp), %esi
	movq	-112(%rbp), %rax
	leaq	-96(%rbp), %rdx
	movl	$2, %ecx
	movq	%rax, %rdi
	call	issame
	testb	%al, %al
	jne	.L25
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$81, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L25:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
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
