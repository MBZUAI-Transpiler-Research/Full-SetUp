	.file	"audio-codec.c"
	.text
	.globl	pcm
	.data
	.align 16
	.type	pcm, @object
	.size	pcm, 16
pcm:
	.value	1000
	.value	-1000
	.value	1234
	.value	3200
	.value	-1314
	.value	0
	.value	32767
	.value	-32768
	.globl	r_coded
	.align 8
	.type	r_coded, @object
	.size	r_coded, 8
r_coded:
	.ascii	"\372z\346\234a\325\252*"
	.globl	r_decoded
	.align 16
	.type	r_decoded, @object
	.size	r_decoded, 16
r_decoded:
	.value	1008
	.value	-1008
	.value	1248
	.value	3264
	.value	-1312
	.value	8
	.value	32256
	.value	-32256
	.text
	.globl	encode
	.type	encode, @function
encode:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movb	$0, -27(%rbp)
	movw	$0, -26(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L2
.L10:
	movq	-48(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzwl	(%rax), %eax
	movw	%ax, -26(%rbp)
	movl	$7, -24(%rbp)
	movl	$16384, -20(%rbp)
	movswl	-26(%rbp), %eax
	sarl	$8, %eax
	andl	$128, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L3
	movzwl	-26(%rbp), %eax
	notl	%eax
	jmp	.L4
.L3:
	movzwl	-26(%rbp), %eax
.L4:
	movw	%ax, -26(%rbp)
	jmp	.L5
.L7:
	subl	$1, -24(%rbp)
	sarl	-20(%rbp)
.L5:
	movswl	-26(%rbp), %eax
	andl	-20(%rbp), %eax
	testl	%eax, %eax
	jne	.L6
	cmpl	$0, -24(%rbp)
	jg	.L7
.L6:
	movswl	-26(%rbp), %edx
	cmpl	$0, -24(%rbp)
	je	.L8
	movl	-24(%rbp), %eax
	addl	$3, %eax
	jmp	.L9
.L8:
	movl	$4, %eax
.L9:
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$15, %eax
	movl	%eax, -12(%rbp)
	sall	$4, -24(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	orl	%eax, %edx
	movl	-12(%rbp), %eax
	orl	%edx, %eax
	movb	%al, -27(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	-27(%rbp), %edx
	xorl	$-43, %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L2:
	movq	-8(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L10
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	encode, .-encode
	.globl	decode
	.type	decode, @function
decode:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movb	$0, -21(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L12
.L17:
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -21(%rbp)
	xorb	$-43, -21(%rbp)
	movzbl	-21(%rbp), %eax
	andl	$128, %eax
	movl	%eax, -16(%rbp)
	movzbl	-21(%rbp), %eax
	sarl	$4, %eax
	andl	$7, %eax
	movl	%eax, -12(%rbp)
	movzbl	-21(%rbp), %eax
	sall	$4, %eax
	movzbl	%al, %eax
	orl	$8, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L13
	movl	$256, %eax
	jmp	.L14
.L13:
	movl	$0, %eax
.L14:
	addl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	movl	$1, %edx
	testl	%eax, %eax
	cmovle	%edx, %eax
	subl	$1, %eax
	movl	%eax, %ecx
	sall	%cl, -20(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L15
	movl	-20(%rbp), %eax
	negl	%eax
	movl	%eax, %ecx
	jmp	.L16
.L15:
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
.L16:
	movq	-40(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movw	%cx, (%rax)
	addq	$1, -8(%rbp)
.L12:
	movq	-8(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L17
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	decode, .-decode
	.type	test, @function
test:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	encode
	movq	$0, -16(%rbp)
	jmp	.L19
.L21:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	leaq	r_coded(%rip), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L20
	movl	$1, %edi
	call	libmin_fail@PLT
.L20:
	addq	$1, -16(%rbp)
.L19:
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L21
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	decode
	movq	$0, -8(%rbp)
	jmp	.L22
.L24:
	movq	-8(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %edx
	movq	-8(%rbp), %rax
	leaq	(%rax,%rax), %rcx
	leaq	r_decoded(%rip), %rax
	movzwl	(%rcx,%rax), %eax
	cmpw	%ax, %dx
	je	.L23
	movl	$1, %edi
	call	libmin_fail@PLT
.L23:
	addq	$1, -8(%rbp)
.L22:
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L24
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	test, .-test
	.section	.rodata
.LC0:
	.string	"inputs: "
.LC1:
	.string	"%d "
.LC2:
	.string	"\n"
.LC3:
	.string	"encode: "
.LC4:
	.string	"%u "
.LC5:
	.string	"decode: "
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rsi
	leaq	pcm(%rip), %rax
	movq	%rax, %rdi
	call	test
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	$0, -56(%rbp)
	jmp	.L26
.L27:
	movq	-56(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	leaq	pcm(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	cwtl
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addq	$1, -56(%rbp)
.L26:
	cmpq	$7, -56(%rbp)
	jbe	.L27
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	$0, -48(%rbp)
	jmp	.L28
.L29:
	leaq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addq	$1, -48(%rbp)
.L28:
	cmpq	$7, -48(%rbp)
	jbe	.L29
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	$0, -40(%rbp)
	jmp	.L30
.L31:
	movq	-40(%rbp), %rax
	movzwl	-32(%rbp,%rax,2), %eax
	cwtl
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addq	$1, -40(%rbp)
.L30:
	cmpq	$7, -40(%rbp)
	jbe	.L31
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L33
	call	__stack_chk_fail@PLT
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
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
