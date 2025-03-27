	.file	"totient.c"
	.text
	.type	my_gcd, @function
my_gcd:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L2
	cmpl	$0, -24(%rbp)
	jne	.L3
.L2:
	movl	$-1, %eax
	jmp	.L4
.L3:
	cmpl	$0, -20(%rbp)
	jns	.L5
	negl	-20(%rbp)
.L5:
	cmpl	$0, -24(%rbp)
	jns	.L6
	negl	-24(%rbp)
.L6:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.L7
	movl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
.L7:
	movl	-24(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, -8(%rbp)
	movl	-20(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	-24(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L8
	movl	-20(%rbp), %eax
	jmp	.L4
.L8:
	movl	-4(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	my_gcd
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	my_gcd, .-my_gcd
	.type	phi, @function
phi:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L10
	negl	-4(%rbp)
.L10:
	cmpl	$1, -4(%rbp)
	jg	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	cmpl	$2, -4(%rbp)
	jne	.L13
	movl	$1, %eax
	jmp	.L12
.L13:
	cmpl	$3, -4(%rbp)
	jne	.L14
	movl	$2, %eax
	jmp	.L12
.L14:
	movl	-4(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	phiphi
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	phi, .-phi
	.type	phiphi, @function
phiphi:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -36(%rbp)
	jne	.L16
	movl	-40(%rbp), %eax
	jmp	.L17
.L16:
	movl	-36(%rbp), %eax
	cltd
	idivl	-40(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L18
	movl	-36(%rbp), %eax
	cltd
	idivl	-40(%rbp)
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	-40(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	my_gcd
	cmpl	$1, %eax
	jne	.L19
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	phi
	movl	%eax, %ebx
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	phi
	imull	%ebx, %eax
	jmp	.L17
.L19:
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	phi
	imull	-40(%rbp), %eax
	jmp	.L17
.L18:
	movl	-40(%rbp), %eax
	leal	1(%rax), %edx
	movl	-36(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	phiphi
.L17:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	phiphi, .-phiphi
	.section	.rodata
.LC0:
	.string	"1.0"
.LC1:
	.string	"%s\n"
	.align 8
.LC2:
	.ascii	"\ntotient [ -h -v --] n\n\nFind the Euler totient function o"
	.ascii	"f n, the number of k <= n such that\nk"
	.string	" and n are relatively prime. (1 is relatively prime to everything.)\n\n--: Signal end of options so that negative n can be input. (Silly, since\n    we merely define phi(-n) = phi(n).)\n-v: Print version number and exit. \n-h: Print this helpful information. \n\n"
.LC3:
	.string	"totient: unkown option %s\n"
.LC4:
	.string	"totient [ -h -v -- ] n"
	.align 8
.LC5:
	.string	"totient: not defined for n = 0.\n"
.LC6:
	.string	"phi(%d) = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$1, -12(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -16(%rbp)
	nop
	addl	$1, -16(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.L27
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L33
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$45, %eax
	je	.L23
	cmpl	$45, %eax
	jl	.L24
	cmpl	$118, %eax
	jg	.L24
	cmpl	$63, %eax
	jl	.L24
	subl	$63, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movabsq	$2199023256065, %rax
	andq	%rdx, %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L25
	movabsq	$36028797027352576, %rax
	andq	%rdx, %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L26
	jmp	.L24
.L23:
	addl	$1, -16(%rbp)
	nop
	jmp	.L33
.L26:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
.L25:
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
.L24:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %edi
	call	libmin_fail@PLT
.L33:
	nop
.L27:
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L29
	movl	$45457, -20(%rbp)
	jmp	.L30
.L29:
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -16(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	libmin_atoi@PLT
	movl	%eax, -20(%rbp)
.L30:
	cmpl	$0, -20(%rbp)
	jne	.L31
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %eax
	jmp	.L32
.L31:
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	phi
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
	movl	$0, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
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
