	.file	"problem161.c"
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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)	# operato, operato
	sd	a1,-80(s0)	# operand, operand
	mv	a5,a2	# tmp487, operato_size
	mv	a4,a3	# tmp489, operand_size
	sw	a5,-84(s0)	# tmp488, operato_size
	mv	a5,a4	# tmp490, tmp489
	sw	a5,-88(s0)	# tmp490, operand_size
# problem161.c:7:     int *num = (int*)malloc(operand_size * sizeof(int));
	lw	a5,-88(s0)		# _1, operand_size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp491,
	sd	a5,-32(s0)	# tmp491, num
# problem161.c:8:     int *posto = (int*)malloc(operand_size * sizeof(int));
	lw	a5,-88(s0)		# _3, operand_size
	slli	a5,a5,2	#, _4, _3
	mv	a0,a5	#, _4
	call	malloc@plt	#
	mv	a5,a0	# tmp492,
	sd	a5,-24(s0)	# tmp492, posto
# problem161.c:9:     for (int i = 0; i < operand_size; i++) {
	sw	zero,-52(s0)	#, i
# problem161.c:9:     for (int i = 0; i < operand_size; i++) {
	j	.L2		#
.L3:
# problem161.c:10:         num[i] = operand[i];
	lw	a5,-52(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-80(s0)		# tmp493, operand
	add	a4,a4,a5	# _6, _7, tmp493
# problem161.c:10:         num[i] = operand[i];
	lw	a5,-52(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a3,-32(s0)		# tmp494, num
	add	a5,a3,a5	# _9, _10, tmp494
# problem161.c:10:         num[i] = operand[i];
	lw	a4,0(a4)		# _11, *_7
# problem161.c:10:         num[i] = operand[i];
	sw	a4,0(a5)	# _11, *_10
# problem161.c:11:         posto[i] = i;
	lw	a5,-52(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-24(s0)		# tmp495, posto
	add	a5,a4,a5	# _13, _14, tmp495
# problem161.c:11:         posto[i] = i;
	lw	a4,-52(s0)		# tmp496, i
	sw	a4,0(a5)	# tmp496, *_14
# problem161.c:9:     for (int i = 0; i < operand_size; i++) {
	lw	a5,-52(s0)		# tmp499, i
	addiw	a5,a5,1	#, tmp497, tmp498
	sw	a5,-52(s0)	# tmp497, i
.L2:
# problem161.c:9:     for (int i = 0; i < operand_size; i++) {
	lw	a5,-52(s0)		# tmp501, i
	mv	a4,a5	# tmp500, tmp501
	lw	a5,-88(s0)		# tmp503, operand_size
	sext.w	a4,a4	# tmp504, tmp500
	sext.w	a5,a5	# tmp505, tmp502
	blt	a4,a5,.L3	#, tmp504, tmp505,
# problem161.c:13:     for (int i = 0; i < operato_size; i++) {
	sw	zero,-48(s0)	#, i
# problem161.c:13:     for (int i = 0; i < operato_size; i++) {
	j	.L4		#
.L10:
# problem161.c:14:         if (strcmp(operato[i], "**") == 0) {
	lw	a5,-48(s0)		# _15, i
	slli	a5,a5,3	#, _16, _15
	ld	a4,-72(s0)		# tmp506, operato
	add	a5,a4,a5	# _16, _17, tmp506
# problem161.c:14:         if (strcmp(operato[i], "**") == 0) {
	ld	a5,0(a5)		# _18, *_17
	lla	a1,.LC1	#,
	mv	a0,a5	#, _18
	call	strcmp@plt	#
	mv	a5,a0	# tmp507,
# problem161.c:14:         if (strcmp(operato[i], "**") == 0) {
	bne	a5,zero,.L5	#, _19,,
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	j	.L6		#
.L7:
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-48(s0)		# _20, i
	slli	a5,a5,2	#, _21, _20
	ld	a4,-24(s0)		# tmp508, posto
	add	a5,a4,a5	# _21, _22, tmp508
	lw	a5,0(a5)		# _23, *_22
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	slli	a5,a5,2	#, _25, _24
	ld	a4,-24(s0)		# tmp509, posto
	add	a4,a4,a5	# _25, _26, tmp509
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-48(s0)		# _27, i
	slli	a5,a5,2	#, _28, _27
	ld	a3,-24(s0)		# tmp510, posto
	add	a5,a3,a5	# _28, _29, tmp510
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a4,0(a4)		# _30, *_26
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	sw	a4,0(a5)	# _30, *_29
.L6:
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-48(s0)		# _31, i
	slli	a5,a5,2	#, _32, _31
	ld	a4,-24(s0)		# tmp511, posto
	add	a5,a4,a5	# _32, _33, tmp511
	lw	a5,0(a5)		# _34, *_33
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	slli	a5,a5,2	#, _36, _35
	ld	a4,-24(s0)		# tmp512, posto
	add	a5,a4,a5	# _36, _37, tmp512
	lw	a3,0(a5)		# _38, *_37
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-48(s0)		# _39, i
	slli	a5,a5,2	#, _40, _39
	ld	a4,-24(s0)		# tmp513, posto
	add	a5,a4,a5	# _40, _41, tmp513
	lw	a5,0(a5)		# _42, *_41
# problem161.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	mv	a4,a3	# tmp514, _38
	bne	a4,a5,.L7	#, tmp514, tmp515,
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	j	.L8		#
.L9:
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-48(s0)		# _43, i
	addi	a5,a5,1	#, _44, _43
	slli	a5,a5,2	#, _45, _44
	ld	a4,-24(s0)		# tmp516, posto
	add	a5,a4,a5	# _45, _46, tmp516
	lw	a5,0(a5)		# _47, *_46
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	slli	a5,a5,2	#, _49, _48
	ld	a4,-24(s0)		# tmp517, posto
	add	a4,a4,a5	# _49, _50, tmp517
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-48(s0)		# _51, i
	addi	a5,a5,1	#, _52, _51
	slli	a5,a5,2	#, _53, _52
	ld	a3,-24(s0)		# tmp518, posto
	add	a5,a3,a5	# _53, _54, tmp518
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a4,0(a4)		# _55, *_50
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	sw	a4,0(a5)	# _55, *_54
.L8:
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-48(s0)		# _56, i
	addi	a5,a5,1	#, _57, _56
	slli	a5,a5,2	#, _58, _57
	ld	a4,-24(s0)		# tmp519, posto
	add	a5,a4,a5	# _58, _59, tmp519
	lw	a5,0(a5)		# _60, *_59
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	slli	a5,a5,2	#, _62, _61
	ld	a4,-24(s0)		# tmp520, posto
	add	a5,a4,a5	# _62, _63, tmp520
	lw	a3,0(a5)		# _64, *_63
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-48(s0)		# _65, i
	addi	a5,a5,1	#, _66, _65
	slli	a5,a5,2	#, _67, _66
	ld	a4,-24(s0)		# tmp521, posto
	add	a5,a4,a5	# _67, _68, tmp521
	lw	a5,0(a5)		# _69, *_68
# problem161.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	mv	a4,a3	# tmp522, _64
	bne	a4,a5,.L9	#, tmp522, tmp523,
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	lw	a5,-48(s0)		# _70, i
	slli	a5,a5,2	#, _71, _70
	ld	a4,-24(s0)		# tmp524, posto
	add	a5,a4,a5	# _71, _72, tmp524
	lw	a5,0(a5)		# _73, *_72
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	slli	a5,a5,2	#, _75, _74
	ld	a4,-32(s0)		# tmp525, num
	add	a5,a4,a5	# _75, _76, tmp525
	lw	a5,0(a5)		# _77, *_76
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	fcvt.d.w	fa5,a5	# _78, _77
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	lw	a5,-48(s0)		# _79, i
	addi	a5,a5,1	#, _80, _79
	slli	a5,a5,2	#, _81, _80
	ld	a4,-24(s0)		# tmp526, posto
	add	a5,a4,a5	# _81, _82, tmp526
	lw	a5,0(a5)		# _83, *_82
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	slli	a5,a5,2	#, _85, _84
	ld	a4,-32(s0)		# tmp527, num
	add	a5,a4,a5	# _85, _86, tmp527
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
	ld	a4,-24(s0)		# tmp528, posto
	add	a5,a4,a5	# _91, _92, tmp528
	lw	a5,0(a5)		# _93, *_92
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	slli	a5,a5,2	#, _95, _94
	ld	a4,-32(s0)		# tmp529, num
	add	a5,a4,a5	# _95, _96, tmp529
# problem161.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	fcvt.w.d a4,fa5,rtz	# tmp530, _89
	sext.w	a4,a4	# _97, tmp530
	sw	a4,0(a5)	# _97, *_96
# problem161.c:18:             posto[i + 1] = posto[i];
	lw	a5,-48(s0)		# _98, i
	slli	a5,a5,2	#, _99, _98
	ld	a4,-24(s0)		# tmp531, posto
	add	a4,a4,a5	# _99, _100, tmp531
# problem161.c:18:             posto[i + 1] = posto[i];
	lw	a5,-48(s0)		# _101, i
	addi	a5,a5,1	#, _102, _101
	slli	a5,a5,2	#, _103, _102
	ld	a3,-24(s0)		# tmp532, posto
	add	a5,a3,a5	# _103, _104, tmp532
# problem161.c:18:             posto[i + 1] = posto[i];
	lw	a4,0(a4)		# _105, *_100
# problem161.c:18:             posto[i + 1] = posto[i];
	sw	a4,0(a5)	# _105, *_104
.L5:
# problem161.c:13:     for (int i = 0; i < operato_size; i++) {
	lw	a5,-48(s0)		# tmp535, i
	addiw	a5,a5,1	#, tmp533, tmp534
	sw	a5,-48(s0)	# tmp533, i
.L4:
# problem161.c:13:     for (int i = 0; i < operato_size; i++) {
	lw	a5,-48(s0)		# tmp537, i
	mv	a4,a5	# tmp536, tmp537
	lw	a5,-84(s0)		# tmp539, operato_size
	sext.w	a4,a4	# tmp540, tmp536
	sext.w	a5,a5	# tmp541, tmp538
	blt	a4,a5,.L10	#, tmp540, tmp541,
# problem161.c:21:     for (int i = 0; i < operato_size; i++) {
	sw	zero,-44(s0)	#, i
# problem161.c:21:     for (int i = 0; i < operato_size; i++) {
	j	.L11		#
.L20:
# problem161.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	lw	a5,-44(s0)		# _106, i
	slli	a5,a5,3	#, _107, _106
	ld	a4,-72(s0)		# tmp542, operato
	add	a5,a4,a5	# _107, _108, tmp542
# problem161.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	ld	a5,0(a5)		# _109, *_108
	lla	a1,.LC2	#,
	mv	a0,a5	#, _109
	call	strcmp@plt	#
	mv	a5,a0	# tmp543,
# problem161.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	beq	a5,zero,.L14	#, _110,,
# problem161.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	lw	a5,-44(s0)		# _111, i
	slli	a5,a5,3	#, _112, _111
	ld	a4,-72(s0)		# tmp544, operato
	add	a5,a4,a5	# _112, _113, tmp544
# problem161.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	ld	a5,0(a5)		# _114, *_113
	lla	a1,.LC3	#,
	mv	a0,a5	#, _114
	call	strcmp@plt	#
	mv	a5,a0	# tmp545,
# problem161.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	bne	a5,zero,.L13	#, _115,,
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	j	.L14		#
.L15:
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-44(s0)		# _116, i
	slli	a5,a5,2	#, _117, _116
	ld	a4,-24(s0)		# tmp546, posto
	add	a5,a4,a5	# _117, _118, tmp546
	lw	a5,0(a5)		# _119, *_118
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	slli	a5,a5,2	#, _121, _120
	ld	a4,-24(s0)		# tmp547, posto
	add	a4,a4,a5	# _121, _122, tmp547
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-44(s0)		# _123, i
	slli	a5,a5,2	#, _124, _123
	ld	a3,-24(s0)		# tmp548, posto
	add	a5,a3,a5	# _124, _125, tmp548
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a4,0(a4)		# _126, *_122
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	sw	a4,0(a5)	# _126, *_125
.L14:
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-44(s0)		# _127, i
	slli	a5,a5,2	#, _128, _127
	ld	a4,-24(s0)		# tmp549, posto
	add	a5,a4,a5	# _128, _129, tmp549
	lw	a5,0(a5)		# _130, *_129
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	slli	a5,a5,2	#, _132, _131
	ld	a4,-24(s0)		# tmp550, posto
	add	a5,a4,a5	# _132, _133, tmp550
	lw	a3,0(a5)		# _134, *_133
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-44(s0)		# _135, i
	slli	a5,a5,2	#, _136, _135
	ld	a4,-24(s0)		# tmp551, posto
	add	a5,a4,a5	# _136, _137, tmp551
	lw	a5,0(a5)		# _138, *_137
# problem161.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	mv	a4,a3	# tmp552, _134
	bne	a4,a5,.L15	#, tmp552, tmp553,
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	j	.L16		#
.L17:
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-44(s0)		# _139, i
	addi	a5,a5,1	#, _140, _139
	slli	a5,a5,2	#, _141, _140
	ld	a4,-24(s0)		# tmp554, posto
	add	a5,a4,a5	# _141, _142, tmp554
	lw	a5,0(a5)		# _143, *_142
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	slli	a5,a5,2	#, _145, _144
	ld	a4,-24(s0)		# tmp555, posto
	add	a4,a4,a5	# _145, _146, tmp555
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-44(s0)		# _147, i
	addi	a5,a5,1	#, _148, _147
	slli	a5,a5,2	#, _149, _148
	ld	a3,-24(s0)		# tmp556, posto
	add	a5,a3,a5	# _149, _150, tmp556
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a4,0(a4)		# _151, *_146
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	sw	a4,0(a5)	# _151, *_150
.L16:
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-44(s0)		# _152, i
	addi	a5,a5,1	#, _153, _152
	slli	a5,a5,2	#, _154, _153
	ld	a4,-24(s0)		# tmp557, posto
	add	a5,a4,a5	# _154, _155, tmp557
	lw	a5,0(a5)		# _156, *_155
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	slli	a5,a5,2	#, _158, _157
	ld	a4,-24(s0)		# tmp558, posto
	add	a5,a4,a5	# _158, _159, tmp558
	lw	a3,0(a5)		# _160, *_159
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-44(s0)		# _161, i
	addi	a5,a5,1	#, _162, _161
	slli	a5,a5,2	#, _163, _162
	ld	a4,-24(s0)		# tmp559, posto
	add	a5,a4,a5	# _163, _164, tmp559
	lw	a5,0(a5)		# _165, *_164
# problem161.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	mv	a4,a3	# tmp560, _160
	bne	a4,a5,.L17	#, tmp560, tmp561,
# problem161.c:25:             if (strcmp(operato[i], "*") == 0)
	lw	a5,-44(s0)		# _166, i
	slli	a5,a5,3	#, _167, _166
	ld	a4,-72(s0)		# tmp562, operato
	add	a5,a4,a5	# _167, _168, tmp562
# problem161.c:25:             if (strcmp(operato[i], "*") == 0)
	ld	a5,0(a5)		# _169, *_168
	lla	a1,.LC2	#,
	mv	a0,a5	#, _169
	call	strcmp@plt	#
	mv	a5,a0	# tmp563,
# problem161.c:25:             if (strcmp(operato[i], "*") == 0)
	bne	a5,zero,.L18	#, _170,,
# problem161.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	lw	a5,-44(s0)		# _171, i
	slli	a5,a5,2	#, _172, _171
	ld	a4,-24(s0)		# tmp564, posto
	add	a5,a4,a5	# _172, _173, tmp564
	lw	a5,0(a5)		# _174, *_173
# problem161.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	slli	a5,a5,2	#, _176, _175
	ld	a4,-32(s0)		# tmp565, num
	add	a5,a4,a5	# _176, _177, tmp565
	lw	a3,0(a5)		# _178, *_177
# problem161.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	lw	a5,-44(s0)		# _179, i
	addi	a5,a5,1	#, _180, _179
	slli	a5,a5,2	#, _181, _180
	ld	a4,-24(s0)		# tmp566, posto
	add	a5,a4,a5	# _181, _182, tmp566
	lw	a5,0(a5)		# _183, *_182
# problem161.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	slli	a5,a5,2	#, _185, _184
	ld	a4,-32(s0)		# tmp567, num
	add	a5,a4,a5	# _185, _186, tmp567
	lw	a4,0(a5)		# _187, *_186
# problem161.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	lw	a5,-44(s0)		# _188, i
	slli	a5,a5,2	#, _189, _188
	ld	a2,-24(s0)		# tmp568, posto
	add	a5,a2,a5	# _189, _190, tmp568
	lw	a5,0(a5)		# _191, *_190
# problem161.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	slli	a5,a5,2	#, _193, _192
	ld	a2,-32(s0)		# tmp569, num
	add	a5,a2,a5	# _193, _194, tmp569
# problem161.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	mulw	a4,a3,a4	# tmp570, _178, _187
	sext.w	a4,a4	# _195, tmp570
	sw	a4,0(a5)	# _195, *_194
	j	.L19		#
.L18:
# problem161.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	lw	a5,-44(s0)		# _196, i
	slli	a5,a5,2	#, _197, _196
	ld	a4,-24(s0)		# tmp571, posto
	add	a5,a4,a5	# _197, _198, tmp571
	lw	a5,0(a5)		# _199, *_198
# problem161.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	slli	a5,a5,2	#, _201, _200
	ld	a4,-32(s0)		# tmp572, num
	add	a5,a4,a5	# _201, _202, tmp572
	lw	a3,0(a5)		# _203, *_202
# problem161.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	lw	a5,-44(s0)		# _204, i
	addi	a5,a5,1	#, _205, _204
	slli	a5,a5,2	#, _206, _205
	ld	a4,-24(s0)		# tmp573, posto
	add	a5,a4,a5	# _206, _207, tmp573
	lw	a5,0(a5)		# _208, *_207
# problem161.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	slli	a5,a5,2	#, _210, _209
	ld	a4,-32(s0)		# tmp574, num
	add	a5,a4,a5	# _210, _211, tmp574
	lw	a4,0(a5)		# _212, *_211
# problem161.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	lw	a5,-44(s0)		# _213, i
	slli	a5,a5,2	#, _214, _213
	ld	a2,-24(s0)		# tmp575, posto
	add	a5,a2,a5	# _214, _215, tmp575
	lw	a5,0(a5)		# _216, *_215
# problem161.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	slli	a5,a5,2	#, _218, _217
	ld	a2,-32(s0)		# tmp576, num
	add	a5,a2,a5	# _218, _219, tmp576
# problem161.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	divw	a4,a3,a4	# _212, tmp578, _203
	sext.w	a4,a4	# _220, tmp578
	sw	a4,0(a5)	# _220, *_219
.L19:
# problem161.c:29:             posto[i + 1] = posto[i];
	lw	a5,-44(s0)		# _221, i
	slli	a5,a5,2	#, _222, _221
	ld	a4,-24(s0)		# tmp579, posto
	add	a4,a4,a5	# _222, _223, tmp579
# problem161.c:29:             posto[i + 1] = posto[i];
	lw	a5,-44(s0)		# _224, i
	addi	a5,a5,1	#, _225, _224
	slli	a5,a5,2	#, _226, _225
	ld	a3,-24(s0)		# tmp580, posto
	add	a5,a3,a5	# _226, _227, tmp580
# problem161.c:29:             posto[i + 1] = posto[i];
	lw	a4,0(a4)		# _228, *_223
# problem161.c:29:             posto[i + 1] = posto[i];
	sw	a4,0(a5)	# _228, *_227
.L13:
# problem161.c:21:     for (int i = 0; i < operato_size; i++) {
	lw	a5,-44(s0)		# tmp583, i
	addiw	a5,a5,1	#, tmp581, tmp582
	sw	a5,-44(s0)	# tmp581, i
.L11:
# problem161.c:21:     for (int i = 0; i < operato_size; i++) {
	lw	a5,-44(s0)		# tmp585, i
	mv	a4,a5	# tmp584, tmp585
	lw	a5,-84(s0)		# tmp587, operato_size
	sext.w	a4,a4	# tmp588, tmp584
	sext.w	a5,a5	# tmp589, tmp586
	blt	a4,a5,.L20	#, tmp588, tmp589,
# problem161.c:32:     for (int i = 0; i < operato_size; i++) {
	sw	zero,-40(s0)	#, i
# problem161.c:32:     for (int i = 0; i < operato_size; i++) {
	j	.L21		#
.L30:
# problem161.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	lw	a5,-40(s0)		# _229, i
	slli	a5,a5,3	#, _230, _229
	ld	a4,-72(s0)		# tmp590, operato
	add	a5,a4,a5	# _230, _231, tmp590
# problem161.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	ld	a5,0(a5)		# _232, *_231
	lla	a1,.LC4	#,
	mv	a0,a5	#, _232
	call	strcmp@plt	#
	mv	a5,a0	# tmp591,
# problem161.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	beq	a5,zero,.L24	#, _233,,
# problem161.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	lw	a5,-40(s0)		# _234, i
	slli	a5,a5,3	#, _235, _234
	ld	a4,-72(s0)		# tmp592, operato
	add	a5,a4,a5	# _235, _236, tmp592
# problem161.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	ld	a5,0(a5)		# _237, *_236
	lla	a1,.LC5	#,
	mv	a0,a5	#, _237
	call	strcmp@plt	#
	mv	a5,a0	# tmp593,
# problem161.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	bne	a5,zero,.L23	#, _238,,
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	j	.L24		#
.L25:
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-40(s0)		# _239, i
	slli	a5,a5,2	#, _240, _239
	ld	a4,-24(s0)		# tmp594, posto
	add	a5,a4,a5	# _240, _241, tmp594
	lw	a5,0(a5)		# _242, *_241
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	slli	a5,a5,2	#, _244, _243
	ld	a4,-24(s0)		# tmp595, posto
	add	a4,a4,a5	# _244, _245, tmp595
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-40(s0)		# _246, i
	slli	a5,a5,2	#, _247, _246
	ld	a3,-24(s0)		# tmp596, posto
	add	a5,a3,a5	# _247, _248, tmp596
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a4,0(a4)		# _249, *_245
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	sw	a4,0(a5)	# _249, *_248
.L24:
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-40(s0)		# _250, i
	slli	a5,a5,2	#, _251, _250
	ld	a4,-24(s0)		# tmp597, posto
	add	a5,a4,a5	# _251, _252, tmp597
	lw	a5,0(a5)		# _253, *_252
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	slli	a5,a5,2	#, _255, _254
	ld	a4,-24(s0)		# tmp598, posto
	add	a5,a4,a5	# _255, _256, tmp598
	lw	a3,0(a5)		# _257, *_256
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	lw	a5,-40(s0)		# _258, i
	slli	a5,a5,2	#, _259, _258
	ld	a4,-24(s0)		# tmp599, posto
	add	a5,a4,a5	# _259, _260, tmp599
	lw	a5,0(a5)		# _261, *_260
# problem161.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	mv	a4,a3	# tmp600, _257
	bne	a4,a5,.L25	#, tmp600, tmp601,
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	j	.L26		#
.L27:
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-40(s0)		# _262, i
	addi	a5,a5,1	#, _263, _262
	slli	a5,a5,2	#, _264, _263
	ld	a4,-24(s0)		# tmp602, posto
	add	a5,a4,a5	# _264, _265, tmp602
	lw	a5,0(a5)		# _266, *_265
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	slli	a5,a5,2	#, _268, _267
	ld	a4,-24(s0)		# tmp603, posto
	add	a4,a4,a5	# _268, _269, tmp603
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-40(s0)		# _270, i
	addi	a5,a5,1	#, _271, _270
	slli	a5,a5,2	#, _272, _271
	ld	a3,-24(s0)		# tmp604, posto
	add	a5,a3,a5	# _272, _273, tmp604
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a4,0(a4)		# _274, *_269
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	sw	a4,0(a5)	# _274, *_273
.L26:
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-40(s0)		# _275, i
	addi	a5,a5,1	#, _276, _275
	slli	a5,a5,2	#, _277, _276
	ld	a4,-24(s0)		# tmp605, posto
	add	a5,a4,a5	# _277, _278, tmp605
	lw	a5,0(a5)		# _279, *_278
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	slli	a5,a5,2	#, _281, _280
	ld	a4,-24(s0)		# tmp606, posto
	add	a5,a4,a5	# _281, _282, tmp606
	lw	a3,0(a5)		# _283, *_282
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	lw	a5,-40(s0)		# _284, i
	addi	a5,a5,1	#, _285, _284
	slli	a5,a5,2	#, _286, _285
	ld	a4,-24(s0)		# tmp607, posto
	add	a5,a4,a5	# _286, _287, tmp607
	lw	a5,0(a5)		# _288, *_287
# problem161.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	mv	a4,a3	# tmp608, _283
	bne	a4,a5,.L27	#, tmp608, tmp609,
# problem161.c:36:             if (strcmp(operato[i], "+") == 0)
	lw	a5,-40(s0)		# _289, i
	slli	a5,a5,3	#, _290, _289
	ld	a4,-72(s0)		# tmp610, operato
	add	a5,a4,a5	# _290, _291, tmp610
# problem161.c:36:             if (strcmp(operato[i], "+") == 0)
	ld	a5,0(a5)		# _292, *_291
	lla	a1,.LC4	#,
	mv	a0,a5	#, _292
	call	strcmp@plt	#
	mv	a5,a0	# tmp611,
# problem161.c:36:             if (strcmp(operato[i], "+") == 0)
	bne	a5,zero,.L28	#, _293,,
# problem161.c:37:                 num[posto[i]] += num[posto[i + 1]];
	lw	a5,-40(s0)		# _294, i
	slli	a5,a5,2	#, _295, _294
	ld	a4,-24(s0)		# tmp612, posto
	add	a5,a4,a5	# _295, _296, tmp612
	lw	a5,0(a5)		# _297, *_296
# problem161.c:37:                 num[posto[i]] += num[posto[i + 1]];
	slli	a5,a5,2	#, _299, _298
	ld	a4,-32(s0)		# tmp613, num
	add	a5,a4,a5	# _299, _300, tmp613
	lw	a3,0(a5)		# _301, *_300
# problem161.c:37:                 num[posto[i]] += num[posto[i + 1]];
	lw	a5,-40(s0)		# _302, i
	addi	a5,a5,1	#, _303, _302
	slli	a5,a5,2	#, _304, _303
	ld	a4,-24(s0)		# tmp614, posto
	add	a5,a4,a5	# _304, _305, tmp614
	lw	a5,0(a5)		# _306, *_305
# problem161.c:37:                 num[posto[i]] += num[posto[i + 1]];
	slli	a5,a5,2	#, _308, _307
	ld	a4,-32(s0)		# tmp615, num
	add	a5,a4,a5	# _308, _309, tmp615
	lw	a4,0(a5)		# _310, *_309
# problem161.c:37:                 num[posto[i]] += num[posto[i + 1]];
	lw	a5,-40(s0)		# _311, i
	slli	a5,a5,2	#, _312, _311
	ld	a2,-24(s0)		# tmp616, posto
	add	a5,a2,a5	# _312, _313, tmp616
	lw	a5,0(a5)		# _314, *_313
# problem161.c:37:                 num[posto[i]] += num[posto[i + 1]];
	slli	a5,a5,2	#, _316, _315
	ld	a2,-32(s0)		# tmp617, num
	add	a5,a2,a5	# _316, _317, tmp617
# problem161.c:37:                 num[posto[i]] += num[posto[i + 1]];
	addw	a4,a3,a4	# _310, tmp618, _301
	sext.w	a4,a4	# _318, tmp618
	sw	a4,0(a5)	# _318, *_317
	j	.L29		#
.L28:
# problem161.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	lw	a5,-40(s0)		# _319, i
	slli	a5,a5,2	#, _320, _319
	ld	a4,-24(s0)		# tmp619, posto
	add	a5,a4,a5	# _320, _321, tmp619
	lw	a5,0(a5)		# _322, *_321
# problem161.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	slli	a5,a5,2	#, _324, _323
	ld	a4,-32(s0)		# tmp620, num
	add	a5,a4,a5	# _324, _325, tmp620
	lw	a3,0(a5)		# _326, *_325
# problem161.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	lw	a5,-40(s0)		# _327, i
	addi	a5,a5,1	#, _328, _327
	slli	a5,a5,2	#, _329, _328
	ld	a4,-24(s0)		# tmp621, posto
	add	a5,a4,a5	# _329, _330, tmp621
	lw	a5,0(a5)		# _331, *_330
# problem161.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	slli	a5,a5,2	#, _333, _332
	ld	a4,-32(s0)		# tmp622, num
	add	a5,a4,a5	# _333, _334, tmp622
	lw	a4,0(a5)		# _335, *_334
# problem161.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	lw	a5,-40(s0)		# _336, i
	slli	a5,a5,2	#, _337, _336
	ld	a2,-24(s0)		# tmp623, posto
	add	a5,a2,a5	# _337, _338, tmp623
	lw	a5,0(a5)		# _339, *_338
# problem161.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	slli	a5,a5,2	#, _341, _340
	ld	a2,-32(s0)		# tmp624, num
	add	a5,a2,a5	# _341, _342, tmp624
# problem161.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	subw	a4,a3,a4	# tmp625, _326, _335
	sext.w	a4,a4	# _343, tmp625
	sw	a4,0(a5)	# _343, *_342
.L29:
# problem161.c:40:             posto[i + 1] = posto[i];
	lw	a5,-40(s0)		# _344, i
	slli	a5,a5,2	#, _345, _344
	ld	a4,-24(s0)		# tmp626, posto
	add	a4,a4,a5	# _345, _346, tmp626
# problem161.c:40:             posto[i + 1] = posto[i];
	lw	a5,-40(s0)		# _347, i
	addi	a5,a5,1	#, _348, _347
	slli	a5,a5,2	#, _349, _348
	ld	a3,-24(s0)		# tmp627, posto
	add	a5,a3,a5	# _349, _350, tmp627
# problem161.c:40:             posto[i + 1] = posto[i];
	lw	a4,0(a4)		# _351, *_346
# problem161.c:40:             posto[i + 1] = posto[i];
	sw	a4,0(a5)	# _351, *_350
.L23:
# problem161.c:32:     for (int i = 0; i < operato_size; i++) {
	lw	a5,-40(s0)		# tmp630, i
	addiw	a5,a5,1	#, tmp628, tmp629
	sw	a5,-40(s0)	# tmp628, i
.L21:
# problem161.c:32:     for (int i = 0; i < operato_size; i++) {
	lw	a5,-40(s0)		# tmp632, i
	mv	a4,a5	# tmp631, tmp632
	lw	a5,-84(s0)		# tmp634, operato_size
	sext.w	a4,a4	# tmp635, tmp631
	sext.w	a5,a5	# tmp636, tmp633
	blt	a4,a5,.L30	#, tmp635, tmp636,
# problem161.c:43:     int result = num[0];
	ld	a5,-32(s0)		# tmp637, num
	lw	a5,0(a5)		# tmp638, *num_374
	sw	a5,-36(s0)	# tmp638, result
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
	.cfi_restore 1
	ld	s0,80(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
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
.LFB7:
	.cfi_startproc
	addi	sp,sp,-144	#,,
	.cfi_def_cfa_offset 144
	sd	ra,136(sp)	#,
	sd	s0,128(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,144	#,,
	.cfi_def_cfa 8, 0
# problem161.c:53: int main() {
	la	a5,__stack_chk_guard		# tmp139,
	ld	a4, 0(a5)	# tmp175, __stack_chk_guard
	sd	a4, -24(s0)	# tmp175, D.4594
	li	a4, 0	# tmp175
# problem161.c:54:     const char *operators1[] = {"**", "*", "+"};
	lla	a5,.LC1	# tmp140,
	sd	a5,-72(s0)	# tmp140, operators1[0]
	lla	a5,.LC2	# tmp141,
	sd	a5,-64(s0)	# tmp141, operators1[1]
	lla	a5,.LC4	# tmp142,
	sd	a5,-56(s0)	# tmp142, operators1[2]
# problem161.c:55:     int operands1[] = {2, 3, 4, 5};
	lla	a5,.LC0	# tmp143,
	ld	a4,0(a5)		# tmp144,
	sd	a4,-120(s0)	# tmp144, operands1
	ld	a5,8(a5)		# tmp145,
	sd	a5,-112(s0)	# tmp145, operands1
# problem161.c:56:     assert(func0(operators1, operands1, 3, 4) == 37);
	addi	a4,s0,-120	#, tmp146,
	addi	a5,s0,-72	#, tmp147,
	li	a3,4		#,
	li	a2,3		#,
	mv	a1,a4	#, tmp146
	mv	a0,a5	#, tmp147
	call	func0		#
	mv	a5,a0	# tmp148,
# problem161.c:56:     assert(func0(operators1, operands1, 3, 4) == 37);
	mv	a4,a5	# tmp149, _1
	li	a5,37		# tmp150,
	beq	a4,a5,.L33	#, tmp149, tmp150,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,56		#,
	lla	a1,.LC6	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L33:
# problem161.c:58:     const char *operators2[] = {"+", "*", "-"};
	lla	a5,.LC4	# tmp151,
	sd	a5,-48(s0)	# tmp151, operators2[0]
	lla	a5,.LC2	# tmp152,
	sd	a5,-40(s0)	# tmp152, operators2[1]
	lla	a5,.LC5	# tmp153,
	sd	a5,-32(s0)	# tmp153, operators2[2]
# problem161.c:59:     int operands2[] = {2, 3, 4, 5};
	lla	a5,.LC0	# tmp154,
	ld	a4,0(a5)		# tmp155,
	sd	a4,-104(s0)	# tmp155, operands2
	ld	a5,8(a5)		# tmp156,
	sd	a5,-96(s0)	# tmp156, operands2
# problem161.c:60:     assert(func0(operators2, operands2, 3, 4) == 9);
	addi	a4,s0,-104	#, tmp157,
	addi	a5,s0,-48	#, tmp158,
	li	a3,4		#,
	li	a2,3		#,
	mv	a1,a4	#, tmp157
	mv	a0,a5	#, tmp158
	call	func0		#
	mv	a5,a0	# tmp159,
# problem161.c:60:     assert(func0(operators2, operands2, 3, 4) == 9);
	mv	a4,a5	# tmp160, _2
	li	a5,9		# tmp161,
	beq	a4,a5,.L34	#, tmp160, tmp161,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,60		#,
	lla	a1,.LC6	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L34:
# problem161.c:62:     const char *operators3[] = {"//", "*"};
	lla	a5,.LC3	# tmp162,
	sd	a5,-88(s0)	# tmp162, operators3[0]
	lla	a5,.LC2	# tmp163,
	sd	a5,-80(s0)	# tmp163, operators3[1]
# problem161.c:63:     int operands3[] = {7, 3, 4};
	li	a5,7		# tmp164,
	sw	a5,-136(s0)	# tmp164, operands3[0]
	li	a5,3		# tmp165,
	sw	a5,-132(s0)	# tmp165, operands3[1]
	li	a5,4		# tmp166,
	sw	a5,-128(s0)	# tmp166, operands3[2]
# problem161.c:64:     assert(func0(operators3, operands3, 2, 3) == 8);
	addi	a4,s0,-136	#, tmp167,
	addi	a5,s0,-88	#, tmp168,
	li	a3,3		#,
	li	a2,2		#,
	mv	a1,a4	#, tmp167
	mv	a0,a5	#, tmp168
	call	func0		#
	mv	a5,a0	# tmp169,
# problem161.c:64:     assert(func0(operators3, operands3, 2, 3) == 8);
	mv	a4,a5	# tmp170, _3
	li	a5,8		# tmp171,
	beq	a4,a5,.L35	#, tmp170, tmp171,
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
	la	a5,__stack_chk_guard		# tmp173,
	ld	a3, -24(s0)	# tmp176, D.4594
	ld	a5, 0(a5)	# tmp174, __stack_chk_guard
	xor	a5, a3, a5	# tmp174, tmp176
	li	a3, 0	# tmp176
	beq	a5,zero,.L37	#, tmp174,,
	call	__stack_chk_fail@plt	#
.L37:
	mv	a0,a4	#, <retval>
	ld	ra,136(sp)		#,
	.cfi_restore 1
	ld	s0,128(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
