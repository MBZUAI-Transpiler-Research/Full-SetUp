	.file	"mandelbrot.c"
	.text
	.section	.rodata
.LC0:
	.string	"<%d,%d,%d>\n"
	.text
	.globl	color
	.type	color, @function
color:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-12(%rbp), %ecx
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	color, .-color
	.section	.rodata
.LC2:
	.string	"** Mandelbrot ASCII image\n"
.LC3:
	.string	"** xres: %d, yres: %d\n"
.LC9:
	.string	" "
.LC10:
	.string	"0"
.LC11:
	.string	"\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	$100, -60(%rbp)
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	$78, -56(%rbp)
	movl	$48, -52(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, -64(%rbp)
	jmp	.L3
.L12:
	movl	$1, -68(%rbp)
	jmp	.L4
.L11:
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-68(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ssl	-56(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC4(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	divsd	-32(%rbp), %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC6(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-64(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ssl	-52(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC4(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	divsd	-32(%rbp), %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	$1, -72(%rbp)
	jmp	.L5
.L8:
	movsd	-48(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	movsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-48(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	mulsd	-40(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	comisd	.LC8(%rip), %xmm0
	jbe	.L6
	movl	$999999, -72(%rbp)
.L6:
	addl	$1, -72(%rbp)
.L5:
	movl	-72(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L8
	cmpl	$99998, -72(%rbp)
	jg	.L9
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	jmp	.L10
.L9:
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
.L10:
	addl	$1, -68(%rbp)
.L4:
	movl	-68(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.L11
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -64(%rbp)
.L3:
	movl	-64(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.L12
	call	libmin_success@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC4:
	.long	0
	.long	1071644672
	.align 8
.LC5:
	.long	0
	.long	1074266112
	.align 8
.LC6:
	.long	1717986918
	.long	1072064102
	.align 8
.LC8:
	.long	0
	.long	1079574528
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
