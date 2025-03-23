	.file	"code.c"
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
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# grades, grades
	mv	a5,a1	# tmp175, size
	sw	a5,-44(s0)	# tmp176, size
# eval/problem82//code.c:5:     char** out = malloc(size * sizeof(char*));
	lw	a5,-44(s0)		# _1, size
	slli	a5,a5,3	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp177,
	sd	a5,-24(s0)	# tmp177, out
# eval/problem82//code.c:6:     for (int i = 0; i < size; ++i) {
	sw	zero,-28(s0)	#, i
# eval/problem82//code.c:6:     for (int i = 0; i < size; ++i) {
	j	.L2		#
.L28:
# eval/problem82//code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	lw	a5,-28(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
	ld	a4,-40(s0)		# tmp178, grades
	add	a5,a4,a5	# _4, _5, tmp178
	flw	fa5,0(a5)	# _6, *_5
	fcvt.d.s	fa4,fa5	# _7, _6
# eval/problem82//code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	lla	a5,.LC0	# tmp180,
	fld	fa5,0(a5)	# tmp179,
	fge.d	a5,fa4,fa5	#, tmp181, _7, tmp179
	beq	a5,zero,.L42	#, tmp181,,
# eval/problem82//code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	lw	a5,-28(s0)		# _8, i
	slli	a5,a5,3	#, _9, _8
	ld	a4,-24(s0)		# tmp182, out
	add	a5,a4,a5	# _9, _10, tmp182
# eval/problem82//code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	lla	a4,.LC1	# tmp183,
	sd	a4,0(a5)	# tmp183, *_10
	j	.L5		#
.L42:
# eval/problem82//code.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	lw	a5,-28(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-40(s0)		# tmp184, grades
	add	a5,a4,a5	# _12, _13, tmp184
	flw	fa5,0(a5)	# _14, *_13
	fcvt.d.s	fa4,fa5	# _15, _14
# eval/problem82//code.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	lla	a5,.LC2	# tmp186,
	fld	fa5,0(a5)	# tmp185,
	fgt.d	a5,fa4,fa5	#, tmp187, _15, tmp185
	beq	a5,zero,.L43	#, tmp187,,
# eval/problem82//code.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	lw	a5,-28(s0)		# _16, i
	slli	a5,a5,3	#, _17, _16
	ld	a4,-24(s0)		# tmp188, out
	add	a5,a4,a5	# _17, _18, tmp188
# eval/problem82//code.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	lla	a4,.LC3	# tmp189,
	sd	a4,0(a5)	# tmp189, *_18
	j	.L5		#
.L43:
# eval/problem82//code.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	lw	a5,-28(s0)		# _19, i
	slli	a5,a5,2	#, _20, _19
	ld	a4,-40(s0)		# tmp190, grades
	add	a5,a4,a5	# _20, _21, tmp190
	flw	fa5,0(a5)	# _22, *_21
	fcvt.d.s	fa4,fa5	# _23, _22
# eval/problem82//code.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	lla	a5,.LC4	# tmp192,
	fld	fa5,0(a5)	# tmp191,
	fgt.d	a5,fa4,fa5	#, tmp193, _23, tmp191
	beq	a5,zero,.L44	#, tmp193,,
# eval/problem82//code.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	lw	a5,-28(s0)		# _24, i
	slli	a5,a5,3	#, _25, _24
	ld	a4,-24(s0)		# tmp194, out
	add	a5,a4,a5	# _25, _26, tmp194
# eval/problem82//code.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	lla	a4,.LC5	# tmp195,
	sd	a4,0(a5)	# tmp195, *_26
	j	.L5		#
.L44:
# eval/problem82//code.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	lw	a5,-28(s0)		# _27, i
	slli	a5,a5,2	#, _28, _27
	ld	a4,-40(s0)		# tmp196, grades
	add	a5,a4,a5	# _28, _29, tmp196
	flw	fa5,0(a5)	# _30, *_29
	fcvt.d.s	fa4,fa5	# _31, _30
# eval/problem82//code.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	lla	a5,.LC6	# tmp198,
	fld	fa5,0(a5)	# tmp197,
	fgt.d	a5,fa4,fa5	#, tmp199, _31, tmp197
	beq	a5,zero,.L45	#, tmp199,,
# eval/problem82//code.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	lw	a5,-28(s0)		# _32, i
	slli	a5,a5,3	#, _33, _32
	ld	a4,-24(s0)		# tmp200, out
	add	a5,a4,a5	# _33, _34, tmp200
# eval/problem82//code.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	lla	a4,.LC7	# tmp201,
	sd	a4,0(a5)	# tmp201, *_34
	j	.L5		#
.L45:
# eval/problem82//code.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	lw	a5,-28(s0)		# _35, i
	slli	a5,a5,2	#, _36, _35
	ld	a4,-40(s0)		# tmp202, grades
	add	a5,a4,a5	# _36, _37, tmp202
	flw	fa5,0(a5)	# _38, *_37
	fcvt.d.s	fa4,fa5	# _39, _38
# eval/problem82//code.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	lla	a5,.LC8	# tmp204,
	fld	fa5,0(a5)	# tmp203,
	fgt.d	a5,fa4,fa5	#, tmp205, _39, tmp203
	beq	a5,zero,.L46	#, tmp205,,
# eval/problem82//code.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	lw	a5,-28(s0)		# _40, i
	slli	a5,a5,3	#, _41, _40
	ld	a4,-24(s0)		# tmp206, out
	add	a5,a4,a5	# _41, _42, tmp206
# eval/problem82//code.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	lla	a4,.LC9	# tmp207,
	sd	a4,0(a5)	# tmp207, *_42
	j	.L5		#
.L46:
# eval/problem82//code.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	lw	a5,-28(s0)		# _43, i
	slli	a5,a5,2	#, _44, _43
	ld	a4,-40(s0)		# tmp208, grades
	add	a5,a4,a5	# _44, _45, tmp208
	flw	fa5,0(a5)	# _46, *_45
	fcvt.d.s	fa4,fa5	# _47, _46
# eval/problem82//code.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	lla	a5,.LC10	# tmp210,
	fld	fa5,0(a5)	# tmp209,
	fgt.d	a5,fa4,fa5	#, tmp211, _47, tmp209
	beq	a5,zero,.L47	#, tmp211,,
# eval/problem82//code.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	lw	a5,-28(s0)		# _48, i
	slli	a5,a5,3	#, _49, _48
	ld	a4,-24(s0)		# tmp212, out
	add	a5,a4,a5	# _49, _50, tmp212
# eval/problem82//code.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	lla	a4,.LC11	# tmp213,
	sd	a4,0(a5)	# tmp213, *_50
	j	.L5		#
.L47:
# eval/problem82//code.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	lw	a5,-28(s0)		# _51, i
	slli	a5,a5,2	#, _52, _51
	ld	a4,-40(s0)		# tmp214, grades
	add	a5,a4,a5	# _52, _53, tmp214
	flw	fa5,0(a5)	# _54, *_53
	fcvt.d.s	fa4,fa5	# _55, _54
# eval/problem82//code.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	lla	a5,.LC12	# tmp216,
	fld	fa5,0(a5)	# tmp215,
	fgt.d	a5,fa4,fa5	#, tmp217, _55, tmp215
	beq	a5,zero,.L48	#, tmp217,,
# eval/problem82//code.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	lw	a5,-28(s0)		# _56, i
	slli	a5,a5,3	#, _57, _56
	ld	a4,-24(s0)		# tmp218, out
	add	a5,a4,a5	# _57, _58, tmp218
# eval/problem82//code.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	lla	a4,.LC13	# tmp219,
	sd	a4,0(a5)	# tmp219, *_58
	j	.L5		#
.L48:
# eval/problem82//code.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	lw	a5,-28(s0)		# _59, i
	slli	a5,a5,2	#, _60, _59
	ld	a4,-40(s0)		# tmp220, grades
	add	a5,a4,a5	# _60, _61, tmp220
	flw	fa5,0(a5)	# _62, *_61
	fcvt.d.s	fa4,fa5	# _63, _62
# eval/problem82//code.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	lla	a5,.LC14	# tmp222,
	fld	fa5,0(a5)	# tmp221,
	fgt.d	a5,fa4,fa5	#, tmp223, _63, tmp221
	beq	a5,zero,.L49	#, tmp223,,
# eval/problem82//code.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	lw	a5,-28(s0)		# _64, i
	slli	a5,a5,3	#, _65, _64
	ld	a4,-24(s0)		# tmp224, out
	add	a5,a4,a5	# _65, _66, tmp224
# eval/problem82//code.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	lla	a4,.LC15	# tmp225,
	sd	a4,0(a5)	# tmp225, *_66
	j	.L5		#
.L49:
# eval/problem82//code.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	lw	a5,-28(s0)		# _67, i
	slli	a5,a5,2	#, _68, _67
	ld	a4,-40(s0)		# tmp226, grades
	add	a5,a4,a5	# _68, _69, tmp226
	flw	fa5,0(a5)	# _70, *_69
	fcvt.d.s	fa4,fa5	# _71, _70
# eval/problem82//code.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	lla	a5,.LC16	# tmp228,
	fld	fa5,0(a5)	# tmp227,
	fgt.d	a5,fa4,fa5	#, tmp229, _71, tmp227
	beq	a5,zero,.L50	#, tmp229,,
# eval/problem82//code.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	lw	a5,-28(s0)		# _72, i
	slli	a5,a5,3	#, _73, _72
	ld	a4,-24(s0)		# tmp230, out
	add	a5,a4,a5	# _73, _74, tmp230
# eval/problem82//code.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	lla	a4,.LC17	# tmp231,
	sd	a4,0(a5)	# tmp231, *_74
	j	.L5		#
.L50:
# eval/problem82//code.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	lw	a5,-28(s0)		# _75, i
	slli	a5,a5,2	#, _76, _75
	ld	a4,-40(s0)		# tmp232, grades
	add	a5,a4,a5	# _76, _77, tmp232
	flw	fa5,0(a5)	# _78, *_77
	fcvt.d.s	fa4,fa5	# _79, _78
# eval/problem82//code.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	lla	a5,.LC18	# tmp234,
	fld	fa5,0(a5)	# tmp233,
	fgt.d	a5,fa4,fa5	#, tmp235, _79, tmp233
	beq	a5,zero,.L51	#, tmp235,,
# eval/problem82//code.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	lw	a5,-28(s0)		# _80, i
	slli	a5,a5,3	#, _81, _80
	ld	a4,-24(s0)		# tmp236, out
	add	a5,a4,a5	# _81, _82, tmp236
# eval/problem82//code.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	lla	a4,.LC19	# tmp237,
	sd	a4,0(a5)	# tmp237, *_82
	j	.L5		#
.L51:
# eval/problem82//code.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	lw	a5,-28(s0)		# _83, i
	slli	a5,a5,2	#, _84, _83
	ld	a4,-40(s0)		# tmp238, grades
	add	a5,a4,a5	# _84, _85, tmp238
	flw	fa5,0(a5)	# _86, *_85
	fcvt.d.s	fa4,fa5	# _87, _86
# eval/problem82//code.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	lla	a5,.LC20	# tmp240,
	fld	fa5,0(a5)	# tmp239,
	fgt.d	a5,fa4,fa5	#, tmp241, _87, tmp239
	beq	a5,zero,.L52	#, tmp241,,
# eval/problem82//code.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	lw	a5,-28(s0)		# _88, i
	slli	a5,a5,3	#, _89, _88
	ld	a4,-24(s0)		# tmp242, out
	add	a5,a4,a5	# _89, _90, tmp242
# eval/problem82//code.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	lla	a4,.LC21	# tmp243,
	sd	a4,0(a5)	# tmp243, *_90
	j	.L5		#
.L52:
# eval/problem82//code.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	lw	a5,-28(s0)		# _91, i
	slli	a5,a5,2	#, _92, _91
	ld	a4,-40(s0)		# tmp244, grades
	add	a5,a4,a5	# _92, _93, tmp244
	flw	fa5,0(a5)	# _94, *_93
	fcvt.d.s	fa4,fa5	# _95, _94
# eval/problem82//code.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	lla	a5,.LC22	# tmp246,
	fld	fa5,0(a5)	# tmp245,
	fgt.d	a5,fa4,fa5	#, tmp247, _95, tmp245
	beq	a5,zero,.L53	#, tmp247,,
# eval/problem82//code.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	lw	a5,-28(s0)		# _96, i
	slli	a5,a5,3	#, _97, _96
	ld	a4,-24(s0)		# tmp248, out
	add	a5,a4,a5	# _97, _98, tmp248
# eval/problem82//code.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	lla	a4,.LC23	# tmp249,
	sd	a4,0(a5)	# tmp249, *_98
	j	.L5		#
.L53:
# eval/problem82//code.c:19:         else out[i] = "E";
	lw	a5,-28(s0)		# _99, i
	slli	a5,a5,3	#, _100, _99
	ld	a4,-24(s0)		# tmp250, out
	add	a5,a4,a5	# _100, _101, tmp250
# eval/problem82//code.c:19:         else out[i] = "E";
	lla	a4,.LC24	# tmp251,
	sd	a4,0(a5)	# tmp251, *_101
.L5:
# eval/problem82//code.c:6:     for (int i = 0; i < size; ++i) {
	lw	a5,-28(s0)		# tmp254, i
	addiw	a5,a5,1	#, tmp252, tmp253
	sw	a5,-28(s0)	# tmp252, i
.L2:
# eval/problem82//code.c:6:     for (int i = 0; i < size; ++i) {
	lw	a5,-28(s0)		# tmp256, i
	mv	a4,a5	# tmp255, tmp256
	lw	a5,-44(s0)		# tmp258, size
	sext.w	a4,a4	# tmp259, tmp255
	sext.w	a5,a5	# tmp260, tmp257
	blt	a4,a5,.L28	#, tmp259, tmp260,
# eval/problem82//code.c:21:     return out;
	ld	a5,-24(s0)		# _110, out
# eval/problem82//code.c:22: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
