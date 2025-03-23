	.file	"problem40.c"
	.text
	.section	.rodata
.LC2:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -72(%rbp)
	movl	$1, -60(%rbp)
	movl	$1, -68(%rbp)
	movl	$0, -64(%rbp)
	jmp	.L2
.L7:
	pxor	%xmm3, %xmm3
	cvtsi2sdl	-68(%rbp), %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	call	log10@PLT
	movsd	.LC0(%rip), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -52(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L3
.L6:
	pxor	%xmm2, %xmm2
	cvtsi2sdl	-72(%rbp), %xmm2
	movsd	%xmm2, -88(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-64(%rbp), %xmm0
	movq	.LC1(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	-88(%rbp), %xmm2
	ucomisd	%xmm0, %xmm2
	jp	.L4
	ucomisd	%xmm0, %xmm2
	jne	.L4
	movl	-52(%rbp), %eax
	subl	-56(%rbp), %eax
	subl	$1, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movq	.LC1(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	cvttsd2sil	%xmm0, %edi
	movl	-68(%rbp), %eax
	cltd
	idivl	%edi
	movl	%eax, %ecx
	movl	-64(%rbp), %esi
	leal	1(%rsi), %eax
	movl	%eax, -64(%rbp)
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movslq	%esi, %rax
	movl	%edx, -48(%rbp,%rax,4)
.L4:
	addl	$1, -56(%rbp)
	addl	$1, -72(%rbp)
.L3:
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L6
	addl	$1, -68(%rbp)
.L2:
	cmpl	$6, -64(%rbp)
	jle	.L7
	movl	$0, -68(%rbp)
	jmp	.L8
.L9:
	movl	-68(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	movl	-60(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -60(%rbp)
	addl	$1, -68(%rbp)
.L8:
	movl	-68(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jl	.L9
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	0
	.long	1076101120
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
