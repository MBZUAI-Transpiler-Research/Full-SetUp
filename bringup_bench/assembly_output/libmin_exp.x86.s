	.file	"libmin_exp.c"
	.text
	.type	__DOUBLE_BITS, @function
__DOUBLE_BITS:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	__DOUBLE_BITS, .-__DOUBLE_BITS
	.section	.rodata
	.align 16
	.type	half, @object
	.size	half, 16
half:
	.long	0
	.long	1071644672
	.long	0
	.long	-1075838976
	.align 8
	.type	ln2hi, @object
	.size	ln2hi, 8
ln2hi:
	.long	-18874368
	.long	1072049730
	.align 8
	.type	ln2lo, @object
	.size	ln2lo, 8
ln2lo:
	.long	897137782
	.long	1038760431
	.align 8
	.type	invln2, @object
	.size	invln2, 8
invln2:
	.long	1697350398
	.long	1073157447
	.align 8
	.type	P1, @object
	.size	P1, 8
P1:
	.long	1431655742
	.long	1069897045
	.align 8
	.type	P2, @object
	.size	P2, 8
P2:
	.long	381599123
	.long	-1083784852
	.align 8
	.type	P3, @object
	.size	P3, 8
P3:
	.long	-1356472788
	.long	1058100842
	.align 8
	.type	P4, @object
	.size	P4, 8
P4:
	.long	-976065551
	.long	-1094992575
	.align 8
	.type	P5, @object
	.size	P5, 8
P5:
	.long	1925096656
	.long	1046886249
	.text
	.globl	libmin_exp
	.type	libmin_exp, @function
libmin_exp:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	shrl	$31, %eax
	movl	%eax, -52(%rbp)
	andl	$2147483647, -56(%rbp)
	cmpl	$1082535489, -56(%rbp)
	jbe	.L4
	movq	-72(%rbp), %rax
	movq	%rax, %xmm0
	call	__DOUBLE_BITS
	movabsq	$9223372036854775807, %rdx
	andq	%rdx, %rax
	movabsq	$9218868437227405312, %rdx
	cmpq	%rax, %rdx
	jnb	.L5
	movq	-72(%rbp), %rax
	jmp	.L6
.L5:
	cmpl	$2146435072, -56(%rbp)
	jne	.L7
	cmpl	$0, -52(%rbp)
	je	.L7
	movq	.LC0(%rip), %rax
	jmp	.L6
.L7:
	movsd	-72(%rbp), %xmm0
	comisd	.LC1(%rip), %xmm0
	jbe	.L19
	movsd	-72(%rbp), %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-72(%rbp), %rax
	jmp	.L6
.L19:
	movsd	.LC3(%rip), %xmm0
	comisd	-72(%rbp), %xmm0
	jbe	.L4
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-72(%rbp), %rax
	jmp	.L6
.L4:
	cmpl	$1071001154, -56(%rbp)
	jbe	.L11
	cmpl	$1072734897, -56(%rbp)
	jbe	.L12
	movsd	.LC4(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-72(%rbp), %xmm1
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	half(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -60(%rbp)
	jmp	.L13
.L12:
	movl	$1, %eax
	subl	-52(%rbp), %eax
	subl	-52(%rbp), %eax
	movl	%eax, -60(%rbp)
.L13:
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-60(%rbp), %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	-72(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-60(%rbp), %xmm1
	movsd	.LC6(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-40(%rbp), %xmm0
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.L14
.L11:
	cmpl	$1043333120, -56(%rbp)
	jbe	.L15
	movl	$0, -60(%rbp)
	movsd	-72(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.L14
.L15:
	movsd	-72(%rbp), %xmm1
	movsd	.LC2(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	movsd	-72(%rbp), %xmm1
	movsd	.LC7(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L6
.L14:
	movsd	-72(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC8(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	.LC9(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	.LC10(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	.LC11(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	.LC12(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	-72(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-72(%rbp), %xmm0
	mulsd	-24(%rbp), %xmm0
	movsd	.LC13(%rip), %xmm1
	subsd	-24(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	subsd	-48(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	addsd	-40(%rbp), %xmm1
	movsd	.LC7(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L16
	movq	-72(%rbp), %rax
	jmp	.L6
.L16:
	movl	-60(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %edi
	movq	%rax, %xmm0
	call	libmin_scalbn@PLT
	movq	%xmm0, %rax
.L6:
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_exp, .-libmin_exp
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	0
	.align 8
.LC1:
	.long	-17155601
	.long	1082535490
	.align 8
.LC2:
	.long	0
	.long	2145386496
	.align 8
.LC3:
	.long	-718458799
	.long	-1064875760
	.align 8
.LC4:
	.long	1697350398
	.long	1073157447
	.align 8
.LC5:
	.long	-18874368
	.long	1072049730
	.align 8
.LC6:
	.long	897137782
	.long	1038760431
	.align 8
.LC7:
	.long	0
	.long	1072693248
	.align 8
.LC8:
	.long	1925096656
	.long	1046886249
	.align 8
.LC9:
	.long	-976065551
	.long	-1094992575
	.align 8
.LC10:
	.long	-1356472788
	.long	1058100842
	.align 8
.LC11:
	.long	381599123
	.long	-1083784852
	.align 8
.LC12:
	.long	1431655742
	.long	1069897045
	.align 8
.LC13:
	.long	0
	.long	1073741824
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
