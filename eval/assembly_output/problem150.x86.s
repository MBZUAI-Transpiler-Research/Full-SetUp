	.file	"problem150.c"
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
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, -40(%rbp)
	jmp	.L2
.L4:
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L3
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
.L3:
	addl	$1, -40(%rbp)
.L2:
	movl	-40(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L4
	movl	$0, -40(%rbp)
	jmp	.L5
.L10:
	movl	$0, -36(%rbp)
	jmp	.L6
.L9:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	movl	-36(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L7
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L8
	movl	-36(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jle	.L8
.L7:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	-36(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movl	-36(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
.L8:
	addl	$1, -36(%rbp)
.L6:
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	subl	-40(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -36(%rbp)
	jl	.L9
	addl	$1, -40(%rbp)
.L5:
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, -40(%rbp)
	jl	.L10
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L11
.L12:
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -40(%rbp)
.L11:
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -40(%rbp)
	jl	.L12
	movq	-32(%rbp), %rax
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
	je	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movl	$0, -4(%rbp)
	jmp	.L17
.L19:
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
	je	.L18
	movl	$0, %eax
	jmp	.L16
.L18:
	addl	$1, -4(%rbp)
.L17:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L19
	movl	$1, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"aa"
.LC1:
	.string	"a"
.LC2:
	.string	"aaa"
.LC3:
	.string	"problem150.c"
	.align 8
.LC4:
	.string	"issame(result, expected1, size, 1)"
.LC5:
	.string	"school"
.LC6:
	.string	"AI"
.LC7:
	.string	"asdf"
.LC8:
	.string	"b"
	.align 8
.LC9:
	.string	"issame(result, expected2, size, 3)"
.LC10:
	.string	"d"
.LC11:
	.string	"c"
.LC12:
	.string	"size == 0"
.LC13:
	.string	"dcba"
.LC14:
	.string	"abcd"
	.align 8
.LC15:
	.string	"issame(result, expected4, size, 2)"
.LC16:
	.string	"ai"
.LC17:
	.string	"au"
	.align 8
.LC18:
	.string	"issame(result, expected5, size, 3)"
.LC19:
	.string	"aaaa"
.LC20:
	.string	"bbbb"
.LC21:
	.string	"dd"
.LC22:
	.string	"cc"
	.align 8
.LC23:
	.string	"issame(result, expected7, size, 4)"
.LC24:
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
	subq	$400, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, -352(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -344(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -336(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -376(%rbp)
	leaq	-388(%rbp), %rdx
	leaq	-352(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -384(%rbp)
	movl	-388(%rbp), %edx
	leaq	-376(%rbp), %rsi
	movq	-384(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L21
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$59, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L21:
	movq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, -224(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -216(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -208(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -200(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -320(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -312(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -304(%rbp)
	leaq	-388(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -384(%rbp)
	movl	-388(%rbp), %edx
	leaq	-320(%rbp), %rsi
	movq	-384(%rbp), %rax
	movl	$3, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L22
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$65, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L22:
	movq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC10(%rip), %rax
	movq	%rax, -192(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -184(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -176(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -168(%rbp)
	leaq	-388(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -384(%rbp)
	movl	-388(%rbp), %eax
	testl	%eax, %eax
	je	.L23
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$70, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L23:
	movq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC10(%rip), %rax
	movq	%rax, -160(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -152(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -368(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -360(%rbp)
	leaq	-388(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -384(%rbp)
	movl	-388(%rbp), %edx
	leaq	-368(%rbp), %rsi
	movq	-384(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L24
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$76, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L24:
	movq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC6(%rip), %rax
	movq	%rax, -288(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, -280(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -272(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -256(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, -248(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -240(%rbp)
	leaq	-388(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -384(%rbp)
	movl	-388(%rbp), %edx
	leaq	-256(%rbp), %rsi
	movq	-384(%rbp), %rax
	movl	$3, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L25
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$82, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L25:
	movq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	-388(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -384(%rbp)
	movl	-388(%rbp), %eax
	testl	%eax, %eax
	je	.L26
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$87, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L26:
	movq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC19(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC20(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC21(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC22(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC22(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC21(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC19(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC20(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	-388(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -384(%rbp)
	movl	-388(%rbp), %edx
	leaq	-96(%rbp), %rsi
	movq	-384(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L27
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$93, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L27:
	movq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	.LC24(%rip), %rax
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
