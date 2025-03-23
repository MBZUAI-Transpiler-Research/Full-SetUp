	.file	"problem161.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"**"
	.align	3
.LC2:
	.string	"*"
	.align	3
.LC3:
	.string	"//"
	.align	3
.LC4:
	.string	"+"
	.align	3
.LC5:
	.string	"-"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-96	#,,
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	addi	s0,sp,96	#,,
	sd	a0,-72(s0)	# operato, operato
	sd	a1,-80(s0)	# operand, operand
	mv	a5,a2	# tmp425, operato_size
	mv	a4,a3	# tmp427, operand_size
	sw	a5,-84(s0)	# tmp426, operato_size
	mv	a5,a4	# tmp428, tmp427
	sw	a5,-88(s0)	# tmp428, operand_size
# problem161.c:7:     int *num = (int*)malloc(operand_size * sizeof(int));
	lw	a5,-88(s0)		# _1, operand_size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp429,
	sd	a5,-32(s0)	# tmp429, num
# problem161.c:8:     int *posto = (int*)malloc(operand_size * sizeof(int));
	lw	a5,-88(s0)		# _3, operand_size
	slli	a5,a5,2	#, _4, _3
	mv	a0,a5	#, _4
	call	malloc@plt	#
	mv	a5,a0	# tmp430,
	sd	a5,-24(s0)	# tmp430, posto
# problem161.c:9:     for (int i = 0; i < operand_size; i++) {
	sw	zero,-52(s0)	#, i
# problem161.c:9:     for (int i = 0; i < operand_size; i++) {
	j	.L2		#
.L3:
# problem161.c:10:         num[i] = operand[i];
	lw	a5,-52(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-80(s0)		# tmp431, operand
	add	a4,a4,a5	# _6, _7, tmp431
# problem161.c:10:         num[i] = operand[i];
	lw	a5,-52(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a3,-32(s0)		# tmp432, num
	add	a5,a3,a5	# _9, _10, tmp432
# problem161.c:10:         num[i] = operand[i];
	lw	a4,0(a4)		# _11, *_7
# problem161.c:10:         num[i] = operand[i];
	sw	a4,0(a5)	# _11, *_10
# problem161.c:11:         posto[i] = i;
	lw	a5,-52(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-24(s0)		# tmp433, posto
	add	a5,a4,a5	# _13, _14, tmp433
# problem161.c:11:         posto[i] = i;
	lw	a4,-52(s0)		# tmp434, i
	sw	a4,0(a5)	# tmp434, *_14
# problem161.c:9:     for (int i = 0; i < operand_size; i++) {
	lw	a5,-52(s0)		# tmp437, i
	addiw	a5,a5,1	#, tmp435, tmp436
	sw	a5,-52(s0)	# tmp435, i
.L2:
# problem161.c:9:     for (int i = 0; i < operand_size; i++) {
	lw	a5,-52(s0)		# tmp439, i
	mv	a4,a5	# tmp438, tmp439
	lw	a5,-88(s0)		# tmp441, operand_size
	sext.w	a4,a4	# tmp442, tmp438
	sext.w	a5,a5	# tmp443, tmp440
	blt	a4,a5,.L3	#, tmp442, tmp443,
# problem161.c:13:     for (int i = 0; i < operato_size; i++) {
	sw	zero,-48(s0)	#, i
# problem161.c:13:     for (int i = 0; i < operato_size; i++) {
	j	.L4		#
.L10:
# problem161.c:14:         if (strcmp(operato[i], "**") == 0) {
	lw	a5,-48(s0)		# _15, i
	slli	a5,a5,3	#, _16, _15
	ld	a4,-72(s0)		# tmp444, operato
	add	a5,a4,a5	# _16, _17, tmp444
# problem161.c:14:         if (strcmp(operato[i], "**") == 0) {
	ld	a5,0(a5)		# _18, *_17
	lla	a1,.LC1	#,
	mv	a0,a5	#, _18
	call	strcmp@plt	#
	mv	a5,a0	# tmp445,
# problem161.c:14:         if (strcmp(operato[i], "**") == 0) {
	bne	a5,zero,.L5	#, _19,,
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	j	.L6		#
.L7:
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-48(s0)		# _20, i
	slli	a5,a5,2	#, _21, _20
	ld	a4,-24(s0)		# tmp446, posto
	add	a5,a4,a5	# _21, _22, tmp446
	lw	a5,0(a5)		# _23, *_22
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	slli	a5,a5,2	#, _25, _24
	ld	a4,-24(s0)		# tmp447, posto
	add	a4,a4,a5	# _25, _26, tmp447
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-48(s0)		# _27, i
	slli	a5,a5,2	#, _28, _27
	ld	a3,-24(s0)		# tmp448, posto
	add	a5,a3,a5	# _28, _29, tmp448
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a4,0(a4)		# _30, *_26
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	sw	a4,0(a5)	# _30, *_29
.L6:
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-48(s0)		# _31, i
	slli	a5,a5,2	#, _32, _31
	ld	a4,-24(s0)		# tmp449, posto
	add	a5,a4,a5	# _32, _33, tmp449
	lw	a5,0(a5)		# _34, *_33
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	slli	a5,a5,2	#, _36, _35
	ld	a4,-24(s0)		# tmp450, posto
	add	a5,a4,a5	# _36, _37, tmp450
	lw	a3,0(a5)		# _38, *_37
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-48(s0)		# _39, i
	slli	a5,a5,2	#, _40, _39
	ld	a4,-24(s0)		# tmp451, posto
	add	a5,a4,a5	# _40, _41, tmp451
	lw	a5,0(a5)		# _42, *_41
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	mv	a4,a3	# tmp452, _38
	bne	a4,a5,.L7	#, tmp452, tmp453,
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	j	.L8		#
.L9:
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-48(s0)		# _43, i
	addi	a5,a5,1	#, _44, _43
	slli	a5,a5,2	#, _45, _44
	ld	a4,-24(s0)		# tmp454, posto
	add	a5,a4,a5	# _45, _46, tmp454
	lw	a5,0(a5)		# _47, *_46
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	slli	a5,a5,2	#, _49, _48
	ld	a4,-24(s0)		# tmp455, posto
	add	a4,a4,a5	# _49, _50, tmp455
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-48(s0)		# _51, i
	addi	a5,a5,1	#, _52, _51
	slli	a5,a5,2	#, _53, _52
	ld	a3,-24(s0)		# tmp456, posto
	add	a5,a3,a5	# _53, _54, tmp456
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a4,0(a4)		# _55, *_50
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	sw	a4,0(a5)	# _55, *_54
.L8:
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-48(s0)		# _56, i
	addi	a5,a5,1	#, _57, _56
	slli	a5,a5,2	#, _58, _57
	ld	a4,-24(s0)		# tmp457, posto
	add	a5,a4,a5	# _58, _59, tmp457
	lw	a5,0(a5)		# _60, *_59
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	slli	a5,a5,2	#, _62, _61
	ld	a4,-24(s0)		# tmp458, posto
	add	a5,a4,a5	# _62, _63, tmp458
	lw	a3,0(a5)		# _64, *_63
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-48(s0)		# _65, i
	addi	a5,a5,1	#, _66, _65
	slli	a5,a5,2	#, _67, _66
	ld	a4,-24(s0)		# tmp459, posto
	add	a5,a4,a5	# _67, _68, tmp459
	lw	a5,0(a5)		# _69, *_68
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	mv	a4,a3	# tmp460, _64
	bne	a4,a5,.L9	#, tmp460, tmp461,
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	lw	a5,-48(s0)		# _70, i
	slli	a5,a5,2	#, _71, _70
	ld	a4,-24(s0)		# tmp462, posto
	add	a5,a4,a5	# _71, _72, tmp462
	lw	a5,0(a5)		# _73, *_72
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	slli	a5,a5,2	#, _75, _74
	ld	a4,-32(s0)		# tmp463, num
	add	a5,a4,a5	# _75, _76, tmp463
	lw	a5,0(a5)		# _77, *_76
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	fcvt.d.w	fa5,a5	# _78, _77
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	lw	a5,-48(s0)		# _79, i
	addi	a5,a5,1	#, _80, _79
	slli	a5,a5,2	#, _81, _80
	ld	a4,-24(s0)		# tmp464, posto
	add	a5,a4,a5	# _81, _82, tmp464
	lw	a5,0(a5)		# _83, *_82
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	slli	a5,a5,2	#, _85, _84
	ld	a4,-32(s0)		# tmp465, num
	add	a5,a4,a5	# _85, _86, tmp465
	lw	a5,0(a5)		# _87, *_86
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	fcvt.d.w	fa4,a5	# _88, _87
	fmv.d	fa1,fa4	#, _88
	fmv.d	fa0,fa5	#, _78
	call	pow@plt	#
	fmv.d	fa5,fa0	# _89,
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	lw	a5,-48(s0)		# _90, i
	slli	a5,a5,2	#, _91, _90
	ld	a4,-24(s0)		# tmp466, posto
	add	a5,a4,a5	# _91, _92, tmp466
	lw	a5,0(a5)		# _93, *_92
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	slli	a5,a5,2	#, _95, _94
	ld	a4,-32(s0)		# tmp467, num
	add	a5,a4,a5	# _95, _96, tmp467
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	fcvt.w.d a4,fa5,rtz	# tmp468, _89
	sext.w	a4,a4	# _97, tmp468
	sw	a4,0(a5)	# _97, *_96
# problem161.c:18:             posto[i + 1] = posto[i];
	lw	a5,-48(s0)		# _98, i
	slli	a5,a5,2	#, _99, _98
	ld	a4,-24(s0)		# tmp469, posto
	add	a4,a4,a5	# _99, _100, tmp469
# problem161.c:18:             posto[i + 1] = posto[i];
	lw	a5,-48(s0)		# _101, i
	addi	a5,a5,1	#, _102, _101
	slli	a5,a5,2	#, _103, _102
	ld	a3,-24(s0)		# tmp470, posto
	add	a5,a3,a5	# _103, _104, tmp470
# problem161.c:18:             posto[i + 1] = posto[i];
	lw	a4,0(a4)		# _105, *_100
# problem161.c:18:             posto[i + 1] = posto[i];
	sw	a4,0(a5)	# _105, *_104
.L5:
# problem161.c:13:     for (int i = 0; i < operato_size; i++) {
	lw	a5,-48(s0)		# tmp473, i
	addiw	a5,a5,1	#, tmp471, tmp472
	sw	a5,-48(s0)	# tmp471, i
.L4:
# problem161.c:13:     for (int i = 0; i < operato_size; i++) {
	lw	a5,-48(s0)		# tmp475, i
	mv	a4,a5	# tmp474, tmp475
	lw	a5,-84(s0)		# tmp477, operato_size
	sext.w	a4,a4	# tmp478, tmp474
	sext.w	a5,a5	# tmp479, tmp476
	blt	a4,a5,.L10	#, tmp478, tmp479,
# problem161.c:21:     for (int i = 0; i < operato_size; i++) {
	sw	zero,-44(s0)	#, i
# problem161.c:21:     for (int i = 0; i < operato_size; i++) {
	j	.L11		#
.L20:
# problem161.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	lw	a5,-44(s0)		# _106, i
	slli	a5,a5,3	#, _107, _106
	ld	a4,-72(s0)		# tmp480, operato
	add	a5,a4,a5	# _107, _108, tmp480
# problem161.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	ld	a5,0(a5)		# _109, *_108
	lla	a1,.LC2	#,
	mv	a0,a5	#, _109
	call	strcmp@plt	#
	mv	a5,a0	# tmp481,
# problem161.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	beq	a5,zero,.L14	#, _110,,
# problem161.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	lw	a5,-44(s0)		# _111, i
	slli	a5,a5,3	#, _112, _111
	ld	a4,-72(s0)		# tmp482, operato
	add	a5,a4,a5	# _112, _113, tmp482
# problem161.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	ld	a5,0(a5)		# _114, *_113
	lla	a1,.LC3	#,
	mv	a0,a5	#, _114
	call	strcmp@plt	#
	mv	a5,a0	# tmp483,
# problem161.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	bne	a5,zero,.L13	#, _115,,
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	j	.L14		#
.L15:
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-44(s0)		# _116, i
	slli	a5,a5,2	#, _117, _116
	ld	a4,-24(s0)		# tmp484, posto
	add	a5,a4,a5	# _117, _118, tmp484
	lw	a5,0(a5)		# _119, *_118
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	slli	a5,a5,2	#, _121, _120
	ld	a4,-24(s0)		# tmp485, posto
	add	a4,a4,a5	# _121, _122, tmp485
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-44(s0)		# _123, i
	slli	a5,a5,2	#, _124, _123
	ld	a3,-24(s0)		# tmp486, posto
	add	a5,a3,a5	# _124, _125, tmp486
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a4,0(a4)		# _126, *_122
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	sw	a4,0(a5)	# _126, *_125
.L14:
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-44(s0)		# _127, i
	slli	a5,a5,2	#, _128, _127
	ld	a4,-24(s0)		# tmp487, posto
	add	a5,a4,a5	# _128, _129, tmp487
	lw	a5,0(a5)		# _130, *_129
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	slli	a5,a5,2	#, _132, _131
	ld	a4,-24(s0)		# tmp488, posto
	add	a5,a4,a5	# _132, _133, tmp488
	lw	a3,0(a5)		# _134, *_133
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-44(s0)		# _135, i
	slli	a5,a5,2	#, _136, _135
	ld	a4,-24(s0)		# tmp489, posto
	add	a5,a4,a5	# _136, _137, tmp489
	lw	a5,0(a5)		# _138, *_137
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	mv	a4,a3	# tmp490, _134
	bne	a4,a5,.L15	#, tmp490, tmp491,
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	j	.L16		#
.L17:
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-44(s0)		# _139, i
	addi	a5,a5,1	#, _140, _139
	slli	a5,a5,2	#, _141, _140
	ld	a4,-24(s0)		# tmp492, posto
	add	a5,a4,a5	# _141, _142, tmp492
	lw	a5,0(a5)		# _143, *_142
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	slli	a5,a5,2	#, _145, _144
	ld	a4,-24(s0)		# tmp493, posto
	add	a4,a4,a5	# _145, _146, tmp493
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-44(s0)		# _147, i
	addi	a5,a5,1	#, _148, _147
	slli	a5,a5,2	#, _149, _148
	ld	a3,-24(s0)		# tmp494, posto
	add	a5,a3,a5	# _149, _150, tmp494
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a4,0(a4)		# _151, *_146
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	sw	a4,0(a5)	# _151, *_150
.L16:
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-44(s0)		# _152, i
	addi	a5,a5,1	#, _153, _152
	slli	a5,a5,2	#, _154, _153
	ld	a4,-24(s0)		# tmp495, posto
	add	a5,a4,a5	# _154, _155, tmp495
	lw	a5,0(a5)		# _156, *_155
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	slli	a5,a5,2	#, _158, _157
	ld	a4,-24(s0)		# tmp496, posto
	add	a5,a4,a5	# _158, _159, tmp496
	lw	a3,0(a5)		# _160, *_159
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-44(s0)		# _161, i
	addi	a5,a5,1	#, _162, _161
	slli	a5,a5,2	#, _163, _162
	ld	a4,-24(s0)		# tmp497, posto
	add	a5,a4,a5	# _163, _164, tmp497
	lw	a5,0(a5)		# _165, *_164
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	mv	a4,a3	# tmp498, _160
	bne	a4,a5,.L17	#, tmp498, tmp499,
# problem161.c:25:             if (strcmp(operato[i], "*") == 0)
	lw	a5,-44(s0)		# _166, i
	slli	a5,a5,3	#, _167, _166
	ld	a4,-72(s0)		# tmp500, operato
	add	a5,a4,a5	# _167, _168, tmp500
# problem161.c:25:             if (strcmp(operato[i], "*") == 0)
	ld	a5,0(a5)		# _169, *_168
	lla	a1,.LC2	#,
	mv	a0,a5	#, _169
	call	strcmp@plt	#
	mv	a5,a0	# tmp501,
# problem161.c:25:             if (strcmp(operato[i], "*") == 0)
	bne	a5,zero,.L18	#, _170,,
# problem161.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	lw	a5,-44(s0)		# _171, i
	slli	a5,a5,2	#, _172, _171
	ld	a4,-24(s0)		# tmp502, posto
	add	a5,a4,a5	# _172, _173, tmp502
	lw	a5,0(a5)		# _174, *_173
# problem161.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	slli	a5,a5,2	#, _176, _175
	ld	a4,-32(s0)		# tmp503, num
	add	a5,a4,a5	# _176, _177, tmp503
	lw	a3,0(a5)		# _178, *_177
# problem161.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	lw	a5,-44(s0)		# _179, i
	addi	a5,a5,1	#, _180, _179
	slli	a5,a5,2	#, _181, _180
	ld	a4,-24(s0)		# tmp504, posto
	add	a5,a4,a5	# _181, _182, tmp504
	lw	a5,0(a5)		# _183, *_182
# problem161.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	slli	a5,a5,2	#, _185, _184
	ld	a4,-32(s0)		# tmp505, num
	add	a5,a4,a5	# _185, _186, tmp505
	lw	a4,0(a5)		# _187, *_186
# problem161.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	lw	a5,-44(s0)		# _188, i
	slli	a5,a5,2	#, _189, _188
	ld	a2,-24(s0)		# tmp506, posto
	add	a5,a2,a5	# _189, _190, tmp506
	lw	a5,0(a5)		# _191, *_190
# problem161.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	slli	a5,a5,2	#, _193, _192
	ld	a2,-32(s0)		# tmp507, num
	add	a5,a2,a5	# _193, _194, tmp507
	mulw	a4,a3,a4	# tmp508, _178, _187
	sext.w	a4,a4	# _195, tmp508
	sw	a4,0(a5)	# _195, *_194
	j	.L19		#
.L18:
# problem161.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	lw	a5,-44(s0)		# _196, i
	slli	a5,a5,2	#, _197, _196
	ld	a4,-24(s0)		# tmp509, posto
	add	a5,a4,a5	# _197, _198, tmp509
	lw	a5,0(a5)		# _199, *_198
# problem161.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	slli	a5,a5,2	#, _201, _200
	ld	a4,-32(s0)		# tmp510, num
	add	a5,a4,a5	# _201, _202, tmp510
	lw	a3,0(a5)		# _203, *_202
# problem161.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	lw	a5,-44(s0)		# _204, i
	addi	a5,a5,1	#, _205, _204
	slli	a5,a5,2	#, _206, _205
	ld	a4,-24(s0)		# tmp511, posto
	add	a5,a4,a5	# _206, _207, tmp511
	lw	a5,0(a5)		# _208, *_207
# problem161.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	slli	a5,a5,2	#, _210, _209
	ld	a4,-32(s0)		# tmp512, num
	add	a5,a4,a5	# _210, _211, tmp512
	lw	a4,0(a5)		# _212, *_211
# problem161.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	lw	a5,-44(s0)		# _213, i
	slli	a5,a5,2	#, _214, _213
	ld	a2,-24(s0)		# tmp513, posto
	add	a5,a2,a5	# _214, _215, tmp513
	lw	a5,0(a5)		# _216, *_215
# problem161.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	slli	a5,a5,2	#, _218, _217
	ld	a2,-32(s0)		# tmp514, num
	add	a5,a2,a5	# _218, _219, tmp514
	divw	a4,a3,a4	# _212, tmp516, _203
	sext.w	a4,a4	# _220, tmp516
	sw	a4,0(a5)	# _220, *_219
.L19:
# problem161.c:29:             posto[i + 1] = posto[i];
	lw	a5,-44(s0)		# _221, i
	slli	a5,a5,2	#, _222, _221
	ld	a4,-24(s0)		# tmp517, posto
	add	a4,a4,a5	# _222, _223, tmp517
# problem161.c:29:             posto[i + 1] = posto[i];
	lw	a5,-44(s0)		# _224, i
	addi	a5,a5,1	#, _225, _224
	slli	a5,a5,2	#, _226, _225
	ld	a3,-24(s0)		# tmp518, posto
	add	a5,a3,a5	# _226, _227, tmp518
# problem161.c:29:             posto[i + 1] = posto[i];
	lw	a4,0(a4)		# _228, *_223
# problem161.c:29:             posto[i + 1] = posto[i];
	sw	a4,0(a5)	# _228, *_227
.L13:
# problem161.c:21:     for (int i = 0; i < operato_size; i++) {
	lw	a5,-44(s0)		# tmp521, i
	addiw	a5,a5,1	#, tmp519, tmp520
	sw	a5,-44(s0)	# tmp519, i
.L11:
# problem161.c:21:     for (int i = 0; i < operato_size; i++) {
	lw	a5,-44(s0)		# tmp523, i
	mv	a4,a5	# tmp522, tmp523
	lw	a5,-84(s0)		# tmp525, operato_size
	sext.w	a4,a4	# tmp526, tmp522
	sext.w	a5,a5	# tmp527, tmp524
	blt	a4,a5,.L20	#, tmp526, tmp527,
# problem161.c:32:     for (int i = 0; i < operato_size; i++) {
	sw	zero,-40(s0)	#, i
# problem161.c:32:     for (int i = 0; i < operato_size; i++) {
	j	.L21		#
.L30:
# problem161.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	lw	a5,-40(s0)		# _229, i
	slli	a5,a5,3	#, _230, _229
	ld	a4,-72(s0)		# tmp528, operato
	add	a5,a4,a5	# _230, _231, tmp528
# problem161.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	ld	a5,0(a5)		# _232, *_231
	lla	a1,.LC4	#,
	mv	a0,a5	#, _232
	call	strcmp@plt	#
	mv	a5,a0	# tmp529,
# problem161.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	beq	a5,zero,.L24	#, _233,,
# problem161.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	lw	a5,-40(s0)		# _234, i
	slli	a5,a5,3	#, _235, _234
	ld	a4,-72(s0)		# tmp530, operato
	add	a5,a4,a5	# _235, _236, tmp530
# problem161.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	ld	a5,0(a5)		# _237, *_236
	lla	a1,.LC5	#,
	mv	a0,a5	#, _237
	call	strcmp@plt	#
	mv	a5,a0	# tmp531,
# problem161.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	bne	a5,zero,.L23	#, _238,,
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	j	.L24		#
.L25:
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-40(s0)		# _239, i
	slli	a5,a5,2	#, _240, _239
	ld	a4,-24(s0)		# tmp532, posto
	add	a5,a4,a5	# _240, _241, tmp532
	lw	a5,0(a5)		# _242, *_241
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	slli	a5,a5,2	#, _244, _243
	ld	a4,-24(s0)		# tmp533, posto
	add	a4,a4,a5	# _244, _245, tmp533
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-40(s0)		# _246, i
	slli	a5,a5,2	#, _247, _246
	ld	a3,-24(s0)		# tmp534, posto
	add	a5,a3,a5	# _247, _248, tmp534
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a4,0(a4)		# _249, *_245
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	sw	a4,0(a5)	# _249, *_248
.L24:
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-40(s0)		# _250, i
	slli	a5,a5,2	#, _251, _250
	ld	a4,-24(s0)		# tmp535, posto
	add	a5,a4,a5	# _251, _252, tmp535
	lw	a5,0(a5)		# _253, *_252
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	slli	a5,a5,2	#, _255, _254
	ld	a4,-24(s0)		# tmp536, posto
	add	a5,a4,a5	# _255, _256, tmp536
	lw	a3,0(a5)		# _257, *_256
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-40(s0)		# _258, i
	slli	a5,a5,2	#, _259, _258
	ld	a4,-24(s0)		# tmp537, posto
	add	a5,a4,a5	# _259, _260, tmp537
	lw	a5,0(a5)		# _261, *_260
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	mv	a4,a3	# tmp538, _257
	bne	a4,a5,.L25	#, tmp538, tmp539,
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	j	.L26		#
.L27:
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-40(s0)		# _262, i
	addi	a5,a5,1	#, _263, _262
	slli	a5,a5,2	#, _264, _263
	ld	a4,-24(s0)		# tmp540, posto
	add	a5,a4,a5	# _264, _265, tmp540
	lw	a5,0(a5)		# _266, *_265
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	slli	a5,a5,2	#, _268, _267
	ld	a4,-24(s0)		# tmp541, posto
	add	a4,a4,a5	# _268, _269, tmp541
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-40(s0)		# _270, i
	addi	a5,a5,1	#, _271, _270
	slli	a5,a5,2	#, _272, _271
	ld	a3,-24(s0)		# tmp542, posto
	add	a5,a3,a5	# _272, _273, tmp542
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a4,0(a4)		# _274, *_269
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	sw	a4,0(a5)	# _274, *_273
.L26:
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-40(s0)		# _275, i
	addi	a5,a5,1	#, _276, _275
	slli	a5,a5,2	#, _277, _276
	ld	a4,-24(s0)		# tmp543, posto
	add	a5,a4,a5	# _277, _278, tmp543
	lw	a5,0(a5)		# _279, *_278
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	slli	a5,a5,2	#, _281, _280
	ld	a4,-24(s0)		# tmp544, posto
	add	a5,a4,a5	# _281, _282, tmp544
	lw	a3,0(a5)		# _283, *_282
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-40(s0)		# _284, i
	addi	a5,a5,1	#, _285, _284
	slli	a5,a5,2	#, _286, _285
	ld	a4,-24(s0)		# tmp545, posto
	add	a5,a4,a5	# _286, _287, tmp545
	lw	a5,0(a5)		# _288, *_287
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	mv	a4,a3	# tmp546, _283
	bne	a4,a5,.L27	#, tmp546, tmp547,
# problem161.c:36:             if (strcmp(operato[i], "+") == 0)
	lw	a5,-40(s0)		# _289, i
	slli	a5,a5,3	#, _290, _289
	ld	a4,-72(s0)		# tmp548, operato
	add	a5,a4,a5	# _290, _291, tmp548
# problem161.c:36:             if (strcmp(operato[i], "+") == 0)
	ld	a5,0(a5)		# _292, *_291
	lla	a1,.LC4	#,
	mv	a0,a5	#, _292
	call	strcmp@plt	#
	mv	a5,a0	# tmp549,
# problem161.c:36:             if (strcmp(operato[i], "+") == 0)
	bne	a5,zero,.L28	#, _293,,
# problem161.c:37:                 num[posto[i]] += num[posto[i + 1]];
	lw	a5,-40(s0)		# _294, i
	slli	a5,a5,2	#, _295, _294
	ld	a4,-24(s0)		# tmp550, posto
	add	a5,a4,a5	# _295, _296, tmp550
	lw	a5,0(a5)		# _297, *_296
# problem161.c:37:                 num[posto[i]] += num[posto[i + 1]];
	slli	a5,a5,2	#, _299, _298
	ld	a4,-32(s0)		# tmp551, num
	add	a5,a4,a5	# _299, _300, tmp551
	lw	a3,0(a5)		# _301, *_300
# problem161.c:37:                 num[posto[i]] += num[posto[i + 1]];
	lw	a5,-40(s0)		# _302, i
	addi	a5,a5,1	#, _303, _302
	slli	a5,a5,2	#, _304, _303
	ld	a4,-24(s0)		# tmp552, posto
	add	a5,a4,a5	# _304, _305, tmp552
	lw	a5,0(a5)		# _306, *_305
# problem161.c:37:                 num[posto[i]] += num[posto[i + 1]];
	slli	a5,a5,2	#, _308, _307
	ld	a4,-32(s0)		# tmp553, num
	add	a5,a4,a5	# _308, _309, tmp553
	lw	a4,0(a5)		# _310, *_309
# problem161.c:37:                 num[posto[i]] += num[posto[i + 1]];
	lw	a5,-40(s0)		# _311, i
	slli	a5,a5,2	#, _312, _311
	ld	a2,-24(s0)		# tmp554, posto
	add	a5,a2,a5	# _312, _313, tmp554
	lw	a5,0(a5)		# _314, *_313
# problem161.c:37:                 num[posto[i]] += num[posto[i + 1]];
	slli	a5,a5,2	#, _316, _315
	ld	a2,-32(s0)		# tmp555, num
	add	a5,a2,a5	# _316, _317, tmp555
	addw	a4,a3,a4	# _310, tmp556, _301
	sext.w	a4,a4	# _318, tmp556
	sw	a4,0(a5)	# _318, *_317
	j	.L29		#
.L28:
# problem161.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	lw	a5,-40(s0)		# _319, i
	slli	a5,a5,2	#, _320, _319
	ld	a4,-24(s0)		# tmp557, posto
	add	a5,a4,a5	# _320, _321, tmp557
	lw	a5,0(a5)		# _322, *_321
# problem161.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	slli	a5,a5,2	#, _324, _323
	ld	a4,-32(s0)		# tmp558, num
	add	a5,a4,a5	# _324, _325, tmp558
	lw	a3,0(a5)		# _326, *_325
# problem161.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	lw	a5,-40(s0)		# _327, i
	addi	a5,a5,1	#, _328, _327
	slli	a5,a5,2	#, _329, _328
	ld	a4,-24(s0)		# tmp559, posto
	add	a5,a4,a5	# _329, _330, tmp559
	lw	a5,0(a5)		# _331, *_330
# problem161.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	slli	a5,a5,2	#, _333, _332
	ld	a4,-32(s0)		# tmp560, num
	add	a5,a4,a5	# _333, _334, tmp560
	lw	a4,0(a5)		# _335, *_334
# problem161.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	lw	a5,-40(s0)		# _336, i
	slli	a5,a5,2	#, _337, _336
	ld	a2,-24(s0)		# tmp561, posto
	add	a5,a2,a5	# _337, _338, tmp561
	lw	a5,0(a5)		# _339, *_338
# problem161.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	slli	a5,a5,2	#, _341, _340
	ld	a2,-32(s0)		# tmp562, num
	add	a5,a2,a5	# _341, _342, tmp562
	subw	a4,a3,a4	# tmp563, _326, _335
	sext.w	a4,a4	# _343, tmp563
	sw	a4,0(a5)	# _343, *_342
.L29:
# problem161.c:40:             posto[i + 1] = posto[i];
	lw	a5,-40(s0)		# _344, i
	slli	a5,a5,2	#, _345, _344
	ld	a4,-24(s0)		# tmp564, posto
	add	a4,a4,a5	# _345, _346, tmp564
# problem161.c:40:             posto[i + 1] = posto[i];
	lw	a5,-40(s0)		# _347, i
	addi	a5,a5,1	#, _348, _347
	slli	a5,a5,2	#, _349, _348
	ld	a3,-24(s0)		# tmp565, posto
	add	a5,a3,a5	# _349, _350, tmp565
# problem161.c:40:             posto[i + 1] = posto[i];
	lw	a4,0(a4)		# _351, *_346
# problem161.c:40:             posto[i + 1] = posto[i];
	sw	a4,0(a5)	# _351, *_350
.L23:
# problem161.c:32:     for (int i = 0; i < operato_size; i++) {
	lw	a5,-40(s0)		# tmp568, i
	addiw	a5,a5,1	#, tmp566, tmp567
	sw	a5,-40(s0)	# tmp566, i
.L21:
# problem161.c:32:     for (int i = 0; i < operato_size; i++) {
	lw	a5,-40(s0)		# tmp570, i
	mv	a4,a5	# tmp569, tmp570
	lw	a5,-84(s0)		# tmp572, operato_size
	sext.w	a4,a4	# tmp573, tmp569
	sext.w	a5,a5	# tmp574, tmp571
	blt	a4,a5,.L30	#, tmp573, tmp574,
# problem161.c:43:     int result = num[0];
	ld	a5,-32(s0)		# tmp575, num
	lw	a5,0(a5)		# tmp576, *num_374
	sw	a5,-36(s0)	# tmp576, result
# problem161.c:44:     free(num);
	ld	a0,-32(s0)		#, num
	call	free@plt	#
# problem161.c:45:     free(posto);
	ld	a0,-24(s0)		#, posto
	call	free@plt	#
# problem161.c:46:     return result;
	lw	a5,-36(s0)		# _385, result
# problem161.c:47: }
	mv	a0,a5	#, <retval>
	ld	ra,88(sp)		#,
	ld	s0,80(sp)		#,
	addi	sp,sp,96	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC6:
	.string	"problem161.c"
	.align	3
.LC7:
	.string	"func0(operators1, operands1, 3, 4) == 37"
	.align	3
.LC8:
	.string	"func0(operators2, operands2, 3, 4) == 9"
	.align	3
.LC9:
	.string	"func0(operators3, operands3, 2, 3) == 8"
	.align	3
.LC0:
	.word	2
	.word	3
	.word	4
	.word	5
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-144	#,,
	sd	ra,136(sp)	#,
	sd	s0,128(sp)	#,
	addi	s0,sp,144	#,,
# problem161.c:53: int main() {
	la	a5,__stack_chk_guard		# tmp77,
	ld	a4, 0(a5)	# tmp113, __stack_chk_guard
	sd	a4, -24(s0)	# tmp113, D.3742
	li	a4, 0	# tmp113
# problem161.c:54:     const char *operators1[] = {"**", "*", "+"};
	lla	a5,.LC1	# tmp78,
	sd	a5,-72(s0)	# tmp78, operators1[0]
	lla	a5,.LC2	# tmp79,
	sd	a5,-64(s0)	# tmp79, operators1[1]
	lla	a5,.LC4	# tmp80,
	sd	a5,-56(s0)	# tmp80, operators1[2]
# problem161.c:55:     int operands1[] = {2, 3, 4, 5};
	lla	a5,.LC0	# tmp81,
	ld	a4,0(a5)		# tmp82,
	sd	a4,-120(s0)	# tmp82, operands1
	ld	a5,8(a5)		# tmp83,
	sd	a5,-112(s0)	# tmp83, operands1
# problem161.c:56:     assert(func0(operators1, operands1, 3, 4) == 37);
	addi	a4,s0,-120	#, tmp84,
	addi	a5,s0,-72	#, tmp85,
	li	a3,4		#,
	li	a2,3		#,
	mv	a1,a4	#, tmp84
	mv	a0,a5	#, tmp85
	call	func0		#
	mv	a5,a0	# tmp86,
	mv	a4,a5	# tmp87, _1
	li	a5,37		# tmp88,
	beq	a4,a5,.L33	#, tmp87, tmp88,
# problem161.c:56:     assert(func0(operators1, operands1, 3, 4) == 37);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,56		#,
	lla	a1,.LC6	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L33:
# problem161.c:58:     const char *operators2[] = {"+", "*", "-"};
	lla	a5,.LC4	# tmp89,
	sd	a5,-48(s0)	# tmp89, operators2[0]
	lla	a5,.LC2	# tmp90,
	sd	a5,-40(s0)	# tmp90, operators2[1]
	lla	a5,.LC5	# tmp91,
	sd	a5,-32(s0)	# tmp91, operators2[2]
# problem161.c:59:     int operands2[] = {2, 3, 4, 5};
	lla	a5,.LC0	# tmp92,
	ld	a4,0(a5)		# tmp93,
	sd	a4,-104(s0)	# tmp93, operands2
	ld	a5,8(a5)		# tmp94,
	sd	a5,-96(s0)	# tmp94, operands2
# problem161.c:60:     assert(func0(operators2, operands2, 3, 4) == 9);
	addi	a4,s0,-104	#, tmp95,
	addi	a5,s0,-48	#, tmp96,
	li	a3,4		#,
	li	a2,3		#,
	mv	a1,a4	#, tmp95
	mv	a0,a5	#, tmp96
	call	func0		#
	mv	a5,a0	# tmp97,
	mv	a4,a5	# tmp98, _2
	li	a5,9		# tmp99,
	beq	a4,a5,.L34	#, tmp98, tmp99,
# problem161.c:60:     assert(func0(operators2, operands2, 3, 4) == 9);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,60		#,
	lla	a1,.LC6	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L34:
# problem161.c:62:     const char *operators3[] = {"//", "*"};
	lla	a5,.LC3	# tmp100,
	sd	a5,-88(s0)	# tmp100, operators3[0]
	lla	a5,.LC2	# tmp101,
	sd	a5,-80(s0)	# tmp101, operators3[1]
# problem161.c:63:     int operands3[] = {7, 3, 4};
	li	a5,7		# tmp102,
	sw	a5,-136(s0)	# tmp102, operands3[0]
	li	a5,3		# tmp103,
	sw	a5,-132(s0)	# tmp103, operands3[1]
	li	a5,4		# tmp104,
	sw	a5,-128(s0)	# tmp104, operands3[2]
# problem161.c:64:     assert(func0(operators3, operands3, 2, 3) == 8);
	addi	a4,s0,-136	#, tmp105,
	addi	a5,s0,-88	#, tmp106,
	li	a3,3		#,
	li	a2,2		#,
	mv	a1,a4	#, tmp105
	mv	a0,a5	#, tmp106
	call	func0		#
	mv	a5,a0	# tmp107,
	mv	a4,a5	# tmp108, _3
	li	a5,8		# tmp109,
	beq	a4,a5,.L35	#, tmp108, tmp109,
# problem161.c:64:     assert(func0(operators3, operands3, 2, 3) == 8);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,64		#,
	lla	a1,.LC6	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L35:
# problem161.c:66:     return 0;
	li	a5,0		# _24,
# problem161.c:67: }
	mv	a4,a5	# <retval>, _24
	la	a5,__stack_chk_guard		# tmp111,
	ld	a3, -24(s0)	# tmp114, D.3742
	ld	a5, 0(a5)	# tmp112, __stack_chk_guard
	xor	a5, a3, a5	# tmp112, tmp114
	li	a3, 0	# tmp114
	beq	a5,zero,.L37	#, tmp112,,
	call	__stack_chk_fail@plt	#
.L37:
	mv	a0,a4	#, <retval>
	ld	ra,136(sp)		#,
	ld	s0,128(sp)		#,
	addi	sp,sp,144	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
