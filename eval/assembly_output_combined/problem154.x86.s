	.file	"problem154.c"
	.text
	.section	.rodata
.LC0:
	.string	"%s.%s"
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
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movl	$-1000, -32(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L2
.L8:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L3
.L6:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -33(%rbp)
	cmpb	$64, -33(%rbp)
	jle	.L4
	cmpb	$90, -33(%rbp)
	jg	.L4
	addl	$1, -24(%rbp)
.L4:
	cmpb	$96, -33(%rbp)
	jle	.L5
	cmpb	$122, -33(%rbp)
	jg	.L5
	subl	$1, -24(%rbp)
.L5:
	addl	$1, -20(%rbp)
.L3:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L6
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	.L7
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.L7:
	addl	$1, -28(%rbp)
.L2:
	movl	-28(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L8
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-80(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC1:
	.string	"tEN"
.LC2:
	.string	"niNE"
.LC3:
	.string	"eIGHt8OKe"
.LC4:
	.string	"Watashi"
.LC5:
	.string	"Watashi.eIGHt8OKe"
.LC6:
	.string	"problem154.c"
	.align 8
.LC7:
	.string	"strcmp(result, \"Watashi.eIGHt8OKe\") == 0"
.LC8:
	.string	"nani"
.LC9:
	.string	"NazeDa"
.LC10:
	.string	"YEs.WeCaNe"
.LC11:
	.string	"32145tggg"
.LC12:
	.string	"Boku123"
.LC13:
	.string	"Boku123.YEs.WeCaNe"
	.align 8
.LC14:
	.string	"strcmp(result, \"Boku123.YEs.WeCaNe\") == 0"
.LC15:
	.string	"t"
.LC16:
	.string	"eMptY"
.LC17:
	.string	"(nothing"
.LC18:
	.string	"zeR00"
.LC19:
	.string	"NuLl__"
.LC20:
	.string	"123NoooneB321"
.LC21:
	.string	"__YESIMHERE"
.LC22:
	.string	"__YESIMHERE.NuLl__"
	.align 8
.LC23:
	.string	"strcmp(result, \"__YESIMHERE.NuLl__\") == 0"
.LC24:
	.string	"Ta"
.LC25:
	.string	"TAR"
.LC26:
	.string	"t234An"
.LC27:
	.string	"cosSo"
.LC28:
	.string	"K"
.LC29:
	.string	"K.TAR"
.LC30:
	.string	"strcmp(result, \"K.TAR\") == 0"
.LC31:
	.string	"Tab"
.LC32:
	.string	"123"
.LC33:
	.string	"781345"
.LC34:
	.string	"-_-"
.LC35:
	.string	"__HAHA"
.LC36:
	.string	"__HAHA.123"
	.align 8
.LC37:
	.string	"strcmp(result, \"__HAHA.123\") == 0"
.LC38:
	.string	"HhAas"
.LC39:
	.string	"okIWILL123"
.LC40:
	.string	"WorkOut"
.LC41:
	.string	"Fails"
.LC42:
	.string	"YameRore"
.LC43:
	.string	"YameRore.okIWILL123"
	.align 8
.LC44:
	.string	"strcmp(result, \"YameRore.okIWILL123\") == 0"
.LC45:
	.string	"Die"
.LC46:
	.string	"NowW"
.LC47:
	.string	"Wow"
.LC48:
	.string	"WoW"
.LC49:
	.string	"finNNalLLly"
.LC50:
	.string	"finNNalLLly.WoW"
	.align 8
.LC51:
	.string	"strcmp(result, \"finNNalLLly.WoW\") == 0"
.LC52:
	.string	"Bb"
.LC53:
	.string	"91245"
.LC54:
	.string	"_"
.LC55:
	.string	"_.Bb"
.LC56:
	.string	"strcmp(result, \"_.Bb\") == 0"
.LC57:
	.string	"671235"
.LC58:
	.string	"Sp"
.LC59:
	.string	"Sp.671235"
	.align 8
.LC60:
	.string	"strcmp(result, \"Sp.671235\") == 0"
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
	subq	$352, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rax
	movq	%rax, -320(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -312(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -304(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-320(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	func0
	leaq	-64(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	leaq	.LC8(%rip), %rax
	movq	%rax, -288(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -280(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -272(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -264(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	func0
	leaq	-64(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	leaq	.LC15(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC18(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC19(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC20(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rcx
	movl	$6, %edx
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	func0
	leaq	-64(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$38, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	leaq	.LC24(%rip), %rax
	movq	%rax, -256(%rbp)
	leaq	.LC25(%rip), %rax
	movq	%rax, -248(%rbp)
	leaq	.LC26(%rip), %rax
	movq	%rax, -240(%rbp)
	leaq	.LC27(%rip), %rax
	movq	%rax, -232(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	call	func0
	leaq	-64(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$41, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	leaq	.LC31(%rip), %rax
	movq	%rax, -224(%rbp)
	leaq	.LC32(%rip), %rax
	movq	%rax, -216(%rbp)
	leaq	.LC33(%rip), %rax
	movq	%rax, -208(%rbp)
	leaq	.LC34(%rip), %rax
	movq	%rax, -200(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdi
	call	func0
	leaq	-64(%rbp), %rax
	leaq	.LC36(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$44, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC37(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	leaq	.LC38(%rip), %rax
	movq	%rax, -160(%rbp)
	leaq	.LC39(%rip), %rax
	movq	%rax, -152(%rbp)
	leaq	.LC40(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC41(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC34(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rcx
	movl	$5, %edx
	movq	%rax, %rsi
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	call	func0
	leaq	-64(%rbp), %rax
	leaq	.LC43(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$47, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	leaq	.LC45(%rip), %rax
	movq	%rax, -192(%rbp)
	leaq	.LC46(%rip), %rax
	movq	%rax, -184(%rbp)
	leaq	.LC47(%rip), %rax
	movq	%rax, -176(%rbp)
	leaq	.LC48(%rip), %rax
	movq	%rax, -168(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rsi
	leaq	.LC49(%rip), %rax
	movq	%rax, %rdi
	call	func0
	leaq	-64(%rbp), %rax
	leaq	.LC50(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$50, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC51(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	leaq	.LC52(%rip), %rax
	movq	%rax, -352(%rbp)
	leaq	.LC53(%rip), %rax
	movq	%rax, -344(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-352(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rsi
	leaq	.LC54(%rip), %rax
	movq	%rax, %rdi
	call	func0
	leaq	-64(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$53, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC56(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	leaq	.LC57(%rip), %rax
	movq	%rax, -336(%rbp)
	leaq	.LC52(%rip), %rax
	movq	%rax, -328(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-336(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rsi
	leaq	.LC58(%rip), %rax
	movq	%rax, %rdi
	call	func0
	leaq	-64(%rbp), %rax
	leaq	.LC59(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$56, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC60(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
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
