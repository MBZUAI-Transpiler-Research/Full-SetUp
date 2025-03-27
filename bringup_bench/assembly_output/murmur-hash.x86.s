	.file	"murmur-hash.c"
	.text
	.globl	murmurhash
	.type	murmurhash, @function
murmurhash:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	%edx, -80(%rbp)
	movl	$-862048943, -52(%rbp)
	movl	$461845907, -48(%rbp)
	movl	$15, -44(%rbp)
	movl	$13, -40(%rbp)
	movl	$5, -36(%rbp)
	movl	$-430675100, -32(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -60(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -56(%rbp)
	movl	-76(%rbp), %eax
	shrl	$2, %eax
	movl	%eax, -28(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-28(%rbp), %eax
	sall	$2, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-28(%rbp), %eax
	sall	$2, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	-28(%rbp), %eax
	negl	%eax
	movl	%eax, -56(%rbp)
	jmp	.L2
.L3:
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	roll	%cl, -60(%rbp)
	movl	-60(%rbp), %eax
	imull	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	xorl	%eax, -64(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	roll	%cl, -64(%rbp)
	movl	-64(%rbp), %eax
	imull	-36(%rbp), %eax
	movl	%eax, %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -64(%rbp)
	addl	$1, -56(%rbp)
.L2:
	cmpl	$0, -56(%rbp)
	jne	.L3
	movl	$0, -60(%rbp)
	movl	-76(%rbp), %eax
	andl	$3, %eax
	cmpl	$3, %eax
	je	.L4
	cmpl	$3, %eax
	ja	.L5
	cmpl	$1, %eax
	je	.L6
	cmpl	$2, %eax
	je	.L7
	jmp	.L5
.L4:
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	xorl	%eax, -60(%rbp)
.L7:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	xorl	%eax, -60(%rbp)
.L6:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	xorl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	roll	%cl, -60(%rbp)
	movl	-60(%rbp), %eax
	imull	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	xorl	%eax, -64(%rbp)
.L5:
	movl	-76(%rbp), %eax
	xorl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	shrl	$16, %eax
	xorl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	imull	$-2048144789, %eax, %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	imull	$-1028477387, %eax, %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	shrl	$16, %eax
	xorl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	murmurhash, .-murmurhash
	.section	.rodata
.LC0:
	.string	"kinkajou"
.LC1:
	.string	"murmurhash(\"%s\") = 0x%x\n"
	.align 8
.LC2:
	.string	"The bringup-bench benchmark MURMUR made this."
	.align 8
.LC3:
	.string	"It has to start somewhere, it has to start sometime, what better place than here? What better time than now?"
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
	subq	$48, %rsp
	movl	$0, -40(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	libmin_strlen@PLT
	movl	%eax, %ecx
	movl	-40(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	murmurhash
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	libmin_strlen@PLT
	movl	%eax, %ecx
	movl	-40(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	murmurhash
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	libmin_strlen@PLT
	movl	%eax, %ecx
	movl	-40(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	murmurhash
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
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
