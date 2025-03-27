	.file	"cipher.c"
	.text
	.globl	encipher
	.type	encipher, @function
encipher:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -32(%rbp)
	movl	$0, -28(%rbp)
	movl	$-1640531527, -20(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-72(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	$32, -24(%rbp)
	jmp	.L2
.L3:
	movl	-20(%rbp), %eax
	addl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movl	-32(%rbp), %eax
	shrl	$5, %eax
	movl	%eax, %ecx
	movl	-12(%rbp), %eax
	addl	%ecx, %eax
	xorl	%edx, %eax
	addl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-36(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movl	-36(%rbp), %eax
	shrl	$5, %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	addl	%ecx, %eax
	xorl	%edx, %eax
	addl	%eax, -32(%rbp)
.L2:
	movl	-24(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -24(%rbp)
	testl	%eax, %eax
	jne	.L3
	movq	-64(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	leaq	4(%rax), %rdx
	movl	-32(%rbp), %eax
	movl	%eax, (%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	encipher, .-encipher
	.globl	decipher
	.type	decipher, @function
decipher:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -32(%rbp)
	movl	$-957401312, -28(%rbp)
	movl	$-1640531527, -20(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-72(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	$32, -24(%rbp)
	jmp	.L5
.L6:
	movl	-36(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-36(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movl	-36(%rbp), %eax
	shrl	$5, %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	addl	%ecx, %eax
	xorl	%edx, %eax
	subl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movl	-32(%rbp), %eax
	shrl	$5, %eax
	movl	%eax, %ecx
	movl	-12(%rbp), %eax
	addl	%ecx, %eax
	xorl	%edx, %eax
	subl	%eax, -36(%rbp)
	movl	-20(%rbp), %eax
	subl	%eax, -28(%rbp)
.L5:
	movl	-24(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -24(%rbp)
	testl	%eax, %eax
	jne	.L6
	movq	-64(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	leaq	4(%rax), %rdx
	movl	-32(%rbp), %eax
	movl	%eax, (%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	decipher, .-decipher
	.globl	keytext
	.data
	.align 16
	.type	keytext, @object
	.size	keytext, 16
keytext:
	.long	358852050
	.long	311606025
	.long	739108171
	.long	861449956
	.globl	plaintext
	.align 8
	.type	plaintext, @object
	.size	plaintext, 8
plaintext:
	.long	765625614
	.long	14247501
	.globl	cipherref
	.align 8
	.type	cipherref, @object
	.size	cipherref, 8
cipherref:
	.long	-1612527516
	.long	-673559132
	.globl	ciphertext
	.bss
	.align 8
	.type	ciphertext, @object
	.size	ciphertext, 8
ciphertext:
	.zero	8
	.globl	newplain
	.align 8
	.type	newplain, @object
	.size	newplain, 8
newplain:
	.zero	8
	.section	.rodata
.LC0:
	.string	"TEA Cipher results:\n"
	.align 8
.LC1:
	.string	"  plaintext:  0x%08lx 0x%08lx\n"
	.align 8
.LC2:
	.string	"  ciphertext: 0x%08lx 0x%08lx\n"
	.align 8
.LC3:
	.string	"  newplain:   0x%08lx 0x%08lx\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	keytext(%rip), %rax
	movq	%rax, %rdx
	leaq	ciphertext(%rip), %rax
	movq	%rax, %rsi
	leaq	plaintext(%rip), %rax
	movq	%rax, %rdi
	call	encipher
	movl	ciphertext(%rip), %edx
	movl	cipherref(%rip), %eax
	cmpl	%eax, %edx
	jne	.L8
	movl	4+ciphertext(%rip), %edx
	movl	4+cipherref(%rip), %eax
	cmpl	%eax, %edx
	je	.L9
.L8:
	movl	$1, %edi
	call	libmin_fail@PLT
.L9:
	leaq	keytext(%rip), %rax
	movq	%rax, %rdx
	leaq	newplain(%rip), %rax
	movq	%rax, %rsi
	leaq	ciphertext(%rip), %rax
	movq	%rax, %rdi
	call	decipher
	movl	newplain(%rip), %edx
	movl	plaintext(%rip), %eax
	cmpl	%eax, %edx
	jne	.L10
	movl	4+newplain(%rip), %edx
	movl	4+plaintext(%rip), %eax
	cmpl	%eax, %edx
	je	.L11
.L10:
	movl	$2, %edi
	call	libmin_fail@PLT
.L11:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	4+plaintext(%rip), %edx
	movl	plaintext(%rip), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	4+ciphertext(%rip), %edx
	movl	ciphertext(%rip), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	4+newplain(%rip), %edx
	movl	newplain(%rip), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
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
