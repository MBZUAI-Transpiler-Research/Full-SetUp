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
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# n, n
# eval/problem107//code.c:5:     int* out = (int*)malloc(n * sizeof(int));
	movl	-36(%rbp), %eax	# n, tmp96
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp97, out
# eval/problem107//code.c:6:     int sum = 0, prod = 1;
	movl	$0, -20(%rbp)	#, sum
# eval/problem107//code.c:6:     int sum = 0, prod = 1;
	movl	$1, -16(%rbp)	#, prod
# eval/problem107//code.c:7:     for (int i = 1; i <= n; i++) {
	movl	$1, -12(%rbp)	#, i
# eval/problem107//code.c:7:     for (int i = 1; i <= n; i++) {
	jmp	.L2	#
.L5:
# eval/problem107//code.c:8:         sum += i;
	movl	-12(%rbp), %eax	# i, tmp98
	addl	%eax, -20(%rbp)	# tmp98, sum
# eval/problem107//code.c:9:         prod *= i;
	movl	-16(%rbp), %eax	# prod, tmp100
	imull	-12(%rbp), %eax	# i, tmp99
	movl	%eax, -16(%rbp)	# tmp99, prod
# eval/problem107//code.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	movl	-12(%rbp), %eax	# i, i.0_3
	andl	$1, %eax	#, _4
# eval/problem107//code.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	testl	%eax, %eax	# _4
	jne	.L3	#,
# eval/problem107//code.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	movl	-12(%rbp), %eax	# i, tmp101
	cltq
	salq	$2, %rax	#, _6
	leaq	-4(%rax), %rdx	#, _7
	movq	-8(%rbp), %rax	# out, tmp102
	addq	%rax, %rdx	# tmp102, _8
# eval/problem107//code.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	movl	-16(%rbp), %eax	# prod, tmp103
	movl	%eax, (%rdx)	# tmp103, *_8
	jmp	.L4	#
.L3:
# eval/problem107//code.c:11:         else out[i - 1] = sum;
	movl	-12(%rbp), %eax	# i, tmp104
	cltq
	salq	$2, %rax	#, _10
	leaq	-4(%rax), %rdx	#, _11
	movq	-8(%rbp), %rax	# out, tmp105
	addq	%rax, %rdx	# tmp105, _12
# eval/problem107//code.c:11:         else out[i - 1] = sum;
	movl	-20(%rbp), %eax	# sum, tmp106
	movl	%eax, (%rdx)	# tmp106, *_12
.L4:
# eval/problem107//code.c:7:     for (int i = 1; i <= n; i++) {
	addl	$1, -12(%rbp)	#, i
.L2:
# eval/problem107//code.c:7:     for (int i = 1; i <= n; i++) {
	movl	-12(%rbp), %eax	# i, tmp107
	cmpl	-36(%rbp), %eax	# n, tmp107
	jle	.L5	#,
# eval/problem107//code.c:13:     return out;
	movq	-8(%rbp), %rax	# out, _25
# eval/problem107//code.c:14: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
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
