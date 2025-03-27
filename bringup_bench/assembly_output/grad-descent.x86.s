	.file	"grad-descent.c"
	.text
	.globl	L
	.data
	.align 8
	.type	L, @object
	.size	L, 8
L:
	.long	-755914244
	.long	1062232653
	.globl	Y
	.align 32
	.type	Y, @object
	.size	Y, 400
Y:
	.long	0
	.long	1078722560
	.long	0
	.long	1077149696
	.long	0
	.long	1083357184
	.long	0
	.long	1075970048
	.long	0
	.long	1077805056
	.long	0
	.long	1077018624
	.long	0
	.long	1076232192
	.long	0
	.long	1078591488
	.long	0
	.long	1083621376
	.long	0
	.long	1075838976
	.long	0
	.long	1076363264
	.long	0
	.long	1079083008
	.long	0
	.long	1079050240
	.long	0
	.long	1077018624
	.long	0
	.long	1088483008
	.long	0
	.long	0
	.long	0
	.long	1078558720
	.long	0
	.long	1080516608
	.long	0
	.long	1080401920
	.long	0
	.long	1081479168
	.long	0
	.long	1086881152
	.long	0
	.long	1081016320
	.long	0
	.long	1080631296
	.long	0
	.long	1076953088
	.long	0
	.long	1077608448
	.long	0
	.long	1075052544
	.long	0
	.long	1077149696
	.long	0
	.long	1076756480
	.long	0
	.long	1083787264
	.long	0
	.long	1083963392
	.long	0
	.long	1081888768
	.long	0
	.long	1084431360
	.long	0
	.long	1078231040
	.long	0
	.long	1074266112
	.long	0
	.long	1077411840
	.long	0
	.long	1078034432
	.long	0
	.long	1077411840
	.long	0
	.long	1080279040
	.long	0
	.long	1077739520
	.long	0
	.long	1085509888
	.long	0
	.long	1079328768
	.long	0
	.long	1085559040
	.long	0
	.long	1075576832
	.long	0
	.long	0
	.long	0
	.long	1084762624
	.long	0
	.long	1077215232
	.long	0
	.long	1075314688
	.long	0
	.long	1081741312
	.long	0
	.long	1083236352
	.long	0
	.long	1076232192
	.globl	X
	.align 32
	.type	X, @object
	.size	X, 400
X:
	.long	858993459
	.long	1075917619
	.long	1717986918
	.long	1075734118
	.long	1717986918
	.long	1076127334
	.long	0
	.long	1076428800
	.long	0
	.long	1076756480
	.long	1717986918
	.long	1077831270
	.long	0
	.long	1074528256
	.long	858993459
	.long	1075131187
	.long	0
	.long	1071644672
	.long	858993459
	.long	1075786547
	.long	858993459
	.long	1075655475
	.long	858993459
	.long	1076966195
	.long	0
	.long	1076101120
	.long	-858993459
	.long	1076972748
	.long	0
	.long	1075838976
	.long	1717986918
	.long	1073112678
	.long	-858993459
	.long	1075367116
	.long	858993459
	.long	1074869043
	.long	-858993459
	.long	1077857484
	.long	1717986918
	.long	1076192870
	.long	-1717986918
	.long	1075288473
	.long	1717986918
	.long	1073112678
	.long	-858993459
	.long	1076088012
	.long	858993459
	.long	1077261107
	.long	858993459
	.long	1075000115
	.long	858993459
	.long	1078080307
	.long	-858993459
	.long	1076907212
	.long	0
	.long	1076363264
	.long	1717986918
	.long	1075078758
	.long	-858993459
	.long	1073007820
	.long	0
	.long	1074528256
	.long	858993459
	.long	1075262259
	.long	-858993459
	.long	1075367116
	.long	1717986918
	.long	1075996262
	.long	1717986918
	.long	1078371942
	.long	858993459
	.long	1075655475
	.long	-858993459
	.long	1077824716
	.long	0
	.long	1077313536
	.long	858993459
	.long	1076507443
	.long	858993459
	.long	1076704051
	.long	-858993459
	.long	1075367116
	.long	0
	.long	1075183616
	.long	-858993459
	.long	1077824716
	.long	-858993459
	.long	1074842828
	.long	858993459
	.long	1075917619
	.long	858993459
	.long	1075655475
	.long	-858993459
	.long	1076350156
	.long	858993459
	.long	1075852083
	.long	858993459
	.long	1071854387
	.long	0
	.long	1076297728
	.text
	.globl	derivateWRTWeight
	.type	derivateWRTWeight, @function
derivateWRTWeight:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L2
.L3:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	X(%rip), %rax
	movsd	(%rdx,%rax), %xmm2
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	Y(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	X(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	mulsd	-24(%rbp), %xmm1
	addsd	-32(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$1, -12(%rbp)
.L2:
	cmpl	$49, -12(%rbp)
	jle	.L3
	movsd	-8(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	derivateWRTWeight, .-derivateWRTWeight
	.globl	derivateWRTBias
	.type	derivateWRTBias, @function
derivateWRTBias:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L6
.L7:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	Y(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	X(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	mulsd	-24(%rbp), %xmm1
	addsd	-32(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$1, -12(%rbp)
.L6:
	cmpl	$49, -12(%rbp)
	jle	.L7
	movsd	-8(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	derivateWRTBias, .-derivateWRTBias
	.globl	gradientDescent
	.type	gradientDescent, @function
gradientDescent:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L10
.L11:
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm2
	movsd	%xmm2, -40(%rbp)
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	derivateWRTWeight
	movsd	L(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm3
	movsd	%xmm3, -40(%rbp)
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	derivateWRTBias
	movsd	L(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	addl	$1, -4(%rbp)
.L10:
	cmpl	$199, -4(%rbp)
	jbe	.L11
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	gradientDescent, .-gradientDescent
	.section	.rodata
	.align 8
.LC3:
	.string	"The function is: %.4lfx + %.4lf\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gradientDescent
	movsd	-16(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	-1073741824
	.align 8
.LC2:
	.long	0
	.long	1078525952
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
