	.file	"problem149.c"
	.text
	.section	.rodata
.LC0:
	.string	"Mercury"
.LC1:
	.string	"Venus"
.LC2:
	.string	"Earth"
.LC3:
	.string	"Mars"
.LC4:
	.string	"Jupiter"
.LC5:
	.string	"Saturn"
.LC6:
	.string	"Uranus"
.LC7:
	.string	"Neptune"
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
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$-1, -104(%rbp)
	movl	$-1, -100(%rbp)
	movl	$0, -96(%rbp)
	jmp	.L2
.L5:
	movl	-96(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L3
	movl	-96(%rbp), %eax
	movl	%eax, -104(%rbp)
.L3:
	movl	-96(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rax
	movq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L4
	movl	-96(%rbp), %eax
	movl	%eax, -100(%rbp)
.L4:
	addl	$1, -96(%rbp)
.L2:
	cmpl	$7, -96(%rbp)
	jle	.L5
	cmpl	$-1, -104(%rbp)
	je	.L6
	cmpl	$-1, -100(%rbp)
	je	.L6
	movl	-104(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jne	.L7
.L6:
	movq	-136(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, %eax
	jmp	.L13
.L7:
	movl	-104(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jle	.L9
	movl	-104(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, -100(%rbp)
.L9:
	movl	-100(%rbp), %eax
	subl	-104(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-136(%rbp), %rax
	movl	%edx, (%rax)
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L10
	movq	-136(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, %eax
	jmp	.L13
.L10:
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -88(%rbp)
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.L11
.L12:
	movl	-96(%rbp), %eax
	subl	-104(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movl	-96(%rbp), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rax
	movq	%rax, (%rdx)
	addl	$1, -96(%rbp)
.L11:
	movl	-96(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L12
	movq	-88(%rbp), %rax
.L13:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
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
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movl	$0, -4(%rbp)
	jmp	.L18
.L20:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L19
	movl	$0, %eax
	jmp	.L17
.L19:
	addl	$1, -4(%rbp)
.L18:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L20
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC8:
	.string	"problem149.c"
	.align 8
.LC9:
	.string	"issame(result, test1, size, 2)"
	.align 8
.LC10:
	.string	"issame(result, test2, size, 1)"
	.align 8
.LC11:
	.string	"issame(result, test3, size, 5)"
	.align 8
.LC12:
	.string	"issame(result, test4, size, 5)"
.LC13:
	.string	"size == 0 && result == NULL"
.LC14:
	.string	"Makemake"
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
	subq	$144, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC5(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	-132(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC7(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, -128(%rbp)
	movl	-132(%rbp), %edx
	leaq	-112(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$50, %edx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	-132(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, -128(%rbp)
	movl	-132(%rbp), %edx
	leaq	-120(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$55, %edx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	-132(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, -128(%rbp)
	movl	-132(%rbp), %edx
	leaq	-96(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	$5, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L24
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$60, %edx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L24:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	-132(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, -128(%rbp)
	movl	-132(%rbp), %edx
	leaq	-48(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	$5, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L25
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$65, %edx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L25:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-132(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, -128(%rbp)
	movl	-132(%rbp), %eax
	testl	%eax, %eax
	jne	.L26
	cmpq	$0, -128(%rbp)
	je	.L34
.L26:
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$69, %edx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L34:
	leaq	-132(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, -128(%rbp)
	movl	-132(%rbp), %eax
	testl	%eax, %eax
	jne	.L28
	cmpq	$0, -128(%rbp)
	je	.L35
.L28:
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$72, %edx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L35:
	leaq	-132(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, -128(%rbp)
	movl	-132(%rbp), %eax
	testl	%eax, %eax
	jne	.L30
	cmpq	$0, -128(%rbp)
	je	.L36
.L30:
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$75, %edx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L36:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L33
	call	__stack_chk_fail@PLT
.L33:
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
