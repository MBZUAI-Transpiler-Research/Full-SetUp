	.file	"spelt2num.c"
	.text
	.globl	p
	.section	.rodata
	.align 8
.LC0:
	.string	"fifty-two trillion six-hundred and seventy five million and sixty-one thousand and five-hundred sixty-two\n"
	.section	.data.rel.local,"aw"
	.align 8
	.type	p, @object
	.size	p, 8
p:
	.quad	.LC0
	.globl	n
	.bss
	.align 8
	.type	n, @object
	.size	n, 8
n:
	.zero	8
	.globl	u
	.align 8
	.type	u, @object
	.size	u, 8
u:
	.zero	8
	.globl	m
	.align 8
	.type	m, @object
	.size	m, 8
m:
	.zero	8
	.globl	b
	.align 8
	.type	b, @object
	.size	b, 8
b:
	.zero	8
	.section	.rodata
.LC3:
	.string	"%llx\n"
.LC1:
	.string	"1+DIY/.K430x9G(kC["
.LC2:
	.string	"ynwtsflrabg"
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
	subq	$16, %rsp
	jmp	.L2
.L21:
	movq	b(%rip), %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$58, %rax
	addq	%rax, %rdx
	andl	$63, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	subq	$25, %rax
	movq	%rax, -8(%rbp)
	jmp	.L3
.L18:
	movq	$19, n(%rip)
	jmp	.L4
.L16:
	movq	n(%rip), %rsi
	leaq	-1(%rsi), %rax
	movq	%rax, n(%rip)
	movl	$6177, %eax
	cqto
	idivq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rax
	sall	$2, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, u(%rip)
	movq	n(%rip), %rax
	leaq	.LC1(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	subl	$42, %eax
	cltq
	movzbl	%al, %edx
	movq	b(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L23
	movq	n(%rip), %rax
	cmpq	$15, %rax
	jg	.L6
	movq	n(%rip), %rax
	cmpq	$9, %rax
	jle	.L7
	movq	m(%rip), %rax
	movq	u(%rip), %rdi
	cqto
	idivq	%rdi
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	u(%rip), %rax
	subq	$1, %rax
	imulq	%rdx, %rax
	jmp	.L13
.L7:
	cmpq	$-1, -8(%rbp)
	je	.L9
	cmpq	$0, -8(%rbp)
	jne	.L10
	movl	$16, %edx
	jmp	.L11
.L10:
	movl	$0, %edx
.L11:
	movq	n(%rip), %rax
	addq	%rdx, %rax
	jmp	.L13
.L9:
	movq	n(%rip), %rax
	salq	$4, %rax
	jmp	.L13
.L6:
	movq	n(%rip), %rax
.L13:
	movq	m(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, m(%rip)
	movq	$0, b(%rip)
	movq	b(%rip), %rax
	testq	%rax, %rax
.L23:
	nop
.L4:
	movq	n(%rip), %rax
	testq	%rax, %rax
	jne	.L16
	movq	b(%rip), %rax
	leaq	7(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, b(%rip)
.L3:
	cmpl	$46, -12(%rbp)
	jg	.L17
	movq	b(%rip), %rax
	testq	%rax, %rax
	jne	.L18
.L17:
	movq	n(%rip), %rcx
	movabsq	$3353953467947191203, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, n(%rip)
	movq	n(%rip), %rax
	leaq	.LC2(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	cmpl	%eax, -12(%rbp)
	jne	.L19
	movq	b(%rip), %rax
	leaq	0(,%rax,8), %rdx
	movq	n(%rip), %rax
	addq	%rdx, %rax
	jmp	.L20
.L19:
	movq	b(%rip), %rax
.L20:
	movq	%rax, b(%rip)
.L2:
	movq	n(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, n(%rip)
	testq	%rax, %rax
	jne	.L21
	movq	p(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, p(%rip)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L21
	movq	m(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
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
