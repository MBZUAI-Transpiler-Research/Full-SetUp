	.file	"primal-test.c"
	.text
	.type	powm, @function
powm:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	$1, -8(%rbp)
	jmp	.L2
.L4:
	movq	-32(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L3
	movq	-8(%rbp), %rax
	imulq	-24(%rbp), %rax
	movl	-36(%rbp), %ecx
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, -8(%rbp)
.L3:
	movq	-24(%rbp), %rax
	imulq	%rax, %rax
	movl	-36(%rbp), %ecx
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rax
	shrq	%rax
	movq	%rax, -32(%rbp)
.L2:
	cmpq	$0, -32(%rbp)
	jne	.L4
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	powm, .-powm
	.globl	get_random_int
	.type	get_random_int, @function
get_random_int:
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
	movq	%rsi, -16(%rbp)
	call	libmin_rand@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	get_random_int, .-get_random_int
	.globl	split_int
	.type	split_int, @function
split_int:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L9
.L10:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	shrq	%rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L9:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L10
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	split_int, .-split_int
	.globl	miller_rabin_int
	.type	miller_rabin_int, @function
miller_rabin_int:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movl	%esi, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -24(%rbp)
	movl	-68(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L12
	cmpl	$2, -68(%rbp)
	sete	%al
	movzbl	%al, %eax
	jmp	.L26
.L12:
	cmpl	$3, -68(%rbp)
	jne	.L14
	movl	$1, %eax
	jmp	.L26
.L14:
	cmpl	$2, -68(%rbp)
	ja	.L15
	movl	$0, %eax
	jmp	.L26
.L15:
	movl	-68(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	movq	%rax, -16(%rbp)
	movl	-68(%rbp), %edx
	leaq	-48(%rbp), %rcx
	leaq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	split_int
	movl	$0, -60(%rbp)
	jmp	.L16
.L25:
	movl	-68(%rbp), %eax
	subl	$2, %eax
	movl	%eax, %eax
	movq	%rax, %rsi
	movl	$2, %edi
	call	get_random_int
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rcx
	movl	-68(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	powm
	movq	%rax, -40(%rbp)
	cmpq	$1, -40(%rbp)
	je	.L28
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L28
	movq	$1, -32(%rbp)
	jmp	.L20
.L24:
	movq	-40(%rbp), %rax
	imulq	%rax, %rax
	movl	-68(%rbp), %ecx
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, -40(%rbp)
	cmpq	$1, -40(%rbp)
	jne	.L21
	movl	$0, %eax
	jmp	.L26
.L21:
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L29
	addq	$1, -32(%rbp)
.L20:
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L24
	jmp	.L23
.L29:
	nop
.L23:
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L19
	movl	$0, %eax
	jmp	.L26
.L28:
	nop
.L19:
	addl	$1, -60(%rbp)
.L16:
	movl	-60(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jb	.L25
	movl	$2, %eax
.L26:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	miller_rabin_int, .-miller_rabin_int
	.globl	q
	.bss
	.align 32
	.type	q, @object
	.size	q, 512
q:
	.zero	512
	.globl	q_head
	.align 4
	.type	q_head, @object
	.size	q_head, 4
q_head:
	.zero	4
	.section	.rodata
	.align 8
.LC0:
	.string	"Primality tests found %d primes...\n"
	.align 8
.LC1:
	.string	"Value %u is `prime' with failure probability (0)\n"
	.align 8
.LC4:
	.string	"Value %u is `likely prime' with failure probability (1 in %.0lf)\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$42, %edi
	call	libmin_srand@PLT
	movl	$3, -20(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L31
.L33:
	movl	-20(%rbp), %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	miller_rabin_int
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L32
	movl	q_head(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	q(%rip), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, (%rcx,%rdx)
	movl	q_head(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	4+q(%rip), %rdx
	movl	-8(%rbp), %eax
	movl	%eax, (%rcx,%rdx)
	movl	q_head(%rip), %eax
	cmpl	$62, %eax
	jg	.L32
	movl	q_head(%rip), %eax
	addl	$1, %eax
	movl	%eax, q_head(%rip)
.L32:
	call	libmin_rand@PLT
	movl	%eax, -20(%rbp)
	addl	$1, -16(%rbp)
.L31:
	cmpl	$199, -16(%rbp)
	jle	.L33
	movl	q_head(%rip), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$0, -12(%rbp)
	jmp	.L34
.L37:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	4+q(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$1, %eax
	jne	.L35
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	q(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	jmp	.L36
.L35:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	4+q(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jne	.L36
	movsd	.LC2(%rip), %xmm0
	movq	.LC3(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	libmin_pow@PLT
	movq	%xmm0, %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	q(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	movq	%rax, %xmm0
	movl	%edx, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	libmin_printf@PLT
.L36:
	addl	$1, -12(%rbp)
.L34:
	movl	q_head(%rip), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L37
	call	libmin_success@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC2:
	.long	0
	.long	1076887552
	.align 8
.LC3:
	.long	0
	.long	1074790400
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
