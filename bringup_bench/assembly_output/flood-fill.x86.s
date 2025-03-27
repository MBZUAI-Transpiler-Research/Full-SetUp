	.file	"flood-fill.c"
	.text
	.globl	mat
	.data
	.align 32
	.type	mat, @object
	.size	mat, 100
mat:
	.ascii	"YYYGGGGGGG"
	.ascii	"YYYYYYGXXX"
	.ascii	"GXGGGGGXXX"
	.ascii	"WXXWWGGGGX"
	.ascii	"WRRRRRGXXX"
	.ascii	"WWWRRGGXXX"
	.ascii	"WBWRRRRRRX"
	.ascii	"WBBBBRRXXX"
	.ascii	"WBBXBBBBXX"
	.ascii	"WBBXXXXXXX"
	.globl	row
	.align 32
	.type	row, @object
	.size	row, 32
row:
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.globl	col
	.align 32
	.type	col, @object
	.size	col, 32
col:
	.long	-1
	.long	0
	.long	1
	.long	-1
	.long	1
	.long	-1
	.long	0
	.long	1
	.text
	.globl	floodfill
	.type	floodfill, @function
floodfill:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%ecx, %eax
	movl	%esi, %ecx
	movb	%cl, -28(%rbp)
	movb	%dl, -32(%rbp)
	movb	%al, -36(%rbp)
	movsbq	-28(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movsbl	-32(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movb	%al, -5(%rbp)
	movsbq	-28(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movsbl	-32(%rbp), %eax
	cltq
	movzbl	-36(%rbp), %edx
	movb	%dl, (%rcx,%rax)
	movl	$0, -4(%rbp)
	jmp	.L2
.L4:
	movsbl	-28(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	row(%rip), %rax
	movl	(%rcx,%rax), %eax
	addl	%edx, %eax
	testl	%eax, %eax
	js	.L3
	movsbl	-28(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	row(%rip), %rax
	movl	(%rcx,%rax), %eax
	addl	%edx, %eax
	cmpl	$9, %eax
	jg	.L3
	movsbl	-32(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	col(%rip), %rax
	movl	(%rcx,%rax), %eax
	addl	%edx, %eax
	testl	%eax, %eax
	js	.L3
	movsbl	-32(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	col(%rip), %rax
	movl	(%rcx,%rax), %eax
	addl	%edx, %eax
	cmpl	$9, %eax
	jg	.L3
	movsbl	-28(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	row(%rip), %rax
	movl	(%rcx,%rax), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movsbl	-32(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	leaq	col(%rip), %rax
	movl	(%rsi,%rax), %eax
	addl	%ecx, %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	cmpb	%al, -5(%rbp)
	jne	.L3
	movsbl	-36(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	col(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edx
	movzbl	-32(%rbp), %eax
	addl	%edx, %eax
	movsbl	%al, %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	leaq	row(%rip), %rax
	movl	(%rsi,%rax), %eax
	movl	%eax, %esi
	movzbl	-28(%rbp), %eax
	addl	%esi, %eax
	movsbl	%al, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	floodfill
.L3:
	addl	$1, -4(%rbp)
.L2:
	cmpl	$7, -4(%rbp)
	jle	.L4
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	floodfill, .-floodfill
	.section	.rodata
.LC0:
	.string	"  %c"
.LC1:
	.string	"\n"
	.text
	.globl	printMatrix
	.type	printMatrix, @function
printMatrix:
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
	movl	$0, -8(%rbp)
	jmp	.L6
.L9:
	movl	$0, -4(%rbp)
	jmp	.L7
.L8:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -4(%rbp)
.L7:
	cmpl	$9, -4(%rbp)
	jle	.L8
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -8(%rbp)
.L6:
	cmpl	$9, -8(%rbp)
	jle	.L9
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	printMatrix, .-printMatrix
	.section	.rodata
	.align 8
.LC2:
	.string	"\nBEFORE flooding `%c' @ (%d,%d):\n"
.LC3:
	.string	"\nAFTER:\n"
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
	subq	$16, %rsp
	movl	$3, -8(%rbp)
	movl	$9, -4(%rbp)
	movb	$67, -9(%rbp)
	movsbl	-9(%rbp), %eax
	movl	-4(%rbp), %ecx
	movl	-8(%rbp), %edx
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	mat(%rip), %rax
	movq	%rax, %rdi
	call	printMatrix
	movsbl	-9(%rbp), %ecx
	movl	-4(%rbp), %eax
	movsbl	%al, %edx
	movl	-8(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	mat(%rip), %rax
	movq	%rax, %rdi
	call	floodfill
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	mat(%rip), %rax
	movq	%rax, %rdi
	call	printMatrix
	call	libmin_success@PLT
	movl	$0, %eax
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
