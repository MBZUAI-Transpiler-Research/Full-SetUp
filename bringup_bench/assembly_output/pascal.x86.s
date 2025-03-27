	.file	"pascal.c"
	.text
	.local	triangle
	.comm	triangle,3720,32
	.globl	num_digits
	.type	num_digits, @function
num_digits:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L2
.L3:
	addl	$1, -4(%rbp)
.L2:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$2, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L3
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	num_digits, .-num_digits
	.section	.rodata
.LC0:
	.string	" "
.LC1:
	.string	"%d"
	.text
	.globl	print_centered
	.type	print_centered, @function
print_centered:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	num_digits
	movl	%eax, -8(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.L6
	movl	$1, %eax
	jmp	.L7
.L6:
	movl	-24(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -4(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L8
.L9:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -12(%rbp)
.L8:
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L9
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$0, -12(%rbp)
	jmp	.L10
.L11:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -12(%rbp)
.L10:
	movl	-24(%rbp), %eax
	subl	-8(%rbp), %eax
	subl	-4(%rbp), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L11
	movl	$0, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	print_centered, .-print_centered
	.section	.rodata
	.align 8
.LC2:
	.string	"\n\npascal [-h -v] [-c n] n \nprint the first n rows of pascal's triangle to stdout.\n-h: print this helpful information\n-v: print version number and exit\n-c: print the number of columns required for display only \n\n"
.LC3:
	.string	"1.0"
.LC4:
	.string	"%s\n"
	.align 8
.LC5:
	.string	"usage: pascal [ -h -v] [-c rows] rows\n"
.LC6:
	.string	"0\n"
.LC7:
	.string	"pascal"
	.align 8
.LC8:
	.string	"%s: %d is an invalid number of rows\n"
.LC9:
	.string	"%s: %d > %d rows maximum\n"
.LC10:
	.string	"%d\n"
	.align 8
.LC11:
	.string	"%s: error printing element %d,%d\n"
.LC12:
	.string	"\n"
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
	subq	$48, %rsp
	movl	$1, -16(%rbp)
	movq	$0, -8(%rbp)
	movl	$1, -36(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L13
.L20:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$104, %al
	jne	.L14
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$0, %eax
	jmp	.L15
.L14:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$118, %al
	jne	.L16
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$0, %eax
	jmp	.L15
.L16:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$99, %al
	jne	.L17
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -16(%rbp)
	jg	.L18
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %eax
	jmp	.L15
.L18:
	movl	$1, -28(%rbp)
	addl	$1, -36(%rbp)
	jmp	.L13
.L17:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %eax
	jmp	.L15
.L13:
	movl	-36(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.L19
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L20
.L19:
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -16(%rbp)
	je	.L21
	movl	$20, -24(%rbp)
	jmp	.L22
.L21:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	libmin_atoi@PLT
	movl	%eax, -24(%rbp)
.L22:
	cmpl	$0, -24(%rbp)
	jne	.L23
	cmpl	$0, -28(%rbp)
	je	.L24
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
.L24:
	call	libmin_success@PLT
.L23:
	cmpl	$0, -24(%rbp)
	jns	.L25
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC7(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %edi
	call	libmin_fail@PLT
.L25:
	cmpl	$30, -24(%rbp)
	jle	.L26
	movl	-24(%rbp), %eax
	movl	$30, %ecx
	movl	%eax, %edx
	leaq	.LC7(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %edi
	call	libmin_fail@PLT
.L26:
	movl	$1, triangle(%rip)
	movl	$1, -36(%rbp)
	jmp	.L27
.L30:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	triangle(%rip), %rax
	movl	$1, (%rdx,%rax)
	movl	$1, -32(%rbp)
	jmp	.L28
.L29:
	movl	-36(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	triangle(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-36(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-32(%rbp), %eax
	movslq	%eax, %rsi
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	leaq	0(,%rax,4), %rdx
	leaq	triangle(%rip), %rax
	movl	(%rdx,%rax), %eax
	addl	%eax, %ecx
	movl	-32(%rbp), %eax
	movslq	%eax, %rsi
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	leaq	0(,%rax,4), %rdx
	leaq	triangle(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	addl	$1, -32(%rbp)
.L28:
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L29
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	triangle(%rip), %rax
	movl	$1, (%rdx,%rax)
	addl	$1, -36(%rbp)
.L27:
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L30
	movl	-24(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	movslq	%eax, %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	triangle(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	num_digits
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L31
	addl	$1, -20(%rbp)
.L31:
	cmpl	$0, -28(%rbp)
	je	.L32
	movl	-20(%rbp), %eax
	addl	$2, %eax
	imull	-24(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
.L32:
	movl	$0, -36(%rbp)
	jmp	.L33
.L39:
	movl	-24(%rbp), %eax
	subl	-36(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	addl	$1, %eax
	imull	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L34
.L35:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -32(%rbp)
.L34:
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L35
	movl	$0, -32(%rbp)
	jmp	.L36
.L38:
	movl	-20(%rbp), %eax
	leal	2(%rax), %ecx
	movl	-32(%rbp), %eax
	movslq	%eax, %rsi
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	leaq	0(,%rax,4), %rdx
	leaq	triangle(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	print_centered
	testl	%eax, %eax
	je	.L37
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	leaq	.LC7(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %edi
	call	libmin_fail@PLT
.L37:
	addl	$1, -32(%rbp)
.L36:
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.L38
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -36(%rbp)
.L33:
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L39
	call	libmin_success@PLT
	movl	$0, %eax
.L15:
	leave
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
