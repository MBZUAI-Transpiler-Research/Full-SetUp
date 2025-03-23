	.file	"problem33.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%u\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
# problem33.c:13: {
	la	a5,__stack_chk_guard		# tmp87,
	ld	a4, 0(a5)	# tmp179, __stack_chk_guard
	sd	a4, -24(s0)	# tmp179, D.3000
	li	a4, 0	# tmp179
# problem33.c:14:   unsigned ans_n = 1, ans_d = 1;
	li	a5,1		# tmp88,
	sw	a5,-56(s0)	# tmp88, ans_n
# problem33.c:14:   unsigned ans_n = 1, ans_d = 1;
	li	a5,1		# tmp89,
	sw	a5,-52(s0)	# tmp89, ans_d
# problem33.c:16:   for (i = 11; i < 100; i++) {
	li	a5,11		# tmp90,
	sw	a5,-48(s0)	# tmp90, i
# problem33.c:16:   for (i = 11; i < 100; i++) {
	j	.L2		#
.L12:
# problem33.c:19:     if (i % 10 == 0) {
	lw	a5,-48(s0)		# tmp93, i
	mv	a4,a5	# tmp92, tmp93
	li	a5,10		# tmp95,
	remuw	a5,a4,a5	# tmp95, tmp94, tmp92
	sext.w	a5,a5	# _1, tmp94
# problem33.c:19:     if (i % 10 == 0) {
	beq	a5,zero,.L15	#, _1,,
# problem33.c:23:     for (j = 11; j < i; j++) {
	li	a5,11		# tmp96,
	sw	a5,-44(s0)	# tmp96, j
# problem33.c:23:     for (j = 11; j < i; j++) {
	j	.L5		#
.L11:
# problem33.c:27:       if (j % 10 == 0) {
	lw	a5,-44(s0)		# tmp99, j
	mv	a4,a5	# tmp98, tmp99
	li	a5,10		# tmp101,
	remuw	a5,a4,a5	# tmp101, tmp100, tmp98
	sext.w	a5,a5	# _2, tmp100
# problem33.c:27:       if (j % 10 == 0) {
	beq	a5,zero,.L16	#, _2,,
# problem33.c:31:       if ((g = gcd(i, j)) == 1) {
	lw	a4,-44(s0)		# tmp102, j
	lw	a5,-48(s0)		# tmp103, i
	mv	a1,a4	#, tmp102
	mv	a0,a5	#, tmp103
	call	gcd		#
	mv	a5,a0	# tmp104,
	sw	a5,-40(s0)	# tmp104, g
# problem33.c:31:       if ((g = gcd(i, j)) == 1) {
	lw	a5,-40(s0)		# tmp106, g
	sext.w	a4,a5	# tmp107, tmp105
	li	a5,1		# tmp108,
	beq	a4,a5,.L17	#, tmp107, tmp108,
# problem33.c:35:       n = j/g;
	lw	a5,-44(s0)		# tmp112, j
	mv	a4,a5	# tmp111, tmp112
	lw	a5,-40(s0)		# tmp114, g
	divuw	a5,a4,a5	# tmp113, tmp110, tmp111
	sw	a5,-36(s0)	# tmp110, n
# problem33.c:36:       d = i/g;
	lw	a5,-48(s0)		# tmp118, i
	mv	a4,a5	# tmp117, tmp118
	lw	a5,-40(s0)		# tmp120, g
	divuw	a5,a4,a5	# tmp119, tmp116, tmp117
	sw	a5,-32(s0)	# tmp116, d
# problem33.c:39:       if (cancel(j, i, &n2, &d2)) {
	addi	a3,s0,-60	#, tmp121,
	addi	a2,s0,-64	#, tmp122,
	lw	a4,-48(s0)		# tmp123, i
	lw	a5,-44(s0)		# tmp124, j
	mv	a1,a4	#, tmp123
	mv	a0,a5	#, tmp124
	call	cancel		#
	mv	a5,a0	# tmp125,
# problem33.c:39:       if (cancel(j, i, &n2, &d2)) {
	beq	a5,zero,.L10	#, _3,,
# problem33.c:40:         unsigned g2 = gcd(n2, d2);
	lw	a5,-64(s0)		# n2.0_4, n2
	lw	a4,-60(s0)		# d2.1_5, d2
	mv	a1,a4	#, d2.1_5
	mv	a0,a5	#, n2.0_4
	call	gcd		#
	mv	a5,a0	# tmp126,
	sw	a5,-28(s0)	# tmp126, g2
# problem33.c:41:         n2 /= g2; d2 /= g2;
	lw	a5,-64(s0)		# n2.2_6, n2
	lw	a4,-28(s0)		# tmp130, g2
	divuw	a5,a5,a4	# tmp129, tmp128, n2.2_6
	sext.w	a5,a5	# _7, tmp128
	sw	a5,-64(s0)	# _7, n2
# problem33.c:41:         n2 /= g2; d2 /= g2;
	lw	a5,-60(s0)		# d2.3_8, d2
	lw	a4,-28(s0)		# tmp134, g2
	divuw	a5,a5,a4	# tmp133, tmp132, d2.3_8
	sext.w	a5,a5	# _9, tmp132
	sw	a5,-60(s0)	# _9, d2
# problem33.c:42:         if (n == n2 && d == d2) {
	lw	a4,-64(s0)		# n2.4_10, n2
# problem33.c:42:         if (n == n2 && d == d2) {
	lw	a5,-36(s0)		# tmp136, n
	sext.w	a5,a5	# tmp137, tmp135
	bne	a5,a4,.L10	#, tmp137, tmp138,
# problem33.c:42:         if (n == n2 && d == d2) {
	lw	a4,-60(s0)		# d2.5_11, d2
# problem33.c:42:         if (n == n2 && d == d2) {
	lw	a5,-32(s0)		# tmp140, d
	sext.w	a5,a5	# tmp141, tmp139
	bne	a5,a4,.L10	#, tmp141, tmp142,
# problem33.c:43:           ans_n *= n;
	lw	a5,-56(s0)		# tmp145, ans_n
	mv	a4,a5	# tmp144, tmp145
	lw	a5,-36(s0)		# tmp147, n
	mulw	a5,a4,a5	# tmp143, tmp144, tmp146
	sw	a5,-56(s0)	# tmp143, ans_n
# problem33.c:44:           ans_d *= d;
	lw	a5,-52(s0)		# tmp150, ans_d
	mv	a4,a5	# tmp149, tmp150
	lw	a5,-32(s0)		# tmp152, d
	mulw	a5,a4,a5	# tmp148, tmp149, tmp151
	sw	a5,-52(s0)	# tmp148, ans_d
	j	.L10		#
.L16:
# problem33.c:28:         continue;
	nop	
	j	.L10		#
.L17:
# problem33.c:32:         continue;
	nop	
.L10:
# problem33.c:23:     for (j = 11; j < i; j++) {
	lw	a5,-44(s0)		# tmp155, j
	addiw	a5,a5,1	#, tmp153, tmp154
	sw	a5,-44(s0)	# tmp153, j
.L5:
# problem33.c:23:     for (j = 11; j < i; j++) {
	lw	a5,-44(s0)		# tmp157, j
	mv	a4,a5	# tmp156, tmp157
	lw	a5,-48(s0)		# tmp159, i
	sext.w	a4,a4	# tmp160, tmp156
	sext.w	a5,a5	# tmp161, tmp158
	bltu	a4,a5,.L11	#, tmp160, tmp161,
	j	.L4		#
.L15:
# problem33.c:20:       continue;
	nop	
.L4:
# problem33.c:16:   for (i = 11; i < 100; i++) {
	lw	a5,-48(s0)		# tmp164, i
	addiw	a5,a5,1	#, tmp162, tmp163
	sw	a5,-48(s0)	# tmp162, i
.L2:
# problem33.c:16:   for (i = 11; i < 100; i++) {
	lw	a5,-48(s0)		# tmp166, i
	sext.w	a4,a5	# tmp167, tmp165
	li	a5,99		# tmp168,
	bleu	a4,a5,.L12	#, tmp167, tmp168,
# problem33.c:49:   printf("%u\n", ans_d / gcd(ans_n, ans_d));
	lw	a4,-52(s0)		# tmp169, ans_d
	lw	a5,-56(s0)		# tmp170, ans_n
	mv	a1,a4	#, tmp169
	mv	a0,a5	#, tmp170
	call	gcd		#
	mv	a5,a0	# tmp171,
	sext.w	a5,a5	# _12, tmp171
# problem33.c:49:   printf("%u\n", ans_d / gcd(ans_n, ans_d));
	lw	a4,-52(s0)		# tmp175, ans_d
	divuw	a5,a4,a5	# _12, tmp173, tmp174
	sext.w	a5,a5	# _13, tmp173
	mv	a1,a5	#, _13
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem33.c:50:   return 0;
	li	a5,0		# _38,
# problem33.c:51: }
	mv	a4,a5	# <retval>, _38
	la	a5,__stack_chk_guard		# tmp177,
	ld	a3, -24(s0)	# tmp180, D.3000
	ld	a5, 0(a5)	# tmp178, __stack_chk_guard
	xor	a5, a3, a5	# tmp178, tmp180
	li	a3, 0	# tmp180
	beq	a5,zero,.L14	#, tmp178,,
	call	__stack_chk_fail@plt	#
.L14:
	mv	a0,a4	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	main, .-main
	.align	1
	.type	gcd, @function
gcd:
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp74, a
	mv	a4,a1	# tmp76, b
	sw	a5,-36(s0)	# tmp75, a
	mv	a5,a4	# tmp77, tmp76
	sw	a5,-40(s0)	# tmp77, b
# problem33.c:56:   while ((r = a % b) != 0) {
	j	.L19		#
.L20:
# problem33.c:57:     a = b; b = r;
	lw	a5,-40(s0)		# tmp78, b
	sw	a5,-36(s0)	# tmp78, a
# problem33.c:57:     a = b; b = r;
	lw	a5,-20(s0)		# tmp79, r
	sw	a5,-40(s0)	# tmp79, b
.L19:
# problem33.c:56:   while ((r = a % b) != 0) {
	lw	a5,-36(s0)		# tmp82, a
	mv	a4,a5	# tmp81, tmp82
	lw	a5,-40(s0)		# tmp85, b
	remuw	a5,a4,a5	# tmp84, tmp83, tmp81
	sw	a5,-20(s0)	# tmp83, r
# problem33.c:56:   while ((r = a % b) != 0) {
	lw	a5,-20(s0)		# tmp87, r
	sext.w	a5,a5	# tmp88, tmp86
	bne	a5,zero,.L20	#, tmp88,,
# problem33.c:59:   return b;
	lw	a5,-40(s0)		# _6, b
# problem33.c:60: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	gcd, .-gcd
	.align	1
	.type	cancel, @function
cancel:
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp90, n1
	mv	a4,a1	# tmp92, d1
	sd	a2,-32(s0)	# n2, n2
	sd	a3,-40(s0)	# d2, d2
	sw	a5,-20(s0)	# tmp91, n1
	mv	a5,a4	# tmp93, tmp92
	sw	a5,-24(s0)	# tmp93, d1
# problem33.c:64:   if (n1%10 == d1%10) {
	lw	a5,-20(s0)		# tmp96, n1
	mv	a4,a5	# tmp95, tmp96
	li	a5,10		# tmp98,
	remuw	a5,a4,a5	# tmp98, tmp97, tmp95
	sext.w	a4,a5	# _1, tmp97
# problem33.c:64:   if (n1%10 == d1%10) {
	lw	a5,-24(s0)		# tmp101, d1
	mv	a3,a5	# tmp100, tmp101
	li	a5,10		# tmp103,
	remuw	a5,a3,a5	# tmp103, tmp102, tmp100
	sext.w	a5,a5	# _2, tmp102
# problem33.c:64:   if (n1%10 == d1%10) {
	bne	a4,a5,.L23	#, tmp104, tmp105,
# problem33.c:66:     *n2 = n1/10;
	lw	a5,-20(s0)		# tmp108, n1
	mv	a4,a5	# tmp107, tmp108
	li	a5,10		# tmp110,
	divuw	a5,a4,a5	# tmp110, tmp109, tmp107
	sext.w	a4,a5	# _3, tmp109
# problem33.c:66:     *n2 = n1/10;
	ld	a5,-32(s0)		# tmp111, n2
	sw	a4,0(a5)	# _3, *n2_22(D)
# problem33.c:67:     *d2 = d1/10;
	lw	a5,-24(s0)		# tmp114, d1
	mv	a4,a5	# tmp113, tmp114
	li	a5,10		# tmp116,
	divuw	a5,a4,a5	# tmp116, tmp115, tmp113
	sext.w	a4,a5	# _4, tmp115
# problem33.c:67:     *d2 = d1/10;
	ld	a5,-40(s0)		# tmp117, d2
	sw	a4,0(a5)	# _4, *d2_24(D)
# problem33.c:68:     return 1;
	li	a5,1		# _17,
	j	.L24		#
.L23:
# problem33.c:70:   else if (n1%10 == d1/10) {
	lw	a5,-20(s0)		# tmp120, n1
	mv	a4,a5	# tmp119, tmp120
	li	a5,10		# tmp122,
	remuw	a5,a4,a5	# tmp122, tmp121, tmp119
	sext.w	a4,a5	# _5, tmp121
# problem33.c:70:   else if (n1%10 == d1/10) {
	lw	a5,-24(s0)		# tmp125, d1
	mv	a3,a5	# tmp124, tmp125
	li	a5,10		# tmp127,
	divuw	a5,a3,a5	# tmp127, tmp126, tmp124
	sext.w	a5,a5	# _6, tmp126
# problem33.c:70:   else if (n1%10 == d1/10) {
	bne	a4,a5,.L25	#, tmp128, tmp129,
# problem33.c:72:     *n2 = n1/10;
	lw	a5,-20(s0)		# tmp132, n1
	mv	a4,a5	# tmp131, tmp132
	li	a5,10		# tmp134,
	divuw	a5,a4,a5	# tmp134, tmp133, tmp131
	sext.w	a4,a5	# _7, tmp133
# problem33.c:72:     *n2 = n1/10;
	ld	a5,-32(s0)		# tmp135, n2
	sw	a4,0(a5)	# _7, *n2_22(D)
# problem33.c:73:     *d2 = d1%10;
	lw	a5,-24(s0)		# tmp138, d1
	mv	a4,a5	# tmp137, tmp138
	li	a5,10		# tmp140,
	remuw	a5,a4,a5	# tmp140, tmp139, tmp137
	sext.w	a4,a5	# _8, tmp139
# problem33.c:73:     *d2 = d1%10;
	ld	a5,-40(s0)		# tmp141, d2
	sw	a4,0(a5)	# _8, *d2_24(D)
# problem33.c:74:     return 1;
	li	a5,1		# _17,
	j	.L24		#
.L25:
# problem33.c:76:   else if (n1/10 == d1%10) {
	lw	a5,-20(s0)		# tmp144, n1
	mv	a4,a5	# tmp143, tmp144
	li	a5,10		# tmp146,
	divuw	a5,a4,a5	# tmp146, tmp145, tmp143
	sext.w	a4,a5	# _9, tmp145
# problem33.c:76:   else if (n1/10 == d1%10) {
	lw	a5,-24(s0)		# tmp149, d1
	mv	a3,a5	# tmp148, tmp149
	li	a5,10		# tmp151,
	remuw	a5,a3,a5	# tmp151, tmp150, tmp148
	sext.w	a5,a5	# _10, tmp150
# problem33.c:76:   else if (n1/10 == d1%10) {
	bne	a4,a5,.L26	#, tmp152, tmp153,
# problem33.c:78:     *n2 = n1%10;
	lw	a5,-20(s0)		# tmp156, n1
	mv	a4,a5	# tmp155, tmp156
	li	a5,10		# tmp158,
	remuw	a5,a4,a5	# tmp158, tmp157, tmp155
	sext.w	a4,a5	# _11, tmp157
# problem33.c:78:     *n2 = n1%10;
	ld	a5,-32(s0)		# tmp159, n2
	sw	a4,0(a5)	# _11, *n2_22(D)
# problem33.c:79:     *d2 = d1/10;
	lw	a5,-24(s0)		# tmp162, d1
	mv	a4,a5	# tmp161, tmp162
	li	a5,10		# tmp164,
	divuw	a5,a4,a5	# tmp164, tmp163, tmp161
	sext.w	a4,a5	# _12, tmp163
# problem33.c:79:     *d2 = d1/10;
	ld	a5,-40(s0)		# tmp165, d2
	sw	a4,0(a5)	# _12, *d2_24(D)
# problem33.c:80:     return 1;
	li	a5,1		# _17,
	j	.L24		#
.L26:
# problem33.c:82:   else if (n1/10 == d1/10) {
	lw	a5,-20(s0)		# tmp168, n1
	mv	a4,a5	# tmp167, tmp168
	li	a5,10		# tmp170,
	divuw	a5,a4,a5	# tmp170, tmp169, tmp167
	sext.w	a4,a5	# _13, tmp169
# problem33.c:82:   else if (n1/10 == d1/10) {
	lw	a5,-24(s0)		# tmp173, d1
	mv	a3,a5	# tmp172, tmp173
	li	a5,10		# tmp175,
	divuw	a5,a3,a5	# tmp175, tmp174, tmp172
	sext.w	a5,a5	# _14, tmp174
# problem33.c:82:   else if (n1/10 == d1/10) {
	bne	a4,a5,.L27	#, tmp176, tmp177,
# problem33.c:84:     *n2 = n1%10;
	lw	a5,-20(s0)		# tmp180, n1
	mv	a4,a5	# tmp179, tmp180
	li	a5,10		# tmp182,
	remuw	a5,a4,a5	# tmp182, tmp181, tmp179
	sext.w	a4,a5	# _15, tmp181
# problem33.c:84:     *n2 = n1%10;
	ld	a5,-32(s0)		# tmp183, n2
	sw	a4,0(a5)	# _15, *n2_22(D)
# problem33.c:85:     *d2 = d1%10;
	lw	a5,-24(s0)		# tmp186, d1
	mv	a4,a5	# tmp185, tmp186
	li	a5,10		# tmp188,
	remuw	a5,a4,a5	# tmp188, tmp187, tmp185
	sext.w	a4,a5	# _16, tmp187
# problem33.c:85:     *d2 = d1%10;
	ld	a5,-40(s0)		# tmp189, d2
	sw	a4,0(a5)	# _16, *d2_24(D)
# problem33.c:86:     return 1;
	li	a5,1		# _17,
	j	.L24		#
.L27:
# problem33.c:89:     *n2 = n1;
	ld	a5,-32(s0)		# tmp190, n2
	lw	a4,-20(s0)		# tmp191, n1
	sw	a4,0(a5)	# tmp191, *n2_22(D)
# problem33.c:90:     *d2 = d1;
	ld	a5,-40(s0)		# tmp192, d2
	lw	a4,-24(s0)		# tmp193, d1
	sw	a4,0(a5)	# tmp193, *d2_24(D)
# problem33.c:91:     return 0;
	li	a5,0		# _17,
.L24:
# problem33.c:93: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	cancel, .-cancel
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
