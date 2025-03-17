	.file	"problem59.c"
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
	movl	%ecx, -48(%rbp)
	movq	%r8, -64(%rbp)
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L2
.L11:
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L3
.L6:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L4
	movl	$1, -16(%rbp)
	jmp	.L5
.L4:
	addl	$1, -20(%rbp)
.L3:
	movl	-20(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L6
.L5:
	cmpl	$0, -16(%rbp)
	jne	.L7
	movl	$0, -24(%rbp)
	jmp	.L8
.L10:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L9
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-32(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -32(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	jmp	.L7
.L9:
	addl	$1, -24(%rbp)
.L8:
	movl	-24(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L10
.L7:
	addl	$1, -28(%rbp)
.L2:
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L11
	movl	$0, -28(%rbp)
	jmp	.L12
.L16:
	movl	$0, -24(%rbp)
	jmp	.L13
.L15:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L14
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-24(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, (%rdx)
.L14:
	addl	$1, -24(%rbp)
.L13:
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -24(%rbp)
	jl	.L15
	addl	$1, -28(%rbp)
.L12:
	movl	-32(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -28(%rbp)
	jl	.L16
	movq	-64(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem59.c"
.LC1:
	.string	"result1[i] == expected1[i]"
.LC2:
	.string	"result2[i] == expected2[i]"
.LC3:
	.string	"result3[i] == expected3[i]"
.LC4:
	.string	"size == 0"
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
	subq	$240, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -80(%rbp)
	movl	$4, -76(%rbp)
	movl	$3, -72(%rbp)
	movl	$34, -68(%rbp)
	movl	$653, -64(%rbp)
	movl	$2, -60(%rbp)
	movl	$5, -56(%rbp)
	movl	$5, -48(%rbp)
	movl	$7, -44(%rbp)
	movl	$1, -40(%rbp)
	movl	$5, -36(%rbp)
	movl	$9, -32(%rbp)
	movl	$653, -28(%rbp)
	movl	$121, -24(%rbp)
	movl	$1, -164(%rbp)
	movl	$5, -160(%rbp)
	movl	$653, -156(%rbp)
	leaq	-232(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rcx, %r8
	movl	$7, %ecx
	movl	$7, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -216(%rbp)
	movl	$0, -228(%rbp)
	jmp	.L19
.L21:
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-228(%rbp), %eax
	cltq
	movl	-164(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	je	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$54, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	addl	$1, -228(%rbp)
.L19:
	movl	-232(%rbp), %eax
	cmpl	%eax, -228(%rbp)
	jl	.L21
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$5, -128(%rbp)
	movl	$3, -124(%rbp)
	movl	$2, -120(%rbp)
	movl	$8, -116(%rbp)
	movl	$3, -180(%rbp)
	movl	$2, -176(%rbp)
	movl	$2, -172(%rbp)
	movl	$3, -168(%rbp)
	leaq	-232(%rbp), %rcx
	leaq	-180(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rcx, %r8
	movl	$2, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -208(%rbp)
	movl	$0, -224(%rbp)
	jmp	.L22
.L24:
	movl	-224(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-208(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-224(%rbp), %eax
	cltq
	movl	-172(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	je	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$63, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	addl	$1, -224(%rbp)
.L22:
	movl	-232(%rbp), %eax
	cmpl	%eax, -224(%rbp)
	jl	.L24
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$4, -112(%rbp)
	movl	$3, -108(%rbp)
	movl	$2, -104(%rbp)
	movl	$8, -100(%rbp)
	movl	$3, -152(%rbp)
	movl	$2, -148(%rbp)
	movl	$4, -144(%rbp)
	movl	$2, -140(%rbp)
	movl	$3, -136(%rbp)
	movl	$4, -132(%rbp)
	leaq	-232(%rbp), %rcx
	leaq	-152(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rcx, %r8
	movl	$3, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -200(%rbp)
	movl	$0, -220(%rbp)
	jmp	.L25
.L27:
	movl	-220(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-220(%rbp), %eax
	cltq
	movl	-140(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	je	.L26
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$72, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L26:
	addl	$1, -220(%rbp)
.L25:
	movl	-232(%rbp), %eax
	cmpl	%eax, -220(%rbp)
	jl	.L27
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$4, -96(%rbp)
	movl	$3, -92(%rbp)
	movl	$2, -88(%rbp)
	movl	$8, -84(%rbp)
	leaq	-232(%rbp), %rcx
	leaq	-184(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -192(%rbp)
	movl	-232(%rbp), %eax
	testl	%eax, %eax
	je	.L28
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$79, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L28:
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L30
	call	__stack_chk_fail@PLT
.L30:
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
