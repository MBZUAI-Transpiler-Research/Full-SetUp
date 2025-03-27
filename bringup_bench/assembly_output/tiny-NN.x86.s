	.file	"tiny-NN.c"
	.text
	.globl	g_deriv
	.type	g_deriv, @function
g_deriv:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	movq	.LC0(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	libmin_exp@PLT
	movsd	.LC1(%rip), %xmm1
	addsd	%xmm0, %xmm1
	movsd	.LC1(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	.LC1(%rip), %xmm0
	subsd	-8(%rbp), %xmm0
	mulsd	-8(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	g_deriv, .-g_deriv
	.globl	g
	.type	g, @function
g:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	movq	.LC0(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	libmin_exp@PLT
	movsd	.LC1(%rip), %xmm1
	addsd	%xmm0, %xmm1
	movsd	.LC1(%rip), %xmm0
	divsd	%xmm1, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	g, .-g
	.globl	sampleSine
	.type	sampleSine, @function
sampleSine:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm1, -64(%rbp)
	movl	%edx, -68(%rbp)
	movsd	-64(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	-56(%rbp), %xmm1
	movl	-68(%rbp), %eax
	testq	%rax, %rax
	js	.L6
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L7
.L6:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L7:
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L8
.L11:
	movl	-28(%rbp), %eax
	testq	%rax, %rax
	js	.L9
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L10
.L9:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L10:
	mulsd	-24(%rbp), %xmm0
	movl	-28(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	movl	-28(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	leaq	0(,%rdx,8), %rcx
	movq	-48(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %xmm0
	call	libmin_sin@PLT
	movq	%xmm0, %rax
	movq	%rax, (%rbx)
	addl	$1, -28(%rbp)
.L8:
	movl	-28(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jb	.L11
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	sampleSine, .-sampleSine
	.globl	fillArrayRand
	.type	fillArrayRand, @function
fillArrayRand:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L13
.L16:
	call	libmin_rand@PLT
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L14
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L15
.L14:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L15:
	movsd	.LC2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movl	-4(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC3(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -4(%rbp)
.L13:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jb	.L16
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	fillArrayRand, .-fillArrayRand
	.globl	fillArrayNull
	.type	fillArrayNull, @function
fillArrayNull:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L18
.L19:
	movl	-4(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -4(%rbp)
.L18:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jb	.L19
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	fillArrayNull, .-fillArrayNull
	.section	.rodata
.LC6:
	.string	"iteration %d Total error %f\n"
	.text
	.globl	train
	.type	train, @function
train:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1728, %rsp
	movsd	%xmm0, -1704(%rbp)
	movsd	%xmm1, -1712(%rbp)
	movsd	%xmm2, -1720(%rbp)
	movsd	%xmm3, -1728(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-1712(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -1672(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -1664(%rbp)
	leaq	-656(%rbp), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	fillArrayRand
	leaq	-1296(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	fillArrayRand
	leaq	-336(%rbp), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	fillArrayNull
	leaq	-1136(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	fillArrayNull
	movsd	.LC5(%rip), %xmm0
	leaq	-1456(%rbp), %rcx
	leaq	-1616(%rbp), %rax
	movl	$20, %edx
	movapd	%xmm0, %xmm1
	movq	.LC4(%rip), %rsi
	movq	%rsi, %xmm0
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sampleSine
	movl	$0, -1684(%rbp)
	jmp	.L21
.L30:
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -1672(%rbp)
	movl	$0, -1680(%rbp)
	jmp	.L22
.L27:
	movl	$0, -1676(%rbp)
	jmp	.L23
.L24:
	movl	-1680(%rbp), %eax
	movsd	-1616(%rbp,%rax,8), %xmm1
	movl	-1676(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	movsd	-656(%rbp,%rax,8), %xmm0
	mulsd	%xmm0, %xmm1
	movl	-1676(%rbp), %eax
	addl	%eax, %eax
	addl	$1, %eax
	movl	%eax, %eax
	movsd	-656(%rbp,%rax,8), %xmm0
	mulsd	-1720(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -1624(%rbp)
	movq	-1624(%rbp), %rax
	movq	%rax, %xmm0
	call	g
	movq	%xmm0, %rax
	movl	-1676(%rbp), %edx
	movq	%rax, -976(%rbp,%rdx,8)
	movq	-1624(%rbp), %rax
	movq	%rax, %xmm0
	call	g_deriv
	movq	%xmm0, %rax
	movl	-1676(%rbp), %edx
	movq	%rax, -816(%rbp,%rdx,8)
	movl	-1676(%rbp), %eax
	movsd	-1296(%rbp,%rax,8), %xmm1
	movl	-1676(%rbp), %eax
	movsd	-976(%rbp,%rax,8), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-1664(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -1664(%rbp)
	addl	$1, -1676(%rbp)
.L23:
	cmpl	$19, -1676(%rbp)
	jbe	.L24
	movl	-1680(%rbp), %eax
	movsd	-1456(%rbp,%rax,8), %xmm1
	movsd	-1664(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -1656(%rbp)
	movsd	-1656(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	-1672(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -1672(%rbp)
	movl	$0, -1676(%rbp)
	jmp	.L25
.L26:
	movl	-1676(%rbp), %eax
	movsd	-816(%rbp,%rax,8), %xmm1
	movl	-1676(%rbp), %eax
	movsd	-1296(%rbp,%rax,8), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-1656(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -1648(%rbp)
	movl	-1676(%rbp), %eax
	movsd	-976(%rbp,%rax,8), %xmm0
	movsd	-1656(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -1640(%rbp)
	movl	-1676(%rbp), %eax
	movsd	-1296(%rbp,%rax,8), %xmm0
	movsd	-1640(%rbp), %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-1704(%rbp), %xmm2
	movl	-1676(%rbp), %eax
	movsd	-1136(%rbp,%rax,8), %xmm1
	mulsd	-1728(%rbp), %xmm1
	addsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movl	-1676(%rbp), %eax
	movsd	%xmm0, -1296(%rbp,%rax,8)
	movsd	-1640(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-1704(%rbp), %xmm1
	movl	-1676(%rbp), %eax
	movsd	-1136(%rbp,%rax,8), %xmm0
	mulsd	-1728(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movl	-1676(%rbp), %eax
	movsd	%xmm0, -1136(%rbp,%rax,8)
	movl	-1680(%rbp), %eax
	movsd	-1616(%rbp,%rax,8), %xmm0
	movsd	-1648(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -1632(%rbp)
	movl	-1676(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	movsd	-656(%rbp,%rax,8), %xmm0
	movsd	-1632(%rbp), %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-1704(%rbp), %xmm2
	movl	-1676(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	movsd	-336(%rbp,%rax,8), %xmm1
	mulsd	-1728(%rbp), %xmm1
	addsd	%xmm2, %xmm1
	movl	-1676(%rbp), %eax
	addl	%eax, %eax
	subsd	%xmm1, %xmm0
	movl	%eax, %eax
	movsd	%xmm0, -656(%rbp,%rax,8)
	movsd	-1632(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-1704(%rbp), %xmm1
	movl	-1676(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, %eax
	movsd	-336(%rbp,%rax,8), %xmm0
	mulsd	-1728(%rbp), %xmm0
	movl	-1676(%rbp), %eax
	addl	%eax, %eax
	addsd	%xmm1, %xmm0
	movl	%eax, %eax
	movsd	%xmm0, -336(%rbp,%rax,8)
	movsd	-1648(%rbp), %xmm0
	mulsd	-1720(%rbp), %xmm0
	movsd	%xmm0, -1632(%rbp)
	movl	-1676(%rbp), %eax
	addl	%eax, %eax
	addl	$1, %eax
	movl	%eax, %eax
	movsd	-656(%rbp,%rax,8), %xmm0
	movsd	-1632(%rbp), %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-1704(%rbp), %xmm2
	movl	-1676(%rbp), %eax
	addl	%eax, %eax
	addl	$1, %eax
	movl	%eax, %eax
	movsd	-336(%rbp,%rax,8), %xmm1
	mulsd	-1728(%rbp), %xmm1
	addsd	%xmm2, %xmm1
	movl	-1676(%rbp), %eax
	addl	%eax, %eax
	addl	$1, %eax
	subsd	%xmm1, %xmm0
	movl	%eax, %eax
	movsd	%xmm0, -656(%rbp,%rax,8)
	movsd	-1632(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-1704(%rbp), %xmm1
	movl	-1676(%rbp), %eax
	addl	%eax, %eax
	addl	$1, %eax
	movl	%eax, %eax
	movsd	-336(%rbp,%rax,8), %xmm0
	mulsd	-1728(%rbp), %xmm0
	movl	-1676(%rbp), %eax
	addl	%eax, %eax
	addl	$1, %eax
	addsd	%xmm1, %xmm0
	movl	%eax, %eax
	movsd	%xmm0, -336(%rbp,%rax,8)
	addl	$1, -1676(%rbp)
.L25:
	cmpl	$19, -1676(%rbp)
	jbe	.L26
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -1664(%rbp)
	addl	$1, -1680(%rbp)
.L22:
	cmpl	$19, -1680(%rbp)
	jbe	.L27
	addl	$1, -1684(%rbp)
	leaq	-336(%rbp), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	fillArrayNull
	leaq	-1136(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	fillArrayNull
	movq	-1672(%rbp), %rdx
	movl	-1684(%rbp), %eax
	movq	%rdx, %xmm0
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	libmin_printf@PLT
.L21:
	movsd	-1672(%rbp), %xmm0
	comisd	-1712(%rbp), %xmm0
	jbe	.L28
	cmpl	$9, -1684(%rbp)
	jbe	.L30
.L28:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L32
	call	__stack_chk_fail@PLT
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	train, .-train
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
	movl	$42, %edi
	call	libmin_srand@PLT
	movsd	.LC7(%rip), %xmm2
	movsd	.LC1(%rip), %xmm1
	movsd	.LC8(%rip), %xmm0
	movq	.LC9(%rip), %rax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	train
	call	libmin_success@PLT
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.rodata
	.align 16
.LC0:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	-4194304
	.long	1105199103
	.align 8
.LC3:
	.long	0
	.long	1071644672
	.align 8
.LC4:
	.long	0
	.long	0
	.align 8
.LC5:
	.long	1374389535
	.long	1074339512
	.align 8
.LC7:
	.long	-1717986918
	.long	1071225241
	.align 8
.LC8:
	.long	1202590843
	.long	1065646817
	.align 8
.LC9:
	.long	1202590843
	.long	1064598241
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
