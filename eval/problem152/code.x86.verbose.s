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
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# lst, lst
	movl	%esi, -44(%rbp)	# lst_size, lst_size
# code.c:5:     long long sum = 0;
	movq	$0, -24(%rbp)	#, sum
# code.c:6:     for (int i = 0; i < lst_size; i++) {
	movl	$0, -28(%rbp)	#, i
# code.c:6:     for (int i = 0; i < lst_size; i++) {
	jmp	.L2	#
.L6:
# code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	movl	-28(%rbp), %eax	# i, tmp125
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-40(%rbp), %rax	# lst, tmp126
	addq	%rdx, %rax	# _2, _3
	movss	(%rax), %xmm0	# *_3, _4
	pxor	%xmm2, %xmm2	# _5
	cvtss2sd	%xmm0, %xmm2	# _4, _5
	movsd	%xmm2, -56(%rbp)	# _5, %sfp
# code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	movl	-28(%rbp), %eax	# i, tmp127
	cltq
	leaq	0(,%rax,4), %rdx	#, _7
	movq	-40(%rbp), %rax	# lst, tmp128
	addq	%rdx, %rax	# _7, _8
	movss	(%rax), %xmm0	# *_8, _9
# code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	pxor	%xmm3, %xmm3	# _10
	cvtss2sd	%xmm0, %xmm3	# _9, _10
	movq	%xmm3, %rax	# _10, _10
	movq	%rax, %xmm0	# _10,
	call	round@PLT	#
	movapd	%xmm0, %xmm1	#, _11
# code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	movsd	-56(%rbp), %xmm0	# %sfp, _5
	subsd	%xmm1, %xmm0	# _11, _5
# code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	movq	.LC0(%rip), %xmm1	#, tmp129
	andpd	%xmm0, %xmm1	# _12, _13
# code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	movsd	.LC1(%rip), %xmm0	#, tmp130
	comisd	%xmm1, %xmm0	# _13, tmp130
	jbe	.L3	#,
# code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	movl	-28(%rbp), %eax	# i, tmp131
	cltq
	leaq	0(,%rax,4), %rdx	#, _15
	movq	-40(%rbp), %rax	# lst, tmp132
	addq	%rdx, %rax	# _15, _16
	movss	(%rax), %xmm0	# *_16, _17
# code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	pxor	%xmm1, %xmm1	# tmp133
	comiss	%xmm1, %xmm0	# tmp133, _17
	jbe	.L3	#,
# code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	movl	-28(%rbp), %eax	# i, tmp134
	cltq
	leaq	0(,%rax,4), %rdx	#, _19
	movq	-40(%rbp), %rax	# lst, tmp135
	addq	%rdx, %rax	# _19, _20
	movss	(%rax), %xmm0	# *_20, _21
# code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	pxor	%xmm4, %xmm4	# _22
	cvtss2sd	%xmm0, %xmm4	# _21, _22
	movq	%xmm4, %rax	# _22, _22
	movq	%rax, %xmm0	# _22,
	call	round@PLT	#
# code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	cvttsd2sil	%xmm0, %edx	# _23, _24
# code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	movl	%edx, %eax	# _24, tmp136
	sarl	$31, %eax	#, tmp136
	shrl	$31, %eax	#, tmp137
	addl	%eax, %edx	# tmp137, tmp138
	andl	$1, %edx	#, tmp139
	subl	%eax, %edx	# tmp137, tmp140
	movl	%edx, %eax	# tmp140, _25
# code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	cmpl	$1, %eax	#, _25
	jne	.L3	#,
# code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	movl	-28(%rbp), %eax	# i, tmp141
	cltq
	leaq	0(,%rax,4), %rdx	#, _27
	movq	-40(%rbp), %rax	# lst, tmp142
	addq	%rdx, %rax	# _27, _28
	movss	(%rax), %xmm0	# *_28, _29
# code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	pxor	%xmm5, %xmm5	# _30
	cvtss2sd	%xmm0, %xmm5	# _29, _30
	movq	%xmm5, %rax	# _30, _30
	movq	%rax, %xmm0	# _30,
	call	round@PLT	#
# code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	cvttsd2sil	%xmm0, %ebx	# _31, _32
# code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	movl	-28(%rbp), %eax	# i, tmp143
	cltq
	leaq	0(,%rax,4), %rdx	#, _34
	movq	-40(%rbp), %rax	# lst, tmp144
	addq	%rdx, %rax	# _34, _35
	movss	(%rax), %xmm0	# *_35, _36
# code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	pxor	%xmm6, %xmm6	# _37
	cvtss2sd	%xmm0, %xmm6	# _36, _37
	movq	%xmm6, %rax	# _37, _37
	movq	%rax, %xmm0	# _37,
	call	round@PLT	#
# code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	cvttsd2sil	%xmm0, %eax	# _38, _39
# code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	imull	%ebx, %eax	# _32, _40
	cltq
# code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	addq	%rax, -24(%rbp)	# _41, sum
.L3:
# code.c:6:     for (int i = 0; i < lst_size; i++) {
	addl	$1, -28(%rbp)	#, i
.L2:
# code.c:6:     for (int i = 0; i < lst_size; i++) {
	movl	-28(%rbp), %eax	# i, tmp145
	cmpl	-44(%rbp), %eax	# lst_size, tmp145
	jl	.L6	#,
# code.c:13:     return sum;
	movq	-24(%rbp), %rax	# sum, _48
# code.c:14: }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align 16
.LC0:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC1:
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
