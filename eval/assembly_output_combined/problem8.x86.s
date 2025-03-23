	.file	"problem8.c"
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
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L2
.L4:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	testq	%rax, %rax
	je	.L3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -16(%rbp)
.L3:
	addl	$1, -12(%rbp)
.L2:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L4
	movq	-48(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, (%rax)
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
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	.L7
	movl	$0, %eax
	jmp	.L8
.L7:
	movl	$0, -4(%rbp)
	jmp	.L9
.L11:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
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
	je	.L10
	movl	$0, %eax
	jmp	.L8
.L10:
	addl	$1, -4(%rbp)
.L9:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L11
	movl	$1, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"john"
.LC1:
	.string	"problem8.c"
	.align 8
.LC2:
	.string	"out_size == 0 && result == NULL"
.LC3:
	.string	"xxx"
.LC4:
	.string	"asd"
.LC5:
	.string	"xxy"
.LC6:
	.string	"john doe"
.LC7:
	.string	"xxxAAA"
	.align 8
.LC8:
	.string	"issame(result, expected1, out_size, 3)"
.LC9:
	.string	"aaaxxy"
.LC10:
	.string	"xx"
	.align 8
.LC11:
	.string	"issame(result, expected2, out_size, 4)"
.LC12:
	.string	"grunt"
.LC13:
	.string	"trumpet"
.LC14:
	.string	"prune"
.LC15:
	.string	"gruesome"
.LC16:
	.string	"run"
	.align 8
.LC17:
	.string	"issame(result, expected3, out_size, 2)"
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
	subq	$240, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-236(%rbp), %rax
	movq	%rax, %rcx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	func0
	movq	%rax, -232(%rbp)
	movl	-236(%rbp), %eax
	testl	%eax, %eax
	jne	.L13
	cmpq	$0, -232(%rbp)
	je	.L20
.L13:
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$40, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L20:
	leaq	.LC3(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -208(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -200(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -192(%rbp)
	leaq	-236(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC3(%rip), %rdx
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -232(%rbp)
	movl	-236(%rbp), %edx
	leaq	-208(%rbp), %rsi
	movq	-232(%rbp), %rax
	movl	$3, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$46, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -176(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -168(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -160(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -152(%rbp)
	leaq	-236(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC10(%rip), %rdx
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -232(%rbp)
	movl	-236(%rbp), %edx
	leaq	-176(%rbp), %rsi
	movq	-232(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$53, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC12(%rip), %rax
	movq	%rax, -224(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -216(%rbp)
	leaq	-236(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC16(%rip), %rdx
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -232(%rbp)
	movl	-236(%rbp), %edx
	leaq	-224(%rbp), %rsi
	movq	-232(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$60, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
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
