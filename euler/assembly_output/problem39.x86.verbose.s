	.file	"problem39.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%u\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# problem39.c:11:   unsigned cnt, max = 0, maxp = 0;
	movl	$0, -12(%rbp)	#, max
# problem39.c:11:   unsigned cnt, max = 0, maxp = 0;
	movl	$0, -8(%rbp)	#, maxp
# problem39.c:13:   for (p = 1; p <= 1000; p++) {
	movl	$1, -20(%rbp)	#, p
# problem39.c:13:   for (p = 1; p <= 1000; p++) {
	jmp	.L2	#
.L9:
# problem39.c:14:     cnt = 0;
	movl	$0, -16(%rbp)	#, cnt
# problem39.c:15:     for (a = 1; a < p/2; a++) {
	movl	$1, -28(%rbp)	#, a
# problem39.c:15:     for (a = 1; a < p/2; a++) {
	jmp	.L3	#
.L7:
# problem39.c:16:       for (b = a; b < p/2; b++) {
	movl	-28(%rbp), %eax	# a, tmp91
	movl	%eax, -24(%rbp)	# tmp91, b
# problem39.c:16:       for (b = a; b < p/2; b++) {
	jmp	.L4	#
.L6:
# problem39.c:17:         c = p - a - b;
	movl	-20(%rbp), %eax	# p, tmp92
	subl	-28(%rbp), %eax	# a, _1
# problem39.c:17:         c = p - a - b;
	subl	-24(%rbp), %eax	# b, tmp94
	movl	%eax, -4(%rbp)	# tmp94, c
# problem39.c:18:         if (a*a + b*b == c*c) {
	movl	-28(%rbp), %eax	# a, tmp95
	imull	%eax, %eax	# tmp95, tmp95
	movl	%eax, %edx	# tmp95, _2
# problem39.c:18:         if (a*a + b*b == c*c) {
	movl	-24(%rbp), %eax	# b, tmp96
	imull	%eax, %eax	# tmp96, _3
# problem39.c:18:         if (a*a + b*b == c*c) {
	addl	%eax, %edx	# _3, _4
# problem39.c:18:         if (a*a + b*b == c*c) {
	movl	-4(%rbp), %eax	# c, tmp97
	imull	%eax, %eax	# tmp97, _5
# problem39.c:18:         if (a*a + b*b == c*c) {
	cmpl	%eax, %edx	# _5, _4
	jne	.L5	#,
# problem39.c:19:           cnt++;
	addl	$1, -16(%rbp)	#, cnt
.L5:
# problem39.c:16:       for (b = a; b < p/2; b++) {
	addl	$1, -24(%rbp)	#, b
.L4:
# problem39.c:16:       for (b = a; b < p/2; b++) {
	movl	-20(%rbp), %eax	# p, tmp98
	shrl	%eax	# _6
# problem39.c:16:       for (b = a; b < p/2; b++) {
	cmpl	%eax, -24(%rbp)	# _6, b
	jb	.L6	#,
# problem39.c:15:     for (a = 1; a < p/2; a++) {
	addl	$1, -28(%rbp)	#, a
.L3:
# problem39.c:15:     for (a = 1; a < p/2; a++) {
	movl	-20(%rbp), %eax	# p, tmp99
	shrl	%eax	# _7
# problem39.c:15:     for (a = 1; a < p/2; a++) {
	cmpl	%eax, -28(%rbp)	# _7, a
	jb	.L7	#,
# problem39.c:23:     if (cnt > max) {
	movl	-16(%rbp), %eax	# cnt, tmp100
	cmpl	%eax, -12(%rbp)	# tmp100, max
	jnb	.L8	#,
# problem39.c:24:       max = cnt;
	movl	-16(%rbp), %eax	# cnt, tmp101
	movl	%eax, -12(%rbp)	# tmp101, max
# problem39.c:25:       maxp = p;
	movl	-20(%rbp), %eax	# p, tmp102
	movl	%eax, -8(%rbp)	# tmp102, maxp
.L8:
# problem39.c:13:   for (p = 1; p <= 1000; p++) {
	addl	$1, -20(%rbp)	#, p
.L2:
# problem39.c:13:   for (p = 1; p <= 1000; p++) {
	cmpl	$1000, -20(%rbp)	#, p
	jbe	.L9	#,
# problem39.c:28:   printf("%u\n", maxp);
	movl	-8(%rbp), %eax	# maxp, tmp103
	movl	%eax, %esi	# tmp103,
	leaq	.LC0(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem39.c:30:   return 0;
	movl	$0, %eax	#, _23
# problem39.c:31: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
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
