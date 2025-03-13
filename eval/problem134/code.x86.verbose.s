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
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# lst, lst
	movl	%esi, -44(%rbp)	# size, size
# code.c:5:     int sum = 0;
	movl	$0, -24(%rbp)	#, sum
# code.c:6:     for (int i = 0; i < size; i++) {
	movl	$0, -20(%rbp)	#, i
# code.c:6:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L3:
# code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	movl	-20(%rbp), %eax	# i, tmp99
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-40(%rbp), %rax	# lst, tmp100
	addq	%rdx, %rax	# _2, _3
	movss	(%rax), %xmm0	# *_3, _4
# code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	pxor	%xmm1, %xmm1	# _5
	cvtss2sd	%xmm0, %xmm1	# _4, _5
	movq	%xmm1, %rax	# _5, _5
	movq	%rax, %xmm0	# _5,
	call	ceil@PLT	#
# code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	cvttsd2sil	%xmm0, %ebx	# _6, _7
# code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	movl	-20(%rbp), %eax	# i, tmp101
	cltq
	leaq	0(,%rax,4), %rdx	#, _9
	movq	-40(%rbp), %rax	# lst, tmp102
	addq	%rdx, %rax	# _9, _10
	movss	(%rax), %xmm0	# *_10, _11
# code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	pxor	%xmm2, %xmm2	# _12
	cvtss2sd	%xmm0, %xmm2	# _11, _12
	movq	%xmm2, %rax	# _12, _12
	movq	%rax, %xmm0	# _12,
	call	ceil@PLT	#
# code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	cvttsd2sil	%xmm0, %eax	# _13, _14
# code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	imull	%ebx, %eax	# _7, _15
# code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	addl	%eax, -24(%rbp)	# _15, sum
# code.c:6:     for (int i = 0; i < size; i++) {
	addl	$1, -20(%rbp)	#, i
.L2:
# code.c:6:     for (int i = 0; i < size; i++) {
	movl	-20(%rbp), %eax	# i, tmp103
	cmpl	-44(%rbp), %eax	# size, tmp103
	jl	.L3	#,
# code.c:9:     return sum;
	movl	-24(%rbp), %eax	# sum, _21
# code.c:10: }
	movq	-8(%rbp), %rbx	#,
	leave	
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
