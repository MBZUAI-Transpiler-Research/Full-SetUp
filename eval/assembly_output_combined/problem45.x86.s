	.file	"problem45.c"
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
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movl	%esi, -72(%rbp)
	movq	%rdx, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -56(%rbp)
	jmp	.L2
.L3:
	movl	-68(%rbp), %eax
	cltd
	idivl	-72(%rbp)
	movl	%edx, %eax
	leal	48(%rax), %ecx
	movl	-56(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -56(%rbp)
	movl	%ecx, %edx
	cltq
	movb	%dl, -48(%rbp,%rax)
	movl	-68(%rbp), %eax
	cltd
	idivl	-72(%rbp)
	movl	%eax, -68(%rbp)
.L2:
	cmpl	$0, -68(%rbp)
	jg	.L3
	movl	$0, -52(%rbp)
	jmp	.L4
.L5:
	subl	$1, -56(%rbp)
	movl	-52(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -52(%rbp)
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movl	-56(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	movb	%al, (%rdx)
.L4:
	cmpl	$0, -56(%rbp)
	jg	.L5
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"22"
.LC1:
	.string	"problem45.c"
.LC2:
	.string	"strcmp(buffer, \"22\") == 0"
.LC3:
	.string	"100"
.LC4:
	.string	"strcmp(buffer, \"100\") == 0"
.LC5:
	.string	"11101010"
	.align 8
.LC6:
	.string	"strcmp(buffer, \"11101010\") == 0"
.LC7:
	.string	"10000"
.LC8:
	.string	"strcmp(buffer, \"10000\") == 0"
.LC9:
	.string	"1000"
.LC10:
	.string	"strcmp(buffer, \"1000\") == 0"
.LC11:
	.string	"111"
.LC12:
	.string	"strcmp(buffer, \"111\") == 0"
.LC13:
	.string	"%d"
.LC14:
	.string	"strcmp(buffer, expected) == 0"
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
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$8, %edi
	call	func0
	leaq	-96(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L8
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$29, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L8:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movl	$9, %edi
	call	func0
	leaq	-96(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L9
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L9:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	$2, %esi
	movl	$234, %edi
	call	func0
	leaq	-96(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	$2, %esi
	movl	$16, %edi
	call	func0
	leaq	-96(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$38, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	$2, %esi
	movl	$8, %edi
	call	func0
	leaq	-96(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$41, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	movl	$2, %esi
	movl	$7, %edi
	call	func0
	leaq	-96(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$44, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	movl	$2, -100(%rbp)
	jmp	.L14
.L16:
	movl	-100(%rbp), %edx
	leaq	-48(%rbp), %rax
	leaq	.LC13(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	-100(%rbp), %eax
	leal	1(%rax), %ecx
	leaq	-96(%rbp), %rdx
	movl	-100(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	func0
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$50, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	addl	$1, -100(%rbp)
.L14:
	cmpl	$7, -100(%rbp)
	jle	.L16
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
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
