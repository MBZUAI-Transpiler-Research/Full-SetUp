	.file	"problem38.c"
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
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
# problem38.c:16: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp111
	movq	%rax, -24(%rbp)	# tmp111, D.3105
	xorl	%eax, %eax	# tmp111
# problem38.c:17:   unsigned max = 0;
	movl	$0, -60(%rbp)	#, max
# problem38.c:20:   for (i = 1; i < N; i++) {
	movl	$1, -56(%rbp)	#, i
# problem38.c:20:   for (i = 1; i < N; i++) {
	jmp	.L2	#
.L7:
# problem38.c:21:     char s[10] = {0};
	movq	$0, -44(%rbp)	#, s
	movw	$0, -36(%rbp)	#, s
# problem38.c:24:     snprintf(s, sizeof s, "%u", i);
	movl	-56(%rbp), %edx	# i, tmp92
	leaq	-44(%rbp), %rax	#, tmp93
	movl	%edx, %ecx	# tmp92,
	leaq	.LC0(%rip), %rdx	#, tmp94
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp93,
	movl	$0, %eax	#,
	call	snprintf@PLT	#
# problem38.c:25:     for (j = 2; ; j++) {
	movl	$2, -52(%rbp)	#, j
.L6:
# problem38.c:26:       char t[10] = {0};
	movq	$0, -34(%rbp)	#, t
	movw	$0, -26(%rbp)	#, t
# problem38.c:28:       snprintf(t, sizeof t, "%u", i*j);
	movl	-56(%rbp), %eax	# i, tmp95
	imull	-52(%rbp), %eax	# j, tmp95
	movl	%eax, %edx	# tmp95, _1
	leaq	-34(%rbp), %rax	#, tmp96
	movl	%edx, %ecx	# _1,
	leaq	.LC0(%rip), %rdx	#, tmp97
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp96,
	movl	$0, %eax	#,
	call	snprintf@PLT	#
# problem38.c:29:       if (strlen(s) + strlen(t) > 9) {
	leaq	-44(%rbp), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	strlen@PLT	#
	movq	%rax, %rbx	#, _2
# problem38.c:29:       if (strlen(s) + strlen(t) > 9) {
	leaq	-34(%rbp), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	strlen@PLT	#
# problem38.c:29:       if (strlen(s) + strlen(t) > 9) {
	addq	%rbx, %rax	# _2, _4
# problem38.c:29:       if (strlen(s) + strlen(t) > 9) {
	cmpq	$9, %rax	#, _4
	jbe	.L3	#,
# problem38.c:34:     if (is_pandigital(s)) {
	leaq	-44(%rbp), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	is_pandigital	#
# problem38.c:34:     if (is_pandigital(s)) {
	testl	%eax, %eax	# _7
	jne	.L4	#,
	jmp	.L5	#
.L3:
# problem38.c:32:       strncat(s, t, sizeof s - strlen(s));
	leaq	-44(%rbp), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	strlen@PLT	#
# problem38.c:32:       strncat(s, t, sizeof s - strlen(s));
	movl	$10, %edx	#, tmp102
	subq	%rax, %rdx	# _5, _6
	leaq	-34(%rbp), %rcx	#, tmp103
	leaq	-44(%rbp), %rax	#, tmp104
	movq	%rcx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	strncat@PLT	#
# problem38.c:25:     for (j = 2; ; j++) {
	addl	$1, -52(%rbp)	#, j
# problem38.c:25:     for (j = 2; ; j++) {
	jmp	.L6	#
.L4:
# problem38.c:35:       unsigned l = strtoul(s, NULL, 10);
	leaq	-44(%rbp), %rax	#, tmp105
	movl	$10, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp105,
	call	strtoul@PLT	#
# problem38.c:35:       unsigned l = strtoul(s, NULL, 10);
	movl	%eax, -48(%rbp)	# _8, l
# problem38.c:36:       if (l > max) {
	movl	-48(%rbp), %eax	# l, tmp106
	cmpl	-60(%rbp), %eax	# max, tmp106
	jbe	.L5	#,
# problem38.c:37:         max = l;
	movl	-48(%rbp), %eax	# l, tmp107
	movl	%eax, -60(%rbp)	# tmp107, max
.L5:
# problem38.c:20:   for (i = 1; i < N; i++) {
	addl	$1, -56(%rbp)	#, i
.L2:
# problem38.c:20:   for (i = 1; i < N; i++) {
	cmpl	$9999, -56(%rbp)	#, i
	jbe	.L7	#,
# problem38.c:41:   printf("%u\n", max);
	movl	-60(%rbp), %eax	# max, tmp108
	movl	%eax, %esi	# tmp108,
	leaq	.LC1(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem38.c:43:   return 0;
	movl	$0, %eax	#, _20
# problem38.c:44: }
	movq	-24(%rbp), %rdx	# D.3105, tmp112
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp112
	je	.L9	#,
	call	__stack_chk_fail@PLT	#
.L9:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.type	compare, @function
compare:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# a, a
	movq	%rsi, -16(%rbp)	# b, b
# problem38.c:48:   return *(const char *)a - *(const char *)b;
	movq	-8(%rbp), %rax	# a, tmp88
	movzbl	(%rax), %eax	# MEM[(const char *)a_6(D)], _1
	movsbl	%al, %edx	# _1, _2
# problem38.c:48:   return *(const char *)a - *(const char *)b;
	movq	-16(%rbp), %rax	# b, tmp89
	movzbl	(%rax), %eax	# MEM[(const char *)b_7(D)], _3
	movsbl	%al, %ecx	# _3, _4
# problem38.c:48:   return *(const char *)a - *(const char *)b;
	movl	%edx, %eax	# _2, _2
	subl	%ecx, %eax	# _4, _2
# problem38.c:49: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	compare, .-compare
	.type	is_pandigital, @function
is_pandigital:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# s, s
# problem38.c:52: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp100
	movq	%rax, -8(%rbp)	# tmp100, D.3109
	xorl	%eax, %eax	# tmp100
# problem38.c:57:   l = strlen(s);
	movq	-56(%rbp), %rax	# s, tmp87
	movq	%rax, %rdi	# tmp87,
	call	strlen@PLT	#
	movq	%rax, -32(%rbp)	# tmp88, l
# problem38.c:58:   if (l != 9) {
	cmpq	$9, -32(%rbp)	#, l
	je	.L13	#,
# problem38.c:59:     return 0;
	movl	$0, %eax	#, _5
	jmp	.L18	#
.L13:
# problem38.c:61:   strncpy(t, s, sizeof t);
	movq	-56(%rbp), %rcx	# s, tmp89
	leaq	-18(%rbp), %rax	#, tmp90
	movl	$10, %edx	#,
	movq	%rcx, %rsi	# tmp89,
	movq	%rax, %rdi	# tmp90,
	call	strncpy@PLT	#
# problem38.c:62:   qsort(t, l, sizeof *t, compare);
	movq	-32(%rbp), %rsi	# l, tmp91
	leaq	-18(%rbp), %rax	#, tmp92
	leaq	compare(%rip), %rdx	#, tmp93
	movq	%rdx, %rcx	# tmp93,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp92,
	call	qsort@PLT	#
# problem38.c:63:   for (i = 0; i < l; i++) {
	movq	$0, -40(%rbp)	#, i
# problem38.c:63:   for (i = 0; i < l; i++) {
	jmp	.L15	#
.L17:
# problem38.c:64:     if (t[i] != i+'1') {
	leaq	-18(%rbp), %rdx	#, tmp94
	movq	-40(%rbp), %rax	# i, tmp96
	addq	%rdx, %rax	# tmp94, tmp95
	movzbl	(%rax), %eax	# t[i_4], _1
	movsbq	%al, %rax	# _1, _2
# problem38.c:64:     if (t[i] != i+'1') {
	movq	-40(%rbp), %rdx	# i, tmp97
	addq	$49, %rdx	#, _3
# problem38.c:64:     if (t[i] != i+'1') {
	cmpq	%rdx, %rax	# _3, _2
	je	.L16	#,
# problem38.c:65:       return 0;
	movl	$0, %eax	#, _5
	jmp	.L18	#
.L16:
# problem38.c:63:   for (i = 0; i < l; i++) {
	addq	$1, -40(%rbp)	#, i
.L15:
# problem38.c:63:   for (i = 0; i < l; i++) {
	movq	-40(%rbp), %rax	# i, tmp98
	cmpq	-32(%rbp), %rax	# l, tmp98
	jb	.L17	#,
# problem38.c:68:   return 1;
	movl	$1, %eax	#, _5
.L18:
# problem38.c:69: }
	movq	-8(%rbp), %rdx	# D.3109, tmp101
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp101
	je	.L19	#,
# problem38.c:69: }
	call	__stack_chk_fail@PLT	#
.L19:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	is_pandigital, .-is_pandigital
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
