	.file	"regex-parser.c"
	.text
	.globl	re_match
	.type	re_match, @function
re_match:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	re_compile
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	re_matchp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	re_match, .-re_match
	.globl	re_matchp
	.type	re_matchp, @function
re_matchp:
.LFB4:
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
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	cmpq	$0, -24(%rbp)
	je	.L4
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$2, %al
	jne	.L5
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	matchpattern
	testl	%eax, %eax
	je	.L6
	movl	$0, %eax
	jmp	.L8
.L6:
	movl	$-1, %eax
	jmp	.L8
.L5:
	movl	$-1, -4(%rbp)
.L11:
	addl	$1, -4(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	matchpattern
	testl	%eax, %eax
	je	.L9
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L10
	movl	$-1, %eax
	jmp	.L8
.L10:
	movl	-4(%rbp), %eax
	jmp	.L8
.L9:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L11
.L4:
	movl	$-1, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	re_matchp, .-re_matchp
	.globl	re_compile
	.type	re_compile, @function
re_compile:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movl	$1, -16(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L13
.L47:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -17(%rbp)
	movsbl	-17(%rbp), %eax
	subl	$36, %eax
	cmpl	$58, %eax
	ja	.L14
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L16(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L16(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L16:
	.long	.L23-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L22-.L16
	.long	.L21-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L20-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L19-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L14-.L16
	.long	.L18-.L16
	.long	.L17-.L16
	.long	.L14-.L16
	.long	.L15-.L16
	.text
.L15:
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	re_compiled.1(%rip), %rax
	movb	$2, (%rdx,%rax)
	jmp	.L24
.L23:
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	re_compiled.1(%rip), %rax
	movb	$3, (%rdx,%rax)
	jmp	.L24
.L20:
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	re_compiled.1(%rip), %rax
	movb	$1, (%rdx,%rax)
	jmp	.L24
.L22:
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	re_compiled.1(%rip), %rax
	movb	$5, (%rdx,%rax)
	jmp	.L24
.L21:
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	re_compiled.1(%rip), %rax
	movb	$6, (%rdx,%rax)
	jmp	.L24
.L19:
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	re_compiled.1(%rip), %rax
	movb	$4, (%rdx,%rax)
	jmp	.L24
.L17:
	movl	-12(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L48
	addl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$68, %eax
	je	.L26
	cmpl	$68, %eax
	jl	.L27
	cmpl	$119, %eax
	jg	.L27
	cmpl	$83, %eax
	jl	.L27
	subl	$83, %eax
	cmpl	$36, %eax
	ja	.L27
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L29(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L29(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L29:
	.long	.L33-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L32-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L31-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L30-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L27-.L29
	.long	.L28-.L29
	.text
.L31:
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	re_compiled.1(%rip), %rax
	movb	$10, (%rdx,%rax)
	jmp	.L25
.L26:
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	re_compiled.1(%rip), %rax
	movb	$11, (%rdx,%rax)
	jmp	.L25
.L28:
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	re_compiled.1(%rip), %rax
	movb	$12, (%rdx,%rax)
	jmp	.L25
.L32:
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	re_compiled.1(%rip), %rax
	movb	$13, (%rdx,%rax)
	jmp	.L25
.L30:
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	re_compiled.1(%rip), %rax
	movb	$14, (%rdx,%rax)
	jmp	.L25
.L33:
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	re_compiled.1(%rip), %rax
	movb	$15, (%rdx,%rax)
	jmp	.L25
.L27:
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	re_compiled.1(%rip), %rax
	movb	$7, (%rdx,%rax)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %ecx
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+re_compiled.1(%rip), %rax
	movb	%cl, (%rdx,%rax)
	nop
.L25:
	jmp	.L48
.L18:
	movl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$94, %al
	jne	.L34
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	re_compiled.1(%rip), %rax
	movb	$9, (%rdx,%rax)
	addl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L37
	movl	$0, %eax
	jmp	.L36
.L34:
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	re_compiled.1(%rip), %rax
	movb	$8, (%rdx,%rax)
	jmp	.L37
.L43:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L38
	cmpl	$38, -16(%rbp)
	jle	.L39
	movl	$0, %eax
	jmp	.L36
.L39:
	movl	-12(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L40
	movl	$0, %eax
	jmp	.L36
.L40:
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -16(%rbp)
	cltq
	leaq	ccl_buf.0(%rip), %rdx
	movb	%cl, (%rax,%rdx)
	jmp	.L41
.L38:
	cmpl	$39, -16(%rbp)
	jle	.L41
	movl	$0, %eax
	jmp	.L36
.L41:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -16(%rbp)
	cltq
	leaq	ccl_buf.0(%rip), %rdx
	movb	%cl, (%rax,%rdx)
.L37:
	addl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$93, %al
	je	.L42
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L43
.L42:
	cmpl	$39, -16(%rbp)
	jle	.L44
	movl	$0, %eax
	jmp	.L36
.L44:
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -16(%rbp)
	cltq
	leaq	ccl_buf.0(%rip), %rdx
	movb	$0, (%rax,%rdx)
	movl	-4(%rbp), %eax
	cltq
	leaq	ccl_buf.0(%rip), %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+re_compiled.1(%rip), %rax
	movq	%rcx, (%rdx,%rax)
	jmp	.L24
.L14:
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	re_compiled.1(%rip), %rax
	movb	$7, (%rdx,%rax)
	movzbl	-17(%rbp), %eax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	leaq	8+re_compiled.1(%rip), %rdx
	movb	%al, (%rcx,%rdx)
	jmp	.L24
.L48:
	nop
.L24:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L45
	movl	$0, %eax
	jmp	.L36
.L45:
	addl	$1, -12(%rbp)
	addl	$1, -8(%rbp)
.L13:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L46
	cmpl	$28, -8(%rbp)
	jle	.L47
.L46:
	movl	-8(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	re_compiled.1(%rip), %rax
	movb	$0, (%rdx,%rax)
	leaq	re_compiled.1(%rip), %rax
.L36:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	re_compile, .-re_compile
	.section	.rodata
.LC0:
	.string	"UNUSED"
.LC1:
	.string	"DOT"
.LC2:
	.string	"BEGIN"
.LC3:
	.string	"END"
.LC4:
	.string	"QUESTIONMARK"
.LC5:
	.string	"STAR"
.LC6:
	.string	"PLUS"
.LC7:
	.string	"CHAR"
.LC8:
	.string	"CHAR_CLASS"
.LC9:
	.string	"INV_CHAR_CLASS"
.LC10:
	.string	"DIGIT"
.LC11:
	.string	"NOT_DIGIT"
.LC12:
	.string	"ALPHA"
.LC13:
	.string	"NOT_ALPHA"
.LC14:
	.string	"WHITESPACE"
.LC15:
	.string	"NOT_WHITESPACE"
.LC16:
	.string	"BRANCH"
.LC17:
	.string	"type: %s"
.LC18:
	.string	" ["
.LC19:
	.string	"%c"
.LC20:
	.string	"]"
.LC21:
	.string	" '%c'"
.LC22:
	.string	"\n"
	.text
	.globl	re_print
	.type	re_print, @function
re_print:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -168(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC12(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -152(%rbp)
	jmp	.L50
.L59:
	movl	-152(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L61
	movl	-152(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	-152(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$8, %al
	je	.L53
	movl	-152(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	jne	.L54
.L53:
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$0, -148(%rbp)
	jmp	.L55
.L57:
	movl	-152(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movl	-148(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -153(%rbp)
	cmpb	$0, -153(%rbp)
	je	.L56
	cmpb	$93, -153(%rbp)
	je	.L56
	movsbl	-153(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -148(%rbp)
.L55:
	cmpl	$39, -148(%rbp)
	jle	.L57
.L56:
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	jmp	.L58
.L54:
	movl	-152(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$7, %al
	jne	.L58
	movl	-152(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
.L58:
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -152(%rbp)
.L50:
	cmpl	$29, -152(%rbp)
	jle	.L59
	jmp	.L52
.L61:
	nop
.L52:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L60
	call	__stack_chk_fail@PLT
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	re_print, .-re_print
	.type	matchdigit, @function
matchdigit:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movq	_pctype(%rip), %rax
	movsbq	-4(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	matchdigit, .-matchdigit
	.type	matchalpha, @function
matchalpha:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movq	_pctype(%rip), %rax
	movsbq	-4(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$3, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	matchalpha, .-matchalpha
	.type	matchwhitespace, @function
matchwhitespace:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movq	_pctype(%rip), %rax
	movsbq	-4(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	matchwhitespace, .-matchwhitespace
	.type	matchalphanum, @function
matchalphanum:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	cmpb	$95, -4(%rbp)
	je	.L69
	movsbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	matchalpha
	testl	%eax, %eax
	jne	.L69
	movsbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	matchdigit
	testl	%eax, %eax
	je	.L70
.L69:
	movl	$1, %eax
	jmp	.L72
.L70:
	movl	$0, %eax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	matchalphanum, .-matchalphanum
	.type	matchrange, @function
matchrange:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movq	%rsi, -16(%rbp)
	movb	%al, -4(%rbp)
	cmpb	$45, -4(%rbp)
	je	.L74
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L74
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L74
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L74
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L74
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, -4(%rbp)
	jl	.L74
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -4(%rbp)
	jg	.L74
	movl	$1, %eax
	jmp	.L76
.L74:
	movl	$0, %eax
.L76:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	matchrange, .-matchrange
	.type	matchdot, @function
matchdot:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	matchdot, .-matchdot
	.type	ismetachar, @function
ismetachar:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	cmpb	$115, -4(%rbp)
	je	.L80
	cmpb	$83, -4(%rbp)
	je	.L80
	cmpb	$119, -4(%rbp)
	je	.L80
	cmpb	$87, -4(%rbp)
	je	.L80
	cmpb	$100, -4(%rbp)
	je	.L80
	cmpb	$68, -4(%rbp)
	jne	.L81
.L80:
	movl	$1, %eax
	jmp	.L83
.L81:
	movl	$0, %eax
.L83:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	ismetachar, .-ismetachar
	.type	matchmetachar, @function
matchmetachar:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movq	%rsi, -16(%rbp)
	movb	%al, -4(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$68, %eax
	je	.L85
	cmpl	$68, %eax
	jl	.L86
	cmpl	$119, %eax
	jg	.L86
	cmpl	$83, %eax
	jl	.L86
	subl	$83, %eax
	cmpl	$36, %eax
	ja	.L86
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L88(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L88(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L88:
	.long	.L92-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L91-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L90-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L89-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L86-.L88
	.long	.L87-.L88
	.text
.L90:
	movsbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	matchdigit
	jmp	.L93
.L85:
	movsbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	matchdigit
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L93
.L87:
	movsbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	matchalphanum
	jmp	.L93
.L91:
	movsbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	matchalphanum
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L93
.L89:
	movsbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	matchwhitespace
	jmp	.L93
.L92:
	movsbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	matchwhitespace
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L93
.L86:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	matchmetachar, .-matchmetachar
	.type	matchcharclass, @function
matchcharclass:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movq	%rsi, -16(%rbp)
	movb	%al, -4(%rbp)
.L104:
	movsbl	-4(%rbp), %eax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	matchrange
	testl	%eax, %eax
	je	.L95
	movl	$1, %eax
	jmp	.L96
.L95:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L97
	addq	$1, -16(%rbp)
	movsbl	-4(%rbp), %eax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	matchmetachar
	testl	%eax, %eax
	je	.L98
	movl	$1, %eax
	jmp	.L96
.L98:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, -4(%rbp)
	jne	.L99
	movsbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ismetachar
	testl	%eax, %eax
	jne	.L99
	movl	$1, %eax
	jmp	.L96
.L97:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, -4(%rbp)
	jne	.L99
	cmpb	$45, -4(%rbp)
	jne	.L100
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L101
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L102
.L101:
	movl	$1, %eax
	jmp	.L96
.L102:
	movl	$0, %eax
	jmp	.L96
.L100:
	movl	$1, %eax
	jmp	.L96
.L99:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L104
	movl	$0, %eax
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	matchcharclass, .-matchcharclass
	.type	matchone, @function
matchone:
.LFB16:
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
	movl	%edi, %eax
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rbx
	movq	%rcx, -32(%rbp)
	movq	%rbx, -24(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	movzbl	-32(%rbp), %eax
	movzbl	%al, %eax
	cmpl	$15, %eax
	ja	.L106
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L108(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L108(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L108:
	.long	.L106-.L108
	.long	.L116-.L108
	.long	.L106-.L108
	.long	.L106-.L108
	.long	.L106-.L108
	.long	.L106-.L108
	.long	.L106-.L108
	.long	.L106-.L108
	.long	.L115-.L108
	.long	.L114-.L108
	.long	.L113-.L108
	.long	.L112-.L108
	.long	.L111-.L108
	.long	.L110-.L108
	.long	.L109-.L108
	.long	.L107-.L108
	.text
.L116:
	movsbl	-36(%rbp), %eax
	movl	%eax, %edi
	call	matchdot
	jmp	.L117
.L115:
	movq	-24(%rbp), %rdx
	movsbl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	matchcharclass
	jmp	.L117
.L114:
	movq	-24(%rbp), %rdx
	movsbl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	matchcharclass
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L117
.L113:
	movsbl	-36(%rbp), %eax
	movl	%eax, %edi
	call	matchdigit
	jmp	.L117
.L112:
	movsbl	-36(%rbp), %eax
	movl	%eax, %edi
	call	matchdigit
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L117
.L111:
	movsbl	-36(%rbp), %eax
	movl	%eax, %edi
	call	matchalphanum
	jmp	.L117
.L110:
	movsbl	-36(%rbp), %eax
	movl	%eax, %edi
	call	matchalphanum
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L117
.L109:
	movsbl	-36(%rbp), %eax
	movl	%eax, %edi
	call	matchwhitespace
	jmp	.L117
.L107:
	movsbl	-36(%rbp), %eax
	movl	%eax, %edi
	call	matchwhitespace
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L117
.L106:
	movzbl	-24(%rbp), %eax
	movzbl	%al, %edx
	movsbl	-36(%rbp), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
.L117:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	matchone, .-matchone
	.type	matchstar, @function
matchstar:
.LFB17:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, %eax
	movq	%rsi, %r9
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r9, %rdi
	movq	%rsi, -32(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L119
.L121:
	addq	$1, -48(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
.L119:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L122
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %edi
	movq	%rax, %rsi
	call	matchone
	testl	%eax, %eax
	jne	.L121
	jmp	.L122
.L125:
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	matchpattern
	testl	%eax, %eax
	je	.L123
	movl	$1, %eax
	jmp	.L124
.L123:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
.L122:
	movq	-48(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L125
	movq	-56(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movl	$0, %eax
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	matchstar, .-matchstar
	.type	matchplus, @function
matchplus:
.LFB18:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, %eax
	movq	%rsi, %r9
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r9, %rdi
	movq	%rsi, -32(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L127
.L129:
	addq	$1, -48(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
.L127:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L130
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %edi
	movq	%rax, %rsi
	call	matchone
	testl	%eax, %eax
	jne	.L129
	jmp	.L130
.L133:
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	matchpattern
	testl	%eax, %eax
	je	.L131
	movl	$1, %eax
	jmp	.L132
.L131:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
.L130:
	movq	-48(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L133
	movl	$0, %eax
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	matchplus, .-matchplus
	.type	matchquestion, @function
matchquestion:
.LFB19:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, %eax
	movq	%rsi, %r9
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r9, %rdi
	movq	%rsi, -16(%rbp)
	movq	%rdi, -8(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movzbl	-16(%rbp), %eax
	testb	%al, %al
	jne	.L135
	movl	$1, %eax
	jmp	.L136
.L135:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	matchpattern
	testl	%eax, %eax
	je	.L137
	movl	$1, %eax
	jmp	.L136
.L137:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L138
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %edi
	movq	%rax, %rsi
	call	matchone
	testl	%eax, %eax
	je	.L138
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	matchpattern
	testl	%eax, %eax
	je	.L138
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L136
.L138:
	movl	$0, %eax
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	matchquestion, .-matchquestion
	.type	matchpattern, @function
matchpattern:
.LFB20:
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
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
.L147:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L140
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movzbl	(%rax), %eax
	cmpb	$4, %al
	jne	.L141
.L140:
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	movq	8(%rax), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movl	%esi, %edi
	movq	%rax, %rsi
	call	matchquestion
	jmp	.L142
.L141:
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L143
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	movq	8(%rax), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movl	%esi, %edi
	movq	%rax, %rsi
	call	matchstar
	jmp	.L142
.L143:
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movzbl	(%rax), %eax
	cmpb	$6, %al
	jne	.L144
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	movq	8(%rax), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movl	%esi, %edi
	movq	%rax, %rsi
	call	matchplus
	jmp	.L142
.L144:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$3, %al
	jne	.L145
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L145
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	jmp	.L142
.L145:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L146
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movl	(%rax), %ecx
	movq	8(%rax), %rax
	movl	%ecx, %edi
	movq	%rax, %rsi
	call	matchone
	testl	%eax, %eax
	jne	.L147
.L146:
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	$0, %eax
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	matchpattern, .-matchpattern
	.globl	test_vector
	.section	.rodata
.LC23:
	.string	"\\d"
.LC24:
	.string	"5"
.LC25:
	.string	"\\w+"
.LC26:
	.string	"hej"
.LC27:
	.string	"\\s"
.LC28:
	.string	"\t \n"
.LC29:
	.string	"\\S"
.LC30:
	.string	"[\\s]"
.LC31:
	.string	"[\\S]"
.LC32:
	.string	"\\D"
.LC33:
	.string	"\\W+"
.LC34:
	.string	"[0-9]+"
.LC35:
	.string	"12345"
.LC36:
	.string	"[^\\w]"
.LC37:
	.string	"\\"
.LC38:
	.string	"[\\W]"
.LC39:
	.string	"[\\w]"
.LC40:
	.string	"[^\\d]"
.LC41:
	.string	"d"
.LC42:
	.string	"[\\d]"
.LC43:
	.string	"[^\\D]"
.LC44:
	.string	"[\\D]"
.LC45:
	.string	"^.*\\\\.*$"
.LC46:
	.string	"c:\\Tools"
.LC47:
	.string	"^[\\+-]*[\\d]+$"
.LC48:
	.string	"+27"
.LC49:
	.string	"[abc]"
.LC50:
	.string	"1c2"
.LC51:
	.string	"1C2"
.LC52:
	.string	"[1-5]+"
.LC53:
	.string	"0123456789"
.LC54:
	.string	"[.2]"
.LC55:
	.string	"a*$"
.LC56:
	.string	"Xaa"
.LC57:
	.string	"[a-h]+"
.LC58:
	.string	"abcdefghxxx"
.LC59:
	.string	"ABCDEFGH"
.LC60:
	.string	"[A-H]+"
.LC61:
	.string	"abcdefgh"
.LC62:
	.string	"[^\\s]+"
.LC63:
	.string	"abc def"
.LC64:
	.string	"[^fc]+"
.LC65:
	.string	"[^d\\sf]+"
.LC66:
	.string	"abc\ndef"
.LC67:
	.string	"b.\\s*\n"
.LC68:
	.string	"aa\r\nbb\r\ncc\r\n\r\n"
.LC69:
	.string	".*c"
.LC70:
	.string	"abcabc"
.LC71:
	.string	".+c"
.LC72:
	.string	"[b-z].*"
.LC73:
	.string	"ab"
.LC74:
	.string	"b[k-z]*"
.LC75:
	.string	"[0-9]"
.LC76:
	.string	"  - "
.LC77:
	.string	"[^0-9]"
.LC78:
	.string	"0|"
.LC79:
	.string	"\\d\\d:\\d\\d:\\d\\d"
.LC80:
	.string	"0s:00:00"
.LC81:
	.string	"000:00"
.LC82:
	.string	"00:0000"
.LC83:
	.string	"100:0:00"
.LC84:
	.string	"00:100:00"
.LC85:
	.string	"0:00:100"
.LC86:
	.string	"\\d\\d?:\\d\\d?:\\d\\d?"
.LC87:
	.string	"0:0:0"
.LC88:
	.string	"0:00:0"
.LC89:
	.string	"0:0:00"
.LC90:
	.string	"00:0:0"
.LC91:
	.string	"00:00:0"
.LC92:
	.string	"00:0:00"
.LC93:
	.string	"0:00:00"
.LC94:
	.string	"00:00:00"
.LC95:
	.string	"[Hh]ello [Ww]orld\\s*[!]?"
.LC96:
	.string	"Hello world !"
.LC97:
	.string	"hello world !"
.LC98:
	.string	"Hello World !"
.LC99:
	.string	"Hello world!   "
.LC100:
	.string	"Hello world  !"
.LC101:
	.string	"hello World    !"
.LC102:
	.string	"a:0"
.LC103:
	.string	".?bar"
.LC104:
	.string	"real_bar"
.LC105:
	.string	"real_foo"
.LC106:
	.string	"X?Y"
.LC107:
	.string	"Z"
.LC108:
	.string	"[a-z]+\nbreak"
.LC109:
	.string	"blahblah\nbreak"
.LC110:
	.string	"[a-z\\s]+\nbreak"
.LC111:
	.string	"bla bla \nbreak"
	.section	.data.rel.local,"aw"
	.align 32
	.type	test_vector, @object
	.size	test_vector, 2176
test_vector:
	.quad	1
	.quad	.LC23
	.quad	.LC24
	.quad	1
	.quad	1
	.quad	.LC25
	.quad	.LC26
	.quad	3
	.quad	1
	.quad	.LC27
	.quad	.LC28
	.quad	1
	.quad	0
	.quad	.LC29
	.quad	.LC28
	.quad	0
	.quad	1
	.quad	.LC30
	.quad	.LC28
	.quad	1
	.quad	0
	.quad	.LC31
	.quad	.LC28
	.quad	0
	.quad	0
	.quad	.LC32
	.quad	.LC24
	.quad	0
	.quad	0
	.quad	.LC33
	.quad	.LC26
	.quad	0
	.quad	1
	.quad	.LC34
	.quad	.LC35
	.quad	5
	.quad	1
	.quad	.LC32
	.quad	.LC26
	.quad	1
	.quad	0
	.quad	.LC23
	.quad	.LC26
	.quad	0
	.quad	1
	.quad	.LC36
	.quad	.LC37
	.quad	1
	.quad	1
	.quad	.LC38
	.quad	.LC37
	.quad	1
	.quad	0
	.quad	.LC39
	.quad	.LC37
	.quad	0
	.quad	1
	.quad	.LC40
	.quad	.LC41
	.quad	1
	.quad	0
	.quad	.LC42
	.quad	.LC41
	.quad	0
	.quad	0
	.quad	.LC43
	.quad	.LC41
	.quad	0
	.quad	1
	.quad	.LC44
	.quad	.LC41
	.quad	1
	.quad	1
	.quad	.LC45
	.quad	.LC46
	.quad	8
	.quad	1
	.quad	.LC47
	.quad	.LC48
	.quad	3
	.quad	1
	.quad	.LC49
	.quad	.LC50
	.quad	1
	.quad	0
	.quad	.LC49
	.quad	.LC51
	.quad	0
	.quad	1
	.quad	.LC52
	.quad	.LC53
	.quad	5
	.quad	1
	.quad	.LC54
	.quad	.LC51
	.quad	1
	.quad	1
	.quad	.LC55
	.quad	.LC56
	.quad	2
	.quad	1
	.quad	.LC55
	.quad	.LC56
	.quad	2
	.quad	1
	.quad	.LC57
	.quad	.LC58
	.quad	8
	.quad	0
	.quad	.LC57
	.quad	.LC59
	.quad	0
	.quad	1
	.quad	.LC60
	.quad	.LC59
	.quad	8
	.quad	0
	.quad	.LC60
	.quad	.LC61
	.quad	0
	.quad	1
	.quad	.LC62
	.quad	.LC63
	.quad	3
	.quad	1
	.quad	.LC64
	.quad	.LC63
	.quad	2
	.quad	1
	.quad	.LC65
	.quad	.LC63
	.quad	3
	.quad	1
	.quad	.LC22
	.quad	.LC66
	.quad	1
	.quad	1
	.quad	.LC67
	.quad	.LC68
	.quad	4
	.quad	1
	.quad	.LC69
	.quad	.LC70
	.quad	6
	.quad	1
	.quad	.LC71
	.quad	.LC70
	.quad	6
	.quad	1
	.quad	.LC72
	.quad	.LC73
	.quad	1
	.quad	1
	.quad	.LC74
	.quad	.LC73
	.quad	1
	.quad	0
	.quad	.LC75
	.quad	.LC76
	.quad	0
	.quad	1
	.quad	.LC77
	.quad	.LC76
	.quad	1
	.quad	1
	.quad	.LC78
	.quad	.LC78
	.quad	2
	.quad	0
	.quad	.LC79
	.quad	.LC80
	.quad	0
	.quad	0
	.quad	.LC79
	.quad	.LC81
	.quad	0
	.quad	0
	.quad	.LC79
	.quad	.LC82
	.quad	0
	.quad	0
	.quad	.LC79
	.quad	.LC83
	.quad	0
	.quad	0
	.quad	.LC79
	.quad	.LC84
	.quad	0
	.quad	0
	.quad	.LC79
	.quad	.LC85
	.quad	0
	.quad	1
	.quad	.LC86
	.quad	.LC87
	.quad	5
	.quad	1
	.quad	.LC86
	.quad	.LC88
	.quad	6
	.quad	1
	.quad	.LC86
	.quad	.LC89
	.quad	5
	.quad	1
	.quad	.LC86
	.quad	.LC90
	.quad	6
	.quad	1
	.quad	.LC86
	.quad	.LC91
	.quad	7
	.quad	1
	.quad	.LC86
	.quad	.LC92
	.quad	6
	.quad	1
	.quad	.LC86
	.quad	.LC93
	.quad	6
	.quad	1
	.quad	.LC86
	.quad	.LC94
	.quad	7
	.quad	1
	.quad	.LC95
	.quad	.LC96
	.quad	12
	.quad	1
	.quad	.LC95
	.quad	.LC97
	.quad	12
	.quad	1
	.quad	.LC95
	.quad	.LC98
	.quad	12
	.quad	1
	.quad	.LC95
	.quad	.LC99
	.quad	11
	.quad	1
	.quad	.LC95
	.quad	.LC100
	.quad	13
	.quad	1
	.quad	.LC95
	.quad	.LC101
	.quad	15
	.quad	0
	.quad	.LC86
	.quad	.LC102
	.quad	0
	.quad	1
	.quad	.LC103
	.quad	.LC104
	.quad	4
	.quad	0
	.quad	.LC103
	.quad	.LC105
	.quad	0
	.quad	0
	.quad	.LC106
	.quad	.LC107
	.quad	0
	.quad	1
	.quad	.LC108
	.quad	.LC109
	.quad	14
	.quad	1
	.quad	.LC110
	.quad	.LC111
	.quad	14
	.section	.rodata
	.align 8
.LC112:
	.string	"[%lu/%lu]: pattern '%s' matched '%s' unexpectedly, matched %i chars. \n"
	.align 8
.LC113:
	.string	"[%lu/%lu]: pattern '%s' didn't match '%s' as expected. \n"
	.align 8
.LC114:
	.string	"[%lu/%lu]: pattern '%s' matched '%i' chars of '%s'; expected '%i'. \n"
.LC115:
	.string	"%lu/%lu tests succeeded.\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB21:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$68, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L149
.L153:
	movq	-40(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+test_vector(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+test_vector(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	test_vector(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+test_vector(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	%eax, -56(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	re_match
	movl	%eax, -52(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L150
	cmpl	$-1, -52(%rbp)
	je	.L151
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	re_compile
	movq	%rax, %rdi
	call	re_print
	movl	-64(%rbp), %edi
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	%edi, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC112(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addq	$1, -48(%rbp)
	jmp	.L151
.L150:
	cmpl	$-1, -52(%rbp)
	jne	.L152
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	re_compile
	movq	%rax, %rdi
	call	re_print
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC113(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addq	$1, -48(%rbp)
	jmp	.L151
.L152:
	movl	-64(%rbp), %eax
	cmpl	%eax, -56(%rbp)
	je	.L151
	movl	-64(%rbp), %edi
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	-16(%rbp), %r8
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	movl	-56(%rbp), %ecx
	pushq	%rcx
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC114(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addq	$16, %rsp
	addq	$1, -48(%rbp)
.L151:
	addq	$1, -40(%rbp)
.L149:
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L153
	movq	-32(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	leaq	.LC115(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	cmpq	$0, -48(%rbp)
	je	.L154
	movq	-48(%rbp), %rax
	jmp	.L156
.L154:
	call	libmin_success@PLT
	movl	$0, %eax
.L156:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L157
	call	__stack_chk_fail@PLT
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	main, .-main
	.local	re_compiled.1
	.comm	re_compiled.1,480,32
	.local	ccl_buf.0
	.comm	ccl_buf.0,40,32
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
