	.file	"problem11.c"
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
.LC1:
	.string	"%u\n"
	.align	3
.LC0:
	.word	8
	.word	2
	.word	22
	.word	97
	.word	38
	.word	15
	.word	0
	.word	40
	.word	0
	.word	75
	.word	4
	.word	5
	.word	7
	.word	78
	.word	52
	.word	12
	.word	50
	.word	77
	.word	91
	.word	8
	.word	49
	.word	49
	.word	99
	.word	40
	.word	17
	.word	81
	.word	18
	.word	57
	.word	60
	.word	87
	.word	17
	.word	40
	.word	98
	.word	43
	.word	69
	.word	48
	.word	4
	.word	56
	.word	62
	.word	0
	.word	81
	.word	49
	.word	31
	.word	73
	.word	55
	.word	79
	.word	14
	.word	29
	.word	93
	.word	71
	.word	40
	.word	67
	.word	53
	.word	88
	.word	30
	.word	3
	.word	49
	.word	13
	.word	36
	.word	65
	.word	52
	.word	70
	.word	95
	.word	23
	.word	4
	.word	60
	.word	11
	.word	42
	.word	69
	.word	24
	.word	68
	.word	56
	.word	1
	.word	32
	.word	56
	.word	71
	.word	37
	.word	2
	.word	36
	.word	91
	.word	22
	.word	31
	.word	16
	.word	71
	.word	51
	.word	67
	.word	63
	.word	89
	.word	41
	.word	92
	.word	36
	.word	54
	.word	22
	.word	40
	.word	40
	.word	28
	.word	66
	.word	33
	.word	13
	.word	80
	.word	24
	.word	47
	.word	32
	.word	60
	.word	99
	.word	3
	.word	45
	.word	2
	.word	44
	.word	75
	.word	33
	.word	53
	.word	78
	.word	36
	.word	84
	.word	20
	.word	35
	.word	17
	.word	12
	.word	50
	.word	32
	.word	98
	.word	81
	.word	28
	.word	64
	.word	23
	.word	67
	.word	10
	.word	26
	.word	38
	.word	40
	.word	67
	.word	59
	.word	54
	.word	70
	.word	66
	.word	18
	.word	38
	.word	64
	.word	70
	.word	67
	.word	26
	.word	20
	.word	68
	.word	2
	.word	62
	.word	12
	.word	20
	.word	95
	.word	63
	.word	94
	.word	39
	.word	63
	.word	8
	.word	40
	.word	91
	.word	66
	.word	49
	.word	94
	.word	21
	.word	24
	.word	55
	.word	58
	.word	5
	.word	66
	.word	73
	.word	99
	.word	26
	.word	97
	.word	17
	.word	78
	.word	78
	.word	96
	.word	83
	.word	14
	.word	88
	.word	34
	.word	89
	.word	63
	.word	72
	.word	21
	.word	36
	.word	23
	.word	9
	.word	75
	.word	0
	.word	76
	.word	44
	.word	20
	.word	45
	.word	35
	.word	14
	.word	0
	.word	61
	.word	33
	.word	97
	.word	34
	.word	31
	.word	33
	.word	95
	.word	78
	.word	17
	.word	53
	.word	28
	.word	22
	.word	75
	.word	31
	.word	67
	.word	15
	.word	94
	.word	3
	.word	80
	.word	4
	.word	62
	.word	16
	.word	14
	.word	9
	.word	53
	.word	56
	.word	92
	.word	16
	.word	39
	.word	5
	.word	42
	.word	96
	.word	35
	.word	31
	.word	47
	.word	55
	.word	58
	.word	88
	.word	24
	.word	0
	.word	17
	.word	54
	.word	24
	.word	36
	.word	29
	.word	85
	.word	57
	.word	86
	.word	56
	.word	0
	.word	48
	.word	35
	.word	71
	.word	89
	.word	7
	.word	5
	.word	44
	.word	44
	.word	37
	.word	44
	.word	60
	.word	21
	.word	58
	.word	51
	.word	54
	.word	17
	.word	58
	.word	19
	.word	80
	.word	81
	.word	68
	.word	5
	.word	94
	.word	47
	.word	69
	.word	28
	.word	73
	.word	92
	.word	13
	.word	86
	.word	52
	.word	17
	.word	77
	.word	4
	.word	89
	.word	55
	.word	40
	.word	4
	.word	52
	.word	8
	.word	83
	.word	97
	.word	35
	.word	99
	.word	16
	.word	7
	.word	97
	.word	57
	.word	32
	.word	16
	.word	26
	.word	26
	.word	79
	.word	33
	.word	27
	.word	98
	.word	66
	.word	88
	.word	36
	.word	68
	.word	87
	.word	57
	.word	62
	.word	20
	.word	72
	.word	3
	.word	46
	.word	33
	.word	67
	.word	46
	.word	55
	.word	12
	.word	32
	.word	63
	.word	93
	.word	53
	.word	69
	.word	4
	.word	42
	.word	16
	.word	73
	.word	38
	.word	25
	.word	39
	.word	11
	.word	24
	.word	94
	.word	72
	.word	18
	.word	8
	.word	46
	.word	29
	.word	32
	.word	40
	.word	62
	.word	76
	.word	36
	.word	20
	.word	69
	.word	36
	.word	41
	.word	72
	.word	30
	.word	23
	.word	88
	.word	34
	.word	62
	.word	99
	.word	69
	.word	82
	.word	67
	.word	59
	.word	85
	.word	74
	.word	4
	.word	36
	.word	16
	.word	20
	.word	73
	.word	35
	.word	29
	.word	78
	.word	31
	.word	90
	.word	1
	.word	74
	.word	31
	.word	49
	.word	71
	.word	48
	.word	86
	.word	81
	.word	16
	.word	23
	.word	57
	.word	5
	.word	54
	.word	1
	.word	70
	.word	54
	.word	71
	.word	83
	.word	51
	.word	54
	.word	69
	.word	16
	.word	92
	.word	33
	.word	48
	.word	61
	.word	43
	.word	52
	.word	1
	.word	89
	.word	19
	.word	67
	.word	48
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-1664	#,,
	.cfi_def_cfa_offset 1664
	sd	ra,1656(sp)	#,
	sd	s0,1648(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,1664	#,,
	.cfi_def_cfa 8, 0
# problem11.c:13: {
	la	a5,__stack_chk_guard		# tmp182,
	ld	a4, 0(a5)	# tmp400, __stack_chk_guard
	sd	a4, -24(s0)	# tmp400, D.2740
	li	a4, 0	# tmp400
# problem11.c:14:   unsigned grid[20][20] = {
	lla	a4,.LC0	# tmp183,
	addi	a5,s0,-1624	#, tmp184,
	mv	a3,a4	# tmp185, tmp183
	li	a4,1600		# tmp186,
	mv	a2,a4	#, tmp186
	mv	a1,a3	#, tmp185
	mv	a0,a5	#, tmp184
	call	memcpy@plt	#
# problem11.c:36:   unsigned m = 0;
	sw	zero,-1652(s0)	#, m
# problem11.c:39:   for (i = 0; i < N-3; i++) {
	sw	zero,-1648(s0)	#, i
# problem11.c:39:   for (i = 0; i < N-3; i++) {
	j	.L2		#
.L5:
# problem11.c:40:     for (j = 0; j < N-3; j++) {
	sw	zero,-1644(s0)	#, j
# problem11.c:40:     for (j = 0; j < N-3; j++) {
	j	.L3		#
.L4:
# problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	lwu	a3,-1644(s0)	# tmp188, j
	lwu	a4,-1648(s0)	# tmp189, i
	mv	a5,a4	# tmp190, tmp189
	slli	a5,a5,2	#, tmp191, tmp190
	add	a5,a5,a4	# tmp189, tmp190, tmp190
	slli	a5,a5,2	#, tmp192, tmp190
	add	a5,a5,a3	# tmp188, tmp193, tmp190
	slli	a5,a5,2	#, tmp194, tmp193
	addi	a5,a5,-16	#, tmp404, tmp194
	add	a5,a5,s0	#, tmp194, tmp404
	lw	a3,-1608(a5)		# _1, grid[i_49][j_50]
# problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	lw	a5,-1644(s0)		# tmp197, j
	addiw	a5,a5,1	#, tmp195, tmp196
	sext.w	a5,a5	# _2, tmp195
# problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	slli	a2,a5,32	#, tmp198, _2
	srli	a2,a2,32	#, tmp198, tmp198
	lwu	a4,-1648(s0)	# tmp199, i
	mv	a5,a4	# tmp200, tmp199
	slli	a5,a5,2	#, tmp201, tmp200
	add	a5,a5,a4	# tmp199, tmp200, tmp200
	slli	a5,a5,2	#, tmp202, tmp200
	add	a5,a5,a2	# tmp198, tmp203, tmp200
	slli	a5,a5,2	#, tmp204, tmp203
	addi	a5,a5,-16	#, tmp405, tmp204
	add	a5,a5,s0	#, tmp204, tmp405
	lw	a5,-1608(a5)		# _3, grid[i_49][_2]
# problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	mulw	a5,a3,a5	# tmp205, _1, _3
	sext.w	a3,a5	# _4, tmp205
# problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	lw	a5,-1644(s0)		# tmp208, j
	addiw	a5,a5,2	#, tmp206, tmp207
	sext.w	a5,a5	# _5, tmp206
# problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	slli	a2,a5,32	#, tmp209, _5
	srli	a2,a2,32	#, tmp209, tmp209
	lwu	a4,-1648(s0)	# tmp210, i
	mv	a5,a4	# tmp211, tmp210
	slli	a5,a5,2	#, tmp212, tmp211
	add	a5,a5,a4	# tmp210, tmp211, tmp211
	slli	a5,a5,2	#, tmp213, tmp211
	add	a5,a5,a2	# tmp209, tmp214, tmp211
	slli	a5,a5,2	#, tmp215, tmp214
	addi	a5,a5,-16	#, tmp406, tmp215
	add	a5,a5,s0	#, tmp215, tmp406
	lw	a5,-1608(a5)		# _6, grid[i_49][_5]
# problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	mulw	a5,a3,a5	# tmp216, _4, _6
	sext.w	a3,a5	# _7, tmp216
# problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	lw	a5,-1644(s0)		# tmp219, j
	addiw	a5,a5,3	#, tmp217, tmp218
	sext.w	a5,a5	# _8, tmp217
# problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	slli	a2,a5,32	#, tmp220, _8
	srli	a2,a2,32	#, tmp220, tmp220
	lwu	a4,-1648(s0)	# tmp221, i
	mv	a5,a4	# tmp222, tmp221
	slli	a5,a5,2	#, tmp223, tmp222
	add	a5,a5,a4	# tmp221, tmp222, tmp222
	slli	a5,a5,2	#, tmp224, tmp222
	add	a5,a5,a2	# tmp220, tmp225, tmp222
	slli	a5,a5,2	#, tmp226, tmp225
	addi	a5,a5,-16	#, tmp407, tmp226
	add	a5,a5,s0	#, tmp226, tmp407
	lw	a5,-1608(a5)		# _9, grid[i_49][_8]
# problem11.c:41:       unsigned h = grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3];
	mulw	a5,a3,a5	# tmp227, _7, _9
	sw	a5,-1640(s0)	# tmp227, h
# problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	lwu	a3,-1648(s0)	# tmp228, i
	lwu	a4,-1644(s0)	# tmp229, j
	mv	a5,a4	# tmp230, tmp229
	slli	a5,a5,2	#, tmp231, tmp230
	add	a5,a5,a4	# tmp229, tmp230, tmp230
	slli	a5,a5,2	#, tmp232, tmp230
	add	a5,a5,a3	# tmp228, tmp233, tmp230
	slli	a5,a5,2	#, tmp234, tmp233
	addi	a5,a5,-16	#, tmp408, tmp234
	add	a5,a5,s0	#, tmp234, tmp408
	lw	a3,-1608(a5)		# _10, grid[j_50][i_49]
# problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	lw	a5,-1644(s0)		# tmp237, j
	addiw	a5,a5,1	#, tmp235, tmp236
	sext.w	a5,a5	# _11, tmp235
# problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	lwu	a2,-1648(s0)	# tmp238, i
	slli	a4,a5,32	#, tmp239, _11
	srli	a4,a4,32	#, tmp239, tmp239
	mv	a5,a4	# tmp240, tmp239
	slli	a5,a5,2	#, tmp241, tmp240
	add	a5,a5,a4	# tmp239, tmp240, tmp240
	slli	a5,a5,2	#, tmp242, tmp240
	add	a5,a5,a2	# tmp238, tmp243, tmp240
	slli	a5,a5,2	#, tmp244, tmp243
	addi	a5,a5,-16	#, tmp409, tmp244
	add	a5,a5,s0	#, tmp244, tmp409
	lw	a5,-1608(a5)		# _12, grid[_11][i_49]
# problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	mulw	a5,a3,a5	# tmp245, _10, _12
	sext.w	a3,a5	# _13, tmp245
# problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	lw	a5,-1644(s0)		# tmp248, j
	addiw	a5,a5,2	#, tmp246, tmp247
	sext.w	a5,a5	# _14, tmp246
# problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	lwu	a2,-1648(s0)	# tmp249, i
	slli	a4,a5,32	#, tmp250, _14
	srli	a4,a4,32	#, tmp250, tmp250
	mv	a5,a4	# tmp251, tmp250
	slli	a5,a5,2	#, tmp252, tmp251
	add	a5,a5,a4	# tmp250, tmp251, tmp251
	slli	a5,a5,2	#, tmp253, tmp251
	add	a5,a5,a2	# tmp249, tmp254, tmp251
	slli	a5,a5,2	#, tmp255, tmp254
	addi	a5,a5,-16	#, tmp410, tmp255
	add	a5,a5,s0	#, tmp255, tmp410
	lw	a5,-1608(a5)		# _15, grid[_14][i_49]
# problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	mulw	a5,a3,a5	# tmp256, _13, _15
	sext.w	a3,a5	# _16, tmp256
# problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	lw	a5,-1644(s0)		# tmp259, j
	addiw	a5,a5,3	#, tmp257, tmp258
	sext.w	a5,a5	# _17, tmp257
# problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	lwu	a2,-1648(s0)	# tmp260, i
	slli	a4,a5,32	#, tmp261, _17
	srli	a4,a4,32	#, tmp261, tmp261
	mv	a5,a4	# tmp262, tmp261
	slli	a5,a5,2	#, tmp263, tmp262
	add	a5,a5,a4	# tmp261, tmp262, tmp262
	slli	a5,a5,2	#, tmp264, tmp262
	add	a5,a5,a2	# tmp260, tmp265, tmp262
	slli	a5,a5,2	#, tmp266, tmp265
	addi	a5,a5,-16	#, tmp411, tmp266
	add	a5,a5,s0	#, tmp266, tmp411
	lw	a5,-1608(a5)		# _18, grid[_17][i_49]
# problem11.c:42:       unsigned v = grid[j][i] * grid[j+1][i] * grid[j+2][i] * grid[j+3][i];
	mulw	a5,a3,a5	# tmp267, _16, _18
	sw	a5,-1636(s0)	# tmp267, v
# problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	lwu	a3,-1644(s0)	# tmp268, j
	lwu	a4,-1648(s0)	# tmp269, i
	mv	a5,a4	# tmp270, tmp269
	slli	a5,a5,2	#, tmp271, tmp270
	add	a5,a5,a4	# tmp269, tmp270, tmp270
	slli	a5,a5,2	#, tmp272, tmp270
	add	a5,a5,a3	# tmp268, tmp273, tmp270
	slli	a5,a5,2	#, tmp274, tmp273
	addi	a5,a5,-16	#, tmp412, tmp274
	add	a5,a5,s0	#, tmp274, tmp412
	lw	a3,-1608(a5)		# _19, grid[i_49][j_50]
# problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	lw	a5,-1648(s0)		# tmp277, i
	addiw	a5,a5,1	#, tmp275, tmp276
	sext.w	a5,a5	# _20, tmp275
# problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	lw	a4,-1644(s0)		# tmp280, j
	addiw	a4,a4,1	#, tmp278, tmp279
	sext.w	a4,a4	# _21, tmp278
# problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	slli	a2,a4,32	#, tmp281, _21
	srli	a2,a2,32	#, tmp281, tmp281
	slli	a4,a5,32	#, tmp282, _20
	srli	a4,a4,32	#, tmp282, tmp282
	mv	a5,a4	# tmp283, tmp282
	slli	a5,a5,2	#, tmp284, tmp283
	add	a5,a5,a4	# tmp282, tmp283, tmp283
	slli	a5,a5,2	#, tmp285, tmp283
	add	a5,a5,a2	# tmp281, tmp286, tmp283
	slli	a5,a5,2	#, tmp287, tmp286
	addi	a5,a5,-16	#, tmp413, tmp287
	add	a5,a5,s0	#, tmp287, tmp413
	lw	a5,-1608(a5)		# _22, grid[_20][_21]
# problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	mulw	a5,a3,a5	# tmp288, _19, _22
	sext.w	a3,a5	# _23, tmp288
# problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	lw	a5,-1648(s0)		# tmp291, i
	addiw	a5,a5,2	#, tmp289, tmp290
	sext.w	a5,a5	# _24, tmp289
# problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	lw	a4,-1644(s0)		# tmp294, j
	addiw	a4,a4,2	#, tmp292, tmp293
	sext.w	a4,a4	# _25, tmp292
# problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	slli	a2,a4,32	#, tmp295, _25
	srli	a2,a2,32	#, tmp295, tmp295
	slli	a4,a5,32	#, tmp296, _24
	srli	a4,a4,32	#, tmp296, tmp296
	mv	a5,a4	# tmp297, tmp296
	slli	a5,a5,2	#, tmp298, tmp297
	add	a5,a5,a4	# tmp296, tmp297, tmp297
	slli	a5,a5,2	#, tmp299, tmp297
	add	a5,a5,a2	# tmp295, tmp300, tmp297
	slli	a5,a5,2	#, tmp301, tmp300
	addi	a5,a5,-16	#, tmp414, tmp301
	add	a5,a5,s0	#, tmp301, tmp414
	lw	a5,-1608(a5)		# _26, grid[_24][_25]
# problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	mulw	a5,a3,a5	# tmp302, _23, _26
	sext.w	a3,a5	# _27, tmp302
# problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	lw	a5,-1648(s0)		# tmp305, i
	addiw	a5,a5,3	#, tmp303, tmp304
	sext.w	a5,a5	# _28, tmp303
# problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	lw	a4,-1644(s0)		# tmp308, j
	addiw	a4,a4,3	#, tmp306, tmp307
	sext.w	a4,a4	# _29, tmp306
# problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	slli	a2,a4,32	#, tmp309, _29
	srli	a2,a2,32	#, tmp309, tmp309
	slli	a4,a5,32	#, tmp310, _28
	srli	a4,a4,32	#, tmp310, tmp310
	mv	a5,a4	# tmp311, tmp310
	slli	a5,a5,2	#, tmp312, tmp311
	add	a5,a5,a4	# tmp310, tmp311, tmp311
	slli	a5,a5,2	#, tmp313, tmp311
	add	a5,a5,a2	# tmp309, tmp314, tmp311
	slli	a5,a5,2	#, tmp315, tmp314
	addi	a5,a5,-16	#, tmp415, tmp315
	add	a5,a5,s0	#, tmp315, tmp415
	lw	a5,-1608(a5)		# _30, grid[_28][_29]
# problem11.c:43:       unsigned d1 = grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3];
	mulw	a5,a3,a5	# tmp316, _27, _30
	sw	a5,-1632(s0)	# tmp316, d1
# problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	li	a5,19		# tmp318,
	lw	a4,-1644(s0)		# tmp320, j
	subw	a5,a5,a4	# tmp317, tmp318, tmp319
	sext.w	a5,a5	# _31, tmp317
# problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	slli	a3,a5,32	#, tmp321, _31
	srli	a3,a3,32	#, tmp321, tmp321
	lwu	a4,-1648(s0)	# tmp322, i
	mv	a5,a4	# tmp323, tmp322
	slli	a5,a5,2	#, tmp324, tmp323
	add	a5,a5,a4	# tmp322, tmp323, tmp323
	slli	a5,a5,2	#, tmp325, tmp323
	add	a5,a5,a3	# tmp321, tmp326, tmp323
	slli	a5,a5,2	#, tmp327, tmp326
	addi	a5,a5,-16	#, tmp416, tmp327
	add	a5,a5,s0	#, tmp327, tmp416
	lw	a3,-1608(a5)		# _32, grid[i_49][_31]
# problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	lw	a5,-1648(s0)		# tmp330, i
	addiw	a5,a5,1	#, tmp328, tmp329
	sext.w	a4,a5	# _33, tmp328
# problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	li	a5,18		# tmp332,
	lw	a2,-1644(s0)		# tmp334, j
	subw	a5,a5,a2	# tmp331, tmp332, tmp333
	sext.w	a5,a5	# _34, tmp331
# problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	slli	a2,a5,32	#, tmp335, _34
	srli	a2,a2,32	#, tmp335, tmp335
	slli	a4,a4,32	#, tmp336, _33
	srli	a4,a4,32	#, tmp336, tmp336
	mv	a5,a4	# tmp337, tmp336
	slli	a5,a5,2	#, tmp338, tmp337
	add	a5,a5,a4	# tmp336, tmp337, tmp337
	slli	a5,a5,2	#, tmp339, tmp337
	add	a5,a5,a2	# tmp335, tmp340, tmp337
	slli	a5,a5,2	#, tmp341, tmp340
	addi	a5,a5,-16	#, tmp417, tmp341
	add	a5,a5,s0	#, tmp341, tmp417
	lw	a5,-1608(a5)		# _35, grid[_33][_34]
# problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	mulw	a5,a3,a5	# tmp342, _32, _35
	sext.w	a3,a5	# _36, tmp342
# problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	lw	a5,-1648(s0)		# tmp345, i
	addiw	a5,a5,2	#, tmp343, tmp344
	sext.w	a4,a5	# _37, tmp343
# problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	li	a5,17		# tmp347,
	lw	a2,-1644(s0)		# tmp349, j
	subw	a5,a5,a2	# tmp346, tmp347, tmp348
	sext.w	a5,a5	# _38, tmp346
# problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	slli	a2,a5,32	#, tmp350, _38
	srli	a2,a2,32	#, tmp350, tmp350
	slli	a4,a4,32	#, tmp351, _37
	srli	a4,a4,32	#, tmp351, tmp351
	mv	a5,a4	# tmp352, tmp351
	slli	a5,a5,2	#, tmp353, tmp352
	add	a5,a5,a4	# tmp351, tmp352, tmp352
	slli	a5,a5,2	#, tmp354, tmp352
	add	a5,a5,a2	# tmp350, tmp355, tmp352
	slli	a5,a5,2	#, tmp356, tmp355
	addi	a5,a5,-16	#, tmp418, tmp356
	add	a5,a5,s0	#, tmp356, tmp418
	lw	a5,-1608(a5)		# _39, grid[_37][_38]
# problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	mulw	a5,a3,a5	# tmp357, _36, _39
	sext.w	a3,a5	# _40, tmp357
# problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	lw	a5,-1648(s0)		# tmp360, i
	addiw	a5,a5,3	#, tmp358, tmp359
	sext.w	a4,a5	# _41, tmp358
# problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	li	a5,16		# tmp362,
	lw	a2,-1644(s0)		# tmp364, j
	subw	a5,a5,a2	# tmp361, tmp362, tmp363
	sext.w	a5,a5	# _42, tmp361
# problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	slli	a2,a5,32	#, tmp365, _42
	srli	a2,a2,32	#, tmp365, tmp365
	slli	a4,a4,32	#, tmp366, _41
	srli	a4,a4,32	#, tmp366, tmp366
	mv	a5,a4	# tmp367, tmp366
	slli	a5,a5,2	#, tmp368, tmp367
	add	a5,a5,a4	# tmp366, tmp367, tmp367
	slli	a5,a5,2	#, tmp369, tmp367
	add	a5,a5,a2	# tmp365, tmp370, tmp367
	slli	a5,a5,2	#, tmp371, tmp370
	addi	a5,a5,-16	#, tmp419, tmp371
	add	a5,a5,s0	#, tmp371, tmp419
	lw	a5,-1608(a5)		# _43, grid[_41][_42]
# problem11.c:44:       unsigned d2 = grid[i][N-j-1] * grid[i+1][N-j-2] * grid[i+2][N-j-3] * grid[i+3][N-j-4];
	mulw	a5,a3,a5	# tmp372, _40, _43
	sw	a5,-1628(s0)	# tmp372, d2
# problem11.c:45:       m = max(m, max(h, max(v, max(d1, d2))));
	lw	a4,-1628(s0)		# tmp373, d2
	lw	a5,-1632(s0)		# tmp374, d1
	mv	a1,a4	#, tmp373
	mv	a0,a5	#, tmp374
	call	max		#
	mv	a5,a0	# tmp375,
	sext.w	a4,a5	# _44, tmp375
# problem11.c:45:       m = max(m, max(h, max(v, max(d1, d2))));
	lw	a5,-1636(s0)		# tmp376, v
	mv	a1,a4	#, _44
	mv	a0,a5	#, tmp376
	call	max		#
	mv	a5,a0	# tmp377,
	sext.w	a4,a5	# _45, tmp377
# problem11.c:45:       m = max(m, max(h, max(v, max(d1, d2))));
	lw	a5,-1640(s0)		# tmp378, h
	mv	a1,a4	#, _45
	mv	a0,a5	#, tmp378
	call	max		#
	mv	a5,a0	# tmp379,
	sext.w	a4,a5	# _46, tmp379
# problem11.c:45:       m = max(m, max(h, max(v, max(d1, d2))));
	lw	a5,-1652(s0)		# tmp380, m
	mv	a1,a4	#, _46
	mv	a0,a5	#, tmp380
	call	max		#
	mv	a5,a0	# tmp381,
	sw	a5,-1652(s0)	# tmp381, m
# problem11.c:40:     for (j = 0; j < N-3; j++) {
	lw	a5,-1644(s0)		# tmp384, j
	addiw	a5,a5,1	#, tmp382, tmp383
	sw	a5,-1644(s0)	# tmp382, j
.L3:
# problem11.c:40:     for (j = 0; j < N-3; j++) {
	lw	a5,-1644(s0)		# tmp386, j
	sext.w	a4,a5	# tmp387, tmp385
	li	a5,16		# tmp388,
	bleu	a4,a5,.L4	#, tmp387, tmp388,
# problem11.c:39:   for (i = 0; i < N-3; i++) {
	lw	a5,-1648(s0)		# tmp391, i
	addiw	a5,a5,1	#, tmp389, tmp390
	sw	a5,-1648(s0)	# tmp389, i
.L2:
# problem11.c:39:   for (i = 0; i < N-3; i++) {
	lw	a5,-1648(s0)		# tmp393, i
	sext.w	a4,a5	# tmp394, tmp392
	li	a5,16		# tmp395,
	bleu	a4,a5,.L5	#, tmp394, tmp395,
# problem11.c:48:   printf("%u\n", m);
	lw	a5,-1652(s0)		# tmp396, m
	mv	a1,a5	#, tmp396
	lla	a0,.LC1	#,
	call	printf@plt	#
# problem11.c:50:   return 0;
	li	a5,0		# _58,
# problem11.c:51: }
	mv	a4,a5	# <retval>, _58
	la	a5,__stack_chk_guard		# tmp398,
	ld	a3, -24(s0)	# tmp401, D.2740
	ld	a5, 0(a5)	# tmp399, __stack_chk_guard
	xor	a5, a3, a5	# tmp399, tmp401
	li	a3, 0	# tmp401
	beq	a5,zero,.L7	#, tmp399,,
	call	__stack_chk_fail@plt	#
.L7:
	mv	a0,a4	#, <retval>
	ld	ra,1656(sp)		#,
	.cfi_restore 1
	ld	s0,1648(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 1664
	addi	sp,sp,1664	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	1
	.type	max, @function
max:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp136, a
	mv	a4,a1	# tmp138, b
	sw	a5,-20(s0)	# tmp137, a
	mv	a5,a4	# tmp139, tmp138
	sw	a5,-24(s0)	# tmp139, b
# problem11.c:55:   return a > b ? a : b;
	lw	a5,-20(s0)		# tmp142, a
	mv	a2,a5	# tmp141, tmp142
	lw	a5,-24(s0)		# tmp143, b
	mv	a3,a5	# tmp140, tmp143
	sext.w	a4,a3	# tmp144, tmp140
	sext.w	a5,a2	# tmp145, tmp141
	bgeu	a4,a5,.L9	#, tmp144, tmp145,
	mv	a3,a2	# tmp140, tmp141
.L9:
	sext.w	a5,a3	# _3, tmp140
# problem11.c:56: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	max, .-max
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
