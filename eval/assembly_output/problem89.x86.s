	.file	"problem89.c"
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
	movq	-64(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, (%rax)
	cmpl	$0, -44(%rbp)
	jne	.L2
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L1
.L2:
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L4
	movl	$1, %edi
	call	exit@PLT
.L4:
	movl	$0, -24(%rbp)
	jmp	.L5
.L6:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	addl	$1, -24(%rbp)
.L5:
	movl	-24(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L6
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L7
.L12:
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.L8
.L11:
	cmpl	$0, -12(%rbp)
	je	.L9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L10
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	jmp	.L10
.L9:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L10
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, (%rdx)
.L10:
	addl	$1, -16(%rbp)
.L8:
	movl	-16(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L11
	addl	$1, -20(%rbp)
.L7:
	movl	-44(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -20(%rbp)
	jl	.L12
.L1:
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
	je	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movl	$0, -4(%rbp)
	jmp	.L16
.L18:
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
	je	.L17
	movl	$0, %eax
	jmp	.L15
.L17:
	addl	$1, -4(%rbp)
.L16:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L18
	movl	$1, %eax
.L15:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem89.c"
	.align 8
.LC1:
	.string	"issame(result, result_size, (int[]){}, 0)"
	.align 8
.LC2:
	.string	"issame(result, result_size, (int[]){5}, 1)"
	.align 8
.LC3:
	.string	"issame(result, result_size, (int[]){0, 1, 2, 3, 4, 5}, 6)"
	.align 8
.LC4:
	.string	"issame(result, result_size, (int[]){6, 5, 4, 3, 2, 1, 0}, 7)"
	.align 8
.LC5:
	.string	"issame(result, result_size, (int[]){1, 2}, 2)"
	.align 8
.LC6:
	.string	"issame(result, result_size, (int[]){0, 11, 15, 32, 42, 87}, 6)"
	.align 8
.LC7:
	.string	"issame(result, result_size, (int[]){23, 21, 14, 11}, 4)"
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
	subq	$192, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-188(%rbp), %rcx
	leaq	-184(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	func0
	movl	-188(%rbp), %esi
	movq	-184(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movl	$0, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$59, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$5, -172(%rbp)
	leaq	-188(%rbp), %rcx
	leaq	-184(%rbp), %rdx
	leaq	-172(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	func0
	movl	$5, -48(%rbp)
	movl	-188(%rbp), %esi
	movq	-184(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$63, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$2, -144(%rbp)
	movl	$4, -140(%rbp)
	movl	$3, -136(%rbp)
	movl	$0, -132(%rbp)
	movl	$1, -128(%rbp)
	movl	$5, -124(%rbp)
	leaq	-188(%rbp), %rcx
	leaq	-184(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	movl	$0, -48(%rbp)
	movl	$1, -44(%rbp)
	movl	$2, -40(%rbp)
	movl	$3, -36(%rbp)
	movl	$4, -32(%rbp)
	movl	$5, -28(%rbp)
	movl	-188(%rbp), %esi
	movq	-184(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movl	$6, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$67, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$2, -80(%rbp)
	movl	$4, -76(%rbp)
	movl	$3, -72(%rbp)
	movl	$0, -68(%rbp)
	movl	$1, -64(%rbp)
	movl	$5, -60(%rbp)
	movl	$6, -56(%rbp)
	leaq	-188(%rbp), %rcx
	leaq	-184(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	func0
	movl	$6, -48(%rbp)
	movl	$5, -44(%rbp)
	movl	$4, -40(%rbp)
	movl	$3, -36(%rbp)
	movl	$2, -32(%rbp)
	movl	$1, -28(%rbp)
	movl	$0, -24(%rbp)
	movl	-188(%rbp), %esi
	movq	-184(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movl	$7, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$71, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$2, -168(%rbp)
	movl	$1, -164(%rbp)
	leaq	-188(%rbp), %rcx
	leaq	-184(%rbp), %rdx
	leaq	-168(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	func0
	movl	$1, -48(%rbp)
	movl	$2, -44(%rbp)
	movl	-188(%rbp), %esi
	movq	-184(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movl	$2, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L24
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$75, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L24:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$15, -112(%rbp)
	movl	$42, -108(%rbp)
	movl	$87, -104(%rbp)
	movl	$32, -100(%rbp)
	movl	$11, -96(%rbp)
	movl	$0, -92(%rbp)
	leaq	-188(%rbp), %rcx
	leaq	-184(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	movl	$0, -48(%rbp)
	movl	$11, -44(%rbp)
	movl	$15, -40(%rbp)
	movl	$32, -36(%rbp)
	movl	$42, -32(%rbp)
	movl	$87, -28(%rbp)
	movl	-188(%rbp), %esi
	movq	-184(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movl	$6, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L25
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$79, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L25:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$21, -160(%rbp)
	movl	$14, -156(%rbp)
	movl	$23, -152(%rbp)
	movl	$11, -148(%rbp)
	leaq	-188(%rbp), %rcx
	leaq	-184(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movl	$23, -48(%rbp)
	movl	$21, -44(%rbp)
	movl	$14, -40(%rbp)
	movl	$11, -36(%rbp)
	movl	-188(%rbp), %esi
	movq	-184(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movl	$4, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L26
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$83, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L26:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L28
	call	__stack_chk_fail@PLT
.L28:
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
