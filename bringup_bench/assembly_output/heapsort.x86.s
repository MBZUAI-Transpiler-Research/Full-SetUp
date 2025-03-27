	.file	"heapsort.c"
	.text
	.local	bplong
	.comm	bplong,8,8
	.local	base
	.comm	base,16384,32
	.section	.rodata
.LC0:
	.string	"base buffer overflow!\n"
.LC1:
	.string	"   %10ld\n"
	.align 8
.LC2:
	.string	"ERROR: base array is not properly sorted!\n"
	.align 8
.LC3:
	.string	"INFO: base array is properly sorted!\n"
	.text
	.globl	HSORT
	.type	HSORT, @function
HSORT:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	bplong(%rip), %rax
	movq	-120(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -56(%rbp)
	cmpq	$2047, -120(%rbp)
	jle	.L2
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %edi
	call	libmin_fail@PLT
.L2:
	movq	$106, -48(%rbp)
	movq	$1283, -40(%rbp)
	movq	$6075, -32(%rbp)
	movq	$1001, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$47, -80(%rbp)
	movq	$1, -112(%rbp)
	jmp	.L3
.L4:
	movq	-80(%rbp), %rax
	imulq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cqto
	idivq	-32(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-24(%rbp), %rax
	imulq	-80(%rbp), %rax
	cqto
	idivq	-32(%rbp)
	movq	%rax, %rcx
	movq	-112(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	base(%rip), %rax
	addq	%rdx, %rax
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	addq	$1, -112(%rbp)
.L3:
	movq	-112(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jle	.L4
	movq	-56(%rbp), %rax
	sarq	%rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -8(%rbp)
.L13:
	cmpq	$1, -96(%rbp)
	jle	.L5
	subq	$1, -96(%rbp)
	movq	-96(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	base(%rip), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.L6
.L5:
	movq	-88(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	base(%rip), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	base(%rip), %rax
	addq	%rax, %rdx
	movq	8+base(%rip), %rax
	movq	%rax, (%rdx)
	subq	$1, -88(%rbp)
	cmpq	$1, -88(%rbp)
	jne	.L6
	movq	-72(%rbp), %rax
	movq	%rax, 8+base(%rip)
	nop
.L7:
	movq	-8(%rbp), %rax
	addq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L14
	jmp	.L19
.L6:
	movq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-96(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, -104(%rbp)
	jmp	.L8
.L12:
	movq	-104(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jge	.L9
	movq	-104(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	base(%rip), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,8), %rcx
	leaq	base(%rip), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jge	.L9
	addq	$1, -104(%rbp)
.L9:
	movq	-104(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	base(%rip), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -72(%rbp)
	jge	.L10
	movq	-104(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	base(%rip), %rax
	addq	%rdx, %rax
	movq	-112(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	base(%rip), %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	addq	%rax, -104(%rbp)
	jmp	.L8
.L10:
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
.L8:
	movq	-104(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jle	.L12
	movq	-112(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	base(%rip), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rax, (%rdx)
	jmp	.L13
.L19:
	movq	-64(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
.L14:
	movq	$0, -112(%rbp)
	jmp	.L15
.L17:
	movq	-112(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	base(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-112(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,8), %rcx
	leaq	base(%rip), %rax
	movq	(%rcx,%rax), %rax
	cmpq	%rax, %rdx
	jle	.L16
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %edi
	call	libmin_fail@PLT
.L16:
	addq	$1, -112(%rbp)
.L15:
	movq	-56(%rbp), %rax
	subq	$1, %rax
	cmpq	%rax, -112(%rbp)
	jl	.L17
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	HSORT, .-HSORT
	.section	.rodata
.LC4:
	.string	"\n   Heap Sort C Program\n"
	.align 8
.LC5:
	.string	"   Size of long (bytes): %ld\n\n"
.LC6:
	.string	"   Array Size (bytes)\n"
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
	movq	$8, bplong(%rip)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	bplong(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	$1024, -16(%rbp)
	movq	$1, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	HSORT
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
