	.file	"problem27.c"
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
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movl	-92(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	movl	-92(%rbp), %eax
	cltq
	movl	$4, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, -16(%rbp)
	movl	-92(%rbp), %eax
	cltq
	movl	$4, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -64(%rbp)
	jmp	.L2
.L14:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L3
.L6:
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L4
	movl	$1, -60(%rbp)
	jmp	.L5
.L4:
	addl	$1, -56(%rbp)
.L3:
	movl	-56(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jl	.L6
.L5:
	cmpl	$0, -60(%rbp)
	jne	.L23
	movl	$0, -52(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L9
.L12:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L10
	movl	$1, -52(%rbp)
	jmp	.L11
.L10:
	addl	$1, -48(%rbp)
.L9:
	movl	-48(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L12
.L11:
	cmpl	$0, -52(%rbp)
	je	.L13
	movl	-72(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -72(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	jmp	.L8
.L13:
	movl	-76(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -76(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	jmp	.L8
.L23:
	nop
.L8:
	addl	$1, -64(%rbp)
.L2:
	movl	-64(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L14
	movl	$0, -44(%rbp)
	jmp	.L15
.L21:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L16
.L19:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jne	.L17
	movl	$1, -40(%rbp)
	jmp	.L18
.L17:
	addl	$1, -36(%rbp)
.L16:
	movl	-36(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jl	.L19
.L18:
	cmpl	$0, -40(%rbp)
	jne	.L20
	movl	-68(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -68(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-32(%rbp), %eax
	movl	%eax, (%rdx)
.L20:
	addl	$1, -44(%rbp)
.L15:
	movl	-44(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L21
	movq	-104(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
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
	je	.L25
	movl	$0, %eax
	jmp	.L26
.L25:
	movl	$0, -4(%rbp)
	jmp	.L27
.L29:
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
	je	.L28
	movl	$0, %eax
	jmp	.L26
.L28:
	addl	$1, -4(%rbp)
.L27:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L29
	movl	$1, %eax
.L26:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem27.c"
	.align 8
.LC1:
	.string	"issame(result, new_size, (int[]){}, 0)"
	.align 8
.LC2:
	.string	"issame(result, new_size, (int[]){1, 2, 3, 4}, 4)"
	.align 8
.LC3:
	.string	"issame(result, new_size, (int[]){1, 4, 5}, 3)"
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
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-92(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -88(%rbp)
	movl	-92(%rbp), %esi
	leaq	-48(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L31
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$77, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L31:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, -64(%rbp)
	movl	$2, -60(%rbp)
	movl	$3, -56(%rbp)
	movl	$4, -52(%rbp)
	leaq	-92(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -88(%rbp)
	movl	$1, -48(%rbp)
	movl	$2, -44(%rbp)
	movl	$3, -40(%rbp)
	movl	$4, -36(%rbp)
	movl	-92(%rbp), %esi
	leaq	-48(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L32
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$81, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L32:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, -48(%rbp)
	movl	$2, -44(%rbp)
	movl	$3, -40(%rbp)
	movl	$2, -36(%rbp)
	movl	$4, -32(%rbp)
	movl	$3, -28(%rbp)
	movl	$5, -24(%rbp)
	leaq	-92(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -88(%rbp)
	movl	$1, -76(%rbp)
	movl	$4, -72(%rbp)
	movl	$5, -68(%rbp)
	movl	-92(%rbp), %esi
	leaq	-76(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$3, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L33
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$85, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L33:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L35
	call	__stack_chk_fail@PLT
.L35:
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
