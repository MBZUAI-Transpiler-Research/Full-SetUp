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
	movq	%rdi, -40(%rbp)	# lst, lst
	movl	%esi, -44(%rbp)	# size, size
# eval/problem95//code.c:4:     int largest = 0, sum = 0, num, temp;
	movl	$0, -24(%rbp)	#, largest
# eval/problem95//code.c:4:     int largest = 0, sum = 0, num, temp;
	movl	$0, -20(%rbp)	#, sum
# eval/problem95//code.c:6:     for (int i = 0; i < size; ++i) {
	movl	$0, -16(%rbp)	#, i
# eval/problem95//code.c:6:     for (int i = 0; i < size; ++i) {
	jmp	.L2	#
.L8:
# eval/problem95//code.c:7:         num = lst[i];
	movl	-16(%rbp), %eax	# i, tmp90
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-40(%rbp), %rax	# lst, tmp91
	addq	%rdx, %rax	# _2, _3
# eval/problem95//code.c:7:         num = lst[i];
	movl	(%rax), %eax	# *_3, tmp92
	movl	%eax, -4(%rbp)	# tmp92, num
# eval/problem95//code.c:8:         if (num > 1) {
	cmpl	$1, -4(%rbp)	#, num
	jle	.L3	#,
# eval/problem95//code.c:9:             int prime = 1;
	movl	$1, -12(%rbp)	#, prime
# eval/problem95//code.c:10:             for (int j = 2; j * j <= num; ++j) {
	movl	$2, -8(%rbp)	#, j
# eval/problem95//code.c:10:             for (int j = 2; j * j <= num; ++j) {
	jmp	.L4	#
.L7:
# eval/problem95//code.c:11:                 if (num % j == 0) {
	movl	-4(%rbp), %eax	# num, tmp93
	cltd
	idivl	-8(%rbp)	# j
	movl	%edx, %eax	# tmp94, _4
# eval/problem95//code.c:11:                 if (num % j == 0) {
	testl	%eax, %eax	# _4
	jne	.L5	#,
# eval/problem95//code.c:12:                     prime = 0;
	movl	$0, -12(%rbp)	#, prime
# eval/problem95//code.c:13:                     break;
	jmp	.L6	#
.L5:
# eval/problem95//code.c:10:             for (int j = 2; j * j <= num; ++j) {
	addl	$1, -8(%rbp)	#, j
.L4:
# eval/problem95//code.c:10:             for (int j = 2; j * j <= num; ++j) {
	movl	-8(%rbp), %eax	# j, tmp96
	imull	%eax, %eax	# tmp96, _5
# eval/problem95//code.c:10:             for (int j = 2; j * j <= num; ++j) {
	cmpl	%eax, -4(%rbp)	# _5, num
	jge	.L7	#,
.L6:
# eval/problem95//code.c:16:             if (prime) {
	cmpl	$0, -12(%rbp)	#, prime
	je	.L3	#,
# eval/problem95//code.c:17:                 largest = num > largest ? num : largest;
	movl	-24(%rbp), %edx	# largest, tmp98
	movl	-4(%rbp), %eax	# num, tmp116
	cmpl	%eax, %edx	# tmp116, tmp98
	cmovge	%edx, %eax	# tmp98,, tmp97
	movl	%eax, -24(%rbp)	# tmp97, largest
.L3:
# eval/problem95//code.c:6:     for (int i = 0; i < size; ++i) {
	addl	$1, -16(%rbp)	#, i
.L2:
# eval/problem95//code.c:6:     for (int i = 0; i < size; ++i) {
	movl	-16(%rbp), %eax	# i, tmp99
	cmpl	-44(%rbp), %eax	# size, tmp99
	jl	.L8	#,
# eval/problem95//code.c:22:     while (largest > 0) {
	jmp	.L9	#
.L10:
# eval/problem95//code.c:23:         sum += largest % 10;
	movl	-24(%rbp), %ecx	# largest, tmp100
	movslq	%ecx, %rax	# tmp100, tmp101
	imulq	$1717986919, %rax, %rax	#, tmp101, tmp102
	shrq	$32, %rax	#, tmp103
	movl	%eax, %edx	# tmp103, tmp104
	sarl	$2, %edx	#, tmp104
	movl	%ecx, %eax	# tmp100, tmp105
	sarl	$31, %eax	#, tmp105
	subl	%eax, %edx	# tmp105, _6
	movl	%edx, %eax	# _6, tmp106
	sall	$2, %eax	#, tmp106
	addl	%edx, %eax	# _6, tmp106
	addl	%eax, %eax	# tmp107
	subl	%eax, %ecx	# tmp106, tmp100
	movl	%ecx, %edx	# tmp100, _6
# eval/problem95//code.c:23:         sum += largest % 10;
	addl	%edx, -20(%rbp)	# _6, sum
# eval/problem95//code.c:24:         largest /= 10;
	movl	-24(%rbp), %eax	# largest, tmp109
	movslq	%eax, %rdx	# tmp109, tmp110
	imulq	$1717986919, %rdx, %rdx	#, tmp110, tmp111
	shrq	$32, %rdx	#, tmp112
	movl	%edx, %ecx	# tmp112, tmp113
	sarl	$2, %ecx	#, tmp113
	cltd
	movl	%ecx, %eax	# tmp113, tmp113
	subl	%edx, %eax	# tmp114, tmp113
	movl	%eax, -24(%rbp)	# tmp108, largest
.L9:
# eval/problem95//code.c:22:     while (largest > 0) {
	cmpl	$0, -24(%rbp)	#, largest
	jg	.L10	#,
# eval/problem95//code.c:27:     return sum;
	movl	-20(%rbp), %eax	# sum, _18
# eval/problem95//code.c:28: }
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
