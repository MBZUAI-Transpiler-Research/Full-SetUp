	.file	"libmin_strtol.c"
	.text
	.globl	libmin_strtol
	.type	libmin_strtol, @function
libmin_strtol:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	cmpl	$1, -68(%rbp)
	jle	.L2
	cmpl	$36, -68(%rbp)
	jle	.L6
.L2:
	cmpl	$0, -68(%rbp)
	je	.L6
	cmpq	$0, -56(%rbp)
	jne	.L6
	cmpq	$0, -64(%rbp)
	je	.L4
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
.L4:
	movl	$0, %eax
	jmp	.L5
.L7:
	addq	$1, -56(%rbp)
.L6:
	movq	_pctype(%rip), %rdx
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L7
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$43, %eax
	je	.L8
	cmpl	$45, %eax
	jne	.L9
	movl	$1, -32(%rbp)
	addq	$1, -56(%rbp)
	jmp	.L10
.L8:
	movl	$0, -32(%rbp)
	addq	$1, -56(%rbp)
	jmp	.L10
.L9:
	movl	$0, -32(%rbp)
	nop
.L10:
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L11
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L12
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$120, %al
	je	.L13
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$88, %al
	jne	.L14
.L13:
	movl	$16, %eax
	jmp	.L15
.L14:
	movl	$8, %eax
.L15:
	movl	%eax, -68(%rbp)
	jmp	.L11
.L12:
	movl	$10, -68(%rbp)
.L11:
	cmpl	$16, -68(%rbp)
	jne	.L16
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L16
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$120, %al
	je	.L17
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$88, %al
	jne	.L16
.L17:
	addq	$2, -16(%rbp)
.L16:
	movq	$0, -24(%rbp)
	cmpl	$16, -68(%rbp)
	je	.L18
	cmpl	$16, -68(%rbp)
	jg	.L45
	cmpl	$8, -68(%rbp)
	je	.L30
	cmpl	$8, -68(%rbp)
	jg	.L45
	cmpl	$2, -68(%rbp)
	je	.L23
	cmpl	$4, -68(%rbp)
	je	.L27
	jmp	.L45
.L25:
	salq	-24(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cltq
	orq	%rax, -24(%rbp)
	addq	$1, -16(%rbp)
.L23:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L50
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$49, %al
	jle	.L25
	jmp	.L50
.L29:
	salq	$2, -24(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cltq
	orq	%rax, -24(%rbp)
	addq	$1, -16(%rbp)
.L27:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L51
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$51, %al
	jle	.L29
	jmp	.L51
.L32:
	salq	$3, -24(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cltq
	orq	%rax, -24(%rbp)
	addq	$1, -16(%rbp)
.L30:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L52
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$55, %al
	jle	.L32
	jmp	.L52
.L18:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L53
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -36(%rbp)
	movq	_pctype(%rip), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L35
	movq	_pctype(%rip), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L36
	movl	-36(%rbp), %eax
	addl	$32, %eax
	jmp	.L37
.L36:
	movl	-36(%rbp), %eax
.L37:
	movl	%eax, -36(%rbp)
.L35:
	movl	-36(%rbp), %eax
	movsbl	%al, %edx
	movq	digits.0(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	libmin_strchr@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L54
	movq	digits.0(%rip), %rax
	movq	-8(%rbp), %rdx
	subq	%rax, %rdx
	movl	%edx, -28(%rbp)
	cmpl	$0, -28(%rbp)
	js	.L55
	cmpl	$15, -28(%rbp)
	jg	.L55
	salq	$4, -24(%rbp)
	movl	-28(%rbp), %eax
	cltq
	orq	%rax, -24(%rbp)
	addq	$1, -16(%rbp)
	jmp	.L18
.L53:
	nop
	jmp	.L55
.L54:
	nop
	jmp	.L55
.L45:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L56
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -36(%rbp)
	movq	_pctype(%rip), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L41
	movq	_pctype(%rip), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L42
	movl	-36(%rbp), %eax
	addl	$32, %eax
	jmp	.L43
.L42:
	movl	-36(%rbp), %eax
.L43:
	movl	%eax, -36(%rbp)
.L41:
	movl	-36(%rbp), %eax
	movsbl	%al, %edx
	movq	digits.0(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	libmin_strchr@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L57
	movq	digits.0(%rip), %rax
	movq	-8(%rbp), %rdx
	subq	%rax, %rdx
	movl	%edx, -28(%rbp)
	cmpl	$0, -28(%rbp)
	js	.L40
	movl	-68(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L40
	movl	-68(%rbp), %eax
	cltq
	movq	-24(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	-28(%rbp), %eax
	cltq
	subq	%rax, -24(%rbp)
	addq	$1, -16(%rbp)
	jmp	.L45
.L56:
	nop
	jmp	.L40
.L57:
	nop
.L40:
	cmpq	$0, -64(%rbp)
	je	.L46
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L46:
	cmpl	$0, -32(%rbp)
	je	.L47
	movq	-24(%rbp), %rax
	jmp	.L5
.L47:
	negq	-24(%rbp)
	jmp	.L26
.L50:
	nop
	jmp	.L26
.L51:
	nop
	jmp	.L26
.L52:
	nop
	jmp	.L26
.L55:
	nop
.L26:
	cmpl	$0, -32(%rbp)
	je	.L48
	negq	-24(%rbp)
.L48:
	cmpq	$0, -64(%rbp)
	je	.L49
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L49:
	movq	-24(%rbp), %rax
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_strtol, .-libmin_strtol
	.section	.rodata
	.align 8
.LC0:
	.string	"0123456789abcdefghijklmnopqrstuvxwyz"
	.section	.data.rel.local,"aw"
	.align 8
	.type	digits.0, @object
	.size	digits.0, 8
digits.0:
	.quad	.LC0
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
