	.file	"problem157.c"
	.text
	.section	.rodata
.LC0:
	.string	"m"
.LC1:
	.string	"cm"
.LC2:
	.string	"d"
.LC3:
	.string	"cd"
.LC4:
	.string	"c"
.LC5:
	.string	"xc"
.LC6:
	.string	"l"
.LC7:
	.string	"xl"
.LC8:
	.string	"x"
.LC9:
	.string	"ix"
.LC10:
	.string	"v"
.LC11:
	.string	"iv"
.LC12:
	.string	"i"
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
	subq	$208, %rsp
	movl	%edi, -196(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC12(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	$1000, -176(%rbp)
	movl	$900, -172(%rbp)
	movl	$500, -168(%rbp)
	movl	$400, -164(%rbp)
	movl	$100, -160(%rbp)
	movl	$90, -156(%rbp)
	movl	$50, -152(%rbp)
	movl	$40, -148(%rbp)
	movl	$10, -144(%rbp)
	movl	$9, -140(%rbp)
	movl	$5, -136(%rbp)
	movl	$4, -132(%rbp)
	movl	$1, -128(%rbp)
	movl	$0, -180(%rbp)
	movq	-208(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L2
.L4:
	movl	-180(%rbp), %eax
	cltq
	movq	-112(%rbp,%rax,8), %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	movl	-180(%rbp), %eax
	cltq
	movl	-176(%rbp,%rax,4), %eax
	subl	%eax, -196(%rbp)
.L3:
	movl	-180(%rbp), %eax
	cltq
	movl	-176(%rbp,%rax,4), %eax
	cmpl	%eax, -196(%rbp)
	jge	.L4
	cmpl	$0, -196(%rbp)
	jle	.L2
	addl	$1, -180(%rbp)
.L2:
	cmpl	$0, -196(%rbp)
	jg	.L3
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC13:
	.string	"xix"
.LC14:
	.string	"problem157.c"
.LC15:
	.string	"strcmp(result, \"xix\") == 0"
.LC16:
	.string	"clii"
.LC17:
	.string	"strcmp(result, \"clii\") == 0"
.LC18:
	.string	"ccli"
.LC19:
	.string	"strcmp(result, \"ccli\") == 0"
.LC20:
	.string	"cdxxvi"
.LC21:
	.string	"strcmp(result, \"cdxxvi\") == 0"
.LC22:
	.string	"strcmp(result, \"d\") == 0"
.LC23:
	.string	"strcmp(result, \"i\") == 0"
.LC24:
	.string	"strcmp(result, \"iv\") == 0"
.LC25:
	.string	"xliii"
.LC26:
	.string	"strcmp(result, \"xliii\") == 0"
.LC27:
	.string	"strcmp(result, \"xc\") == 0"
.LC28:
	.string	"xciv"
.LC29:
	.string	"strcmp(result, \"xciv\") == 0"
.LC30:
	.string	"dxxxii"
.LC31:
	.string	"strcmp(result, \"dxxxii\") == 0"
.LC32:
	.string	"strcmp(result, \"cm\") == 0"
.LC33:
	.string	"cmxciv"
.LC34:
	.string	"strcmp(result, \"cmxciv\") == 0"
.LC35:
	.string	"strcmp(result, \"m\") == 0"
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
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$19, %edi
	call	func0
	leaq	-80(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L9
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L9:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$152, %edi
	call	func0
	leaq	-80(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$31, %edx
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$251, %edi
	call	func0
	leaq	-80(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$426, %edi
	call	func0
	leaq	-80(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$37, %edx
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$500, %edi
	call	func0
	leaq	-80(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$40, %edx
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	func0
	leaq	-80(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$43, %edx
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	func0
	leaq	-80(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$46, %edx
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$43, %edi
	call	func0
	leaq	-80(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$49, %edx
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$90, %edi
	call	func0
	leaq	-80(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$52, %edx
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$94, %edi
	call	func0
	leaq	-80(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$55, %edx
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$532, %edi
	call	func0
	leaq	-80(%rbp), %rax
	leaq	.LC30(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$58, %edx
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$900, %edi
	call	func0
	leaq	-80(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$61, %edx
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$994, %edi
	call	func0
	leaq	-80(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$64, %edx
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$1000, %edi
	call	func0
	leaq	-80(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$67, %edx
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L24
	call	__stack_chk_fail@PLT
.L24:
	leave
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
