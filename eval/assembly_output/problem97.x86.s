	.file	"problem97.c"
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
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	movl	$2, -24(%rbp)
	jmp	.L2
.L9:
	movl	$1, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L3
.L7:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	imull	%eax, %eax
	cmpl	%eax, -24(%rbp)
	jl	.L11
	movl	-24(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L6
	movl	$0, -16(%rbp)
	jmp	.L5
.L6:
	addl	$1, -20(%rbp)
.L3:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L7
	jmp	.L5
.L11:
	nop
.L5:
	cmpl	$0, -16(%rbp)
	je	.L8
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.L8:
	addl	$1, -24(%rbp)
.L2:
	movl	-24(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L9
	movq	-8(%rbp), %rax
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
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	movl	$0, -4(%rbp)
	jmp	.L15
.L17:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L16
	movl	$0, %eax
	jmp	.L14
.L16:
	addl	$1, -4(%rbp)
.L15:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L17
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
	.string	"problem97.c"
	.align 8
.LC1:
	.string	"issame(result, count, (int[]){2, 3}, 2)"
	.align 8
.LC2:
	.string	"issame(result, count, (int[]){2, 3, 5}, 3)"
	.align 8
.LC3:
	.string	"issame(result, count, (int[]){2, 3, 5, 7}, 4)"
.LC4:
	.string	"count == 0"
	.align 8
.LC5:
	.string	"issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19}, 8)"
	.align 8
.LC6:
	.string	"issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17}, 7)"
	.align 8
.LC7:
	.string	"issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43}, 14)"
	.align 8
.LC8:
	.string	"issame(result, count, expected, 25)"
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
	subq	$192, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$2, -112(%rbp)
	movl	$3, -108(%rbp)
	movl	$5, -104(%rbp)
	movl	$7, -100(%rbp)
	movl	$11, -96(%rbp)
	movl	$13, -92(%rbp)
	movl	$17, -88(%rbp)
	movl	$19, -84(%rbp)
	movl	$23, -80(%rbp)
	movl	$29, -76(%rbp)
	movl	$31, -72(%rbp)
	movl	$37, -68(%rbp)
	movl	$41, -64(%rbp)
	movl	$43, -60(%rbp)
	movl	$47, -56(%rbp)
	movl	$53, -52(%rbp)
	movl	$59, -48(%rbp)
	movl	$61, -44(%rbp)
	movl	$67, -40(%rbp)
	movl	$71, -36(%rbp)
	movl	$73, -32(%rbp)
	movl	$79, -28(%rbp)
	movl	$83, -24(%rbp)
	movl	$89, -20(%rbp)
	movl	$97, -16(%rbp)
	leaq	-188(%rbp), %rax
	movq	%rax, %rsi
	movl	$5, %edi
	call	func0
	movq	%rax, -184(%rbp)
	movl	$2, -176(%rbp)
	movl	$3, -172(%rbp)
	movl	-188(%rbp), %esi
	leaq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L19
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$46, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L19:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-188(%rbp), %rax
	movq	%rax, %rsi
	movl	$6, %edi
	call	func0
	movq	%rax, -184(%rbp)
	movl	$2, -176(%rbp)
	movl	$3, -172(%rbp)
	movl	$5, -168(%rbp)
	movl	-188(%rbp), %esi
	leaq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	movl	$3, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L20
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$50, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-188(%rbp), %rax
	movq	%rax, %rsi
	movl	$7, %edi
	call	func0
	movq	%rax, -184(%rbp)
	movl	$2, -176(%rbp)
	movl	$3, -172(%rbp)
	movl	$5, -168(%rbp)
	movl	-188(%rbp), %esi
	leaq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	movl	$3, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$54, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-188(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	func0
	movq	%rax, -184(%rbp)
	movl	$2, -176(%rbp)
	movl	$3, -172(%rbp)
	movl	$5, -168(%rbp)
	movl	$7, -164(%rbp)
	movl	-188(%rbp), %esi
	leaq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$58, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-188(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	func0
	movq	%rax, -184(%rbp)
	movl	-188(%rbp), %eax
	testl	%eax, %eax
	je	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$62, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-188(%rbp), %rax
	movq	%rax, %rsi
	movl	$22, %edi
	call	func0
	movq	%rax, -184(%rbp)
	movl	$2, -176(%rbp)
	movl	$3, -172(%rbp)
	movl	$5, -168(%rbp)
	movl	$7, -164(%rbp)
	movl	$11, -160(%rbp)
	movl	$13, -156(%rbp)
	movl	$17, -152(%rbp)
	movl	$19, -148(%rbp)
	movl	-188(%rbp), %esi
	leaq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L24
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$66, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L24:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-188(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	func0
	movq	%rax, -184(%rbp)
	movl	-188(%rbp), %eax
	testl	%eax, %eax
	je	.L25
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$70, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L25:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-188(%rbp), %rax
	movq	%rax, %rsi
	movl	$18, %edi
	call	func0
	movq	%rax, -184(%rbp)
	movl	$2, -176(%rbp)
	movl	$3, -172(%rbp)
	movl	$5, -168(%rbp)
	movl	$7, -164(%rbp)
	movl	$11, -160(%rbp)
	movl	$13, -156(%rbp)
	movl	$17, -152(%rbp)
	movl	-188(%rbp), %esi
	leaq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	movl	$7, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L26
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$74, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L26:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-188(%rbp), %rax
	movq	%rax, %rsi
	movl	$47, %edi
	call	func0
	movq	%rax, -184(%rbp)
	movl	$2, -176(%rbp)
	movl	$3, -172(%rbp)
	movl	$5, -168(%rbp)
	movl	$7, -164(%rbp)
	movl	$11, -160(%rbp)
	movl	$13, -156(%rbp)
	movl	$17, -152(%rbp)
	movl	$19, -148(%rbp)
	movl	$23, -144(%rbp)
	movl	$29, -140(%rbp)
	movl	$31, -136(%rbp)
	movl	$37, -132(%rbp)
	movl	$41, -128(%rbp)
	movl	$43, -124(%rbp)
	movl	-188(%rbp), %esi
	leaq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	movl	$14, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L27
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$78, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L27:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-188(%rbp), %rax
	movq	%rax, %rsi
	movl	$101, %edi
	call	func0
	movq	%rax, -184(%rbp)
	movl	-188(%rbp), %esi
	leaq	-112(%rbp), %rdx
	movq	-184(%rbp), %rax
	movl	$25, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L28
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$82, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L28:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L30
	call	__stack_chk_fail@PLT
.L30:
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
