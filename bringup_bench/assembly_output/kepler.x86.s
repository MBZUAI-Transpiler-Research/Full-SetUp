	.file	"kepler.c"
	.text
	.data
	.align 8
	.type	derror, @object
	.size	derror, 8
derror:
	.long	-1598689907
	.long	1051772663
	.text
	.globl	strict_iteration
	.type	strict_iteration, @function
strict_iteration:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movl	%edi, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	call	libmin_sin@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	mulsd	-16(%rbp), %xmm0
	addsd	-24(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	strict_iteration, .-strict_iteration
	.globl	newton
	.type	newton, @function
newton:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movl	%edi, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	call	libmin_sin@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	mulsd	-16(%rbp), %xmm0
	addsd	-24(%rbp), %xmm0
	subsd	-8(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	call	libmin_cos@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm2
	mulsd	-16(%rbp), %xmm2
	movsd	.LC0(%rip), %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	-40(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	addsd	-8(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	newton, .-newton
	.globl	binary
	.type	binary, @function
binary:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movl	%edi, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L6
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, scale.2(%rip)
	pxor	%xmm0, %xmm0
	jmp	.L7
.L6:
	movq	-24(%rbp), %rax
	movq	%rax, %xmm0
	call	libmin_sin@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-40(%rbp), %xmm0
	comisd	-16(%rbp), %xmm0
	jbe	.L12
	movsd	scale.2(%rip), %xmm0
	addsd	-24(%rbp), %xmm0
	jmp	.L10
.L12:
	movsd	scale.2(%rip), %xmm1
	movsd	-24(%rbp), %xmm0
	subsd	%xmm1, %xmm0
.L10:
	movsd	%xmm0, -8(%rbp)
	movsd	scale.2(%rip), %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, scale.2(%rip)
	movsd	-8(%rbp), %xmm0
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	binary, .-binary
	.globl	e_series
	.type	e_series, @function
e_series:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm2, -56(%rbp)
	movl	%edi, -60(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L14
	movl	$0, n.1(%rip)
	pxor	%xmm0, %xmm0
	jmp	.L15
.L14:
	movl	n.1(%rip), %eax
	testl	%eax, %eax
	jne	.L16
	movl	n.1(%rip), %eax
	addl	$1, %eax
	movl	%eax, n.1(%rip)
	movsd	-56(%rbp), %xmm0
	jmp	.L15
.L16:
	movl	$0, -28(%rbp)
	jmp	.L17
.L20:
	movl	n.1(%rip), %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-28(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	addsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L18
	movsd	.LC4(%rip), %xmm0
	jmp	.L19
.L18:
	movsd	.LC0(%rip), %xmm0
.L19:
	movsd	%xmm0, -8(%rbp)
	movl	n.1(%rip), %eax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	bin_fact
	movq	%xmm0, %rax
	movq	%rax, %xmm3
	mulsd	-8(%rbp), %xmm3
	movsd	%xmm3, -72(%rbp)
	movsd	-16(%rbp), %xmm0
	mulsd	-56(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	libmin_sin@PLT
	mulsd	-72(%rbp), %xmm0
	movsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	addl	$1, -28(%rbp)
.L17:
	movl	-28(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	n.1(%rip), %eax
	cmpl	%eax, %edx
	jle	.L20
	movl	n.1(%rip), %eax
	addl	$1, %eax
	movl	%eax, n.1(%rip)
	movl	n.1(%rip), %eax
	subl	$1, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movq	-48(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	libmin_pow@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	mulsd	-24(%rbp), %xmm0
	addsd	-40(%rbp), %xmm0
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	e_series, .-e_series
	.globl	j_series
	.type	j_series, @function
j_series:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movl	%edi, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L22
	movl	$0, n.0(%rip)
	pxor	%xmm0, %xmm0
	jmp	.L23
.L22:
	movl	n.0(%rip), %eax
	testl	%eax, %eax
	jne	.L24
	movl	n.0(%rip), %eax
	addl	$1, %eax
	movl	%eax, n.0(%rip)
	movsd	-40(%rbp), %xmm0
	jmp	.L23
.L24:
	movl	n.0(%rip), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	n.0(%rip), %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movsd	.LC3(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-16(%rbp), %xmm0
	movapd	%xmm0, %xmm4
	mulsd	-32(%rbp), %xmm4
	movq	%xmm4, %rdx
	movl	n.0(%rip), %eax
	movq	%rdx, %xmm0
	movl	%eax, %edi
	call	J
	movapd	%xmm0, %xmm5
	mulsd	-56(%rbp), %xmm5
	movsd	%xmm5, -56(%rbp)
	movsd	-16(%rbp), %xmm0
	mulsd	-40(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	libmin_sin@PLT
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	n.0(%rip), %eax
	addl	$1, %eax
	movl	%eax, n.0(%rip)
	movsd	-24(%rbp), %xmm0
	addsd	-8(%rbp), %xmm0
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	j_series, .-j_series
	.section	.data.rel.local,"aw"
	.align 32
	.type	methods, @object
	.size	methods, 40
methods:
	.quad	strict_iteration
	.quad	newton
	.quad	binary
	.quad	e_series
	.quad	j_series
	.globl	argc
	.data
	.align 4
	.type	argc, @object
	.size	argc, 4
argc:
	.long	5
	.globl	argv
	.section	.rodata
.LC5:
	.string	"kepler"
.LC6:
	.string	"-m"
.LC7:
	.string	"3"
.LC8:
	.string	"0.34"
.LC9:
	.string	"0.25"
	.section	.data.rel.local
	.align 32
	.type	argv, @object
	.size	argv, 40
argv:
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.section	.rodata
.LC12:
	.string	"-h"
	.align 8
.LC13:
	.ascii	"kepler [-h -v -a <.nnnn...> -m <k>] M e\n-h: print this help"
	.ascii	"ful message\n-v: print version number and exit\n-a: obtain s"
	.ascii	"olution to accuracy of  < .nnnn (default ."
	.string	"0000001)\n-m: use selected calculation method k, where\n\tk = 1: Simple iteration.\n\tk = 2: Newton's method.\n\tk = 3: Binary search.\n\tk = 4: Series in powers of e. (e<.6627434193.)\n\tk = 5: Fourier Bessel series.\nM = mean anomaly (radians)\ne = orbit eccentricty."
.LC14:
	.string	"%s\n"
.LC15:
	.string	"-v"
.LC16:
	.string	"1.11"
.LC17:
	.string	"-a"
	.align 8
.LC19:
	.string	"Warning: requested precision may exceed implementation limit.\n"
.LC20:
	.string	"Bad method number %d\n"
.LC21:
	.string	"kepler: Unknown option %s\n"
	.align 8
.LC22:
	.string	"kepler [-h -v -a <.nnnn...> -m <k>] M e"
	.align 8
.LC24:
	.string	"e cannot exceed %f for this method.\n"
	.align 8
.LC25:
	.string	"Eccentricity %f out of range.\n"
.LC28:
	.string	"n = %d\tE = %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$1, -60(%rbp)
	movl	$1, -56(%rbp)
	movl	$1, -52(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -48(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	.LC10(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC11(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.L26
.L37:
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	argv(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcmp@PLT
	testl	%eax, %eax
	jne	.L27
	leaq	.LC13(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
.L27:
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	argv(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC15(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcmp@PLT
	testl	%eax, %eax
	jne	.L28
	leaq	.LC16(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
.L28:
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	argv(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC17(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcmp@PLT
	testl	%eax, %eax
	jne	.L29
	movl	-56(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	argv(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	libmin_atof@PLT
	movq	%xmm0, %rax
	movq	%rax, derror(%rip)
	movsd	derror(%rip), %xmm1
	movsd	.LC18(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jb	.L30
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
.L30:
	addl	$2, -56(%rbp)
	jmp	.L26
.L29:
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	argv(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcmp@PLT
	testl	%eax, %eax
	jne	.L33
	movl	-56(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	argv(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	libmin_atoi@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jle	.L34
	movl	-52(%rbp), %eax
	cmpl	$5, %eax
	jbe	.L35
.L34:
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %eax
	jmp	.L36
.L35:
	addl	$2, -56(%rbp)
	jmp	.L26
.L33:
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	argv(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %eax
	jmp	.L36
.L26:
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	argv(%rip), %rax
	movq	(%rdx,%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L37
	movl	-56(%rbp), %eax
	leal	1(%rax), %edx
	movl	argc(%rip), %eax
	cmpl	%eax, %edx
	jl	.L38
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %eax
	jmp	.L36
.L38:
	movl	-56(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -56(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	argv(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	libmin_atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	argv(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	libmin_atof@PLT
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movl	-52(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	methods(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -16(%rbp)
	cmpl	$4, -52(%rbp)
	jne	.L39
	movsd	-24(%rbp), %xmm0
	comisd	.LC23(%rip), %xmm0
	jbe	.L39
	movq	.LC23(%rip), %rax
	movq	%rax, %xmm0
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	libmin_printf@PLT
	movl	$1, %eax
	jmp	.L36
.L39:
	pxor	%xmm0, %xmm0
	comisd	-24(%rbp), %xmm0
	ja	.L41
	movsd	-24(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	comisd	%xmm1, %xmm0
	jb	.L55
.L41:
	movq	-24(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	libmin_printf@PLT
	movl	$1, %eax
	jmp	.L36
.L55:
	movsd	-40(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L56
	movsd	.LC0(%rip), %xmm0
	jmp	.L46
.L56:
	movsd	.LC4(%rip), %xmm0
.L46:
	movsd	%xmm0, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movq	%xmm0, %rax
	movsd	.LC26(%rip), %xmm1
	movq	%rax, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %xmm0
	call	libmin_floor@PLT
	movapd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	movsd	.LC27(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-48(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-40(%rbp), %xmm0
	comisd	.LC27(%rip), %xmm0
	jbe	.L47
	movsd	.LC26(%rip), %xmm0
	subsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -48(%rbp)
.L47:
	jmp	.L49
.L50:
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-48(%rbp), %xmm0
	mulsd	-8(%rbp), %xmm0
	movq	%xmm0, %rdx
	movl	-60(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	%rdx, %xmm0
	movl	%eax, %esi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	libmin_printf@PLT
.L49:
	movsd	-40(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movl	$0, %edi
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	*%rdx
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-32(%rbp), %xmm0
	subsd	-8(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movq	%xmm0, %rax
	movsd	derror(%rip), %xmm0
	movq	%rax, %xmm3
	comisd	%xmm0, %xmm3
	jnb	.L50
	call	libmin_success@PLT
	movl	$0, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.globl	bin_fact
	.type	bin_fact, @function
bin_fact:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -68(%rbp)
	movl	%esi, -72(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -48(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-68(%rbp), %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-72(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	-68(%rbp), %eax
	subl	-72(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.L58
.L63:
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-52(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-68(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-72(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	subsd	-32(%rbp), %xmm1
	movsd	.LC0(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	-68(%rbp), %eax
	subl	-72(%rbp), %eax
	subl	-52(%rbp), %eax
	cmpl	%eax, -72(%rbp)
	jle	.L59
	movsd	-24(%rbp), %xmm0
	mulsd	-32(%rbp), %xmm0
	jmp	.L60
.L59:
	movsd	-32(%rbp), %xmm0
.L60:
	movsd	%xmm0, -16(%rbp)
	movl	-68(%rbp), %eax
	subl	-72(%rbp), %eax
	subl	-52(%rbp), %eax
	cmpl	%eax, -72(%rbp)
	jle	.L61
	movsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	jmp	.L62
.L61:
	movsd	-40(%rbp), %xmm0
.L62:
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	divsd	-16(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	subl	$1, -52(%rbp)
.L58:
	cmpl	$1, -52(%rbp)
	jg	.L63
	movsd	-48(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	bin_fact, .-bin_fact
	.globl	J
	.type	J, @function
J:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -68(%rbp)
	movsd	%xmm0, -80(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	movl	%eax, -52(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-52(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	$1, -56(%rbp)
	jmp	.L66
.L67:
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-56(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	movsd	-80(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	addl	$1, -56(%rbp)
.L66:
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.L67
	movsd	-32(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	$1, -56(%rbp)
.L70:
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-56(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	-56(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L68
	movsd	.LC4(%rip), %xmm0
	jmp	.L69
.L68:
	movsd	.LC0(%rip), %xmm0
.L69:
	movsd	%xmm0, -8(%rbp)
	movsd	-80(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm2
	movsd	.LC29(%rip), %xmm1
	mulsd	%xmm1, %xmm2
	movsd	-24(%rbp), %xmm1
	addsd	-16(%rbp), %xmm1
	mulsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-8(%rbp), %xmm0
	mulsd	-40(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	addl	$1, -56(%rbp)
	movsd	-40(%rbp), %xmm0
	comisd	.LC18(%rip), %xmm0
	ja	.L70
	movl	-52(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L71
	movsd	.LC4(%rip), %xmm0
	jmp	.L72
.L71:
	movsd	.LC0(%rip), %xmm0
.L72:
	movsd	%xmm0, -8(%rbp)
	cmpl	$0, -68(%rbp)
	jns	.L73
	movsd	-8(%rbp), %xmm0
	mulsd	-48(%rbp), %xmm0
	jmp	.L75
.L73:
	movsd	-48(%rbp), %xmm0
.L75:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	J, .-J
	.globl	kepler
	.type	kepler, @function
kepler:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm1, -56(%rbp)
	movsd	%xmm2, -64(%rbp)
	movl	%esi, -68(%rbp)
	movl	$0, -28(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC11(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	cmpl	$0, -68(%rbp)
	js	.L77
	movl	-68(%rbp), %eax
	cmpl	$4, %eax
	jbe	.L78
.L77:
	movl	$-1, %eax
	jmp	.L79
.L78:
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	methods(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$3, -68(%rbp)
	jne	.L80
	movsd	-56(%rbp), %xmm0
	comisd	.LC23(%rip), %xmm0
	jbe	.L80
	movl	$-1, %eax
	jmp	.L79
.L80:
	pxor	%xmm0, %xmm0
	comisd	-56(%rbp), %xmm0
	ja	.L82
	movsd	-56(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	comisd	%xmm1, %xmm0
	jb	.L99
.L82:
	movl	$-1, %eax
	jmp	.L79
.L99:
	movsd	-48(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L100
	movsd	.LC0(%rip), %xmm0
	jmp	.L87
.L100:
	movsd	.LC4(%rip), %xmm0
.L87:
	movsd	%xmm0, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movq	%xmm0, %rax
	movsd	.LC26(%rip), %xmm1
	movq	%rax, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %xmm0
	call	libmin_floor@PLT
	movapd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	movsd	.LC27(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-24(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L101
	movsd	.LC0(%rip), %xmm0
	jmp	.L90
.L101:
	movsd	.LC4(%rip), %xmm0
.L90:
	movsd	%xmm0, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movq	%xmm0, %rax
	movq	%rax, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	comisd	.LC27(%rip), %xmm0
	jbe	.L91
	movsd	.LC26(%rip), %xmm0
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
.L91:
	jmp	.L93
.L94:
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -16(%rbp)
	addl	$1, -28(%rbp)
.L93:
	movsd	-48(%rbp), %xmm1
	movsd	-56(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movl	$0, %edi
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	*%rdx
	movq	%xmm0, %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	-16(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm3
	comisd	-64(%rbp), %xmm3
	jnb	.L94
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	-24(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rdx
	movl	$1, %edi
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	movq	.LC2(%rip), %rax
	movq	%rax, %xmm0
	call	*%rdx
	movl	-28(%rbp), %eax
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	kepler, .-kepler
	.data
	.align 8
	.type	scale.2, @object
	.size	scale.2, 8
scale.2:
	.long	1413754602
	.long	1072243195
	.local	n.1
	.comm	n.1,4,4
	.local	n.0
	.comm	n.0,4,4
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	1413754602
	.long	1072243195
	.align 8
.LC2:
	.long	0
	.long	0
	.align 8
.LC3:
	.long	0
	.long	1073741824
	.align 8
.LC4:
	.long	0
	.long	-1074790400
	.align 8
.LC10:
	.long	-1717986918
	.long	-1078355559
	.align 8
.LC11:
	.long	1413754602
	.long	1073291771
	.align 8
.LC18:
	.long	0
	.long	1018167296
	.align 8
.LC23:
	.long	-1343157247
	.long	1071985969
	.align 8
.LC26:
	.long	1413754602
	.long	1075388923
	.align 8
.LC27:
	.long	1413754602
	.long	1074340347
	.align 8
.LC29:
	.long	0
	.long	1074790400
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
