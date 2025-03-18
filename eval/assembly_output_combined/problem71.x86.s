	.file	"problem71.c"
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
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L2
.L6:
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.L3
.L5:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L4
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
.L4:
	addl	$1, -20(%rbp)
.L3:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L5
	addl	$1, -24(%rbp)
.L2:
	movl	-44(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -24(%rbp)
	jl	.L6
	movl	$0, -16(%rbp)
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L7
.L10:
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	.L8
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -16(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	jmp	.L7
.L8:
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -16(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	movl	-12(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -12(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
.L7:
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.L10
	nop
	nop
	popq	%rbp
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
	jmp	.L12
.L15:
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
	je	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	addl	$1, -4(%rbp)
.L12:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L15
	movl	$1, %eax
.L14:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem71.c"
.LC1:
	.string	"issame(e1, out1, 4)"
.LC2:
	.string	"issame(e2, out2, 5)"
.LC3:
	.string	"issame(e3, out3, 5)"
.LC4:
	.string	"issame(e4, out4, 6)"
.LC5:
	.string	"issame(e5, out5, 4)"
.LC6:
	.string	"issame(e6, out6, 0)"
.LC7:
	.string	"issame(e7, out7, 8)"
.LC8:
	.string	"issame(e8, out8, 8)"
.LC9:
	.string	"issame(e9, out9, 1)"
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
	subq	$624, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -592(%rbp)
	movl	$2, -588(%rbp)
	movl	$3, -584(%rbp)
	movl	$4, -580(%rbp)
	movl	$1, -576(%rbp)
	movl	$4, -572(%rbp)
	movl	$2, -568(%rbp)
	movl	$3, -564(%rbp)
	leaq	-560(%rbp), %rdx
	leaq	-592(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-560(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$45, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	movl	$5, -496(%rbp)
	movl	$6, -492(%rbp)
	movl	$7, -488(%rbp)
	movl	$8, -484(%rbp)
	movl	$9, -480(%rbp)
	movl	$5, -464(%rbp)
	movl	$9, -460(%rbp)
	movl	$6, -456(%rbp)
	movl	$8, -452(%rbp)
	movl	$7, -448(%rbp)
	leaq	-432(%rbp), %rdx
	leaq	-496(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-432(%rbp), %rcx
	leaq	-464(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$51, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	movl	$1, -400(%rbp)
	movl	$2, -396(%rbp)
	movl	$3, -392(%rbp)
	movl	$4, -388(%rbp)
	movl	$5, -384(%rbp)
	movl	$1, -368(%rbp)
	movl	$5, -364(%rbp)
	movl	$2, -360(%rbp)
	movl	$4, -356(%rbp)
	movl	$3, -352(%rbp)
	leaq	-336(%rbp), %rdx
	leaq	-400(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-336(%rbp), %rcx
	leaq	-368(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$57, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	movl	$5, -304(%rbp)
	movl	$6, -300(%rbp)
	movl	$7, -296(%rbp)
	movl	$8, -292(%rbp)
	movl	$9, -288(%rbp)
	movl	$1, -284(%rbp)
	movl	$1, -272(%rbp)
	movl	$9, -268(%rbp)
	movl	$5, -264(%rbp)
	movl	$8, -260(%rbp)
	movl	$6, -256(%rbp)
	movl	$7, -252(%rbp)
	leaq	-240(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-240(%rbp), %rcx
	leaq	-272(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$63, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	movl	$5, -544(%rbp)
	movl	$5, -540(%rbp)
	movl	$5, -536(%rbp)
	movl	$5, -532(%rbp)
	movl	$5, -528(%rbp)
	movl	$5, -524(%rbp)
	movl	$5, -520(%rbp)
	movl	$5, -516(%rbp)
	leaq	-512(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-512(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$69, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	leaq	-608(%rbp), %rdx
	leaq	-616(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-608(%rbp), %rcx
	leaq	-612(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$75, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	movl	$1, -208(%rbp)
	movl	$2, -204(%rbp)
	movl	$3, -200(%rbp)
	movl	$4, -196(%rbp)
	movl	$5, -192(%rbp)
	movl	$6, -188(%rbp)
	movl	$7, -184(%rbp)
	movl	$8, -180(%rbp)
	movl	$1, -176(%rbp)
	movl	$8, -172(%rbp)
	movl	$2, -168(%rbp)
	movl	$7, -164(%rbp)
	movl	$3, -160(%rbp)
	movl	$6, -156(%rbp)
	movl	$4, -152(%rbp)
	movl	$5, -148(%rbp)
	leaq	-144(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-144(%rbp), %rcx
	leaq	-176(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$81, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	movl	$0, -112(%rbp)
	movl	$2, -108(%rbp)
	movl	$2, -104(%rbp)
	movl	$2, -100(%rbp)
	movl	$5, -96(%rbp)
	movl	$5, -92(%rbp)
	movl	$-5, -88(%rbp)
	movl	$-5, -84(%rbp)
	movl	$-5, -80(%rbp)
	movl	$5, -76(%rbp)
	movl	$-5, -72(%rbp)
	movl	$5, -68(%rbp)
	movl	$0, -64(%rbp)
	movl	$2, -60(%rbp)
	movl	$2, -56(%rbp)
	movl	$2, -52(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-48(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L24
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$87, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L24:
	movl	$111111, -604(%rbp)
	movl	$111111, -600(%rbp)
	leaq	-596(%rbp), %rdx
	leaq	-604(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-596(%rbp), %rcx
	leaq	-600(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L25
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$93, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L25:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
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
