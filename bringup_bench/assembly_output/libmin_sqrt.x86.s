	.file	"libmin_sqrt.c"
	.text
	.section	.rodata
	.align 8
	.type	__tiny, @object
	.size	__tiny, 8
__tiny:
	.long	-1023872167
	.long	27618847
	.text
	.globl	libmin_sqrt
	.type	libmin_sqrt, @function
libmin_sqrt:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -72(%rbp)
	movl	$-2147483648, -28(%rbp)
	movsd	-72(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, -64(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, -36(%rbp)
	movl	-64(%rbp), %eax
	andl	$2146435072, %eax
	cmpl	$2146435072, %eax
	jne	.L2
	movsd	-72(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	addsd	-72(%rbp), %xmm0
	jmp	.L3
.L2:
	cmpl	$0, -64(%rbp)
	jg	.L4
	movl	-28(%rbp), %eax
	notl	%eax
	andl	-64(%rbp), %eax
	orl	-36(%rbp), %eax
	testl	%eax, %eax
	jne	.L5
	movsd	-72(%rbp), %xmm0
	jmp	.L3
.L5:
	cmpl	$0, -64(%rbp)
	jns	.L4
	movsd	-72(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm0, %xmm1
	movsd	-72(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	subsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	jmp	.L3
.L4:
	movl	-64(%rbp), %eax
	sarl	$20, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L6
	jmp	.L7
.L8:
	subl	$21, -52(%rbp)
	movl	-36(%rbp), %eax
	shrl	$11, %eax
	movl	%eax, %edx
	movl	-64(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -64(%rbp)
	sall	$21, -36(%rbp)
.L7:
	cmpl	$0, -64(%rbp)
	je	.L8
	movl	$0, -48(%rbp)
	jmp	.L9
.L10:
	sall	-64(%rbp)
	addl	$1, -48(%rbp)
.L9:
	movl	-64(%rbp), %eax
	andl	$1048576, %eax
	testl	%eax, %eax
	je	.L10
	movl	-48(%rbp), %eax
	subl	$1, %eax
	subl	%eax, -52(%rbp)
	movl	$32, %eax
	subl	-48(%rbp), %eax
	movl	-36(%rbp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	-64(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -64(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, -36(%rbp)
.L6:
	subl	$1023, -52(%rbp)
	movl	-64(%rbp), %eax
	andl	$1048575, %eax
	orl	$1048576, %eax
	movl	%eax, -64(%rbp)
	movl	-52(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L11
	movl	-28(%rbp), %eax
	andl	-36(%rbp), %eax
	shrl	$31, %eax
	movl	%eax, %edx
	movl	-64(%rbp), %eax
	addl	%eax, %edx
	movl	-64(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -64(%rbp)
	sall	-36(%rbp)
.L11:
	sarl	-52(%rbp)
	movl	-28(%rbp), %eax
	andl	-36(%rbp), %eax
	shrl	$31, %eax
	movl	%eax, %edx
	movl	-64(%rbp), %eax
	addl	%eax, %edx
	movl	-64(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -64(%rbp)
	sall	-36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -60(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	$2097152, -44(%rbp)
	jmp	.L12
.L14:
	movl	-60(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jg	.L13
	movl	-20(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -60(%rbp)
	movl	-20(%rbp), %eax
	subl	%eax, -64(%rbp)
	movl	-56(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -56(%rbp)
.L13:
	movl	-28(%rbp), %eax
	andl	-36(%rbp), %eax
	shrl	$31, %eax
	movl	%eax, %edx
	movl	-64(%rbp), %eax
	addl	%eax, %edx
	movl	-64(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -64(%rbp)
	sall	-36(%rbp)
	shrl	-44(%rbp)
.L12:
	cmpl	$0, -44(%rbp)
	jne	.L14
	movl	-28(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.L15
.L20:
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -24(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jl	.L16
	movl	-20(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jne	.L17
	movl	-24(%rbp), %eax
	cmpl	%eax, -36(%rbp)
	jb	.L17
.L16:
	movl	-24(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -40(%rbp)
	movl	-28(%rbp), %eax
	andl	-24(%rbp), %eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L18
	movl	-28(%rbp), %eax
	andl	-40(%rbp), %eax
	testl	%eax, %eax
	jne	.L18
	addl	$1, -60(%rbp)
.L18:
	movl	-20(%rbp), %eax
	subl	%eax, -64(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jnb	.L19
	subl	$1, -64(%rbp)
.L19:
	movl	-24(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-44(%rbp), %eax
	addl	%eax, -32(%rbp)
.L17:
	movl	-28(%rbp), %eax
	andl	-36(%rbp), %eax
	shrl	$31, %eax
	movl	%eax, %edx
	movl	-64(%rbp), %eax
	addl	%eax, %edx
	movl	-64(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -64(%rbp)
	sall	-36(%rbp)
	shrl	-44(%rbp)
.L15:
	cmpl	$0, -44(%rbp)
	jne	.L20
	movl	-64(%rbp), %eax
	orl	-36(%rbp), %eax
	testl	%eax, %eax
	je	.L21
	movsd	.LC0(%rip), %xmm1
	movsd	.LC1(%rip), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	movsd	.LC1(%rip), %xmm1
	comisd	%xmm1, %xmm0
	jb	.L21
	movsd	.LC0(%rip), %xmm1
	movsd	.LC1(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	cmpl	$-1, -32(%rbp)
	jne	.L23
	movl	$0, -32(%rbp)
	addl	$1, -56(%rbp)
	jmp	.L21
.L23:
	movsd	-8(%rbp), %xmm0
	movsd	.LC1(%rip), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L30
	cmpl	$-2, -32(%rbp)
	jne	.L26
	addl	$1, -56(%rbp)
.L26:
	addl	$2, -32(%rbp)
	jmp	.L21
.L30:
	movl	-32(%rbp), %eax
	addl	$1, %eax
	andl	$-2, %eax
	movl	%eax, -32(%rbp)
.L21:
	movl	-56(%rbp), %eax
	sarl	%eax
	addl	$1071644672, %eax
	movl	%eax, -64(%rbp)
	movl	-32(%rbp), %eax
	shrl	%eax
	movl	%eax, -36(%rbp)
	movl	-56(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L27
	movl	-28(%rbp), %eax
	orl	%eax, -36(%rbp)
.L27:
	movl	-52(%rbp), %eax
	sall	$20, %eax
	addl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	cltq
	salq	$32, %rax
	movq	%rax, %rdx
	movl	-36(%rbp), %eax
	orq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_sqrt, .-libmin_sqrt
	.section	.rodata
	.align 8
.LC0:
	.long	-1023872167
	.long	27618847
	.align 8
.LC1:
	.long	0
	.long	1072693248
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
