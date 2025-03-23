	.file	"problem33.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
# problem33.c:13: {
	la	a5,__stack_chk_guard		# tmp149,
	ld	a4, 0(a5)	# tmp241, __stack_chk_guard
	sd	a4, -24(s0)	# tmp241, D.3818
	li	a4, 0	# tmp241
# problem33.c:14:   unsigned ans_n = 1, ans_d = 1;
	li	a5,1		# tmp150,
	sw	a5,-56(s0)	# tmp150, ans_n
# problem33.c:14:   unsigned ans_n = 1, ans_d = 1;
	li	a5,1		# tmp151,
	sw	a5,-52(s0)	# tmp151, ans_d
# problem33.c:16:   for (i = 11; i < 100; i++) {
	li	a5,11		# tmp152,
	sw	a5,-48(s0)	# tmp152, i
# problem33.c:16:   for (i = 11; i < 100; i++) {
	j	.L2		#
.L12:
# problem33.c:19:     if (i % 10 == 0) {
	lw	a5,-48(s0)		# tmp155, i
	mv	a4,a5	# tmp154, tmp155
	li	a5,10		# tmp157,
	remuw	a5,a4,a5	# tmp157, tmp156, tmp154
	sext.w	a5,a5	# _1, tmp156
# problem33.c:19:     if (i % 10 == 0) {
	beq	a5,zero,.L15	#, _1,,
# problem33.c:23:     for (j = 11; j < i; j++) {
	li	a5,11		# tmp158,
	sw	a5,-44(s0)	# tmp158, j
# problem33.c:23:     for (j = 11; j < i; j++) {
	j	.L5		#
.L11:
# problem33.c:27:       if (j % 10 == 0) {
	lw	a5,-44(s0)		# tmp161, j
	mv	a4,a5	# tmp160, tmp161
	li	a5,10		# tmp163,
	remuw	a5,a4,a5	# tmp163, tmp162, tmp160
	sext.w	a5,a5	# _2, tmp162
# problem33.c:27:       if (j % 10 == 0) {
	beq	a5,zero,.L16	#, _2,,
# problem33.c:31:       if ((g = gcd(i, j)) == 1) {
	lw	a4,-44(s0)		# tmp164, j
	lw	a5,-48(s0)		# tmp165, i
	mv	a1,a4	#, tmp164
	mv	a0,a5	#, tmp165
	call	gcd		#
	mv	a5,a0	# tmp166,
	sw	a5,-40(s0)	# tmp166, g
# problem33.c:31:       if ((g = gcd(i, j)) == 1) {
	lw	a5,-40(s0)		# tmp168, g
	sext.w	a4,a5	# tmp169, tmp167
	li	a5,1		# tmp170,
	beq	a4,a5,.L17	#, tmp169, tmp170,
# problem33.c:35:       n = j/g;
	lw	a5,-44(s0)		# tmp174, j
	mv	a4,a5	# tmp173, tmp174
	lw	a5,-40(s0)		# tmp176, g
	divuw	a5,a4,a5	# tmp175, tmp172, tmp173
	sw	a5,-36(s0)	# tmp172, n
# problem33.c:36:       d = i/g;
	lw	a5,-48(s0)		# tmp180, i
	mv	a4,a5	# tmp179, tmp180
	lw	a5,-40(s0)		# tmp182, g
	divuw	a5,a4,a5	# tmp181, tmp178, tmp179
	sw	a5,-32(s0)	# tmp178, d
# problem33.c:39:       if (cancel(j, i, &n2, &d2)) {
	addi	a3,s0,-60	#, tmp183,
	addi	a2,s0,-64	#, tmp184,
	lw	a4,-48(s0)		# tmp185, i
	lw	a5,-44(s0)		# tmp186, j
	mv	a1,a4	#, tmp185
	mv	a0,a5	#, tmp186
	call	cancel		#
	mv	a5,a0	# tmp187,
# problem33.c:39:       if (cancel(j, i, &n2, &d2)) {
	beq	a5,zero,.L10	#, _3,,
# problem33.c:40:         unsigned g2 = gcd(n2, d2);
	lw	a5,-64(s0)		# n2.0_4, n2
	lw	a4,-60(s0)		# d2.1_5, d2
	mv	a1,a4	#, d2.1_5
	mv	a0,a5	#, n2.0_4
	call	gcd		#
	mv	a5,a0	# tmp188,
	sw	a5,-28(s0)	# tmp188, g2
# problem33.c:41:         n2 /= g2; d2 /= g2;
	lw	a5,-64(s0)		# n2.2_6, n2
	lw	a4,-28(s0)		# tmp192, g2
	divuw	a5,a5,a4	# tmp191, tmp190, n2.2_6
	sext.w	a5,a5	# _7, tmp190
	sw	a5,-64(s0)	# _7, n2
# problem33.c:41:         n2 /= g2; d2 /= g2;
	lw	a5,-60(s0)		# d2.3_8, d2
	lw	a4,-28(s0)		# tmp196, g2
	divuw	a5,a5,a4	# tmp195, tmp194, d2.3_8
	sext.w	a5,a5	# _9, tmp194
	sw	a5,-60(s0)	# _9, d2
# problem33.c:42:         if (n == n2 && d == d2) {
	lw	a4,-64(s0)		# n2.4_10, n2
# problem33.c:42:         if (n == n2 && d == d2) {
	lw	a5,-36(s0)		# tmp198, n
	sext.w	a5,a5	# tmp199, tmp197
	bne	a5,a4,.L10	#, tmp199, tmp200,
# problem33.c:42:         if (n == n2 && d == d2) {
	lw	a4,-60(s0)		# d2.5_11, d2
# problem33.c:42:         if (n == n2 && d == d2) {
	lw	a5,-32(s0)		# tmp202, d
	sext.w	a5,a5	# tmp203, tmp201
	bne	a5,a4,.L10	#, tmp203, tmp204,
# problem33.c:43:           ans_n *= n;
	lw	a5,-56(s0)		# tmp207, ans_n
	mv	a4,a5	# tmp206, tmp207
	lw	a5,-36(s0)		# tmp209, n
	mulw	a5,a4,a5	# tmp205, tmp206, tmp208
	sw	a5,-56(s0)	# tmp205, ans_n
# problem33.c:44:           ans_d *= d;
	lw	a5,-52(s0)		# tmp212, ans_d
	mv	a4,a5	# tmp211, tmp212
	lw	a5,-32(s0)		# tmp214, d
	mulw	a5,a4,a5	# tmp210, tmp211, tmp213
	sw	a5,-52(s0)	# tmp210, ans_d
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
	lw	a5,-44(s0)		# tmp217, j
	addiw	a5,a5,1	#, tmp215, tmp216
	sw	a5,-44(s0)	# tmp215, j
.L5:
# problem33.c:23:     for (j = 11; j < i; j++) {
	lw	a5,-44(s0)		# tmp219, j
	mv	a4,a5	# tmp218, tmp219
	lw	a5,-48(s0)		# tmp221, i
	sext.w	a4,a4	# tmp222, tmp218
	sext.w	a5,a5	# tmp223, tmp220
	bltu	a4,a5,.L11	#, tmp222, tmp223,
	j	.L4		#
.L15:
# problem33.c:20:       continue;
	nop	
.L4:
# problem33.c:16:   for (i = 11; i < 100; i++) {
	lw	a5,-48(s0)		# tmp226, i
	addiw	a5,a5,1	#, tmp224, tmp225
	sw	a5,-48(s0)	# tmp224, i
.L2:
# problem33.c:16:   for (i = 11; i < 100; i++) {
	lw	a5,-48(s0)		# tmp228, i
	sext.w	a4,a5	# tmp229, tmp227
	li	a5,99		# tmp230,
	bleu	a4,a5,.L12	#, tmp229, tmp230,
# problem33.c:49:   printf("%u\n", ans_d / gcd(ans_n, ans_d));
	lw	a4,-52(s0)		# tmp231, ans_d
	lw	a5,-56(s0)		# tmp232, ans_n
	mv	a1,a4	#, tmp231
	mv	a0,a5	#, tmp232
	call	gcd		#
	mv	a5,a0	# tmp233,
	sext.w	a5,a5	# _12, tmp233
# problem33.c:49:   printf("%u\n", ans_d / gcd(ans_n, ans_d));
	lw	a4,-52(s0)		# tmp237, ans_d
	divuw	a5,a4,a5	# _12, tmp235, tmp236
	sext.w	a5,a5	# _13, tmp235
	mv	a1,a5	#, _13
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem33.c:50:   return 0;
	li	a5,0		# _38,
# problem33.c:51: }
	mv	a4,a5	# <retval>, _38
	la	a5,__stack_chk_guard		# tmp239,
	ld	a3, -24(s0)	# tmp242, D.3818
	ld	a5, 0(a5)	# tmp240, __stack_chk_guard
	xor	a5, a3, a5	# tmp240, tmp242
	li	a3, 0	# tmp242
	beq	a5,zero,.L14	#, tmp240,,
	call	__stack_chk_fail@plt	#
.L14:
	mv	a0,a4	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	1
	.type	gcd, @function
gcd:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp136, a
	mv	a4,a1	# tmp138, b
	sw	a5,-36(s0)	# tmp137, a
	mv	a5,a4	# tmp139, tmp138
	sw	a5,-40(s0)	# tmp139, b
# problem33.c:56:   while ((r = a % b) != 0) {
	j	.L19		#
.L20:
# problem33.c:57:     a = b; b = r;
	lw	a5,-40(s0)		# tmp140, b
	sw	a5,-36(s0)	# tmp140, a
# problem33.c:57:     a = b; b = r;
	lw	a5,-20(s0)		# tmp141, r
	sw	a5,-40(s0)	# tmp141, b
.L19:
# problem33.c:56:   while ((r = a % b) != 0) {
	lw	a5,-36(s0)		# tmp144, a
	mv	a4,a5	# tmp143, tmp144
	lw	a5,-40(s0)		# tmp147, b
	remuw	a5,a4,a5	# tmp146, tmp145, tmp143
	sw	a5,-20(s0)	# tmp145, r
# problem33.c:56:   while ((r = a % b) != 0) {
	lw	a5,-20(s0)		# tmp149, r
	sext.w	a5,a5	# tmp150, tmp148
	bne	a5,zero,.L20	#, tmp150,,
# problem33.c:59:   return b;
	lw	a5,-40(s0)		# _6, b
# problem33.c:60: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	gcd, .-gcd
	.align	1
	.type	cancel, @function
cancel:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp152, n1
	mv	a4,a1	# tmp154, d1
	sd	a2,-32(s0)	# n2, n2
	sd	a3,-40(s0)	# d2, d2
	sw	a5,-20(s0)	# tmp153, n1
	mv	a5,a4	# tmp155, tmp154
	sw	a5,-24(s0)	# tmp155, d1
# problem33.c:64:   if (n1%10 == d1%10) {
	lw	a5,-20(s0)		# tmp158, n1
	mv	a4,a5	# tmp157, tmp158
	li	a5,10		# tmp160,
	remuw	a5,a4,a5	# tmp160, tmp159, tmp157
	sext.w	a4,a5	# _1, tmp159
# problem33.c:64:   if (n1%10 == d1%10) {
	lw	a5,-24(s0)		# tmp163, d1
	mv	a3,a5	# tmp162, tmp163
	li	a5,10		# tmp165,
	remuw	a5,a3,a5	# tmp165, tmp164, tmp162
	sext.w	a5,a5	# _2, tmp164
# problem33.c:64:   if (n1%10 == d1%10) {
	bne	a4,a5,.L23	#, tmp166, tmp167,
# problem33.c:66:     *n2 = n1/10;
	lw	a5,-20(s0)		# tmp170, n1
	mv	a4,a5	# tmp169, tmp170
	li	a5,10		# tmp172,
	divuw	a5,a4,a5	# tmp172, tmp171, tmp169
	sext.w	a4,a5	# _3, tmp171
# problem33.c:66:     *n2 = n1/10;
	ld	a5,-32(s0)		# tmp173, n2
	sw	a4,0(a5)	# _3, *n2_22(D)
# problem33.c:67:     *d2 = d1/10;
	lw	a5,-24(s0)		# tmp176, d1
	mv	a4,a5	# tmp175, tmp176
	li	a5,10		# tmp178,
	divuw	a5,a4,a5	# tmp178, tmp177, tmp175
	sext.w	a4,a5	# _4, tmp177
# problem33.c:67:     *d2 = d1/10;
	ld	a5,-40(s0)		# tmp179, d2
	sw	a4,0(a5)	# _4, *d2_24(D)
# problem33.c:68:     return 1;
	li	a5,1		# _17,
	j	.L24		#
.L23:
# problem33.c:70:   else if (n1%10 == d1/10) {
	lw	a5,-20(s0)		# tmp182, n1
	mv	a4,a5	# tmp181, tmp182
	li	a5,10		# tmp184,
	remuw	a5,a4,a5	# tmp184, tmp183, tmp181
	sext.w	a4,a5	# _5, tmp183
# problem33.c:70:   else if (n1%10 == d1/10) {
	lw	a5,-24(s0)		# tmp187, d1
	mv	a3,a5	# tmp186, tmp187
	li	a5,10		# tmp189,
	divuw	a5,a3,a5	# tmp189, tmp188, tmp186
	sext.w	a5,a5	# _6, tmp188
# problem33.c:70:   else if (n1%10 == d1/10) {
	bne	a4,a5,.L25	#, tmp190, tmp191,
# problem33.c:72:     *n2 = n1/10;
	lw	a5,-20(s0)		# tmp194, n1
	mv	a4,a5	# tmp193, tmp194
	li	a5,10		# tmp196,
	divuw	a5,a4,a5	# tmp196, tmp195, tmp193
	sext.w	a4,a5	# _7, tmp195
# problem33.c:72:     *n2 = n1/10;
	ld	a5,-32(s0)		# tmp197, n2
	sw	a4,0(a5)	# _7, *n2_22(D)
# problem33.c:73:     *d2 = d1%10;
	lw	a5,-24(s0)		# tmp200, d1
	mv	a4,a5	# tmp199, tmp200
	li	a5,10		# tmp202,
	remuw	a5,a4,a5	# tmp202, tmp201, tmp199
	sext.w	a4,a5	# _8, tmp201
# problem33.c:73:     *d2 = d1%10;
	ld	a5,-40(s0)		# tmp203, d2
	sw	a4,0(a5)	# _8, *d2_24(D)
# problem33.c:74:     return 1;
	li	a5,1		# _17,
	j	.L24		#
.L25:
# problem33.c:76:   else if (n1/10 == d1%10) {
	lw	a5,-20(s0)		# tmp206, n1
	mv	a4,a5	# tmp205, tmp206
	li	a5,10		# tmp208,
	divuw	a5,a4,a5	# tmp208, tmp207, tmp205
	sext.w	a4,a5	# _9, tmp207
# problem33.c:76:   else if (n1/10 == d1%10) {
	lw	a5,-24(s0)		# tmp211, d1
	mv	a3,a5	# tmp210, tmp211
	li	a5,10		# tmp213,
	remuw	a5,a3,a5	# tmp213, tmp212, tmp210
	sext.w	a5,a5	# _10, tmp212
# problem33.c:76:   else if (n1/10 == d1%10) {
	bne	a4,a5,.L26	#, tmp214, tmp215,
# problem33.c:78:     *n2 = n1%10;
	lw	a5,-20(s0)		# tmp218, n1
	mv	a4,a5	# tmp217, tmp218
	li	a5,10		# tmp220,
	remuw	a5,a4,a5	# tmp220, tmp219, tmp217
	sext.w	a4,a5	# _11, tmp219
# problem33.c:78:     *n2 = n1%10;
	ld	a5,-32(s0)		# tmp221, n2
	sw	a4,0(a5)	# _11, *n2_22(D)
# problem33.c:79:     *d2 = d1/10;
	lw	a5,-24(s0)		# tmp224, d1
	mv	a4,a5	# tmp223, tmp224
	li	a5,10		# tmp226,
	divuw	a5,a4,a5	# tmp226, tmp225, tmp223
	sext.w	a4,a5	# _12, tmp225
# problem33.c:79:     *d2 = d1/10;
	ld	a5,-40(s0)		# tmp227, d2
	sw	a4,0(a5)	# _12, *d2_24(D)
# problem33.c:80:     return 1;
	li	a5,1		# _17,
	j	.L24		#
.L26:
# problem33.c:82:   else if (n1/10 == d1/10) {
	lw	a5,-20(s0)		# tmp230, n1
	mv	a4,a5	# tmp229, tmp230
	li	a5,10		# tmp232,
	divuw	a5,a4,a5	# tmp232, tmp231, tmp229
	sext.w	a4,a5	# _13, tmp231
# problem33.c:82:   else if (n1/10 == d1/10) {
	lw	a5,-24(s0)		# tmp235, d1
	mv	a3,a5	# tmp234, tmp235
	li	a5,10		# tmp237,
	divuw	a5,a3,a5	# tmp237, tmp236, tmp234
	sext.w	a5,a5	# _14, tmp236
# problem33.c:82:   else if (n1/10 == d1/10) {
	bne	a4,a5,.L27	#, tmp238, tmp239,
# problem33.c:84:     *n2 = n1%10;
	lw	a5,-20(s0)		# tmp242, n1
	mv	a4,a5	# tmp241, tmp242
	li	a5,10		# tmp244,
	remuw	a5,a4,a5	# tmp244, tmp243, tmp241
	sext.w	a4,a5	# _15, tmp243
# problem33.c:84:     *n2 = n1%10;
	ld	a5,-32(s0)		# tmp245, n2
	sw	a4,0(a5)	# _15, *n2_22(D)
# problem33.c:85:     *d2 = d1%10;
	lw	a5,-24(s0)		# tmp248, d1
	mv	a4,a5	# tmp247, tmp248
	li	a5,10		# tmp250,
	remuw	a5,a4,a5	# tmp250, tmp249, tmp247
	sext.w	a4,a5	# _16, tmp249
# problem33.c:85:     *d2 = d1%10;
	ld	a5,-40(s0)		# tmp251, d2
	sw	a4,0(a5)	# _16, *d2_24(D)
# problem33.c:86:     return 1;
	li	a5,1		# _17,
	j	.L24		#
.L27:
# problem33.c:89:     *n2 = n1;
	ld	a5,-32(s0)		# tmp252, n2
	lw	a4,-20(s0)		# tmp253, n1
	sw	a4,0(a5)	# tmp253, *n2_22(D)
# problem33.c:90:     *d2 = d1;
	ld	a5,-40(s0)		# tmp254, d2
	lw	a4,-24(s0)		# tmp255, d1
	sw	a4,0(a5)	# tmp255, *d2_24(D)
# problem33.c:91:     return 0;
	li	a5,0		# _17,
.L24:
# problem33.c:93: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2:
	.size	cancel, .-cancel
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
