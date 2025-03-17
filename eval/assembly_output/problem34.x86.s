	.file	"problem34.c"
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
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1431655766, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$31, %eax
	subl	%eax, %edx
	leal	1(%rdx), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L2
.L3:
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$1, -20(%rbp)
	addl	$1, -28(%rbp)
.L2:
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cmpl	%eax, -44(%rbp)
	jg	.L3
	movl	$0, -28(%rbp)
	jmp	.L4
.L9:
	movl	-28(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.L5
.L7:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L6
	movl	-24(%rbp), %eax
	movl	%eax, -16(%rbp)
.L6:
	addl	$1, -24(%rbp)
.L5:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L7
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L8
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, (%rdx)
.L8:
	addl	$1, -28(%rbp)
.L4:
	movl	-20(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -28(%rbp)
	jl	.L9
	movl	$0, -28(%rbp)
	jmp	.L10
.L13:
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	jne	.L11
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1431655766, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$31, %eax
	subl	%eax, %edx
	movslq	%edx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	jmp	.L12
.L11:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
.L12:
	addl	$1, -28(%rbp)
.L10:
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L13
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
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
	jmp	.L15
.L18:
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
	je	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	addl	$1, -4(%rbp)
.L15:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L18
	movl	$1, %eax
.L17:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem34.c"
.LC1:
	.string	"issame(result1, result1, 3)"
.LC2:
	.string	"issame(result2, result2, 11)"
.LC3:
	.string	"issame(result3, result3, 10)"
.LC4:
	.string	"issame(result4, correct4, 7)"
.LC5:
	.string	"issame(result5, correct5, 7)"
.LC6:
	.string	"issame(result6, correct6, 7)"
.LC7:
	.string	"issame(result7, correct7, 8)"
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
	subq	$624, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -616(%rbp)
	movl	$2, -612(%rbp)
	movl	$3, -608(%rbp)
	leaq	-604(%rbp), %rdx
	leaq	-616(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-604(%rbp), %rcx
	leaq	-604(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$53, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	movl	$5, -112(%rbp)
	movl	$3, -108(%rbp)
	movl	$-5, -104(%rbp)
	movl	$2, -100(%rbp)
	movl	$-3, -96(%rbp)
	movl	$3, -92(%rbp)
	movl	$9, -88(%rbp)
	movl	$0, -84(%rbp)
	movl	$123, -80(%rbp)
	movl	$1, -76(%rbp)
	movl	$-10, -72(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movl	$11, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-64(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movl	$11, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$58, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	movl	$5, -208(%rbp)
	movl	$8, -204(%rbp)
	movl	$-12, -200(%rbp)
	movl	$4, -196(%rbp)
	movl	$23, -192(%rbp)
	movl	$2, -188(%rbp)
	movl	$3, -184(%rbp)
	movl	$11, -180(%rbp)
	movl	$12, -176(%rbp)
	movl	$-10, -172(%rbp)
	leaq	-160(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-160(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$63, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	movl	$5, -592(%rbp)
	movl	$6, -588(%rbp)
	movl	$3, -584(%rbp)
	movl	$4, -580(%rbp)
	movl	$8, -576(%rbp)
	movl	$9, -572(%rbp)
	movl	$2, -568(%rbp)
	movl	$2, -560(%rbp)
	movl	$6, -556(%rbp)
	movl	$3, -552(%rbp)
	movl	$4, -548(%rbp)
	movl	$8, -544(%rbp)
	movl	$9, -540(%rbp)
	movl	$5, -536(%rbp)
	leaq	-528(%rbp), %rdx
	leaq	-592(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-560(%rbp), %rcx
	leaq	-528(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$69, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	movl	$5, -496(%rbp)
	movl	$8, -492(%rbp)
	movl	$3, -488(%rbp)
	movl	$4, -484(%rbp)
	movl	$6, -480(%rbp)
	movl	$9, -476(%rbp)
	movl	$2, -472(%rbp)
	movl	$2, -464(%rbp)
	movl	$8, -460(%rbp)
	movl	$3, -456(%rbp)
	movl	$4, -452(%rbp)
	movl	$6, -448(%rbp)
	movl	$9, -444(%rbp)
	movl	$5, -440(%rbp)
	leaq	-432(%rbp), %rdx
	leaq	-496(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-464(%rbp), %rcx
	leaq	-432(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L24
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$75, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L24:
	movl	$5, -400(%rbp)
	movl	$6, -396(%rbp)
	movl	$9, -392(%rbp)
	movl	$4, -388(%rbp)
	movl	$8, -384(%rbp)
	movl	$3, -380(%rbp)
	movl	$2, -376(%rbp)
	movl	$2, -368(%rbp)
	movl	$6, -364(%rbp)
	movl	$9, -360(%rbp)
	movl	$4, -356(%rbp)
	movl	$8, -352(%rbp)
	movl	$3, -348(%rbp)
	movl	$5, -344(%rbp)
	leaq	-336(%rbp), %rdx
	leaq	-400(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-368(%rbp), %rcx
	leaq	-336(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L25
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$81, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L25:
	movl	$5, -304(%rbp)
	movl	$6, -300(%rbp)
	movl	$3, -296(%rbp)
	movl	$4, -292(%rbp)
	movl	$8, -288(%rbp)
	movl	$9, -284(%rbp)
	movl	$2, -280(%rbp)
	movl	$1, -276(%rbp)
	movl	$2, -272(%rbp)
	movl	$6, -268(%rbp)
	movl	$3, -264(%rbp)
	movl	$4, -260(%rbp)
	movl	$8, -256(%rbp)
	movl	$9, -252(%rbp)
	movl	$5, -248(%rbp)
	movl	$1, -244(%rbp)
	leaq	-240(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	func0
	leaq	-272(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L26
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$87, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L26:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L28
	call	__stack_chk_fail@PLT
.L28:
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
