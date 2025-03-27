	.file	"libmin_rempio2.c"
	.text
	.section	.rodata
	.align 16
	.type	init_jk, @object
	.size	init_jk, 16
init_jk:
	.long	3
	.long	4
	.long	4
	.long	6
	.align 32
	.type	ipio2, @object
	.size	ipio2, 264
ipio2:
	.long	10680707
	.long	7228996
	.long	1387004
	.long	2578385
	.long	16069853
	.long	12639074
	.long	9804092
	.long	4427841
	.long	16666979
	.long	11263675
	.long	12935607
	.long	2387514
	.long	4345298
	.long	14681673
	.long	3074569
	.long	13734428
	.long	16653803
	.long	1880361
	.long	10960616
	.long	8533493
	.long	3062596
	.long	8710556
	.long	7349940
	.long	6258241
	.long	3772886
	.long	3769171
	.long	3798172
	.long	8675211
	.long	12450088
	.long	3874808
	.long	9961438
	.long	366607
	.long	15675153
	.long	9132554
	.long	7151469
	.long	3571407
	.long	2607881
	.long	12013382
	.long	4155038
	.long	6285869
	.long	7677882
	.long	13102053
	.long	15825725
	.long	473591
	.long	9065106
	.long	15363067
	.long	6271263
	.long	9264392
	.long	5636912
	.long	4652155
	.long	7056368
	.long	13614112
	.long	10155062
	.long	1944035
	.long	9527646
	.long	15080200
	.long	6658437
	.long	6231200
	.long	6832269
	.long	16767104
	.long	5075751
	.long	3212806
	.long	1398474
	.long	7579849
	.long	6349435
	.long	12618859
	.align 32
	.type	PIo2, @object
	.size	PIo2, 64
PIo2:
	.long	1073741824
	.long	1073291771
	.long	0
	.long	1047807021
	.long	-2147483648
	.long	1022903960
	.long	1610612736
	.long	997772369
	.long	-2147483648
	.long	972036995
	.long	1073741824
	.long	947528992
	.long	-2147483648
	.long	920879650
	.long	0
	.long	896135965
	.text
	.globl	__rem_pio2_large
	.type	__rem_pio2_large, @function
__rem_pio2_large:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$688, %rsp
	movq	%rdi, -664(%rbp)
	movq	%rsi, -672(%rbp)
	movl	%edx, -676(%rbp)
	movl	%ecx, -680(%rbp)
	movl	%r8d, -684(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-684(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	init_jk(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -608(%rbp)
	movl	-608(%rbp), %eax
	movl	%eax, -604(%rbp)
	movl	-680(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -600(%rbp)
	movl	-676(%rbp), %eax
	subl	$3, %eax
	movslq	%eax, %rdx
	imulq	$715827883, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$2, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -640(%rbp)
	cmpl	$0, -640(%rbp)
	jns	.L2
	movl	$0, -640(%rbp)
.L2:
	movl	-640(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sall	$2, %edx
	subl	%edx, %eax
	sall	$3, %eax
	movl	%eax, %edx
	movl	-676(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -616(%rbp)
	movl	-640(%rbp), %eax
	subl	-600(%rbp), %eax
	movl	%eax, -624(%rbp)
	movl	-600(%rbp), %edx
	movl	-608(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -596(%rbp)
	movl	$0, -628(%rbp)
	jmp	.L3
.L6:
	cmpl	$0, -624(%rbp)
	js	.L4
	movl	-624(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	ipio2(%rip), %rax
	movl	(%rdx,%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	jmp	.L5
.L4:
	pxor	%xmm0, %xmm0
.L5:
	movl	-628(%rbp), %eax
	cltq
	movsd	%xmm0, -496(%rbp,%rax,8)
	addl	$1, -628(%rbp)
	addl	$1, -624(%rbp)
.L3:
	movl	-628(%rbp), %eax
	cmpl	-596(%rbp), %eax
	jle	.L6
	movl	$0, -628(%rbp)
	jmp	.L7
.L10:
	movl	$0, -624(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -584(%rbp)
	jmp	.L8
.L9:
	movl	-624(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-664(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-600(%rbp), %edx
	movl	-628(%rbp), %eax
	addl	%edx, %eax
	subl	-624(%rbp), %eax
	cltq
	movsd	-496(%rbp,%rax,8), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-584(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -584(%rbp)
	addl	$1, -624(%rbp)
.L8:
	movl	-624(%rbp), %eax
	cmpl	-600(%rbp), %eax
	jle	.L9
	movl	-628(%rbp), %eax
	cltq
	movsd	-584(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp,%rax,8)
	addl	$1, -628(%rbp)
.L7:
	movl	-628(%rbp), %eax
	cmpl	-608(%rbp), %eax
	jle	.L10
	movl	-608(%rbp), %eax
	movl	%eax, -644(%rbp)
.L11:
	movl	$0, -628(%rbp)
	movl	-644(%rbp), %eax
	movl	%eax, -624(%rbp)
	movl	-644(%rbp), %eax
	cltq
	movsd	-176(%rbp,%rax,8), %xmm0
	movsd	%xmm0, -592(%rbp)
	jmp	.L12
.L13:
	movsd	-592(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -584(%rbp)
	movsd	-584(%rbp), %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-592(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %edx
	movl	-628(%rbp), %eax
	cltq
	movl	%edx, -576(%rbp,%rax,4)
	movl	-624(%rbp), %eax
	subl	$1, %eax
	cltq
	movsd	-176(%rbp,%rax,8), %xmm0
	movsd	-584(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -592(%rbp)
	addl	$1, -628(%rbp)
	subl	$1, -624(%rbp)
.L12:
	cmpl	$0, -624(%rbp)
	jg	.L13
	movl	-616(%rbp), %edx
	movq	-592(%rbp), %rax
	movl	%edx, %edi
	movq	%rax, %xmm0
	call	libmin_scalbn@PLT
	movq	%xmm0, %rax
	movq	%rax, -592(%rbp)
	movsd	-592(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	libmin_floor@PLT
	movsd	.LC4(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-592(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -592(%rbp)
	movsd	-592(%rbp), %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -632(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-632(%rbp), %xmm1
	movsd	-592(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -592(%rbp)
	movl	$0, -612(%rbp)
	cmpl	$0, -616(%rbp)
	jle	.L14
	movl	-644(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-576(%rbp,%rax,4), %edx
	movl	$24, %eax
	subl	-616(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -628(%rbp)
	movl	-628(%rbp), %eax
	addl	%eax, -632(%rbp)
	movl	-644(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-576(%rbp,%rax,4), %edx
	movl	$24, %eax
	subl	-616(%rbp), %eax
	movl	-628(%rbp), %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	movl	-644(%rbp), %ecx
	subl	$1, %ecx
	subl	%eax, %edx
	movslq	%ecx, %rax
	movl	%edx, -576(%rbp,%rax,4)
	movl	-644(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-576(%rbp,%rax,4), %edx
	movl	$23, %eax
	subl	-616(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -612(%rbp)
	jmp	.L15
.L14:
	cmpl	$0, -616(%rbp)
	jne	.L16
	movl	-644(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-576(%rbp,%rax,4), %eax
	sarl	$23, %eax
	movl	%eax, -612(%rbp)
	jmp	.L15
.L16:
	movsd	-592(%rbp), %xmm0
	comisd	.LC5(%rip), %xmm0
	jb	.L15
	movl	$2, -612(%rbp)
.L15:
	cmpl	$0, -612(%rbp)
	jle	.L18
	addl	$1, -632(%rbp)
	movl	$0, -636(%rbp)
	movl	$0, -628(%rbp)
	jmp	.L19
.L22:
	movl	-628(%rbp), %eax
	cltq
	movl	-576(%rbp,%rax,4), %eax
	movl	%eax, -624(%rbp)
	cmpl	$0, -636(%rbp)
	jne	.L20
	cmpl	$0, -624(%rbp)
	je	.L21
	movl	$1, -636(%rbp)
	movl	$16777216, %eax
	subl	-624(%rbp), %eax
	movl	%eax, %edx
	movl	-628(%rbp), %eax
	cltq
	movl	%edx, -576(%rbp,%rax,4)
	jmp	.L21
.L20:
	movl	$16777215, %eax
	subl	-624(%rbp), %eax
	movl	%eax, %edx
	movl	-628(%rbp), %eax
	cltq
	movl	%edx, -576(%rbp,%rax,4)
.L21:
	addl	$1, -628(%rbp)
.L19:
	movl	-628(%rbp), %eax
	cmpl	-644(%rbp), %eax
	jl	.L22
	cmpl	$0, -616(%rbp)
	jle	.L23
	cmpl	$1, -616(%rbp)
	je	.L24
	cmpl	$2, -616(%rbp)
	je	.L25
	jmp	.L23
.L24:
	movl	-644(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-576(%rbp,%rax,4), %eax
	movl	-644(%rbp), %edx
	leal	-1(%rdx), %ecx
	andl	$8388607, %eax
	movl	%eax, %edx
	movslq	%ecx, %rax
	movl	%edx, -576(%rbp,%rax,4)
	jmp	.L23
.L25:
	movl	-644(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-576(%rbp,%rax,4), %eax
	movl	-644(%rbp), %edx
	leal	-1(%rdx), %ecx
	andl	$4194303, %eax
	movl	%eax, %edx
	movslq	%ecx, %rax
	movl	%edx, -576(%rbp,%rax,4)
	nop
.L23:
	cmpl	$2, -612(%rbp)
	jne	.L18
	movsd	.LC6(%rip), %xmm0
	subsd	-592(%rbp), %xmm0
	movsd	%xmm0, -592(%rbp)
	cmpl	$0, -636(%rbp)
	je	.L18
	movl	-616(%rbp), %edx
	movq	.LC6(%rip), %rax
	movl	%edx, %edi
	movq	%rax, %xmm0
	call	libmin_scalbn@PLT
	movapd	%xmm0, %xmm1
	movsd	-592(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -592(%rbp)
.L18:
	pxor	%xmm0, %xmm0
	ucomisd	-592(%rbp), %xmm0
	jp	.L26
	pxor	%xmm0, %xmm0
	ucomisd	-592(%rbp), %xmm0
	jne	.L26
	movl	$0, -624(%rbp)
	movl	-644(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -628(%rbp)
	jmp	.L28
.L29:
	movl	-628(%rbp), %eax
	cltq
	movl	-576(%rbp,%rax,4), %eax
	orl	%eax, -624(%rbp)
	subl	$1, -628(%rbp)
.L28:
	movl	-628(%rbp), %eax
	cmpl	-608(%rbp), %eax
	jge	.L29
	cmpl	$0, -624(%rbp)
	jne	.L26
	movl	$1, -620(%rbp)
	jmp	.L30
.L31:
	addl	$1, -620(%rbp)
.L30:
	movl	-608(%rbp), %eax
	subl	-620(%rbp), %eax
	cltq
	movl	-576(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L31
	movl	-644(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -628(%rbp)
	jmp	.L32
.L35:
	movl	-640(%rbp), %edx
	movl	-628(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	ipio2(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-600(%rbp), %edx
	movl	-628(%rbp), %eax
	addl	%edx, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	cltq
	movsd	%xmm0, -496(%rbp,%rax,8)
	movl	$0, -624(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -584(%rbp)
	jmp	.L33
.L34:
	movl	-624(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-664(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-600(%rbp), %edx
	movl	-628(%rbp), %eax
	addl	%edx, %eax
	subl	-624(%rbp), %eax
	cltq
	movsd	-496(%rbp,%rax,8), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-584(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -584(%rbp)
	addl	$1, -624(%rbp)
.L33:
	movl	-624(%rbp), %eax
	cmpl	-600(%rbp), %eax
	jle	.L34
	movl	-628(%rbp), %eax
	cltq
	movsd	-584(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp,%rax,8)
	addl	$1, -628(%rbp)
.L32:
	movl	-644(%rbp), %edx
	movl	-620(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -628(%rbp)
	jle	.L35
	movl	-620(%rbp), %eax
	addl	%eax, -644(%rbp)
	jmp	.L11
.L26:
	pxor	%xmm0, %xmm0
	ucomisd	-592(%rbp), %xmm0
	jp	.L36
	pxor	%xmm0, %xmm0
	ucomisd	-592(%rbp), %xmm0
	jne	.L36
	subl	$1, -644(%rbp)
	subl	$24, -616(%rbp)
	jmp	.L38
.L39:
	subl	$1, -644(%rbp)
	subl	$24, -616(%rbp)
.L38:
	movl	-644(%rbp), %eax
	cltq
	movl	-576(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L39
	jmp	.L40
.L36:
	movl	-616(%rbp), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-592(%rbp), %rax
	movl	%edx, %edi
	movq	%rax, %xmm0
	call	libmin_scalbn@PLT
	movq	%xmm0, %rax
	movq	%rax, -592(%rbp)
	movsd	-592(%rbp), %xmm0
	comisd	.LC2(%rip), %xmm0
	jb	.L79
	movsd	-592(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -584(%rbp)
	movsd	-584(%rbp), %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-592(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %edx
	movl	-644(%rbp), %eax
	cltq
	movl	%edx, -576(%rbp,%rax,4)
	addl	$1, -644(%rbp)
	addl	$24, -616(%rbp)
	movsd	-584(%rbp), %xmm0
	cvttsd2sil	%xmm0, %edx
	movl	-644(%rbp), %eax
	cltq
	movl	%edx, -576(%rbp,%rax,4)
	jmp	.L40
.L79:
	movsd	-592(%rbp), %xmm0
	cvttsd2sil	%xmm0, %edx
	movl	-644(%rbp), %eax
	cltq
	movl	%edx, -576(%rbp,%rax,4)
.L40:
	movl	-616(%rbp), %edx
	movq	.LC6(%rip), %rax
	movl	%edx, %edi
	movq	%rax, %xmm0
	call	libmin_scalbn@PLT
	movq	%xmm0, %rax
	movq	%rax, -584(%rbp)
	movl	-644(%rbp), %eax
	movl	%eax, -628(%rbp)
	jmp	.L43
.L44:
	movl	-628(%rbp), %eax
	cltq
	movl	-576(%rbp,%rax,4), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	-584(%rbp), %xmm0
	movl	-628(%rbp), %eax
	cltq
	movsd	%xmm0, -176(%rbp,%rax,8)
	movsd	-584(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -584(%rbp)
	subl	$1, -628(%rbp)
.L43:
	cmpl	$0, -628(%rbp)
	jns	.L44
	movl	-644(%rbp), %eax
	movl	%eax, -628(%rbp)
	jmp	.L45
.L49:
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -584(%rbp)
	movl	$0, -620(%rbp)
	jmp	.L46
.L48:
	movl	-620(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	PIo2(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movl	-628(%rbp), %edx
	movl	-620(%rbp), %eax
	addl	%edx, %eax
	cltq
	movsd	-176(%rbp,%rax,8), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-584(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -584(%rbp)
	addl	$1, -620(%rbp)
.L46:
	movl	-620(%rbp), %eax
	cmpl	-604(%rbp), %eax
	jg	.L47
	movl	-644(%rbp), %eax
	subl	-628(%rbp), %eax
	cmpl	%eax, -620(%rbp)
	jle	.L48
.L47:
	movl	-644(%rbp), %eax
	subl	-628(%rbp), %eax
	cltq
	movsd	-584(%rbp), %xmm0
	movsd	%xmm0, -336(%rbp,%rax,8)
	subl	$1, -628(%rbp)
.L45:
	cmpl	$0, -628(%rbp)
	jns	.L49
	cmpl	$3, -684(%rbp)
	je	.L50
	cmpl	$3, -684(%rbp)
	jg	.L51
	cmpl	$0, -684(%rbp)
	je	.L52
	cmpl	$0, -684(%rbp)
	js	.L51
	movl	-684(%rbp), %eax
	subl	$1, %eax
	cmpl	$1, %eax
	ja	.L51
	jmp	.L80
.L52:
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -584(%rbp)
	movl	-644(%rbp), %eax
	movl	%eax, -628(%rbp)
	jmp	.L54
.L55:
	movl	-628(%rbp), %eax
	cltq
	movsd	-336(%rbp,%rax,8), %xmm0
	movsd	-584(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -584(%rbp)
	subl	$1, -628(%rbp)
.L54:
	cmpl	$0, -628(%rbp)
	jns	.L55
	cmpl	$0, -612(%rbp)
	je	.L56
	movsd	-584(%rbp), %xmm0
	movq	.LC7(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	jmp	.L57
.L56:
	movsd	-584(%rbp), %xmm0
.L57:
	movq	-672(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.L51
.L80:
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -584(%rbp)
	movl	-644(%rbp), %eax
	movl	%eax, -628(%rbp)
	jmp	.L58
.L59:
	movl	-628(%rbp), %eax
	cltq
	movsd	-336(%rbp,%rax,8), %xmm0
	movsd	-584(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -584(%rbp)
	subl	$1, -628(%rbp)
.L58:
	cmpl	$0, -628(%rbp)
	jns	.L59
	cmpl	$0, -612(%rbp)
	je	.L60
	movsd	-584(%rbp), %xmm0
	movq	.LC7(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	jmp	.L61
.L60:
	movsd	-584(%rbp), %xmm0
.L61:
	movq	-672(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-336(%rbp), %xmm0
	subsd	-584(%rbp), %xmm0
	movsd	%xmm0, -584(%rbp)
	movl	$1, -628(%rbp)
	jmp	.L62
.L63:
	movl	-628(%rbp), %eax
	cltq
	movsd	-336(%rbp,%rax,8), %xmm0
	movsd	-584(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -584(%rbp)
	addl	$1, -628(%rbp)
.L62:
	movl	-628(%rbp), %eax
	cmpl	-644(%rbp), %eax
	jle	.L63
	cmpl	$0, -612(%rbp)
	je	.L64
	movsd	-584(%rbp), %xmm0
	movq	.LC7(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	jmp	.L65
.L64:
	movsd	-584(%rbp), %xmm0
.L65:
	movq	-672(%rbp), %rax
	addq	$8, %rax
	movsd	%xmm0, (%rax)
	jmp	.L51
.L50:
	movl	-644(%rbp), %eax
	movl	%eax, -628(%rbp)
	jmp	.L66
.L67:
	movl	-628(%rbp), %eax
	subl	$1, %eax
	cltq
	movsd	-336(%rbp,%rax,8), %xmm1
	movl	-628(%rbp), %eax
	cltq
	movsd	-336(%rbp,%rax,8), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -584(%rbp)
	movl	-628(%rbp), %eax
	cltq
	movsd	-336(%rbp,%rax,8), %xmm1
	movl	-628(%rbp), %eax
	subl	$1, %eax
	cltq
	movsd	-336(%rbp,%rax,8), %xmm0
	subsd	-584(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movl	-628(%rbp), %eax
	cltq
	movsd	%xmm0, -336(%rbp,%rax,8)
	movl	-628(%rbp), %eax
	subl	$1, %eax
	cltq
	movsd	-584(%rbp), %xmm0
	movsd	%xmm0, -336(%rbp,%rax,8)
	subl	$1, -628(%rbp)
.L66:
	cmpl	$0, -628(%rbp)
	jg	.L67
	movl	-644(%rbp), %eax
	movl	%eax, -628(%rbp)
	jmp	.L68
.L69:
	movl	-628(%rbp), %eax
	subl	$1, %eax
	cltq
	movsd	-336(%rbp,%rax,8), %xmm1
	movl	-628(%rbp), %eax
	cltq
	movsd	-336(%rbp,%rax,8), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -584(%rbp)
	movl	-628(%rbp), %eax
	cltq
	movsd	-336(%rbp,%rax,8), %xmm1
	movl	-628(%rbp), %eax
	subl	$1, %eax
	cltq
	movsd	-336(%rbp,%rax,8), %xmm0
	subsd	-584(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movl	-628(%rbp), %eax
	cltq
	movsd	%xmm0, -336(%rbp,%rax,8)
	movl	-628(%rbp), %eax
	subl	$1, %eax
	cltq
	movsd	-584(%rbp), %xmm0
	movsd	%xmm0, -336(%rbp,%rax,8)
	subl	$1, -628(%rbp)
.L68:
	cmpl	$1, -628(%rbp)
	jg	.L69
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -584(%rbp)
	movl	-644(%rbp), %eax
	movl	%eax, -628(%rbp)
	jmp	.L70
.L71:
	movl	-628(%rbp), %eax
	cltq
	movsd	-336(%rbp,%rax,8), %xmm0
	movsd	-584(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -584(%rbp)
	subl	$1, -628(%rbp)
.L70:
	cmpl	$1, -628(%rbp)
	jg	.L71
	cmpl	$0, -612(%rbp)
	jne	.L72
	movsd	-336(%rbp), %xmm0
	movq	-672(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-672(%rbp), %rax
	addq	$8, %rax
	movsd	-328(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	movq	-672(%rbp), %rax
	addq	$16, %rax
	movsd	-584(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L51
.L72:
	movsd	-336(%rbp), %xmm0
	movq	.LC7(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	-672(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-328(%rbp), %xmm0
	movq	-672(%rbp), %rax
	addq	$8, %rax
	movq	.LC7(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movq	-672(%rbp), %rax
	addq	$16, %rax
	movsd	-584(%rbp), %xmm0
	movq	.LC7(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
.L51:
	movl	-632(%rbp), %eax
	andl	$7, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L74
	call	__stack_chk_fail@PLT
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	__rem_pio2_large, .-__rem_pio2_large
	.section	.rodata
	.align 8
	.type	toint, @object
	.size	toint, 8
toint:
	.long	0
	.long	1127743488
	.align 8
	.type	pio4, @object
	.size	pio4, 8
pio4:
	.long	1413754136
	.long	1072243195
	.align 8
	.type	invpio2, @object
	.size	invpio2, 8
invpio2:
	.long	1841940611
	.long	1071931184
	.align 8
	.type	pio2_1, @object
	.size	pio2_1, 8
pio2_1:
	.long	1413480448
	.long	1073291771
	.align 8
	.type	pio2_1t, @object
	.size	pio2_1t, 8
pio2_1t:
	.long	442655537
	.long	1037087841
	.align 8
	.type	pio2_2, @object
	.size	pio2_2, 8
pio2_2:
	.long	442499072
	.long	1037087841
	.align 8
	.type	pio2_2t, @object
	.size	pio2_2t, 8
pio2_2t:
	.long	771977331
	.long	1000544650
	.align 8
	.type	pio2_3, @object
	.size	pio2_3, 8
pio2_3:
	.long	771751936
	.long	1000544650
	.align 8
	.type	pio2_3t, @object
	.size	pio2_3t, 8
pio2_3t:
	.long	622873025
	.long	964395930
	.text
	.globl	__rem_pio2
	.type	__rem_pio2, @function
__rem_pio2:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movsd	%xmm0, -136(%rbp)
	movq	%rdi, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-136(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movq	-96(%rbp), %rax
	shrq	$63, %rax
	movl	%eax, -112(%rbp)
	movq	-96(%rbp), %rax
	shrq	$32, %rax
	andl	$2147483647, %eax
	movl	%eax, -108(%rbp)
	cmpl	$1074752122, -108(%rbp)
	ja	.L82
	movl	-108(%rbp), %eax
	andl	$1048575, %eax
	cmpl	$598523, %eax
	je	.L114
	cmpl	$1073928572, -108(%rbp)
	ja	.L85
	cmpl	$0, -112(%rbp)
	jne	.L86
	movsd	.LC8(%rip), %xmm1
	movsd	-136(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	.LC9(%rip), %xmm1
	movsd	-88(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movq	-144(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-144(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	-88(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	.LC9(%rip), %xmm1
	movq	-144(%rbp), %rax
	addq	$8, %rax
	subsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	$1, %eax
	jmp	.L108
.L86:
	movsd	.LC8(%rip), %xmm0
	movsd	-136(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	.LC9(%rip), %xmm0
	addsd	-88(%rbp), %xmm0
	movq	-144(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-144(%rbp), %rax
	movsd	(%rax), %xmm2
	movsd	-88(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	.LC9(%rip), %xmm0
	movq	-144(%rbp), %rax
	addq	$8, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	$-1, %eax
	jmp	.L108
.L85:
	cmpl	$0, -112(%rbp)
	jne	.L88
	movsd	.LC8(%rip), %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	movsd	-136(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	.LC9(%rip), %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	movsd	-88(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movq	-144(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-144(%rbp), %rax
	movsd	(%rax), %xmm2
	movsd	-88(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	.LC9(%rip), %xmm0
	movapd	%xmm0, %xmm2
	addsd	%xmm0, %xmm2
	movq	-144(%rbp), %rax
	addq	$8, %rax
	subsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	$2, %eax
	jmp	.L108
.L88:
	movsd	.LC8(%rip), %xmm0
	addsd	%xmm0, %xmm0
	movsd	-136(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	.LC9(%rip), %xmm0
	addsd	%xmm0, %xmm0
	addsd	-88(%rbp), %xmm0
	movq	-144(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-144(%rbp), %rax
	movsd	(%rax), %xmm2
	movsd	-88(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	.LC9(%rip), %xmm0
	addsd	%xmm0, %xmm0
	movq	-144(%rbp), %rax
	addq	$8, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	$-2, %eax
	jmp	.L108
.L82:
	cmpl	$1075594811, -108(%rbp)
	ja	.L89
	cmpl	$1075183036, -108(%rbp)
	ja	.L90
	cmpl	$1074977148, -108(%rbp)
	je	.L115
	cmpl	$0, -112(%rbp)
	jne	.L92
	movsd	.LC8(%rip), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-136(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	.LC9(%rip), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-88(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movq	-144(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-144(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	-88(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	.LC9(%rip), %xmm2
	movsd	.LC10(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	movq	-144(%rbp), %rax
	addq	$8, %rax
	subsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	$3, %eax
	jmp	.L108
.L92:
	movsd	.LC8(%rip), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-136(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	.LC9(%rip), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	-88(%rbp), %xmm0
	movq	-144(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-144(%rbp), %rax
	movsd	(%rax), %xmm2
	movsd	-88(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	.LC9(%rip), %xmm2
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	movq	-144(%rbp), %rax
	addq	$8, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	$-3, %eax
	jmp	.L108
.L90:
	cmpl	$1075388923, -108(%rbp)
	je	.L116
	cmpl	$0, -112(%rbp)
	jne	.L94
	movsd	.LC8(%rip), %xmm1
	movsd	.LC11(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-136(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	.LC9(%rip), %xmm1
	movsd	.LC11(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-88(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movq	-144(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-144(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	-88(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	.LC9(%rip), %xmm2
	movsd	.LC11(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	movq	-144(%rbp), %rax
	addq	$8, %rax
	subsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	$4, %eax
	jmp	.L108
.L94:
	movsd	.LC8(%rip), %xmm1
	movsd	.LC11(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-136(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	.LC9(%rip), %xmm1
	movsd	.LC11(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	-88(%rbp), %xmm0
	movq	-144(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-144(%rbp), %rax
	movsd	(%rax), %xmm2
	movsd	-88(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	.LC9(%rip), %xmm2
	movsd	.LC11(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	movq	-144(%rbp), %rax
	addq	$8, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	$-4, %eax
	jmp	.L108
.L89:
	cmpl	$1094263290, -108(%rbp)
	ja	.L95
	jmp	.L84
.L114:
	nop
	jmp	.L84
.L115:
	nop
	jmp	.L84
.L116:
	nop
.L84:
	movsd	.LC12(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-136(%rbp), %xmm1
	movsd	.LC13(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	.LC13(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -120(%rbp)
	movsd	.LC8(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	-136(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	.LC9(%rip), %xmm0
	movsd	-64(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-72(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	-80(%rbp), %xmm1
	movsd	.LC14(%rip), %xmm0
	movq	.LC7(%rip), %xmm2
	xorpd	%xmm2, %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L113
	subl	$1, -120(%rbp)
	movsd	-64(%rbp), %xmm0
	movsd	.LC6(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	.LC8(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	-136(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	.LC9(%rip), %xmm0
	movsd	-64(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	jmp	.L98
.L113:
	movsd	-72(%rbp), %xmm0
	subsd	-80(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L98
	addl	$1, -120(%rbp)
	movsd	-64(%rbp), %xmm1
	movsd	.LC6(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	.LC8(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	-136(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	.LC9(%rip), %xmm0
	movsd	-64(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
.L98:
	movsd	-72(%rbp), %xmm0
	subsd	-80(%rbp), %xmm0
	movq	-144(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-144(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -96(%rbp)
	movq	-96(%rbp), %rax
	shrq	$52, %rax
	andl	$2047, %eax
	movl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	shrl	$20, %eax
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	subl	-104(%rbp), %eax
	cmpl	$16, %eax
	jle	.L100
	movsd	-72(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	.LC15(%rip), %xmm0
	movsd	-64(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-56(%rbp), %xmm0
	subsd	-80(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	.LC16(%rip), %xmm0
	mulsd	-64(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1
	subsd	-72(%rbp), %xmm1
	subsd	-80(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-72(%rbp), %xmm0
	subsd	-80(%rbp), %xmm0
	movq	-144(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-144(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -96(%rbp)
	movq	-96(%rbp), %rax
	shrq	$52, %rax
	andl	$2047, %eax
	movl	%eax, -104(%rbp)
	movl	-100(%rbp), %eax
	subl	-104(%rbp), %eax
	cmpl	$49, %eax
	jle	.L100
	movsd	-72(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	.LC17(%rip), %xmm0
	movsd	-64(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-56(%rbp), %xmm0
	subsd	-80(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	.LC18(%rip), %xmm0
	mulsd	-64(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1
	subsd	-72(%rbp), %xmm1
	subsd	-80(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-72(%rbp), %xmm0
	subsd	-80(%rbp), %xmm0
	movq	-144(%rbp), %rax
	movsd	%xmm0, (%rax)
.L100:
	movq	-144(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	-72(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movq	-144(%rbp), %rax
	addq	$8, %rax
	subsd	-80(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	movl	-120(%rbp), %eax
	jmp	.L108
.L95:
	cmpl	$2146435071, -108(%rbp)
	jbe	.L101
	movq	-144(%rbp), %rax
	addq	$8, %rax
	movsd	-136(%rbp), %xmm0
	subsd	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	movsd	(%rax), %xmm0
	movq	-144(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$0, %eax
	jmp	.L108
.L101:
	movsd	-136(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movq	-96(%rbp), %rax
	movabsq	$4503599627370495, %rdx
	andq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movabsq	$4710765210229538816, %rdx
	orq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movsd	-96(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movl	$0, -116(%rbp)
	jmp	.L102
.L103:
	movsd	-88(%rbp), %xmm0
	cvttsd2sil	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movl	-116(%rbp), %eax
	cltq
	movsd	%xmm0, -32(%rbp,%rax,8)
	movl	-116(%rbp), %eax
	cltq
	movsd	-32(%rbp,%rax,8), %xmm2
	movsd	-88(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	addl	$1, -116(%rbp)
.L102:
	cmpl	$1, -116(%rbp)
	jle	.L103
	movl	-116(%rbp), %eax
	cltq
	movsd	-88(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp,%rax,8)
	jmp	.L104
.L105:
	subl	$1, -116(%rbp)
.L104:
	movl	-116(%rbp), %eax
	cltq
	movsd	-32(%rbp,%rax,8), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L112
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	je	.L105
.L112:
	movl	-116(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-108(%rbp), %eax
	shrl	$20, %eax
	leal	-1046(%rax), %edx
	leaq	-48(%rbp), %rsi
	leaq	-32(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	__rem_pio2_large
	movl	%eax, -120(%rbp)
	cmpl	$0, -112(%rbp)
	je	.L107
	movsd	-48(%rbp), %xmm0
	movq	.LC7(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	-144(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-40(%rbp), %xmm0
	movq	-144(%rbp), %rax
	addq	$8, %rax
	movq	.LC7(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	movl	-120(%rbp), %eax
	negl	%eax
	jmp	.L108
.L107:
	movsd	-48(%rbp), %xmm0
	movq	-144(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-144(%rbp), %rax
	addq	$8, %rax
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	movl	-120(%rbp), %eax
.L108:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L109
	call	__stack_chk_fail@PLT
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	__rem_pio2, .-__rem_pio2
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1047527424
	.align 8
.LC2:
	.long	0
	.long	1097859072
	.align 8
.LC3:
	.long	0
	.long	1069547520
	.align 8
.LC4:
	.long	0
	.long	1075838976
	.align 8
.LC5:
	.long	0
	.long	1071644672
	.align 8
.LC6:
	.long	0
	.long	1072693248
	.align 16
.LC7:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC8:
	.long	1413480448
	.long	1073291771
	.align 8
.LC9:
	.long	442655537
	.long	1037087841
	.align 8
.LC10:
	.long	0
	.long	1074266112
	.align 8
.LC11:
	.long	0
	.long	1074790400
	.align 8
.LC12:
	.long	1841940611
	.long	1071931184
	.align 8
.LC13:
	.long	0
	.long	1127743488
	.align 8
.LC14:
	.long	1413754136
	.long	1072243195
	.align 8
.LC15:
	.long	442499072
	.long	1037087841
	.align 8
.LC16:
	.long	771977331
	.long	1000544650
	.align 8
.LC17:
	.long	771751936
	.long	1000544650
	.align 8
.LC18:
	.long	622873025
	.long	964395930
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
