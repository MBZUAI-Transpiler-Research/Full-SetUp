	.file	"bubble-sort.c"
	.text
	.globl	data
	.bss
	.align 32
	.type	data, @object
	.size	data, 1024
data:
	.zero	1024
	.globl	swaps
	.align 8
	.type	swaps, @object
	.size	swaps, 8
swaps:
	.zero	8
	.section	.rodata
.LC0:
	.string	"DATA DUMP:\n"
.LC1:
	.string	"  data[%u] = %d\n"
	.text
	.globl	print_data
	.type	print_data, @function
print_data:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jb	.L3
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	print_data, .-print_data
	.globl	bubblesort
	.type	bubblesort, @function
bubblesort:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L5
.L11:
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L6
.L8:
	movl	-8(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L7
	movl	-8(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	movl	$1, -12(%rbp)
	movq	swaps(%rip), %rax
	addq	$1, %rax
	movq	%rax, swaps(%rip)
.L7:
	addl	$1, -8(%rbp)
.L6:
	movl	-28(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -8(%rbp)
	jb	.L8
	cmpl	$0, -12(%rbp)
	je	.L12
	addl	$1, -16(%rbp)
.L5:
	movl	-28(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -16(%rbp)
	jb	.L11
	jmp	.L13
.L12:
	nop
.L13:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	bubblesort, .-bubblesort
	.section	.rodata
	.align 8
.LC2:
	.string	"ERROR: data is not properly sorted.\n"
.LC3:
	.string	"INFO: %lu swaps executed.\n"
	.align 8
.LC4:
	.string	"INFO: data is properly sorted.\n"
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
	subq	$16, %rsp
	movl	$42, %edi
	call	libmin_srand@PLT
	movl	$0, -8(%rbp)
	jmp	.L15
.L16:
	call	libmin_rand@PLT
	movl	%eax, %ecx
	movl	-8(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	data(%rip), %rax
	movl	%ecx, (%rdx,%rax)
	addl	$1, -8(%rbp)
.L15:
	cmpl	$255, -8(%rbp)
	jbe	.L16
	movl	$256, %esi
	leaq	data(%rip), %rax
	movq	%rax, %rdi
	call	print_data
	movl	$256, %esi
	leaq	data(%rip), %rax
	movq	%rax, %rdi
	call	bubblesort
	movl	$256, %esi
	leaq	data(%rip), %rax
	movq	%rax, %rdi
	call	print_data
	movl	$0, -4(%rbp)
	jmp	.L17
.L20:
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	data(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rcx
	leaq	data(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jle	.L18
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$-1, %eax
	jmp	.L19
.L18:
	addl	$1, -4(%rbp)
.L17:
	cmpl	$254, -4(%rbp)
	jbe	.L20
	movq	swaps(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
	movl	$0, %eax
.L19:
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
