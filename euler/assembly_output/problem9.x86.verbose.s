	.file	"problem9.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
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
	subq	$16, %rsp	#,
# problem9.c:12:   for (a = 1; a <= 333; a++) {
	movl	$1, -12(%rbp)	#, a
# problem9.c:12:   for (a = 1; a <= 333; a++) {
	jmp	.L2	#
.L6:
# problem9.c:13:     for (b = a; b <= 666; b++) {
	movl	-12(%rbp), %eax	# a, tmp91
	movl	%eax, -8(%rbp)	# tmp91, b
# problem9.c:13:     for (b = a; b <= 666; b++) {
	jmp	.L3	#
.L5:
# problem9.c:14:       int c = (1000 - a - b);
	movl	$1000, %eax	#, tmp92
	subl	-12(%rbp), %eax	# a, _1
# problem9.c:14:       int c = (1000 - a - b);
	subl	-8(%rbp), %eax	# b, tmp94
	movl	%eax, -4(%rbp)	# tmp94, c
# problem9.c:15:       if (a*a + b*b == c*c) {
	movl	-12(%rbp), %eax	# a, tmp95
	imull	%eax, %eax	# tmp95, tmp95
	movl	%eax, %edx	# tmp95, _2
# problem9.c:15:       if (a*a + b*b == c*c) {
	movl	-8(%rbp), %eax	# b, tmp96
	imull	%eax, %eax	# tmp96, _3
# problem9.c:15:       if (a*a + b*b == c*c) {
	addl	%eax, %edx	# _3, _4
# problem9.c:15:       if (a*a + b*b == c*c) {
	movl	-4(%rbp), %eax	# c, tmp97
	imull	%eax, %eax	# tmp97, _5
# problem9.c:15:       if (a*a + b*b == c*c) {
	cmpl	%eax, %edx	# _5, _4
	jne	.L4	#,
# problem9.c:16:         printf("%d\n", a * b * c);
	movl	-12(%rbp), %eax	# a, tmp98
	imull	-8(%rbp), %eax	# b, _6
# problem9.c:16:         printf("%d\n", a * b * c);
	imull	-4(%rbp), %eax	# c, _7
	movl	%eax, %esi	# _7,
	leaq	.LC0(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	movl	$0, %eax	#,
	call	printf@PLT	#
.L4:
# problem9.c:13:     for (b = a; b <= 666; b++) {
	addl	$1, -8(%rbp)	#, b
.L3:
# problem9.c:13:     for (b = a; b <= 666; b++) {
	cmpl	$666, -8(%rbp)	#, b
	jle	.L5	#,
# problem9.c:12:   for (a = 1; a <= 333; a++) {
	addl	$1, -12(%rbp)	#, a
.L2:
# problem9.c:12:   for (a = 1; a <= 333; a++) {
	cmpl	$333, -12(%rbp)	#, a
	jle	.L6	#,
# problem9.c:20:   return 0;
	movl	$0, %eax	#, _15
# problem9.c:21: }
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
