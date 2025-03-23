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
	movq	%rdi, -24(%rbp)	# arr, arr
	movl	%esi, -28(%rbp)	# length, length
	movq	%rdx, -40(%rbp)	# output, output
# eval/problem69//code.c:5:     int smallestEven = INT_MAX;
	movl	$2147483647, -12(%rbp)	#, smallestEven
# eval/problem69//code.c:6:     int index = -1;
	movl	$-1, -8(%rbp)	#, index
# eval/problem69//code.c:8:     for (int i = 0; i < length; ++i) {
	movl	$0, -4(%rbp)	#, i
# eval/problem69//code.c:8:     for (int i = 0; i < length; ++i) {
	jmp	.L2	#
.L5:
# eval/problem69//code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	movl	-4(%rbp), %eax	# i, tmp98
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# arr, tmp99
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# eval/problem69//code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	andl	$1, %eax	#, _6
# eval/problem69//code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	testl	%eax, %eax	# _6
	jne	.L3	#,
# eval/problem69//code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	movl	-4(%rbp), %eax	# i, tmp100
	cltq
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-24(%rbp), %rax	# arr, tmp101
	addq	%rdx, %rax	# _8, _9
	movl	(%rax), %eax	# *_9, _10
# eval/problem69//code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	cmpl	%eax, -12(%rbp)	# _10, smallestEven
	jg	.L4	#,
# eval/problem69//code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	cmpl	$-1, -8(%rbp)	#, index
	jne	.L3	#,
.L4:
# eval/problem69//code.c:10:             smallestEven = arr[i];
	movl	-4(%rbp), %eax	# i, tmp102
	cltq
	leaq	0(,%rax,4), %rdx	#, _12
	movq	-24(%rbp), %rax	# arr, tmp103
	addq	%rdx, %rax	# _12, _13
# eval/problem69//code.c:10:             smallestEven = arr[i];
	movl	(%rax), %eax	# *_13, tmp104
	movl	%eax, -12(%rbp)	# tmp104, smallestEven
# eval/problem69//code.c:11:             index = i;
	movl	-4(%rbp), %eax	# i, tmp105
	movl	%eax, -8(%rbp)	# tmp105, index
.L3:
# eval/problem69//code.c:8:     for (int i = 0; i < length; ++i) {
	addl	$1, -4(%rbp)	#, i
.L2:
# eval/problem69//code.c:8:     for (int i = 0; i < length; ++i) {
	movl	-4(%rbp), %eax	# i, tmp106
	cmpl	-28(%rbp), %eax	# length, tmp106
	jl	.L5	#,
# eval/problem69//code.c:15:     if (index == -1) {
	cmpl	$-1, -8(%rbp)	#, index
	jne	.L6	#,
# eval/problem69//code.c:16:         return NULL;
	movl	$0, %eax	#, _20
	jmp	.L7	#
.L6:
# eval/problem69//code.c:19:     output[0] = smallestEven;
	movq	-40(%rbp), %rax	# output, tmp107
	movl	-12(%rbp), %edx	# smallestEven, tmp108
	movl	%edx, (%rax)	# tmp108, *output_27(D)
# eval/problem69//code.c:20:     output[1] = index;
	movq	-40(%rbp), %rax	# output, tmp109
	leaq	4(%rax), %rdx	#, _14
# eval/problem69//code.c:20:     output[1] = index;
	movl	-8(%rbp), %eax	# index, tmp110
	movl	%eax, (%rdx)	# tmp110, *_14
# eval/problem69//code.c:21:     return output;
	movq	-40(%rbp), %rax	# output, _20
.L7:
# eval/problem69//code.c:22: }
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
