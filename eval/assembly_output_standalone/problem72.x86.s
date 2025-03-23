	.file	"code.c"
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movss	%xmm2, -28(%rbp)
	movss	-20(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	addss	-24(%rbp), %xmm1
	movss	-28(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L2
	movss	-20(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	addss	-28(%rbp), %xmm1
	movss	-24(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L2
	movss	-24(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	addss	-28(%rbp), %xmm1
	movss	-20(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jb	.L6
.L2:
	movss	.LC0(%rip), %xmm0
	jmp	.L5
.L6:
	movss	-20(%rbp), %xmm0
	addss	-24(%rbp), %xmm0
	addss	-28(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	subss	-20(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-8(%rbp), %xmm1
	movss	-8(%rbp), %xmm0
	subss	-24(%rbp), %xmm0
	mulss	%xmm0, %xmm1
	movss	-8(%rbp), %xmm0
	subss	-28(%rbp), %xmm0
	mulss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movd	%eax, %xmm0
	call	sqrtf@PLT
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movss	-4(%rbp), %xmm1
	movss	.LC2(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movd	%eax, %xmm0
	call	roundf@PLT
	movd	%xmm0, %eax
	movss	.LC2(%rip), %xmm1
	movd	%eax, %xmm0
	divss	%xmm1, %xmm0
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align 4
.LC0:
	.long	-1082130432
	.align 4
.LC1:
	.long	1073741824
	.align 4
.LC2:
	.long	1120403456
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
