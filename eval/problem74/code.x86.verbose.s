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
# code.c:4:     int out = 0;
	movl	$0, -8(%rbp)	#, out
# code.c:5:     for (int i = 0; i < size / 2; i++) {
	movl	$0, -4(%rbp)	#, i
# code.c:5:     for (int i = 0; i < size / 2; i++) {
	jmp	.L2	#
.L4:
# code.c:6:         if (arr[i] != arr[size - 1 - i]) {
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# arr, tmp96
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# code.c:6:         if (arr[i] != arr[size - 1 - i]) {
	movl	-28(%rbp), %eax	# size, tmp97
	subl	$1, %eax	#, _5
# code.c:6:         if (arr[i] != arr[size - 1 - i]) {
	subl	-4(%rbp), %eax	# i, _6
	cltq
# code.c:6:         if (arr[i] != arr[size - 1 - i]) {
	leaq	0(,%rax,4), %rcx	#, _8
	movq	-24(%rbp), %rax	# arr, tmp98
	addq	%rcx, %rax	# _8, _9
	movl	(%rax), %eax	# *_9, _10
# code.c:6:         if (arr[i] != arr[size - 1 - i]) {
	cmpl	%eax, %edx	# _10, _4
	je	.L3	#,
# code.c:7:             out++;
	addl	$1, -8(%rbp)	#, out
.L3:
# code.c:5:     for (int i = 0; i < size / 2; i++) {
	addl	$1, -4(%rbp)	#, i
.L2:
# code.c:5:     for (int i = 0; i < size / 2; i++) {
	movl	-28(%rbp), %eax	# size, tmp99
	movl	%eax, %edx	# tmp99, tmp100
	shrl	$31, %edx	#, tmp100
	addl	%edx, %eax	# tmp100, tmp101
	sarl	%eax	# tmp102
# code.c:5:     for (int i = 0; i < size / 2; i++) {
	cmpl	%eax, -4(%rbp)	# _11, i
	jl	.L4	#,
# code.c:10:     return out;
	movl	-8(%rbp), %eax	# out, _18
# code.c:11: }
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
