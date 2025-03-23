	.file	"problem159.c"
	.text
	.section	.rodata
.LC0:
	.string	""
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
	subq	$320, %rsp
	movq	%rdi, -312(%rbp)
	movl	%esi, -316(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, -280(%rbp)
	movl	$0, -300(%rbp)
	movl	$0, -296(%rbp)
	jmp	.L2
.L8:
	movq	$0, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -292(%rbp)
	movl	$0, -288(%rbp)
	jmp	.L3
.L5:
	movl	-296(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-288(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	leaq	-272(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L4
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -284(%rbp)
	movl	-296(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-288(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-284(%rbp), %eax
	cltq
	movb	%dl, -272(%rbp,%rax)
	movl	-284(%rbp), %eax
	addl	$1, %eax
	cltq
	movb	$0, -272(%rbp,%rax)
	addl	$1, -292(%rbp)
.L4:
	addl	$1, -288(%rbp)
.L3:
	movl	-296(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-288(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L5
	movl	-292(%rbp), %eax
	cmpl	-300(%rbp), %eax
	jg	.L6
	movl	-292(%rbp), %eax
	cmpl	-300(%rbp), %eax
	jne	.L7
	movl	-296(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-280(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jns	.L7
.L6:
	movl	-296(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movl	-292(%rbp), %eax
	movl	%eax, -300(%rbp)
.L7:
	addl	$1, -296(%rbp)
.L2:
	movl	-296(%rbp), %eax
	cmpl	-316(%rbp), %eax
	jl	.L8
	movq	-280(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC1:
	.string	"name"
.LC2:
	.string	"of"
.LC3:
	.string	"string"
.LC4:
	.string	"problem159.c"
	.align 8
.LC5:
	.string	"strcmp(func0(words1, 3), \"string\") == 0"
.LC6:
	.string	"enam"
.LC7:
	.string	"game"
	.align 8
.LC8:
	.string	"strcmp(func0(words2, 3), \"enam\") == 0"
.LC9:
	.string	"aaaaaaa"
.LC10:
	.string	"bb"
.LC11:
	.string	"cc"
	.align 8
.LC12:
	.string	"strcmp(func0(words3, 3), \"aaaaaaa\") == 0"
.LC13:
	.string	"abc"
.LC14:
	.string	"cba"
	.align 8
.LC15:
	.string	"strcmp(func0(words4, 2), \"abc\") == 0"
.LC16:
	.string	"play"
.LC17:
	.string	"this"
.LC18:
	.string	"footbott"
	.align 8
.LC19:
	.string	"strcmp(func0(words5, 5), \"footbott\") == 0"
.LC20:
	.string	"we"
.LC21:
	.string	"are"
.LC22:
	.string	"gonna"
.LC23:
	.string	"rock"
	.align 8
.LC24:
	.string	"strcmp(func0(words6, 4), \"gonna\") == 0"
.LC25:
	.string	"a"
.LC26:
	.string	"mad"
.LC27:
	.string	"nation"
	.align 8
.LC28:
	.string	"strcmp(func0(words7, 5), \"nation\") == 0"
.LC29:
	.string	"is"
.LC30:
	.string	"prrk"
	.align 8
.LC31:
	.string	"strcmp(func0(words8, 4), \"this\") == 0"
.LC32:
	.string	"b"
	.align 8
.LC33:
	.string	"strcmp(func0(words9, 1), \"b\") == 0"
	.align 8
.LC34:
	.string	"strcmp(func0(words10, 3), \"play\") == 0"
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
	subq	$320, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rax
	movq	%rax, -288(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -280(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -272(%rbp)
	leaq	-288(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	leaq	.LC1(%rip), %rax
	movq	%rax, -256(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -248(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -240(%rbp)
	leaq	-256(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$36, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	leaq	.LC9(%rip), %rax
	movq	%rax, -224(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -216(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -208(%rbp)
	leaq	-224(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$39, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	leaq	.LC13(%rip), %rax
	movq	%rax, -304(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -296(%rbp)
	leaq	-304(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC13(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$42, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	leaq	.LC16(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC18(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	-96(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$45, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	leaq	.LC20(%rip), %rax
	movq	%rax, -160(%rbp)
	leaq	.LC21(%rip), %rax
	movq	%rax, -152(%rbp)
	leaq	.LC22(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC23(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	-160(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$48, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	leaq	.LC20(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC21(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC25(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC27(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	-48(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC27(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$51, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	leaq	.LC17(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC29(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC25(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC30(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	-128(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC17(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$54, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	leaq	.LC32(%rip), %rax
	movq	%rax, -312(%rbp)
	leaq	-312(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC32(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$57, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	leaq	.LC16(%rip), %rax
	movq	%rax, -192(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, -184(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, -176(%rbp)
	leaq	-192(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC16(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$60, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L23
	call	__stack_chk_fail@PLT
.L23:
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
