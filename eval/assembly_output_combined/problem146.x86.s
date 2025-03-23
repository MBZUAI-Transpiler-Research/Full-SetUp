	.file	"problem146.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d"
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
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-76(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L2
.L7:
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	negl	%edx
	cmovs	%eax, %edx
	leaq	-20(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	$0, -56(%rbp)
	leaq	-20(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -36(%rbp)
	movl	$1, -52(%rbp)
	jmp	.L3
.L4:
	movl	-52(%rbp), %eax
	cltq
	movzbl	-20(%rbp,%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	addl	%eax, -56(%rbp)
	addl	$1, -52(%rbp)
.L3:
	movl	-52(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L4
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L5
	movzbl	-20(%rbp), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	addl	%eax, -56(%rbp)
	jmp	.L6
.L5:
	movzbl	-20(%rbp), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	subl	%eax, -56(%rbp)
.L6:
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-56(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -60(%rbp)
.L2:
	movl	-60(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L7
	movl	$0, -48(%rbp)
	jmp	.L8
.L12:
	movl	$1, -44(%rbp)
	jmp	.L9
.L11:
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L10
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-40(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movl	-40(%rbp), %eax
	movl	%eax, (%rdx)
.L10:
	addl	$1, -44(%rbp)
.L9:
	movl	-44(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L11
	addl	$1, -48(%rbp)
.L8:
	movl	-48(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
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
	movl	%ecx, -40(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movl	$0, -4(%rbp)
	jmp	.L18
.L20:
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
	je	.L19
	movl	$0, %eax
	jmp	.L17
.L19:
	addl	$1, -4(%rbp)
.L18:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L20
	movl	$1, %eax
.L17:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC1:
	.string	"problem146.c"
	.align 8
.LC2:
	.string	"issame(func0(test1, 5), expected1, 5, 5)"
	.align 8
.LC3:
	.string	"issame(func0(test2, 15), expected2, 15, 15)"
	.align 8
.LC4:
	.string	"issame(func0(test3, 0), expected3, 0, 0)"
	.align 8
.LC5:
	.string	"issame(func0(test4, 8), expected4, 8, 8)"
	.align 8
.LC6:
	.string	"issame(func0(test5, 11), expected5, 11, 11)"
	.align 8
.LC7:
	.string	"issame(func0(test6, 7), expected6, 7, 7)"
.LC8:
	.string	"All tests passed!"
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
	movl	$1, -432(%rbp)
	movl	$11, -428(%rbp)
	movl	$-1, -424(%rbp)
	movl	$-11, -420(%rbp)
	movl	$-12, -416(%rbp)
	movl	$-1, -400(%rbp)
	movl	$-11, -396(%rbp)
	movl	$1, -392(%rbp)
	movl	$-12, -388(%rbp)
	movl	$11, -384(%rbp)
	leaq	-432(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdi
	leaq	-400(%rbp), %rax
	movl	$5, %ecx
	movl	$5, %edx
	movq	%rax, %rsi
	call	issame
	testl	%eax, %eax
	jne	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$45, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	movl	$1234, -144(%rbp)
	movl	$423, -140(%rbp)
	movl	$463, -136(%rbp)
	movl	$145, -132(%rbp)
	movl	$2, -128(%rbp)
	movl	$423, -124(%rbp)
	movl	$423, -120(%rbp)
	movl	$53, -116(%rbp)
	movl	$6, -112(%rbp)
	movl	$37, -108(%rbp)
	movl	$3457, -104(%rbp)
	movl	$3, -100(%rbp)
	movl	$56, -96(%rbp)
	movl	$0, -92(%rbp)
	movl	$46, -88(%rbp)
	movl	$0, -80(%rbp)
	movl	$2, -76(%rbp)
	movl	$3, -72(%rbp)
	movl	$6, -68(%rbp)
	movl	$53, -64(%rbp)
	movl	$423, -60(%rbp)
	movl	$423, -56(%rbp)
	movl	$423, -52(%rbp)
	movl	$1234, -48(%rbp)
	movl	$145, -44(%rbp)
	movl	$37, -40(%rbp)
	movl	$46, -36(%rbp)
	movl	$56, -32(%rbp)
	movl	$463, -28(%rbp)
	movl	$3457, -24(%rbp)
	leaq	-144(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdi
	leaq	-80(%rbp), %rax
	movl	$15, %ecx
	movl	$15, %edx
	movq	%rax, %rsi
	call	issame
	testl	%eax, %eax
	jne	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$49, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	leaq	-440(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdi
	leaq	-436(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	issame
	testl	%eax, %eax
	jne	.L24
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$53, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L24:
	movl	$1, -304(%rbp)
	movl	$-11, -300(%rbp)
	movl	$-32, -296(%rbp)
	movl	$43, -292(%rbp)
	movl	$54, -288(%rbp)
	movl	$-98, -284(%rbp)
	movl	$2, -280(%rbp)
	movl	$-3, -276(%rbp)
	movl	$-3, -272(%rbp)
	movl	$-32, -268(%rbp)
	movl	$-98, -264(%rbp)
	movl	$-11, -260(%rbp)
	movl	$1, -256(%rbp)
	movl	$2, -252(%rbp)
	movl	$43, -248(%rbp)
	movl	$54, -244(%rbp)
	leaq	-304(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdi
	leaq	-272(%rbp), %rax
	movl	$8, %ecx
	movl	$8, %edx
	movq	%rax, %rsi
	call	issame
	testl	%eax, %eax
	jne	.L25
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$57, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L25:
	movl	$1, -240(%rbp)
	movl	$2, -236(%rbp)
	movl	$3, -232(%rbp)
	movl	$4, -228(%rbp)
	movl	$5, -224(%rbp)
	movl	$6, -220(%rbp)
	movl	$7, -216(%rbp)
	movl	$8, -212(%rbp)
	movl	$9, -208(%rbp)
	movl	$10, -204(%rbp)
	movl	$11, -200(%rbp)
	movl	$1, -192(%rbp)
	movl	$10, -188(%rbp)
	movl	$2, -184(%rbp)
	movl	$11, -180(%rbp)
	movl	$3, -176(%rbp)
	movl	$4, -172(%rbp)
	movl	$5, -168(%rbp)
	movl	$6, -164(%rbp)
	movl	$7, -160(%rbp)
	movl	$8, -156(%rbp)
	movl	$9, -152(%rbp)
	leaq	-240(%rbp), %rax
	movl	$11, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdi
	leaq	-192(%rbp), %rax
	movl	$11, %ecx
	movl	$11, %edx
	movq	%rax, %rsi
	call	issame
	testl	%eax, %eax
	jne	.L26
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$61, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L26:
	movl	$0, -368(%rbp)
	movl	$6, -364(%rbp)
	movl	$6, -360(%rbp)
	movl	$-76, -356(%rbp)
	movl	$-21, -352(%rbp)
	movl	$23, -348(%rbp)
	movl	$4, -344(%rbp)
	movl	$-76, -336(%rbp)
	movl	$-21, -332(%rbp)
	movl	$0, -328(%rbp)
	movl	$4, -324(%rbp)
	movl	$23, -320(%rbp)
	movl	$6, -316(%rbp)
	movl	$6, -312(%rbp)
	leaq	-368(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdi
	leaq	-336(%rbp), %rax
	movl	$7, %ecx
	movl	$7, %edx
	movq	%rax, %rsi
	call	issame
	testl	%eax, %eax
	jne	.L27
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$65, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L27:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L29
	call	__stack_chk_fail@PLT
.L29:
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
