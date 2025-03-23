	.file	"problem17.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	subq	$176, %rsp	#,
# problem17.c:9: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp165
	movq	%rax, -8(%rbp)	# tmp165, D.2389
	xorl	%eax, %eax	# tmp165
# problem17.c:11:   unsigned s1[] = { 0, 3, 3, 5, 4, 4, 3, 5, 5, 4 };
	movl	$0, -144(%rbp)	#, s1[0]
	movl	$3, -140(%rbp)	#, s1[1]
	movl	$3, -136(%rbp)	#, s1[2]
	movl	$5, -132(%rbp)	#, s1[3]
	movl	$4, -128(%rbp)	#, s1[4]
	movl	$4, -124(%rbp)	#, s1[5]
	movl	$3, -120(%rbp)	#, s1[6]
	movl	$5, -116(%rbp)	#, s1[7]
	movl	$5, -112(%rbp)	#, s1[8]
	movl	$4, -108(%rbp)	#, s1[9]
# problem17.c:13:   unsigned s2[] = { 3, 6, 6, 8, 8, 7, 7, 9, 8, 8 };
	movl	$3, -96(%rbp)	#, s2[0]
	movl	$6, -92(%rbp)	#, s2[1]
	movl	$6, -88(%rbp)	#, s2[2]
	movl	$8, -84(%rbp)	#, s2[3]
	movl	$8, -80(%rbp)	#, s2[4]
	movl	$7, -76(%rbp)	#, s2[5]
	movl	$7, -72(%rbp)	#, s2[6]
	movl	$9, -68(%rbp)	#, s2[7]
	movl	$8, -64(%rbp)	#, s2[8]
	movl	$8, -60(%rbp)	#, s2[9]
# problem17.c:15:   unsigned s3[] = { 0, 0, 6, 6, 5, 5, 5, 7, 6, 6 };
	movl	$0, -48(%rbp)	#, s3[0]
	movl	$0, -44(%rbp)	#, s3[1]
	movl	$6, -40(%rbp)	#, s3[2]
	movl	$6, -36(%rbp)	#, s3[3]
	movl	$5, -32(%rbp)	#, s3[4]
	movl	$5, -28(%rbp)	#, s3[5]
	movl	$5, -24(%rbp)	#, s3[6]
	movl	$7, -20(%rbp)	#, s3[7]
	movl	$6, -16(%rbp)	#, s3[8]
	movl	$6, -12(%rbp)	#, s3[9]
# problem17.c:17:   unsigned hundred = 7;
	movl	$7, -156(%rbp)	#, hundred
# problem17.c:18:   unsigned and = 3;
	movl	$3, -152(%rbp)	#, and
# problem17.c:19:   unsigned thousand = 8;
	movl	$8, -148(%rbp)	#, thousand
# problem17.c:22:   unsigned sum = 0;
	movl	$0, -164(%rbp)	#, sum
# problem17.c:25:   for (i = 1; i < 10; i++) {
	movl	$1, -168(%rbp)	#, i
# problem17.c:25:   for (i = 1; i < 10; i++) {
	jmp	.L2	#
.L3:
# problem17.c:26:     sum += s1[i];
	movl	-168(%rbp), %eax	# i, tmp114
	movl	-144(%rbp,%rax,4), %eax	# s1[i_31], _1
# problem17.c:26:     sum += s1[i];
	addl	%eax, -164(%rbp)	# _1, sum
# problem17.c:25:   for (i = 1; i < 10; i++) {
	addl	$1, -168(%rbp)	#, i
.L2:
# problem17.c:25:   for (i = 1; i < 10; i++) {
	cmpl	$9, -168(%rbp)	#, i
	jbe	.L3	#,
# problem17.c:29:   for (i = 0; i < 10; i++) {
	movl	$0, -168(%rbp)	#, i
# problem17.c:29:   for (i = 0; i < 10; i++) {
	jmp	.L4	#
.L5:
# problem17.c:30:     sum += s2[i];
	movl	-168(%rbp), %eax	# i, tmp115
	movl	-96(%rbp,%rax,4), %eax	# s2[i_32], _2
# problem17.c:30:     sum += s2[i];
	addl	%eax, -164(%rbp)	# _2, sum
# problem17.c:29:   for (i = 0; i < 10; i++) {
	addl	$1, -168(%rbp)	#, i
.L4:
# problem17.c:29:   for (i = 0; i < 10; i++) {
	cmpl	$9, -168(%rbp)	#, i
	jbe	.L5	#,
# problem17.c:33:   for (i = 20; i < 100; i++) {
	movl	$20, -168(%rbp)	#, i
# problem17.c:33:   for (i = 20; i < 100; i++) {
	jmp	.L6	#
.L7:
# problem17.c:34:     sum += s3[i/10] + s1[i%10];
	movl	-168(%rbp), %eax	# i, tmp116
	movl	%eax, %edx	# tmp116, tmp117
	movl	$3435973837, %eax	#, tmp119
	imulq	%rdx, %rax	# tmp117, tmp118
	shrq	$32, %rax	#, tmp120
	shrl	$3, %eax	#, _3
# problem17.c:34:     sum += s3[i/10] + s1[i%10];
	movl	%eax, %eax	# _3, tmp121
	movl	-48(%rbp,%rax,4), %esi	# s3[_3], _4
# problem17.c:34:     sum += s3[i/10] + s1[i%10];
	movl	-168(%rbp), %ecx	# i, tmp122
	movl	%ecx, %edx	# tmp122, tmp123
	movl	$3435973837, %eax	#, tmp125
	imulq	%rdx, %rax	# tmp123, tmp124
	shrq	$32, %rax	#, tmp126
	movl	%eax, %edx	# tmp126, _5
	shrl	$3, %edx	#, _5
	movl	%edx, %eax	# _5, tmp127
	sall	$2, %eax	#, tmp127
	addl	%edx, %eax	# _5, tmp127
	addl	%eax, %eax	# tmp128
	subl	%eax, %ecx	# tmp127, tmp122
	movl	%ecx, %edx	# tmp122, _5
# problem17.c:34:     sum += s3[i/10] + s1[i%10];
	movl	%edx, %eax	# _5, tmp129
	movl	-144(%rbp,%rax,4), %eax	# s1[_5], _6
# problem17.c:34:     sum += s3[i/10] + s1[i%10];
	addl	%esi, %eax	# _4, _7
# problem17.c:34:     sum += s3[i/10] + s1[i%10];
	addl	%eax, -164(%rbp)	# _7, sum
# problem17.c:33:   for (i = 20; i < 100; i++) {
	addl	$1, -168(%rbp)	#, i
.L6:
# problem17.c:33:   for (i = 20; i < 100; i++) {
	cmpl	$99, -168(%rbp)	#, i
	jbe	.L7	#,
# problem17.c:37:   for (i = 1; i < 10; i++) {
	movl	$1, -168(%rbp)	#, i
# problem17.c:37:   for (i = 1; i < 10; i++) {
	jmp	.L8	#
.L15:
# problem17.c:41:     sum += s1[i] + hundred;
	movl	-168(%rbp), %eax	# i, tmp130
	movl	-144(%rbp,%rax,4), %edx	# s1[i_34], _8
# problem17.c:41:     sum += s1[i] + hundred;
	movl	-156(%rbp), %eax	# hundred, tmp131
	addl	%edx, %eax	# _8, _9
# problem17.c:41:     sum += s1[i] + hundred;
	addl	%eax, -164(%rbp)	# _9, sum
# problem17.c:43:     for (j = 1; j < 10; j++) {
	movl	$1, -160(%rbp)	#, j
# problem17.c:43:     for (j = 1; j < 10; j++) {
	jmp	.L9	#
.L10:
# problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	movl	-168(%rbp), %eax	# i, tmp132
	movl	-144(%rbp,%rax,4), %edx	# s1[i_34], _10
# problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	movl	-156(%rbp), %eax	# hundred, tmp133
	addl	%eax, %edx	# tmp133, _11
# problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	movl	-152(%rbp), %eax	# and, tmp134
	addl	%eax, %edx	# tmp134, _12
# problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	movl	-160(%rbp), %eax	# j, tmp136
	cltq
	movl	-144(%rbp,%rax,4), %eax	# s1[j_42], _13
# problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	addl	%edx, %eax	# _12, _14
# problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	addl	%eax, -164(%rbp)	# _14, sum
# problem17.c:43:     for (j = 1; j < 10; j++) {
	addl	$1, -160(%rbp)	#, j
.L9:
# problem17.c:43:     for (j = 1; j < 10; j++) {
	cmpl	$9, -160(%rbp)	#, j
	jle	.L10	#,
# problem17.c:47:     for (j = 0; j < 10; j++) {
	movl	$0, -160(%rbp)	#, j
# problem17.c:47:     for (j = 0; j < 10; j++) {
	jmp	.L11	#
.L12:
# problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	movl	-168(%rbp), %eax	# i, tmp137
	movl	-144(%rbp,%rax,4), %edx	# s1[i_34], _15
# problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	movl	-156(%rbp), %eax	# hundred, tmp138
	addl	%eax, %edx	# tmp138, _16
# problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	movl	-152(%rbp), %eax	# and, tmp139
	addl	%eax, %edx	# tmp139, _17
# problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	movl	-160(%rbp), %eax	# j, tmp141
	cltq
	movl	-96(%rbp,%rax,4), %eax	# s2[j_43], _18
# problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	addl	%edx, %eax	# _17, _19
# problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	addl	%eax, -164(%rbp)	# _19, sum
# problem17.c:47:     for (j = 0; j < 10; j++) {
	addl	$1, -160(%rbp)	#, j
.L11:
# problem17.c:47:     for (j = 0; j < 10; j++) {
	cmpl	$9, -160(%rbp)	#, j
	jle	.L12	#,
# problem17.c:51:     for (j = 20; j < 100; j++) {
	movl	$20, -160(%rbp)	#, j
# problem17.c:51:     for (j = 20; j < 100; j++) {
	jmp	.L13	#
.L14:
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	movl	-168(%rbp), %eax	# i, tmp142
	movl	-144(%rbp,%rax,4), %edx	# s1[i_34], _20
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	movl	-156(%rbp), %eax	# hundred, tmp143
	addl	%eax, %edx	# tmp143, _21
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	movl	-152(%rbp), %eax	# and, tmp144
	leal	(%rdx,%rax), %ecx	#, _22
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	movl	-160(%rbp), %eax	# j, tmp145
	movslq	%eax, %rdx	# tmp145, tmp146
	imulq	$1717986919, %rdx, %rdx	#, tmp146, tmp147
	shrq	$32, %rdx	#, tmp148
	sarl	$2, %edx	#, tmp149
	sarl	$31, %eax	#, tmp145
	movl	%eax, %esi	# tmp145, tmp150
	movl	%edx, %eax	# tmp149, tmp149
	subl	%esi, %eax	# tmp150, tmp149
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	cltq
	movl	-48(%rbp,%rax,4), %eax	# s3[_23], _24
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	leal	(%rcx,%rax), %esi	#, _25
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	movl	-160(%rbp), %ecx	# j, tmp152
	movslq	%ecx, %rax	# tmp152, tmp153
	imulq	$1717986919, %rax, %rax	#, tmp153, tmp154
	shrq	$32, %rax	#, tmp155
	sarl	$2, %eax	#, tmp156
	movl	%ecx, %edi	# tmp152, tmp157
	sarl	$31, %edi	#, tmp157
	subl	%edi, %eax	# tmp157, tmp156
	movl	%eax, %edx	# tmp156, _26
	movl	%edx, %eax	# _26, tmp158
	sall	$2, %eax	#, tmp158
	addl	%edx, %eax	# _26, tmp158
	addl	%eax, %eax	# tmp159
	subl	%eax, %ecx	# tmp158, tmp152
	movl	%ecx, %edx	# tmp152, _26
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	movslq	%edx, %rax	# _26, tmp160
	movl	-144(%rbp,%rax,4), %eax	# s1[_26], _27
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	addl	%esi, %eax	# _25, _28
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	addl	%eax, -164(%rbp)	# _28, sum
# problem17.c:51:     for (j = 20; j < 100; j++) {
	addl	$1, -160(%rbp)	#, j
.L13:
# problem17.c:51:     for (j = 20; j < 100; j++) {
	cmpl	$99, -160(%rbp)	#, j
	jle	.L14	#,
# problem17.c:37:   for (i = 1; i < 10; i++) {
	addl	$1, -168(%rbp)	#, i
.L8:
# problem17.c:37:   for (i = 1; i < 10; i++) {
	cmpl	$9, -168(%rbp)	#, i
	jbe	.L15	#,
# problem17.c:56:   sum += s1[1] + thousand;
	movl	-140(%rbp), %edx	# s1[1], _29
# problem17.c:56:   sum += s1[1] + thousand;
	movl	-148(%rbp), %eax	# thousand, tmp161
	addl	%edx, %eax	# _29, _30
# problem17.c:56:   sum += s1[1] + thousand;
	addl	%eax, -164(%rbp)	# _30, sum
# problem17.c:58:   printf("%u\n", sum);
	movl	-164(%rbp), %eax	# sum, tmp162
	movl	%eax, %esi	# tmp162,
	leaq	.LC0(%rip), %rax	#, tmp163
	movq	%rax, %rdi	# tmp163,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem17.c:60:   return 0;
	movl	$0, %eax	#, _86
# problem17.c:61: }
	movq	-8(%rbp), %rdx	# D.2389, tmp166
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp166
	je	.L17	#,
	call	__stack_chk_fail@PLT	#
.L17:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
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
