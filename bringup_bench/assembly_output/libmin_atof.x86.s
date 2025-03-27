	.file	"libmin_atof.c"
	.text
	.globl	libmin_atof
	.type	libmin_atof, @function
libmin_atof:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L2
.L4:
	movsd	-8(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movl	-20(%rbp), %eax
	subl	$48, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
.L2:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L3
	movq	_pctype(%rip), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L4
.L3:
	cmpl	$46, -20(%rbp)
	jne	.L5
	jmp	.L6
.L7:
	movsd	-8(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movl	-20(%rbp), %eax
	subl	$48, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	subl	$1, -24(%rbp)
.L6:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L5
	movq	_pctype(%rip), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L7
.L5:
	cmpl	$101, -20(%rbp)
	je	.L8
	cmpl	$69, -20(%rbp)
	jne	.L14
.L8:
	movl	$1, -16(%rbp)
	movl	$0, -12(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpl	$43, -20(%rbp)
	jne	.L10
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -20(%rbp)
	jmp	.L12
.L10:
	cmpl	$45, -20(%rbp)
	jne	.L12
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	$-1, -16(%rbp)
	jmp	.L12
.L13:
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	subl	$48, %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -20(%rbp)
.L12:
	movq	_pctype(%rip), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L13
	movl	-12(%rbp), %eax
	imull	-16(%rbp), %eax
	addl	%eax, -24(%rbp)
	jmp	.L14
.L15:
	movsd	-8(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	subl	$1, -24(%rbp)
.L14:
	cmpl	$0, -24(%rbp)
	jg	.L15
	jmp	.L16
.L17:
	movsd	-8(%rbp), %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$1, -24(%rbp)
.L16:
	cmpl	$0, -24(%rbp)
	js	.L17
	movsd	-8(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_atof, .-libmin_atof
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1076101120
	.align 8
.LC2:
	.long	-1717986918
	.long	1069128089
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
