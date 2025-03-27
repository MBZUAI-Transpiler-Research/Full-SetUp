	.file	"libmin_atan.c"
	.text
	.data
	.align 8
	.type	tiny, @object
	.size	tiny, 8
tiny:
	.long	-1023872167
	.long	27618847
	.section	.rodata
	.align 8
	.type	zero, @object
	.size	zero, 8
zero:
	.zero	8
	.align 8
	.type	pi_o_4, @object
	.size	pi_o_4, 8
pi_o_4:
	.long	1413754136
	.long	1072243195
	.align 8
	.type	pi_o_2, @object
	.size	pi_o_2, 8
pi_o_2:
	.long	1413754136
	.long	1073291771
	.align 8
	.type	pi, @object
	.size	pi, 8
pi:
	.long	1413754136
	.long	1074340347
	.data
	.align 8
	.type	pi_lo, @object
	.size	pi_lo, 8
pi_lo:
	.long	856972295
	.long	1017226790
	.text
	.globl	libmin_atan2
	.type	libmin_atan2, @function
libmin_atan2:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm1, -64(%rbp)
	movsd	-64(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	andl	$2147483647, %eax
	movl	%eax, -36(%rbp)
	movsd	-56(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	andl	$2147483647, %eax
	movl	%eax, -24(%rbp)
	movl	-40(%rbp), %eax
	negl	%eax
	orl	-40(%rbp), %eax
	shrl	$31, %eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	orl	%edx, %eax
	cmpl	$2146435072, %eax
	ja	.L2
	movl	-28(%rbp), %eax
	negl	%eax
	orl	-28(%rbp), %eax
	shrl	$31, %eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	orl	%edx, %eax
	cmpl	$2146435072, %eax
	jbe	.L3
.L2:
	movsd	-64(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	movq	%xmm0, %rax
	jmp	.L4
.L3:
	cmpl	$1072693248, -44(%rbp)
	jne	.L5
	cmpl	$0, -40(%rbp)
	jne	.L5
	movq	-56(%rbp), %rax
	movq	%rax, %xmm0
	call	libmin_atan
	movq	%xmm0, %rax
	jmp	.L4
.L5:
	movl	-32(%rbp), %eax
	shrl	$31, %eax
	movl	%eax, %edx
	movl	-44(%rbp), %eax
	sarl	$30, %eax
	andl	$2, %eax
	orl	%edx, %eax
	movl	%eax, -48(%rbp)
	movl	-24(%rbp), %eax
	orl	-28(%rbp), %eax
	testl	%eax, %eax
	jne	.L6
	cmpl	$3, -48(%rbp)
	je	.L7
	cmpl	$3, -48(%rbp)
	jg	.L6
	cmpl	$1, -48(%rbp)
	jg	.L8
	cmpl	$0, -48(%rbp)
	jns	.L9
	jmp	.L6
.L8:
	cmpl	$2, -48(%rbp)
	je	.L10
	jmp	.L6
.L9:
	movq	-56(%rbp), %rax
	jmp	.L4
.L10:
	movsd	.LC0(%rip), %xmm1
	movsd	tiny(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L4
.L7:
	movsd	.LC0(%rip), %xmm0
	movq	.LC1(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	tiny(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	jmp	.L4
.L6:
	movl	-36(%rbp), %eax
	orl	-40(%rbp), %eax
	testl	%eax, %eax
	jne	.L11
	cmpl	$0, -32(%rbp)
	jns	.L12
	movsd	.LC2(%rip), %xmm0
	movq	.LC1(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	tiny(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	jmp	.L4
.L12:
	movsd	.LC2(%rip), %xmm1
	movsd	tiny(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L4
.L11:
	cmpl	$2146435072, -36(%rbp)
	jne	.L14
	cmpl	$2146435072, -24(%rbp)
	jne	.L15
	cmpl	$3, -48(%rbp)
	je	.L16
	cmpl	$3, -48(%rbp)
	jg	.L14
	cmpl	$2, -48(%rbp)
	je	.L17
	cmpl	$2, -48(%rbp)
	jg	.L14
	cmpl	$0, -48(%rbp)
	je	.L18
	cmpl	$1, -48(%rbp)
	je	.L19
	jmp	.L14
.L18:
	movsd	.LC3(%rip), %xmm1
	movsd	tiny(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L4
.L19:
	movsd	.LC3(%rip), %xmm0
	movq	.LC1(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	tiny(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	jmp	.L4
.L17:
	movsd	.LC3(%rip), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	tiny(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L4
.L16:
	movsd	.LC3(%rip), %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	tiny(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	jmp	.L4
.L15:
	cmpl	$3, -48(%rbp)
	je	.L20
	cmpl	$3, -48(%rbp)
	jg	.L14
	cmpl	$2, -48(%rbp)
	je	.L21
	cmpl	$2, -48(%rbp)
	jg	.L14
	cmpl	$0, -48(%rbp)
	je	.L22
	cmpl	$1, -48(%rbp)
	je	.L23
	jmp	.L14
.L22:
	movq	.LC6(%rip), %rax
	jmp	.L4
.L23:
	pxor	%xmm0, %xmm0
	movq	.LC1(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	%xmm0, %rax
	jmp	.L4
.L21:
	movsd	.LC0(%rip), %xmm1
	movsd	tiny(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L4
.L20:
	movsd	.LC0(%rip), %xmm0
	movq	.LC1(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	tiny(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	jmp	.L4
.L14:
	cmpl	$2146435072, -24(%rbp)
	jne	.L24
	cmpl	$0, -32(%rbp)
	jns	.L25
	movsd	.LC2(%rip), %xmm0
	movq	.LC1(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	tiny(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	jmp	.L4
.L25:
	movsd	.LC2(%rip), %xmm1
	movsd	tiny(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L4
.L24:
	movl	-24(%rbp), %eax
	subl	-36(%rbp), %eax
	sarl	$20, %eax
	movl	%eax, -20(%rbp)
	cmpl	$60, -20(%rbp)
	jle	.L27
	movsd	pi_lo(%rip), %xmm1
	movsd	.LC7(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	.LC2(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	andl	$1, -48(%rbp)
	jmp	.L28
.L27:
	cmpl	$0, -44(%rbp)
	jns	.L29
	cmpl	$-60, -20(%rbp)
	jge	.L29
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L28
.L29:
	movsd	-56(%rbp), %xmm0
	divsd	-64(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	libmin_atan
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
.L28:
	cmpl	$2, -48(%rbp)
	je	.L30
	cmpl	$2, -48(%rbp)
	jg	.L31
	cmpl	$0, -48(%rbp)
	je	.L32
	cmpl	$1, -48(%rbp)
	je	.L33
	jmp	.L31
.L32:
	movq	-8(%rbp), %rax
	jmp	.L4
.L33:
	movsd	-8(%rbp), %xmm0
	movq	.LC1(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	%xmm0, %rax
	jmp	.L4
.L30:
	movsd	.LC0(%rip), %xmm0
	movsd	pi_lo(%rip), %xmm2
	movsd	-8(%rbp), %xmm1
	subsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	jmp	.L4
.L31:
	movsd	pi_lo(%rip), %xmm1
	movsd	-8(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	.LC0(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
.L4:
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_atan2, .-libmin_atan2
	.section	.rodata
	.align 32
	.type	atanhi, @object
	.size	atanhi, 32
atanhi:
	.long	90291023
	.long	1071492199
	.long	1413754136
	.long	1072243195
	.long	-763234661
	.long	1072657163
	.long	1413754136
	.long	1073291771
	.align 32
	.type	atanlo, @object
	.size	atanlo, 32
atanlo:
	.long	573531618
	.long	1014639487
	.long	856972295
	.long	1015129638
	.long	2062601149
	.long	1013974920
	.long	856972295
	.long	1016178214
	.align 32
	.type	aT, @object
	.size	aT, 88
aT:
	.long	1431655693
	.long	1070945621
	.long	-1718031420
	.long	-1077306983
	.long	-1845459969
	.long	1069697316
	.long	-31254927
	.long	-1078169146
	.long	-984866706
	.long	1068975565
	.long	-1351312787
	.long	-1078742798
	.long	-1596965551
	.long	1068567910
	.long	1390345626
	.long	-1079124435
	.long	611716587
	.long	1068071755
	.long	745172015
	.long	-1079856060
	.long	-484255215
	.long	1066446138
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
	.text
	.globl	libmin_atan
	.type	libmin_atan, @function
libmin_atan:
.LFB4:
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
	movsd	%xmm0, -40(%rbp)
	movq	-40(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	andl	$2147483647, %eax
	movl	%eax, -48(%rbp)
	cmpl	$1141899263, -48(%rbp)
	jle	.L35
	movsd	-72(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	%eax, -44(%rbp)
	cmpl	$2146435072, -48(%rbp)
	jg	.L36
	cmpl	$2146435072, -48(%rbp)
	jne	.L37
	cmpl	$0, -44(%rbp)
	je	.L37
.L36:
	movsd	-72(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L38
.L37:
	cmpl	$0, -52(%rbp)
	jle	.L39
	movsd	.LC2(%rip), %xmm1
	leaq	24+atanlo(%rip), %rax
	movsd	(%rax), %xmm0
	addsd	%xmm1, %xmm0
	jmp	.L38
.L39:
	movsd	.LC2(%rip), %xmm0
	movq	.LC1(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	leaq	24+atanlo(%rip), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	jmp	.L38
.L35:
	cmpl	$1071382527, -48(%rbp)
	jg	.L40
	cmpl	$1044381695, -48(%rbp)
	jg	.L41
	movsd	.LC8(%rip), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	.LC9(%rip), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L41
	movsd	-72(%rbp), %xmm0
	jmp	.L38
.L41:
	movl	$-1, -56(%rbp)
	jmp	.L43
.L40:
	movq	-72(%rbp), %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movq	%xmm0, %rax
	movq	%rax, -72(%rbp)
	cmpl	$1072889855, -48(%rbp)
	jg	.L44
	cmpl	$1072037887, -48(%rbp)
	jg	.L45
	movl	$0, -56(%rbp)
	movsd	-72(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movsd	.LC9(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	-72(%rbp), %xmm2
	movsd	.LC10(%rip), %xmm1
	addsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.L43
.L45:
	movl	$1, -56(%rbp)
	movsd	.LC9(%rip), %xmm1
	movsd	-72(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	.LC9(%rip), %xmm1
	addsd	-72(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.L43
.L44:
	cmpl	$1073971199, -48(%rbp)
	jg	.L46
	movl	$2, -56(%rbp)
	movsd	-72(%rbp), %xmm0
	movsd	.LC11(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	-72(%rbp), %xmm2
	movsd	.LC11(%rip), %xmm1
	mulsd	%xmm1, %xmm2
	movsd	.LC9(%rip), %xmm1
	addsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.L43
.L46:
	movl	$3, -56(%rbp)
	movsd	.LC12(%rip), %xmm0
	divsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
.L43:
	movsd	-72(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC13(%rip), %xmm1
	movsd	.LC14(%rip), %xmm2
	movsd	.LC15(%rip), %xmm3
	movsd	.LC16(%rip), %xmm4
	movsd	.LC17(%rip), %xmm5
	movsd	.LC18(%rip), %xmm0
	mulsd	-24(%rbp), %xmm0
	addsd	%xmm5, %xmm0
	mulsd	-24(%rbp), %xmm0
	addsd	%xmm4, %xmm0
	mulsd	-24(%rbp), %xmm0
	addsd	%xmm3, %xmm0
	mulsd	-24(%rbp), %xmm0
	addsd	%xmm2, %xmm0
	mulsd	-24(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	.LC19(%rip), %xmm1
	movsd	.LC20(%rip), %xmm2
	movsd	.LC21(%rip), %xmm3
	movsd	.LC22(%rip), %xmm4
	movsd	.LC23(%rip), %xmm0
	mulsd	-24(%rbp), %xmm0
	addsd	%xmm4, %xmm0
	mulsd	-24(%rbp), %xmm0
	addsd	%xmm3, %xmm0
	mulsd	-24(%rbp), %xmm0
	addsd	%xmm2, %xmm0
	mulsd	-24(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	-24(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	cmpl	$0, -56(%rbp)
	jns	.L47
	movsd	-16(%rbp), %xmm0
	addsd	-8(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-72(%rbp), %xmm1
	movsd	-72(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	jmp	.L38
.L47:
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	atanhi(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	-8(%rbp), %xmm1
	mulsd	-72(%rbp), %xmm1
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	atanlo(%rip), %rax
	movsd	(%rdx,%rax), %xmm2
	subsd	%xmm2, %xmm1
	subsd	-72(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	cmpl	$0, -52(%rbp)
	jns	.L48
	movsd	-32(%rbp), %xmm0
	movq	.LC1(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	jmp	.L38
.L48:
	movsd	-32(%rbp), %xmm0
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	libmin_atan, .-libmin_atan
	.section	.rodata
	.align 8
.LC0:
	.long	1413754136
	.long	1074340347
	.align 16
.LC1:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC2:
	.long	1413754136
	.long	1073291771
	.align 8
.LC3:
	.long	1413754136
	.long	1072243195
	.align 8
.LC4:
	.long	0
	.long	1074266112
	.align 8
.LC5:
	.long	0
	.long	-1073217536
	.align 8
.LC6:
	.long	0
	.long	0
	.align 8
.LC7:
	.long	0
	.long	1071644672
	.align 8
.LC8:
	.long	-2013235812
	.long	2117592124
	.align 8
.LC9:
	.long	0
	.long	1072693248
	.align 8
.LC10:
	.long	0
	.long	1073741824
	.align 8
.LC11:
	.long	0
	.long	1073217536
	.align 8
.LC12:
	.long	0
	.long	-1074790400
	.align 8
.LC13:
	.long	1431655693
	.long	1070945621
	.align 8
.LC14:
	.long	-1845459969
	.long	1069697316
	.align 8
.LC15:
	.long	-984866706
	.long	1068975565
	.align 8
.LC16:
	.long	-1596965551
	.long	1068567910
	.align 8
.LC17:
	.long	611716587
	.long	1068071755
	.align 8
.LC18:
	.long	-484255215
	.long	1066446138
	.align 8
.LC19:
	.long	-1718031420
	.long	-1077306983
	.align 8
.LC20:
	.long	-31254927
	.long	-1078169146
	.align 8
.LC21:
	.long	-1351312787
	.long	-1078742798
	.align 8
.LC22:
	.long	1390345626
	.long	-1079124435
	.align 8
.LC23:
	.long	745172015
	.long	-1079856060
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
