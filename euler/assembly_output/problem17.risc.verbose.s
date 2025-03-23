	.file	"problem17.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC3:
	.string	"%u\n"
	.align	3
.LC0:
	.word	0
	.word	3
	.word	3
	.word	5
	.word	4
	.word	4
	.word	3
	.word	5
	.word	5
	.word	4
	.align	3
.LC1:
	.word	3
	.word	6
	.word	6
	.word	8
	.word	8
	.word	7
	.word	7
	.word	9
	.word	8
	.word	8
	.align	3
.LC2:
	.word	0
	.word	0
	.word	6
	.word	6
	.word	5
	.word	5
	.word	5
	.word	7
	.word	6
	.word	6
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-176	#,,
	sd	ra,168(sp)	#,
	sd	s0,160(sp)	#,
	addi	s0,sp,176	#,,
# problem17.c:9: {
	la	a5,__stack_chk_guard		# tmp104,
	ld	a4, 0(a5)	# tmp279, __stack_chk_guard
	sd	a4, -24(s0)	# tmp279, D.1935
	li	a4, 0	# tmp279
# problem17.c:11:   unsigned s1[] = { 0, 3, 3, 5, 4, 4, 3, 5, 5, 4 };
	lla	a5,.LC0	# tmp105,
	ld	a1,0(a5)		# tmp106,
	ld	a2,8(a5)		# tmp107,
	ld	a3,16(a5)		# tmp108,
	ld	a4,24(a5)		# tmp109,
	ld	a5,32(a5)		# tmp110,
	sd	a1,-144(s0)	# tmp106, s1
	sd	a2,-136(s0)	# tmp107, s1
	sd	a3,-128(s0)	# tmp108, s1
	sd	a4,-120(s0)	# tmp109, s1
	sd	a5,-112(s0)	# tmp110, s1
# problem17.c:13:   unsigned s2[] = { 3, 6, 6, 8, 8, 7, 7, 9, 8, 8 };
	lla	a5,.LC1	# tmp111,
	ld	a1,0(a5)		# tmp112,
	ld	a2,8(a5)		# tmp113,
	ld	a3,16(a5)		# tmp114,
	ld	a4,24(a5)		# tmp115,
	ld	a5,32(a5)		# tmp116,
	sd	a1,-104(s0)	# tmp112, s2
	sd	a2,-96(s0)	# tmp113, s2
	sd	a3,-88(s0)	# tmp114, s2
	sd	a4,-80(s0)	# tmp115, s2
	sd	a5,-72(s0)	# tmp116, s2
# problem17.c:15:   unsigned s3[] = { 0, 0, 6, 6, 5, 5, 5, 7, 6, 6 };
	lla	a5,.LC2	# tmp117,
	ld	a1,0(a5)		# tmp118,
	ld	a2,8(a5)		# tmp119,
	ld	a3,16(a5)		# tmp120,
	ld	a4,24(a5)		# tmp121,
	ld	a5,32(a5)		# tmp122,
	sd	a1,-64(s0)	# tmp118, s3
	sd	a2,-56(s0)	# tmp119, s3
	sd	a3,-48(s0)	# tmp120, s3
	sd	a4,-40(s0)	# tmp121, s3
	sd	a5,-32(s0)	# tmp122, s3
# problem17.c:17:   unsigned hundred = 7;
	li	a5,7		# tmp123,
	sw	a5,-156(s0)	# tmp123, hundred
# problem17.c:18:   unsigned and = 3;
	li	a5,3		# tmp124,
	sw	a5,-152(s0)	# tmp124, and
# problem17.c:19:   unsigned thousand = 8;
	li	a5,8		# tmp125,
	sw	a5,-148(s0)	# tmp125, thousand
# problem17.c:22:   unsigned sum = 0;
	sw	zero,-164(s0)	#, sum
# problem17.c:25:   for (i = 1; i < 10; i++) {
	li	a5,1		# tmp126,
	sw	a5,-168(s0)	# tmp126, i
# problem17.c:25:   for (i = 1; i < 10; i++) {
	j	.L2		#
.L3:
# problem17.c:26:     sum += s1[i];
	lwu	a5,-168(s0)	# tmp127, i
	slli	a5,a5,2	#, tmp128, tmp127
	addi	a5,a5,-16	#, tmp283, tmp128
	add	a5,a5,s0	#, tmp128, tmp283
	lw	a5,-128(a5)		# _1, s1[i_31]
# problem17.c:26:     sum += s1[i];
	lw	a4,-164(s0)		# tmp131, sum
	addw	a5,a4,a5	# _1, tmp129, tmp130
	sw	a5,-164(s0)	# tmp129, sum
# problem17.c:25:   for (i = 1; i < 10; i++) {
	lw	a5,-168(s0)		# tmp134, i
	addiw	a5,a5,1	#, tmp132, tmp133
	sw	a5,-168(s0)	# tmp132, i
.L2:
# problem17.c:25:   for (i = 1; i < 10; i++) {
	lw	a5,-168(s0)		# tmp136, i
	sext.w	a4,a5	# tmp137, tmp135
	li	a5,9		# tmp138,
	bleu	a4,a5,.L3	#, tmp137, tmp138,
# problem17.c:29:   for (i = 0; i < 10; i++) {
	sw	zero,-168(s0)	#, i
# problem17.c:29:   for (i = 0; i < 10; i++) {
	j	.L4		#
.L5:
# problem17.c:30:     sum += s2[i];
	lwu	a5,-168(s0)	# tmp139, i
	slli	a5,a5,2	#, tmp140, tmp139
	addi	a5,a5,-16	#, tmp284, tmp140
	add	a5,a5,s0	#, tmp140, tmp284
	lw	a5,-88(a5)		# _2, s2[i_32]
# problem17.c:30:     sum += s2[i];
	lw	a4,-164(s0)		# tmp143, sum
	addw	a5,a4,a5	# _2, tmp141, tmp142
	sw	a5,-164(s0)	# tmp141, sum
# problem17.c:29:   for (i = 0; i < 10; i++) {
	lw	a5,-168(s0)		# tmp146, i
	addiw	a5,a5,1	#, tmp144, tmp145
	sw	a5,-168(s0)	# tmp144, i
.L4:
# problem17.c:29:   for (i = 0; i < 10; i++) {
	lw	a5,-168(s0)		# tmp148, i
	sext.w	a4,a5	# tmp149, tmp147
	li	a5,9		# tmp150,
	bleu	a4,a5,.L5	#, tmp149, tmp150,
# problem17.c:33:   for (i = 20; i < 100; i++) {
	li	a5,20		# tmp151,
	sw	a5,-168(s0)	# tmp151, i
# problem17.c:33:   for (i = 20; i < 100; i++) {
	j	.L6		#
.L7:
# problem17.c:34:     sum += s3[i/10] + s1[i%10];
	lw	a5,-168(s0)		# tmp154, i
	mv	a4,a5	# tmp153, tmp154
	li	a5,10		# tmp156,
	divuw	a5,a4,a5	# tmp156, tmp155, tmp153
	sext.w	a5,a5	# _3, tmp155
# problem17.c:34:     sum += s3[i/10] + s1[i%10];
	slli	a5,a5,32	#, tmp157, _3
	srli	a5,a5,32	#, tmp157, tmp157
	slli	a5,a5,2	#, tmp158, tmp157
	addi	a5,a5,-16	#, tmp285, tmp158
	add	a5,a5,s0	#, tmp158, tmp285
	lw	a4,-48(a5)		# _4, s3[_3]
# problem17.c:34:     sum += s3[i/10] + s1[i%10];
	lw	a5,-168(s0)		# tmp161, i
	mv	a3,a5	# tmp160, tmp161
	li	a5,10		# tmp163,
	remuw	a5,a3,a5	# tmp163, tmp162, tmp160
	sext.w	a5,a5	# _5, tmp162
# problem17.c:34:     sum += s3[i/10] + s1[i%10];
	slli	a5,a5,32	#, tmp164, _5
	srli	a5,a5,32	#, tmp164, tmp164
	slli	a5,a5,2	#, tmp165, tmp164
	addi	a5,a5,-16	#, tmp286, tmp165
	add	a5,a5,s0	#, tmp165, tmp286
	lw	a5,-128(a5)		# _6, s1[_5]
# problem17.c:34:     sum += s3[i/10] + s1[i%10];
	addw	a5,a4,a5	# _6, tmp166, _4
	sext.w	a5,a5	# _7, tmp166
# problem17.c:34:     sum += s3[i/10] + s1[i%10];
	lw	a4,-164(s0)		# tmp169, sum
	addw	a5,a4,a5	# _7, tmp167, tmp168
	sw	a5,-164(s0)	# tmp167, sum
# problem17.c:33:   for (i = 20; i < 100; i++) {
	lw	a5,-168(s0)		# tmp172, i
	addiw	a5,a5,1	#, tmp170, tmp171
	sw	a5,-168(s0)	# tmp170, i
.L6:
# problem17.c:33:   for (i = 20; i < 100; i++) {
	lw	a5,-168(s0)		# tmp174, i
	sext.w	a4,a5	# tmp175, tmp173
	li	a5,99		# tmp176,
	bleu	a4,a5,.L7	#, tmp175, tmp176,
# problem17.c:37:   for (i = 1; i < 10; i++) {
	li	a5,1		# tmp177,
	sw	a5,-168(s0)	# tmp177, i
# problem17.c:37:   for (i = 1; i < 10; i++) {
	j	.L8		#
.L15:
# problem17.c:41:     sum += s1[i] + hundred;
	lwu	a5,-168(s0)	# tmp178, i
	slli	a5,a5,2	#, tmp179, tmp178
	addi	a5,a5,-16	#, tmp287, tmp179
	add	a5,a5,s0	#, tmp179, tmp287
	lw	a5,-128(a5)		# _8, s1[i_34]
# problem17.c:41:     sum += s1[i] + hundred;
	lw	a4,-156(s0)		# tmp182, hundred
	addw	a5,a4,a5	# _8, tmp180, tmp181
	sext.w	a5,a5	# _9, tmp180
# problem17.c:41:     sum += s1[i] + hundred;
	lw	a4,-164(s0)		# tmp185, sum
	addw	a5,a4,a5	# _9, tmp183, tmp184
	sw	a5,-164(s0)	# tmp183, sum
# problem17.c:43:     for (j = 1; j < 10; j++) {
	li	a5,1		# tmp186,
	sw	a5,-160(s0)	# tmp186, j
# problem17.c:43:     for (j = 1; j < 10; j++) {
	j	.L9		#
.L10:
# problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	lwu	a5,-168(s0)	# tmp187, i
	slli	a5,a5,2	#, tmp188, tmp187
	addi	a5,a5,-16	#, tmp288, tmp188
	add	a5,a5,s0	#, tmp188, tmp288
	lw	a5,-128(a5)		# _10, s1[i_34]
# problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	lw	a4,-156(s0)		# tmp191, hundred
	addw	a5,a4,a5	# _10, tmp189, tmp190
	sext.w	a5,a5	# _11, tmp189
# problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	lw	a4,-152(s0)		# tmp194, and
	addw	a5,a4,a5	# _11, tmp192, tmp193
	sext.w	a4,a5	# _12, tmp192
# problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	lw	a5,-160(s0)		# tmp195, j
	slli	a5,a5,2	#, tmp196, tmp195
	addi	a5,a5,-16	#, tmp289, tmp196
	add	a5,a5,s0	#, tmp196, tmp289
	lw	a5,-128(a5)		# _13, s1[j_42]
# problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	addw	a5,a4,a5	# _13, tmp197, _12
	sext.w	a5,a5	# _14, tmp197
# problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	lw	a4,-164(s0)		# tmp200, sum
	addw	a5,a4,a5	# _14, tmp198, tmp199
	sw	a5,-164(s0)	# tmp198, sum
# problem17.c:43:     for (j = 1; j < 10; j++) {
	lw	a5,-160(s0)		# tmp203, j
	addiw	a5,a5,1	#, tmp201, tmp202
	sw	a5,-160(s0)	# tmp201, j
.L9:
# problem17.c:43:     for (j = 1; j < 10; j++) {
	lw	a5,-160(s0)		# tmp205, j
	sext.w	a4,a5	# tmp206, tmp204
	li	a5,9		# tmp207,
	ble	a4,a5,.L10	#, tmp206, tmp207,
# problem17.c:47:     for (j = 0; j < 10; j++) {
	sw	zero,-160(s0)	#, j
# problem17.c:47:     for (j = 0; j < 10; j++) {
	j	.L11		#
.L12:
# problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	lwu	a5,-168(s0)	# tmp208, i
	slli	a5,a5,2	#, tmp209, tmp208
	addi	a5,a5,-16	#, tmp290, tmp209
	add	a5,a5,s0	#, tmp209, tmp290
	lw	a5,-128(a5)		# _15, s1[i_34]
# problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	lw	a4,-156(s0)		# tmp212, hundred
	addw	a5,a4,a5	# _15, tmp210, tmp211
	sext.w	a5,a5	# _16, tmp210
# problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	lw	a4,-152(s0)		# tmp215, and
	addw	a5,a4,a5	# _16, tmp213, tmp214
	sext.w	a4,a5	# _17, tmp213
# problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	lw	a5,-160(s0)		# tmp216, j
	slli	a5,a5,2	#, tmp217, tmp216
	addi	a5,a5,-16	#, tmp291, tmp217
	add	a5,a5,s0	#, tmp217, tmp291
	lw	a5,-88(a5)		# _18, s2[j_43]
# problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	addw	a5,a4,a5	# _18, tmp218, _17
	sext.w	a5,a5	# _19, tmp218
# problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	lw	a4,-164(s0)		# tmp221, sum
	addw	a5,a4,a5	# _19, tmp219, tmp220
	sw	a5,-164(s0)	# tmp219, sum
# problem17.c:47:     for (j = 0; j < 10; j++) {
	lw	a5,-160(s0)		# tmp224, j
	addiw	a5,a5,1	#, tmp222, tmp223
	sw	a5,-160(s0)	# tmp222, j
.L11:
# problem17.c:47:     for (j = 0; j < 10; j++) {
	lw	a5,-160(s0)		# tmp226, j
	sext.w	a4,a5	# tmp227, tmp225
	li	a5,9		# tmp228,
	ble	a4,a5,.L12	#, tmp227, tmp228,
# problem17.c:51:     for (j = 20; j < 100; j++) {
	li	a5,20		# tmp229,
	sw	a5,-160(s0)	# tmp229, j
# problem17.c:51:     for (j = 20; j < 100; j++) {
	j	.L13		#
.L14:
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	lwu	a5,-168(s0)	# tmp230, i
	slli	a5,a5,2	#, tmp231, tmp230
	addi	a5,a5,-16	#, tmp292, tmp231
	add	a5,a5,s0	#, tmp231, tmp292
	lw	a5,-128(a5)		# _20, s1[i_34]
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	lw	a4,-156(s0)		# tmp234, hundred
	addw	a5,a4,a5	# _20, tmp232, tmp233
	sext.w	a5,a5	# _21, tmp232
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	lw	a4,-152(s0)		# tmp237, and
	addw	a5,a4,a5	# _21, tmp235, tmp236
	sext.w	a4,a5	# _22, tmp235
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	lw	a5,-160(s0)		# tmp240, j
	mv	a3,a5	# tmp239, tmp240
	li	a5,10		# tmp242,
	divw	a5,a3,a5	# tmp242, tmp241, tmp239
	sext.w	a5,a5	# _23, tmp241
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	slli	a5,a5,2	#, tmp243, _23
	addi	a5,a5,-16	#, tmp293, tmp243
	add	a5,a5,s0	#, tmp243, tmp293
	lw	a5,-48(a5)		# _24, s3[_23]
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	addw	a5,a4,a5	# _24, tmp244, _22
	sext.w	a4,a5	# _25, tmp244
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	lw	a5,-160(s0)		# tmp247, j
	mv	a3,a5	# tmp246, tmp247
	li	a5,10		# tmp249,
	remw	a5,a3,a5	# tmp249, tmp248, tmp246
	sext.w	a5,a5	# _26, tmp248
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	slli	a5,a5,2	#, tmp250, _26
	addi	a5,a5,-16	#, tmp294, tmp250
	add	a5,a5,s0	#, tmp250, tmp294
	lw	a5,-128(a5)		# _27, s1[_26]
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	addw	a5,a4,a5	# _27, tmp251, _25
	sext.w	a5,a5	# _28, tmp251
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	lw	a4,-164(s0)		# tmp254, sum
	addw	a5,a4,a5	# _28, tmp252, tmp253
	sw	a5,-164(s0)	# tmp252, sum
# problem17.c:51:     for (j = 20; j < 100; j++) {
	lw	a5,-160(s0)		# tmp257, j
	addiw	a5,a5,1	#, tmp255, tmp256
	sw	a5,-160(s0)	# tmp255, j
.L13:
# problem17.c:51:     for (j = 20; j < 100; j++) {
	lw	a5,-160(s0)		# tmp259, j
	sext.w	a4,a5	# tmp260, tmp258
	li	a5,99		# tmp261,
	ble	a4,a5,.L14	#, tmp260, tmp261,
# problem17.c:37:   for (i = 1; i < 10; i++) {
	lw	a5,-168(s0)		# tmp264, i
	addiw	a5,a5,1	#, tmp262, tmp263
	sw	a5,-168(s0)	# tmp262, i
.L8:
# problem17.c:37:   for (i = 1; i < 10; i++) {
	lw	a5,-168(s0)		# tmp266, i
	sext.w	a4,a5	# tmp267, tmp265
	li	a5,9		# tmp268,
	bleu	a4,a5,.L15	#, tmp267, tmp268,
# problem17.c:56:   sum += s1[1] + thousand;
	lw	a5,-140(s0)		# _29, s1[1]
# problem17.c:56:   sum += s1[1] + thousand;
	lw	a4,-148(s0)		# tmp271, thousand
	addw	a5,a4,a5	# _29, tmp269, tmp270
	sext.w	a5,a5	# _30, tmp269
# problem17.c:56:   sum += s1[1] + thousand;
	lw	a4,-164(s0)		# tmp274, sum
	addw	a5,a4,a5	# _30, tmp272, tmp273
	sw	a5,-164(s0)	# tmp272, sum
# problem17.c:58:   printf("%u\n", sum);
	lw	a5,-164(s0)		# tmp275, sum
	mv	a1,a5	#, tmp275
	lla	a0,.LC3	#,
	call	printf@plt	#
# problem17.c:60:   return 0;
	li	a5,0		# _59,
# problem17.c:61: }
	mv	a4,a5	# <retval>, _59
	la	a5,__stack_chk_guard		# tmp277,
	ld	a3, -24(s0)	# tmp280, D.1935
	ld	a5, 0(a5)	# tmp278, __stack_chk_guard
	xor	a5, a3, a5	# tmp278, tmp280
	li	a3, 0	# tmp280
	beq	a5,zero,.L17	#, tmp278,,
	call	__stack_chk_fail@plt	#
.L17:
	mv	a0,a4	#, <retval>
	ld	ra,168(sp)		#,
	ld	s0,160(sp)		#,
	addi	sp,sp,176	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
