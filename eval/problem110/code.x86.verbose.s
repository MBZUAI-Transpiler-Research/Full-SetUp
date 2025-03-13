	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
	movq	%rdi, -24(%rbp)	# arr, arr
	movl	%esi, -28(%rbp)	# size, size
# code.c:5:     int num = 0;
	movl	$0, -8(%rbp)	#, num
# code.c:6:     if (size == 0) return true;
	cmpl	$0, -28(%rbp)	#, size
	jne	.L2	#,
# code.c:6:     if (size == 0) return true;
	movl	$1, %eax	#, _20
# code.c:6:     if (size == 0) return true;
	jmp	.L3	#
.L2:
# code.c:7:     for (int i = 1; i < size; i++)
	movl	$1, -4(%rbp)	#, i
# code.c:7:     for (int i = 1; i < size; i++)
	jmp	.L4	#
.L6:
# code.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	movl	-4(%rbp), %eax	# i, tmp99
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# arr, tmp100
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# code.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	movl	-4(%rbp), %eax	# i, tmp101
	cltq
	salq	$2, %rax	#, _6
	leaq	-4(%rax), %rcx	#, _7
	movq	-24(%rbp), %rax	# arr, tmp102
	addq	%rcx, %rax	# _7, _8
	movl	(%rax), %eax	# *_8, _9
# code.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	cmpl	%eax, %edx	# _9, _4
	jge	.L5	#,
# code.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	addl	$1, -8(%rbp)	#, num
.L5:
# code.c:7:     for (int i = 1; i < size; i++)
	addl	$1, -4(%rbp)	#, i
.L4:
# code.c:7:     for (int i = 1; i < size; i++)
	movl	-4(%rbp), %eax	# i, tmp103
	cmpl	-28(%rbp), %eax	# size, tmp103
	jl	.L6	#,
# code.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	movl	-28(%rbp), %eax	# size, tmp104
	cltq
	salq	$2, %rax	#, _11
	leaq	-4(%rax), %rdx	#, _12
	movq	-24(%rbp), %rax	# arr, tmp105
	addq	%rdx, %rax	# _12, _13
	movl	(%rax), %edx	# *_13, _14
# code.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	movq	-24(%rbp), %rax	# arr, tmp106
	movl	(%rax), %eax	# *arr_24(D), _15
# code.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	cmpl	%eax, %edx	# _15, _14
	jle	.L7	#,
# code.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	addl	$1, -8(%rbp)	#, num
.L7:
# code.c:10:     if (num < 2) return true;
	cmpl	$1, -8(%rbp)	#, num
	jg	.L8	#,
# code.c:10:     if (num < 2) return true;
	movl	$1, %eax	#, _20
# code.c:10:     if (num < 2) return true;
	jmp	.L3	#
.L8:
# code.c:11:     return false;
	movl	$0, %eax	#, _20
.L3:
# code.c:12: }
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
