	.file	"fy-shuffle.c"
	.text
	.type	rand_int, @function
rand_int:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$2147483647, %eax
	cltd
	idivl	-20(%rbp)
	movl	$2147483647, %eax
	subl	%edx, %eax
	movl	%eax, -8(%rbp)
.L2:
	call	libmin_rand@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.L2
	movl	-4(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	movl	%edx, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	rand_int, .-rand_int
	.globl	fy_shuffle
	.type	fy_shuffle, @function
fy_shuffle:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L5
.L8:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edi
	call	rand_int
	movl	%eax, -8(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L6
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L6
	cmpl	$0, -8(%rbp)
	js	.L6
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L7
.L6:
	movl	$1, %edi
	call	libmin_fail@PLT
.L7:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	subl	$1, -12(%rbp)
.L5:
	cmpl	$0, -12(%rbp)
	jg	.L8
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	fy_shuffle, .-fy_shuffle
	.section	.rodata
.LC0:
	.string	"%s"
.LC1:
	.string	"%2d "
.LC2:
	.string	"\n"
	.text
	.globl	print
	.type	print, @function
print:
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
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$0, -4(%rbp)
	jmp	.L10
.L11:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -4(%rbp)
.L10:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L11
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	print, .-print
	.globl	a
	.data
	.align 32
	.type	a, @object
	.size	a, 44
a:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.globl	b
	.align 32
	.type	b, @object
	.size	b, 76
b:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	12
	.long	13
	.long	14
	.long	15
	.long	16
	.long	17
	.long	18
	.section	.rodata
.LC3:
	.string	"A (before): "
.LC4:
	.string	"A (after):  "
.LC5:
	.string	"B (before): "
.LC6:
	.string	"B (after):  "
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
	subq	$16, %rsp
	movl	$42, %edi
	call	libmin_srand@PLT
	movl	$0, -4(%rbp)
	jmp	.L13
.L14:
	movl	$11, %edx
	leaq	a(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	print
	movl	$11, %esi
	leaq	a(%rip), %rax
	movq	%rax, %rdi
	call	fy_shuffle
	movl	$11, %edx
	leaq	a(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	print
	movl	$19, %edx
	leaq	b(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	print
	movl	$19, %esi
	leaq	b(%rip), %rax
	movq	%rax, %rdi
	call	fy_shuffle
	movl	$19, %edx
	leaq	b(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	print
	addl	$1, -4(%rbp)
.L13:
	cmpl	$7, -4(%rbp)
	jle	.L14
	call	libmin_success@PLT
	movl	$0, %eax
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
