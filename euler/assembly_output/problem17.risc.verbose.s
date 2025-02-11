	.file	"problem17.c"
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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-176	#,,
	.cfi_def_cfa_offset 176
	sd	ra,168(sp)	#,
	sd	s0,160(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,176	#,,
	.cfi_def_cfa 8, 0
# problem17.c:9: {
	la	a5,__stack_chk_guard		# tmp166,
	ld	a4, 0(a5)	# tmp341, __stack_chk_guard
	sd	a4, -24(s0)	# tmp341, D.2753
	li	a4, 0	# tmp341
# problem17.c:11:   unsigned s1[] = { 0, 3, 3, 5, 4, 4, 3, 5, 5, 4 };
	lla	a5,.LC0	# tmp167,
	ld	a1,0(a5)		# tmp168,
	ld	a2,8(a5)		# tmp169,
	ld	a3,16(a5)		# tmp170,
	ld	a4,24(a5)		# tmp171,
	ld	a5,32(a5)		# tmp172,
	sd	a1,-144(s0)	# tmp168, s1
	sd	a2,-136(s0)	# tmp169, s1
	sd	a3,-128(s0)	# tmp170, s1
	sd	a4,-120(s0)	# tmp171, s1
	sd	a5,-112(s0)	# tmp172, s1
# problem17.c:13:   unsigned s2[] = { 3, 6, 6, 8, 8, 7, 7, 9, 8, 8 };
	lla	a5,.LC1	# tmp173,
	ld	a1,0(a5)		# tmp174,
	ld	a2,8(a5)		# tmp175,
	ld	a3,16(a5)		# tmp176,
	ld	a4,24(a5)		# tmp177,
	ld	a5,32(a5)		# tmp178,
	sd	a1,-104(s0)	# tmp174, s2
	sd	a2,-96(s0)	# tmp175, s2
	sd	a3,-88(s0)	# tmp176, s2
	sd	a4,-80(s0)	# tmp177, s2
	sd	a5,-72(s0)	# tmp178, s2
# problem17.c:15:   unsigned s3[] = { 0, 0, 6, 6, 5, 5, 5, 7, 6, 6 };
	lla	a5,.LC2	# tmp179,
	ld	a1,0(a5)		# tmp180,
	ld	a2,8(a5)		# tmp181,
	ld	a3,16(a5)		# tmp182,
	ld	a4,24(a5)		# tmp183,
	ld	a5,32(a5)		# tmp184,
	sd	a1,-64(s0)	# tmp180, s3
	sd	a2,-56(s0)	# tmp181, s3
	sd	a3,-48(s0)	# tmp182, s3
	sd	a4,-40(s0)	# tmp183, s3
	sd	a5,-32(s0)	# tmp184, s3
# problem17.c:17:   unsigned hundred = 7;
	li	a5,7		# tmp185,
	sw	a5,-156(s0)	# tmp185, hundred
# problem17.c:18:   unsigned and = 3;
	li	a5,3		# tmp186,
	sw	a5,-152(s0)	# tmp186, and
# problem17.c:19:   unsigned thousand = 8;
	li	a5,8		# tmp187,
	sw	a5,-148(s0)	# tmp187, thousand
# problem17.c:22:   unsigned sum = 0;
	sw	zero,-164(s0)	#, sum
# problem17.c:25:   for (i = 1; i < 10; i++) {
	li	a5,1		# tmp188,
	sw	a5,-168(s0)	# tmp188, i
# problem17.c:25:   for (i = 1; i < 10; i++) {
	j	.L2		#
.L3:
# problem17.c:26:     sum += s1[i];
	lwu	a5,-168(s0)	# tmp189, i
	slli	a5,a5,2	#, tmp190, tmp189
	addi	a5,a5,-16	#, tmp345, tmp190
	add	a5,a5,s0	#, tmp190, tmp345
	lw	a5,-128(a5)		# _1, s1[i_31]
# problem17.c:26:     sum += s1[i];
	lw	a4,-164(s0)		# tmp193, sum
	addw	a5,a4,a5	# _1, tmp191, tmp192
	sw	a5,-164(s0)	# tmp191, sum
# problem17.c:25:   for (i = 1; i < 10; i++) {
	lw	a5,-168(s0)		# tmp196, i
	addiw	a5,a5,1	#, tmp194, tmp195
	sw	a5,-168(s0)	# tmp194, i
.L2:
# problem17.c:25:   for (i = 1; i < 10; i++) {
	lw	a5,-168(s0)		# tmp198, i
	sext.w	a4,a5	# tmp199, tmp197
	li	a5,9		# tmp200,
	bleu	a4,a5,.L3	#, tmp199, tmp200,
# problem17.c:29:   for (i = 0; i < 10; i++) {
	sw	zero,-168(s0)	#, i
# problem17.c:29:   for (i = 0; i < 10; i++) {
	j	.L4		#
.L5:
# problem17.c:30:     sum += s2[i];
	lwu	a5,-168(s0)	# tmp201, i
	slli	a5,a5,2	#, tmp202, tmp201
	addi	a5,a5,-16	#, tmp346, tmp202
	add	a5,a5,s0	#, tmp202, tmp346
	lw	a5,-88(a5)		# _2, s2[i_32]
# problem17.c:30:     sum += s2[i];
	lw	a4,-164(s0)		# tmp205, sum
	addw	a5,a4,a5	# _2, tmp203, tmp204
	sw	a5,-164(s0)	# tmp203, sum
# problem17.c:29:   for (i = 0; i < 10; i++) {
	lw	a5,-168(s0)		# tmp208, i
	addiw	a5,a5,1	#, tmp206, tmp207
	sw	a5,-168(s0)	# tmp206, i
.L4:
# problem17.c:29:   for (i = 0; i < 10; i++) {
	lw	a5,-168(s0)		# tmp210, i
	sext.w	a4,a5	# tmp211, tmp209
	li	a5,9		# tmp212,
	bleu	a4,a5,.L5	#, tmp211, tmp212,
# problem17.c:33:   for (i = 20; i < 100; i++) {
	li	a5,20		# tmp213,
	sw	a5,-168(s0)	# tmp213, i
# problem17.c:33:   for (i = 20; i < 100; i++) {
	j	.L6		#
.L7:
# problem17.c:34:     sum += s3[i/10] + s1[i%10];
	lw	a5,-168(s0)		# tmp216, i
	mv	a4,a5	# tmp215, tmp216
	li	a5,10		# tmp218,
	divuw	a5,a4,a5	# tmp218, tmp217, tmp215
	sext.w	a5,a5	# _3, tmp217
# problem17.c:34:     sum += s3[i/10] + s1[i%10];
	slli	a5,a5,32	#, tmp219, _3
	srli	a5,a5,32	#, tmp219, tmp219
	slli	a5,a5,2	#, tmp220, tmp219
	addi	a5,a5,-16	#, tmp347, tmp220
	add	a5,a5,s0	#, tmp220, tmp347
	lw	a4,-48(a5)		# _4, s3[_3]
# problem17.c:34:     sum += s3[i/10] + s1[i%10];
	lw	a5,-168(s0)		# tmp223, i
	mv	a3,a5	# tmp222, tmp223
	li	a5,10		# tmp225,
	remuw	a5,a3,a5	# tmp225, tmp224, tmp222
	sext.w	a5,a5	# _5, tmp224
# problem17.c:34:     sum += s3[i/10] + s1[i%10];
	slli	a5,a5,32	#, tmp226, _5
	srli	a5,a5,32	#, tmp226, tmp226
	slli	a5,a5,2	#, tmp227, tmp226
	addi	a5,a5,-16	#, tmp348, tmp227
	add	a5,a5,s0	#, tmp227, tmp348
	lw	a5,-128(a5)		# _6, s1[_5]
# problem17.c:34:     sum += s3[i/10] + s1[i%10];
	addw	a5,a4,a5	# _6, tmp228, _4
	sext.w	a5,a5	# _7, tmp228
# problem17.c:34:     sum += s3[i/10] + s1[i%10];
	lw	a4,-164(s0)		# tmp231, sum
	addw	a5,a4,a5	# _7, tmp229, tmp230
	sw	a5,-164(s0)	# tmp229, sum
# problem17.c:33:   for (i = 20; i < 100; i++) {
	lw	a5,-168(s0)		# tmp234, i
	addiw	a5,a5,1	#, tmp232, tmp233
	sw	a5,-168(s0)	# tmp232, i
.L6:
# problem17.c:33:   for (i = 20; i < 100; i++) {
	lw	a5,-168(s0)		# tmp236, i
	sext.w	a4,a5	# tmp237, tmp235
	li	a5,99		# tmp238,
	bleu	a4,a5,.L7	#, tmp237, tmp238,
# problem17.c:37:   for (i = 1; i < 10; i++) {
	li	a5,1		# tmp239,
	sw	a5,-168(s0)	# tmp239, i
# problem17.c:37:   for (i = 1; i < 10; i++) {
	j	.L8		#
.L15:
# problem17.c:41:     sum += s1[i] + hundred;
	lwu	a5,-168(s0)	# tmp240, i
	slli	a5,a5,2	#, tmp241, tmp240
	addi	a5,a5,-16	#, tmp349, tmp241
	add	a5,a5,s0	#, tmp241, tmp349
	lw	a5,-128(a5)		# _8, s1[i_34]
# problem17.c:41:     sum += s1[i] + hundred;
	lw	a4,-156(s0)		# tmp244, hundred
	addw	a5,a4,a5	# _8, tmp242, tmp243
	sext.w	a5,a5	# _9, tmp242
# problem17.c:41:     sum += s1[i] + hundred;
	lw	a4,-164(s0)		# tmp247, sum
	addw	a5,a4,a5	# _9, tmp245, tmp246
	sw	a5,-164(s0)	# tmp245, sum
# problem17.c:43:     for (j = 1; j < 10; j++) {
	li	a5,1		# tmp248,
	sw	a5,-160(s0)	# tmp248, j
# problem17.c:43:     for (j = 1; j < 10; j++) {
	j	.L9		#
.L10:
# problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	lwu	a5,-168(s0)	# tmp249, i
	slli	a5,a5,2	#, tmp250, tmp249
	addi	a5,a5,-16	#, tmp350, tmp250
	add	a5,a5,s0	#, tmp250, tmp350
	lw	a5,-128(a5)		# _10, s1[i_34]
# problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	lw	a4,-156(s0)		# tmp253, hundred
	addw	a5,a4,a5	# _10, tmp251, tmp252
	sext.w	a5,a5	# _11, tmp251
# problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	lw	a4,-152(s0)		# tmp256, and
	addw	a5,a4,a5	# _11, tmp254, tmp255
	sext.w	a4,a5	# _12, tmp254
# problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	lw	a5,-160(s0)		# tmp257, j
	slli	a5,a5,2	#, tmp258, tmp257
	addi	a5,a5,-16	#, tmp351, tmp258
	add	a5,a5,s0	#, tmp258, tmp351
	lw	a5,-128(a5)		# _13, s1[j_42]
# problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	addw	a5,a4,a5	# _13, tmp259, _12
	sext.w	a5,a5	# _14, tmp259
# problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	lw	a4,-164(s0)		# tmp262, sum
	addw	a5,a4,a5	# _14, tmp260, tmp261
	sw	a5,-164(s0)	# tmp260, sum
# problem17.c:43:     for (j = 1; j < 10; j++) {
	lw	a5,-160(s0)		# tmp265, j
	addiw	a5,a5,1	#, tmp263, tmp264
	sw	a5,-160(s0)	# tmp263, j
.L9:
# problem17.c:43:     for (j = 1; j < 10; j++) {
	lw	a5,-160(s0)		# tmp267, j
	sext.w	a4,a5	# tmp268, tmp266
	li	a5,9		# tmp269,
	ble	a4,a5,.L10	#, tmp268, tmp269,
# problem17.c:47:     for (j = 0; j < 10; j++) {
	sw	zero,-160(s0)	#, j
# problem17.c:47:     for (j = 0; j < 10; j++) {
	j	.L11		#
.L12:
# problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	lwu	a5,-168(s0)	# tmp270, i
	slli	a5,a5,2	#, tmp271, tmp270
	addi	a5,a5,-16	#, tmp352, tmp271
	add	a5,a5,s0	#, tmp271, tmp352
	lw	a5,-128(a5)		# _15, s1[i_34]
# problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	lw	a4,-156(s0)		# tmp274, hundred
	addw	a5,a4,a5	# _15, tmp272, tmp273
	sext.w	a5,a5	# _16, tmp272
# problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	lw	a4,-152(s0)		# tmp277, and
	addw	a5,a4,a5	# _16, tmp275, tmp276
	sext.w	a4,a5	# _17, tmp275
# problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	lw	a5,-160(s0)		# tmp278, j
	slli	a5,a5,2	#, tmp279, tmp278
	addi	a5,a5,-16	#, tmp353, tmp279
	add	a5,a5,s0	#, tmp279, tmp353
	lw	a5,-88(a5)		# _18, s2[j_43]
# problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	addw	a5,a4,a5	# _18, tmp280, _17
	sext.w	a5,a5	# _19, tmp280
# problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	lw	a4,-164(s0)		# tmp283, sum
	addw	a5,a4,a5	# _19, tmp281, tmp282
	sw	a5,-164(s0)	# tmp281, sum
# problem17.c:47:     for (j = 0; j < 10; j++) {
	lw	a5,-160(s0)		# tmp286, j
	addiw	a5,a5,1	#, tmp284, tmp285
	sw	a5,-160(s0)	# tmp284, j
.L11:
# problem17.c:47:     for (j = 0; j < 10; j++) {
	lw	a5,-160(s0)		# tmp288, j
	sext.w	a4,a5	# tmp289, tmp287
	li	a5,9		# tmp290,
	ble	a4,a5,.L12	#, tmp289, tmp290,
# problem17.c:51:     for (j = 20; j < 100; j++) {
	li	a5,20		# tmp291,
	sw	a5,-160(s0)	# tmp291, j
# problem17.c:51:     for (j = 20; j < 100; j++) {
	j	.L13		#
.L14:
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	lwu	a5,-168(s0)	# tmp292, i
	slli	a5,a5,2	#, tmp293, tmp292
	addi	a5,a5,-16	#, tmp354, tmp293
	add	a5,a5,s0	#, tmp293, tmp354
	lw	a5,-128(a5)		# _20, s1[i_34]
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	lw	a4,-156(s0)		# tmp296, hundred
	addw	a5,a4,a5	# _20, tmp294, tmp295
	sext.w	a5,a5	# _21, tmp294
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	lw	a4,-152(s0)		# tmp299, and
	addw	a5,a4,a5	# _21, tmp297, tmp298
	sext.w	a4,a5	# _22, tmp297
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	lw	a5,-160(s0)		# tmp302, j
	mv	a3,a5	# tmp301, tmp302
	li	a5,10		# tmp304,
	divw	a5,a3,a5	# tmp304, tmp303, tmp301
	sext.w	a5,a5	# _23, tmp303
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	slli	a5,a5,2	#, tmp305, _23
	addi	a5,a5,-16	#, tmp355, tmp305
	add	a5,a5,s0	#, tmp305, tmp355
	lw	a5,-48(a5)		# _24, s3[_23]
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	addw	a5,a4,a5	# _24, tmp306, _22
	sext.w	a4,a5	# _25, tmp306
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	lw	a5,-160(s0)		# tmp309, j
	mv	a3,a5	# tmp308, tmp309
	li	a5,10		# tmp311,
	remw	a5,a3,a5	# tmp311, tmp310, tmp308
	sext.w	a5,a5	# _26, tmp310
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	slli	a5,a5,2	#, tmp312, _26
	addi	a5,a5,-16	#, tmp356, tmp312
	add	a5,a5,s0	#, tmp312, tmp356
	lw	a5,-128(a5)		# _27, s1[_26]
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	addw	a5,a4,a5	# _27, tmp313, _25
	sext.w	a5,a5	# _28, tmp313
# problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	lw	a4,-164(s0)		# tmp316, sum
	addw	a5,a4,a5	# _28, tmp314, tmp315
	sw	a5,-164(s0)	# tmp314, sum
# problem17.c:51:     for (j = 20; j < 100; j++) {
	lw	a5,-160(s0)		# tmp319, j
	addiw	a5,a5,1	#, tmp317, tmp318
	sw	a5,-160(s0)	# tmp317, j
.L13:
# problem17.c:51:     for (j = 20; j < 100; j++) {
	lw	a5,-160(s0)		# tmp321, j
	sext.w	a4,a5	# tmp322, tmp320
	li	a5,99		# tmp323,
	ble	a4,a5,.L14	#, tmp322, tmp323,
# problem17.c:37:   for (i = 1; i < 10; i++) {
	lw	a5,-168(s0)		# tmp326, i
	addiw	a5,a5,1	#, tmp324, tmp325
	sw	a5,-168(s0)	# tmp324, i
.L8:
# problem17.c:37:   for (i = 1; i < 10; i++) {
	lw	a5,-168(s0)		# tmp328, i
	sext.w	a4,a5	# tmp329, tmp327
	li	a5,9		# tmp330,
	bleu	a4,a5,.L15	#, tmp329, tmp330,
# problem17.c:56:   sum += s1[1] + thousand;
	lw	a5,-140(s0)		# _29, s1[1]
# problem17.c:56:   sum += s1[1] + thousand;
	lw	a4,-148(s0)		# tmp333, thousand
	addw	a5,a4,a5	# _29, tmp331, tmp332
	sext.w	a5,a5	# _30, tmp331
# problem17.c:56:   sum += s1[1] + thousand;
	lw	a4,-164(s0)		# tmp336, sum
	addw	a5,a4,a5	# _30, tmp334, tmp335
	sw	a5,-164(s0)	# tmp334, sum
# problem17.c:58:   printf("%u\n", sum);
	lw	a5,-164(s0)		# tmp337, sum
	mv	a1,a5	#, tmp337
	lla	a0,.LC3	#,
	call	printf@plt	#
# problem17.c:60:   return 0;
	li	a5,0		# _59,
# problem17.c:61: }
	mv	a4,a5	# <retval>, _59
	la	a5,__stack_chk_guard		# tmp339,
	ld	a3, -24(s0)	# tmp342, D.2753
	ld	a5, 0(a5)	# tmp340, __stack_chk_guard
	xor	a5, a3, a5	# tmp340, tmp342
	li	a3, 0	# tmp342
	beq	a5,zero,.L17	#, tmp340,,
	call	__stack_chk_fail@plt	#
.L17:
	mv	a0,a4	#, <retval>
	ld	ra,168(sp)		#,
	.cfi_restore 1
	ld	s0,160(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	addi	sp,sp,176	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
