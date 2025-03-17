	.file	"problem133.c"
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
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L2
.L9:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$91, %al
	jne	.L3
	addl	$1, -28(%rbp)
.L3:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$93, %al
	jne	.L4
	subl	$1, -28(%rbp)
.L4:
	cmpl	$0, -28(%rbp)
	jns	.L5
	movl	$0, -28(%rbp)
.L5:
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.L6
	movl	-28(%rbp), %eax
	movl	%eax, -24(%rbp)
.L6:
	movl	-24(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -28(%rbp)
	jge	.L7
	movl	$1, %eax
	jmp	.L8
.L7:
	addl	$1, -20(%rbp)
.L2:
	movl	-20(%rbp), %eax
	movslq	%eax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	jb	.L9
	movl	$0, %eax
.L8:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"[[]]"
.LC1:
	.string	"problem133.c"
.LC2:
	.string	"func0(\"[[]]\") == 1"
.LC3:
	.string	"[]]]]]]][[[[[]"
.LC4:
	.string	"func0(\"[]]]]]]][[[[[]\") == 0"
.LC5:
	.string	"[][]"
.LC6:
	.string	"func0(\"[][]\") == 0"
.LC7:
	.string	"[]"
.LC8:
	.string	"func0(\"[]\") == 0"
.LC9:
	.string	"[[[[]]]]"
.LC10:
	.string	"func0(\"[[[[]]]]\") == 1"
.LC11:
	.string	"[]]]]]]]]]]"
.LC12:
	.string	"func0(\"[]]]]]]]]]]\") == 0"
.LC13:
	.string	"[][][[]]"
.LC14:
	.string	"func0(\"[][][[]]\") == 1"
.LC15:
	.string	"[[]"
.LC16:
	.string	"func0(\"[[]\") == 0"
.LC17:
	.string	"[]]"
.LC18:
	.string	"func0(\"[]]\") == 0"
.LC19:
	.string	"[[]][["
.LC20:
	.string	"func0(\"[[]][[\") == 1"
.LC21:
	.string	"[[][]]"
.LC22:
	.string	"func0(\"[[][]]\") == 1"
.LC23:
	.string	""
.LC24:
	.string	"func0(\"\") == 0"
.LC25:
	.string	"[[[[[[[["
.LC26:
	.string	"func0(\"[[[[[[[[\") == 0"
.LC27:
	.string	"]]]]]]]]"
.LC28:
	.string	"func0(\"]]]]]]]]\") == 0"
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
	cmpl	$1, %eax
	je	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$22, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$23, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$24, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$25, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$26, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$27, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$29, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$30, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$31, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$1, %eax
	je	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L24
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L24:
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
