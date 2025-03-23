	.file	"problem111.c"
	.text
	.section	.rodata
.LC0:
	.string	"YES"
.LC1:
	.string	"NO"
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
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L2
.L4:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L3
	addl	$1, -12(%rbp)
.L3:
	addl	$1, -8(%rbp)
.L2:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L4
	movl	$0, -4(%rbp)
	jmp	.L5
.L7:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L6
	addl	$1, -12(%rbp)
.L6:
	addl	$1, -4(%rbp)
.L5:
	movl	-4(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L7
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L8
	leaq	.LC0(%rip), %rax
	jmp	.L9
.L8:
	leaq	.LC1(%rip), %rax
.L9:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC2:
	.string	"problem111.c"
	.align 8
.LC3:
	.string	"strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 2, 3, 4}, 4), \"YES\") == 0"
	.align 8
.LC4:
	.string	"strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 5, 3, 4}, 4), \"NO\") == 0"
	.align 8
.LC5:
	.string	"strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){2, 1, 4, 3}, 4), \"YES\") == 0"
	.align 8
.LC6:
	.string	"strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 4}, 3), \"YES\") == 0"
	.align 8
.LC7:
	.string	"strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 3}, 3), \"NO\") == 0"
	.align 8
.LC8:
	.string	"strcmp(func0((int[]){3, 2, 6, 1, 8, 9}, 6, (int[]){3, 5, 5, 1, 1, 1}, 6), \"NO\") == 0"
	.align 8
.LC9:
	.string	"strcmp(func0((int[]){100, 200}, 2, (int[]){200, 200}, 2), \"YES\") == 0"
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
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -32(%rbp)
	movl	$2, -28(%rbp)
	movl	$3, -24(%rbp)
	movl	$4, -20(%rbp)
	movl	$1, -64(%rbp)
	movl	$2, -60(%rbp)
	movl	$3, -56(%rbp)
	movl	$4, -52(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$4, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$19, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	movl	$1, -32(%rbp)
	movl	$5, -28(%rbp)
	movl	$3, -24(%rbp)
	movl	$4, -20(%rbp)
	movl	$1, -64(%rbp)
	movl	$2, -60(%rbp)
	movl	$3, -56(%rbp)
	movl	$4, -52(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$4, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$20, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	movl	$2, -32(%rbp)
	movl	$1, -28(%rbp)
	movl	$4, -24(%rbp)
	movl	$3, -20(%rbp)
	movl	$1, -64(%rbp)
	movl	$2, -60(%rbp)
	movl	$3, -56(%rbp)
	movl	$4, -52(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$4, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$21, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	movl	$2, -32(%rbp)
	movl	$6, -28(%rbp)
	movl	$4, -24(%rbp)
	movl	$5, -64(%rbp)
	movl	$7, -60(%rbp)
	movl	$3, -56(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$3, %ecx
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$22, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	movl	$2, -32(%rbp)
	movl	$6, -28(%rbp)
	movl	$3, -24(%rbp)
	movl	$5, -64(%rbp)
	movl	$7, -60(%rbp)
	movl	$3, -56(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$3, %ecx
	movl	$3, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$23, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	movl	$3, -32(%rbp)
	movl	$5, -28(%rbp)
	movl	$5, -24(%rbp)
	movl	$1, -20(%rbp)
	movl	$1, -16(%rbp)
	movl	$1, -12(%rbp)
	movl	$3, -64(%rbp)
	movl	$2, -60(%rbp)
	movl	$6, -56(%rbp)
	movl	$1, -52(%rbp)
	movl	$8, -48(%rbp)
	movl	$9, -44(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$6, %ecx
	movl	$6, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L16
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$24, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L16:
	movl	$200, -32(%rbp)
	movl	$200, -28(%rbp)
	movl	$100, -64(%rbp)
	movl	$200, -60(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$2, %ecx
	movl	$2, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L17
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$25, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L17:
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
.LFE1:
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
