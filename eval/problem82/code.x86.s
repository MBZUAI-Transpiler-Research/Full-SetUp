	.file	"code.c"
	.text
	.section	.rodata
.LC1:
	.string	"A+"
.LC3:
	.string	"A"
.LC5:
	.string	"A-"
.LC7:
	.string	"B+"
.LC9:
	.string	"B"
.LC11:
	.string	"B-"
.LC13:
	.string	"C+"
.LC15:
	.string	"C"
.LC17:
	.string	"C-"
.LC19:
	.string	"D+"
.LC21:
	.string	"D"
.LC23:
	.string	"D-"
.LC24:
	.string	"E"
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
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L2
.L28:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC0(%rip), %xmm0
	jb	.L42
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L42:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC2(%rip), %xmm0
	jbe	.L43
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L43:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC4(%rip), %xmm0
	jbe	.L44
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L44:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC6(%rip), %xmm0
	jbe	.L45
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L45:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC8(%rip), %xmm0
	jbe	.L46
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC9(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L46:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC10(%rip), %xmm0
	jbe	.L47
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC11(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L47:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC12(%rip), %xmm0
	jbe	.L48
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L48:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC14(%rip), %xmm0
	jbe	.L49
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC15(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L49:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC16(%rip), %xmm0
	jbe	.L50
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC17(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L50:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC18(%rip), %xmm0
	jbe	.L51
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC19(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L51:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC20(%rip), %xmm0
	jbe	.L52
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC21(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L52:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC22(%rip), %xmm0
	jbe	.L53
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC23(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L53:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC24(%rip), %rdx
	movq	%rdx, (%rax)
.L5:
	addl	$1, -12(%rbp)
.L2:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L28
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align 8
.LC0:
	.long	-1841681977
	.long	1074790347
	.align 8
.LC2:
	.long	123695058
	.long	1074633166
	.align 8
.LC4:
	.long	-735298401
	.long	1074423450
	.align 8
.LC6:
	.long	1841681977
	.long	1074266164
	.align 8
.LC8:
	.long	123695058
	.long	1074108878
	.align 8
.LC10:
	.long	-735298401
	.long	1073899162
	.align 8
.LC12:
	.long	1841681977
	.long	1073741876
	.align 8
.LC14:
	.long	247390116
	.long	1073427356
	.align 8
.LC16:
	.long	-1470596802
	.long	1073007925
	.align 8
.LC18:
	.long	-611603343
	.long	1072693352
	.align 8
.LC20:
	.long	494780232
	.long	1072064312
	.align 8
.LC22:
	.long	-350469331
	.long	1058682594
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
