	.file	"minspan.c"
	.text
	.globl	V
	.section	.rodata
	.align 4
	.type	V, @object
	.size	V, 4
V:
	.long	10
	.globl	vertName
.LC0:
	.string	"Home"
.LC1:
	.string	"z-mall"
.LC2:
	.string	"st.pet"
.LC3:
	.string	"office"
.LC4:
	.string	"school"
.LC5:
	.string	"motel"
.LC6:
	.string	"restr."
.LC7:
	.string	"library"
.LC8:
	.string	"airport"
.LC9:
	.string	"barber"
	.section	.data.rel.local,"aw"
	.align 32
	.type	vertName, @object
	.size	vertName, 80
vertName:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.text
	.globl	minVal
	.type	minVal, @function
minVal:
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
	movl	$-1, -12(%rbp)
	movl	$2147483647, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L4:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L3
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L3
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
.L3:
	addl	$1, -4(%rbp)
.L2:
	movl	$10, %eax
	cmpl	%eax, -4(%rbp)
	jl	.L4
	cmpl	$-1, -12(%rbp)
	je	.L5
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
.L5:
	movl	-12(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	minVal, .-minVal
	.globl	minSpanTree
	.type	minSpanTree, @function
minSpanTree:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$10, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	%rsp, %rax
	movq	%rax, %rbx
	movl	$10, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -56(%rbp)
	movl	$10, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L8:
	cmpq	%rdx, %rsp
	je	.L9
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L8
.L9:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L10
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L10:
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -48(%rbp)
	movl	$10, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -40(%rbp)
	movl	$10, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L11:
	cmpq	%rdx, %rsp
	je	.L12
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L11
.L12:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L13
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L13:
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -32(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -76(%rbp)
	jmp	.L14
.L17:
	movl	-80(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jne	.L15
	movq	-48(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	movl	$0, (%rax,%rdx,4)
	movq	-32(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	movl	$1, (%rax,%rdx,4)
	jmp	.L16
.L15:
	movq	-48(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	movl	$2147483647, (%rax,%rdx,4)
	movq	-32(%rbp), %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	movl	$0, (%rax,%rdx,4)
.L16:
	addl	$1, -76(%rbp)
.L14:
	movl	$10, %eax
	cmpl	%eax, -76(%rbp)
	jl	.L17
	movl	$0, -72(%rbp)
	jmp	.L18
.L22:
	movl	$0, -68(%rbp)
	jmp	.L19
.L21:
	movq	-32(%rbp), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	testl	%eax, %eax
	jne	.L20
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movl	$10, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	testl	%eax, %eax
	je	.L20
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movl	$10, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %ecx
	movq	-48(%rbp), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	cmpl	%eax, %ecx
	jge	.L20
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movl	$10, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movl	-68(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %ecx
	movq	-48(%rbp), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	movl	%ecx, (%rax,%rdx,4)
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movl	-80(%rbp), %eax
	movl	%eax, (%rdx)
.L20:
	addl	$1, -68(%rbp)
.L19:
	movl	$10, %eax
	cmpl	%eax, -68(%rbp)
	jl	.L21
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	minVal
	movl	%eax, -80(%rbp)
	addl	$1, -72(%rbp)
.L18:
	movl	$10, %eax
	cmpl	%eax, -72(%rbp)
	jl	.L22
	movq	%rbx, %rsp
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L23
	call	__stack_chk_fail@PLT
.L23:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	minSpanTree, .-minSpanTree
	.globl	initializeData
	.type	initializeData, @function
initializeData:
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
	movq	%rdi, -40(%rbp)
	movl	$10, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	movl	$10, %edi
	call	libmin_srand@PLT
	movl	$0, -32(%rbp)
	jmp	.L25
.L32:
	movl	$0, -28(%rbp)
	jmp	.L26
.L31:
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L27
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movl	$10, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movl	$10, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-32(%rbp), %eax
	cltq
	movl	(%rsi,%rax,4), %edx
	movl	-28(%rbp), %eax
	cltq
	movl	%edx, (%rcx,%rax,4)
	jmp	.L28
.L27:
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.L29
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movl	$10, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	cltq
	movl	$0, (%rdx,%rax,4)
	jmp	.L28
.L29:
	call	libmin_rand@PLT
	movl	%eax, %edx
	movl	%edx, %ecx
	movl	$3435973837, %eax
	imulq	%rcx, %rax
	shrq	$32, %rax
	movl	%eax, %ebx
	shrl	$2, %ebx
	movl	%ebx, %eax
	sall	$2, %eax
	addl	%ebx, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	call	libmin_rand@PLT
	movl	%eax, %ecx
	movl	%ecx, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$2, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %ebx
	jne	.L30
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movl	$10, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	cltq
	movl	$0, (%rdx,%rax,4)
	jmp	.L28
.L30:
	call	libmin_rand@PLT
	movl	%eax, %ecx
	movl	%ecx, %edx
	movl	$3435973837, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movl	$10, %eax
	cltq
	imulq	%rcx, %rax
	leaq	0(,%rax,4), %rcx
	movq	-40(%rbp), %rax
	addq	%rax, %rcx
	movl	-28(%rbp), %eax
	cltq
	movl	%edx, (%rcx,%rax,4)
.L28:
	addl	$1, -28(%rbp)
.L26:
	movl	$10, %eax
	cmpl	%eax, -28(%rbp)
	jl	.L31
	addl	$1, -32(%rbp)
.L25:
	movl	$10, %eax
	cmpl	%eax, -32(%rbp)
	jl	.L32
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	initializeData, .-initializeData
	.section	.rodata
.LC10:
	.string	"       "
.LC11:
	.string	"%8s"
.LC12:
	.string	"%8d"
.LC13:
	.string	"\n"
.LC14:
	.string	"\n\n"
	.text
	.globl	displayGraph
	.type	displayGraph, @function
displayGraph:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$10, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -20(%rbp)
	movl	$-1, -16(%rbp)
	jmp	.L34
.L41:
	movl	$-1, -12(%rbp)
	jmp	.L35
.L40:
	cmpl	$-1, -16(%rbp)
	jne	.L36
	cmpl	$-1, -12(%rbp)
	jne	.L37
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	jmp	.L38
.L37:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	vertName(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	jmp	.L38
.L36:
	cmpl	$-1, -12(%rbp)
	jne	.L39
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	vertName(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -20(%rbp)
	jmp	.L38
.L39:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movl	$10, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
.L38:
	addl	$1, -12(%rbp)
.L35:
	movl	$10, %eax
	cmpl	%eax, -12(%rbp)
	jl	.L40
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -16(%rbp)
.L34:
	movl	$10, %eax
	cmpl	%eax, -16(%rbp)
	jl	.L41
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	displayGraph, .-displayGraph
	.section	.rodata
.LC15:
	.string	"%8d / %d"
	.text
	.globl	displayGraph1
	.type	displayGraph1, @function
displayGraph1:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$10, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -20(%rbp)
	movl	$-1, -16(%rbp)
	jmp	.L43
.L50:
	movl	$-1, -12(%rbp)
	jmp	.L44
.L49:
	cmpl	$-1, -16(%rbp)
	jne	.L45
	cmpl	$-1, -12(%rbp)
	jne	.L46
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	jmp	.L47
.L46:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	vertName(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	jmp	.L47
.L45:
	cmpl	$-1, -12(%rbp)
	jne	.L48
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	vertName(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -20(%rbp)
	jmp	.L47
.L48:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-16(%rbp), %eax
	movslq	%eax, %rcx
	movl	$10, %eax
	cltq
	imulq	%rcx, %rax
	leaq	0(,%rax,4), %rcx
	movq	-40(%rbp), %rax
	addq	%rax, %rcx
	movl	-12(%rbp), %eax
	cltq
	movl	(%rcx,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
.L47:
	addl	$1, -12(%rbp)
.L44:
	movl	$10, %eax
	cmpl	%eax, -12(%rbp)
	jl	.L49
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -16(%rbp)
.L43:
	movl	$10, %eax
	cmpl	%eax, -16(%rbp)
	jl	.L50
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	displayGraph1, .-displayGraph1
	.section	.rodata
.LC16:
	.string	"\nSource: %s\tDestination: %s\n\n"
.LC17:
	.string	"Path: %s"
.LC18:
	.string	"-> %s"
	.text
	.globl	displayPath
	.type	displayPath, @function
displayPath:
.LFB8:
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
	movq	%rdx, -32(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	count.0(%rip), %eax
	testl	%eax, %eax
	jne	.L52
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	vertName(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	vertName(%rip), %rax
	movq	(%rcx,%rax), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	vertName(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	count.0(%rip), %eax
	addl	$1, %eax
	movl	%eax, count.0(%rip)
.L52:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	je	.L53
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	displayPath
.L53:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	vertName(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	-4(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.L55
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
.L55:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	displayPath, .-displayPath
	.section	.rodata
.LC19:
	.string	"minimum spanning tree:\n"
.LC20:
	.string	"  %8s <-%d-> %8s\n"
.LC21:
	.string	"total cost = %d\n"
	.text
	.globl	displayTree
	.type	displayTree, @function
displayTree:
.LFB9:
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
	movl	$10, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -16(%rbp)
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, -12(%rbp)
	jmp	.L57
.L58:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	vertName(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movl	$10, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-32(%rbp), %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	cltq
	movl	(%rdx,%rax,4), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	leaq	vertName(%rip), %rax
	movq	(%rsi,%rax), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movl	$10, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	addl	%eax, -16(%rbp)
	addl	$1, -12(%rbp)
.L57:
	movl	$10, %eax
	cmpl	%eax, -12(%rbp)
	jl	.L58
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	displayTree, .-displayTree
	.globl	main
	.type	main, @function
main:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %r12
	movl	$10, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -64(%rbp)
	movl	$10, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -56(%rbp)
	movl	$10, %eax
	cltq
	movq	%rax, %rcx
	movl	$0, %ebx
	movl	$10, %eax
	cltq
	movq	%rax, %rax
	movl	$0, %edx
	movq	%rbx, %rdi
	imulq	%rax, %rdi
	movq	%rdx, %rsi
	imulq	%rcx, %rsi
	addq	%rdi, %rsi
	mulq	%rcx
	leaq	(%rsi,%rdx), %rcx
	movq	%rcx, %rdx
	movl	$10, %eax
	cltq
	movq	%rax, %rcx
	movl	$0, %ebx
	movl	$10, %eax
	cltq
	movq	%rax, %rax
	movl	$0, %edx
	movq	%rbx, %rdi
	imulq	%rax, %rdi
	movq	%rdx, %rsi
	imulq	%rcx, %rsi
	addq	%rdi, %rsi
	mulq	%rcx
	leaq	(%rsi,%rdx), %rcx
	movq	%rcx, %rdx
	movl	$10, %eax
	movslq	%eax, %rdx
	movl	$10, %eax
	cltq
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L60:
	cmpq	%rdx, %rsp
	je	.L61
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L60
.L61:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L62
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L62:
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -48(%rbp)
	movl	$10, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -40(%rbp)
	movl	$10, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L63:
	cmpq	%rdx, %rsp
	je	.L64
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L63
.L64:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L65
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L65:
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -32(%rbp)
	movl	$0, -68(%rbp)
	jmp	.L66
.L67:
	movq	-32(%rbp), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	movl	$-1, (%rax,%rdx,4)
	addl	$1, -68(%rbp)
.L66:
	movl	$10, %eax
	cmpl	%eax, -68(%rbp)
	jl	.L67
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	initializeData
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	displayGraph
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	minSpanTree
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	displayTree
	call	libmin_success@PLT
	movl	$0, %eax
	movq	%r12, %rsp
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L69
	call	__stack_chk_fail@PLT
.L69:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	main, .-main
	.local	count.0
	.comm	count.0,4,4
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
