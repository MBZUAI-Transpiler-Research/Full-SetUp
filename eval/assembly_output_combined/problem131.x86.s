	.file	"problem131.c"
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	cmpl	$0, -20(%rbp)
	jne	.L2
	movq	-8(%rbp), %rax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movl	$3, (%rax)
	movl	$2, -12(%rbp)
	jmp	.L4
.L7:
	movl	-12(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L5
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	addl	$1, %edx
	movl	%edx, (%rax)
	jmp	.L6
.L5:
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-8(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	leal	1(%rax), %edx
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	addl	%esi, %edx
	movl	%edx, (%rax)
.L6:
	addl	$1, -12(%rbp)
.L4:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L7
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
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
	movl	$0, -4(%rbp)
	jmp	.L9
.L12:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	addl	$1, -4(%rbp)
.L9:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L12
	movl	$1, %eax
.L11:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem131.c"
.LC1:
	.string	"issame(out3, tri_3, size)"
.LC2:
	.string	"issame(out4, tri_4, size)"
.LC3:
	.string	"issame(out5, tri_5, size)"
.LC4:
	.string	"issame(out6, tri_6, size)"
.LC5:
	.string	"issame(out7, tri_7, size)"
.LC6:
	.string	"issame(out8, tri_8, size)"
.LC7:
	.string	"issame(out9, tri_9, size)"
.LC8:
	.string	"issame(out20, tri_20, size)"
.LC9:
	.string	"issame(out0, tri_0, size)"
.LC10:
	.string	"issame(out1, tri_1, size)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$448, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -336(%rbp)
	movl	$3, -332(%rbp)
	movl	$2, -328(%rbp)
	movl	$8, -324(%rbp)
	movl	$4, -436(%rbp)
	movl	$3, %edi
	call	func0
	movq	%rax, -432(%rbp)
	movl	-436(%rbp), %edx
	leaq	-336(%rbp), %rcx
	movq	-432(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	movq	-432(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, -320(%rbp)
	movl	$3, -316(%rbp)
	movl	$2, -312(%rbp)
	movl	$8, -308(%rbp)
	movl	$3, -304(%rbp)
	movl	$5, -436(%rbp)
	movl	$4, %edi
	call	func0
	movq	%rax, -424(%rbp)
	movl	-436(%rbp), %edx
	leaq	-320(%rbp), %rcx
	movq	-424(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$41, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	movq	-424(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, -288(%rbp)
	movl	$3, -284(%rbp)
	movl	$2, -280(%rbp)
	movl	$8, -276(%rbp)
	movl	$3, -272(%rbp)
	movl	$15, -268(%rbp)
	movl	$6, -436(%rbp)
	movl	$5, %edi
	call	func0
	movq	%rax, -416(%rbp)
	movl	-436(%rbp), %edx
	leaq	-288(%rbp), %rcx
	movq	-416(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$47, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	movq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, -256(%rbp)
	movl	$3, -252(%rbp)
	movl	$2, -248(%rbp)
	movl	$8, -244(%rbp)
	movl	$3, -240(%rbp)
	movl	$15, -236(%rbp)
	movl	$4, -232(%rbp)
	movl	$7, -436(%rbp)
	movl	$6, %edi
	call	func0
	movq	%rax, -408(%rbp)
	movl	-436(%rbp), %edx
	leaq	-256(%rbp), %rcx
	movq	-408(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$53, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	movq	-408(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, -224(%rbp)
	movl	$3, -220(%rbp)
	movl	$2, -216(%rbp)
	movl	$8, -212(%rbp)
	movl	$3, -208(%rbp)
	movl	$15, -204(%rbp)
	movl	$4, -200(%rbp)
	movl	$24, -196(%rbp)
	movl	$8, -436(%rbp)
	movl	$7, %edi
	call	func0
	movq	%rax, -400(%rbp)
	movl	-436(%rbp), %edx
	leaq	-224(%rbp), %rcx
	movq	-400(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$59, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	movq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, -192(%rbp)
	movl	$3, -188(%rbp)
	movl	$2, -184(%rbp)
	movl	$8, -180(%rbp)
	movl	$3, -176(%rbp)
	movl	$15, -172(%rbp)
	movl	$4, -168(%rbp)
	movl	$24, -164(%rbp)
	movl	$5, -160(%rbp)
	movl	$9, -436(%rbp)
	movl	$8, %edi
	call	func0
	movq	%rax, -392(%rbp)
	movl	-436(%rbp), %edx
	leaq	-192(%rbp), %rcx
	movq	-392(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$65, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	movq	-392(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, -144(%rbp)
	movl	$3, -140(%rbp)
	movl	$2, -136(%rbp)
	movl	$8, -132(%rbp)
	movl	$3, -128(%rbp)
	movl	$15, -124(%rbp)
	movl	$4, -120(%rbp)
	movl	$24, -116(%rbp)
	movl	$5, -112(%rbp)
	movl	$35, -108(%rbp)
	movl	$10, -436(%rbp)
	movl	$9, %edi
	call	func0
	movq	%rax, -384(%rbp)
	movl	-436(%rbp), %edx
	leaq	-144(%rbp), %rcx
	movq	-384(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$71, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	movq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, -96(%rbp)
	movl	$3, -92(%rbp)
	movl	$2, -88(%rbp)
	movl	$8, -84(%rbp)
	movl	$3, -80(%rbp)
	movl	$15, -76(%rbp)
	movl	$4, -72(%rbp)
	movl	$24, -68(%rbp)
	movl	$5, -64(%rbp)
	movl	$35, -60(%rbp)
	movl	$6, -56(%rbp)
	movl	$48, -52(%rbp)
	movl	$7, -48(%rbp)
	movl	$63, -44(%rbp)
	movl	$8, -40(%rbp)
	movl	$80, -36(%rbp)
	movl	$9, -32(%rbp)
	movl	$99, -28(%rbp)
	movl	$10, -24(%rbp)
	movl	$120, -20(%rbp)
	movl	$11, -16(%rbp)
	movl	$21, -436(%rbp)
	movl	$20, %edi
	call	func0
	movq	%rax, -376(%rbp)
	movl	-436(%rbp), %edx
	leaq	-96(%rbp), %rcx
	movq	-376(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$77, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, -348(%rbp)
	movl	$1, -436(%rbp)
	movl	$0, %edi
	call	func0
	movq	%rax, -368(%rbp)
	movl	-436(%rbp), %edx
	leaq	-348(%rbp), %rcx
	movq	-368(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$83, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	movq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, -344(%rbp)
	movl	$3, -340(%rbp)
	movl	$2, -436(%rbp)
	movl	$1, %edi
	call	func0
	movq	%rax, -360(%rbp)
	movl	-436(%rbp), %edx
	leaq	-344(%rbp), %rcx
	movq	-360(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$89, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
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
.LFE8:
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
