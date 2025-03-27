	.file	"libmin_acos.c"
	.text
	.section	.rodata
	.align 8
	.type	one, @object
	.size	one, 8
one:
	.long	0
	.long	1072693248
	.align 8
	.type	pi, @object
	.size	pi, 8
pi:
	.long	1413754136
	.long	1074340347
	.align 8
	.type	pio2_hi, @object
	.size	pio2_hi, 8
pio2_hi:
	.long	1413754136
	.long	1073291771
	.data
	.align 8
	.type	pio2_lo, @object
	.size	pio2_lo, 8
pio2_lo:
	.long	856972295
	.long	1016178214
	.section	.rodata
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
	.globl	libmin_acos
	.type	libmin_acos, @function
libmin_acos:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-72(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	andl	$2147483647, %eax
	movl	%eax, -80(%rbp)
	cmpl	$1072693247, -80(%rbp)
	jle	.L2
	movsd	-104(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	%eax, -76(%rbp)
	movl	-80(%rbp), %eax
	subl	$1072693248, %eax
	orl	-76(%rbp), %eax
	testl	%eax, %eax
	jne	.L3
	cmpl	$0, -84(%rbp)
	jle	.L4
	pxor	%xmm0, %xmm0
	jmp	.L5
.L4:
	movsd	pio2_lo(%rip), %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	movsd	.LC1(%rip), %xmm0
	addsd	%xmm1, %xmm0
	jmp	.L5
.L3:
	movsd	-104(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm0, %xmm1
	movsd	-104(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	subsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	jmp	.L5
.L2:
	cmpl	$1071644671, -80(%rbp)
	jg	.L6
	cmpl	$1012924416, -80(%rbp)
	jg	.L7
	movsd	.LC2(%rip), %xmm1
	movsd	pio2_lo(%rip), %xmm0
	addsd	%xmm1, %xmm0
	jmp	.L5
.L7:
	movsd	-104(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	.LC3(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC5(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC6(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC7(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC8(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC9(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC10(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC11(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC12(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC13(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-32(%rbp), %xmm0
	divsd	-24(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	.LC2(%rip), %xmm0
	movsd	pio2_lo(%rip), %xmm1
	movsd	-104(%rbp), %xmm2
	movapd	%xmm2, %xmm3
	mulsd	-16(%rbp), %xmm3
	movapd	%xmm1, %xmm2
	subsd	%xmm3, %xmm2
	movsd	-104(%rbp), %xmm1
	subsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	jmp	.L5
.L6:
	cmpl	$0, -84(%rbp)
	jns	.L8
	movsd	.LC13(%rip), %xmm0
	movapd	%xmm0, %xmm1
	addsd	-104(%rbp), %xmm1
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	.LC3(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC5(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC6(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC7(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC8(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC9(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC10(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC11(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC12(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC13(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %xmm0
	call	libmin_sqrt@PLT
	movq	%xmm0, %rax
	movq	%rax, -56(%rbp)
	movsd	-32(%rbp), %xmm0
	divsd	-24(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	mulsd	-56(%rbp), %xmm0
	movsd	pio2_lo(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	.LC1(%rip), %xmm1
	movsd	-56(%rbp), %xmm0
	addsd	-8(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	addsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	jmp	.L5
.L8:
	movsd	.LC13(%rip), %xmm0
	movapd	%xmm0, %xmm1
	subsd	-104(%rbp), %xmm1
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %xmm0
	call	libmin_sqrt@PLT
	movq	%xmm0, %rax
	movq	%rax, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-72(%rbp), %rax
	movabsq	$-4294967296, %rdx
	andq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -72(%rbp)
	movsd	-72(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-64(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	-56(%rbp), %xmm1
	addsd	-48(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	.LC3(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC5(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC6(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC7(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC8(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC9(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC10(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC11(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC12(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movsd	.LC13(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-32(%rbp), %xmm0
	divsd	-24(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	mulsd	-56(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-48(%rbp), %xmm0
	addsd	-8(%rbp), %xmm0
	addsd	%xmm0, %xmm0
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_acos, .-libmin_acos
	.section	.rodata
	.align 8
.LC1:
	.long	1413754136
	.long	1074340347
	.align 8
.LC2:
	.long	1413754136
	.long	1073291771
	.align 8
.LC3:
	.long	234747657
	.long	1057111521
	.align 8
.LC4:
	.long	1963045512
	.long	1061810144
	.align 8
.LC5:
	.long	-1251438789
	.long	-1079737816
	.align 8
.LC6:
	.long	243811413
	.long	1070186837
	.align 8
.LC7:
	.long	65761149
	.long	-1076570606
	.align 8
.LC8:
	.long	1431655765
	.long	1069897045
	.align 8
.LC9:
	.long	-1322347902
	.long	1068742853
	.align 8
.LC10:
	.long	462225753
	.long	-1075444116
	.align 8
.LC11:
	.long	-1671853368
	.long	1073752805
	.align 8
.LC12:
	.long	478817611
	.long	-1073530329
	.align 8
.LC13:
	.long	0
	.long	1072693248
	.align 8
.LC14:
	.long	0
	.long	1071644672
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
