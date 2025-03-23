	.file	"problem106.c"
	.text
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"One"
.LC2:
	.string	"Two"
.LC3:
	.string	"Three"
.LC4:
	.string	"Four"
.LC5:
	.string	"Five"
.LC6:
	.string	"Six"
.LC7:
	.string	"Seven"
.LC8:
	.string	"Eight"
.LC9:
	.string	"Nine"
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
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -108(%rbp)
	jmp	.L2
.L6:
	movl	$0, -104(%rbp)
	jmp	.L3
.L5:
	movl	-104(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-104(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rcx
	movq	-120(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L4
	movl	-104(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -100(%rbp)
	movl	-104(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	-104(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-120(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-104(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movl	-100(%rbp), %eax
	movl	%eax, (%rdx)
.L4:
	addl	$1, -104(%rbp)
.L3:
	movl	-124(%rbp), %eax
	subl	-108(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -104(%rbp)
	jl	.L5
	addl	$1, -108(%rbp)
.L2:
	movl	-124(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -108(%rbp)
	jl	.L6
	movq	-144(%rbp), %rax
	movl	$0, (%rax)
	movl	-124(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.L7
.L9:
	movl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L8
	movl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$9, %eax
	jg	.L8
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-144(%rbp), %rax
	movl	%edx, (%rax)
.L8:
	subl	$1, -108(%rbp)
.L7:
	cmpl	$0, -108(%rbp)
	jns	.L9
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-124(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -108(%rbp)
	movl	$0, -104(%rbp)
	jmp	.L10
.L13:
	movl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L11
	movl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$9, %eax
	jg	.L11
	movl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movq	-136(%rbp), %rax
	movq	(%rax), %rsi
	movl	-104(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -104(%rbp)
	cltq
	salq	$3, %rax
	leaq	(%rsi,%rax), %rdx
	movslq	%ecx, %rax
	movq	-96(%rbp,%rax,8), %rax
	movq	%rax, (%rdx)
.L11:
	subl	$1, -108(%rbp)
.L10:
	cmpl	$0, -108(%rbp)
	js	.L15
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -104(%rbp)
	jl	.L13
.L15:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
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
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movl	$0, -4(%rbp)
	jmp	.L19
.L21:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L20
	movl	$0, %eax
	jmp	.L18
.L20:
	addl	$1, -4(%rbp)
.L19:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L21
	movl	$1, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC10:
	.string	"problem106.c"
	.align 8
.LC11:
	.string	"issame(out, out_size, expected1, 8)"
	.align 8
.LC12:
	.string	"issame(out, out_size, NULL, 0)"
	.align 8
.LC13:
	.string	"issame(out, out_size, expected3, 1)"
	.align 8
.LC14:
	.string	"issame(out, out_size, expected4, 3)"
	.align 8
.LC15:
	.string	"issame(out, out_size, expected5, 3)"
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
	subq	$256, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$2, -112(%rbp)
	movl	$1, -108(%rbp)
	movl	$1, -104(%rbp)
	movl	$4, -100(%rbp)
	movl	$5, -96(%rbp)
	movl	$8, -92(%rbp)
	movl	$2, -88(%rbp)
	movl	$3, -84(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	-244(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	func0
	movl	-244(%rbp), %esi
	movq	-240(%rbp), %rax
	leaq	-80(%rbp), %rdx
	movl	$8, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$57, %edx
	leaq	.LC10(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-244(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	-228(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	func0
	movl	-244(%rbp), %esi
	movq	-240(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L24
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$62, %edx
	leaq	.LC10(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L24:
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, -216(%rbp)
	movl	$-1, -212(%rbp)
	movl	$55, -208(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -224(%rbp)
	leaq	-244(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	-216(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movl	-244(%rbp), %esi
	movq	-240(%rbp), %rax
	leaq	-224(%rbp), %rdx
	movl	$1, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L25
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$68, %edx
	leaq	.LC10(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L25:
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, -192(%rbp)
	movl	$-1, -188(%rbp)
	movl	$3, -184(%rbp)
	movl	$2, -180(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -176(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -168(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -160(%rbp)
	leaq	-244(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movl	-244(%rbp), %esi
	movq	-240(%rbp), %rax
	leaq	-176(%rbp), %rdx
	movl	$3, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L26
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$74, %edx
	leaq	.LC10(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L26:
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$9, -204(%rbp)
	movl	$4, -200(%rbp)
	movl	$8, -196(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	-244(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	-204(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movl	-244(%rbp), %esi
	movq	-240(%rbp), %rax
	leaq	-144(%rbp), %rdx
	movl	$3, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L27
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$80, %edx
	leaq	.LC10(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L27:
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
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
