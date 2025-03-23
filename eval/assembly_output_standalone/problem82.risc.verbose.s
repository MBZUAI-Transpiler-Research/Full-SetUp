	.file	"code.c"
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
.LC3:
	.string	"A"
	.align	3
.LC5:
	.string	"A-"
	.align	3
.LC7:
	.string	"B+"
	.align	3
.LC9:
	.string	"B"
	.align	3
.LC11:
	.string	"B-"
	.align	3
.LC13:
	.string	"C+"
	.align	3
.LC15:
	.string	"C"
	.align	3
.LC17:
	.string	"C-"
	.align	3
.LC19:
	.string	"D+"
	.align	3
.LC21:
	.string	"D"
	.align	3
.LC23:
	.string	"D-"
	.align	3
.LC24:
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
# eval/problem82//code.c:5:     char** out = malloc(size * sizeof(char*));
	lw	a5,-44(s0)		# _1, size
	slli	a5,a5,3	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp239,
	sd	a5,-24(s0)	# tmp239, out
# eval/problem82//code.c:6:     for (int i = 0; i < size; ++i) {
	sw	zero,-28(s0)	#, i
# eval/problem82//code.c:6:     for (int i = 0; i < size; ++i) {
	j	.L2		#
.L28:
# eval/problem82//code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	lw	a5,-28(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
	ld	a4,-40(s0)		# tmp240, grades
	add	a5,a4,a5	# _4, _5, tmp240
	flw	fa5,0(a5)	# _6, *_5
	fcvt.d.s	fa4,fa5	# _7, _6
# eval/problem82//code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	lla	a5,.LC0	# tmp242,
	fld	fa5,0(a5)	# tmp241,
	fge.d	a5,fa4,fa5	#, tmp243, _7, tmp241
	beq	a5,zero,.L42	#, tmp243,,
# eval/problem82//code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	lw	a5,-28(s0)		# _8, i
	slli	a5,a5,3	#, _9, _8
	ld	a4,-24(s0)		# tmp244, out
	add	a5,a4,a5	# _9, _10, tmp244
# eval/problem82//code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	lla	a4,.LC1	# tmp245,
	sd	a4,0(a5)	# tmp245, *_10
	j	.L5		#
.L42:
# eval/problem82//code.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	lw	a5,-28(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-40(s0)		# tmp246, grades
	add	a5,a4,a5	# _12, _13, tmp246
	flw	fa5,0(a5)	# _14, *_13
	fcvt.d.s	fa4,fa5	# _15, _14
# eval/problem82//code.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	lla	a5,.LC2	# tmp248,
	fld	fa5,0(a5)	# tmp247,
	fgt.d	a5,fa4,fa5	#, tmp249, _15, tmp247
	beq	a5,zero,.L43	#, tmp249,,
# eval/problem82//code.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	lw	a5,-28(s0)		# _16, i
	slli	a5,a5,3	#, _17, _16
	ld	a4,-24(s0)		# tmp250, out
	add	a5,a4,a5	# _17, _18, tmp250
# eval/problem82//code.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	lla	a4,.LC3	# tmp251,
	sd	a4,0(a5)	# tmp251, *_18
	j	.L5		#
.L43:
# eval/problem82//code.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	lw	a5,-28(s0)		# _19, i
	slli	a5,a5,2	#, _20, _19
	ld	a4,-40(s0)		# tmp252, grades
	add	a5,a4,a5	# _20, _21, tmp252
	flw	fa5,0(a5)	# _22, *_21
	fcvt.d.s	fa4,fa5	# _23, _22
# eval/problem82//code.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	lla	a5,.LC4	# tmp254,
	fld	fa5,0(a5)	# tmp253,
	fgt.d	a5,fa4,fa5	#, tmp255, _23, tmp253
	beq	a5,zero,.L44	#, tmp255,,
# eval/problem82//code.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	lw	a5,-28(s0)		# _24, i
	slli	a5,a5,3	#, _25, _24
	ld	a4,-24(s0)		# tmp256, out
	add	a5,a4,a5	# _25, _26, tmp256
# eval/problem82//code.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	lla	a4,.LC5	# tmp257,
	sd	a4,0(a5)	# tmp257, *_26
	j	.L5		#
.L44:
# eval/problem82//code.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	lw	a5,-28(s0)		# _27, i
	slli	a5,a5,2	#, _28, _27
	ld	a4,-40(s0)		# tmp258, grades
	add	a5,a4,a5	# _28, _29, tmp258
	flw	fa5,0(a5)	# _30, *_29
	fcvt.d.s	fa4,fa5	# _31, _30
# eval/problem82//code.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	lla	a5,.LC6	# tmp260,
	fld	fa5,0(a5)	# tmp259,
	fgt.d	a5,fa4,fa5	#, tmp261, _31, tmp259
	beq	a5,zero,.L45	#, tmp261,,
# eval/problem82//code.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	lw	a5,-28(s0)		# _32, i
	slli	a5,a5,3	#, _33, _32
	ld	a4,-24(s0)		# tmp262, out
	add	a5,a4,a5	# _33, _34, tmp262
# eval/problem82//code.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	lla	a4,.LC7	# tmp263,
	sd	a4,0(a5)	# tmp263, *_34
	j	.L5		#
.L45:
# eval/problem82//code.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	lw	a5,-28(s0)		# _35, i
	slli	a5,a5,2	#, _36, _35
	ld	a4,-40(s0)		# tmp264, grades
	add	a5,a4,a5	# _36, _37, tmp264
	flw	fa5,0(a5)	# _38, *_37
	fcvt.d.s	fa4,fa5	# _39, _38
# eval/problem82//code.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	lla	a5,.LC8	# tmp266,
	fld	fa5,0(a5)	# tmp265,
	fgt.d	a5,fa4,fa5	#, tmp267, _39, tmp265
	beq	a5,zero,.L46	#, tmp267,,
# eval/problem82//code.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	lw	a5,-28(s0)		# _40, i
	slli	a5,a5,3	#, _41, _40
	ld	a4,-24(s0)		# tmp268, out
	add	a5,a4,a5	# _41, _42, tmp268
# eval/problem82//code.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	lla	a4,.LC9	# tmp269,
	sd	a4,0(a5)	# tmp269, *_42
	j	.L5		#
.L46:
# eval/problem82//code.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	lw	a5,-28(s0)		# _43, i
	slli	a5,a5,2	#, _44, _43
	ld	a4,-40(s0)		# tmp270, grades
	add	a5,a4,a5	# _44, _45, tmp270
	flw	fa5,0(a5)	# _46, *_45
	fcvt.d.s	fa4,fa5	# _47, _46
# eval/problem82//code.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	lla	a5,.LC10	# tmp272,
	fld	fa5,0(a5)	# tmp271,
	fgt.d	a5,fa4,fa5	#, tmp273, _47, tmp271
	beq	a5,zero,.L47	#, tmp273,,
# eval/problem82//code.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	lw	a5,-28(s0)		# _48, i
	slli	a5,a5,3	#, _49, _48
	ld	a4,-24(s0)		# tmp274, out
	add	a5,a4,a5	# _49, _50, tmp274
# eval/problem82//code.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	lla	a4,.LC11	# tmp275,
	sd	a4,0(a5)	# tmp275, *_50
	j	.L5		#
.L47:
# eval/problem82//code.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	lw	a5,-28(s0)		# _51, i
	slli	a5,a5,2	#, _52, _51
	ld	a4,-40(s0)		# tmp276, grades
	add	a5,a4,a5	# _52, _53, tmp276
	flw	fa5,0(a5)	# _54, *_53
	fcvt.d.s	fa4,fa5	# _55, _54
# eval/problem82//code.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	lla	a5,.LC12	# tmp278,
	fld	fa5,0(a5)	# tmp277,
	fgt.d	a5,fa4,fa5	#, tmp279, _55, tmp277
	beq	a5,zero,.L48	#, tmp279,,
# eval/problem82//code.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	lw	a5,-28(s0)		# _56, i
	slli	a5,a5,3	#, _57, _56
	ld	a4,-24(s0)		# tmp280, out
	add	a5,a4,a5	# _57, _58, tmp280
# eval/problem82//code.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	lla	a4,.LC13	# tmp281,
	sd	a4,0(a5)	# tmp281, *_58
	j	.L5		#
.L48:
# eval/problem82//code.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	lw	a5,-28(s0)		# _59, i
	slli	a5,a5,2	#, _60, _59
	ld	a4,-40(s0)		# tmp282, grades
	add	a5,a4,a5	# _60, _61, tmp282
	flw	fa5,0(a5)	# _62, *_61
	fcvt.d.s	fa4,fa5	# _63, _62
# eval/problem82//code.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	lla	a5,.LC14	# tmp284,
	fld	fa5,0(a5)	# tmp283,
	fgt.d	a5,fa4,fa5	#, tmp285, _63, tmp283
	beq	a5,zero,.L49	#, tmp285,,
# eval/problem82//code.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	lw	a5,-28(s0)		# _64, i
	slli	a5,a5,3	#, _65, _64
	ld	a4,-24(s0)		# tmp286, out
	add	a5,a4,a5	# _65, _66, tmp286
# eval/problem82//code.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	lla	a4,.LC15	# tmp287,
	sd	a4,0(a5)	# tmp287, *_66
	j	.L5		#
.L49:
# eval/problem82//code.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	lw	a5,-28(s0)		# _67, i
	slli	a5,a5,2	#, _68, _67
	ld	a4,-40(s0)		# tmp288, grades
	add	a5,a4,a5	# _68, _69, tmp288
	flw	fa5,0(a5)	# _70, *_69
	fcvt.d.s	fa4,fa5	# _71, _70
# eval/problem82//code.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	lla	a5,.LC16	# tmp290,
	fld	fa5,0(a5)	# tmp289,
	fgt.d	a5,fa4,fa5	#, tmp291, _71, tmp289
	beq	a5,zero,.L50	#, tmp291,,
# eval/problem82//code.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	lw	a5,-28(s0)		# _72, i
	slli	a5,a5,3	#, _73, _72
	ld	a4,-24(s0)		# tmp292, out
	add	a5,a4,a5	# _73, _74, tmp292
# eval/problem82//code.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	lla	a4,.LC17	# tmp293,
	sd	a4,0(a5)	# tmp293, *_74
	j	.L5		#
.L50:
# eval/problem82//code.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	lw	a5,-28(s0)		# _75, i
	slli	a5,a5,2	#, _76, _75
	ld	a4,-40(s0)		# tmp294, grades
	add	a5,a4,a5	# _76, _77, tmp294
	flw	fa5,0(a5)	# _78, *_77
	fcvt.d.s	fa4,fa5	# _79, _78
# eval/problem82//code.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	lla	a5,.LC18	# tmp296,
	fld	fa5,0(a5)	# tmp295,
	fgt.d	a5,fa4,fa5	#, tmp297, _79, tmp295
	beq	a5,zero,.L51	#, tmp297,,
# eval/problem82//code.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	lw	a5,-28(s0)		# _80, i
	slli	a5,a5,3	#, _81, _80
	ld	a4,-24(s0)		# tmp298, out
	add	a5,a4,a5	# _81, _82, tmp298
# eval/problem82//code.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	lla	a4,.LC19	# tmp299,
	sd	a4,0(a5)	# tmp299, *_82
	j	.L5		#
.L51:
# eval/problem82//code.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	lw	a5,-28(s0)		# _83, i
	slli	a5,a5,2	#, _84, _83
	ld	a4,-40(s0)		# tmp300, grades
	add	a5,a4,a5	# _84, _85, tmp300
	flw	fa5,0(a5)	# _86, *_85
	fcvt.d.s	fa4,fa5	# _87, _86
# eval/problem82//code.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	lla	a5,.LC20	# tmp302,
	fld	fa5,0(a5)	# tmp301,
	fgt.d	a5,fa4,fa5	#, tmp303, _87, tmp301
	beq	a5,zero,.L52	#, tmp303,,
# eval/problem82//code.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	lw	a5,-28(s0)		# _88, i
	slli	a5,a5,3	#, _89, _88
	ld	a4,-24(s0)		# tmp304, out
	add	a5,a4,a5	# _89, _90, tmp304
# eval/problem82//code.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	lla	a4,.LC21	# tmp305,
	sd	a4,0(a5)	# tmp305, *_90
	j	.L5		#
.L52:
# eval/problem82//code.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	lw	a5,-28(s0)		# _91, i
	slli	a5,a5,2	#, _92, _91
	ld	a4,-40(s0)		# tmp306, grades
	add	a5,a4,a5	# _92, _93, tmp306
	flw	fa5,0(a5)	# _94, *_93
	fcvt.d.s	fa4,fa5	# _95, _94
# eval/problem82//code.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	lla	a5,.LC22	# tmp308,
	fld	fa5,0(a5)	# tmp307,
	fgt.d	a5,fa4,fa5	#, tmp309, _95, tmp307
	beq	a5,zero,.L53	#, tmp309,,
# eval/problem82//code.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	lw	a5,-28(s0)		# _96, i
	slli	a5,a5,3	#, _97, _96
	ld	a4,-24(s0)		# tmp310, out
	add	a5,a4,a5	# _97, _98, tmp310
# eval/problem82//code.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	lla	a4,.LC23	# tmp311,
	sd	a4,0(a5)	# tmp311, *_98
	j	.L5		#
.L53:
# eval/problem82//code.c:19:         else out[i] = "E";
	lw	a5,-28(s0)		# _99, i
	slli	a5,a5,3	#, _100, _99
	ld	a4,-24(s0)		# tmp312, out
	add	a5,a4,a5	# _100, _101, tmp312
# eval/problem82//code.c:19:         else out[i] = "E";
	lla	a4,.LC24	# tmp313,
	sd	a4,0(a5)	# tmp313, *_101
.L5:
# eval/problem82//code.c:6:     for (int i = 0; i < size; ++i) {
	lw	a5,-28(s0)		# tmp316, i
	addiw	a5,a5,1	#, tmp314, tmp315
	sw	a5,-28(s0)	# tmp314, i
.L2:
# eval/problem82//code.c:6:     for (int i = 0; i < size; ++i) {
	lw	a5,-28(s0)		# tmp318, i
	mv	a4,a5	# tmp317, tmp318
	lw	a5,-44(s0)		# tmp320, size
	sext.w	a4,a4	# tmp321, tmp317
	sext.w	a5,a5	# tmp322, tmp319
	blt	a4,a5,.L28	#, tmp321, tmp322,
# eval/problem82//code.c:21:     return out;
	ld	a5,-24(s0)		# _110, out
# eval/problem82//code.c:22: }
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
	.section	.rodata
	.align	3
.LC0:
	.word	-1841681977
	.word	1074790347
	.align	3
.LC2:
	.word	123695058
	.word	1074633166
	.align	3
.LC4:
	.word	-735298401
	.word	1074423450
	.align	3
.LC6:
	.word	1841681977
	.word	1074266164
	.align	3
.LC8:
	.word	123695058
	.word	1074108878
	.align	3
.LC10:
	.word	-735298401
	.word	1073899162
	.align	3
.LC12:
	.word	1841681977
	.word	1073741876
	.align	3
.LC14:
	.word	247390116
	.word	1073427356
	.align	3
.LC16:
	.word	-1470596802
	.word	1073007925
	.align	3
.LC18:
	.word	-611603343
	.word	1072693352
	.align	3
.LC20:
	.word	494780232
	.word	1072064312
	.align	3
.LC22:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
