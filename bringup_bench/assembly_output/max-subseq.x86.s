	.file	"max-subseq.c"
	.text
	.globl	S1
	.data
	.align 16
	.type	S1, @object
	.size	S1, 20
S1:
	.string	"ACADBFEDSFSDFDSEFE"
	.zero	1
	.globl	S2
	.align 16
	.type	S2, @object
	.size	S2, 20
S2:
	.string	"CBDAEFEFESAFEASDD"
	.zero	2
	.globl	i
	.bss
	.align 4
	.type	i, @object
	.size	i, 4
i:
	.zero	4
	.globl	j
	.align 4
	.type	j, @object
	.size	j, 4
j:
	.zero	4
	.globl	m
	.align 4
	.type	m, @object
	.size	m, 4
m:
	.zero	4
	.globl	n
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	LCS_table
	.align 32
	.type	LCS_table, @object
	.size	LCS_table, 6400
LCS_table:
	.zero	6400
	.globl	b
	.align 32
	.type	b, @object
	.size	b, 1600
b:
	.zero	1600
	.section	.rodata
.LC0:
	.string	"LCS: %s"
	.text
	.globl	lcsAlgo
	.type	lcsAlgo, @function
lcsAlgo:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %rbx
	movl	$0, i(%rip)
	jmp	.L2
.L3:
	movl	i(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	LCS_table(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L2:
	movl	i(%rip), %edx
	movl	m(%rip), %eax
	cmpl	%eax, %edx
	jle	.L3
	movl	$0, i(%rip)
	jmp	.L4
.L5:
	movl	i(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	LCS_table(%rip), %rax
	movl	$0, (%rdx,%rax)
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L4:
	movl	i(%rip), %edx
	movl	n(%rip), %eax
	cmpl	%eax, %edx
	jle	.L5
	movl	$1, i(%rip)
	jmp	.L6
.L12:
	movl	$1, j(%rip)
	jmp	.L7
.L11:
	movl	i(%rip), %eax
	subl	$1, %eax
	cltq
	leaq	S1(%rip), %rdx
	movzbl	(%rax,%rdx), %edx
	movl	j(%rip), %eax
	subl	$1, %eax
	cltq
	leaq	S2(%rip), %rcx
	movzbl	(%rax,%rcx), %eax
	cmpb	%al, %dl
	jne	.L8
	movl	i(%rip), %eax
	leal	-1(%rax), %edx
	movl	j(%rip), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	LCS_table(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	i(%rip), %eax
	movl	j(%rip), %edx
	addl	$1, %ecx
	movslq	%edx, %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	leaq	0(,%rax,4), %rdx
	leaq	LCS_table(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	jmp	.L9
.L8:
	movl	i(%rip), %eax
	leal	-1(%rax), %edx
	movl	j(%rip), %eax
	movslq	%eax, %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	LCS_table(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	i(%rip), %eax
	movl	j(%rip), %edx
	subl	$1, %edx
	movslq	%edx, %rsi
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	leaq	0(,%rax,4), %rdx
	leaq	LCS_table(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jl	.L10
	movl	i(%rip), %eax
	leal	-1(%rax), %edx
	movl	j(%rip), %eax
	movl	i(%rip), %edi
	movl	j(%rip), %esi
	movslq	%eax, %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	LCS_table(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movslq	%esi, %rsi
	movslq	%edi, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	leaq	0(,%rax,4), %rdx
	leaq	LCS_table(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	jmp	.L9
.L10:
	movl	i(%rip), %eax
	movl	j(%rip), %edx
	subl	$1, %edx
	movl	i(%rip), %edi
	movl	j(%rip), %esi
	movslq	%edx, %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	LCS_table(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movslq	%esi, %rsi
	movslq	%edi, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	leaq	0(,%rax,4), %rdx
	leaq	LCS_table(%rip), %rax
	movl	%ecx, (%rdx,%rax)
.L9:
	movl	j(%rip), %eax
	addl	$1, %eax
	movl	%eax, j(%rip)
.L7:
	movl	j(%rip), %edx
	movl	n(%rip), %eax
	cmpl	%eax, %edx
	jle	.L11
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L6:
	movl	i(%rip), %edx
	movl	m(%rip), %eax
	cmpl	%eax, %edx
	jle	.L12
	movl	m(%rip), %eax
	movl	n(%rip), %edx
	movslq	%edx, %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	LCS_table(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -40(%rbp)
	cltq
	movl	$16, %edx
	subq	$1, %rdx
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L13:
	cmpq	%rdx, %rsp
	je	.L14
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L13
.L14:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L15
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L15:
	movq	%rsp, %rax
	addq	$0, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movl	-52(%rbp), %eax
	cltq
	movb	$0, (%rdx,%rax)
	movl	m(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	n(%rip), %eax
	movl	%eax, -44(%rbp)
	jmp	.L16
.L21:
	movl	-48(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	S1(%rip), %rdx
	movzbl	(%rax,%rdx), %edx
	movl	-44(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	S2(%rip), %rcx
	movzbl	(%rax,%rcx), %eax
	cmpb	%al, %dl
	jne	.L17
	movl	-48(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-52(%rbp), %eax
	leal	-1(%rax), %esi
	movslq	%edx, %rax
	leaq	S1(%rip), %rdx
	movzbl	(%rax,%rdx), %ecx
	movq	-32(%rbp), %rdx
	movslq	%esi, %rax
	movb	%cl, (%rdx,%rax)
	subl	$1, -48(%rbp)
	subl	$1, -44(%rbp)
	subl	$1, -52(%rbp)
	jmp	.L16
.L17:
	movl	-48(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-44(%rbp), %eax
	movslq	%eax, %rcx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	LCS_table(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rsi
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	leaq	0(,%rax,4), %rdx
	leaq	LCS_table(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, %ecx
	jle	.L19
	subl	$1, -48(%rbp)
	jmp	.L16
.L19:
	subl	$1, -44(%rbp)
.L16:
	cmpl	$0, -48(%rbp)
	jle	.L20
	cmpl	$0, -44(%rbp)
	jg	.L21
.L20:
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	%rbx, %rsp
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	lcsAlgo, .-lcsAlgo
	.section	.rodata
.LC1:
	.string	"S1 : %s (%d) \nS2 : %s  (%d)\n"
.LC2:
	.string	"\n"
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
	leaq	S1(%rip), %rax
	movq	%rax, %rdi
	call	libmin_strlen@PLT
	movl	%eax, m(%rip)
	leaq	S2(%rip), %rax
	movq	%rax, %rdi
	call	libmin_strlen@PLT
	movl	%eax, n(%rip)
	movl	n(%rip), %edx
	movl	m(%rip), %eax
	movl	%edx, %r8d
	leaq	S2(%rip), %rdx
	movq	%rdx, %rcx
	movl	%eax, %edx
	leaq	S1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$0, %eax
	call	lcsAlgo
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
	movl	$0, %eax
	popq	%rbp
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
