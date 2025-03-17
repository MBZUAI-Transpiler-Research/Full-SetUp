	.file	"xargs.c"
	.text
	.section	.rodata
.LC0:
	.string	"a+"
.LC1:
	.string	"lm.txt"
.LC2:
	.string	"%s\n"
.LC3:
	.string	"r"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	jmp	.L2
.L3:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -264(%rbp)
	leaq	-256(%rbp), %rdx
	movq	-264(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L2:
	movq	stdin(%rip), %rdx
	leaq	-256(%rbp), %rax
	movl	$100, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L3
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -264(%rbp)
	jmp	.L4
.L5:
	movsbl	-265(%rbp), %eax
	movl	%eax, %edi
	call	putchar@PLT
.L4:
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	fgetc@PLT
	movb	%al, -265(%rbp)
	cmpb	$-1, -265(%rbp)
	jne	.L5
	movl	$10, %edi
	call	putchar@PLT
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
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
