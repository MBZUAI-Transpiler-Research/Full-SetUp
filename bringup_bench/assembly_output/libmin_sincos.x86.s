	.file	"libmin_sincos.c"
	.text
	.section	.rodata
	.align 8
	.type	S1, @object
	.size	S1, 8
S1:
	.long	1431655753
	.long	-1077586603
	.align 8
	.type	S2, @object
	.size	S2, 8
S2:
	.long	286324902
	.long	1065423121
	.align 8
	.type	S3, @object
	.size	S3, 8
S3:
	.long	432103893
	.long	-1087766112
	.align 8
	.type	S4, @object
	.size	S4, 8
S4:
	.long	1471282813
	.long	1053236707
	.align 8
	.type	S5, @object
	.size	S5, 8
S5:
	.long	-1976853269
	.long	-1101339162
	.align 8
	.type	S6, @object
	.size	S6, 8
S6:
	.long	1523570044
	.long	1038473530
	.text
	.globl	__sin
	.type	__sin, @function
__sin:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movl	%edi, -52(%rbp)
	movsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC0(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	.LC2(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	mulsd	-24(%rbp), %xmm2
	movsd	.LC3(%rip), %xmm0
	movapd	%xmm0, %xmm3
	mulsd	-32(%rbp), %xmm3
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-32(%rbp), %xmm0
	mulsd	-40(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L2
	movsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-16(%rbp), %xmm1
	movsd	.LC5(%rip), %xmm0
	addsd	%xmm1, %xmm0
	mulsd	-8(%rbp), %xmm0
	addsd	-40(%rbp), %xmm0
	jmp	.L3
.L2:
	movsd	-48(%rbp), %xmm1
	movsd	.LC6(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-8(%rbp), %xmm1
	mulsd	-16(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	mulsd	-32(%rbp), %xmm0
	subsd	-48(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm1
	movapd	%xmm1, %xmm2
	mulsd	-8(%rbp), %xmm2
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	-40(%rbp), %xmm0
	subsd	%xmm1, %xmm0
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	__sin, .-__sin
	.section	.rodata
	.align 8
	.type	C1, @object
	.size	C1, 8
C1:
	.long	1431655756
	.long	1067799893
	.align 8
	.type	C2, @object
	.size	C2, 8
C2:
	.long	381768055
	.long	-1084833428
	.align 8
	.type	C3, @object
	.size	C3, 8
C3:
	.long	432739728
	.long	1056571808
	.align 8
	.type	C4, @object
	.size	C4, 8
C4:
	.long	-2137238867
	.long	-1097695665
	.align 8
	.type	C5, @object
	.size	C5, 8
C5:
	.long	-1112231484
	.long	1042411166
	.align 8
	.type	C6, @object
	.size	C6, 8
C6:
	.long	-1098368812
	.long	-1112999191
	.text
	.globl	__cos
	.type	__cos, @function
__cos:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC7(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	.LC8(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	.LC9(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	.LC10(%rip), %xmm0
	movapd	%xmm0, %xmm3
	mulsd	-32(%rbp), %xmm3
	movsd	.LC11(%rip), %xmm0
	addsd	%xmm3, %xmm0
	movapd	%xmm0, %xmm3
	mulsd	-32(%rbp), %xmm3
	movsd	.LC12(%rip), %xmm0
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-32(%rbp), %xmm1
	movsd	.LC6(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	.LC13(%rip), %xmm0
	subsd	-8(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC13(%rip), %xmm0
	subsd	-24(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	subsd	-8(%rbp), %xmm2
	movsd	-32(%rbp), %xmm0
	mulsd	-16(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1
	mulsd	-48(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	addsd	-24(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	__cos, .-__cos
	.globl	libmin_cos
	.type	libmin_cos, @function
libmin_cos:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movsd	%xmm0, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-72(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-48(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, -56(%rbp)
	andl	$2147483647, -56(%rbp)
	cmpl	$1072243195, -56(%rbp)
	ja	.L7
	cmpl	$1044816029, -56(%rbp)
	ja	.L8
	movsd	-72(%rbp), %xmm1
	movsd	.LC14(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	movq	.LC13(%rip), %rax
	jmp	.L15
.L8:
	movq	-72(%rbp), %rax
	pxor	%xmm1, %xmm1
	movq	%rax, %xmm0
	call	__cos
	movq	%xmm0, %rax
	jmp	.L15
.L7:
	cmpl	$2146435071, -56(%rbp)
	jbe	.L10
	movsd	-72(%rbp), %xmm0
	subsd	%xmm0, %xmm0
	movq	%xmm0, %rax
	jmp	.L15
.L10:
	leaq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %xmm0
	call	__rem_pio2@PLT
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	andl	$3, %eax
	cmpl	$2, %eax
	je	.L11
	cmpl	$2, %eax
	ja	.L12
	testl	%eax, %eax
	je	.L13
	cmpl	$1, %eax
	je	.L14
	jmp	.L12
.L13:
	movsd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	__cos
	movq	%xmm0, %rax
	jmp	.L15
.L14:
	movsd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movl	$1, %edi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	__sin
	movq	%xmm0, %rax
	movq	.LC16(%rip), %xmm0
	movq	%rax, %xmm2
	xorpd	%xmm0, %xmm2
	movq	%xmm2, %rax
	jmp	.L15
.L11:
	movsd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	__cos
	movq	%xmm0, %rax
	movq	.LC16(%rip), %xmm0
	movq	%rax, %xmm3
	xorpd	%xmm0, %xmm3
	movq	%xmm3, %rax
	jmp	.L15
.L12:
	movsd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movl	$1, %edi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	__sin
	movq	%xmm0, %rax
.L15:
	movq	%rax, %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	libmin_cos, .-libmin_cos
	.globl	libmin_sin
	.type	libmin_sin, @function
libmin_sin:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movsd	%xmm0, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-72(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-48(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, -56(%rbp)
	andl	$2147483647, -56(%rbp)
	cmpl	$1072243195, -56(%rbp)
	jg	.L18
	cmpl	$1045430271, -56(%rbp)
	jg	.L19
	movsd	-72(%rbp), %xmm0
	cvttsd2sil	%xmm0, %eax
	testl	%eax, %eax
	jne	.L19
	movq	-72(%rbp), %rax
	jmp	.L26
.L19:
	movsd	-40(%rbp), %xmm0
	movq	-72(%rbp), %rax
	movl	$0, %edi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	__sin
	movq	%xmm0, %rax
	jmp	.L26
.L18:
	cmpl	$2146435071, -56(%rbp)
	jle	.L21
	movsd	-72(%rbp), %xmm0
	subsd	%xmm0, %xmm0
	movq	%xmm0, %rax
	jmp	.L26
.L21:
	leaq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %xmm0
	call	__rem_pio2@PLT
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	andl	$3, %eax
	cmpl	$2, %eax
	je	.L22
	cmpl	$2, %eax
	jg	.L23
	testl	%eax, %eax
	je	.L24
	cmpl	$1, %eax
	je	.L25
	jmp	.L23
.L24:
	movsd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movl	$1, %edi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	__sin
	movq	%xmm0, %rax
	jmp	.L26
.L25:
	movsd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	__cos
	movq	%xmm0, %rax
	jmp	.L26
.L22:
	movsd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movl	$1, %edi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	__sin
	movq	%xmm0, %rax
	movq	.LC16(%rip), %xmm0
	movq	%rax, %xmm2
	xorpd	%xmm0, %xmm2
	movq	%xmm2, %rax
	jmp	.L26
.L23:
	movsd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	__cos
	movq	%xmm0, %rax
	movq	.LC16(%rip), %xmm0
	movq	%rax, %xmm3
	xorpd	%xmm0, %xmm3
	movq	%xmm3, %rax
.L26:
	movq	%rax, %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	libmin_sin, .-libmin_sin
	.section	.rodata
	.align 8
.LC0:
	.long	1471282813
	.long	1053236707
	.align 8
.LC1:
	.long	432103893
	.long	-1087766112
	.align 8
.LC2:
	.long	286324902
	.long	1065423121
	.align 8
.LC3:
	.long	1523570044
	.long	1038473530
	.align 8
.LC4:
	.long	-1976853269
	.long	-1101339162
	.align 8
.LC5:
	.long	1431655753
	.long	-1077586603
	.align 8
.LC6:
	.long	0
	.long	1071644672
	.align 8
.LC7:
	.long	432739728
	.long	1056571808
	.align 8
.LC8:
	.long	381768055
	.long	-1084833428
	.align 8
.LC9:
	.long	1431655756
	.long	1067799893
	.align 8
.LC10:
	.long	-1098368812
	.long	-1112999191
	.align 8
.LC11:
	.long	-1112231484
	.long	1042411166
	.align 8
.LC12:
	.long	-2137238867
	.long	-1097695665
	.align 8
.LC13:
	.long	0
	.long	1072693248
	.align 8
.LC14:
	.long	0
	.long	1198522368
	.align 16
.LC16:
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
