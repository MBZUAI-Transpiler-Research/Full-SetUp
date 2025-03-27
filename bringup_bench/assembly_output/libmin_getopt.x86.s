	.file	"libmin_getopt.c"
	.text
	.globl	optarg
	.bss
	.align 8
	.type	optarg, @object
	.size	optarg, 8
optarg:
	.zero	8
	.globl	optind
	.data
	.align 4
	.type	optind, @object
	.size	optind, 4
optind:
	.long	1
	.globl	opterr
	.align 4
	.type	opterr, @object
	.size	opterr, 4
opterr:
	.long	1
	.globl	optopt
	.bss
	.align 4
	.type	optopt, @object
	.size	optopt, 4
optopt:
	.zero	4
	.globl	optpos
	.align 4
	.type	optpos, @object
	.size	optpos, 4
optpos:
	.zero	4
	.globl	optreset
	.align 4
	.type	optreset, @object
	.size	optreset, 4
optreset:
	.zero	4
	.section	.rodata
.LC0:
	.string	"%s: unrecognized option: %c\n"
	.text
	.globl	libmin_getopt
	.type	libmin_getopt, @function
libmin_getopt:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	optind(%rip), %eax
	testl	%eax, %eax
	je	.L2
	movl	optreset(%rip), %eax
	testl	%eax, %eax
	je	.L3
.L2:
	movl	$0, optreset(%rip)
	movl	$0, optpos(%rip)
	movl	$1, optind(%rip)
.L3:
	movl	optind(%rip), %eax
	cmpl	%eax, -36(%rbp)
	jle	.L4
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L5
.L4:
	movl	$-1, %eax
	jmp	.L6
.L5:
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L7
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L8
	movl	optind(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, optind(%rip)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, optarg(%rip)
	movl	$1, %eax
	jmp	.L6
.L8:
	movl	$-1, %eax
	jmp	.L6
.L7:
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L9
	movl	$-1, %eax
	jmp	.L6
.L9:
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L10
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L10
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
	movl	$-1, %eax
	jmp	.L6
.L10:
	movl	optpos(%rip), %eax
	testl	%eax, %eax
	jne	.L11
	movl	optpos(%rip), %eax
	addl	$1, %eax
	movl	%eax, optpos(%rip)
.L11:
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	optpos(%rip), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -24(%rbp)
	movl	$1, -20(%rbp)
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	optpos(%rip), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, optopt(%rip)
	movl	optpos(%rip), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, optpos(%rip)
	movl	optind(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	optpos(%rip), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L12
	movl	optind(%rip), %eax
	addl	$1, %eax
	movl	%eax, optind(%rip)
	movl	$0, optpos(%rip)
.L12:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L13
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	jne	.L14
.L13:
	addq	$1, -56(%rbp)
.L14:
	movl	$0, -28(%rbp)
	movl	$0, -16(%rbp)
.L18:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -16(%rbp)
	movl	$1, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.L15
	movl	-12(%rbp), %eax
	addl	%eax, -28(%rbp)
	jmp	.L16
.L15:
	addl	$1, -28(%rbp)
.L16:
	cmpl	$0, -12(%rbp)
	je	.L17
	movl	-16(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.L18
.L17:
	movl	-16(%rbp), %eax
	cmpl	-24(%rbp), %eax
	je	.L19
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	je	.L20
	movl	opterr(%rip), %eax
	testl	%eax, %eax
	je	.L20
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
.L20:
	movl	$63, %eax
	jmp	.L6
.L19:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L21
	movl	-28(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L22
	movq	$0, optarg(%rip)
	jmp	.L23
.L22:
	movl	optind(%rip), %eax
	cmpl	%eax, -36(%rbp)
	jg	.L23
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L24
	movl	$58, %eax
	jmp	.L6
.L24:
	movl	opterr(%rip), %eax
	testl	%eax, %eax
	je	.L25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
.L25:
	movl	$63, %eax
	jmp	.L6
.L23:
	movl	-28(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L26
	movl	optpos(%rip), %eax
	testl	%eax, %eax
	je	.L21
.L26:
	movl	optind(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, optind(%rip)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	optpos(%rip), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, optarg(%rip)
	movl	$0, optpos(%rip)
.L21:
	movl	-24(%rbp), %eax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_getopt, .-libmin_getopt
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
