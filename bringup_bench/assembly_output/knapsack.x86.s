	.file	"knapsack.c"
	.text
	.globl	val
	.data
	.align 32
	.type	val, @object
	.size	val, 200
val:
	.long	27
	.long	34
	.long	9
	.long	22
	.long	8
	.long	17
	.long	22
	.long	21
	.long	23
	.long	19
	.long	7
	.long	36
	.long	11
	.long	42
	.long	37
	.long	16
	.long	10
	.long	26
	.long	10
	.long	50
	.long	23
	.long	46
	.long	37
	.long	3
	.long	14
	.long	16
	.long	35
	.long	14
	.long	15
	.long	44
	.long	49
	.long	2
	.long	45
	.long	3
	.long	15
	.long	1
	.long	34
	.long	44
	.long	19
	.long	25
	.long	43
	.long	28
	.long	26
	.long	4
	.long	30
	.long	24
	.long	49
	.long	11
	.long	48
	.long	13
	.globl	wt
	.align 32
	.type	wt, @object
	.size	wt, 200
wt:
	.long	23
	.long	47
	.long	22
	.long	15
	.long	42
	.long	30
	.long	15
	.long	32
	.long	47
	.long	33
	.long	15
	.long	38
	.long	44
	.long	7
	.long	16
	.long	34
	.long	30
	.long	33
	.long	3
	.long	2
	.long	43
	.long	31
	.long	46
	.long	17
	.long	30
	.long	1
	.long	34
	.long	21
	.long	30
	.long	21
	.long	29
	.long	21
	.long	36
	.long	14
	.long	18
	.long	21
	.long	13
	.long	3
	.long	27
	.long	44
	.long	33
	.long	11
	.long	9
	.long	31
	.long	40
	.long	40
	.long	30
	.long	9
	.long	41
	.long	31
	.text
	.globl	max
	.type	max, @function
max:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L2
	movl	-4(%rbp), %eax
	jmp	.L3
.L2:
	movl	-8(%rbp), %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	max, .-max
	.globl	knapSack
	.type	knapSack, @function
knapSack:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L5
.L12:
	movl	$0, -12(%rbp)
	jmp	.L6
.L11:
	cmpl	$0, -16(%rbp)
	je	.L7
	cmpl	$0, -12(%rbp)
	jne	.L8
.L7:
	movl	-16(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	$0, (%rdx,%rax,4)
	jmp	.L9
.L8:
	movl	-16(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L10
	movl	-16(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	leaq	-1004(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	-4(%rdx), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %ecx
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$1004, %rdx, %rdx
	leaq	-1004(%rdx), %rsi
	movq	-48(%rbp), %rdx
	addq	%rdx, %rsi
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	-4(%rdx), %rdi
	movq	-32(%rbp), %rdx
	addq	%rdi, %rdx
	movl	(%rdx), %edx
	movl	-12(%rbp), %edi
	subl	%edx, %edi
	movslq	%edi, %rdx
	movl	(%rsi,%rdx,4), %edx
	addl	%ecx, %edx
	movl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	$1004, %rcx, %rsi
	movq	-48(%rbp), %rcx
	leaq	(%rsi,%rcx), %rbx
	movl	%eax, %esi
	movl	%edx, %edi
	call	max
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movl	%eax, (%rbx,%rdx,4)
	jmp	.L9
.L10:
	movl	-16(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	leaq	-1004(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movl	-16(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rcx
	movq	-48(%rbp), %rax
	addq	%rax, %rcx
	movl	-12(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %edx
	movl	-12(%rbp), %eax
	cltq
	movl	%edx, (%rcx,%rax,4)
.L9:
	addl	$1, -12(%rbp)
.L6:
	cmpl	$250, -12(%rbp)
	jle	.L11
	addl	$1, -16(%rbp)
.L5:
	cmpl	$50, -16(%rbp)
	jle	.L12
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	knapSack, .-knapSack
	.section	.rodata
.LC0:
	.string	"Max value: %d\n"
.LC1:
	.string	"Selected packs:\n"
	.align 8
.LC2:
	.string	"  Package %d with wt=%d and val=%d\n"
.LC3:
	.string	"Total weight: %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	-49152(%rsp), %r11
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	subq	$2080, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$50, -51224(%rbp)
	movl	$250, -51220(%rbp)
	leaq	-51216(%rbp), %rax
	movq	%rax, %rdx
	leaq	val(%rip), %rax
	movq	%rax, %rsi
	leaq	wt(%rip), %rax
	movq	%rax, %rdi
	call	knapSack
	movl	-51224(%rbp), %eax
	cltq
	imulq	$1004, %rax, %rax
	addq	%rbp, %rax
	subq	$50216, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	jmp	.L14
.L16:
	movl	-51220(%rbp), %eax
	cltq
	movl	-51224(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$251, %rdx, %rdx
	addq	%rdx, %rax
	movl	-51216(%rbp,%rax,4), %edx
	movl	-51224(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	-51220(%rbp), %eax
	cltq
	movslq	%ecx, %rcx
	imulq	$251, %rcx, %rcx
	addq	%rcx, %rax
	movl	-51216(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	je	.L15
	movl	-51224(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	val(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-51224(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	wt(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-51224(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	-51224(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	wt(%rip), %rax
	movl	(%rdx,%rax), %eax
	subl	%eax, -51220(%rbp)
.L15:
	subl	$1, -51224(%rbp)
.L14:
	cmpl	$0, -51224(%rbp)
	jne	.L16
	movl	$250, %eax
	subl	-51220(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
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
