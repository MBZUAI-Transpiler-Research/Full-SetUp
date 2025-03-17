	.file	"problem114.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"the number of odd elements %d in the string %d of the %d input."
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
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	-60(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L2
.L6:
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L3
.L5:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L4
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jg	.L4
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	leal	-48(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$1, %eax
	jne	.L4
	addl	$1, -32(%rbp)
.L4:
	addl	$1, -28(%rbp)
.L3:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L5
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$100, %edi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %esi
	movl	-32(%rbp), %ecx
	movl	-32(%rbp), %edx
	movl	%esi, %r8d
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	addl	$1, -36(%rbp)
.L2:
	movl	-36(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L6
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
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
	movl	$0, -4(%rbp)
	jmp	.L9
.L12:
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
	jmp	.L11
.L10:
	addl	$1, -4(%rbp)
.L9:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L12
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC1:
	.string	"1234567"
	.align 8
.LC2:
	.string	"the number of odd elements 4 in the string 4 of the 4 input."
.LC3:
	.string	"problem114.c"
.LC4:
	.string	"issame(result1, expected1, 1)"
.LC5:
	.string	"3"
.LC6:
	.string	"11111111"
	.align 8
.LC7:
	.string	"the number of odd elements 1 in the string 1 of the 1 input."
	.align 8
.LC8:
	.string	"the number of odd elements 8 in the string 8 of the 8 input."
.LC9:
	.string	"issame(result2, expected2, 2)"
.LC10:
	.string	"271"
.LC11:
	.string	"137"
.LC12:
	.string	"314"
	.align 8
.LC13:
	.string	"the number of odd elements 2 in the string 2 of the 2 input."
	.align 8
.LC14:
	.string	"the number of odd elements 3 in the string 3 of the 3 input."
.LC15:
	.string	"issame(result3, expected3, 3)"
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
	subq	$160, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC1(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	-112(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -136(%rbp)
	leaq	-104(%rbp), %rcx
	movq	-136(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$38, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	leaq	.LC5(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	-96(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -128(%rbp)
	leaq	-80(%rbp), %rcx
	movq	-128(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$46, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	leaq	.LC10(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC12(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	-64(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -120(%rbp)
	leaq	-32(%rbp), %rcx
	movq	-120(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$55, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	movl	$0, -148(%rbp)
	jmp	.L17
.L18:
	movl	-148(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -148(%rbp)
.L17:
	cmpl	$0, -148(%rbp)
	jle	.L18
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, -144(%rbp)
	jmp	.L19
.L20:
	movl	-144(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -144(%rbp)
.L19:
	cmpl	$1, -144(%rbp)
	jle	.L20
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, -140(%rbp)
	jmp	.L21
.L22:
	movl	-140(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -140(%rbp)
.L21:
	cmpl	$2, -140(%rbp)
	jle	.L22
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L24
	call	__stack_chk_fail@PLT
.L24:
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
