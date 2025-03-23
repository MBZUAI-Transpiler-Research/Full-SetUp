	.file	"problem34.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%u"
.LC1:
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
	subq	$48, %rsp	#,
# problem34.c:11: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp100
	movq	%rax, -8(%rbp)	# tmp100, D.2381
	xorl	%eax, %eax	# tmp100
# problem34.c:12:   unsigned i, sum = 0;
	movl	$0, -44(%rbp)	#, sum
# problem34.c:15:   for (i = 3; i < 100000; i++) {
	movl	$3, -48(%rbp)	#, i
# problem34.c:15:   for (i = 3; i < 100000; i++) {
	jmp	.L2	#
.L6:
# problem34.c:16:     unsigned j, s = 0;
	movl	$0, -36(%rbp)	#, s
# problem34.c:18:     snprintf(buf, sizeof buf, "%u", i);
	movl	-48(%rbp), %edx	# i, tmp90
	leaq	-32(%rbp), %rax	#, tmp91
	movl	%edx, %ecx	# tmp90,
	leaq	.LC0(%rip), %rdx	#, tmp92
	movl	$16, %esi	#,
	movq	%rax, %rdi	# tmp91,
	movl	$0, %eax	#,
	call	snprintf@PLT	#
# problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	movl	$0, -40(%rbp)	#, j
# problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	jmp	.L3	#
.L4:
# problem34.c:20:       s += fact(buf[j]-'0');
	movl	-40(%rbp), %eax	# j, tmp93
	movzbl	-32(%rbp,%rax), %eax	# buf[j_9], _1
	movsbl	%al, %eax	# _1, _2
# problem34.c:20:       s += fact(buf[j]-'0');
	subl	$48, %eax	#, _3
# problem34.c:20:       s += fact(buf[j]-'0');
	movl	%eax, %edi	# _4,
	call	fact	#
# problem34.c:20:       s += fact(buf[j]-'0');
	addl	%eax, -36(%rbp)	# _25, s
# problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	addl	$1, -40(%rbp)	#, j
.L3:
# problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	movl	-40(%rbp), %eax	# j, tmp94
	movzbl	-32(%rbp,%rax), %eax	# buf[j_9], _5
# problem34.c:19:     for (j = 0; buf[j] != 0; j++) {
	testb	%al, %al	# _5
	jne	.L4	#,
# problem34.c:22:     if (i == s) {
	movl	-48(%rbp), %eax	# i, tmp95
	cmpl	-36(%rbp), %eax	# s, tmp95
	jne	.L5	#,
# problem34.c:23:       sum += s;
	movl	-36(%rbp), %eax	# s, tmp96
	addl	%eax, -44(%rbp)	# tmp96, sum
.L5:
# problem34.c:15:   for (i = 3; i < 100000; i++) {
	addl	$1, -48(%rbp)	#, i
.L2:
# problem34.c:15:   for (i = 3; i < 100000; i++) {
	cmpl	$99999, -48(%rbp)	#, i
	jbe	.L6	#,
# problem34.c:26:   printf("%u\n", sum);
	movl	-44(%rbp), %eax	# sum, tmp97
	movl	%eax, %esi	# tmp97,
	leaq	.LC1(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem34.c:28:   return 0;
	movl	$0, %eax	#, _17
# problem34.c:29: }
	movq	-8(%rbp), %rdx	# D.2381, tmp101
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp101
	je	.L8	#,
	call	__stack_chk_fail@PLT	#
.L8:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	fact
	.type	fact, @function
fact:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# n, n
# problem34.c:33:   unsigned f = 1;
	movl	$1, -4(%rbp)	#, f
# problem34.c:34:   while (n != 0) {
	jmp	.L10	#
.L11:
# problem34.c:35:     f *= n--;
	movl	-20(%rbp), %eax	# n, n.0_1
	leal	-1(%rax), %edx	#, tmp85
	movl	%edx, -20(%rbp)	# tmp85, n
# problem34.c:35:     f *= n--;
	movl	-4(%rbp), %edx	# f, tmp87
	imull	%edx, %eax	# tmp87, tmp86
	movl	%eax, -4(%rbp)	# tmp86, f
.L10:
# problem34.c:34:   while (n != 0) {
	cmpl	$0, -20(%rbp)	#, n
	jne	.L11	#,
# problem34.c:37:   return f;
	movl	-4(%rbp), %eax	# f, _6
# problem34.c:38: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	fact, .-fact
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
