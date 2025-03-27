	.file	"libmin_qsort.c"
	.text
	.type	a_ctz_l, @function
a_ctz_l:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	negq	%rax
	andq	-8(%rbp), %rax
	imulq	$124511785, %rax, %rax
	shrq	$27, %rax
	movq	%rax, %rdx
	leaq	debruijn32.0(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	a_ctz_l, .-a_ctz_l
	.type	pntz, @function
pntz:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	subq	$1, %rax
	movq	%rax, %rdi
	call	a_ctz_l
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L4
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	a_ctz_l
	addl	$64, %eax
	movl	%eax, -4(%rbp)
	cmpl	$64, -4(%rbp)
	je	.L5
.L4:
	movl	-4(%rbp), %eax
	jmp	.L6
.L5:
	movl	$0, %eax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	pntz, .-pntz
	.type	cycle, @function
cycle:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -296(%rbp)
	movq	%rsi, -304(%rbp)
	movl	%edx, -308(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$1, -308(%rbp)
	jle	.L15
	movl	-308(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-304(%rbp), %rax
	addq	%rax, %rdx
	leaq	-272(%rbp), %rax
	movq	%rax, (%rdx)
	jmp	.L10
.L13:
	movq	-296(%rbp), %rax
	movl	$256, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movq	%rax, -280(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rcx
	movl	-308(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-304(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-280(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	libmin_memcpy@PLT
	movl	$0, -284(%rbp)
	jmp	.L11
.L12:
	movl	-284(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-304(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movl	-284(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-304(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-280(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	libmin_memcpy@PLT
	movl	-284(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-304(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movl	-284(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-304(%rbp), %rax
	addq	%rdx, %rax
	movq	-280(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	addl	$1, -284(%rbp)
.L11:
	movl	-284(%rbp), %eax
	cmpl	-308(%rbp), %eax
	jl	.L12
	movq	-280(%rbp), %rax
	subq	%rax, -296(%rbp)
.L10:
	cmpq	$0, -296(%rbp)
	jne	.L13
	jmp	.L7
.L15:
	nop
.L7:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	cycle, .-cycle
	.type	shl, @function
shl:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	$63, %eax
	jbe	.L17
	movl	-12(%rbp), %eax
	subl	$64, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
.L17:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rax
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movl	-12(%rbp), %eax
	movl	$64, %ecx
	subl	%eax, %ecx
	shrq	%cl, %rsi
	movq	%rsi, %rcx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	orq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	shl, .-shl
	.type	shr, @function
shr:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	$63, %eax
	jbe	.L19
	movl	-12(%rbp), %eax
	subl	$64, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	$0, (%rax)
.L19:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rsi
	movl	-12(%rbp), %eax
	movl	$64, %ecx
	subl	%eax, %ecx
	movq	%rsi, %rax
	salq	%cl, %rax
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rsi
	movq	%rsi, %rax
	movq	%rax, (%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	shr, .-shr
	.type	sift, @function
sift:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$992, %rsp
	movq	%rdi, -952(%rbp)
	movq	%rsi, -960(%rbp)
	movq	%rdx, -968(%rbp)
	movl	%ecx, -972(%rbp)
	movq	%r8, -984(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -932(%rbp)
	movq	-952(%rbp), %rax
	movq	%rax, -912(%rbp)
	jmp	.L21
.L26:
	movq	-960(%rbp), %rax
	negq	%rax
	movq	%rax, %rdx
	movq	-952(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -928(%rbp)
	movq	-960(%rbp), %rax
	negq	%rax
	movq	%rax, %rdx
	movl	-972(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-16(%rax), %rcx
	movq	-984(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	-952(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -920(%rbp)
	movq	-912(%rbp), %rax
	movq	-920(%rbp), %rdx
	movq	-968(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	js	.L22
	movq	-912(%rbp), %rax
	movq	-928(%rbp), %rdx
	movq	-968(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jns	.L28
.L22:
	movq	-928(%rbp), %rdx
	movq	-920(%rbp), %rax
	movq	-968(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	js	.L24
	movl	-932(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -932(%rbp)
	cltq
	movq	-920(%rbp), %rdx
	movq	%rdx, -912(%rbp,%rax,8)
	movq	-920(%rbp), %rax
	movq	%rax, -952(%rbp)
	subl	$1, -972(%rbp)
	jmp	.L21
.L24:
	movl	-932(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -932(%rbp)
	cltq
	movq	-928(%rbp), %rdx
	movq	%rdx, -912(%rbp,%rax,8)
	movq	-928(%rbp), %rax
	movq	%rax, -952(%rbp)
	subl	$2, -972(%rbp)
.L21:
	cmpl	$1, -972(%rbp)
	jg	.L26
	jmp	.L23
.L28:
	nop
.L23:
	movl	-932(%rbp), %edx
	leaq	-912(%rbp), %rcx
	movq	-960(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cycle
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	sift, .-sift
	.type	trinkle, @function
trinkle:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1008, %rsp
	movq	%rdi, -968(%rbp)
	movq	%rsi, -976(%rbp)
	movq	%rdx, -984(%rbp)
	movq	%rcx, -992(%rbp)
	movl	%r8d, -996(%rbp)
	movl	%r9d, -1000(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -1008(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -960(%rbp)
	movq	-992(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -928(%rbp)
	movq	-992(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -920(%rbp)
	movq	-968(%rbp), %rax
	movq	%rax, -912(%rbp)
	jmp	.L30
.L34:
	movl	-996(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-1008(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	negq	%rax
	movq	%rax, %rdx
	movq	-968(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -952(%rbp)
	movq	-912(%rbp), %rdx
	movq	-952(%rbp), %rax
	movq	-984(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jle	.L37
	cmpl	$0, -1000(%rbp)
	jne	.L33
	cmpl	$1, -996(%rbp)
	jle	.L33
	movq	-976(%rbp), %rax
	negq	%rax
	movq	%rax, %rdx
	movq	-968(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -944(%rbp)
	movq	-976(%rbp), %rax
	negq	%rax
	movq	%rax, %rdx
	movl	-996(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-16(%rax), %rcx
	movq	-1008(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	-968(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -936(%rbp)
	movq	-952(%rbp), %rdx
	movq	-944(%rbp), %rax
	movq	-984(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jns	.L32
	movq	-952(%rbp), %rdx
	movq	-936(%rbp), %rax
	movq	-984(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jns	.L32
.L33:
	movl	-960(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -960(%rbp)
	cltq
	movq	-952(%rbp), %rdx
	movq	%rdx, -912(%rbp,%rax,8)
	movq	-952(%rbp), %rax
	movq	%rax, -968(%rbp)
	leaq	-928(%rbp), %rax
	movq	%rax, %rdi
	call	pntz
	movl	%eax, -956(%rbp)
	movl	-956(%rbp), %edx
	leaq	-928(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	shr
	movl	-956(%rbp), %eax
	addl	%eax, -996(%rbp)
	movl	$0, -1000(%rbp)
.L30:
	movq	-928(%rbp), %rax
	cmpq	$1, %rax
	jne	.L34
	movq	-920(%rbp), %rax
	testq	%rax, %rax
	jne	.L34
	jmp	.L32
.L37:
	nop
.L32:
	cmpl	$0, -1000(%rbp)
	jne	.L38
	movl	-960(%rbp), %edx
	leaq	-912(%rbp), %rcx
	movq	-976(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	cycle
	movq	-1008(%rbp), %rdi
	movl	-996(%rbp), %ecx
	movq	-984(%rbp), %rdx
	movq	-976(%rbp), %rsi
	movq	-968(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	sift
.L38:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L36
	call	__stack_chk_fail@PLT
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	trinkle, .-trinkle
	.globl	libmin_qsort
	.type	libmin_qsort, @function
libmin_qsort:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$880, %rsp
	movq	%rdi, -856(%rbp)
	movq	%rsi, -864(%rbp)
	movq	%rdx, -872(%rbp)
	movq	%rcx, -880(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-872(%rbp), %rax
	imulq	-864(%rbp), %rax
	movq	%rax, -816(%rbp)
	movq	$1, -800(%rbp)
	movq	$0, -792(%rbp)
	movl	$1, -840(%rbp)
	cmpq	$0, -816(%rbp)
	je	.L57
	movq	-856(%rbp), %rax
	movq	%rax, -824(%rbp)
	movq	-816(%rbp), %rax
	subq	-872(%rbp), %rax
	movq	%rax, %rdx
	movq	-824(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -808(%rbp)
	movq	-872(%rbp), %rax
	movq	%rax, -776(%rbp)
	movq	-776(%rbp), %rax
	movq	%rax, -784(%rbp)
	movq	$2, -832(%rbp)
	jmp	.L42
.L43:
	addq	$1, -832(%rbp)
.L42:
	movq	-832(%rbp), %rax
	subq	$2, %rax
	movq	-784(%rbp,%rax,8), %rdx
	movq	-832(%rbp), %rax
	subq	$1, %rax
	movq	-784(%rbp,%rax,8), %rax
	addq	%rax, %rdx
	movq	-872(%rbp), %rax
	addq	%rax, %rdx
	movq	-832(%rbp), %rax
	movq	%rdx, -784(%rbp,%rax,8)
	movq	-832(%rbp), %rax
	movq	-784(%rbp,%rax,8), %rax
	cmpq	-816(%rbp), %rax
	jb	.L43
	jmp	.L44
.L50:
	movq	-800(%rbp), %rax
	andl	$3, %eax
	cmpq	$3, %rax
	jne	.L45
	leaq	-784(%rbp), %rdi
	movl	-840(%rbp), %ecx
	movq	-880(%rbp), %rdx
	movq	-872(%rbp), %rsi
	movq	-824(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	sift
	leaq	-800(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	shr
	addl	$2, -840(%rbp)
	jmp	.L46
.L45:
	movl	-840(%rbp), %eax
	subl	$1, %eax
	cltq
	movq	-784(%rbp,%rax,8), %rdx
	movq	-808(%rbp), %rax
	subq	-824(%rbp), %rax
	cmpq	%rax, %rdx
	jb	.L47
	movl	-840(%rbp), %r8d
	leaq	-800(%rbp), %rcx
	movq	-880(%rbp), %rdx
	movq	-872(%rbp), %rsi
	movq	-824(%rbp), %rax
	subq	$8, %rsp
	leaq	-784(%rbp), %rdi
	pushq	%rdi
	movl	$0, %r9d
	movq	%rax, %rdi
	call	trinkle
	addq	$16, %rsp
	jmp	.L48
.L47:
	leaq	-784(%rbp), %rdi
	movl	-840(%rbp), %ecx
	movq	-880(%rbp), %rdx
	movq	-872(%rbp), %rsi
	movq	-824(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	sift
.L48:
	cmpl	$1, -840(%rbp)
	jne	.L49
	leaq	-800(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	shl
	movl	$0, -840(%rbp)
	jmp	.L46
.L49:
	movl	-840(%rbp), %eax
	leal	-1(%rax), %edx
	leaq	-800(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	shl
	movl	$1, -840(%rbp)
.L46:
	movq	-800(%rbp), %rax
	orq	$1, %rax
	movq	%rax, -800(%rbp)
	movq	-872(%rbp), %rax
	addq	%rax, -824(%rbp)
.L44:
	movq	-824(%rbp), %rax
	cmpq	-808(%rbp), %rax
	jb	.L50
	movl	-840(%rbp), %r8d
	leaq	-800(%rbp), %rcx
	movq	-880(%rbp), %rdx
	movq	-872(%rbp), %rsi
	movq	-824(%rbp), %rax
	subq	$8, %rsp
	leaq	-784(%rbp), %rdi
	pushq	%rdi
	movl	$0, %r9d
	movq	%rax, %rdi
	call	trinkle
	addq	$16, %rsp
	jmp	.L51
.L54:
	cmpl	$1, -840(%rbp)
	jg	.L52
	leaq	-800(%rbp), %rax
	movq	%rax, %rdi
	call	pntz
	movl	%eax, -836(%rbp)
	movl	-836(%rbp), %edx
	leaq	-800(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	shr
	movl	-836(%rbp), %eax
	addl	%eax, -840(%rbp)
	jmp	.L53
.L52:
	leaq	-800(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	shl
	subl	$2, -840(%rbp)
	movq	-800(%rbp), %rax
	xorq	$7, %rax
	movq	%rax, -800(%rbp)
	leaq	-800(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	shr
	movl	-840(%rbp), %eax
	leal	1(%rax), %r8d
	movl	-840(%rbp), %eax
	cltq
	movq	-784(%rbp,%rax,8), %rax
	negq	%rax
	subq	-872(%rbp), %rax
	movq	%rax, %rdx
	movq	-824(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	-800(%rbp), %rcx
	movq	-880(%rbp), %rdx
	movq	-872(%rbp), %rax
	subq	$8, %rsp
	leaq	-784(%rbp), %rsi
	pushq	%rsi
	movl	$1, %r9d
	movq	%rax, %rsi
	call	trinkle
	addq	$16, %rsp
	leaq	-800(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	shl
	movq	-800(%rbp), %rax
	orq	$1, %rax
	movq	%rax, -800(%rbp)
	movq	-872(%rbp), %rax
	negq	%rax
	movq	%rax, %rdx
	movq	-824(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-840(%rbp), %r8d
	leaq	-800(%rbp), %rcx
	movq	-880(%rbp), %rdx
	movq	-872(%rbp), %rax
	subq	$8, %rsp
	leaq	-784(%rbp), %rsi
	pushq	%rsi
	movl	$1, %r9d
	movq	%rax, %rsi
	call	trinkle
	addq	$16, %rsp
.L53:
	movq	-872(%rbp), %rax
	negq	%rax
	addq	%rax, -824(%rbp)
.L51:
	cmpl	$1, -840(%rbp)
	jne	.L54
	movq	-800(%rbp), %rax
	cmpq	$1, %rax
	jne	.L54
	movq	-792(%rbp), %rax
	testq	%rax, %rax
	jne	.L54
	jmp	.L39
.L57:
	nop
.L39:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L56
	call	__stack_chk_fail@PLT
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	libmin_qsort, .-libmin_qsort
	.section	.rodata
	.align 32
	.type	debruijn32.0, @object
	.size	debruijn32.0, 32
debruijn32.0:
	.string	""
	.ascii	"\001\027\002\035\030\023\003\036\033\031\013\024\b\004\r\037"
	.ascii	"\026\034\022\032\n\007\f\025\021\t\006\020\005\017\016"
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
