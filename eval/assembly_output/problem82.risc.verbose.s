	.file	"problem82.c"
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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# grades, grades
	mv	a5,a1	# tmp237, size
	sw	a5,-44(s0)	# tmp238, size
# problem82.c:5:     char** out = malloc(size * sizeof(char*));
	lw	a5,-44(s0)		# _1, size
	slli	a5,a5,3	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp239,
	sd	a5,-24(s0)	# tmp239, out
# problem82.c:6:     for (int i = 0; i < size; ++i) {
	sw	zero,-28(s0)	#, i
# problem82.c:6:     for (int i = 0; i < size; ++i) {
	j	.L2		#
.L28:
# problem82.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	lw	a5,-28(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
	ld	a4,-40(s0)		# tmp240, grades
	add	a5,a4,a5	# _4, _5, tmp240
	flw	fa5,0(a5)	# _6, *_5
	fcvt.d.s	fa4,fa5	# _7, _6
# problem82.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	lla	a5,.LC12	# tmp242,
	fld	fa5,0(a5)	# tmp241,
	fge.d	a5,fa4,fa5	#, tmp243, _7, tmp241
	beq	a5,zero,.L42	#, tmp243,,
# problem82.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	lw	a5,-28(s0)		# _8, i
	slli	a5,a5,3	#, _9, _8
	ld	a4,-24(s0)		# tmp244, out
	add	a5,a4,a5	# _9, _10, tmp244
# problem82.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	lla	a4,.LC1	# tmp245,
	sd	a4,0(a5)	# tmp245, *_10
	j	.L5		#
.L42:
# problem82.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	lw	a5,-28(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-40(s0)		# tmp246, grades
	add	a5,a4,a5	# _12, _13, tmp246
	flw	fa5,0(a5)	# _14, *_13
	fcvt.d.s	fa4,fa5	# _15, _14
# problem82.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	lla	a5,.LC13	# tmp248,
	fld	fa5,0(a5)	# tmp247,
	fgt.d	a5,fa4,fa5	#, tmp249, _15, tmp247
	beq	a5,zero,.L43	#, tmp249,,
# problem82.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	lw	a5,-28(s0)		# _16, i
	slli	a5,a5,3	#, _17, _16
	ld	a4,-24(s0)		# tmp250, out
	add	a5,a4,a5	# _17, _18, tmp250
# problem82.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	lla	a4,.LC14	# tmp251,
	sd	a4,0(a5)	# tmp251, *_18
	j	.L5		#
.L43:
# problem82.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	lw	a5,-28(s0)		# _19, i
	slli	a5,a5,2	#, _20, _19
	ld	a4,-40(s0)		# tmp252, grades
	add	a5,a4,a5	# _20, _21, tmp252
	flw	fa5,0(a5)	# _22, *_21
	fcvt.d.s	fa4,fa5	# _23, _22
# problem82.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	lla	a5,.LC15	# tmp254,
	fld	fa5,0(a5)	# tmp253,
	fgt.d	a5,fa4,fa5	#, tmp255, _23, tmp253
	beq	a5,zero,.L44	#, tmp255,,
# problem82.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	lw	a5,-28(s0)		# _24, i
	slli	a5,a5,3	#, _25, _24
	ld	a4,-24(s0)		# tmp256, out
	add	a5,a4,a5	# _25, _26, tmp256
# problem82.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	lla	a4,.LC5	# tmp257,
	sd	a4,0(a5)	# tmp257, *_26
	j	.L5		#
.L44:
# problem82.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	lw	a5,-28(s0)		# _27, i
	slli	a5,a5,2	#, _28, _27
	ld	a4,-40(s0)		# tmp258, grades
	add	a5,a4,a5	# _28, _29, tmp258
	flw	fa5,0(a5)	# _30, *_29
	fcvt.d.s	fa4,fa5	# _31, _30
# problem82.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	lla	a5,.LC16	# tmp260,
	fld	fa5,0(a5)	# tmp259,
	fgt.d	a5,fa4,fa5	#, tmp261, _31, tmp259
	beq	a5,zero,.L45	#, tmp261,,
# problem82.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	lw	a5,-28(s0)		# _32, i
	slli	a5,a5,3	#, _33, _32
	ld	a4,-24(s0)		# tmp262, out
	add	a5,a4,a5	# _33, _34, tmp262
# problem82.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	lla	a4,.LC10	# tmp263,
	sd	a4,0(a5)	# tmp263, *_34
	j	.L5		#
.L45:
# problem82.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	lw	a5,-28(s0)		# _35, i
	slli	a5,a5,2	#, _36, _35
	ld	a4,-40(s0)		# tmp264, grades
	add	a5,a4,a5	# _36, _37, tmp264
	flw	fa5,0(a5)	# _38, *_37
	fcvt.d.s	fa4,fa5	# _39, _38
# problem82.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	lla	a5,.LC17	# tmp266,
	fld	fa5,0(a5)	# tmp265,
	fgt.d	a5,fa4,fa5	#, tmp267, _39, tmp265
	beq	a5,zero,.L46	#, tmp267,,
# problem82.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	lw	a5,-28(s0)		# _40, i
	slli	a5,a5,3	#, _41, _40
	ld	a4,-24(s0)		# tmp268, out
	add	a5,a4,a5	# _41, _42, tmp268
# problem82.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	lla	a4,.LC2	# tmp269,
	sd	a4,0(a5)	# tmp269, *_42
	j	.L5		#
.L46:
# problem82.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	lw	a5,-28(s0)		# _43, i
	slli	a5,a5,2	#, _44, _43
	ld	a4,-40(s0)		# tmp270, grades
	add	a5,a4,a5	# _44, _45, tmp270
	flw	fa5,0(a5)	# _46, *_45
	fcvt.d.s	fa4,fa5	# _47, _46
# problem82.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	lla	a5,.LC18	# tmp272,
	fld	fa5,0(a5)	# tmp271,
	fgt.d	a5,fa4,fa5	#, tmp273, _47, tmp271
	beq	a5,zero,.L47	#, tmp273,,
# problem82.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	lw	a5,-28(s0)		# _48, i
	slli	a5,a5,3	#, _49, _48
	ld	a4,-24(s0)		# tmp274, out
	add	a5,a4,a5	# _49, _50, tmp274
# problem82.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	lla	a4,.LC19	# tmp275,
	sd	a4,0(a5)	# tmp275, *_50
	j	.L5		#
.L47:
# problem82.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	lw	a5,-28(s0)		# _51, i
	slli	a5,a5,2	#, _52, _51
	ld	a4,-40(s0)		# tmp276, grades
	add	a5,a4,a5	# _52, _53, tmp276
	flw	fa5,0(a5)	# _54, *_53
	fcvt.d.s	fa4,fa5	# _55, _54
# problem82.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	lla	a5,.LC20	# tmp278,
	fld	fa5,0(a5)	# tmp277,
	fgt.d	a5,fa4,fa5	#, tmp279, _55, tmp277
	beq	a5,zero,.L48	#, tmp279,,
# problem82.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	lw	a5,-28(s0)		# _56, i
	slli	a5,a5,3	#, _57, _56
	ld	a4,-24(s0)		# tmp280, out
	add	a5,a4,a5	# _57, _58, tmp280
# problem82.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	lla	a4,.LC21	# tmp281,
	sd	a4,0(a5)	# tmp281, *_58
	j	.L5		#
.L48:
# problem82.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	lw	a5,-28(s0)		# _59, i
	slli	a5,a5,2	#, _60, _59
	ld	a4,-40(s0)		# tmp282, grades
	add	a5,a4,a5	# _60, _61, tmp282
	flw	fa5,0(a5)	# _62, *_61
	fcvt.d.s	fa4,fa5	# _63, _62
# problem82.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	lla	a5,.LC22	# tmp284,
	fld	fa5,0(a5)	# tmp283,
	fgt.d	a5,fa4,fa5	#, tmp285, _63, tmp283
	beq	a5,zero,.L49	#, tmp285,,
# problem82.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	lw	a5,-28(s0)		# _64, i
	slli	a5,a5,3	#, _65, _64
	ld	a4,-24(s0)		# tmp286, out
	add	a5,a4,a5	# _65, _66, tmp286
# problem82.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	lla	a4,.LC4	# tmp287,
	sd	a4,0(a5)	# tmp287, *_66
	j	.L5		#
.L49:
# problem82.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	lw	a5,-28(s0)		# _67, i
	slli	a5,a5,2	#, _68, _67
	ld	a4,-40(s0)		# tmp288, grades
	add	a5,a4,a5	# _68, _69, tmp288
	flw	fa5,0(a5)	# _70, *_69
	fcvt.d.s	fa4,fa5	# _71, _70
# problem82.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	lla	a5,.LC23	# tmp290,
	fld	fa5,0(a5)	# tmp289,
	fgt.d	a5,fa4,fa5	#, tmp291, _71, tmp289
	beq	a5,zero,.L50	#, tmp291,,
# problem82.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	lw	a5,-28(s0)		# _72, i
	slli	a5,a5,3	#, _73, _72
	ld	a4,-24(s0)		# tmp292, out
	add	a5,a4,a5	# _73, _74, tmp292
# problem82.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	lla	a4,.LC3	# tmp293,
	sd	a4,0(a5)	# tmp293, *_74
	j	.L5		#
.L50:
# problem82.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	lw	a5,-28(s0)		# _75, i
	slli	a5,a5,2	#, _76, _75
	ld	a4,-40(s0)		# tmp294, grades
	add	a5,a4,a5	# _76, _77, tmp294
	flw	fa5,0(a5)	# _78, *_77
	fcvt.d.s	fa4,fa5	# _79, _78
# problem82.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	lla	a5,.LC24	# tmp296,
	fld	fa5,0(a5)	# tmp295,
	fgt.d	a5,fa4,fa5	#, tmp297, _79, tmp295
	beq	a5,zero,.L51	#, tmp297,,
# problem82.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	lw	a5,-28(s0)		# _80, i
	slli	a5,a5,3	#, _81, _80
	ld	a4,-24(s0)		# tmp298, out
	add	a5,a4,a5	# _81, _82, tmp298
# problem82.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	lla	a4,.LC25	# tmp299,
	sd	a4,0(a5)	# tmp299, *_82
	j	.L5		#
.L51:
# problem82.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	lw	a5,-28(s0)		# _83, i
	slli	a5,a5,2	#, _84, _83
	ld	a4,-40(s0)		# tmp300, grades
	add	a5,a4,a5	# _84, _85, tmp300
	flw	fa5,0(a5)	# _86, *_85
	fcvt.d.s	fa4,fa5	# _87, _86
# problem82.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	lla	a5,.LC26	# tmp302,
	fld	fa5,0(a5)	# tmp301,
	fgt.d	a5,fa4,fa5	#, tmp303, _87, tmp301
	beq	a5,zero,.L52	#, tmp303,,
# problem82.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	lw	a5,-28(s0)		# _88, i
	slli	a5,a5,3	#, _89, _88
	ld	a4,-24(s0)		# tmp304, out
	add	a5,a4,a5	# _89, _90, tmp304
# problem82.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	lla	a4,.LC8	# tmp305,
	sd	a4,0(a5)	# tmp305, *_90
	j	.L5		#
.L52:
# problem82.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	lw	a5,-28(s0)		# _91, i
	slli	a5,a5,2	#, _92, _91
	ld	a4,-40(s0)		# tmp306, grades
	add	a5,a4,a5	# _92, _93, tmp306
	flw	fa5,0(a5)	# _94, *_93
	fcvt.d.s	fa4,fa5	# _95, _94
# problem82.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	lla	a5,.LC27	# tmp308,
	fld	fa5,0(a5)	# tmp307,
	fgt.d	a5,fa4,fa5	#, tmp309, _95, tmp307
	beq	a5,zero,.L53	#, tmp309,,
# problem82.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	lw	a5,-28(s0)		# _96, i
	slli	a5,a5,3	#, _97, _96
	ld	a4,-24(s0)		# tmp310, out
	add	a5,a4,a5	# _97, _98, tmp310
# problem82.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	lla	a4,.LC9	# tmp311,
	sd	a4,0(a5)	# tmp311, *_98
	j	.L5		#
.L53:
# problem82.c:19:         else out[i] = "E";
	lw	a5,-28(s0)		# _99, i
	slli	a5,a5,3	#, _100, _99
	ld	a4,-24(s0)		# tmp312, out
	add	a5,a4,a5	# _100, _101, tmp312
# problem82.c:19:         else out[i] = "E";
	lla	a4,.LC28	# tmp313,
	sd	a4,0(a5)	# tmp313, *_101
.L5:
# problem82.c:6:     for (int i = 0; i < size; ++i) {
	lw	a5,-28(s0)		# tmp316, i
	addiw	a5,a5,1	#, tmp314, tmp315
	sw	a5,-28(s0)	# tmp314, i
.L2:
# problem82.c:6:     for (int i = 0; i < size; ++i) {
	lw	a5,-28(s0)		# tmp318, i
	mv	a4,a5	# tmp317, tmp318
	lw	a5,-44(s0)		# tmp320, size
	sext.w	a4,a4	# tmp321, tmp317
	sext.w	a5,a5	# tmp322, tmp319
	blt	a4,a5,.L28	#, tmp321, tmp322,
# problem82.c:21:     return out;
	ld	a5,-24(s0)		# _110, out
# problem82.c:22: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp145, size
	sw	a5,-52(s0)	# tmp146, size
# problem82.c:32:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem82.c:32:     for (int i = 0; i < size; i++) {
	j	.L55		#
.L58:
# problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp147, a
	add	a5,a4,a5	# _2, _3, tmp147
# problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	ld	a3,0(a5)		# _4, *_3
# problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-48(s0)		# tmp148, b
	add	a5,a4,a5	# _6, _7, tmp148
# problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	ld	a5,0(a5)		# _8, *_7
	mv	a1,a5	#, _8
	mv	a0,a3	#, _4
	call	strcmp@plt	#
	mv	a5,a0	# tmp149,
# problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	beq	a5,zero,.L56	#, _9,,
# problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	li	a5,0		# _11,
# problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	j	.L57		#
.L56:
# problem82.c:32:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp152, i
	addiw	a5,a5,1	#, tmp150, tmp151
	sw	a5,-20(s0)	# tmp150, i
.L55:
# problem82.c:32:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp154, i
	mv	a4,a5	# tmp153, tmp154
	lw	a5,-52(s0)		# tmp156, size
	sext.w	a4,a4	# tmp157, tmp153
	sext.w	a5,a5	# tmp158, tmp155
	blt	a4,a5,.L58	#, tmp157, tmp158,
# problem82.c:35:     return true;
	li	a5,1		# _11,
.L57:
# problem82.c:36: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
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
.LFB8:
	.cfi_startproc
	addi	sp,sp,-272	#,,
	.cfi_def_cfa_offset 272
	sd	ra,264(sp)	#,
	sd	s0,256(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,272	#,,
	.cfi_def_cfa 8, 0
# problem82.c:38: int main() {
	la	a5,__stack_chk_guard		# tmp142,
	ld	a4, 0(a5)	# tmp197, __stack_chk_guard
	sd	a4, -24(s0)	# tmp197, D.3584
	li	a4, 0	# tmp197
# problem82.c:39:     float grades1[] = {4.0, 3, 1.7, 2, 3.5};
	lla	a5,.LC0	# tmp143,
	ld	a4,0(a5)		# tmp144,
	sd	a4,-152(s0)	# tmp144, grades1
	ld	a4,8(a5)		# tmp145,
	sd	a4,-144(s0)	# tmp145, grades1
	lw	a5,16(a5)		# tmp146,
	sw	a5,-136(s0)	# tmp146, grades1
# problem82.c:40:     char* expected1[] = {"A+", "B", "C-", "C", "A-"};
	lla	a5,.LC29	# tmp147,
	ld	a1,0(a5)		# tmp148,
	ld	a2,8(a5)		# tmp149,
	ld	a3,16(a5)		# tmp150,
	ld	a4,24(a5)		# tmp151,
	ld	a5,32(a5)		# tmp152,
	sd	a1,-104(s0)	# tmp148, expected1
	sd	a2,-96(s0)	# tmp149, expected1
	sd	a3,-88(s0)	# tmp150, expected1
	sd	a4,-80(s0)	# tmp151, expected1
	sd	a5,-72(s0)	# tmp152, expected1
# problem82.c:41:     char** result1 = func0(grades1, 5);
	addi	a5,s0,-152	#, tmp153,
	li	a1,5		#,
	mv	a0,a5	#, tmp153
	call	func0		#
	sd	a0,-272(s0)	#, result1
# problem82.c:42:     assert(issame(result1, expected1, 5));
	addi	a5,s0,-104	#, tmp154,
	li	a2,5		#,
	mv	a1,a5	#, tmp154
	ld	a0,-272(s0)		#, result1
	call	issame		#
	mv	a5,a0	# tmp155,
# problem82.c:42:     assert(issame(result1, expected1, 5));
	bne	a5,zero,.L60	#, _1,,
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
	lla	a5,.LC32	# tmp156,
	flw	fa5,0(a5)	# tmp157,
	fsw	fa5,-224(s0)	# tmp157, grades2[0]
# problem82.c:46:     char* expected2[] = {"D+"};
	lla	a5,.LC25	# tmp158,
	sd	a5,-200(s0)	# tmp158, expected2[0]
# problem82.c:47:     char** result2 = func0(grades2, 1);
	addi	a5,s0,-224	#, tmp159,
	li	a1,1		#,
	mv	a0,a5	#, tmp159
	call	func0		#
	sd	a0,-264(s0)	#, result2
# problem82.c:48:     assert(issame(result2, expected2, 1));
	addi	a5,s0,-200	#, tmp160,
	li	a2,1		#,
	mv	a1,a5	#, tmp160
	ld	a0,-264(s0)		#, result2
	call	issame		#
	mv	a5,a0	# tmp161,
# problem82.c:48:     assert(issame(result2, expected2, 1));
	bne	a5,zero,.L61	#, _2,,
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
	lla	a5,.LC34	# tmp162,
	flw	fa5,0(a5)	# tmp163,
	fsw	fa5,-216(s0)	# tmp163, grades3[0]
# problem82.c:52:     char* expected3[] = {"D-"};
	lla	a5,.LC9	# tmp164,
	sd	a5,-192(s0)	# tmp164, expected3[0]
# problem82.c:53:     char** result3 = func0(grades3, 1);
	addi	a5,s0,-216	#, tmp165,
	li	a1,1		#,
	mv	a0,a5	#, tmp165
	call	func0		#
	sd	a0,-256(s0)	#, result3
# problem82.c:54:     assert(issame(result3, expected3, 1));
	addi	a5,s0,-192	#, tmp166,
	li	a2,1		#,
	mv	a1,a5	#, tmp166
	ld	a0,-256(s0)		#, result3
	call	issame		#
	mv	a5,a0	# tmp167,
# problem82.c:54:     assert(issame(result3, expected3, 1));
	bne	a5,zero,.L62	#, _3,,
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
	fmv.s.x	fa5,zero	# tmp168,
	fsw	fa5,-208(s0)	# tmp168, grades4[0]
# problem82.c:58:     char* expected4[] = {"E"};
	lla	a5,.LC28	# tmp169,
	sd	a5,-184(s0)	# tmp169, expected4[0]
# problem82.c:59:     char** result4 = func0(grades4, 1);
	addi	a5,s0,-208	#, tmp170,
	li	a1,1		#,
	mv	a0,a5	#, tmp170
	call	func0		#
	sd	a0,-248(s0)	#, result4
# problem82.c:60:     assert(issame(result4, expected4, 1));
	addi	a5,s0,-184	#, tmp171,
	li	a2,1		#,
	mv	a1,a5	#, tmp171
	ld	a0,-248(s0)		#, result4
	call	issame		#
	mv	a5,a0	# tmp172,
# problem82.c:60:     assert(issame(result4, expected4, 1));
	bne	a5,zero,.L63	#, _4,,
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
	lla	a5,.LC7	# tmp173,
	ld	a4,0(a5)		# tmp174,
	sd	a4,-128(s0)	# tmp174, grades5
	ld	a4,8(a5)		# tmp175,
	sd	a4,-120(s0)	# tmp175, grades5
	lw	a5,16(a5)		# tmp176,
	sw	a5,-112(s0)	# tmp176, grades5
# problem82.c:64:     char* expected5[] = {"D", "D-", "C-", "B", "B+"};
	lla	a5,.LC37	# tmp177,
	ld	a1,0(a5)		# tmp178,
	ld	a2,8(a5)		# tmp179,
	ld	a3,16(a5)		# tmp180,
	ld	a4,24(a5)		# tmp181,
	ld	a5,32(a5)		# tmp182,
	sd	a1,-64(s0)	# tmp178, expected5
	sd	a2,-56(s0)	# tmp179, expected5
	sd	a3,-48(s0)	# tmp180, expected5
	sd	a4,-40(s0)	# tmp181, expected5
	sd	a5,-32(s0)	# tmp182, expected5
# problem82.c:65:     char** result5 = func0(grades5, 5);
	addi	a5,s0,-128	#, tmp183,
	li	a1,5		#,
	mv	a0,a5	#, tmp183
	call	func0		#
	sd	a0,-240(s0)	#, result5
# problem82.c:66:     assert(issame(result5, expected5, 5));
	addi	a5,s0,-64	#, tmp184,
	li	a2,5		#,
	mv	a1,a5	#, tmp184
	ld	a0,-240(s0)		#, result5
	call	issame		#
	mv	a5,a0	# tmp185,
# problem82.c:66:     assert(issame(result5, expected5, 5));
	bne	a5,zero,.L64	#, _5,,
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
	fmv.s.x	fa5,zero	# tmp186,
	fsw	fa5,-176(s0)	# tmp186, grades6[0]
	lla	a5,.LC39	# tmp187,
	flw	fa5,0(a5)	# tmp188,
	fsw	fa5,-172(s0)	# tmp188, grades6[1]
# problem82.c:70:     char* expected6[] = {"E", "D-"};
	lla	a5,.LC28	# tmp189,
	sd	a5,-168(s0)	# tmp189, expected6[0]
	lla	a5,.LC9	# tmp190,
	sd	a5,-160(s0)	# tmp190, expected6[1]
# problem82.c:71:     char** result6 = func0(grades6, 2);
	addi	a5,s0,-176	#, tmp191,
	li	a1,2		#,
	mv	a0,a5	#, tmp191
	call	func0		#
	sd	a0,-232(s0)	#, result6
# problem82.c:72:     assert(issame(result6, expected6, 2));
	addi	a5,s0,-168	#, tmp192,
	li	a2,2		#,
	mv	a1,a5	#, tmp192
	ld	a0,-232(s0)		#, result6
	call	issame		#
	mv	a5,a0	# tmp193,
# problem82.c:72:     assert(issame(result6, expected6, 2));
	bne	a5,zero,.L65	#, _6,,
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
	la	a5,__stack_chk_guard		# tmp195,
	ld	a3, -24(s0)	# tmp198, D.3584
	ld	a5, 0(a5)	# tmp196, __stack_chk_guard
	xor	a5, a3, a5	# tmp196, tmp198
	li	a3, 0	# tmp198
	beq	a5,zero,.L67	#, tmp196,,
	call	__stack_chk_fail@plt	#
.L67:
	mv	a0,a4	#, <retval>
	ld	ra,264(sp)		#,
	.cfi_restore 1
	ld	s0,256(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 272
	addi	sp,sp,272	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE8:
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
