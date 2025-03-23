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
	movl	%edi, -36(%rbp)	# n, n
# eval/problem40//code.c:4:     int f1 = 1, f2 = 2, m;
	movl	$1, -24(%rbp)	#, f1
# eval/problem40//code.c:4:     int f1 = 1, f2 = 2, m;
	movl	$2, -20(%rbp)	#, f2
# eval/problem40//code.c:5:     int count = 0;
	movl	$0, -16(%rbp)	#, count
# eval/problem40//code.c:6:     while (count < n) {
	jmp	.L2	#
.L9:
# eval/problem40//code.c:7:         f1 = f1 + f2;
	movl	-20(%rbp), %eax	# f2, tmp86
	addl	%eax, -24(%rbp)	# tmp86, f1
# eval/problem40//code.c:8:         m = f1; f1 = f2; f2 = m;
	movl	-24(%rbp), %eax	# f1, tmp87
	movl	%eax, -4(%rbp)	# tmp87, m
# eval/problem40//code.c:8:         m = f1; f1 = f2; f2 = m;
	movl	-20(%rbp), %eax	# f2, tmp88
	movl	%eax, -24(%rbp)	# tmp88, f1
# eval/problem40//code.c:8:         m = f1; f1 = f2; f2 = m;
	movl	-4(%rbp), %eax	# m, tmp89
	movl	%eax, -20(%rbp)	# tmp89, f2
# eval/problem40//code.c:9:         int isprime = 1;
	movl	$1, -12(%rbp)	#, isprime
# eval/problem40//code.c:10:         for (int w = 2; w * w <= f1; w++) {
	movl	$2, -8(%rbp)	#, w
# eval/problem40//code.c:10:         for (int w = 2; w * w <= f1; w++) {
	jmp	.L3	#
.L6:
# eval/problem40//code.c:11:             if (f1 % w == 0) {
	movl	-24(%rbp), %eax	# f1, tmp90
	cltd
	idivl	-8(%rbp)	# w
	movl	%edx, %eax	# tmp91, _1
# eval/problem40//code.c:11:             if (f1 % w == 0) {
	testl	%eax, %eax	# _1
	jne	.L4	#,
# eval/problem40//code.c:12:                 isprime = 0; break;
	movl	$0, -12(%rbp)	#, isprime
# eval/problem40//code.c:12:                 isprime = 0; break;
	jmp	.L5	#
.L4:
# eval/problem40//code.c:10:         for (int w = 2; w * w <= f1; w++) {
	addl	$1, -8(%rbp)	#, w
.L3:
# eval/problem40//code.c:10:         for (int w = 2; w * w <= f1; w++) {
	movl	-8(%rbp), %eax	# w, tmp93
	imull	%eax, %eax	# tmp93, _2
# eval/problem40//code.c:10:         for (int w = 2; w * w <= f1; w++) {
	cmpl	%eax, -24(%rbp)	# _2, f1
	jge	.L6	#,
.L5:
# eval/problem40//code.c:15:         if (isprime) count += 1;
	cmpl	$0, -12(%rbp)	#, isprime
	je	.L7	#,
# eval/problem40//code.c:15:         if (isprime) count += 1;
	addl	$1, -16(%rbp)	#, count
.L7:
# eval/problem40//code.c:16:         if (count == n) return f1;
	movl	-16(%rbp), %eax	# count, tmp94
	cmpl	-36(%rbp), %eax	# n, tmp94
	jne	.L2	#,
# eval/problem40//code.c:16:         if (count == n) return f1;
	movl	-24(%rbp), %eax	# f1, _9
# eval/problem40//code.c:16:         if (count == n) return f1;
	jmp	.L8	#
.L2:
# eval/problem40//code.c:6:     while (count < n) {
	movl	-16(%rbp), %eax	# count, tmp95
	cmpl	-36(%rbp), %eax	# n, tmp95
	jl	.L9	#,
# eval/problem40//code.c:18:     return 0;
	movl	$0, %eax	#, _9
.L8:
# eval/problem40//code.c:19: }
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
