	.file	"hanoi.c"
	.text
	.local	num
	.comm	num,16,16
	.local	count
	.comm	count,8,8
	.type	mov, @function
mov:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.L2
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	num(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	-1(%rax), %ecx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	num(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	num(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	num(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	movq	count(%rip), %rax
	addq	$1, %rax
	movq	%rax, count(%rip)
	movl	$0, %eax
	jmp	.L3
.L2:
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movl	$6, %eax
	subl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	-4(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	mov
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movl	$1, %edi
	call	mov
	movl	-20(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	-28(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	mov
	movl	$0, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	mov, .-mov
	.section	.rodata
	.align 8
.LC0:
	.string	"Towers of Hanoi Puzzle Test Program\n"
.LC1:
	.string	"Disks     Moves\n"
.LC2:
	.string	"%3d  %10ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$0, -8(%rbp)
.L7:
	addl	$1, -8(%rbp)
	movl	$0, num(%rip)
	movl	-8(%rbp), %eax
	movl	%eax, 4+num(%rip)
	movl	$0, 8+num(%rip)
	movl	$0, 12+num(%rip)
	movq	$0, count(%rip)
	movl	-8(%rbp), %eax
	movl	$3, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	mov
	addl	$1, -4(%rbp)
	movq	count(%rip), %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	cmpl	$10, -8(%rbp)
	je	.L10
	jmp	.L7
.L10:
	nop
	call	libmin_success@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
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
