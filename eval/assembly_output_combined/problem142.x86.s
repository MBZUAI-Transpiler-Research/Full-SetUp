	.file	"problem142.c"
	.text
	.section	.rodata
.LC0:
	.string	"No"
.LC1:
	.string	".txt"
.LC2:
	.string	".exe"
.LC3:
	.string	".dll"
.LC4:
	.string	"Yes"
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
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -12(%rbp)
	cmpl	$4, -12(%rbp)
	jg	.L2
	leaq	.LC0(%rip), %rax
	jmp	.L3
.L2:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -25(%rbp)
	cmpb	$64, -25(%rbp)
	jle	.L4
	cmpb	$90, -25(%rbp)
	jle	.L5
	cmpb	$96, -25(%rbp)
	jle	.L4
.L5:
	cmpb	$122, -25(%rbp)
	jle	.L6
.L4:
	leaq	.LC0(%rip), %rax
	jmp	.L3
.L6:
	movl	-12(%rbp), %eax
	cltq
	leaq	-4(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L7
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L7
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L7
	leaq	.LC0(%rip), %rax
	jmp	.L3
.L7:
	movl	$0, -16(%rbp)
	jmp	.L8
.L11:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L9
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jg	.L9
	addl	$1, -24(%rbp)
.L9:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L10
	addl	$1, -20(%rbp)
.L10:
	addl	$1, -16(%rbp)
.L8:
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L11
	cmpl	$3, -24(%rbp)
	jg	.L12
	cmpl	$1, -20(%rbp)
	je	.L13
.L12:
	leaq	.LC0(%rip), %rax
	jmp	.L3
.L13:
	leaq	.LC4(%rip), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC5:
	.string	"example.txt"
.LC6:
	.string	"problem142.c"
	.align 8
.LC7:
	.string	"strcmp(func0(\"example.txt\"), \"Yes\") == 0"
.LC8:
	.string	"1example.dll"
	.align 8
.LC9:
	.string	"strcmp(func0(\"1example.dll\"), \"No\") == 0"
.LC10:
	.string	"s1sdf3.asd"
	.align 8
.LC11:
	.string	"strcmp(func0(\"s1sdf3.asd\"), \"No\") == 0"
.LC12:
	.string	"K.dll"
	.align 8
.LC13:
	.string	"strcmp(func0(\"K.dll\"), \"Yes\") == 0"
.LC14:
	.string	"MY16FILE3.exe"
	.align 8
.LC15:
	.string	"strcmp(func0(\"MY16FILE3.exe\"), \"Yes\") == 0"
.LC16:
	.string	"His12FILE94.exe"
	.align 8
.LC17:
	.string	"strcmp(func0(\"His12FILE94.exe\"), \"No\") == 0"
.LC18:
	.string	"_Y.txt"
	.align 8
.LC19:
	.string	"strcmp(func0(\"_Y.txt\"), \"No\") == 0"
.LC20:
	.string	"?aREYA.exe"
	.align 8
.LC21:
	.string	"strcmp(func0(\"?aREYA.exe\"), \"No\") == 0"
.LC22:
	.string	"/this_is_valid.dll"
	.align 8
.LC23:
	.string	"strcmp(func0(\"/this_is_valid.dll\"), \"No\") == 0"
.LC24:
	.string	"this_is_valid.wow"
	.align 8
.LC25:
	.string	"strcmp(func0(\"this_is_valid.wow\"), \"No\") == 0"
.LC26:
	.string	"this_is_valid.txt"
	.align 8
.LC27:
	.string	"strcmp(func0(\"this_is_valid.txt\"), \"Yes\") == 0"
.LC28:
	.string	"this_is_valid.txtexe"
	.align 8
.LC29:
	.string	"strcmp(func0(\"this_is_valid.txtexe\"), \"No\") == 0"
.LC30:
	.string	"#this2_i4s_5valid.ten"
	.align 8
.LC31:
	.string	"strcmp(func0(\"#this2_i4s_5valid.ten\"), \"No\") == 0"
.LC32:
	.string	"@this1_is6_valid.exe"
	.align 8
.LC33:
	.string	"strcmp(func0(\"@this1_is6_valid.exe\"), \"No\") == 0"
.LC34:
	.string	"this_is_12valid.6exe4.txt"
	.align 8
.LC35:
	.string	"strcmp(func0(\"this_is_12valid.6exe4.txt\"), \"No\") == 0"
.LC36:
	.string	"all.exe.txt"
	.align 8
.LC37:
	.string	"strcmp(func0(\"all.exe.txt\"), \"No\") == 0"
.LC38:
	.string	"I563_No.exe"
	.align 8
.LC39:
	.string	"strcmp(func0(\"I563_No.exe\"), \"Yes\") == 0"
.LC40:
	.string	"Is3youfault.txt"
	.align 8
.LC41:
	.string	"strcmp(func0(\"Is3youfault.txt\"), \"Yes\") == 0"
.LC42:
	.string	"no_one#knows.dll"
	.align 8
.LC43:
	.string	"strcmp(func0(\"no_one#knows.dll\"), \"Yes\") == 0"
.LC44:
	.string	"1I563_Yes3.exe"
	.align 8
.LC45:
	.string	"strcmp(func0(\"1I563_Yes3.exe\"), \"No\") == 0"
.LC46:
	.string	"I563_Yes3.txtt"
	.align 8
.LC47:
	.string	"strcmp(func0(\"I563_Yes3.txtt\"), \"No\") == 0"
.LC48:
	.string	"final..txt"
	.align 8
.LC49:
	.string	"strcmp(func0(\"final..txt\"), \"No\") == 0"
.LC50:
	.string	"final132"
	.align 8
.LC51:
	.string	"strcmp(func0(\"final132\"), \"No\") == 0"
.LC52:
	.string	"_f4indsartal132."
	.align 8
.LC53:
	.string	"strcmp(func0(\"_f4indsartal132.\"), \"No\") == 0"
	.align 8
.LC54:
	.string	"strcmp(func0(\".txt\"), \"No\") == 0"
.LC55:
	.string	"s."
	.align 8
.LC56:
	.string	"strcmp(func0(\"s.\"), \"No\") == 0"
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
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$26, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$27, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$29, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$30, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$31, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$34, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L24
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L24:
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L25
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$36, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L25:
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L26
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$37, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L26:
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L27
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$38, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L27:
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L28
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$39, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L28:
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L29
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$40, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L29:
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L30
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$41, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC37(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L30:
	leaq	.LC38(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L31
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$42, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC39(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L31:
	leaq	.LC40(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L32
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$43, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L32:
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L33
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$44, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L33:
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L34
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$45, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC45(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L34:
	leaq	.LC46(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L35
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$46, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC47(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L35:
	leaq	.LC48(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L36
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$47, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC49(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L36:
	leaq	.LC50(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L37
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$48, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC51(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L37:
	leaq	.LC52(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L38
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$49, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC53(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L38:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L39
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$50, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC54(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L39:
	leaq	.LC55(%rip), %rax
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L40
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$51, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC56(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L40:
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
