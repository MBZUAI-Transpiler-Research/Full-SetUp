	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# numbers, numbers
	movl	%esi, -28(%rbp)	# size, size
	movss	%xmm0, -32(%rbp)	# threshold, threshold
# eval/problem1//code.c:7:     for (i = 0; i < size; i++) {
	movl	$0, -8(%rbp)	#, i
# eval/problem1//code.c:7:     for (i = 0; i < size; i++) {
	jmp	.L2	#
.L8:
# eval/problem1//code.c:8:         for (j = i + 1; j < size; j++) {
	movl	-8(%rbp), %eax	# i, tmp97
	addl	$1, %eax	#, tmp96
	movl	%eax, -4(%rbp)	# tmp96, j
# eval/problem1//code.c:8:         for (j = i + 1; j < size; j++) {
	jmp	.L3	#
.L7:
# eval/problem1//code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	movl	-8(%rbp), %eax	# i, tmp98
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# numbers, tmp99
	addq	%rdx, %rax	# _2, _3
	movss	(%rax), %xmm0	# *_3, _4
# eval/problem1//code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	movl	-4(%rbp), %eax	# j, tmp100
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-24(%rbp), %rax	# numbers, tmp101
	addq	%rdx, %rax	# _6, _7
	movss	(%rax), %xmm1	# *_7, _8
# eval/problem1//code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	subss	%xmm1, %xmm0	# _8, _9
# eval/problem1//code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	movss	.LC0(%rip), %xmm1	#, tmp102
	andps	%xmm0, %xmm1	# _9, _10
# eval/problem1//code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	movss	-32(%rbp), %xmm0	# threshold, tmp103
	comiss	%xmm1, %xmm0	# _10, tmp103
	jbe	.L10	#,
# eval/problem1//code.c:10:                 return 1;
	movl	$1, %eax	#, _13
	jmp	.L6	#
.L10:
# eval/problem1//code.c:8:         for (j = i + 1; j < size; j++) {
	addl	$1, -4(%rbp)	#, j
.L3:
# eval/problem1//code.c:8:         for (j = i + 1; j < size; j++) {
	movl	-4(%rbp), %eax	# j, tmp104
	cmpl	-28(%rbp), %eax	# size, tmp104
	jl	.L7	#,
# eval/problem1//code.c:7:     for (i = 0; i < size; i++) {
	addl	$1, -8(%rbp)	#, i
.L2:
# eval/problem1//code.c:7:     for (i = 0; i < size; i++) {
	movl	-8(%rbp), %eax	# i, tmp105
	cmpl	-28(%rbp), %eax	# size, tmp105
	jl	.L8	#,
# eval/problem1//code.c:14:     return 0;
	movl	$0, %eax	#, _13
.L6:
# eval/problem1//code.c:15: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align 16
.LC0:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
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
