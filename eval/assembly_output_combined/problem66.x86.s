	.file	"problem66.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d"
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
	subq	$96, %rsp
	movl	%edi, -84(%rbp)
	movl	%esi, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-84(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	xs.1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	xs.1(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.L2
	movl	$0, -72(%rbp)
	jmp	.L3
.L4:
	movl	-72(%rbp), %eax
	cltq
	leaq	xs.1(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movb	%al, -73(%rbp)
	movl	-68(%rbp), %eax
	subl	$1, %eax
	subl	-72(%rbp), %eax
	cltq
	leaq	xs.1(%rip), %rdx
	movzbl	(%rax,%rdx), %edx
	movl	-72(%rbp), %eax
	cltq
	leaq	xs.1(%rip), %rcx
	movb	%dl, (%rax,%rcx)
	movl	-68(%rbp), %eax
	subl	$1, %eax
	subl	-72(%rbp), %eax
	cltq
	leaq	xs.1(%rip), %rcx
	movzbl	-73(%rbp), %edx
	movb	%dl, (%rax,%rcx)
	addl	$1, -72(%rbp)
.L3:
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	%eax, -72(%rbp)
	jl	.L4
	jmp	.L5
.L2:
	movl	-68(%rbp), %eax
	cltq
	movl	-88(%rbp), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movq	%rax, %rcx
	leaq	xs.1(%rip), %rax
	leaq	(%rcx,%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movl	-88(%rbp), %eax
	cltq
	movb	$0, -64(%rbp,%rax)
	movl	-68(%rbp), %eax
	subl	-88(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-64(%rbp), %rax
	leaq	xs.1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncat@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	xs.1(%rip), %rax
	movq	%rax, %rdi
	call	strcpy@PLT
.L5:
	leaq	xs.1(%rip), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC1:
	.string	"001"
.LC2:
	.string	"problem66.c"
	.align 8
.LC3:
	.string	"strcmp(func0(100, 2), \"001\") == 0"
.LC4:
	.string	"12"
	.align 8
.LC5:
	.string	"strcmp(func0(12, 2), \"12\") == 0"
.LC6:
	.string	"79"
	.align 8
.LC7:
	.string	"strcmp(func0(97, 8), \"79\") == 0"
.LC8:
	.string	"21"
	.align 8
.LC9:
	.string	"strcmp(func0(12, 1), \"21\") == 0"
.LC10:
	.string	"11"
	.align 8
.LC11:
	.string	"strcmp(func0(11, 101), \"11\") == 0"
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
	movl	$2, %esi
	movl	$100, %edi
	call	func0
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L9
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L9:
	movl	$2, %esi
	movl	$12, %edi
	call	func0
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	movl	$8, %esi
	movl	$97, %edi
	call	func0
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	movl	$1, %esi
	movl	$12, %edi
	call	func0
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$36, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	movl	$101, %esi
	movl	$11, %edi
	call	func0
	movq	%rax, %rdx
	leaq	.LC10(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$37, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.local	xs.1
	.comm	xs.1,50,32
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
