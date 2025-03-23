	.file	"problem137.c"
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
	movq	%rdx, -40(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L7:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L3
	cmpl	$0, -12(%rbp)
	je	.L4
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jge	.L3
.L4:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
.L3:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L5
	cmpl	$0, -8(%rbp)
	je	.L6
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L5
.L6:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
.L5:
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L7
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	leaq	4(%rax), %rdx
	movl	-8(%rbp), %eax
	movl	%eax, (%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L9
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L9
	movl	$1, %eax
	jmp	.L11
.L9:
	movl	$0, %eax
.L11:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem137.c"
.LC1:
	.string	"issame(result, (int[]){0, 1})"
	.align 8
.LC2:
	.string	"issame(result, (int[]){-2, 1})"
	.align 8
.LC3:
	.string	"issame(result, (int[]){-7, 2})"
	.align 8
.LC4:
	.string	"issame(result, (int[]){-9, 2})"
.LC5:
	.string	"issame(result, (int[]){0, 0})"
	.align 8
.LC6:
	.string	"issame(result, (int[]){-1, 0})"
	.align 8
.LC7:
	.string	"issame(result, (int[]){-3, 1})"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$2, -208(%rbp)
	movl	$4, -204(%rbp)
	movl	$1, -200(%rbp)
	movl	$3, -196(%rbp)
	movl	$5, -192(%rbp)
	movl	$7, -188(%rbp)
	leaq	-304(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	movl	$0, -48(%rbp)
	movl	$1, -44(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$26, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	movl	$2, -144(%rbp)
	movl	$4, -140(%rbp)
	movl	$1, -136(%rbp)
	movl	$3, -132(%rbp)
	movl	$5, -128(%rbp)
	movl	$7, -124(%rbp)
	movl	$0, -120(%rbp)
	leaq	-304(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	func0
	movl	$0, -48(%rbp)
	movl	$1, -44(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$29, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	movl	$1, -112(%rbp)
	movl	$3, -108(%rbp)
	movl	$2, -104(%rbp)
	movl	$4, -100(%rbp)
	movl	$5, -96(%rbp)
	movl	$6, -92(%rbp)
	movl	$-2, -88(%rbp)
	leaq	-304(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	func0
	movl	$-2, -48(%rbp)
	movl	$1, -44(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	movl	$4, -80(%rbp)
	movl	$5, -76(%rbp)
	movl	$3, -72(%rbp)
	movl	$6, -68(%rbp)
	movl	$2, -64(%rbp)
	movl	$7, -60(%rbp)
	movl	$-7, -56(%rbp)
	leaq	-304(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	func0
	movl	$-7, -48(%rbp)
	movl	$2, -44(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	movl	$7, -48(%rbp)
	movl	$3, -44(%rbp)
	movl	$8, -40(%rbp)
	movl	$4, -36(%rbp)
	movl	$9, -32(%rbp)
	movl	$2, -28(%rbp)
	movl	$5, -24(%rbp)
	movl	$-9, -20(%rbp)
	leaq	-304(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	func0
	movl	$-9, -176(%rbp)
	movl	$2, -172(%rbp)
	leaq	-176(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$38, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	leaq	-304(%rbp), %rdx
	leaq	-312(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	func0
	movl	$0, -176(%rbp)
	movl	$0, -172(%rbp)
	leaq	-176(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$41, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	movl	$0, -308(%rbp)
	leaq	-304(%rbp), %rdx
	leaq	-308(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	func0
	movl	$0, -176(%rbp)
	movl	$0, -172(%rbp)
	leaq	-176(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$44, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	movl	$-1, -288(%rbp)
	movl	$-3, -284(%rbp)
	movl	$-5, -280(%rbp)
	movl	$-6, -276(%rbp)
	leaq	-304(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movl	$-1, -176(%rbp)
	movl	$0, -172(%rbp)
	leaq	-176(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$47, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	movl	$-1, -272(%rbp)
	movl	$-3, -268(%rbp)
	movl	$-5, -264(%rbp)
	movl	$-6, -260(%rbp)
	movl	$0, -256(%rbp)
	leaq	-304(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	movl	$-1, -176(%rbp)
	movl	$0, -172(%rbp)
	leaq	-176(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$50, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	movl	$-6, -240(%rbp)
	movl	$-4, -236(%rbp)
	movl	$-4, -232(%rbp)
	movl	$-3, -228(%rbp)
	movl	$1, -224(%rbp)
	leaq	-304(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	movl	$-3, -176(%rbp)
	movl	$1, -172(%rbp)
	leaq	-176(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$53, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	movl	$-6, -176(%rbp)
	movl	$-4, -172(%rbp)
	movl	$-4, -168(%rbp)
	movl	$-3, -164(%rbp)
	movl	$-100, -160(%rbp)
	movl	$1, -156(%rbp)
	leaq	-304(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	movl	$-3, -296(%rbp)
	movl	$1, -292(%rbp)
	leaq	-296(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$56, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L25
	call	__stack_chk_fail@PLT
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
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
