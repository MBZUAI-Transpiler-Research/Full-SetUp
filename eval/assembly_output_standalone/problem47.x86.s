	.file	"code.c"
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$448, %rsp
	movl	%edi, -436(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -416(%rbp)
	movl	$0, -412(%rbp)
	movl	$2, -408(%rbp)
	movl	$0, -404(%rbp)
	movl	$4, -420(%rbp)
	jmp	.L2
.L3:
	movl	-420(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-416(%rbp,%rax,4), %edx
	movl	-420(%rbp), %eax
	subl	$2, %eax
	cltq
	movl	-416(%rbp,%rax,4), %eax
	addl	%eax, %edx
	movl	-420(%rbp), %eax
	subl	$3, %eax
	cltq
	movl	-416(%rbp,%rax,4), %eax
	addl	%eax, %edx
	movl	-420(%rbp), %eax
	subl	$4, %eax
	cltq
	movl	-416(%rbp,%rax,4), %eax
	addl	%eax, %edx
	movl	-420(%rbp), %eax
	cltq
	movl	%edx, -416(%rbp,%rax,4)
	addl	$1, -420(%rbp)
.L2:
	movl	-420(%rbp), %eax
	cmpl	-436(%rbp), %eax
	jle	.L3
	movl	-436(%rbp), %eax
	cltq
	movl	-416(%rbp,%rax,4), %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
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
