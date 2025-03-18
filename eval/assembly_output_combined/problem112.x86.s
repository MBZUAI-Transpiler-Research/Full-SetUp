	.file	"problem112.c"
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
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-112(%rbp), %rdx
	movl	$0, %eax
	movl	$13, %ecx
	movq	%rdx, %rdi
	rep stosq
	movl	$0, -136(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	$0, -132(%rbp)
	jmp	.L2
.L4:
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L3
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$97, %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
	leal	1(%rax), %edx
	movl	-124(%rbp), %eax
	cltq
	movl	%edx, -112(%rbp,%rax,4)
	movl	-124(%rbp), %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
	cmpl	%eax, -136(%rbp)
	jge	.L3
	movl	-124(%rbp), %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
	movl	%eax, -136(%rbp)
.L3:
	addq	$1, -120(%rbp)
.L2:
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L4
	movl	$0, -128(%rbp)
	jmp	.L5
.L7:
	movl	-128(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-160(%rbp), %rax
	addq	%rax, %rdx
	movl	-128(%rbp), %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
	movl	%eax, (%rdx)
	movl	-128(%rbp), %eax
	cltq
	movl	-112(%rbp,%rax,4), %eax
	cmpl	%eax, -136(%rbp)
	jne	.L6
	movl	-128(%rbp), %eax
	leal	97(%rax), %ecx
	movl	-132(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -132(%rbp)
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L6:
	addl	$1, -128(%rbp)
.L5:
	cmpl	$25, -128(%rbp)
	jle	.L7
	movq	-168(%rbp), %rax
	movl	-136(%rbp), %edx
	movl	%edx, (%rax)
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
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
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	%r9d, -40(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movl	$0, -8(%rbp)
	jmp	.L12
.L14:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	salq	$2, %rax
	leaq	-388(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	salq	$2, %rax
	leaq	-388(%rax), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L13
	movl	$0, %eax
	jmp	.L11
.L13:
	addl	$1, -8(%rbp)
.L12:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L14
	movl	$0, -4(%rbp)
	jmp	.L15
.L17:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	salq	$2, %rax
	leaq	-388(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	salq	$2, %rax
	leaq	-388(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L16
	movl	$0, %eax
	jmp	.L11
.L16:
	addl	$1, -4(%rbp)
.L15:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L17
	movl	$1, %eax
.L11:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"a b b a"
.LC1:
	.string	"ab"
.LC2:
	.string	"problem112.c"
	.align 8
.LC3:
	.string	"issame(counts1, letters1, max_count1, counts2, \"ab\", 2)"
.LC4:
	.string	"a b c a b"
.LC5:
	.string	"a b c d g"
.LC6:
	.string	"abcdg"
	.align 8
.LC7:
	.string	"issame(counts1, letters1, max_count1, counts2, \"abcdg\", 1)"
.LC8:
	.string	"r t g"
.LC9:
	.string	"rtg"
	.align 8
.LC10:
	.string	"issame(counts1, letters1, max_count1, counts2, \"rtg\", 1)"
.LC11:
	.string	"b b b b a"
.LC12:
	.string	"b"
	.align 8
.LC13:
	.string	"issame(counts1, letters1, max_count1, counts2, \"b\", 4)"
.LC14:
	.string	"a"
	.align 8
.LC15:
	.string	"issame(counts1, letters1, max_count1, counts2, \"a\", 1)"
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
	subq	$288, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-48(%rbp), %rcx
	leaq	-276(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	func0
	leaq	-160(%rbp), %rax
	movl	$104, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$2, -160(%rbp)
	movl	$2, -156(%rbp)
	movl	-276(%rbp), %edx
	leaq	-160(%rbp), %rcx
	leaq	-48(%rbp), %rsi
	leaq	-272(%rbp), %rax
	movl	$2, %r9d
	leaq	.LC1(%rip), %r8
	movq	%rax, %rdi
	call	issame
	testb	%al, %al
	jne	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$59, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	leaq	-48(%rbp), %rcx
	leaq	-276(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	func0
	leaq	-160(%rbp), %rax
	movl	$104, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$2, -160(%rbp)
	movl	$2, -156(%rbp)
	movl	-276(%rbp), %edx
	leaq	-160(%rbp), %rcx
	leaq	-48(%rbp), %rsi
	leaq	-272(%rbp), %rax
	movl	$2, %r9d
	leaq	.LC1(%rip), %r8
	movq	%rax, %rdi
	call	issame
	testb	%al, %al
	jne	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$65, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	leaq	-48(%rbp), %rcx
	leaq	-276(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	func0
	leaq	-160(%rbp), %rax
	movl	$104, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, -136(%rbp)
	movl	-136(%rbp), %eax
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -156(%rbp)
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-276(%rbp), %edx
	leaq	-160(%rbp), %rcx
	leaq	-48(%rbp), %rsi
	leaq	-272(%rbp), %rax
	movl	$1, %r9d
	leaq	.LC6(%rip), %r8
	movq	%rax, %rdi
	call	issame
	testb	%al, %al
	jne	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$70, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	leaq	-48(%rbp), %rcx
	leaq	-276(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	func0
	leaq	-160(%rbp), %rax
	movl	$104, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, -136(%rbp)
	movl	-136(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-276(%rbp), %edx
	leaq	-160(%rbp), %rcx
	leaq	-48(%rbp), %rsi
	leaq	-272(%rbp), %rax
	movl	$1, %r9d
	leaq	.LC9(%rip), %r8
	movq	%rax, %rdi
	call	issame
	testb	%al, %al
	jne	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$75, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	leaq	-48(%rbp), %rcx
	leaq	-276(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	func0
	leaq	-160(%rbp), %rax
	movl	$104, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$4, -156(%rbp)
	movl	-276(%rbp), %edx
	leaq	-160(%rbp), %rcx
	leaq	-48(%rbp), %rsi
	leaq	-272(%rbp), %rax
	movl	$4, %r9d
	leaq	.LC12(%rip), %r8
	movq	%rax, %rdi
	call	issame
	testb	%al, %al
	jne	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$80, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	leaq	-48(%rbp), %rcx
	leaq	-276(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	func0
	leaq	-160(%rbp), %rax
	movl	$104, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, -136(%rbp)
	movl	-136(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-276(%rbp), %edx
	leaq	-160(%rbp), %rcx
	leaq	-48(%rbp), %rsi
	leaq	-272(%rbp), %rax
	movl	$1, %r9d
	leaq	.LC9(%rip), %r8
	movq	%rax, %rdi
	call	issame
	testb	%al, %al
	jne	.L24
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$85, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L24:
	leaq	-48(%rbp), %rcx
	leaq	-276(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	func0
	leaq	-160(%rbp), %rax
	movl	$104, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, -160(%rbp)
	movl	-276(%rbp), %edx
	leaq	-160(%rbp), %rcx
	leaq	-48(%rbp), %rsi
	leaq	-272(%rbp), %rax
	movl	$1, %r9d
	leaq	.LC14(%rip), %r8
	movq	%rax, %rdi
	call	issame
	testb	%al, %al
	jne	.L25
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$90, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L25:
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
.LFE2:
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
