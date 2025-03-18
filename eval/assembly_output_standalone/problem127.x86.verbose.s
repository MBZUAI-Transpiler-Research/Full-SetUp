	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# lst, lst
	movl	%esi, -28(%rbp)	# lst_size, lst_size
# eval/problem127//code.c:5:     if (lst_size == 0) return true;
	cmpl	$0, -28(%rbp)	#, lst_size
	jne	.L2	#,
# eval/problem127//code.c:5:     if (lst_size == 0) return true;
	movl	$1, %eax	#, _29
# eval/problem127//code.c:5:     if (lst_size == 0) return true;
	jmp	.L3	#
.L2:
# eval/problem127//code.c:7:     for (int i = 1; i < lst_size; i++) {
	movl	$1, -4(%rbp)	#, i
# eval/problem127//code.c:7:     for (int i = 1; i < lst_size; i++) {
	jmp	.L4	#
.L7:
# eval/problem127//code.c:8:         if (lst[i] < lst[i - 1]) return false;
	movl	-4(%rbp), %eax	# i, tmp111
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# lst, tmp112
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# eval/problem127//code.c:8:         if (lst[i] < lst[i - 1]) return false;
	movl	-4(%rbp), %eax	# i, tmp113
	cltq
	salq	$2, %rax	#, _6
	leaq	-4(%rax), %rcx	#, _7
	movq	-24(%rbp), %rax	# lst, tmp114
	addq	%rcx, %rax	# _7, _8
	movl	(%rax), %eax	# *_8, _9
# eval/problem127//code.c:8:         if (lst[i] < lst[i - 1]) return false;
	cmpl	%eax, %edx	# _9, _4
	jge	.L5	#,
# eval/problem127//code.c:8:         if (lst[i] < lst[i - 1]) return false;
	movl	$0, %eax	#, _29
# eval/problem127//code.c:8:         if (lst[i] < lst[i - 1]) return false;
	jmp	.L3	#
.L5:
# eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	cmpl	$1, -4(%rbp)	#, i
	jle	.L6	#,
# eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	movl	-4(%rbp), %eax	# i, tmp115
	cltq
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-24(%rbp), %rax	# lst, tmp116
	addq	%rdx, %rax	# _11, _12
	movl	(%rax), %edx	# *_12, _13
# eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	movl	-4(%rbp), %eax	# i, tmp117
	cltq
	salq	$2, %rax	#, _15
	leaq	-4(%rax), %rcx	#, _16
	movq	-24(%rbp), %rax	# lst, tmp118
	addq	%rcx, %rax	# _16, _17
	movl	(%rax), %eax	# *_17, _18
# eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	cmpl	%eax, %edx	# _18, _13
	jne	.L6	#,
# eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	movl	-4(%rbp), %eax	# i, tmp119
	cltq
	leaq	0(,%rax,4), %rdx	#, _20
	movq	-24(%rbp), %rax	# lst, tmp120
	addq	%rdx, %rax	# _20, _21
	movl	(%rax), %edx	# *_21, _22
# eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	movl	-4(%rbp), %eax	# i, tmp121
	cltq
	salq	$2, %rax	#, _24
	leaq	-8(%rax), %rcx	#, _25
	movq	-24(%rbp), %rax	# lst, tmp122
	addq	%rcx, %rax	# _25, _26
	movl	(%rax), %eax	# *_26, _27
# eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	cmpl	%eax, %edx	# _27, _22
	jne	.L6	#,
# eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	movl	$0, %eax	#, _29
# eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	jmp	.L3	#
.L6:
# eval/problem127//code.c:7:     for (int i = 1; i < lst_size; i++) {
	addl	$1, -4(%rbp)	#, i
.L4:
# eval/problem127//code.c:7:     for (int i = 1; i < lst_size; i++) {
	movl	-4(%rbp), %eax	# i, tmp123
	cmpl	-28(%rbp), %eax	# lst_size, tmp123
	jl	.L7	#,
# eval/problem127//code.c:11:     return true;
	movl	$1, %eax	#, _29
.L3:
# eval/problem127//code.c:12: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
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
