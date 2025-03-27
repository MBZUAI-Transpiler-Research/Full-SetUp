	.file	"indirect-test.c"
	.text
	.globl	aglobal
	.data
	.align 4
	.type	aglobal, @object
	.size	aglobal, 4
aglobal:
	.long	56
	.text
	.globl	foo
	.type	foo, @function
foo:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	imull	%eax, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	foo, .-foo
	.globl	bar
	.type	bar, @function
bar:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	aglobal(%rip), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, %edi
	call	*%rdx
	movl	%eax, aglobal(%rip)
	movl	aglobal(%rip), %eax
	andl	$7, %eax
	cmpl	$4, %eax
	ja	.L4
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L6(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L6(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L6:
	.long	.L10-.L6
	.long	.L9-.L6
	.long	.L8-.L6
	.long	.L7-.L6
	.long	.L5-.L6
	.text
.L10:
	movl	aglobal(%rip), %eax
	addl	$1, %eax
	movl	%eax, aglobal(%rip)
	jmp	.L11
.L9:
	movl	aglobal(%rip), %eax
	subl	$1, %eax
	movl	%eax, aglobal(%rip)
	jmp	.L11
.L8:
	movl	aglobal(%rip), %eax
	addl	%eax, %eax
	movl	%eax, aglobal(%rip)
	jmp	.L11
.L7:
	movl	aglobal(%rip), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, aglobal(%rip)
	jmp	.L11
.L5:
	movl	aglobal(%rip), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, aglobal(%rip)
	jmp	.L11
.L4:
	movl	aglobal(%rip), %eax
	negl	%eax
	movl	%eax, aglobal(%rip)
	nop
.L11:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	bar, .-bar
	.globl	pbar
	.section	.data.rel.local,"aw"
	.align 8
	.type	pbar, @object
	.size	pbar, 8
pbar:
	.quad	bar
	.section	.rodata
.LC0:
	.string	"aglobal = %d\n"
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
	leaq	foo(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	pbar(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	pbar(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	pbar(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	aglobal(%rip), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
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
