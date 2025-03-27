	.file	"fft-int.c"
	.text
	.globl	fix_fft
	.type	fix_fft, @function
fix_fft:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movl	%ecx, -104(%rbp)
	movl	-100(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -36(%rbp)
	cmpl	$1024, -36(%rbp)
	jle	.L2
	movl	$-1, %eax
	jmp	.L3
.L2:
	movl	$0, -80(%rbp)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	movl	$0, -60(%rbp)
	movl	$1, -100(%rbp)
	jmp	.L4
.L8:
	movl	-36(%rbp), %eax
	movl	%eax, -68(%rbp)
.L5:
	sarl	-68(%rbp)
	movl	-80(%rbp), %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -32(%rbp)
	jl	.L5
	movl	-68(%rbp), %eax
	subl	$1, %eax
	andl	-80(%rbp), %eax
	movl	%eax, %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jle	.L27
	movl	-100(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	-100(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-88(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-100(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	-100(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-96(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, (%rdx)
	jmp	.L7
.L27:
	nop
.L7:
	addl	$1, -100(%rbp)
.L4:
	movl	-100(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	.L8
	movl	$1, -68(%rbp)
	movl	$9, -64(%rbp)
	jmp	.L9
.L26:
	cmpl	$0, -104(%rbp)
	je	.L10
	movl	$0, -56(%rbp)
	movl	$0, -76(%rbp)
	jmp	.L11
.L17:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jns	.L12
	negl	-72(%rbp)
.L12:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	jns	.L13
	negl	-100(%rbp)
.L13:
	cmpl	$16383, -72(%rbp)
	jg	.L14
	cmpl	$16383, -100(%rbp)
	jle	.L15
.L14:
	movl	$1, -56(%rbp)
	jmp	.L16
.L15:
	addl	$1, -76(%rbp)
.L11:
	movl	-76(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L17
.L16:
	cmpl	$0, -56(%rbp)
	je	.L18
	addl	$1, -60(%rbp)
	jmp	.L18
.L10:
	movl	$1, -56(%rbp)
.L18:
	movl	-68(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -28(%rbp)
	movl	$0, -100(%rbp)
	jmp	.L19
.L25:
	movl	-64(%rbp), %eax
	movl	-100(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	addl	$256, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Sinewave(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -44(%rbp)
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Sinewave(%rip), %rax
	movl	(%rdx,%rax), %eax
	negl	%eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -104(%rbp)
	je	.L20
	negl	-40(%rbp)
.L20:
	cmpl	$0, -56(%rbp)
	je	.L21
	sarl	-44(%rbp)
	sarl	-40(%rbp)
.L21:
	movl	-100(%rbp), %eax
	movl	%eax, -76(%rbp)
	jmp	.L22
.L24:
	movl	-76(%rbp), %edx
	movl	-68(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	fix_mpy
	movl	%eax, %ebx
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-40(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	fix_mpy
	subl	%eax, %ebx
	movl	%ebx, %edx
	movl	%edx, -24(%rbp)
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	fix_mpy
	movl	%eax, %ebx
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-40(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	fix_mpy
	addl	%ebx, %eax
	movl	%eax, -20(%rbp)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -52(%rbp)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -56(%rbp)
	je	.L23
	sarl	-52(%rbp)
	sarl	-48(%rbp)
.L23:
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movl	-48(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	-52(%rbp), %ecx
	movl	-24(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	-48(%rbp), %ecx
	movl	-20(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movl	-28(%rbp), %eax
	addl	%eax, -76(%rbp)
.L22:
	movl	-76(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L24
	addl	$1, -100(%rbp)
.L19:
	movl	-100(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L25
	subl	$1, -64(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -68(%rbp)
.L9:
	movl	-68(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L26
	movl	-60(%rbp), %eax
.L3:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	fix_fft, .-fix_fft
	.globl	window
	.type	window, @function
window:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$1024, %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, -4(%rbp)
	sarl	-28(%rbp)
	movl	$0, -12(%rbp)
	movl	$256, -8(%rbp)
	jmp	.L29
.L30:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	Sinewave(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	movl	%edx, %ecx
	sarl	%ecx
	movl	$16384, %edx
	subl	%ecx, %edx
	imull	%eax, %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	sarl	$15, %edx
	movl	%edx, (%rax)
	addl	$1, -12(%rbp)
	movl	-4(%rbp), %eax
	addl	%eax, -8(%rbp)
.L29:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L30
	sall	-28(%rbp)
	movl	-4(%rbp), %eax
	subl	%eax, -8(%rbp)
	jmp	.L31
.L32:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	Sinewave(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	movl	%edx, %ecx
	sarl	%ecx
	movl	$16384, %edx
	subl	%ecx, %edx
	imull	%eax, %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	sarl	$15, %edx
	movl	%edx, (%rax)
	addl	$1, -12(%rbp)
	movl	-4(%rbp), %eax
	subl	%eax, -8(%rbp)
.L31:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L32
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	window, .-window
	.globl	fix_loud
	.type	fix_loud, @function
fix_loud:
.LFB5:
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
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$0, -48(%rbp)
	jle	.L34
	movl	$10, -4(%rbp)
.L34:
	movl	-48(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -48(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L35
.L37:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	db_from_ampl
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	-48(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, (%rdx)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L36
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
.L36:
	addl	$1, -8(%rbp)
.L35:
	movl	-8(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L37
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	fix_loud, .-fix_loud
	.globl	db_from_ampl
	.type	db_from_ampl, @function
db_from_ampl:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	loud2.0(%rip), %eax
	testl	%eax, %eax
	jne	.L39
	movl	Loudampl(%rip), %edx
	movl	Loudampl(%rip), %eax
	imull	%edx, %eax
	movl	%eax, loud2.0(%rip)
	movl	$1, -8(%rbp)
	jmp	.L40
.L41:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	Loudampl(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	Loudampl(%rip), %rax
	movl	(%rcx,%rax), %eax
	imull	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	loud2.0(%rip), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rcx,%rdx)
	movl	-8(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	loud2.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	-8(%rbp), %edx
	subl	$1, %edx
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	movl	%eax, %ecx
	movslq	%edx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	loud2.0(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	addl	$1, -8(%rbp)
.L40:
	cmpl	$99, -8(%rbp)
	jle	.L41
.L39:
	movl	-20(%rbp), %eax
	imull	%eax, %eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	imull	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L42
.L45:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	loud2.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L47
	addl	$1, -8(%rbp)
.L42:
	cmpl	$99, -8(%rbp)
	jle	.L45
	jmp	.L44
.L47:
	nop
.L44:
	movl	-8(%rbp), %eax
	negl	%eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	db_from_ampl, .-db_from_ampl
	.globl	fix_mpy
	.type	fix_mpy, @function
fix_mpy:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	sarl	$15, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	fix_mpy, .-fix_mpy
	.globl	iscale
	.type	iscale, @function
iscale:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	iscale, .-iscale
	.globl	Sinewave
	.data
	.align 32
	.type	Sinewave, @object
	.size	Sinewave, 4096
Sinewave:
	.long	0
	.long	201
	.long	402
	.long	603
	.long	804
	.long	1005
	.long	1206
	.long	1406
	.long	1607
	.long	1808
	.long	2009
	.long	2209
	.long	2410
	.long	2610
	.long	2811
	.long	3011
	.long	3211
	.long	3411
	.long	3611
	.long	3811
	.long	4011
	.long	4210
	.long	4409
	.long	4608
	.long	4807
	.long	5006
	.long	5205
	.long	5403
	.long	5601
	.long	5799
	.long	5997
	.long	6195
	.long	6392
	.long	6589
	.long	6786
	.long	6982
	.long	7179
	.long	7375
	.long	7571
	.long	7766
	.long	7961
	.long	8156
	.long	8351
	.long	8545
	.long	8739
	.long	8932
	.long	9126
	.long	9319
	.long	9511
	.long	9703
	.long	9895
	.long	10087
	.long	10278
	.long	10469
	.long	10659
	.long	10849
	.long	11038
	.long	11227
	.long	11416
	.long	11604
	.long	11792
	.long	11980
	.long	12166
	.long	12353
	.long	12539
	.long	12724
	.long	12909
	.long	13094
	.long	13278
	.long	13462
	.long	13645
	.long	13827
	.long	14009
	.long	14191
	.long	14372
	.long	14552
	.long	14732
	.long	14911
	.long	15090
	.long	15268
	.long	15446
	.long	15623
	.long	15799
	.long	15975
	.long	16150
	.long	16325
	.long	16499
	.long	16672
	.long	16845
	.long	17017
	.long	17189
	.long	17360
	.long	17530
	.long	17699
	.long	17868
	.long	18036
	.long	18204
	.long	18371
	.long	18537
	.long	18702
	.long	18867
	.long	19031
	.long	19194
	.long	19357
	.long	19519
	.long	19680
	.long	19840
	.long	20000
	.long	20159
	.long	20317
	.long	20474
	.long	20631
	.long	20787
	.long	20942
	.long	21096
	.long	21249
	.long	21402
	.long	21554
	.long	21705
	.long	21855
	.long	22004
	.long	22153
	.long	22301
	.long	22448
	.long	22594
	.long	22739
	.long	22883
	.long	23027
	.long	23169
	.long	23311
	.long	23452
	.long	23592
	.long	23731
	.long	23869
	.long	24006
	.long	24143
	.long	24278
	.long	24413
	.long	24546
	.long	24679
	.long	24811
	.long	24942
	.long	25072
	.long	25201
	.long	25329
	.long	25456
	.long	25582
	.long	25707
	.long	25831
	.long	25954
	.long	26077
	.long	26198
	.long	26318
	.long	26437
	.long	26556
	.long	26673
	.long	26789
	.long	26905
	.long	27019
	.long	27132
	.long	27244
	.long	27355
	.long	27466
	.long	27575
	.long	27683
	.long	27790
	.long	27896
	.long	28001
	.long	28105
	.long	28208
	.long	28309
	.long	28410
	.long	28510
	.long	28608
	.long	28706
	.long	28802
	.long	28897
	.long	28992
	.long	29085
	.long	29177
	.long	29268
	.long	29358
	.long	29446
	.long	29534
	.long	29621
	.long	29706
	.long	29790
	.long	29873
	.long	29955
	.long	30036
	.long	30116
	.long	30195
	.long	30272
	.long	30349
	.long	30424
	.long	30498
	.long	30571
	.long	30643
	.long	30713
	.long	30783
	.long	30851
	.long	30918
	.long	30984
	.long	31049
	.long	31113
	.long	31175
	.long	31236
	.long	31297
	.long	31356
	.long	31413
	.long	31470
	.long	31525
	.long	31580
	.long	31633
	.long	31684
	.long	31735
	.long	31785
	.long	31833
	.long	31880
	.long	31926
	.long	31970
	.long	32014
	.long	32056
	.long	32097
	.long	32137
	.long	32176
	.long	32213
	.long	32249
	.long	32284
	.long	32318
	.long	32350
	.long	32382
	.long	32412
	.long	32441
	.long	32468
	.long	32495
	.long	32520
	.long	32544
	.long	32567
	.long	32588
	.long	32609
	.long	32628
	.long	32646
	.long	32662
	.long	32678
	.long	32692
	.long	32705
	.long	32717
	.long	32727
	.long	32736
	.long	32744
	.long	32751
	.long	32757
	.long	32761
	.long	32764
	.long	32766
	.long	32767
	.long	32766
	.long	32764
	.long	32761
	.long	32757
	.long	32751
	.long	32744
	.long	32736
	.long	32727
	.long	32717
	.long	32705
	.long	32692
	.long	32678
	.long	32662
	.long	32646
	.long	32628
	.long	32609
	.long	32588
	.long	32567
	.long	32544
	.long	32520
	.long	32495
	.long	32468
	.long	32441
	.long	32412
	.long	32382
	.long	32350
	.long	32318
	.long	32284
	.long	32249
	.long	32213
	.long	32176
	.long	32137
	.long	32097
	.long	32056
	.long	32014
	.long	31970
	.long	31926
	.long	31880
	.long	31833
	.long	31785
	.long	31735
	.long	31684
	.long	31633
	.long	31580
	.long	31525
	.long	31470
	.long	31413
	.long	31356
	.long	31297
	.long	31236
	.long	31175
	.long	31113
	.long	31049
	.long	30984
	.long	30918
	.long	30851
	.long	30783
	.long	30713
	.long	30643
	.long	30571
	.long	30498
	.long	30424
	.long	30349
	.long	30272
	.long	30195
	.long	30116
	.long	30036
	.long	29955
	.long	29873
	.long	29790
	.long	29706
	.long	29621
	.long	29534
	.long	29446
	.long	29358
	.long	29268
	.long	29177
	.long	29085
	.long	28992
	.long	28897
	.long	28802
	.long	28706
	.long	28608
	.long	28510
	.long	28410
	.long	28309
	.long	28208
	.long	28105
	.long	28001
	.long	27896
	.long	27790
	.long	27683
	.long	27575
	.long	27466
	.long	27355
	.long	27244
	.long	27132
	.long	27019
	.long	26905
	.long	26789
	.long	26673
	.long	26556
	.long	26437
	.long	26318
	.long	26198
	.long	26077
	.long	25954
	.long	25831
	.long	25707
	.long	25582
	.long	25456
	.long	25329
	.long	25201
	.long	25072
	.long	24942
	.long	24811
	.long	24679
	.long	24546
	.long	24413
	.long	24278
	.long	24143
	.long	24006
	.long	23869
	.long	23731
	.long	23592
	.long	23452
	.long	23311
	.long	23169
	.long	23027
	.long	22883
	.long	22739
	.long	22594
	.long	22448
	.long	22301
	.long	22153
	.long	22004
	.long	21855
	.long	21705
	.long	21554
	.long	21402
	.long	21249
	.long	21096
	.long	20942
	.long	20787
	.long	20631
	.long	20474
	.long	20317
	.long	20159
	.long	20000
	.long	19840
	.long	19680
	.long	19519
	.long	19357
	.long	19194
	.long	19031
	.long	18867
	.long	18702
	.long	18537
	.long	18371
	.long	18204
	.long	18036
	.long	17868
	.long	17699
	.long	17530
	.long	17360
	.long	17189
	.long	17017
	.long	16845
	.long	16672
	.long	16499
	.long	16325
	.long	16150
	.long	15975
	.long	15799
	.long	15623
	.long	15446
	.long	15268
	.long	15090
	.long	14911
	.long	14732
	.long	14552
	.long	14372
	.long	14191
	.long	14009
	.long	13827
	.long	13645
	.long	13462
	.long	13278
	.long	13094
	.long	12909
	.long	12724
	.long	12539
	.long	12353
	.long	12166
	.long	11980
	.long	11792
	.long	11604
	.long	11416
	.long	11227
	.long	11038
	.long	10849
	.long	10659
	.long	10469
	.long	10278
	.long	10087
	.long	9895
	.long	9703
	.long	9511
	.long	9319
	.long	9126
	.long	8932
	.long	8739
	.long	8545
	.long	8351
	.long	8156
	.long	7961
	.long	7766
	.long	7571
	.long	7375
	.long	7179
	.long	6982
	.long	6786
	.long	6589
	.long	6392
	.long	6195
	.long	5997
	.long	5799
	.long	5601
	.long	5403
	.long	5205
	.long	5006
	.long	4807
	.long	4608
	.long	4409
	.long	4210
	.long	4011
	.long	3811
	.long	3611
	.long	3411
	.long	3211
	.long	3011
	.long	2811
	.long	2610
	.long	2410
	.long	2209
	.long	2009
	.long	1808
	.long	1607
	.long	1406
	.long	1206
	.long	1005
	.long	804
	.long	603
	.long	402
	.long	201
	.long	0
	.long	-201
	.long	-402
	.long	-603
	.long	-804
	.long	-1005
	.long	-1206
	.long	-1406
	.long	-1607
	.long	-1808
	.long	-2009
	.long	-2209
	.long	-2410
	.long	-2610
	.long	-2811
	.long	-3011
	.long	-3211
	.long	-3411
	.long	-3611
	.long	-3811
	.long	-4011
	.long	-4210
	.long	-4409
	.long	-4608
	.long	-4807
	.long	-5006
	.long	-5205
	.long	-5403
	.long	-5601
	.long	-5799
	.long	-5997
	.long	-6195
	.long	-6392
	.long	-6589
	.long	-6786
	.long	-6982
	.long	-7179
	.long	-7375
	.long	-7571
	.long	-7766
	.long	-7961
	.long	-8156
	.long	-8351
	.long	-8545
	.long	-8739
	.long	-8932
	.long	-9126
	.long	-9319
	.long	-9511
	.long	-9703
	.long	-9895
	.long	-10087
	.long	-10278
	.long	-10469
	.long	-10659
	.long	-10849
	.long	-11038
	.long	-11227
	.long	-11416
	.long	-11604
	.long	-11792
	.long	-11980
	.long	-12166
	.long	-12353
	.long	-12539
	.long	-12724
	.long	-12909
	.long	-13094
	.long	-13278
	.long	-13462
	.long	-13645
	.long	-13827
	.long	-14009
	.long	-14191
	.long	-14372
	.long	-14552
	.long	-14732
	.long	-14911
	.long	-15090
	.long	-15268
	.long	-15446
	.long	-15623
	.long	-15799
	.long	-15975
	.long	-16150
	.long	-16325
	.long	-16499
	.long	-16672
	.long	-16845
	.long	-17017
	.long	-17189
	.long	-17360
	.long	-17530
	.long	-17699
	.long	-17868
	.long	-18036
	.long	-18204
	.long	-18371
	.long	-18537
	.long	-18702
	.long	-18867
	.long	-19031
	.long	-19194
	.long	-19357
	.long	-19519
	.long	-19680
	.long	-19840
	.long	-20000
	.long	-20159
	.long	-20317
	.long	-20474
	.long	-20631
	.long	-20787
	.long	-20942
	.long	-21096
	.long	-21249
	.long	-21402
	.long	-21554
	.long	-21705
	.long	-21855
	.long	-22004
	.long	-22153
	.long	-22301
	.long	-22448
	.long	-22594
	.long	-22739
	.long	-22883
	.long	-23027
	.long	-23169
	.long	-23311
	.long	-23452
	.long	-23592
	.long	-23731
	.long	-23869
	.long	-24006
	.long	-24143
	.long	-24278
	.long	-24413
	.long	-24546
	.long	-24679
	.long	-24811
	.long	-24942
	.long	-25072
	.long	-25201
	.long	-25329
	.long	-25456
	.long	-25582
	.long	-25707
	.long	-25831
	.long	-25954
	.long	-26077
	.long	-26198
	.long	-26318
	.long	-26437
	.long	-26556
	.long	-26673
	.long	-26789
	.long	-26905
	.long	-27019
	.long	-27132
	.long	-27244
	.long	-27355
	.long	-27466
	.long	-27575
	.long	-27683
	.long	-27790
	.long	-27896
	.long	-28001
	.long	-28105
	.long	-28208
	.long	-28309
	.long	-28410
	.long	-28510
	.long	-28608
	.long	-28706
	.long	-28802
	.long	-28897
	.long	-28992
	.long	-29085
	.long	-29177
	.long	-29268
	.long	-29358
	.long	-29446
	.long	-29534
	.long	-29621
	.long	-29706
	.long	-29790
	.long	-29873
	.long	-29955
	.long	-30036
	.long	-30116
	.long	-30195
	.long	-30272
	.long	-30349
	.long	-30424
	.long	-30498
	.long	-30571
	.long	-30643
	.long	-30713
	.long	-30783
	.long	-30851
	.long	-30918
	.long	-30984
	.long	-31049
	.long	-31113
	.long	-31175
	.long	-31236
	.long	-31297
	.long	-31356
	.long	-31413
	.long	-31470
	.long	-31525
	.long	-31580
	.long	-31633
	.long	-31684
	.long	-31735
	.long	-31785
	.long	-31833
	.long	-31880
	.long	-31926
	.long	-31970
	.long	-32014
	.long	-32056
	.long	-32097
	.long	-32137
	.long	-32176
	.long	-32213
	.long	-32249
	.long	-32284
	.long	-32318
	.long	-32350
	.long	-32382
	.long	-32412
	.long	-32441
	.long	-32468
	.long	-32495
	.long	-32520
	.long	-32544
	.long	-32567
	.long	-32588
	.long	-32609
	.long	-32628
	.long	-32646
	.long	-32662
	.long	-32678
	.long	-32692
	.long	-32705
	.long	-32717
	.long	-32727
	.long	-32736
	.long	-32744
	.long	-32751
	.long	-32757
	.long	-32761
	.long	-32764
	.long	-32766
	.long	-32767
	.long	-32766
	.long	-32764
	.long	-32761
	.long	-32757
	.long	-32751
	.long	-32744
	.long	-32736
	.long	-32727
	.long	-32717
	.long	-32705
	.long	-32692
	.long	-32678
	.long	-32662
	.long	-32646
	.long	-32628
	.long	-32609
	.long	-32588
	.long	-32567
	.long	-32544
	.long	-32520
	.long	-32495
	.long	-32468
	.long	-32441
	.long	-32412
	.long	-32382
	.long	-32350
	.long	-32318
	.long	-32284
	.long	-32249
	.long	-32213
	.long	-32176
	.long	-32137
	.long	-32097
	.long	-32056
	.long	-32014
	.long	-31970
	.long	-31926
	.long	-31880
	.long	-31833
	.long	-31785
	.long	-31735
	.long	-31684
	.long	-31633
	.long	-31580
	.long	-31525
	.long	-31470
	.long	-31413
	.long	-31356
	.long	-31297
	.long	-31236
	.long	-31175
	.long	-31113
	.long	-31049
	.long	-30984
	.long	-30918
	.long	-30851
	.long	-30783
	.long	-30713
	.long	-30643
	.long	-30571
	.long	-30498
	.long	-30424
	.long	-30349
	.long	-30272
	.long	-30195
	.long	-30116
	.long	-30036
	.long	-29955
	.long	-29873
	.long	-29790
	.long	-29706
	.long	-29621
	.long	-29534
	.long	-29446
	.long	-29358
	.long	-29268
	.long	-29177
	.long	-29085
	.long	-28992
	.long	-28897
	.long	-28802
	.long	-28706
	.long	-28608
	.long	-28510
	.long	-28410
	.long	-28309
	.long	-28208
	.long	-28105
	.long	-28001
	.long	-27896
	.long	-27790
	.long	-27683
	.long	-27575
	.long	-27466
	.long	-27355
	.long	-27244
	.long	-27132
	.long	-27019
	.long	-26905
	.long	-26789
	.long	-26673
	.long	-26556
	.long	-26437
	.long	-26318
	.long	-26198
	.long	-26077
	.long	-25954
	.long	-25831
	.long	-25707
	.long	-25582
	.long	-25456
	.long	-25329
	.long	-25201
	.long	-25072
	.long	-24942
	.long	-24811
	.long	-24679
	.long	-24546
	.long	-24413
	.long	-24278
	.long	-24143
	.long	-24006
	.long	-23869
	.long	-23731
	.long	-23592
	.long	-23452
	.long	-23311
	.long	-23169
	.long	-23027
	.long	-22883
	.long	-22739
	.long	-22594
	.long	-22448
	.long	-22301
	.long	-22153
	.long	-22004
	.long	-21855
	.long	-21705
	.long	-21554
	.long	-21402
	.long	-21249
	.long	-21096
	.long	-20942
	.long	-20787
	.long	-20631
	.long	-20474
	.long	-20317
	.long	-20159
	.long	-20000
	.long	-19840
	.long	-19680
	.long	-19519
	.long	-19357
	.long	-19194
	.long	-19031
	.long	-18867
	.long	-18702
	.long	-18537
	.long	-18371
	.long	-18204
	.long	-18036
	.long	-17868
	.long	-17699
	.long	-17530
	.long	-17360
	.long	-17189
	.long	-17017
	.long	-16845
	.long	-16672
	.long	-16499
	.long	-16325
	.long	-16150
	.long	-15975
	.long	-15799
	.long	-15623
	.long	-15446
	.long	-15268
	.long	-15090
	.long	-14911
	.long	-14732
	.long	-14552
	.long	-14372
	.long	-14191
	.long	-14009
	.long	-13827
	.long	-13645
	.long	-13462
	.long	-13278
	.long	-13094
	.long	-12909
	.long	-12724
	.long	-12539
	.long	-12353
	.long	-12166
	.long	-11980
	.long	-11792
	.long	-11604
	.long	-11416
	.long	-11227
	.long	-11038
	.long	-10849
	.long	-10659
	.long	-10469
	.long	-10278
	.long	-10087
	.long	-9895
	.long	-9703
	.long	-9511
	.long	-9319
	.long	-9126
	.long	-8932
	.long	-8739
	.long	-8545
	.long	-8351
	.long	-8156
	.long	-7961
	.long	-7766
	.long	-7571
	.long	-7375
	.long	-7179
	.long	-6982
	.long	-6786
	.long	-6589
	.long	-6392
	.long	-6195
	.long	-5997
	.long	-5799
	.long	-5601
	.long	-5403
	.long	-5205
	.long	-5006
	.long	-4807
	.long	-4608
	.long	-4409
	.long	-4210
	.long	-4011
	.long	-3811
	.long	-3611
	.long	-3411
	.long	-3211
	.long	-3011
	.long	-2811
	.long	-2610
	.long	-2410
	.long	-2209
	.long	-2009
	.long	-1808
	.long	-1607
	.long	-1406
	.long	-1206
	.long	-1005
	.long	-804
	.long	-603
	.long	-402
	.long	-201
	.globl	Loudampl
	.align 32
	.type	Loudampl, @object
	.size	Loudampl, 400
Loudampl:
	.long	32767
	.long	29203
	.long	26027
	.long	23197
	.long	20674
	.long	18426
	.long	16422
	.long	14636
	.long	13044
	.long	11626
	.long	10361
	.long	9234
	.long	8230
	.long	7335
	.long	6537
	.long	5826
	.long	5193
	.long	4628
	.long	4125
	.long	3676
	.long	3276
	.long	2920
	.long	2602
	.long	2319
	.long	2067
	.long	1842
	.long	1642
	.long	1463
	.long	1304
	.long	1162
	.long	1036
	.long	923
	.long	823
	.long	733
	.long	653
	.long	582
	.long	519
	.long	462
	.long	412
	.long	367
	.long	327
	.long	292
	.long	260
	.long	231
	.long	206
	.long	184
	.long	164
	.long	146
	.long	130
	.long	116
	.long	103
	.long	92
	.long	82
	.long	73
	.long	65
	.long	58
	.long	51
	.long	46
	.long	41
	.long	36
	.long	32
	.long	29
	.long	26
	.long	23
	.long	20
	.long	18
	.long	16
	.long	14
	.long	13
	.long	11
	.long	10
	.long	9
	.long	8
	.long	7
	.long	6
	.long	5
	.long	5
	.long	4
	.long	4
	.long	3
	.long	3
	.long	2
	.long	2
	.long	2
	.long	2
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.section	.rodata
.LC3:
	.string	"%d: %d, %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2080, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -2068(%rbp)
	jmp	.L53
.L54:
	movl	-2068(%rbp), %eax
	addl	%eax, %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movsd	.LC0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	libmin_cos@PLT
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %edx
	movl	-2068(%rbp), %eax
	cltq
	movl	%edx, -2064(%rbp,%rax,4)
	movl	-2068(%rbp), %eax
	cltq
	movl	$0, -1040(%rbp,%rax,4)
	addl	$1, -2068(%rbp)
.L53:
	cmpl	$255, -2068(%rbp)
	jle	.L54
	leaq	-1040(%rbp), %rsi
	leaq	-2064(%rbp), %rax
	movl	$0, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	fix_fft
	movl	$0, -2068(%rbp)
	jmp	.L55
.L56:
	movl	-2068(%rbp), %eax
	cltq
	movl	-1040(%rbp,%rax,4), %ecx
	movl	-2068(%rbp), %eax
	cltq
	movl	-2064(%rbp,%rax,4), %edx
	movl	-2068(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -2068(%rbp)
.L55:
	cmpl	$255, -2068(%rbp)
	jle	.L56
	leaq	-1040(%rbp), %rsi
	leaq	-2064(%rbp), %rax
	movl	$1, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	fix_fft
	movl	$0, -2068(%rbp)
	jmp	.L57
.L58:
	movl	-2068(%rbp), %eax
	cltq
	movl	-1040(%rbp,%rax,4), %ecx
	movl	-2068(%rbp), %eax
	cltq
	movl	-2064(%rbp,%rax,4), %edx
	movl	-2068(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -2068(%rbp)
.L57:
	cmpl	$255, -2068(%rbp)
	jle	.L58
	call	libmin_success@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L60
	call	__stack_chk_fail@PLT
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.local	loud2.0
	.comm	loud2.0,400,32
	.section	.rodata
	.align 8
.LC0:
	.long	1413551940
	.long	1074340347
	.align 8
.LC1:
	.long	0
	.long	1081081856
	.align 8
.LC2:
	.long	0
	.long	1083129856
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
