	.file	"pi-calc.c"
	.text
	.globl	a
	.bss
	.align 32
	.type	a, @object
	.size	a, 210056
a:
	.zero	210056
	.globl	b
	.align 4
	.type	b, @object
	.size	b, 4
b:
	.zero	4
	.globl	c
	.data
	.align 4
	.type	c, @object
	.size	c, 4
c:
	.long	52514
	.globl	d
	.bss
	.align 4
	.type	d, @object
	.size	d, 4
d:
	.zero	4
	.globl	e
	.align 4
	.type	e, @object
	.size	e, 4
e:
	.zero	4
	.globl	f
	.data
	.align 4
	.type	f, @object
	.size	f, 4
f:
	.long	10000
	.globl	g
	.bss
	.align 4
	.type	g, @object
	.size	g, 4
g:
	.zero	4
	.globl	h
	.align 4
	.type	h, @object
	.size	h, 4
h:
	.zero	4
	.section	.rodata
.LC0:
	.string	"%04d"
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
	jmp	.L2
.L7:
	movl	d(%rip), %eax
	movl	f(%rip), %edi
	cltd
	idivl	%edi
	movl	%edx, %ecx
	movl	%ecx, %eax
	movl	%eax, d(%rip)
	movl	d(%rip), %eax
	movl	%eax, e(%rip)
	jmp	.L3
.L6:
	movl	d(%rip), %edx
	movl	b(%rip), %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movl	h(%rip), %eax
	testl	%eax, %eax
	je	.L4
	movl	b(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	a(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L5
.L4:
	movl	f(%rip), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %esi
	sarl	%esi
	cltd
	movl	%esi, %eax
	subl	%edx, %eax
.L5:
	movl	f(%rip), %edx
	imull	%edx, %eax
	addl	%ecx, %eax
	movl	%eax, d(%rip)
	movl	d(%rip), %eax
	movl	g(%rip), %edx
	subl	$1, %edx
	movl	%edx, g(%rip)
	movl	g(%rip), %edi
	movl	b(%rip), %ecx
	cltd
	idivl	%edi
	movl	%edx, %esi
	movslq	%ecx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	a(%rip), %rax
	movl	%esi, (%rdx,%rax)
	movl	d(%rip), %eax
	movl	g(%rip), %edi
	cltd
	idivl	%edi
	movl	%eax, d(%rip)
.L3:
	movl	b(%rip), %eax
	subl	$1, %eax
	movl	%eax, b(%rip)
	movl	b(%rip), %eax
	addl	%eax, %eax
	movl	%eax, g(%rip)
	movl	g(%rip), %eax
	testl	%eax, %eax
	jne	.L6
	movl	d(%rip), %eax
	movl	f(%rip), %edi
	cltd
	idivl	%edi
	movl	%eax, %edx
	movl	e(%rip), %eax
	addl	%edx, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	%eax, h(%rip)
.L2:
	movl	c(%rip), %eax
	subl	$14, %eax
	movl	%eax, c(%rip)
	movl	c(%rip), %eax
	movl	%eax, b(%rip)
	movl	b(%rip), %eax
	testl	%eax, %eax
	jne	.L7
	call	libmin_success@PLT
	movl	$0, %eax
	popq	%rbp
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
