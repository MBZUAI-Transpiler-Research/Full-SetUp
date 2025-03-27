	.file	"libmin_printf.c"
	.text
	.type	dopr, @function
dopr:
.LFB3:
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
	movq	%rcx, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -100(%rbp)
	movl	$0, -108(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %eax
	cltq
	movq	%rax, -88(%rbp)
	movl	$-1, -104(%rbp)
	movq	-136(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -136(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -109(%rbp)
	jmp	.L2
.L142:
	cmpb	$0, -109(%rbp)
	jne	.L3
	movl	$7, -100(%rbp)
.L3:
	cmpl	$7, -100(%rbp)
	ja	.L147
	movl	-100(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L6(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L6(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L6:
	.long	.L13-.L6
	.long	.L12-.L6
	.long	.L11-.L6
	.long	.L10-.L6
	.long	.L9-.L6
	.long	.L8-.L6
	.long	.L7-.L6
	.long	.L148-.L6
	.text
.L13:
	cmpb	$37, -109(%rbp)
	jne	.L14
	movl	$1, -100(%rbp)
	jmp	.L15
.L14:
	movsbl	-109(%rbp), %ecx
	movq	-128(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	dopr_outch
.L15:
	movq	-136(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -136(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -109(%rbp)
	jmp	.L2
.L12:
	movsbl	-109(%rbp), %eax
	subl	$32, %eax
	cmpl	$16, %eax
	ja	.L17
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L19(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L19(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L19:
	.long	.L23-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L22-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L21-.L19
	.long	.L17-.L19
	.long	.L20-.L19
	.long	.L17-.L19
	.long	.L17-.L19
	.long	.L18-.L19
	.text
.L20:
	orl	$1, -96(%rbp)
	movq	-136(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -136(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -109(%rbp)
	jmp	.L24
.L21:
	orl	$2, -96(%rbp)
	movq	-136(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -136(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -109(%rbp)
	jmp	.L24
.L23:
	orl	$4, -96(%rbp)
	movq	-136(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -136(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -109(%rbp)
	jmp	.L24
.L22:
	orl	$8, -96(%rbp)
	movq	-136(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -136(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -109(%rbp)
	jmp	.L24
.L18:
	orl	$16, -96(%rbp)
	movq	-136(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -136(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -109(%rbp)
	jmp	.L24
.L17:
	movl	$2, -100(%rbp)
	nop
.L24:
	jmp	.L2
.L11:
	movq	_pctype(%rip), %rax
	movzbl	-109(%rbp), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L25
	movl	-108(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movsbl	-109(%rbp), %eax
	subl	$48, %eax
	addl	%edx, %eax
	movl	%eax, -108(%rbp)
	movq	-136(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -136(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -109(%rbp)
	jmp	.L2
.L25:
	cmpb	$42, -109(%rbp)
	jne	.L27
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L28
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L29
.L28:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L29:
	movl	(%rax), %eax
	movl	%eax, -108(%rbp)
	movq	-136(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -136(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -109(%rbp)
	movl	$3, -100(%rbp)
	jmp	.L2
.L27:
	movl	$3, -100(%rbp)
	jmp	.L2
.L10:
	cmpb	$46, -109(%rbp)
	jne	.L30
	movl	$4, -100(%rbp)
	movq	-136(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -136(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -109(%rbp)
	jmp	.L2
.L30:
	movl	$5, -100(%rbp)
	jmp	.L2
.L9:
	movq	_pctype(%rip), %rax
	movzbl	-109(%rbp), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L32
	cmpl	$0, -104(%rbp)
	jns	.L33
	movl	$0, -104(%rbp)
.L33:
	movl	-104(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movsbl	-109(%rbp), %eax
	subl	$48, %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	movq	-136(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -136(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -109(%rbp)
	jmp	.L2
.L32:
	cmpb	$42, -109(%rbp)
	jne	.L35
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L36
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L37
.L36:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L37:
	movl	(%rax), %eax
	movl	%eax, -104(%rbp)
	movq	-136(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -136(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -109(%rbp)
	movl	$5, -100(%rbp)
	jmp	.L2
.L35:
	movl	$5, -100(%rbp)
	jmp	.L2
.L8:
	movsbl	-109(%rbp), %eax
	cmpl	$108, %eax
	je	.L38
	cmpl	$108, %eax
	jg	.L149
	cmpl	$76, %eax
	je	.L40
	cmpl	$104, %eax
	jne	.L149
	movl	$1, -92(%rbp)
	movq	-136(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -136(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -109(%rbp)
	jmp	.L41
.L38:
	movl	$2, -92(%rbp)
	movq	-136(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -136(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -109(%rbp)
	cmpb	$108, -109(%rbp)
	jne	.L150
	movl	$4, -92(%rbp)
	movq	-136(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -136(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -109(%rbp)
	jmp	.L150
.L40:
	movl	$3, -92(%rbp)
	movq	-136(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -136(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -109(%rbp)
	jmp	.L41
.L149:
	nop
	jmp	.L41
.L150:
	nop
.L41:
	movl	$6, -100(%rbp)
	jmp	.L2
.L7:
	movsbl	-109(%rbp), %eax
	subl	$37, %eax
	cmpl	$83, %eax
	ja	.L151
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L45(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L45(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L45:
	.long	.L60-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L59-.L45
	.long	.L151-.L45
	.long	.L58-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L57-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L56-.L45
	.long	.L52-.L45
	.long	.L55-.L45
	.long	.L54-.L45
	.long	.L53-.L45
	.long	.L151-.L45
	.long	.L52-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L51-.L45
	.long	.L50-.L45
	.long	.L49-.L45
	.long	.L151-.L45
	.long	.L151-.L45
	.long	.L48-.L45
	.long	.L151-.L45
	.long	.L47-.L45
	.long	.L151-.L45
	.long	.L46-.L45
	.long	.L44-.L45
	.text
.L52:
	cmpl	$1, -92(%rbp)
	jne	.L61
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L62
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L63
.L62:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L63:
	movl	(%rax), %eax
	cltq
	movq	%rax, -80(%rbp)
	jmp	.L64
.L61:
	cmpl	$2, -92(%rbp)
	jne	.L65
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L66
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L67
.L66:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L67:
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.L64
.L65:
	cmpl	$4, -92(%rbp)
	jne	.L68
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L69
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L70
.L69:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L70:
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.L64
.L68:
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L71
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L72
.L71:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L72:
	movl	(%rax), %eax
	cltq
	movq	%rax, -80(%rbp)
.L64:
	movl	-108(%rbp), %r8d
	movq	-80(%rbp), %rcx
	movq	-128(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	-96(%rbp), %edi
	pushq	%rdi
	movl	-104(%rbp), %edi
	pushq	%rdi
	movl	%r8d, %r9d
	movl	$10, %r8d
	movq	%rax, %rdi
	call	fmtint
	addq	$16, %rsp
	jmp	.L73
.L50:
	orl	$64, -96(%rbp)
	cmpl	$1, -92(%rbp)
	jne	.L74
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L75
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L76
.L75:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L76:
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -80(%rbp)
	jmp	.L77
.L74:
	cmpl	$2, -92(%rbp)
	jne	.L78
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L79
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L80
.L79:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L80:
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.L77
.L78:
	cmpl	$4, -92(%rbp)
	jne	.L81
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L82
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L83
.L82:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L83:
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.L77
.L81:
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L84
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L85
.L84:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L85:
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -80(%rbp)
.L77:
	movl	-108(%rbp), %r8d
	movq	-80(%rbp), %rcx
	movq	-128(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	-96(%rbp), %edi
	pushq	%rdi
	movl	-104(%rbp), %edi
	pushq	%rdi
	movl	%r8d, %r9d
	movl	$8, %r8d
	movq	%rax, %rdi
	call	fmtint
	addq	$16, %rsp
	jmp	.L73
.L47:
	orl	$64, -96(%rbp)
	cmpl	$1, -92(%rbp)
	jne	.L86
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L87
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L88
.L87:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L88:
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -80(%rbp)
	jmp	.L89
.L86:
	cmpl	$2, -92(%rbp)
	jne	.L90
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L91
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L92
.L91:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L92:
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.L89
.L90:
	cmpl	$4, -92(%rbp)
	jne	.L93
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L94
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L95
.L94:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L95:
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.L89
.L93:
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L96
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L97
.L96:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L97:
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -80(%rbp)
.L89:
	movl	-108(%rbp), %r8d
	movq	-80(%rbp), %rcx
	movq	-128(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	-96(%rbp), %edi
	pushq	%rdi
	movl	-104(%rbp), %edi
	pushq	%rdi
	movl	%r8d, %r9d
	movl	$10, %r8d
	movq	%rax, %rdi
	call	fmtint
	addq	$16, %rsp
	jmp	.L73
.L57:
	orl	$32, -96(%rbp)
.L44:
	orl	$64, -96(%rbp)
	cmpl	$1, -92(%rbp)
	jne	.L98
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L99
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L100
.L99:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L100:
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -80(%rbp)
	jmp	.L101
.L98:
	cmpl	$2, -92(%rbp)
	jne	.L102
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L103
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L104
.L103:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L104:
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.L101
.L102:
	cmpl	$4, -92(%rbp)
	jne	.L105
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L106
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L107
.L106:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L107:
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.L101
.L105:
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L108
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L109
.L108:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L109:
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -80(%rbp)
.L101:
	movl	-108(%rbp), %r8d
	movq	-80(%rbp), %rcx
	movq	-128(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	-96(%rbp), %edi
	pushq	%rdi
	movl	-104(%rbp), %edi
	pushq	%rdi
	movl	%r8d, %r9d
	movl	$16, %r8d
	movq	%rax, %rdi
	call	fmtint
	addq	$16, %rsp
	jmp	.L73
.L54:
	cmpl	$3, -92(%rbp)
	jne	.L110
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	fldt	(%rax)
	fstpt	-32(%rbp)
	jmp	.L111
.L110:
	movq	-144(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	.L112
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	.L113
.L112:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L113:
	fldl	(%rax)
	fstpt	-32(%rbp)
.L111:
	movl	-96(%rbp), %r8d
	movl	-104(%rbp), %edi
	movl	-108(%rbp), %ecx
	movq	-128(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	movq	-120(%rbp), %rax
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	fmtfp
	addq	$16, %rsp
	jmp	.L73
.L59:
	orl	$32, -96(%rbp)
.L55:
	cmpl	$3, -92(%rbp)
	jne	.L114
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	fldt	(%rax)
	fstpt	-32(%rbp)
	jmp	.L73
.L114:
	movq	-144(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	.L116
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	.L117
.L116:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L117:
	fldl	(%rax)
	fstpt	-32(%rbp)
	jmp	.L73
.L58:
	orl	$32, -96(%rbp)
.L53:
	cmpl	$3, -92(%rbp)
	jne	.L118
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	fldt	(%rax)
	fstpt	-32(%rbp)
	jmp	.L73
.L118:
	movq	-144(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	.L120
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	.L121
.L120:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L121:
	fldl	(%rax)
	fstpt	-32(%rbp)
	jmp	.L73
.L56:
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L122
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L123
.L122:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L123:
	movl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-128(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	dopr_outch
	jmp	.L73
.L48:
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L124
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L125
.L124:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L125:
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpl	$-1, -104(%rbp)
	jne	.L126
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	libmin_strlen@PLT
	movl	%eax, -104(%rbp)
.L126:
	cmpl	$0, -108(%rbp)
	jle	.L127
	cmpl	$0, -104(%rbp)
	js	.L127
	movl	-108(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jle	.L127
	movl	-108(%rbp), %eax
	movl	%eax, -104(%rbp)
.L127:
	movl	-108(%rbp), %r9d
	movl	-96(%rbp), %r8d
	movq	-72(%rbp), %rcx
	movq	-128(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	movq	-120(%rbp), %rax
	subq	$8, %rsp
	movl	-104(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	fmtstr
	addq	$16, %rsp
	jmp	.L73
.L49:
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L128
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L129
.L128:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L129:
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rcx
	movl	-108(%rbp), %r8d
	movq	-128(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	-96(%rbp), %edi
	pushq	%rdi
	movl	-104(%rbp), %edi
	pushq	%rdi
	movl	%r8d, %r9d
	movl	$16, %r8d
	movq	%rax, %rdi
	call	fmtint
	addq	$16, %rsp
	jmp	.L73
.L51:
	cmpl	$1, -92(%rbp)
	jne	.L130
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L131
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L132
.L131:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L132:
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movw	%dx, (%rax)
	jmp	.L73
.L130:
	cmpl	$2, -92(%rbp)
	jne	.L134
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L135
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L136
.L135:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L136:
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L73
.L134:
	cmpl	$4, -92(%rbp)
	jne	.L137
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L138
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L139
.L138:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L139:
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L73
.L137:
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L140
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-144(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-144(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L141
.L140:
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L141:
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L73
.L60:
	movsbl	-109(%rbp), %ecx
	movq	-128(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	dopr_outch
	jmp	.L73
.L46:
	movq	-136(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -136(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -109(%rbp)
	jmp	.L73
.L151:
	nop
.L73:
	movq	-136(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -136(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -109(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -108(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	$-1, -104(%rbp)
	jmp	.L2
.L147:
	nop
	jmp	.L2
.L148:
	nop
.L2:
	cmpl	$7, -100(%rbp)
	jne	.L142
	cmpq	$0, -128(%rbp)
	je	.L143
	movq	-128(%rbp), %rax
	subq	$1, %rax
	movq	-88(%rbp), %rdx
	cmpq	%rax, %rdx
	jnb	.L144
	movq	-88(%rbp), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	jmp	.L143
.L144:
	cmpq	$0, -128(%rbp)
	je	.L143
	movq	-128(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L143:
	movq	-88(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L146
	call	__stack_chk_fail@PLT
.L146:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	dopr, .-dopr
	.section	.rodata
.LC1:
	.string	"<NULL>"
	.text
	.type	fmtstr, @function
fmtstr:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	%r9d, -56(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L153
	leaq	.LC1(%rip), %rax
	movq	%rax, -48(%rbp)
.L153:
	movl	$0, -8(%rbp)
	jmp	.L154
.L155:
	addl	$1, -8(%rbp)
.L154:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L155
	movl	-56(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L156
	movl	$0, -12(%rbp)
.L156:
	movl	-52(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L158
	negl	-12(%rbp)
	jmp	.L158
.L160:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$32, %ecx
	movq	%rax, %rdi
	call	dopr_outch
	subl	$1, -12(%rbp)
	addl	$1, -4(%rbp)
.L158:
	cmpl	$0, -12(%rbp)
	jle	.L161
	movl	-4(%rbp), %eax
	cmpl	16(%rbp), %eax
	jl	.L160
	jmp	.L161
.L163:
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dopr_outch
	addl	$1, -4(%rbp)
.L161:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L164
	movl	-4(%rbp), %eax
	cmpl	16(%rbp), %eax
	jl	.L163
	jmp	.L164
.L166:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$32, %ecx
	movq	%rax, %rdi
	call	dopr_outch
	addl	$1, -12(%rbp)
	addl	$1, -4(%rbp)
.L164:
	cmpl	$0, -12(%rbp)
	jns	.L167
	movl	-4(%rbp), %eax
	cmpl	16(%rbp), %eax
	jl	.L166
.L167:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	fmtstr, .-fmtstr
	.section	.rodata
.LC2:
	.string	"0123456789ABCDEF"
.LC3:
	.string	"0123456789abcdef"
	.text
	.type	fmtint, @function
fmtint:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movl	%r9d, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -60(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
	cmpl	$0, 16(%rbp)
	jns	.L169
	movl	$0, 16(%rbp)
.L169:
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	24(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L170
	cmpq	$0, -96(%rbp)
	jns	.L171
	movl	$45, -60(%rbp)
	movq	-96(%rbp), %rax
	negq	%rax
	movq	%rax, -40(%rbp)
	jmp	.L170
.L171:
	movl	24(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L172
	movl	$43, -60(%rbp)
	jmp	.L170
.L172:
	movl	24(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L170
	movl	$32, -60(%rbp)
.L170:
	movl	24(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L177
	movl	$1, -44(%rbp)
.L177:
	cmpl	$0, -44(%rbp)
	je	.L174
	leaq	.LC2(%rip), %rcx
	jmp	.L175
.L174:
	leaq	.LC3(%rip), %rcx
.L175:
	movl	-100(%rbp), %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rax
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rax
	addq	%rax, %rcx
	movl	-56(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -56(%rbp)
	movzbl	(%rcx), %edx
	cltq
	movb	%dl, -32(%rbp,%rax)
	movl	-100(%rbp), %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rax
	movl	$0, %edx
	divq	%rdi
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L176
	cmpl	$19, -56(%rbp)
	jle	.L177
.L176:
	cmpl	$20, -56(%rbp)
	jne	.L178
	subl	$1, -56(%rbp)
.L178:
	movl	-56(%rbp), %eax
	cltq
	movb	$0, -32(%rbp,%rax)
	movl	16(%rbp), %eax
	subl	-56(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-56(%rbp), %edx
	movl	16(%rbp), %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	-104(%rbp), %edx
	subl	%eax, %edx
	cmpl	$0, -60(%rbp)
	setne	%al
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, -52(%rbp)
	cmpl	$0, -48(%rbp)
	jns	.L179
	movl	$0, -48(%rbp)
.L179:
	cmpl	$0, -52(%rbp)
	jns	.L180
	movl	$0, -52(%rbp)
.L180:
	movl	24(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L181
	movl	-48(%rbp), %edx
	movl	-52(%rbp), %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, -48(%rbp)
	movl	$0, -52(%rbp)
.L181:
	movl	24(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L183
	negl	-52(%rbp)
	jmp	.L183
.L184:
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$32, %ecx
	movq	%rax, %rdi
	call	dopr_outch
	subl	$1, -52(%rbp)
.L183:
	cmpl	$0, -52(%rbp)
	jg	.L184
	cmpl	$0, -60(%rbp)
	je	.L185
	movl	-60(%rbp), %eax
	movsbl	%al, %ecx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	dopr_outch
.L185:
	cmpl	$0, -48(%rbp)
	jle	.L189
	jmp	.L187
.L188:
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$48, %ecx
	movq	%rax, %rdi
	call	dopr_outch
	subl	$1, -48(%rbp)
.L187:
	cmpl	$0, -48(%rbp)
	jg	.L188
	jmp	.L189
.L190:
	subl	$1, -56(%rbp)
	movl	-56(%rbp), %eax
	cltq
	movzbl	-32(%rbp,%rax), %eax
	movsbl	%al, %ecx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	dopr_outch
.L189:
	cmpl	$0, -56(%rbp)
	jg	.L190
	jmp	.L191
.L192:
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$32, %ecx
	movq	%rax, %rdi
	call	dopr_outch
	addl	$1, -52(%rbp)
.L191:
	cmpl	$0, -52(%rbp)
	js	.L192
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L193
	call	__stack_chk_fail@PLT
.L193:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	fmtint, .-fmtint
	.type	abs_val, @function
abs_val:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	fldt	16(%rbp)
	fstpt	-16(%rbp)
	fldt	16(%rbp)
	fldz
	fcomip	%st(1), %st
	fstp	%st(0)
	jbe	.L195
	fldt	16(%rbp)
	fchs
	fstpt	-32(%rbp)
	movq	-32(%rbp), %rax
	movl	-24(%rbp), %edx
	movq	%rax, -16(%rbp)
	movl	%edx, -8(%rbp)
.L195:
	fldt	-16(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	abs_val, .-abs_val
	.type	POW10, @function
POW10:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	fld1
	fstpt	-16(%rbp)
	jmp	.L200
.L201:
	fldt	-16(%rbp)
	fldt	.LC6(%rip)
	fmulp	%st, %st(1)
	fstpt	-16(%rbp)
	subl	$1, -20(%rbp)
.L200:
	cmpl	$0, -20(%rbp)
	jne	.L201
	fldt	-16(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	POW10, .-POW10
	.type	ROUND, @function
ROUND:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	fldt	16(%rbp)
	fnstcw	-18(%rbp)
	movzwl	-18(%rbp), %eax
	orb	$12, %ah
	movw	%ax, -20(%rbp)
	fldcw	-20(%rbp)
	fistpq	-8(%rbp)
	fldcw	-18(%rbp)
	fildq	-8(%rbp)
	fldt	16(%rbp)
	fsubp	%st, %st(1)
	fstpt	16(%rbp)
	fldt	.LC7(%rip)
	fldt	16(%rbp)
	fcomip	%st(1), %st
	fstp	%st(0)
	jb	.L204
	addq	$1, -8(%rbp)
.L204:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	ROUND, .-ROUND
	.type	my_modf, @function
my_modf:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movsd	%xmm0, -72(%rbp)
	movq	%rdi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-72(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC8(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L209
.L214:
	movsd	-32(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdq	-40(%rbp), %xmm1
	movsd	-32(%rbp), %xmm2
	movsd	.LC8(%rip), %xmm0
	addsd	%xmm2, %xmm0
	comisd	%xmm1, %xmm0
	jb	.L210
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-40(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1
	movsd	.LC8(%rip), %xmm2
	subsd	%xmm2, %xmm1
	comisd	%xmm1, %xmm0
	jnb	.L220
.L210:
	movsd	-32(%rbp), %xmm1
	movsd	.LC9(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	addl	$1, -52(%rbp)
.L209:
	cmpl	$99, -52(%rbp)
	jle	.L214
	jmp	.L213
.L220:
	nop
.L213:
	cmpl	$100, -52(%rbp)
	jne	.L215
	movq	-80(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	pxor	%xmm0, %xmm0
	jmp	.L216
.L215:
	cmpl	$0, -52(%rbp)
	je	.L217
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movsd	-72(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %xmm0
	call	my_modf
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movsd	-48(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movq	-80(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-16(%rbp), %xmm0
	jmp	.L216
.L217:
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-40(%rbp), %xmm0
	movq	-80(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-80(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	-32(%rbp), %xmm0
	subsd	%xmm1, %xmm0
.L216:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L218
	call	__stack_chk_fail@PLT
.L218:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	my_modf, .-my_modf
	.type	fmtfp, @function
fmtfp:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$768, %rsp
	movq	%rdi, -712(%rbp)
	movq	%rsi, -720(%rbp)
	movq	%rdx, -728(%rbp)
	movl	%ecx, -732(%rbp)
	movl	%r8d, -736(%rbp)
	movl	%r9d, -740(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -700(%rbp)
	movl	$0, -696(%rbp)
	movl	$0, -692(%rbp)
	movl	$0, -688(%rbp)
	movl	$0, -684(%rbp)
	movl	$0, -680(%rbp)
	cmpl	$0, -736(%rbp)
	jns	.L222
	movl	$6, -736(%rbp)
.L222:
	pushq	24(%rbp)
	pushq	16(%rbp)
	call	abs_val
	addq	$16, %rsp
	fstpl	-656(%rbp)
	fldt	16(%rbp)
	fldz
	fcomip	%st(1), %st
	fstp	%st(0)
	jbe	.L267
	movl	$45, -700(%rbp)
	jmp	.L225
.L267:
	movl	-740(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L226
	movl	$43, -700(%rbp)
	jmp	.L225
.L226:
	movl	-740(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L225
	movl	$32, -700(%rbp)
.L225:
	cmpl	$16, -736(%rbp)
	jle	.L227
	movl	$16, -736(%rbp)
.L227:
	movsd	-656(%rbp), %xmm0
	movsd	%xmm0, -648(%rbp)
	leaq	-672(%rbp), %rdx
	movq	-648(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %xmm0
	call	my_modf
	movl	-736(%rbp), %eax
	movl	%eax, %edi
	call	POW10
	movsd	-672(%rbp), %xmm1
	movsd	-656(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -768(%rbp)
	fldl	-768(%rbp)
	fmulp	%st, %st(1)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	call	ROUND
	addq	$16, %rsp
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -664(%rbp)
	movsd	-664(%rbp), %xmm3
	movsd	%xmm3, -768(%rbp)
	fldl	-768(%rbp)
	fstpt	-768(%rbp)
	movl	-736(%rbp), %eax
	movl	%eax, %edi
	call	POW10
	fldt	-768(%rbp)
	fcomip	%st(1), %st
	fstp	%st(0)
	jb	.L234
	movsd	-672(%rbp), %xmm1
	movsd	.LC8(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -672(%rbp)
	movl	-736(%rbp), %eax
	movl	%eax, %edi
	call	POW10
	movsd	-664(%rbp), %xmm4
	movsd	%xmm4, -768(%rbp)
	fldl	-768(%rbp)
	fsubp	%st, %st(1)
	fstpl	-768(%rbp)
	movsd	-768(%rbp), %xmm0
	movsd	%xmm0, -664(%rbp)
.L234:
	movsd	-672(%rbp), %xmm0
	movsd	%xmm0, -648(%rbp)
	movsd	-672(%rbp), %xmm1
	movsd	.LC9(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	leaq	-672(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %xmm0
	call	my_modf
	movsd	-648(%rbp), %xmm1
	movsd	.LC9(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -648(%rbp)
	movsd	-672(%rbp), %xmm2
	movsd	-648(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	.LC12(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -676(%rbp)
	cmpl	$0, -680(%rbp)
	je	.L230
	leaq	.LC2(%rip), %rax
	jmp	.L231
.L230:
	leaq	.LC3(%rip), %rax
.L231:
	movl	-676(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-696(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -696(%rbp)
	movzbl	(%rcx), %edx
	cltq
	movb	%dl, -640(%rbp,%rax)
	movsd	-672(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L265
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	je	.L232
.L265:
	cmpl	$310, -696(%rbp)
	jle	.L234
.L232:
	cmpl	$311, -696(%rbp)
	jne	.L235
	subl	$1, -696(%rbp)
.L235:
	movl	-696(%rbp), %eax
	cltq
	movb	$0, -640(%rbp,%rax)
	movsd	-664(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L242
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	je	.L236
.L242:
	movsd	-664(%rbp), %xmm0
	movsd	%xmm0, -648(%rbp)
	movsd	-664(%rbp), %xmm1
	movsd	.LC9(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	leaq	-664(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %xmm0
	call	my_modf
	movsd	-648(%rbp), %xmm1
	movsd	.LC9(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -648(%rbp)
	movsd	-664(%rbp), %xmm2
	movsd	-648(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	.LC12(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -676(%rbp)
	cmpl	$0, -680(%rbp)
	je	.L238
	leaq	.LC2(%rip), %rax
	jmp	.L239
.L238:
	leaq	.LC3(%rip), %rax
.L239:
	movl	-676(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-692(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -692(%rbp)
	movzbl	(%rcx), %edx
	cltq
	movb	%dl, -320(%rbp,%rax)
	movsd	-664(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L266
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	je	.L240
.L266:
	cmpl	$310, -692(%rbp)
	jle	.L242
.L240:
	cmpl	$311, -692(%rbp)
	jne	.L236
	subl	$1, -692(%rbp)
.L236:
	movl	-692(%rbp), %eax
	cltq
	movb	$0, -320(%rbp,%rax)
	movl	-732(%rbp), %eax
	subl	-696(%rbp), %eax
	subl	-736(%rbp), %eax
	leal	-1(%rax), %edx
	cmpl	$0, -700(%rbp)
	setne	%al
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, -688(%rbp)
	movl	-736(%rbp), %eax
	subl	-692(%rbp), %eax
	movl	%eax, -684(%rbp)
	cmpl	$0, -684(%rbp)
	jns	.L243
	movl	$0, -684(%rbp)
.L243:
	cmpl	$0, -688(%rbp)
	jns	.L244
	movl	$0, -688(%rbp)
.L244:
	movl	-740(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L245
	negl	-688(%rbp)
.L245:
	movl	-740(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L250
	cmpl	$0, -688(%rbp)
	jle	.L250
	cmpl	$0, -700(%rbp)
	je	.L248
	movl	-700(%rbp), %eax
	movsbl	%al, %ecx
	movq	-728(%rbp), %rdx
	movq	-720(%rbp), %rsi
	movq	-712(%rbp), %rax
	movq	%rax, %rdi
	call	dopr_outch
	subl	$1, -688(%rbp)
	movl	$0, -700(%rbp)
	jmp	.L248
.L249:
	movq	-728(%rbp), %rdx
	movq	-720(%rbp), %rsi
	movq	-712(%rbp), %rax
	movl	$48, %ecx
	movq	%rax, %rdi
	call	dopr_outch
	subl	$1, -688(%rbp)
.L248:
	cmpl	$0, -688(%rbp)
	jg	.L249
	jmp	.L250
.L251:
	movq	-728(%rbp), %rdx
	movq	-720(%rbp), %rsi
	movq	-712(%rbp), %rax
	movl	$32, %ecx
	movq	%rax, %rdi
	call	dopr_outch
	subl	$1, -688(%rbp)
.L250:
	cmpl	$0, -688(%rbp)
	jg	.L251
	cmpl	$0, -700(%rbp)
	je	.L253
	movl	-700(%rbp), %eax
	movsbl	%al, %ecx
	movq	-728(%rbp), %rdx
	movq	-720(%rbp), %rsi
	movq	-712(%rbp), %rax
	movq	%rax, %rdi
	call	dopr_outch
	jmp	.L253
.L254:
	subl	$1, -696(%rbp)
	movl	-696(%rbp), %eax
	cltq
	movzbl	-640(%rbp,%rax), %eax
	movsbl	%al, %ecx
	movq	-728(%rbp), %rdx
	movq	-720(%rbp), %rsi
	movq	-712(%rbp), %rax
	movq	%rax, %rdi
	call	dopr_outch
.L253:
	cmpl	$0, -696(%rbp)
	jg	.L254
	cmpl	$0, -736(%rbp)
	jle	.L258
	movq	-728(%rbp), %rdx
	movq	-720(%rbp), %rsi
	movq	-712(%rbp), %rax
	movl	$46, %ecx
	movq	%rax, %rdi
	call	dopr_outch
	jmp	.L256
.L257:
	subl	$1, -692(%rbp)
	movl	-692(%rbp), %eax
	cltq
	movzbl	-320(%rbp,%rax), %eax
	movsbl	%al, %ecx
	movq	-728(%rbp), %rdx
	movq	-720(%rbp), %rsi
	movq	-712(%rbp), %rax
	movq	%rax, %rdi
	call	dopr_outch
.L256:
	cmpl	$0, -692(%rbp)
	jg	.L257
	jmp	.L258
.L259:
	movq	-728(%rbp), %rdx
	movq	-720(%rbp), %rsi
	movq	-712(%rbp), %rax
	movl	$48, %ecx
	movq	%rax, %rdi
	call	dopr_outch
	subl	$1, -684(%rbp)
.L258:
	cmpl	$0, -684(%rbp)
	jg	.L259
	jmp	.L260
.L261:
	movq	-728(%rbp), %rdx
	movq	-720(%rbp), %rsi
	movq	-712(%rbp), %rax
	movl	$32, %ecx
	movq	%rax, %rdi
	call	dopr_outch
	addl	$1, -688(%rbp)
.L260:
	cmpl	$0, -688(%rbp)
	js	.L261
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L262
	call	__stack_chk_fail@PLT
.L262:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	fmtfp, .-fmtfp
	.type	dopr_outch, @function
dopr_outch:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, %eax
	movb	%al, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L269
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-28(%rbp), %eax
	movb	%al, (%rdx)
.L269:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	dopr_outch, .-dopr_outch
	.globl	libmin_printf
	.type	libmin_printf, @function
libmin_printf:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1280, %rsp
	movq	%rdi, -1272(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L271
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L271:
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -1240(%rbp)
	movl	$48, -1236(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -1232(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -1224(%rbp)
	leaq	-1240(%rbp), %rcx
	movq	-1272(%rbp), %rdx
	leaq	-1216(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	dopr
	movb	$0, -193(%rbp)
	movl	$0, -1252(%rbp)
	leaq	-1216(%rbp), %rax
	movq	%rax, -1248(%rbp)
	jmp	.L272
.L273:
	movq	-1248(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	libtarg_putc@PLT
	addl	$1, -1252(%rbp)
	addq	$1, -1248(%rbp)
.L272:
	movq	-1248(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L273
	movl	-1252(%rbp), %eax
	movq	-184(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L275
	call	__stack_chk_fail@PLT
.L275:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	libmin_printf, .-libmin_printf
	.globl	libmin_snprintf
	.type	libmin_snprintf, @function
libmin_snprintf:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L277
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L277:
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$24, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rcx
	movq	-232(%rbp), %rdx
	movq	-224(%rbp), %rsi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	dopr
	movq	-224(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	libmin_strlen@PLT
	movq	-184(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L279
	call	__stack_chk_fail@PLT
.L279:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	libmin_snprintf, .-libmin_snprintf
	.section	.rodata
	.align 16
.LC6:
	.long	0
	.long	-1610612736
	.long	16386
	.long	0
	.align 16
.LC7:
	.long	0
	.long	-2147483648
	.long	16382
	.long	0
	.align 8
.LC8:
	.long	0
	.long	1072693248
	.align 8
.LC9:
	.long	-1717986918
	.long	1069128089
	.align 8
.LC10:
	.long	0
	.long	1076101120
	.align 8
.LC12:
	.long	-1717986918
	.long	1068079513
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
