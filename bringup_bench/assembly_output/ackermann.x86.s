	.file	"ackermann.c"
	.text
	.local	a
	.comm	a,4194240,32
	.local	depth
	.comm	depth,4,4
	.local	max_depth
	.comm	max_depth,4,4
	.section	.rodata
	.align 8
.LC0:
	.string	"Maximum stack depth %d exceeded. Abort.\n"
	.align 8
.LC1:
	.string	"Maximum x value %d exceeded. Abort. \n"
	.align 8
.LC2:
	.string	"Maximum y value %d exceeded. Abort. \n"
	.text
	.globl	ack
	.type	ack, @function
ack:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	depth(%rip), %eax
	addl	$1, %eax
	movl	%eax, depth(%rip)
	movl	depth(%rip), %eax
	cmpl	$16777215, %eax
	jbe	.L2
	movl	$16777215, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %edi
	call	libmin_fail@PLT
.L2:
	cmpl	$65534, -20(%rbp)
	jbe	.L3
	movl	$65535, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %edi
	call	libmin_fail@PLT
.L3:
	cmpl	$15, -24(%rbp)
	jbe	.L4
	movl	$16, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %edi
	call	libmin_fail@PLT
.L4:
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	a(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L5
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	a(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L6
.L5:
	cmpl	$0, -24(%rbp)
	jne	.L7
	movl	-20(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-20(%rbp), %eax
	salq	$6, %rax
	movq	%rax, %rdx
	leaq	a(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-20(%rbp), %eax
	salq	$6, %rax
	movq	%rax, %rdx
	leaq	a(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L6
.L7:
	cmpl	$0, -20(%rbp)
	jne	.L8
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %esi
	movl	$1, %edi
	call	ack
	movl	-24(%rbp), %edx
	leaq	0(,%rdx,4), %rcx
	leaq	a(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
	movl	-24(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	a(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L6
.L8:
	movl	-24(%rbp), %eax
	leal	-1(%rax), %ebx
	movl	-20(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	ack
	movl	%ebx, %esi
	movl	%eax, %edi
	call	ack
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %ecx
	salq	$4, %rcx
	addq	%rcx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	a(%rip), %rdx
	movl	%eax, (%rcx,%rdx)
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	a(%rip), %rax
	movl	(%rdx,%rax), %eax
.L6:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ack, .-ack
	.section	.rodata
.LC3:
	.string	"\nx+y=%d:\n\n"
.LC4:
	.string	"A(%d,%d) = %d\n"
.LC5:
	.string	"Max recursive depth = %u\n"
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
	subq	$16, %rsp
	movl	$0, max_depth(%rip)
	movl	$0, -4(%rbp)
	jmp	.L10
.L14:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$0, -8(%rbp)
	jmp	.L11
.L13:
	movl	$0, depth(%rip)
	movl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	-8(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	ack
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	-8(%rbp), %edx
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	depth(%rip), %eax
	movl	max_depth(%rip), %edx
	cmpl	%eax, %edx
	jnb	.L12
	movl	depth(%rip), %eax
	movl	%eax, max_depth(%rip)
.L12:
	addl	$1, -8(%rbp)
.L11:
	movl	-8(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jnb	.L13
	addl	$1, -4(%rbp)
.L10:
	cmpl	$5, -4(%rbp)
	jbe	.L14
	movl	max_depth(%rip), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rax
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
