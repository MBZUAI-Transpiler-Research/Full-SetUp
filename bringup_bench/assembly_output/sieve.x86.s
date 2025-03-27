	.file	"sieve.c"
	.text
	.local	L_Prime
	.comm	L_Prime,8,8
	.local	N_Prime
	.comm	N_Prime,8,8
	.local	flags
	.comm	flags,8192,32
	.section	.rodata
.LC0:
	.string	"  %9ld   %8ld     %8ld\n"
	.text
	.type	SIEVE, @function
SIEVE:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	$0, %r12d
	movq	-72(%rbp), %rax
	leaq	-1(%rax), %r14
	movq	$0, N_Prime(%rip)
	movq	$0, L_Prime(%rip)
	movq	$0, -56(%rbp)
	movl	$0, %r15d
	movl	$0, %ebx
	jmp	.L2
.L3:
	movq	%rbx, %rdx
	leaq	flags(%rip), %rax
	addq	%rdx, %rax
	movb	$1, (%rax)
	addq	$1, %rbx
.L2:
	cmpq	%r14, %rbx
	jle	.L3
	movl	$0, %ebx
	jmp	.L4
.L8:
	movq	%rbx, %rdx
	leaq	flags(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L5
	addq	$1, %r15
	leaq	(%rbx,%rbx), %rax
	leaq	3(%rax), %r12
	leaq	(%rbx,%r12), %r13
	jmp	.L6
.L7:
	movq	%r13, %rdx
	leaq	flags(%rip), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	addq	%r12, %r13
.L6:
	cmpq	%r14, %r13
	jle	.L7
.L5:
	addq	$1, %rbx
.L4:
	cmpq	%r14, %rbx
	jle	.L8
	addq	%r15, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, N_Prime(%rip)
	movq	%r12, L_Prime(%rip)
	cmpq	$0, -80(%rbp)
	je	.L9
	movq	L_Prime(%rip), %rcx
	movq	N_Prime(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
.L9:
	movl	$0, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	SIEVE, .-SIEVE
	.section	.rodata
	.align 8
.LC1:
	.string	"\n   Sieve of Eratosthenes (Scaled to 10 Iterations)\n"
	.align 8
.LC2:
	.string	"   Version 1.2b, 26 Sep 1992\n\n"
	.align 8
.LC3:
	.string	"   Array Size   Number   Last Prime\n"
.LC4:
	.string	"    (Bytes)   of Primes\n"
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
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	$1024, -16(%rbp)
	movq	$1, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SIEVE
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
