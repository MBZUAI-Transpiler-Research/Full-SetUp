	.file	"problem17.c"
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
	subq	$1072, %rsp
	movq	%rdi, -1064(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -1048(%rbp)
	leaq	-1040(%rbp), %rdx
	movl	$0, %eax
	movl	$128, %ecx
	movq	%rdx, %rdi
	rep stosq
	movl	$0, -1044(%rbp)
	jmp	.L2
.L4:
	movl	-1044(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1064(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movb	%al, -1049(%rbp)
	movsbl	-1049(%rbp), %eax
	cltq
	movl	-1040(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L3
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movzbl	-1049(%rbp), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L3
	movsbl	-1049(%rbp), %eax
	cltq
	movl	$1, -1040(%rbp,%rax,4)
	addl	$1, -1048(%rbp)
.L3:
	addl	$1, -1044(%rbp)
.L2:
	movl	-1044(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1064(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L4
	movl	-1048(%rbp), %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"problem17.c"
.LC2:
	.string	"func0(\"\") == 0"
.LC3:
	.string	"abcde"
.LC4:
	.string	"func0(\"abcde\") == 5"
.LC5:
	.string	"abcdecadeCADE"
.LC6:
	.string	"func0(\"abcdecadeCADE\") == 5"
.LC7:
	.string	"aaaaAAAAaaaa"
.LC8:
	.string	"func0(\"aaaaAAAAaaaa\") == 1"
.LC9:
	.string	"Jerry jERRY JeRRRY"
	.align 8
.LC10:
	.string	"func0(\"Jerry jERRY JeRRRY\") == 4"
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
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L8
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$26, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L8:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$5, %eax
	je	.L9
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$27, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L9:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$5, %eax
	je	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$29, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$4, %eax
	je	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$30, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	movl	$0, %eax
	popq	%rbp
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
