	.file	"problem116.c"
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
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L2
.L6:
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L3
.L4:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L3:
	movl	-4(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L4
	cmpl	$0, -8(%rbp)
	jle	.L5
	movl	-8(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	cltd
	idivl	-36(%rbp)
	addl	%eax, -16(%rbp)
.L5:
	addl	$1, -12(%rbp)
.L2:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L6
	movl	-16(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem116.c"
	.align 8
.LC1:
	.string	"func0(grid, rows, cols, capacity) == 6"
	.align 8
.LC2:
	.string	"func0(grid, rows, cols, capacity) == 5"
	.align 8
.LC3:
	.string	"func0(grid, rows, cols, capacity) == 0"
	.align 8
.LC4:
	.string	"func0(grid, rows, cols, capacity) == 4"
	.align 8
.LC5:
	.string	"func0(grid, rows, cols, capacity) == 2"
.LC6:
	.string	"All tests passed!"
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
	pushq	%rbx
	subq	$312, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$3, -260(%rbp)
	movl	$4, -256(%rbp)
	movl	$1, -252(%rbp)
	movl	-260(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -248(%rbp)
	movl	$0, -144(%rbp)
	movl	$0, -140(%rbp)
	movl	$1, -136(%rbp)
	movl	$0, -132(%rbp)
	movl	$0, -128(%rbp)
	movl	$1, -124(%rbp)
	movl	$0, -120(%rbp)
	movl	$0, -116(%rbp)
	movl	$1, -112(%rbp)
	movl	$1, -108(%rbp)
	movl	$1, -104(%rbp)
	movl	$1, -100(%rbp)
	movl	$0, -320(%rbp)
	jmp	.L9
.L12:
	movl	-256(%rbp), %eax
	cltq
	salq	$2, %rax
	movl	-320(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-248(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movl	$0, -316(%rbp)
	jmp	.L10
.L11:
	movl	-320(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-316(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, %rdx
	movl	-316(%rbp), %eax
	movslq	%eax, %rcx
	movl	-320(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rcx, %rax
	movl	-144(%rbp,%rax,4), %eax
	movl	%eax, (%rdx)
	addl	$1, -316(%rbp)
.L10:
	movl	-316(%rbp), %eax
	cmpl	-256(%rbp), %eax
	jl	.L11
	addl	$1, -320(%rbp)
.L9:
	movl	-320(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jl	.L12
	movl	-252(%rbp), %ecx
	movl	-256(%rbp), %edx
	movl	-260(%rbp), %esi
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$6, %eax
	je	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	movl	$0, -312(%rbp)
	jmp	.L14
.L15:
	movl	-312(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -312(%rbp)
.L14:
	movl	-312(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jl	.L15
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$4, -260(%rbp)
	movl	$4, -256(%rbp)
	movl	$2, -252(%rbp)
	movl	-260(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -248(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -92(%rbp)
	movl	$1, -88(%rbp)
	movl	$1, -84(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -68(%rbp)
	movl	$1, -64(%rbp)
	movl	$1, -60(%rbp)
	movl	$1, -56(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -48(%rbp)
	movl	$1, -44(%rbp)
	movl	$1, -40(%rbp)
	movl	$1, -36(%rbp)
	movl	$0, -308(%rbp)
	jmp	.L16
.L19:
	movl	-256(%rbp), %eax
	cltq
	salq	$2, %rax
	movl	-308(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-248(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movl	$0, -304(%rbp)
	jmp	.L17
.L18:
	movl	-308(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-304(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, %rdx
	movl	-304(%rbp), %eax
	movslq	%eax, %rcx
	movl	-308(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rcx, %rax
	movl	-96(%rbp,%rax,4), %eax
	movl	%eax, (%rdx)
	addl	$1, -304(%rbp)
.L17:
	movl	-304(%rbp), %eax
	cmpl	-256(%rbp), %eax
	jl	.L18
	addl	$1, -308(%rbp)
.L16:
	movl	-308(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jl	.L19
	movl	-252(%rbp), %ecx
	movl	-256(%rbp), %edx
	movl	-260(%rbp), %esi
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$5, %eax
	je	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$47, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	movl	$0, -300(%rbp)
	jmp	.L21
.L22:
	movl	-300(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -300(%rbp)
.L21:
	movl	-300(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jl	.L22
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$2, -260(%rbp)
	movl	$3, -256(%rbp)
	movl	$5, -252(%rbp)
	movl	-260(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -248(%rbp)
	movl	$0, -240(%rbp)
	movl	$0, -236(%rbp)
	movl	$0, -232(%rbp)
	movl	$0, -228(%rbp)
	movl	$0, -224(%rbp)
	movl	$0, -220(%rbp)
	movl	$0, -296(%rbp)
	jmp	.L23
.L26:
	movl	-256(%rbp), %eax
	cltq
	salq	$2, %rax
	movl	-296(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-248(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movl	$0, -292(%rbp)
	jmp	.L24
.L25:
	movl	-296(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-292(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	(%rdx,%rax), %rcx
	movl	-292(%rbp), %eax
	movslq	%eax, %rsi
	movl	-296(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	movl	-240(%rbp,%rax,4), %eax
	movl	%eax, (%rcx)
	addl	$1, -292(%rbp)
.L24:
	movl	-292(%rbp), %eax
	cmpl	-256(%rbp), %eax
	jl	.L25
	addl	$1, -296(%rbp)
.L23:
	movl	-296(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jl	.L26
	movl	-252(%rbp), %ecx
	movl	-256(%rbp), %edx
	movl	-260(%rbp), %esi
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	func0
	testl	%eax, %eax
	je	.L27
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$61, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L27:
	movl	$0, -288(%rbp)
	jmp	.L28
.L29:
	movl	-288(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -288(%rbp)
.L28:
	movl	-288(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jl	.L29
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$2, -260(%rbp)
	movl	$4, -256(%rbp)
	movl	$2, -252(%rbp)
	movl	-260(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -248(%rbp)
	movl	$1, -208(%rbp)
	movl	$1, -204(%rbp)
	movl	$1, -200(%rbp)
	movl	$1, -196(%rbp)
	movl	$1, -192(%rbp)
	movl	$1, -188(%rbp)
	movl	$1, -184(%rbp)
	movl	$1, -180(%rbp)
	movl	$0, -284(%rbp)
	jmp	.L30
.L33:
	movl	-256(%rbp), %eax
	cltq
	salq	$2, %rax
	movl	-284(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-248(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movl	$0, -280(%rbp)
	jmp	.L31
.L32:
	movl	-284(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-280(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, %rdx
	movl	-280(%rbp), %eax
	movslq	%eax, %rcx
	movl	-284(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rcx, %rax
	movl	-208(%rbp,%rax,4), %eax
	movl	%eax, (%rdx)
	addl	$1, -280(%rbp)
.L31:
	movl	-280(%rbp), %eax
	cmpl	-256(%rbp), %eax
	jl	.L32
	addl	$1, -284(%rbp)
.L30:
	movl	-284(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jl	.L33
	movl	-252(%rbp), %ecx
	movl	-256(%rbp), %edx
	movl	-260(%rbp), %esi
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$4, %eax
	je	.L34
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$75, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L34:
	movl	$0, -276(%rbp)
	jmp	.L35
.L36:
	movl	-276(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -276(%rbp)
.L35:
	movl	-276(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jl	.L36
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$2, -260(%rbp)
	movl	$4, -256(%rbp)
	movl	$9, -252(%rbp)
	movl	-260(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -248(%rbp)
	movl	$1, -176(%rbp)
	movl	$1, -172(%rbp)
	movl	$1, -168(%rbp)
	movl	$1, -164(%rbp)
	movl	$1, -160(%rbp)
	movl	$1, -156(%rbp)
	movl	$1, -152(%rbp)
	movl	$1, -148(%rbp)
	movl	$0, -272(%rbp)
	jmp	.L37
.L40:
	movl	-256(%rbp), %eax
	cltq
	salq	$2, %rax
	movl	-272(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-248(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movl	$0, -268(%rbp)
	jmp	.L38
.L39:
	movl	-272(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-268(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, %rdx
	movl	-268(%rbp), %eax
	movslq	%eax, %rcx
	movl	-272(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rcx, %rax
	movl	-176(%rbp,%rax,4), %eax
	movl	%eax, (%rdx)
	addl	$1, -268(%rbp)
.L38:
	movl	-268(%rbp), %eax
	cmpl	-256(%rbp), %eax
	jl	.L39
	addl	$1, -272(%rbp)
.L37:
	movl	-272(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jl	.L40
	movl	-252(%rbp), %ecx
	movl	-256(%rbp), %edx
	movl	-260(%rbp), %esi
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	func0
	cmpl	$2, %eax
	je	.L41
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$89, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L41:
	movl	$0, -264(%rbp)
	jmp	.L42
.L43:
	movl	-264(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -264(%rbp)
.L42:
	movl	-264(%rbp), %eax
	cmpl	-260(%rbp), %eax
	jl	.L43
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L45
	call	__stack_chk_fail@PLT
.L45:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
