	.file	"code.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -84(%rbp)
	movl	%esi, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-84(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	xs.0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	xs.0(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.L2
	movl	$0, -72(%rbp)
	jmp	.L3
.L4:
	movl	-72(%rbp), %eax
	cltq
	leaq	xs.0(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movb	%al, -73(%rbp)
	movl	-68(%rbp), %eax
	subl	$1, %eax
	subl	-72(%rbp), %eax
	cltq
	leaq	xs.0(%rip), %rdx
	movzbl	(%rax,%rdx), %edx
	movl	-72(%rbp), %eax
	cltq
	leaq	xs.0(%rip), %rcx
	movb	%dl, (%rax,%rcx)
	movl	-68(%rbp), %eax
	subl	$1, %eax
	subl	-72(%rbp), %eax
	cltq
	leaq	xs.0(%rip), %rcx
	movzbl	-73(%rbp), %edx
	movb	%dl, (%rax,%rcx)
	addl	$1, -72(%rbp)
.L3:
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	%eax, -72(%rbp)
	jl	.L4
	jmp	.L5
.L2:
	movl	-68(%rbp), %eax
	cltq
	movl	-88(%rbp), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	movq	%rax, %rcx
	leaq	xs.0(%rip), %rax
	leaq	(%rcx,%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movl	-88(%rbp), %eax
	cltq
	movb	$0, -64(%rbp,%rax)
	movl	-68(%rbp), %eax
	subl	-88(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-64(%rbp), %rax
	leaq	xs.0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncat@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	xs.0(%rip), %rax
	movq	%rax, %rdi
	call	strcpy@PLT
.L5:
	leaq	xs.0(%rip), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.local	xs.0
	.comm	xs.0,50,32
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
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
