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
	movq	%rdi, -24(%rbp)	# q, q
	movl	%esi, -28(%rbp)	# size, size
	movl	%edx, -32(%rbp)	# w, w
# eval/problem73//code.c:5:     int sum = 0;
	movl	$0, -8(%rbp)	#, sum
# eval/problem73//code.c:6:     for (int i = 0; i < size / 2; i++) {
	movl	$0, -4(%rbp)	#, i
# eval/problem73//code.c:6:     for (int i = 0; i < size / 2; i++) {
	jmp	.L2	#
.L5:
# eval/problem73//code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	movl	-4(%rbp), %eax	# i, tmp112
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# q, tmp113
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# eval/problem73//code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	movl	-28(%rbp), %eax	# size, tmp114
	subl	$1, %eax	#, _5
# eval/problem73//code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	subl	-4(%rbp), %eax	# i, _6
	cltq
# eval/problem73//code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	leaq	0(,%rax,4), %rcx	#, _8
	movq	-24(%rbp), %rax	# q, tmp115
	addq	%rcx, %rax	# _8, _9
	movl	(%rax), %eax	# *_9, _10
# eval/problem73//code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	cmpl	%eax, %edx	# _10, _4
	je	.L3	#,
# eval/problem73//code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	movl	$0, %eax	#, _32
# eval/problem73//code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	jmp	.L4	#
.L3:
# eval/problem73//code.c:8:         sum += q[i] + q[size - 1 - i];
	movl	-4(%rbp), %eax	# i, tmp116
	cltq
	leaq	0(,%rax,4), %rdx	#, _12
	movq	-24(%rbp), %rax	# q, tmp117
	addq	%rdx, %rax	# _12, _13
	movl	(%rax), %edx	# *_13, _14
# eval/problem73//code.c:8:         sum += q[i] + q[size - 1 - i];
	movl	-28(%rbp), %eax	# size, tmp118
	subl	$1, %eax	#, _15
# eval/problem73//code.c:8:         sum += q[i] + q[size - 1 - i];
	subl	-4(%rbp), %eax	# i, _16
	cltq
# eval/problem73//code.c:8:         sum += q[i] + q[size - 1 - i];
	leaq	0(,%rax,4), %rcx	#, _18
	movq	-24(%rbp), %rax	# q, tmp119
	addq	%rcx, %rax	# _18, _19
	movl	(%rax), %eax	# *_19, _20
# eval/problem73//code.c:8:         sum += q[i] + q[size - 1 - i];
	addl	%edx, %eax	# _14, _21
# eval/problem73//code.c:8:         sum += q[i] + q[size - 1 - i];
	addl	%eax, -8(%rbp)	# _21, sum
# eval/problem73//code.c:6:     for (int i = 0; i < size / 2; i++) {
	addl	$1, -4(%rbp)	#, i
.L2:
# eval/problem73//code.c:6:     for (int i = 0; i < size / 2; i++) {
	movl	-28(%rbp), %eax	# size, tmp120
	movl	%eax, %edx	# tmp120, tmp121
	shrl	$31, %edx	#, tmp121
	addl	%edx, %eax	# tmp121, tmp122
	sarl	%eax	# tmp123
# eval/problem73//code.c:6:     for (int i = 0; i < size / 2; i++) {
	cmpl	%eax, -4(%rbp)	# _22, i
	jl	.L5	#,
# eval/problem73//code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	movl	-28(%rbp), %edx	# size, tmp124
	movl	%edx, %eax	# tmp124, tmp125
	sarl	$31, %eax	#, tmp125
	shrl	$31, %eax	#, tmp126
	addl	%eax, %edx	# tmp126, tmp127
	andl	$1, %edx	#, tmp128
	subl	%eax, %edx	# tmp126, tmp129
	movl	%edx, %eax	# tmp129, _23
# eval/problem73//code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	cmpl	$1, %eax	#, _23
	jne	.L6	#,
# eval/problem73//code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	movl	-28(%rbp), %eax	# size, tmp130
	movl	%eax, %edx	# tmp130, tmp131
	shrl	$31, %edx	#, tmp131
	addl	%edx, %eax	# tmp131, tmp132
	sarl	%eax	# tmp133
	cltq
# eval/problem73//code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	leaq	0(,%rax,4), %rdx	#, _26
	movq	-24(%rbp), %rax	# q, tmp134
	addq	%rdx, %rax	# _26, _27
	movl	(%rax), %eax	# *_27, _28
# eval/problem73//code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	addl	%eax, -8(%rbp)	# _28, sum
.L6:
# eval/problem73//code.c:11:     return sum <= w;
	movl	-8(%rbp), %eax	# sum, tmp135
	cmpl	-32(%rbp), %eax	# w, tmp135
	setle	%al	#, _32
.L4:
# eval/problem73//code.c:12: }
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
