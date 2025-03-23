	.file	"problem33.c"
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
	subq	$48, %rsp	#,
# problem33.c:13: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp143
	movq	%rax, -8(%rbp)	# tmp143, D.3472
	xorl	%eax, %eax	# tmp143
# problem33.c:14:   unsigned ans_n = 1, ans_d = 1;
	movl	$1, -40(%rbp)	#, ans_n
# problem33.c:14:   unsigned ans_n = 1, ans_d = 1;
	movl	$1, -36(%rbp)	#, ans_d
# problem33.c:16:   for (i = 11; i < 100; i++) {
	movl	$11, -32(%rbp)	#, i
# problem33.c:16:   for (i = 11; i < 100; i++) {
	jmp	.L2	#
.L12:
# problem33.c:19:     if (i % 10 == 0) {
	movl	-32(%rbp), %ecx	# i, tmp97
	movl	%ecx, %edx	# tmp97, tmp98
	movl	$3435973837, %eax	#, tmp100
	imulq	%rdx, %rax	# tmp98, tmp99
	shrq	$32, %rax	#, tmp101
	movl	%eax, %edx	# tmp101, _1
	shrl	$3, %edx	#, _1
	movl	%edx, %eax	# _1, tmp102
	sall	$2, %eax	#, tmp102
	addl	%edx, %eax	# _1, tmp102
	addl	%eax, %eax	# tmp103
	subl	%eax, %ecx	# tmp102, tmp97
	movl	%ecx, %edx	# tmp97, _1
# problem33.c:19:     if (i % 10 == 0) {
	testl	%edx, %edx	# _1
	je	.L15	#,
# problem33.c:23:     for (j = 11; j < i; j++) {
	movl	$11, -28(%rbp)	#, j
# problem33.c:23:     for (j = 11; j < i; j++) {
	jmp	.L5	#
.L11:
# problem33.c:27:       if (j % 10 == 0) {
	movl	-28(%rbp), %ecx	# j, tmp104
	movl	%ecx, %edx	# tmp104, tmp105
	movl	$3435973837, %eax	#, tmp107
	imulq	%rdx, %rax	# tmp105, tmp106
	shrq	$32, %rax	#, tmp108
	movl	%eax, %edx	# tmp108, _2
	shrl	$3, %edx	#, _2
	movl	%edx, %eax	# _2, tmp109
	sall	$2, %eax	#, tmp109
	addl	%edx, %eax	# _2, tmp109
	addl	%eax, %eax	# tmp110
	subl	%eax, %ecx	# tmp109, tmp104
	movl	%ecx, %edx	# tmp104, _2
# problem33.c:27:       if (j % 10 == 0) {
	testl	%edx, %edx	# _2
	je	.L16	#,
# problem33.c:31:       if ((g = gcd(i, j)) == 1) {
	movl	-28(%rbp), %edx	# j, tmp111
	movl	-32(%rbp), %eax	# i, tmp112
	movl	%edx, %esi	# tmp111,
	movl	%eax, %edi	# tmp112,
	call	gcd	#
	movl	%eax, -24(%rbp)	# tmp113, g
# problem33.c:31:       if ((g = gcd(i, j)) == 1) {
	cmpl	$1, -24(%rbp)	#, g
	je	.L17	#,
# problem33.c:35:       n = j/g;
	movl	-28(%rbp), %eax	# j, tmp117
	movl	$0, %edx	#, tmp116
	divl	-24(%rbp)	# g
	movl	%eax, -20(%rbp)	# tmp115, n
# problem33.c:36:       d = i/g;
	movl	-32(%rbp), %eax	# i, tmp121
	movl	$0, %edx	#, tmp120
	divl	-24(%rbp)	# g
	movl	%eax, -16(%rbp)	# tmp119, d
# problem33.c:39:       if (cancel(j, i, &n2, &d2)) {
	leaq	-44(%rbp), %rcx	#, tmp122
	leaq	-48(%rbp), %rdx	#, tmp123
	movl	-32(%rbp), %esi	# i, tmp124
	movl	-28(%rbp), %eax	# j, tmp125
	movl	%eax, %edi	# tmp125,
	call	cancel	#
# problem33.c:39:       if (cancel(j, i, &n2, &d2)) {
	testl	%eax, %eax	# _3
	je	.L10	#,
# problem33.c:40:         unsigned g2 = gcd(n2, d2);
	movl	-44(%rbp), %edx	# d2, d2.0_4
	movl	-48(%rbp), %eax	# n2, n2.1_5
	movl	%edx, %esi	# d2.0_4,
	movl	%eax, %edi	# n2.1_5,
	call	gcd	#
	movl	%eax, -12(%rbp)	# tmp126, g2
# problem33.c:41:         n2 /= g2; d2 /= g2;
	movl	-48(%rbp), %eax	# n2, n2.2_6
	movl	$0, %edx	#, tmp128
	divl	-12(%rbp)	# g2
	movl	%eax, -48(%rbp)	# _7, n2
# problem33.c:41:         n2 /= g2; d2 /= g2;
	movl	-44(%rbp), %eax	# d2, d2.3_8
	movl	$0, %edx	#, tmp130
	divl	-12(%rbp)	# g2
	movl	%eax, -44(%rbp)	# _9, d2
# problem33.c:42:         if (n == n2 && d == d2) {
	movl	-48(%rbp), %eax	# n2, n2.4_10
# problem33.c:42:         if (n == n2 && d == d2) {
	cmpl	%eax, -20(%rbp)	# n2.4_10, n
	jne	.L10	#,
# problem33.c:42:         if (n == n2 && d == d2) {
	movl	-44(%rbp), %eax	# d2, d2.5_11
# problem33.c:42:         if (n == n2 && d == d2) {
	cmpl	%eax, -16(%rbp)	# d2.5_11, d
	jne	.L10	#,
# problem33.c:43:           ans_n *= n;
	movl	-40(%rbp), %eax	# ans_n, tmp132
	imull	-20(%rbp), %eax	# n, tmp131
	movl	%eax, -40(%rbp)	# tmp131, ans_n
# problem33.c:44:           ans_d *= d;
	movl	-36(%rbp), %eax	# ans_d, tmp134
	imull	-16(%rbp), %eax	# d, tmp133
	movl	%eax, -36(%rbp)	# tmp133, ans_d
	jmp	.L10	#
.L16:
# problem33.c:28:         continue;
	nop	
	jmp	.L10	#
.L17:
# problem33.c:32:         continue;
	nop	
.L10:
# problem33.c:23:     for (j = 11; j < i; j++) {
	addl	$1, -28(%rbp)	#, j
.L5:
# problem33.c:23:     for (j = 11; j < i; j++) {
	movl	-28(%rbp), %eax	# j, tmp135
	cmpl	-32(%rbp), %eax	# i, tmp135
	jb	.L11	#,
	jmp	.L4	#
.L15:
# problem33.c:20:       continue;
	nop	
.L4:
# problem33.c:16:   for (i = 11; i < 100; i++) {
	addl	$1, -32(%rbp)	#, i
.L2:
# problem33.c:16:   for (i = 11; i < 100; i++) {
	cmpl	$99, -32(%rbp)	#, i
	jbe	.L12	#,
# problem33.c:49:   printf("%u\n", ans_d / gcd(ans_n, ans_d));
	movl	-36(%rbp), %edx	# ans_d, tmp136
	movl	-40(%rbp), %eax	# ans_n, tmp137
	movl	%edx, %esi	# tmp136,
	movl	%eax, %edi	# tmp137,
	call	gcd	#
	movl	%eax, %edi	#, _12
# problem33.c:49:   printf("%u\n", ans_d / gcd(ans_n, ans_d));
	movl	-36(%rbp), %eax	# ans_d, tmp140
	movl	$0, %edx	#, tmp139
	divl	%edi	# _12
	movl	%eax, %esi	# _13,
	leaq	.LC0(%rip), %rax	#, tmp141
	movq	%rax, %rdi	# tmp141,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem33.c:50:   return 0;
	movl	$0, %eax	#, _38
# problem33.c:51: }
	movq	-8(%rbp), %rdx	# D.3472, tmp144
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp144
	je	.L14	#,
	call	__stack_chk_fail@PLT	#
.L14:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.type	gcd, @function
gcd:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# a, a
	movl	%esi, -24(%rbp)	# b, b
# problem33.c:56:   while ((r = a % b) != 0) {
	jmp	.L19	#
.L20:
# problem33.c:57:     a = b; b = r;
	movl	-24(%rbp), %eax	# b, tmp84
	movl	%eax, -20(%rbp)	# tmp84, a
# problem33.c:57:     a = b; b = r;
	movl	-4(%rbp), %eax	# r, tmp85
	movl	%eax, -24(%rbp)	# tmp85, b
.L19:
# problem33.c:56:   while ((r = a % b) != 0) {
	movl	-20(%rbp), %eax	# a, tmp87
	movl	$0, %edx	#, tmp88
	divl	-24(%rbp)	# b
	movl	%edx, -4(%rbp)	# tmp88, r
# problem33.c:56:   while ((r = a % b) != 0) {
	cmpl	$0, -4(%rbp)	#, r
	jne	.L20	#,
# problem33.c:59:   return b;
	movl	-24(%rbp), %eax	# b, _6
# problem33.c:60: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	gcd, .-gcd
	.type	cancel, @function
cancel:
.LFB2:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# n1, n1
	movl	%esi, -8(%rbp)	# d1, d1
	movq	%rdx, -16(%rbp)	# n2, n2
	movq	%rcx, -24(%rbp)	# d2, d2
# problem33.c:64:   if (n1%10 == d1%10) {
	movl	-4(%rbp), %edx	# n1, tmp100
	movl	%edx, %ecx	# tmp100, tmp101
	movl	$3435973837, %eax	#, tmp103
	imulq	%rcx, %rax	# tmp101, tmp102
	shrq	$32, %rax	#, tmp104
	movl	%eax, %ecx	# tmp104, _1
	shrl	$3, %ecx	#, _1
	movl	%ecx, %eax	# _1, tmp105
	sall	$2, %eax	#, tmp105
	addl	%ecx, %eax	# _1, tmp105
	addl	%eax, %eax	# tmp106
	movl	%edx, %ecx	# tmp100, tmp100
	subl	%eax, %ecx	# tmp105, tmp100
# problem33.c:64:   if (n1%10 == d1%10) {
	movl	-8(%rbp), %esi	# d1, tmp107
	movl	%esi, %edx	# tmp107, tmp108
	movl	$3435973837, %eax	#, tmp110
	imulq	%rdx, %rax	# tmp108, tmp109
	shrq	$32, %rax	#, tmp111
	movl	%eax, %edx	# tmp111, _2
	shrl	$3, %edx	#, _2
	movl	%edx, %eax	# _2, tmp112
	sall	$2, %eax	#, tmp112
	addl	%edx, %eax	# _2, tmp112
	addl	%eax, %eax	# tmp113
	subl	%eax, %esi	# tmp112, tmp107
	movl	%esi, %edx	# tmp107, _2
# problem33.c:64:   if (n1%10 == d1%10) {
	cmpl	%edx, %ecx	# _2, _1
	jne	.L23	#,
# problem33.c:66:     *n2 = n1/10;
	movl	-4(%rbp), %eax	# n1, tmp114
	movl	%eax, %edx	# tmp114, tmp115
	movl	$3435973837, %eax	#, tmp117
	imulq	%rdx, %rax	# tmp115, tmp116
	shrq	$32, %rax	#, tmp118
	movl	%eax, %edx	# tmp118, _3
	shrl	$3, %edx	#, _3
# problem33.c:66:     *n2 = n1/10;
	movq	-16(%rbp), %rax	# n2, tmp119
	movl	%edx, (%rax)	# _3, *n2_22(D)
# problem33.c:67:     *d2 = d1/10;
	movl	-8(%rbp), %eax	# d1, tmp120
	movl	%eax, %edx	# tmp120, tmp121
	movl	$3435973837, %eax	#, tmp123
	imulq	%rdx, %rax	# tmp121, tmp122
	shrq	$32, %rax	#, tmp124
	movl	%eax, %edx	# tmp124, _4
	shrl	$3, %edx	#, _4
# problem33.c:67:     *d2 = d1/10;
	movq	-24(%rbp), %rax	# d2, tmp125
	movl	%edx, (%rax)	# _4, *d2_24(D)
# problem33.c:68:     return 1;
	movl	$1, %eax	#, _17
	jmp	.L24	#
.L23:
# problem33.c:70:   else if (n1%10 == d1/10) {
	movl	-4(%rbp), %ecx	# n1, tmp126
	movl	%ecx, %edx	# tmp126, tmp127
	movl	$3435973837, %eax	#, tmp129
	imulq	%rdx, %rax	# tmp127, tmp128
	shrq	$32, %rax	#, tmp130
	movl	%eax, %edx	# tmp130, _5
	shrl	$3, %edx	#, _5
	movl	%edx, %eax	# _5, tmp131
	sall	$2, %eax	#, tmp131
	addl	%edx, %eax	# _5, tmp131
	addl	%eax, %eax	# tmp132
	subl	%eax, %ecx	# tmp131, tmp126
	movl	%ecx, %edx	# tmp126, _5
# problem33.c:70:   else if (n1%10 == d1/10) {
	movl	-8(%rbp), %eax	# d1, tmp133
	movl	%eax, %ecx	# tmp133, tmp134
	movl	$3435973837, %eax	#, tmp136
	imulq	%rcx, %rax	# tmp134, tmp135
	shrq	$32, %rax	#, tmp137
	shrl	$3, %eax	#, _6
# problem33.c:70:   else if (n1%10 == d1/10) {
	cmpl	%eax, %edx	# _6, _5
	jne	.L25	#,
# problem33.c:72:     *n2 = n1/10;
	movl	-4(%rbp), %eax	# n1, tmp138
	movl	%eax, %edx	# tmp138, tmp139
	movl	$3435973837, %eax	#, tmp141
	imulq	%rdx, %rax	# tmp139, tmp140
	shrq	$32, %rax	#, tmp142
	movl	%eax, %edx	# tmp142, _7
	shrl	$3, %edx	#, _7
# problem33.c:72:     *n2 = n1/10;
	movq	-16(%rbp), %rax	# n2, tmp143
	movl	%edx, (%rax)	# _7, *n2_22(D)
# problem33.c:73:     *d2 = d1%10;
	movl	-8(%rbp), %ecx	# d1, tmp144
	movl	%ecx, %edx	# tmp144, tmp145
	movl	$3435973837, %eax	#, tmp147
	imulq	%rdx, %rax	# tmp145, tmp146
	shrq	$32, %rax	#, tmp148
	movl	%eax, %edx	# tmp148, _8
	shrl	$3, %edx	#, _8
	movl	%edx, %eax	# _8, tmp149
	sall	$2, %eax	#, tmp149
	addl	%edx, %eax	# _8, tmp149
	addl	%eax, %eax	# tmp150
	subl	%eax, %ecx	# tmp149, tmp144
	movl	%ecx, %edx	# tmp144, _8
# problem33.c:73:     *d2 = d1%10;
	movq	-24(%rbp), %rax	# d2, tmp151
	movl	%edx, (%rax)	# _8, *d2_24(D)
# problem33.c:74:     return 1;
	movl	$1, %eax	#, _17
	jmp	.L24	#
.L25:
# problem33.c:76:   else if (n1/10 == d1%10) {
	movl	-4(%rbp), %eax	# n1, tmp152
	movl	%eax, %edx	# tmp152, tmp153
	movl	$3435973837, %eax	#, tmp155
	imulq	%rdx, %rax	# tmp153, tmp154
	shrq	$32, %rax	#, tmp156
	movl	%eax, %esi	# tmp156, _9
	shrl	$3, %esi	#, _9
# problem33.c:76:   else if (n1/10 == d1%10) {
	movl	-8(%rbp), %ecx	# d1, tmp157
	movl	%ecx, %edx	# tmp157, tmp158
	movl	$3435973837, %eax	#, tmp160
	imulq	%rdx, %rax	# tmp158, tmp159
	shrq	$32, %rax	#, tmp161
	movl	%eax, %edx	# tmp161, _10
	shrl	$3, %edx	#, _10
	movl	%edx, %eax	# _10, tmp162
	sall	$2, %eax	#, tmp162
	addl	%edx, %eax	# _10, tmp162
	addl	%eax, %eax	# tmp163
	subl	%eax, %ecx	# tmp162, tmp157
	movl	%ecx, %edx	# tmp157, _10
# problem33.c:76:   else if (n1/10 == d1%10) {
	cmpl	%edx, %esi	# _10, _9
	jne	.L26	#,
# problem33.c:78:     *n2 = n1%10;
	movl	-4(%rbp), %ecx	# n1, tmp164
	movl	%ecx, %edx	# tmp164, tmp165
	movl	$3435973837, %eax	#, tmp167
	imulq	%rdx, %rax	# tmp165, tmp166
	shrq	$32, %rax	#, tmp168
	movl	%eax, %edx	# tmp168, _11
	shrl	$3, %edx	#, _11
	movl	%edx, %eax	# _11, tmp169
	sall	$2, %eax	#, tmp169
	addl	%edx, %eax	# _11, tmp169
	addl	%eax, %eax	# tmp170
	subl	%eax, %ecx	# tmp169, tmp164
	movl	%ecx, %edx	# tmp164, _11
# problem33.c:78:     *n2 = n1%10;
	movq	-16(%rbp), %rax	# n2, tmp171
	movl	%edx, (%rax)	# _11, *n2_22(D)
# problem33.c:79:     *d2 = d1/10;
	movl	-8(%rbp), %eax	# d1, tmp172
	movl	%eax, %edx	# tmp172, tmp173
	movl	$3435973837, %eax	#, tmp175
	imulq	%rdx, %rax	# tmp173, tmp174
	shrq	$32, %rax	#, tmp176
	movl	%eax, %edx	# tmp176, _12
	shrl	$3, %edx	#, _12
# problem33.c:79:     *d2 = d1/10;
	movq	-24(%rbp), %rax	# d2, tmp177
	movl	%edx, (%rax)	# _12, *d2_24(D)
# problem33.c:80:     return 1;
	movl	$1, %eax	#, _17
	jmp	.L24	#
.L26:
# problem33.c:82:   else if (n1/10 == d1/10) {
	movl	-4(%rbp), %eax	# n1, tmp178
	movl	%eax, %edx	# tmp178, tmp179
	movl	$3435973837, %eax	#, tmp181
	imulq	%rdx, %rax	# tmp179, tmp180
	shrq	$32, %rax	#, tmp182
	movl	%eax, %edx	# tmp182, _13
	shrl	$3, %edx	#, _13
# problem33.c:82:   else if (n1/10 == d1/10) {
	movl	-8(%rbp), %eax	# d1, tmp183
	movl	%eax, %ecx	# tmp183, tmp184
	movl	$3435973837, %eax	#, tmp186
	imulq	%rcx, %rax	# tmp184, tmp185
	shrq	$32, %rax	#, tmp187
	shrl	$3, %eax	#, _14
# problem33.c:82:   else if (n1/10 == d1/10) {
	cmpl	%eax, %edx	# _14, _13
	jne	.L27	#,
# problem33.c:84:     *n2 = n1%10;
	movl	-4(%rbp), %ecx	# n1, tmp188
	movl	%ecx, %edx	# tmp188, tmp189
	movl	$3435973837, %eax	#, tmp191
	imulq	%rdx, %rax	# tmp189, tmp190
	shrq	$32, %rax	#, tmp192
	movl	%eax, %edx	# tmp192, _15
	shrl	$3, %edx	#, _15
	movl	%edx, %eax	# _15, tmp193
	sall	$2, %eax	#, tmp193
	addl	%edx, %eax	# _15, tmp193
	addl	%eax, %eax	# tmp194
	subl	%eax, %ecx	# tmp193, tmp188
	movl	%ecx, %edx	# tmp188, _15
# problem33.c:84:     *n2 = n1%10;
	movq	-16(%rbp), %rax	# n2, tmp195
	movl	%edx, (%rax)	# _15, *n2_22(D)
# problem33.c:85:     *d2 = d1%10;
	movl	-8(%rbp), %ecx	# d1, tmp196
	movl	%ecx, %edx	# tmp196, tmp197
	movl	$3435973837, %eax	#, tmp199
	imulq	%rdx, %rax	# tmp197, tmp198
	shrq	$32, %rax	#, tmp200
	movl	%eax, %edx	# tmp200, _16
	shrl	$3, %edx	#, _16
	movl	%edx, %eax	# _16, tmp201
	sall	$2, %eax	#, tmp201
	addl	%edx, %eax	# _16, tmp201
	addl	%eax, %eax	# tmp202
	subl	%eax, %ecx	# tmp201, tmp196
	movl	%ecx, %edx	# tmp196, _16
# problem33.c:85:     *d2 = d1%10;
	movq	-24(%rbp), %rax	# d2, tmp203
	movl	%edx, (%rax)	# _16, *d2_24(D)
# problem33.c:86:     return 1;
	movl	$1, %eax	#, _17
	jmp	.L24	#
.L27:
# problem33.c:89:     *n2 = n1;
	movq	-16(%rbp), %rax	# n2, tmp204
	movl	-4(%rbp), %edx	# n1, tmp205
	movl	%edx, (%rax)	# tmp205, *n2_22(D)
# problem33.c:90:     *d2 = d1;
	movq	-24(%rbp), %rax	# d2, tmp206
	movl	-8(%rbp), %edx	# d1, tmp207
	movl	%edx, (%rax)	# tmp207, *d2_24(D)
# problem33.c:91:     return 0;
	movl	$0, %eax	#, _17
.L24:
# problem33.c:93: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	cancel, .-cancel
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
