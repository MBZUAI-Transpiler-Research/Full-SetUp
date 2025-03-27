	.file	"natlog.c"
	.text
	.section	.rodata
.LC1:
	.string	"natlog: e=%f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$100000, -20(%rbp)
	pxor	%xmm2, %xmm2
	cvtsi2sdl	-20(%rbp), %xmm2
	movsd	.LC0(%rip), %xmm0
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	.LC0(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L2
.L3:
	movsd	-16(%rbp), %xmm0
	mulsd	-8(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	subl	$1, -20(%rbp)
.L2:
	cmpl	$0, -20(%rbp)
	jg	.L3
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
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
