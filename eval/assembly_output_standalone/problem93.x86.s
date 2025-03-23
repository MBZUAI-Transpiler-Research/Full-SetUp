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
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	%xmm2, -12(%rbp)
	movl	-4(%rbp), %eax
	movd	%eax, %xmm0
	call	roundf@PLT
	movd	%xmm0, %eax
	movd	%eax, %xmm3
	ucomiss	-4(%rbp), %xmm3
	jp	.L14
	movd	%eax, %xmm4
	ucomiss	-4(%rbp), %xmm4
	je	.L2
.L14:
	movl	$0, %eax
	jmp	.L4
.L2:
	movl	-8(%rbp), %eax
	movd	%eax, %xmm0
	call	roundf@PLT
	movd	%xmm0, %eax
	movd	%eax, %xmm5
	ucomiss	-8(%rbp), %xmm5
	jp	.L15
	movd	%eax, %xmm6
	ucomiss	-8(%rbp), %xmm6
	je	.L5
.L15:
	movl	$0, %eax
	jmp	.L4
.L5:
	movl	-12(%rbp), %eax
	movd	%eax, %xmm0
	call	roundf@PLT
	movd	%xmm0, %eax
	movd	%eax, %xmm7
	ucomiss	-12(%rbp), %xmm7
	jp	.L16
	movd	%eax, %xmm1
	ucomiss	-12(%rbp), %xmm1
	je	.L7
.L16:
	movl	$0, %eax
	jmp	.L4
.L7:
	movss	-4(%rbp), %xmm0
	addss	-8(%rbp), %xmm0
	ucomiss	-12(%rbp), %xmm0
	jp	.L17
	ucomiss	-12(%rbp), %xmm0
	je	.L9
.L17:
	movss	-4(%rbp), %xmm0
	addss	-12(%rbp), %xmm0
	ucomiss	-8(%rbp), %xmm0
	jp	.L18
	ucomiss	-8(%rbp), %xmm0
	je	.L9
.L18:
	movss	-8(%rbp), %xmm0
	addss	-12(%rbp), %xmm0
	ucomiss	-4(%rbp), %xmm0
	jp	.L12
	ucomiss	-4(%rbp), %xmm0
	jne	.L12
.L9:
	movl	$1, %eax
	jmp	.L4
.L12:
	movl	$0, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
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
