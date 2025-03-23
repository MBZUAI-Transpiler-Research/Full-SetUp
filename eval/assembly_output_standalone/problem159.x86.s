	.file	"code.c"
	.text
	.section	.rodata
.LC0:
	.string	""
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
	subq	$320, %rsp
	movq	%rdi, -312(%rbp)
	movl	%esi, -316(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, -280(%rbp)
	movl	$0, -300(%rbp)
	movl	$0, -296(%rbp)
	jmp	.L2
.L8:
	movq	$0, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -292(%rbp)
	movl	$0, -288(%rbp)
	jmp	.L3
.L5:
	movl	-296(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-288(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	leaq	-272(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L4
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -284(%rbp)
	movl	-296(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-288(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-284(%rbp), %eax
	cltq
	movb	%dl, -272(%rbp,%rax)
	movl	-284(%rbp), %eax
	addl	$1, %eax
	cltq
	movb	$0, -272(%rbp,%rax)
	addl	$1, -292(%rbp)
.L4:
	addl	$1, -288(%rbp)
.L3:
	movl	-296(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-288(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L5
	movl	-292(%rbp), %eax
	cmpl	-300(%rbp), %eax
	jg	.L6
	movl	-292(%rbp), %eax
	cmpl	-300(%rbp), %eax
	jne	.L7
	movl	-296(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-280(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jns	.L7
.L6:
	movl	-296(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-312(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movl	-292(%rbp), %eax
	movl	%eax, -300(%rbp)
.L7:
	addl	$1, -296(%rbp)
.L2:
	movl	-296(%rbp), %eax
	cmpl	-316(%rbp), %eax
	jl	.L8
	movq	-280(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
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
