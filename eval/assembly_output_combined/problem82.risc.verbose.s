	.file	"problem82.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"A+"
	.align	3
.LC14:
	.string	"A"
	.align	3
.LC5:
	.string	"A-"
	.align	3
.LC10:
	.string	"B+"
	.align	3
.LC2:
	.string	"B"
	.align	3
.LC19:
	.string	"B-"
	.align	3
.LC21:
	.string	"C+"
	.align	3
.LC4:
	.string	"C"
	.align	3
.LC3:
	.string	"C-"
	.align	3
.LC25:
	.string	"D+"
	.align	3
.LC8:
	.string	"D"
	.align	3
.LC9:
	.string	"D-"
	.align	3
.LC28:
	.string	"E"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# grades, grades
	mv	a5,a1	# tmp175, size
	sw	a5,-44(s0)	# tmp176, size
# problem82.c:5:     char** out = malloc(size * sizeof(char*));
	lw	a5,-44(s0)		# _1, size
	slli	a5,a5,3	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp177,
	sd	a5,-24(s0)	# tmp177, out
# problem82.c:6:     for (int i = 0; i < size; ++i) {
	sw	zero,-28(s0)	#, i
# problem82.c:6:     for (int i = 0; i < size; ++i) {
	j	.L2		#
.L28:
# problem82.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	lw	a5,-28(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
	ld	a4,-40(s0)		# tmp178, grades
	add	a5,a4,a5	# _4, _5, tmp178
	flw	fa5,0(a5)	# _6, *_5
	fcvt.d.s	fa4,fa5	# _7, _6
# problem82.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	lla	a5,.LC12	# tmp180,
	fld	fa5,0(a5)	# tmp179,
	fge.d	a5,fa4,fa5	#, tmp181, _7, tmp179
	beq	a5,zero,.L42	#, tmp181,,
# problem82.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	lw	a5,-28(s0)		# _8, i
	slli	a5,a5,3	#, _9, _8
	ld	a4,-24(s0)		# tmp182, out
	add	a5,a4,a5	# _9, _10, tmp182
# problem82.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	lla	a4,.LC1	# tmp183,
	sd	a4,0(a5)	# tmp183, *_10
	j	.L5		#
.L42:
# problem82.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	lw	a5,-28(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-40(s0)		# tmp184, grades
	add	a5,a4,a5	# _12, _13, tmp184
	flw	fa5,0(a5)	# _14, *_13
	fcvt.d.s	fa4,fa5	# _15, _14
# problem82.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	lla	a5,.LC13	# tmp186,
	fld	fa5,0(a5)	# tmp185,
	fgt.d	a5,fa4,fa5	#, tmp187, _15, tmp185
	beq	a5,zero,.L43	#, tmp187,,
# problem82.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	lw	a5,-28(s0)		# _16, i
	slli	a5,a5,3	#, _17, _16
	ld	a4,-24(s0)		# tmp188, out
	add	a5,a4,a5	# _17, _18, tmp188
# problem82.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	lla	a4,.LC14	# tmp189,
	sd	a4,0(a5)	# tmp189, *_18
	j	.L5		#
.L43:
# problem82.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	lw	a5,-28(s0)		# _19, i
	slli	a5,a5,2	#, _20, _19
	ld	a4,-40(s0)		# tmp190, grades
	add	a5,a4,a5	# _20, _21, tmp190
	flw	fa5,0(a5)	# _22, *_21
	fcvt.d.s	fa4,fa5	# _23, _22
# problem82.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	lla	a5,.LC15	# tmp192,
	fld	fa5,0(a5)	# tmp191,
	fgt.d	a5,fa4,fa5	#, tmp193, _23, tmp191
	beq	a5,zero,.L44	#, tmp193,,
# problem82.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	lw	a5,-28(s0)		# _24, i
	slli	a5,a5,3	#, _25, _24
	ld	a4,-24(s0)		# tmp194, out
	add	a5,a4,a5	# _25, _26, tmp194
# problem82.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	lla	a4,.LC5	# tmp195,
	sd	a4,0(a5)	# tmp195, *_26
	j	.L5		#
.L44:
# problem82.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	lw	a5,-28(s0)		# _27, i
	slli	a5,a5,2	#, _28, _27
	ld	a4,-40(s0)		# tmp196, grades
	add	a5,a4,a5	# _28, _29, tmp196
	flw	fa5,0(a5)	# _30, *_29
	fcvt.d.s	fa4,fa5	# _31, _30
# problem82.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	lla	a5,.LC16	# tmp198,
	fld	fa5,0(a5)	# tmp197,
	fgt.d	a5,fa4,fa5	#, tmp199, _31, tmp197
	beq	a5,zero,.L45	#, tmp199,,
# problem82.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	lw	a5,-28(s0)		# _32, i
	slli	a5,a5,3	#, _33, _32
	ld	a4,-24(s0)		# tmp200, out
	add	a5,a4,a5	# _33, _34, tmp200
# problem82.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	lla	a4,.LC10	# tmp201,
	sd	a4,0(a5)	# tmp201, *_34
	j	.L5		#
.L45:
# problem82.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	lw	a5,-28(s0)		# _35, i
	slli	a5,a5,2	#, _36, _35
	ld	a4,-40(s0)		# tmp202, grades
	add	a5,a4,a5	# _36, _37, tmp202
	flw	fa5,0(a5)	# _38, *_37
	fcvt.d.s	fa4,fa5	# _39, _38
# problem82.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	lla	a5,.LC17	# tmp204,
	fld	fa5,0(a5)	# tmp203,
	fgt.d	a5,fa4,fa5	#, tmp205, _39, tmp203
	beq	a5,zero,.L46	#, tmp205,,
# problem82.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	lw	a5,-28(s0)		# _40, i
	slli	a5,a5,3	#, _41, _40
	ld	a4,-24(s0)		# tmp206, out
	add	a5,a4,a5	# _41, _42, tmp206
# problem82.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	lla	a4,.LC2	# tmp207,
	sd	a4,0(a5)	# tmp207, *_42
	j	.L5		#
.L46:
# problem82.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	lw	a5,-28(s0)		# _43, i
	slli	a5,a5,2	#, _44, _43
	ld	a4,-40(s0)		# tmp208, grades
	add	a5,a4,a5	# _44, _45, tmp208
	flw	fa5,0(a5)	# _46, *_45
	fcvt.d.s	fa4,fa5	# _47, _46
# problem82.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	lla	a5,.LC18	# tmp210,
	fld	fa5,0(a5)	# tmp209,
	fgt.d	a5,fa4,fa5	#, tmp211, _47, tmp209
	beq	a5,zero,.L47	#, tmp211,,
# problem82.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	lw	a5,-28(s0)		# _48, i
	slli	a5,a5,3	#, _49, _48
	ld	a4,-24(s0)		# tmp212, out
	add	a5,a4,a5	# _49, _50, tmp212
# problem82.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	lla	a4,.LC19	# tmp213,
	sd	a4,0(a5)	# tmp213, *_50
	j	.L5		#
.L47:
# problem82.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	lw	a5,-28(s0)		# _51, i
	slli	a5,a5,2	#, _52, _51
	ld	a4,-40(s0)		# tmp214, grades
	add	a5,a4,a5	# _52, _53, tmp214
	flw	fa5,0(a5)	# _54, *_53
	fcvt.d.s	fa4,fa5	# _55, _54
# problem82.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	lla	a5,.LC20	# tmp216,
	fld	fa5,0(a5)	# tmp215,
	fgt.d	a5,fa4,fa5	#, tmp217, _55, tmp215
	beq	a5,zero,.L48	#, tmp217,,
# problem82.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	lw	a5,-28(s0)		# _56, i
	slli	a5,a5,3	#, _57, _56
	ld	a4,-24(s0)		# tmp218, out
	add	a5,a4,a5	# _57, _58, tmp218
# problem82.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	lla	a4,.LC21	# tmp219,
	sd	a4,0(a5)	# tmp219, *_58
	j	.L5		#
.L48:
# problem82.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	lw	a5,-28(s0)		# _59, i
	slli	a5,a5,2	#, _60, _59
	ld	a4,-40(s0)		# tmp220, grades
	add	a5,a4,a5	# _60, _61, tmp220
	flw	fa5,0(a5)	# _62, *_61
	fcvt.d.s	fa4,fa5	# _63, _62
# problem82.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	lla	a5,.LC22	# tmp222,
	fld	fa5,0(a5)	# tmp221,
	fgt.d	a5,fa4,fa5	#, tmp223, _63, tmp221
	beq	a5,zero,.L49	#, tmp223,,
# problem82.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	lw	a5,-28(s0)		# _64, i
	slli	a5,a5,3	#, _65, _64
	ld	a4,-24(s0)		# tmp224, out
	add	a5,a4,a5	# _65, _66, tmp224
# problem82.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	lla	a4,.LC4	# tmp225,
	sd	a4,0(a5)	# tmp225, *_66
	j	.L5		#
.L49:
# problem82.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	lw	a5,-28(s0)		# _67, i
	slli	a5,a5,2	#, _68, _67
	ld	a4,-40(s0)		# tmp226, grades
	add	a5,a4,a5	# _68, _69, tmp226
	flw	fa5,0(a5)	# _70, *_69
	fcvt.d.s	fa4,fa5	# _71, _70
# problem82.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	lla	a5,.LC23	# tmp228,
	fld	fa5,0(a5)	# tmp227,
	fgt.d	a5,fa4,fa5	#, tmp229, _71, tmp227
	beq	a5,zero,.L50	#, tmp229,,
# problem82.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	lw	a5,-28(s0)		# _72, i
	slli	a5,a5,3	#, _73, _72
	ld	a4,-24(s0)		# tmp230, out
	add	a5,a4,a5	# _73, _74, tmp230
# problem82.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	lla	a4,.LC3	# tmp231,
	sd	a4,0(a5)	# tmp231, *_74
	j	.L5		#
.L50:
# problem82.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	lw	a5,-28(s0)		# _75, i
	slli	a5,a5,2	#, _76, _75
	ld	a4,-40(s0)		# tmp232, grades
	add	a5,a4,a5	# _76, _77, tmp232
	flw	fa5,0(a5)	# _78, *_77
	fcvt.d.s	fa4,fa5	# _79, _78
# problem82.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	lla	a5,.LC24	# tmp234,
	fld	fa5,0(a5)	# tmp233,
	fgt.d	a5,fa4,fa5	#, tmp235, _79, tmp233
	beq	a5,zero,.L51	#, tmp235,,
# problem82.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	lw	a5,-28(s0)		# _80, i
	slli	a5,a5,3	#, _81, _80
	ld	a4,-24(s0)		# tmp236, out
	add	a5,a4,a5	# _81, _82, tmp236
# problem82.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	lla	a4,.LC25	# tmp237,
	sd	a4,0(a5)	# tmp237, *_82
	j	.L5		#
.L51:
# problem82.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	lw	a5,-28(s0)		# _83, i
	slli	a5,a5,2	#, _84, _83
	ld	a4,-40(s0)		# tmp238, grades
	add	a5,a4,a5	# _84, _85, tmp238
	flw	fa5,0(a5)	# _86, *_85
	fcvt.d.s	fa4,fa5	# _87, _86
# problem82.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	lla	a5,.LC26	# tmp240,
	fld	fa5,0(a5)	# tmp239,
	fgt.d	a5,fa4,fa5	#, tmp241, _87, tmp239
	beq	a5,zero,.L52	#, tmp241,,
# problem82.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	lw	a5,-28(s0)		# _88, i
	slli	a5,a5,3	#, _89, _88
	ld	a4,-24(s0)		# tmp242, out
	add	a5,a4,a5	# _89, _90, tmp242
# problem82.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	lla	a4,.LC8	# tmp243,
	sd	a4,0(a5)	# tmp243, *_90
	j	.L5		#
.L52:
# problem82.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	lw	a5,-28(s0)		# _91, i
	slli	a5,a5,2	#, _92, _91
	ld	a4,-40(s0)		# tmp244, grades
	add	a5,a4,a5	# _92, _93, tmp244
	flw	fa5,0(a5)	# _94, *_93
	fcvt.d.s	fa4,fa5	# _95, _94
# problem82.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	lla	a5,.LC27	# tmp246,
	fld	fa5,0(a5)	# tmp245,
	fgt.d	a5,fa4,fa5	#, tmp247, _95, tmp245
	beq	a5,zero,.L53	#, tmp247,,
# problem82.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	lw	a5,-28(s0)		# _96, i
	slli	a5,a5,3	#, _97, _96
	ld	a4,-24(s0)		# tmp248, out
	add	a5,a4,a5	# _97, _98, tmp248
# problem82.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	lla	a4,.LC9	# tmp249,
	sd	a4,0(a5)	# tmp249, *_98
	j	.L5		#
.L53:
# problem82.c:19:         else out[i] = "E";
	lw	a5,-28(s0)		# _99, i
	slli	a5,a5,3	#, _100, _99
	ld	a4,-24(s0)		# tmp250, out
	add	a5,a4,a5	# _100, _101, tmp250
# problem82.c:19:         else out[i] = "E";
	lla	a4,.LC28	# tmp251,
	sd	a4,0(a5)	# tmp251, *_101
.L5:
# problem82.c:6:     for (int i = 0; i < size; ++i) {
	lw	a5,-28(s0)		# tmp254, i
	addiw	a5,a5,1	#, tmp252, tmp253
	sw	a5,-28(s0)	# tmp252, i
.L2:
# problem82.c:6:     for (int i = 0; i < size; ++i) {
	lw	a5,-28(s0)		# tmp256, i
	mv	a4,a5	# tmp255, tmp256
	lw	a5,-44(s0)		# tmp258, size
	sext.w	a4,a4	# tmp259, tmp255
	sext.w	a5,a5	# tmp260, tmp257
	blt	a4,a5,.L28	#, tmp259, tmp260,
# problem82.c:21:     return out;
	ld	a5,-24(s0)		# _110, out
# problem82.c:22: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp83, size
	sw	a5,-52(s0)	# tmp84, size
# problem82.c:32:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem82.c:32:     for (int i = 0; i < size; i++) {
	j	.L55		#
.L58:
# problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp85, a
	add	a5,a4,a5	# _2, _3, tmp85
# problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	ld	a3,0(a5)		# _4, *_3
# problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-48(s0)		# tmp86, b
	add	a5,a4,a5	# _6, _7, tmp86
# problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	ld	a5,0(a5)		# _8, *_7
	mv	a1,a5	#, _8
	mv	a0,a3	#, _4
	call	strcmp@plt	#
	mv	a5,a0	# tmp87,
# problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	beq	a5,zero,.L56	#, _9,,
# problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	li	a5,0		# _11,
	j	.L57		#
.L56:
# problem82.c:32:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp90, i
	addiw	a5,a5,1	#, tmp88, tmp89
	sw	a5,-20(s0)	# tmp88, i
.L55:
# problem82.c:32:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp92, i
	mv	a4,a5	# tmp91, tmp92
	lw	a5,-52(s0)		# tmp94, size
	sext.w	a4,a4	# tmp95, tmp91
	sext.w	a5,a5	# tmp96, tmp93
	blt	a4,a5,.L58	#, tmp95, tmp96,
# problem82.c:35:     return true;
	li	a5,1		# _11,
.L57:
# problem82.c:36: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC30:
	.string	"problem82.c"
	.align	3
.LC31:
	.string	"issame(result1, expected1, 5)"
	.align	3
.LC33:
	.string	"issame(result2, expected2, 1)"
	.align	3
.LC35:
	.string	"issame(result3, expected3, 1)"
	.align	3
.LC36:
	.string	"issame(result4, expected4, 1)"
	.align	3
.LC38:
	.string	"issame(result5, expected5, 5)"
	.align	3
.LC40:
	.string	"issame(result6, expected6, 2)"
	.align	3
.LC0:
	.word	1082130432
	.word	1077936128
	.word	1071225242
	.word	1073741824
	.word	1080033280
	.data
	.align	3
.LC29:
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC5
	.section	.rodata
	.align	3
.LC7:
	.word	1065353216
	.word	1050253722
	.word	1069547520
	.word	1077097267
	.word	1079194419
	.data
	.align	3
.LC37:
	.dword	.LC8
	.dword	.LC9
	.dword	.LC3
	.dword	.LC2
	.dword	.LC10
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-272	#,,
	sd	ra,264(sp)	#,
	sd	s0,256(sp)	#,
	addi	s0,sp,272	#,,
# problem82.c:38: int main() {
	la	a5,__stack_chk_guard		# tmp80,
	ld	a4, 0(a5)	# tmp133, __stack_chk_guard
	sd	a4, -24(s0)	# tmp133, D.2732
	li	a4, 0	# tmp133
# problem82.c:39:     float grades1[] = {4.0, 3, 1.7, 2, 3.5};
	lla	a5,.LC0	# tmp81,
	ld	a4,0(a5)		# tmp82,
	sd	a4,-152(s0)	# tmp82, grades1
	ld	a4,8(a5)		# tmp83,
	sd	a4,-144(s0)	# tmp83, grades1
	lw	a5,16(a5)		# tmp84,
	sw	a5,-136(s0)	# tmp84, grades1
# problem82.c:40:     char* expected1[] = {"A+", "B", "C-", "C", "A-"};
	lla	a5,.LC29	# tmp85,
	ld	a1,0(a5)		# tmp86,
	ld	a2,8(a5)		# tmp87,
	ld	a3,16(a5)		# tmp88,
	ld	a4,24(a5)		# tmp89,
	ld	a5,32(a5)		# tmp90,
	sd	a1,-104(s0)	# tmp86, expected1
	sd	a2,-96(s0)	# tmp87, expected1
	sd	a3,-88(s0)	# tmp88, expected1
	sd	a4,-80(s0)	# tmp89, expected1
	sd	a5,-72(s0)	# tmp90, expected1
# problem82.c:41:     char** result1 = func0(grades1, 5);
	addi	a5,s0,-152	#, tmp91,
	li	a1,5		#,
	mv	a0,a5	#, tmp91
	call	func0		#
	sd	a0,-272(s0)	#, result1
# problem82.c:42:     assert(issame(result1, expected1, 5));
	addi	a5,s0,-104	#, tmp92,
	li	a2,5		#,
	mv	a1,a5	#, tmp92
	ld	a0,-272(s0)		#, result1
	call	issame		#
	mv	a5,a0	# tmp93,
	bne	a5,zero,.L60	#, _1,,
# problem82.c:42:     assert(issame(result1, expected1, 5));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC30	#,
	lla	a0,.LC31	#,
	call	__assert_fail@plt	#
.L60:
# problem82.c:43:     free(result1);
	ld	a0,-272(s0)		#, result1
	call	free@plt	#
# problem82.c:45:     float grades2[] = {1.2};
	lla	a5,.LC32	# tmp94,
	flw	fa5,0(a5)	# tmp95,
	fsw	fa5,-224(s0)	# tmp95, grades2[0]
# problem82.c:46:     char* expected2[] = {"D+"};
	lla	a5,.LC25	# tmp96,
	sd	a5,-200(s0)	# tmp96, expected2[0]
# problem82.c:47:     char** result2 = func0(grades2, 1);
	addi	a5,s0,-224	#, tmp97,
	li	a1,1		#,
	mv	a0,a5	#, tmp97
	call	func0		#
	sd	a0,-264(s0)	#, result2
# problem82.c:48:     assert(issame(result2, expected2, 1));
	addi	a5,s0,-200	#, tmp98,
	li	a2,1		#,
	mv	a1,a5	#, tmp98
	ld	a0,-264(s0)		#, result2
	call	issame		#
	mv	a5,a0	# tmp99,
	bne	a5,zero,.L61	#, _2,,
# problem82.c:48:     assert(issame(result2, expected2, 1));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,48		#,
	lla	a1,.LC30	#,
	lla	a0,.LC33	#,
	call	__assert_fail@plt	#
.L61:
# problem82.c:49:     free(result2);
	ld	a0,-264(s0)		#, result2
	call	free@plt	#
# problem82.c:51:     float grades3[] = {0.5};
	lla	a5,.LC34	# tmp100,
	flw	fa5,0(a5)	# tmp101,
	fsw	fa5,-216(s0)	# tmp101, grades3[0]
# problem82.c:52:     char* expected3[] = {"D-"};
	lla	a5,.LC9	# tmp102,
	sd	a5,-192(s0)	# tmp102, expected3[0]
# problem82.c:53:     char** result3 = func0(grades3, 1);
	addi	a5,s0,-216	#, tmp103,
	li	a1,1		#,
	mv	a0,a5	#, tmp103
	call	func0		#
	sd	a0,-256(s0)	#, result3
# problem82.c:54:     assert(issame(result3, expected3, 1));
	addi	a5,s0,-192	#, tmp104,
	li	a2,1		#,
	mv	a1,a5	#, tmp104
	ld	a0,-256(s0)		#, result3
	call	issame		#
	mv	a5,a0	# tmp105,
	bne	a5,zero,.L62	#, _3,,
# problem82.c:54:     assert(issame(result3, expected3, 1));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,54		#,
	lla	a1,.LC30	#,
	lla	a0,.LC35	#,
	call	__assert_fail@plt	#
.L62:
# problem82.c:55:     free(result3);
	ld	a0,-256(s0)		#, result3
	call	free@plt	#
# problem82.c:57:     float grades4[] = {0.0};
	sw	zero,-208(s0)	#, grades4[0]
# problem82.c:58:     char* expected4[] = {"E"};
	lla	a5,.LC28	# tmp106,
	sd	a5,-184(s0)	# tmp106, expected4[0]
# problem82.c:59:     char** result4 = func0(grades4, 1);
	addi	a5,s0,-208	#, tmp107,
	li	a1,1		#,
	mv	a0,a5	#, tmp107
	call	func0		#
	sd	a0,-248(s0)	#, result4
# problem82.c:60:     assert(issame(result4, expected4, 1));
	addi	a5,s0,-184	#, tmp108,
	li	a2,1		#,
	mv	a1,a5	#, tmp108
	ld	a0,-248(s0)		#, result4
	call	issame		#
	mv	a5,a0	# tmp109,
	bne	a5,zero,.L63	#, _4,,
# problem82.c:60:     assert(issame(result4, expected4, 1));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,60		#,
	lla	a1,.LC30	#,
	lla	a0,.LC36	#,
	call	__assert_fail@plt	#
.L63:
# problem82.c:61:     free(result4);
	ld	a0,-248(s0)		#, result4
	call	free@plt	#
# problem82.c:63:     float grades5[] = {1, 0.3, 1.5, 2.8, 3.3};
	lla	a5,.LC7	# tmp110,
	ld	a4,0(a5)		# tmp111,
	sd	a4,-128(s0)	# tmp111, grades5
	ld	a4,8(a5)		# tmp112,
	sd	a4,-120(s0)	# tmp112, grades5
	lw	a5,16(a5)		# tmp113,
	sw	a5,-112(s0)	# tmp113, grades5
# problem82.c:64:     char* expected5[] = {"D", "D-", "C-", "B", "B+"};
	lla	a5,.LC37	# tmp114,
	ld	a1,0(a5)		# tmp115,
	ld	a2,8(a5)		# tmp116,
	ld	a3,16(a5)		# tmp117,
	ld	a4,24(a5)		# tmp118,
	ld	a5,32(a5)		# tmp119,
	sd	a1,-64(s0)	# tmp115, expected5
	sd	a2,-56(s0)	# tmp116, expected5
	sd	a3,-48(s0)	# tmp117, expected5
	sd	a4,-40(s0)	# tmp118, expected5
	sd	a5,-32(s0)	# tmp119, expected5
# problem82.c:65:     char** result5 = func0(grades5, 5);
	addi	a5,s0,-128	#, tmp120,
	li	a1,5		#,
	mv	a0,a5	#, tmp120
	call	func0		#
	sd	a0,-240(s0)	#, result5
# problem82.c:66:     assert(issame(result5, expected5, 5));
	addi	a5,s0,-64	#, tmp121,
	li	a2,5		#,
	mv	a1,a5	#, tmp121
	ld	a0,-240(s0)		#, result5
	call	issame		#
	mv	a5,a0	# tmp122,
	bne	a5,zero,.L64	#, _5,,
# problem82.c:66:     assert(issame(result5, expected5, 5));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,66		#,
	lla	a1,.LC30	#,
	lla	a0,.LC38	#,
	call	__assert_fail@plt	#
.L64:
# problem82.c:67:     free(result5);
	ld	a0,-240(s0)		#, result5
	call	free@plt	#
# problem82.c:69:     float grades6[] = {0, 0.7};
	sw	zero,-176(s0)	#, grades6[0]
	lla	a5,.LC39	# tmp123,
	flw	fa5,0(a5)	# tmp124,
	fsw	fa5,-172(s0)	# tmp124, grades6[1]
# problem82.c:70:     char* expected6[] = {"E", "D-"};
	lla	a5,.LC28	# tmp125,
	sd	a5,-168(s0)	# tmp125, expected6[0]
	lla	a5,.LC9	# tmp126,
	sd	a5,-160(s0)	# tmp126, expected6[1]
# problem82.c:71:     char** result6 = func0(grades6, 2);
	addi	a5,s0,-176	#, tmp127,
	li	a1,2		#,
	mv	a0,a5	#, tmp127
	call	func0		#
	sd	a0,-232(s0)	#, result6
# problem82.c:72:     assert(issame(result6, expected6, 2));
	addi	a5,s0,-168	#, tmp128,
	li	a2,2		#,
	mv	a1,a5	#, tmp128
	ld	a0,-232(s0)		#, result6
	call	issame		#
	mv	a5,a0	# tmp129,
	bne	a5,zero,.L65	#, _6,,
# problem82.c:72:     assert(issame(result6, expected6, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,72		#,
	lla	a1,.LC30	#,
	lla	a0,.LC40	#,
	call	__assert_fail@plt	#
.L65:
# problem82.c:73:     free(result6);
	ld	a0,-232(s0)		#, result6
	call	free@plt	#
# problem82.c:75:     return 0;
	li	a5,0		# _52,
# problem82.c:76: }
	mv	a4,a5	# <retval>, _52
	la	a5,__stack_chk_guard		# tmp131,
	ld	a3, -24(s0)	# tmp134, D.2732
	ld	a5, 0(a5)	# tmp132, __stack_chk_guard
	xor	a5, a3, a5	# tmp132, tmp134
	li	a3, 0	# tmp134
	beq	a5,zero,.L67	#, tmp132,,
	call	__stack_chk_fail@plt	#
.L67:
	mv	a0,a4	#, <retval>
	ld	ra,264(sp)		#,
	ld	s0,256(sp)		#,
	addi	sp,sp,272	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC12:
	.word	-1841681977
	.word	1074790347
	.align	3
.LC13:
	.word	123695058
	.word	1074633166
	.align	3
.LC15:
	.word	-735298401
	.word	1074423450
	.align	3
.LC16:
	.word	1841681977
	.word	1074266164
	.align	3
.LC17:
	.word	123695058
	.word	1074108878
	.align	3
.LC18:
	.word	-735298401
	.word	1073899162
	.align	3
.LC20:
	.word	1841681977
	.word	1073741876
	.align	3
.LC22:
	.word	247390116
	.word	1073427356
	.align	3
.LC23:
	.word	-1470596802
	.word	1073007925
	.align	3
.LC24:
	.word	-611603343
	.word	1072693352
	.align	3
.LC26:
	.word	494780232
	.word	1072064312
	.align	3
.LC27:
	.word	-350469331
	.word	1058682594
	.align	2
.LC32:
	.word	1067030938
	.align	2
.LC34:
	.word	1056964608
	.align	2
.LC39:
	.word	1060320051
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
