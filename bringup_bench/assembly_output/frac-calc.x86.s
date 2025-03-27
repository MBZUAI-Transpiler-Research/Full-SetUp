	.file	"frac-calc.c"
	.text
	.globl	__input
	.section	.rodata
	.align 16
	.type	__input, @object
	.size	__input, 30
__input:
	.ascii	" 3/4 + 6 7/19\n1\n7/19 + 21/7\n0\n"
	.globl	input
.LC0:
	.string	"input.h"
	.section	.data.rel.local,"aw"
	.align 32
	.type	input, @object
	.size	input, 32
input:
	.quad	.LC0
	.quad	30
	.quad	__input
	.long	0
	.zero	4
	.globl	minput
	.align 8
	.type	minput, @object
	.size	minput, 8
minput:
	.quad	input
	.local	verb
	.comm	verb,4,4
	.section	.rodata
	.align 8
.LC1:
	.string	"Type\n\t$man %s\nor\n\t$%s -h\nfor help.\n\n"
.LC2:
	.string	"vhV"
.LC3:
	.string	"Verbose level set at: %d\n"
	.align 8
.LC4:
	.string	"\nDo you want to do another operation?\nenter 1 for yes\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movl	%edi, -260(%rbp)
	movq	%rsi, -272(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -252(%rbp)
	movl	$0, opterr(%rip)
	jmp	.L2
.L8:
	cmpl	$118, -248(%rbp)
	je	.L3
	cmpl	$118, -248(%rbp)
	jg	.L4
	cmpl	$86, -248(%rbp)
	je	.L5
	cmpl	$104, -248(%rbp)
	jne	.L4
	call	help
	jmp	.L2
.L5:
	call	copyr
	jmp	.L2
.L3:
	movl	verb(%rip), %eax
	addl	$1, %eax
	movl	%eax, verb(%rip)
	jmp	.L2
.L4:
	movq	-272(%rbp), %rax
	movq	(%rax), %rdx
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %eax
	jmp	.L11
.L2:
	movq	-272(%rbp), %rcx
	movl	-260(%rbp), %eax
	leaq	.LC2(%rip), %rdx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	libmin_getopt@PLT
	movl	%eax, -248(%rbp)
	cmpl	$-1, -248(%rbp)
	jne	.L8
	movl	verb(%rip), %eax
	testl	%eax, %eax
	je	.L10
	movl	verb(%rip), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
.L10:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	frac_init
	leaq	-240(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	divtokens
	leaq	-192(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	calcula
	movd	%xmm0, %eax
	movl	%eax, -244(%rbp)
	leaq	-240(%rbp), %rdx
	movl	-244(%rbp), %esi
	leaq	-192(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movd	%esi, %xmm0
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	minput(%rip), %rdx
	leaq	-80(%rbp), %rax
	movl	$60, %esi
	movq	%rax, %rdi
	call	libmin_mgets@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	libmin_atoi@PLT
	movl	%eax, -252(%rbp)
	cmpl	$1, -252(%rbp)
	je	.L10
	call	libmin_success@PLT
	movl	$0, %eax
.L11:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.rodata
.LC5:
	.string	"Fraction Calculator"
.LC6:
	.string	"frac"
.LC7:
	.string	"%s - %s\n"
.LC8:
	.string	"\nUsage: %s [-h|-v]\n"
.LC9:
	.string	"\nOptions:\n"
	.align 8
.LC10:
	.string	"\t-h,  --help\n\t\tShow this help.\n"
	.align 8
.LC11:
	.string	"\t-V,  --version\n\t\tShow version and copyright information.\n"
	.align 8
.LC12:
	.string	"\t-v,  --verbose\n\t\tSet verbose level (cumulative).\n"
	.align 8
.LC13:
	.string	"\nExit status:\n\t0 if ok.\n\t1 some error occurred.\n"
	.align 8
.LC14:
	.string	"\nTodo:\n\tLong options not implemented yet.\n"
.LC15:
	.string	"iagocarrazzoni@gmail.com"
.LC16:
	.string	"Iago Gade Gusmao Carrazzoni"
	.align 8
.LC17:
	.string	"\nAuthor:\n\tWritten by %s <%s>\n\n"
	.text
	.globl	help
	.type	help, @function
help:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC16(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %edi
	call	libmin_fail@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	help, .-help
	.section	.rodata
.LC18:
	.string	"20180915.214818"
.LC19:
	.string	"%s - Version %s\n"
	.align 8
.LC20:
	.ascii	"\nCopyright (C) %d %s <%s>, GNU GPL version 2 <http://gnu"
	.string	".org/licenses/gpl.html>. This  is  free  software: you are free to change and redistribute it. There is NO WARRANTY, to the extent permitted by law. USE IT AS IT IS. The author takes no responsability to any damage this software may inflige in your data.\n\n"
.LC21:
	.string	"copyr(): Verbose: %d\n"
	.text
	.globl	copyr
	.type	copyr, @function
copyr:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, %rcx
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdx
	movl	$2018, %esi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	verb(%rip), %eax
	cmpl	$3, %eax
	jle	.L15
	movl	verb(%rip), %eax
	movl	%eax, %esi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
.L15:
	movl	$1, %edi
	call	libmin_fail@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	copyr, .-copyr
	.section	.rodata
.LC22:
	.string	"-------------------\n"
	.align 8
.LC23:
	.string	"FRACTION CALCULATOR\nPlease entry the desired operation:\n(It is necessary to add a space between the fractions, like a/b + c/d)\n-> "
	.text
	.globl	frac_init
	.type	frac_init, @function
frac_init:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	minput(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$60, %esi
	movq	%rax, %rdi
	call	libmin_mgets@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	frac_init, .-frac_init
	.section	.rodata
.LC24:
	.string	" "
	.text
	.globl	divtokens
	.type	divtokens, @function
divtokens:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$592, %rsp
	movq	%rdi, -584(%rbp)
	movq	%rsi, -592(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -572(%rbp)
	movq	-584(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcpy@PLT
	leaq	-80(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strtok@PLT
	movq	%rax, -568(%rbp)
	jmp	.L19
.L20:
	movl	-572(%rbp), %eax
	cltq
	movq	-568(%rbp), %rdx
	movq	%rdx, -560(%rbp,%rax,8)
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	libmin_strtok@PLT
	movq	%rax, -568(%rbp)
	addl	$1, -572(%rbp)
.L19:
	cmpq	$0, -568(%rbp)
	jne	.L20
	movq	-592(%rbp), %rax
	leaq	36(%rax), %rdx
	movl	-572(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-572(%rbp), %edx
	movq	-592(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	avaliatokens
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	divtokens, .-divtokens
	.section	.rodata
.LC25:
	.string	"+"
.LC26:
	.string	"-"
.LC27:
	.string	"*"
.LC28:
	.string	"/"
	.text
	.globl	avaliatokens
	.type	avaliatokens, @function
avaliatokens:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	leaq	.LC25(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcmp@PLT
	testl	%eax, %eax
	je	.L24
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	leaq	.LC26(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcmp@PLT
	testl	%eax, %eax
	je	.L24
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	leaq	.LC27(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcmp@PLT
	testl	%eax, %eax
	je	.L24
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcmp@PLT
	testl	%eax, %eax
	jne	.L25
.L24:
	cmpl	$4, -68(%rbp)
	jne	.L25
	movl	$1, -28(%rbp)
.L25:
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC25(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcmp@PLT
	testl	%eax, %eax
	je	.L26
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC26(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcmp@PLT
	testl	%eax, %eax
	je	.L26
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC27(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcmp@PLT
	testl	%eax, %eax
	je	.L26
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcmp@PLT
	testl	%eax, %eax
	jne	.L27
.L26:
	cmpl	$4, -68(%rbp)
	jne	.L27
	movl	$2, -28(%rbp)
.L27:
	movl	$0, -36(%rbp)
	jmp	.L28
.L35:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC25(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcmp@PLT
	testl	%eax, %eax
	jne	.L29
	movq	-64(%rbp), %rax
	addq	$40, %rax
	movl	$1, (%rax)
	addl	$1, -36(%rbp)
.L29:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC26(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcmp@PLT
	testl	%eax, %eax
	jne	.L30
	movq	-64(%rbp), %rax
	addq	$40, %rax
	movl	$2, (%rax)
	addl	$1, -36(%rbp)
.L30:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC27(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcmp@PLT
	testl	%eax, %eax
	jne	.L31
	movq	-64(%rbp), %rax
	addq	$40, %rax
	movl	$3, (%rax)
	addl	$1, -36(%rbp)
.L31:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcmp@PLT
	testl	%eax, %eax
	jne	.L32
	movq	-64(%rbp), %rax
	addq	$40, %rax
	movl	$4, (%rax)
	addl	$1, -36(%rbp)
.L32:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strtok@PLT
	movq	%rax, -24(%rbp)
	jmp	.L33
.L34:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	libmin_atoi@PLT
	movl	%eax, (%rbx)
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	libmin_strtok@PLT
	movq	%rax, -24(%rbp)
	addl	$1, -32(%rbp)
.L33:
	cmpq	$0, -24(%rbp)
	jne	.L34
	addl	$1, -36(%rbp)
.L28:
	movl	-36(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L35
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rcx
	movl	-28(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	misto
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	avaliatokens, .-avaliatokens
	.globl	misto
	.type	misto, @function
misto:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	cmpl	$3, -8(%rbp)
	jne	.L38
	movq	-16(%rbp), %rax
	leaq	36(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	28(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, (%rdx)
	jmp	.L37
.L38:
	cmpl	$1, -4(%rbp)
	jne	.L40
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	imull	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	12(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	36(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	28(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, (%rdx)
	jmp	.L37
.L40:
	cmpl	$2, -4(%rbp)
	jne	.L41
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movq	-16(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	leaq	12(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	36(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	28(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, (%rdx)
	jmp	.L37
.L41:
	cmpl	$5, -8(%rbp)
	jne	.L43
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	imull	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	leaq	12(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	36(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	28(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, (%rdx)
	jmp	.L37
.L43:
	nop
.L37:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	misto, .-misto
	.globl	calcula
	.type	calcula, @function
calcula:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	imull	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	addq	$40, %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L45
	cmpl	$4, %eax
	jg	.L46
	cmpl	$3, %eax
	je	.L47
	cmpl	$3, %eax
	jg	.L46
	cmpl	$1, %eax
	je	.L48
	cmpl	$2, %eax
	je	.L49
	jmp	.L46
.L48:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movq	-24(%rbp), %rdx
	addq	$4, %rdx
	movl	(%rdx), %esi
	cltd
	idivl	%esi
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movq	-24(%rbp), %rdx
	addq	$12, %rdx
	movl	(%rdx), %esi
	cltd
	idivl	%esi
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	imull	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$4, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-8(%rbp), %xmm0
	divss	-4(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	simplifica
	jmp	.L46
.L49:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movq	-24(%rbp), %rdx
	addq	$4, %rdx
	movl	(%rdx), %esi
	cltd
	idivl	%esi
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movq	-24(%rbp), %rdx
	addq	$12, %rdx
	movl	(%rdx), %edi
	cltd
	idivl	%edi
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	movq	-32(%rbp), %rdx
	addq	$4, %rdx
	subl	%eax, %ecx
	movl	%ecx, (%rdx)
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-8(%rbp), %xmm0
	divss	-4(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	simplifica
	jmp	.L46
.L47:
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movq	-32(%rbp), %rcx
	addq	$4, %rcx
	imull	%edx, %eax
	movl	%eax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-8(%rbp), %xmm0
	divss	-4(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	simplifica
	jmp	.L46
.L45:
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	imull	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movq	-32(%rbp), %rcx
	addq	$4, %rcx
	imull	%edx, %eax
	movl	%eax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-8(%rbp), %xmm0
	divss	-4(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	simplifica
	nop
.L46:
	movss	-12(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	calcula, .-calcula
	.globl	simplifica
	.type	simplifica, @function
simplifica:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L52
.L54:
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L53
	movl	-4(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L53
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%eax, -4(%rbp)
.L53:
	addl	$1, -12(%rbp)
.L52:
	cmpl	$12, -12(%rbp)
	jle	.L54
	movq	-24(%rbp), %rax
	leaq	12(%rax), %rdx
	movl	-8(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	simplifica, .-simplifica
	.section	.rodata
	.align 8
.LC30:
	.string	"\nEXPRESSION: %sFRACTION: %d/%d %c %d/%d\nINTERMEDIATE: %d/%d\nRESULT: %d/%d\nDECIMAL: %.3f\n"
	.text
	.globl	print
	.type	print, @function
print:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movss	%xmm0, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	$40, %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L57
	movb	$43, -17(%rbp)
.L57:
	movq	-64(%rbp), %rax
	addq	$40, %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L58
	movb	$45, -17(%rbp)
.L58:
	movq	-64(%rbp), %rax
	addq	$40, %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L59
	movb	$42, -17(%rbp)
.L59:
	movq	-64(%rbp), %rax
	addq	$40, %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L60
	movb	$47, -17(%rbp)
.L60:
	pxor	%xmm1, %xmm1
	cvtss2sd	-52(%rbp), %xmm1
	movq	%xmm1, %rsi
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %r11d
	movq	-48(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %r10d
	movq	-48(%rbp), %rax
	movl	(%rax), %r9d
	movq	-48(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %r8d
	movq	-64(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %edi
	movq	-64(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %r12d
	movsbl	-17(%rbp), %ebx
	movq	-64(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %ecx
	movq	-64(%rbp), %rax
	addq	$36, %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	%r11
	pushq	%r10
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	movq	%rsi, %xmm0
	movl	%r12d, %r9d
	movl	%ebx, %r8d
	movq	%rax, %rsi
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	libmin_printf@PLT
	addq	$48, %rsp
	nop
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	print, .-print
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
