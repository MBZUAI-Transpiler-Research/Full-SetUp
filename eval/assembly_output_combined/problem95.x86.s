	.file	"problem95.c"
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
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L2
.L8:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	jle	.L3
	movl	$1, -12(%rbp)
	movl	$2, -8(%rbp)
	jmp	.L4
.L7:
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L5
	movl	$0, -12(%rbp)
	jmp	.L6
.L5:
	addl	$1, -8(%rbp)
.L4:
	movl	-8(%rbp), %eax
	imull	%eax, %eax
	cmpl	%eax, -4(%rbp)
	jge	.L7
.L6:
	cmpl	$0, -12(%rbp)
	je	.L3
	movl	-24(%rbp), %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, -24(%rbp)
.L3:
	addl	$1, -16(%rbp)
.L2:
	movl	-16(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L8
	jmp	.L9
.L10:
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	addl	%edx, -20(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$2, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -24(%rbp)
.L9:
	cmpl	$0, -24(%rbp)
	jg	.L10
	movl	-20(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem95.c"
	.align 8
.LC1:
	.string	"func0(lst1, sizeof(lst1)/sizeof(lst1[0])) == 10"
	.align 8
.LC2:
	.string	"func0(lst2, sizeof(lst2)/sizeof(lst2[0])) == 25"
	.align 8
.LC3:
	.string	"func0(lst3, sizeof(lst3)/sizeof(lst3[0])) == 13"
	.align 8
.LC4:
	.string	"func0(lst4, sizeof(lst4)/sizeof(lst4[0])) == 11"
	.align 8
.LC5:
	.string	"func0(lst5, sizeof(lst5)/sizeof(lst5[0])) == 3"
	.align 8
.LC6:
	.string	"func0(lst6, sizeof(lst6)/sizeof(lst6[0])) == 7"
	.align 8
.LC7:
	.string	"func0(lst7, sizeof(lst7)/sizeof(lst7[0])) == 19"
	.align 8
.LC8:
	.string	"func0(lst8, sizeof(lst8)/sizeof(lst8[0])) == 19"
	.align 8
.LC9:
	.string	"func0(lst9, sizeof(lst9)/sizeof(lst9[0])) == 10"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$400, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -96(%rbp)
	movl	$3, -92(%rbp)
	movl	$2, -88(%rbp)
	movl	$1, -84(%rbp)
	movl	$3, -80(%rbp)
	movl	$5, -76(%rbp)
	movl	$7, -72(%rbp)
	movl	$4, -68(%rbp)
	movl	$5, -64(%rbp)
	movl	$5, -60(%rbp)
	movl	$5, -56(%rbp)
	movl	$2, -52(%rbp)
	movl	$181, -48(%rbp)
	movl	$32, -44(%rbp)
	movl	$4, -40(%rbp)
	movl	$32, -36(%rbp)
	movl	$3, -32(%rbp)
	movl	$2, -28(%rbp)
	movl	$32, -24(%rbp)
	movl	$324, -20(%rbp)
	movl	$4, -16(%rbp)
	movl	$3, -12(%rbp)
	leaq	-96(%rbp), %rax
	movl	$22, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$10, %eax
	je	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$36, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	movl	$1, -176(%rbp)
	movl	$0, -172(%rbp)
	movl	$1, -168(%rbp)
	movl	$8, -164(%rbp)
	movl	$2, -160(%rbp)
	movl	$4597, -156(%rbp)
	movl	$2, -152(%rbp)
	movl	$1, -148(%rbp)
	movl	$3, -144(%rbp)
	movl	$40, -140(%rbp)
	movl	$1, -136(%rbp)
	movl	$2, -132(%rbp)
	movl	$1, -128(%rbp)
	movl	$2, -124(%rbp)
	movl	$4, -120(%rbp)
	movl	$2, -116(%rbp)
	movl	$5, -112(%rbp)
	movl	$1, -108(%rbp)
	leaq	-176(%rbp), %rax
	movl	$18, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$25, %eax
	je	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$39, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	movl	$1, -240(%rbp)
	movl	$3, -236(%rbp)
	movl	$1, -232(%rbp)
	movl	$32, -228(%rbp)
	movl	$5107, -224(%rbp)
	movl	$34, -220(%rbp)
	movl	$83278, -216(%rbp)
	movl	$109, -212(%rbp)
	movl	$163, -208(%rbp)
	movl	$23, -204(%rbp)
	movl	$2323, -200(%rbp)
	movl	$32, -196(%rbp)
	movl	$30, -192(%rbp)
	movl	$1, -188(%rbp)
	movl	$9, -184(%rbp)
	movl	$3, -180(%rbp)
	leaq	-240(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$13, %eax
	je	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$42, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	movl	$0, -304(%rbp)
	movl	$724, -300(%rbp)
	movl	$32, -296(%rbp)
	movl	$71, -292(%rbp)
	movl	$99, -288(%rbp)
	movl	$32, -284(%rbp)
	movl	$6, -280(%rbp)
	movl	$0, -276(%rbp)
	movl	$5, -272(%rbp)
	movl	$91, -268(%rbp)
	movl	$83, -264(%rbp)
	movl	$0, -260(%rbp)
	movl	$5, -256(%rbp)
	movl	$6, -252(%rbp)
	leaq	-304(%rbp), %rax
	movl	$14, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$11, %eax
	je	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$45, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	movl	$0, -368(%rbp)
	movl	$81, -364(%rbp)
	movl	$12, -360(%rbp)
	movl	$3, -356(%rbp)
	movl	$1, -352(%rbp)
	movl	$21, -348(%rbp)
	leaq	-368(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$3, %eax
	je	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$48, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	movl	$0, -336(%rbp)
	movl	$8, -332(%rbp)
	movl	$1, -328(%rbp)
	movl	$2, -324(%rbp)
	movl	$1, -320(%rbp)
	movl	$7, -316(%rbp)
	leaq	-336(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$7, %eax
	je	.L18
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$51, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L18:
	movl	$8191, -400(%rbp)
	leaq	-400(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$19, %eax
	je	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$54, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	movl	$8191, -384(%rbp)
	movl	$123456, -380(%rbp)
	movl	$127, -376(%rbp)
	movl	$7, -372(%rbp)
	leaq	-384(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$19, %eax
	je	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$57, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	movl	$127, -396(%rbp)
	movl	$97, -392(%rbp)
	movl	$8192, -388(%rbp)
	leaq	-396(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	cmpl	$10, %eax
	je	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$60, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L23
	call	__stack_chk_fail@PLT
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
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
