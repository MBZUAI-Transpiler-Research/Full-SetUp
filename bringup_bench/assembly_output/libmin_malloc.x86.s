	.file	"libmin_malloc.c"
	.text
	.local	head
	.comm	head,8,8
	.local	tail
	.comm	tail,8,8
	.type	__get_free_block, @function
__get_free_block:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	head(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2
.L5:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jb	.L3
	movq	-8(%rbp), %rax
	jmp	.L4
.L3:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L2:
	cmpq	$0, -8(%rbp)
	jne	.L5
	movl	$0, %eax
.L4:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	__get_free_block, .-__get_free_block
	.globl	libmin_malloc
	.type	libmin_malloc, @function
libmin_malloc:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L7
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	__get_free_block
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L9
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-24(%rbp), %rax
	addq	$24, %rax
	jmp	.L8
.L9:
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	libtarg_sbrk@PLT
	movq	%rax, -8(%rbp)
	cmpq	$-1, -8(%rbp)
	jne	.L10
	movl	$0, %eax
	jmp	.L8
.L10:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	head(%rip), %rax
	testq	%rax, %rax
	jne	.L11
	movq	-24(%rbp), %rax
	movq	%rax, head(%rip)
.L11:
	movq	tail(%rip), %rax
	testq	%rax, %rax
	je	.L12
	movq	tail(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L12:
	movq	-24(%rbp), %rax
	movq	%rax, tail(%rip)
	movq	-24(%rbp), %rax
	addq	$24, %rax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	libmin_malloc, .-libmin_malloc
	.globl	libmin_free
	.type	libmin_free, @function
libmin_free:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L22
	movq	-40(%rbp), %rax
	subq	$24, %rax
	movq	%rax, -16(%rbp)
	movl	$0, %edi
	call	libtarg_sbrk@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -8(%rbp)
	jne	.L16
	movq	head(%rip), %rdx
	movq	tail(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L17
	movq	$0, tail(%rip)
	movq	tail(%rip), %rax
	movq	%rax, head(%rip)
	jmp	.L18
.L17:
	movq	head(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L19
.L21:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	tail(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L20
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, tail(%rip)
.L20:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.L19:
	cmpq	$0, -24(%rbp)
	jne	.L21
.L18:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	$-24, %rax
	subq	%rdx, %rax
	movq	%rax, %rdi
	call	libtarg_sbrk@PLT
	jmp	.L13
.L16:
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	jmp	.L13
.L22:
	nop
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	libmin_free, .-libmin_free
	.globl	libmin_calloc
	.type	libmin_calloc, @function
libmin_calloc:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L24
	cmpq	$0, -32(%rbp)
	jne	.L25
.L24:
	movl	$0, %eax
	jmp	.L26
.L25:
	movq	-24(%rbp), %rax
	imulq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %edx
	divq	-24(%rbp)
	cmpq	%rax, -32(%rbp)
	je	.L27
	movl	$0, %eax
	jmp	.L26
.L27:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	libmin_malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L28
	movl	$0, %eax
	jmp	.L26
.L28:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	libmin_memset@PLT
	movq	-8(%rbp), %rax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	libmin_calloc, .-libmin_calloc
	.globl	libmin_realloc
	.type	libmin_realloc, @function
libmin_realloc:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L30
	cmpq	$0, -32(%rbp)
	jne	.L31
.L30:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	libmin_malloc
	jmp	.L32
.L31:
	movq	-24(%rbp), %rax
	subq	$24, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jb	.L33
	movq	-24(%rbp), %rax
	jmp	.L32
.L33:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	libmin_malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L34
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	libmin_memcpy@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	libmin_free
.L34:
	movq	-8(%rbp), %rax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	libmin_realloc, .-libmin_realloc
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
