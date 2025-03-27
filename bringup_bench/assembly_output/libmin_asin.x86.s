	.file	"libmin_asin.c"
	.text
	.section	.rodata
	.align 8
	.type	one, @object
	.size	one, 8
one:
	.long	0
	.long	1072693248
	.align 8
	.type	huge, @object
	.size	huge, 8
huge:
	.long	-2013235812
	.long	2117592124
	.align 8
	.type	pio2_hi, @object
	.size	pio2_hi, 8
pio2_hi:
	.long	1413754136
	.long	1073291771
	.align 8
	.type	pio2_lo, @object
	.size	pio2_lo, 8
pio2_lo:
	.long	856972295
	.long	1016178214
	.align 8
	.type	pio4_hi, @object
	.size	pio4_hi, 8
pio4_hi:
	.long	1413754136
	.long	1072243195
	.align 8
	.type	pS0, @object
	.size	pS0, 8
pS0:
	.long	1431655765
	.long	1069897045
	.align 8
	.type	pS1, @object
	.size	pS1, 8
pS1:
	.long	65761149
	.long	-1076570606
	.align 8
	.type	pS2, @object
	.size	pS2, 8
pS2:
	.long	243811413
	.long	1070186837
	.align 8
	.type	pS3, @object
	.size	pS3, 8
pS3:
	.long	-1251438789
	.long	-1079737816
	.align 8
	.type	pS4, @object
	.size	pS4, 8
pS4:
	.long	1963045512
	.long	1061810144
	.align 8
	.type	pS5, @object
	.size	pS5, 8
pS5:
	.long	234747657
	.long	1057111521
	.align 8
	.type	qS1, @object
	.size	qS1, 8
qS1:
	.long	478817611
	.long	-1073530329
	.align 8
	.type	qS2, @object
	.size	qS2, 8
qS2:
	.long	-1671853368
	.long	1073752805
	.align 8
	.type	qS3, @object
	.size	qS3, 8
qS3:
	.long	462225753
	.long	-1075444116
	.align 8
	.type	qS4, @object
	.size	qS4, 8
qS4:
	.long	-1322347902
	.long	1068742853
	.text
	.globl	libmin_asin
	.type	libmin_asin, @function
libmin_asin:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movsd	%xmm0, -88(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-88(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-64(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	andl	$2147483647, %eax
	movl	%eax, -72(%rbp)
	cmpl	$1072693247, -72(%rbp)
	jle	.L2
	movsd	-88(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	%eax, -68(%rbp)
	movl	-72(%rbp), %eax
	subl	$1072693248, %eax
	orl	-68(%rbp), %eax
	testl	%eax, %eax
	jne	.L3
	movsd	.LC1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-88(%rbp), %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	-88(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	jmp	.L4
.L3:
	movsd	-88(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm0, %xmm1
	movsd	-88(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	subsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	jmp	.L4
.L2:
	cmpl	$1071644671, -72(%rbp)
	jg	.L5
	cmpl	$1045430271, -72(%rbp)
	jg	.L6
	movsd	.LC3(%rip), %xmm0
	addsd	-88(%rbp), %xmm0
	movsd	.LC4(%rip), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L6
	movsd	-88(%rbp), %xmm0
	jmp	.L4
.L6:
	movsd	-88(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	.LC5(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-56(%rbp), %xmm1
	movsd	.LC6(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-56(%rbp), %xmm1
	movsd	.LC7(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-56(%rbp), %xmm1
	movsd	.LC8(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-56(%rbp), %xmm1
	movsd	.LC9(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-56(%rbp), %xmm1
	movsd	.LC10(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	-56(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	.LC11(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-56(%rbp), %xmm1
	movsd	.LC12(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-56(%rbp), %xmm1
	movsd	.LC13(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-56(%rbp), %xmm1
	movsd	.LC14(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-40(%rbp), %xmm0
	divsd	-32(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-88(%rbp), %xmm0
	mulsd	-48(%rbp), %xmm0
	addsd	-88(%rbp), %xmm0
	jmp	.L4
.L5:
	movsd	.LC4(%rip), %xmm4
	movsd	%xmm4, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movapd	%xmm0, %xmm1
	movsd	-96(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm1
	movsd	.LC15(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	.LC5(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-56(%rbp), %xmm1
	movsd	.LC6(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-56(%rbp), %xmm1
	movsd	.LC7(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-56(%rbp), %xmm1
	movsd	.LC8(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-56(%rbp), %xmm1
	movsd	.LC9(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-56(%rbp), %xmm1
	movsd	.LC10(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	-56(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	.LC11(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-56(%rbp), %xmm1
	movsd	.LC12(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-56(%rbp), %xmm1
	movsd	.LC13(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-56(%rbp), %xmm1
	movsd	.LC14(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-56(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %xmm0
	call	libmin_sqrt@PLT
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	cmpl	$1072640818, -72(%rbp)
	jle	.L8
	movsd	-40(%rbp), %xmm0
	divsd	-32(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	.LC1(%rip), %xmm1
	movsd	-24(%rbp), %xmm0
	mulsd	-48(%rbp), %xmm0
	addsd	-24(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm3
	movapd	%xmm0, %xmm2
	subsd	%xmm3, %xmm2
	subsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.L9
.L8:
	movsd	-24(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-64(%rbp), %rax
	movabsq	$-4294967296, %rdx
	andq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
	movsd	-64(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-56(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	-24(%rbp), %xmm1
	addsd	-48(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-40(%rbp), %xmm0
	divsd	-32(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-24(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-8(%rbp), %xmm1
	movsd	.LC2(%rip), %xmm2
	movsd	-16(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	subsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	.LC16(%rip), %xmm1
	movsd	-48(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	addsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC16(%rip), %xmm0
	movsd	-40(%rbp), %xmm1
	subsd	-32(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
.L9:
	cmpl	$0, -76(%rbp)
	jle	.L10
	movsd	-56(%rbp), %xmm0
	jmp	.L4
.L10:
	movsd	-56(%rbp), %xmm0
	movq	.LC17(%rip), %xmm1
	xorpd	%xmm1, %xmm0
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_asin, .-libmin_asin
	.section	.rodata
	.align 8
.LC1:
	.long	1413754136
	.long	1073291771
	.align 8
.LC2:
	.long	856972295
	.long	1016178214
	.align 8
.LC3:
	.long	-2013235812
	.long	2117592124
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.align 8
.LC5:
	.long	234747657
	.long	1057111521
	.align 8
.LC6:
	.long	1963045512
	.long	1061810144
	.align 8
.LC7:
	.long	-1251438789
	.long	-1079737816
	.align 8
.LC8:
	.long	243811413
	.long	1070186837
	.align 8
.LC9:
	.long	65761149
	.long	-1076570606
	.align 8
.LC10:
	.long	1431655765
	.long	1069897045
	.align 8
.LC11:
	.long	-1322347902
	.long	1068742853
	.align 8
.LC12:
	.long	462225753
	.long	-1075444116
	.align 8
.LC13:
	.long	-1671853368
	.long	1073752805
	.align 8
.LC14:
	.long	478817611
	.long	-1073530329
	.align 8
.LC15:
	.long	0
	.long	1071644672
	.align 8
.LC16:
	.long	1413754136
	.long	1072243195
	.align 16
.LC17:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
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
