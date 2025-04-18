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
	movl	%esi, -28(%rbp)	# size, size
# eval/problem143//code.c:4:     int sum = 0;
	movl	$0, -8(%rbp)	#, sum
# eval/problem143//code.c:5:     for (int i = 0; i < size; i++) {
	movl	$0, -4(%rbp)	#, i
# eval/problem143//code.c:5:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L6:
# eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	movl	-4(%rbp), %ecx	# i, tmp114
	movslq	%ecx, %rax	# tmp114, tmp115
	imulq	$1431655766, %rax, %rax	#, tmp115, tmp116
	shrq	$32, %rax	#, tmp116
	movq	%rax, %rdx	# tmp116, tmp117
	movl	%ecx, %eax	# tmp114, tmp118
	sarl	$31, %eax	#, tmp118
	subl	%eax, %edx	# tmp118, _1
	movl	%edx, %eax	# _1, tmp119
	addl	%eax, %eax	# tmp119
	addl	%edx, %eax	# _1, tmp119
	subl	%eax, %ecx	# tmp119, tmp114
	movl	%ecx, %edx	# tmp114, _1
# eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	testl	%edx, %edx	# _1
	jne	.L3	#,
# eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	movl	-4(%rbp), %eax	# i, tmp120
	cltq
	leaq	0(,%rax,4), %rdx	#, _3
	movq	-24(%rbp), %rax	# lst, tmp121
	addq	%rdx, %rax	# _3, _4
	movl	(%rax), %edx	# *_4, _5
# eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	movl	-4(%rbp), %eax	# i, tmp122
	cltq
	leaq	0(,%rax,4), %rcx	#, _7
	movq	-24(%rbp), %rax	# lst, tmp123
	addq	%rcx, %rax	# _7, _8
	movl	(%rax), %eax	# *_8, _9
# eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	imull	%edx, %eax	# _5, _10
# eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	addl	%eax, -8(%rbp)	# _10, sum
	jmp	.L4	#
.L3:
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	movl	-4(%rbp), %eax	# i, i.0_11
	andl	$3, %eax	#, _12
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	testl	%eax, %eax	# _12
	jne	.L5	#,
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	movl	-4(%rbp), %eax	# i, tmp124
	cltq
	leaq	0(,%rax,4), %rdx	#, _14
	movq	-24(%rbp), %rax	# lst, tmp125
	addq	%rdx, %rax	# _14, _15
	movl	(%rax), %edx	# *_15, _16
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	movl	-4(%rbp), %eax	# i, tmp126
	cltq
	leaq	0(,%rax,4), %rcx	#, _18
	movq	-24(%rbp), %rax	# lst, tmp127
	addq	%rcx, %rax	# _18, _19
	movl	(%rax), %eax	# *_19, _20
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	imull	%eax, %edx	# _20, _21
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	movl	-4(%rbp), %eax	# i, tmp128
	cltq
	leaq	0(,%rax,4), %rcx	#, _23
	movq	-24(%rbp), %rax	# lst, tmp129
	addq	%rcx, %rax	# _23, _24
	movl	(%rax), %eax	# *_24, _25
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	imull	%edx, %eax	# _21, _26
# eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	addl	%eax, -8(%rbp)	# _26, sum
	jmp	.L4	#
.L5:
# eval/problem143//code.c:8:         else sum += lst[i];
	movl	-4(%rbp), %eax	# i, tmp130
	cltq
	leaq	0(,%rax,4), %rdx	#, _28
	movq	-24(%rbp), %rax	# lst, tmp131
	addq	%rdx, %rax	# _28, _29
	movl	(%rax), %eax	# *_29, _30
# eval/problem143//code.c:8:         else sum += lst[i];
	addl	%eax, -8(%rbp)	# _30, sum
.L4:
# eval/problem143//code.c:5:     for (int i = 0; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L2:
# eval/problem143//code.c:5:     for (int i = 0; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp132
	cmpl	-28(%rbp), %eax	# size, tmp132
	jl	.L6	#,
# eval/problem143//code.c:10:     return sum;
	movl	-8(%rbp), %eax	# sum, _37
# eval/problem143//code.c:11: }
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
