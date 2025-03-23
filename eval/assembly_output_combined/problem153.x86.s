	.file	"problem153.c"
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
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	subl	%edx, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movl	%eax, %ecx
	negl	%ecx
	cmovns	%ecx, %eax
	movl	%eax, (%rdx)
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L3
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
	jmp	.L5
.L8:
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
	je	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	addl	$1, -4(%rbp)
.L5:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L8
	movl	$1, %eax
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem153.c"
	.align 8
.LC1:
	.string	"issame(result, (int[]){0,0,0,0,3,3}, 6)"
	.align 8
.LC2:
	.string	"issame(result, (int[]){4,4,1,0,0,6}, 6)"
	.align 8
.LC3:
	.string	"issame(result, (int[]){0,0,0,0,0,0}, 6)"
	.align 8
.LC4:
	.string	"issame(result, (int[]){2,4,6}, 3)"
	.align 8
.LC5:
	.string	"issame(result, (int[]){2,0,0,1}, 4)"
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
	subq	$384, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -256(%rbp)
	movl	$2, -252(%rbp)
	movl	$3, -248(%rbp)
	movl	$4, -244(%rbp)
	movl	$2, -240(%rbp)
	movl	$-2, -236(%rbp)
	movl	$1, -288(%rbp)
	movl	$2, -284(%rbp)
	movl	$3, -280(%rbp)
	movl	$4, -276(%rbp)
	movl	$5, -272(%rbp)
	movl	$1, -268(%rbp)
	leaq	-320(%rbp), %rdx
	leaq	-256(%rbp), %rsi
	leaq	-288(%rbp), %rax
	movl	$6, %ecx
	movq	%rax, %rdi
	call	func0
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	movl	$3, -16(%rbp)
	movl	$3, -12(%rbp)
	leaq	-32(%rbp), %rcx
	leaq	-320(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L10
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$26, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L10:
	movl	$4, -192(%rbp)
	movl	$1, -188(%rbp)
	movl	$1, -184(%rbp)
	movl	$0, -180(%rbp)
	movl	$0, -176(%rbp)
	movl	$-2, -172(%rbp)
	movl	$0, -224(%rbp)
	movl	$5, -220(%rbp)
	movl	$0, -216(%rbp)
	movl	$0, -212(%rbp)
	movl	$0, -208(%rbp)
	movl	$4, -204(%rbp)
	leaq	-320(%rbp), %rdx
	leaq	-192(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movl	$6, %ecx
	movq	%rax, %rdi
	call	func0
	movl	$4, -32(%rbp)
	movl	$4, -28(%rbp)
	movl	$1, -24(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -16(%rbp)
	movl	$6, -12(%rbp)
	leaq	-32(%rbp), %rcx
	leaq	-320(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L11
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$29, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L11:
	movl	$1, -128(%rbp)
	movl	$2, -124(%rbp)
	movl	$3, -120(%rbp)
	movl	$4, -116(%rbp)
	movl	$2, -112(%rbp)
	movl	$-2, -108(%rbp)
	movl	$1, -160(%rbp)
	movl	$2, -156(%rbp)
	movl	$3, -152(%rbp)
	movl	$4, -148(%rbp)
	movl	$5, -144(%rbp)
	movl	$1, -140(%rbp)
	leaq	-320(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	leaq	-160(%rbp), %rax
	movl	$6, %ecx
	movq	%rax, %rdi
	call	func0
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	movl	$3, -16(%rbp)
	movl	$3, -12(%rbp)
	leaq	-32(%rbp), %rcx
	leaq	-320(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L12
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L12:
	movl	$0, -64(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -76(%rbp)
	leaq	-320(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$6, %ecx
	movq	%rax, %rdi
	call	func0
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	leaq	-32(%rbp), %rcx
	leaq	-320(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L13
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L13:
	movl	$-1, -364(%rbp)
	movl	$-2, -360(%rbp)
	movl	$-3, -356(%rbp)
	movl	$1, -376(%rbp)
	movl	$2, -372(%rbp)
	movl	$3, -368(%rbp)
	leaq	-320(%rbp), %rdx
	leaq	-364(%rbp), %rsi
	leaq	-376(%rbp), %rax
	movl	$3, %ecx
	movq	%rax, %rdi
	call	func0
	movl	$2, -32(%rbp)
	movl	$4, -28(%rbp)
	movl	$6, -24(%rbp)
	leaq	-32(%rbp), %rcx
	leaq	-320(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L14
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$38, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L14:
	movl	$-1, -336(%rbp)
	movl	$2, -332(%rbp)
	movl	$3, -328(%rbp)
	movl	$4, -324(%rbp)
	movl	$1, -352(%rbp)
	movl	$2, -348(%rbp)
	movl	$3, -344(%rbp)
	movl	$5, -340(%rbp)
	leaq	-320(%rbp), %rdx
	leaq	-336(%rbp), %rsi
	leaq	-352(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	call	func0
	movl	$2, -32(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -24(%rbp)
	movl	$1, -20(%rbp)
	leaq	-32(%rbp), %rcx
	leaq	-320(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testl	%eax, %eax
	jne	.L15
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$41, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L15:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
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
