	.file	"problem48.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# l, l
	mv	a5,a1	# tmp174, size
	sw	a5,-44(s0)	# tmp175, size
# problem48.c:6:     for (int i = 0; i < size; i++) {
	sw	zero,-28(s0)	#, i
# problem48.c:6:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L7:
# problem48.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-28(s0)		# tmp178, i
	addiw	a5,a5,1	#, tmp176, tmp177
	sw	a5,-24(s0)	# tmp176, j
# problem48.c:7:         for (int j = i + 1; j < size; j++) {
	j	.L3		#
.L6:
# problem48.c:8:             if (l[i] > l[j]) {
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp179, l
	add	a5,a4,a5	# _2, _3, tmp179
	flw	fa4,0(a5)	# _4, *_3
# problem48.c:8:             if (l[i] > l[j]) {
	lw	a5,-24(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp180, l
	add	a5,a4,a5	# _6, _7, tmp180
	flw	fa5,0(a5)	# _8, *_7
# problem48.c:8:             if (l[i] > l[j]) {
	fgt.s	a5,fa4,fa5	#, tmp181, _4, _8
	beq	a5,zero,.L4	#, tmp181,,
# problem48.c:9:                 float temp = l[i];
	lw	a5,-28(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a4,-40(s0)		# tmp182, l
	add	a5,a4,a5	# _10, _11, tmp182
# problem48.c:9:                 float temp = l[i];
	flw	fa5,0(a5)	# tmp183, *_11
	fsw	fa5,-20(s0)	# tmp183, temp
# problem48.c:10:                 l[i] = l[j];
	lw	a5,-24(s0)		# _12, j
	slli	a5,a5,2	#, _13, _12
	ld	a4,-40(s0)		# tmp184, l
	add	a4,a4,a5	# _13, _14, tmp184
# problem48.c:10:                 l[i] = l[j];
	lw	a5,-28(s0)		# _15, i
	slli	a5,a5,2	#, _16, _15
	ld	a3,-40(s0)		# tmp185, l
	add	a5,a3,a5	# _16, _17, tmp185
# problem48.c:10:                 l[i] = l[j];
	flw	fa5,0(a4)	# _18, *_14
# problem48.c:10:                 l[i] = l[j];
	fsw	fa5,0(a5)	# _18, *_17
# problem48.c:11:                 l[j] = temp;
	lw	a5,-24(s0)		# _19, j
	slli	a5,a5,2	#, _20, _19
	ld	a4,-40(s0)		# tmp186, l
	add	a5,a4,a5	# _20, _21, tmp186
# problem48.c:11:                 l[j] = temp;
	flw	fa5,-20(s0)	# tmp187, temp
	fsw	fa5,0(a5)	# tmp187, *_21
.L4:
# problem48.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-24(s0)		# tmp190, j
	addiw	a5,a5,1	#, tmp188, tmp189
	sw	a5,-24(s0)	# tmp188, j
.L3:
# problem48.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-24(s0)		# tmp192, j
	mv	a4,a5	# tmp191, tmp192
	lw	a5,-44(s0)		# tmp194, size
	sext.w	a4,a4	# tmp195, tmp191
	sext.w	a5,a5	# tmp196, tmp193
	blt	a4,a5,.L6	#, tmp195, tmp196,
# problem48.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp199, i
	addiw	a5,a5,1	#, tmp197, tmp198
	sw	a5,-28(s0)	# tmp197, i
.L2:
# problem48.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp201, i
	mv	a4,a5	# tmp200, tmp201
	lw	a5,-44(s0)		# tmp203, size
	sext.w	a4,a4	# tmp204, tmp200
	sext.w	a5,a5	# tmp205, tmp202
	blt	a4,a5,.L7	#, tmp204, tmp205,
# problem48.c:15:     if (size % 2 == 1) return l[size / 2];
	lw	a5,-44(s0)		# tmp208, size
	mv	a4,a5	# tmp207, tmp208
	sraiw	a5,a4,31	#, tmp209, tmp207
	srliw	a5,a5,31	#, tmp210, tmp209
	addw	a4,a4,a5	# tmp210, tmp211, tmp207
	andi	a4,a4,1	#, tmp212, tmp211
	subw	a5,a4,a5	# tmp213, tmp212, tmp210
	sext.w	a5,a5	# _22, tmp213
# problem48.c:15:     if (size % 2 == 1) return l[size / 2];
	mv	a4,a5	# tmp214, _22
	li	a5,1		# tmp215,
	bne	a4,a5,.L8	#, tmp214, tmp215,
# problem48.c:15:     if (size % 2 == 1) return l[size / 2];
	lw	a5,-44(s0)		# tmp218, size
	srliw	a4,a5,31	#, tmp219, tmp217
	addw	a5,a4,a5	# tmp217, tmp220, tmp219
	sraiw	a5,a5,1	#, tmp221, tmp220
	sext.w	a5,a5	# _23, tmp221
# problem48.c:15:     if (size % 2 == 1) return l[size / 2];
	slli	a5,a5,2	#, _25, _24
	ld	a4,-40(s0)		# tmp222, l
	add	a5,a4,a5	# _25, _26, tmp222
	flw	fa5,0(a5)	# _41, *_26
# problem48.c:15:     if (size % 2 == 1) return l[size / 2];
	j	.L9		#
.L8:
# problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	lw	a5,-44(s0)		# tmp225, size
	srliw	a4,a5,31	#, tmp226, tmp224
	addw	a5,a4,a5	# tmp224, tmp227, tmp226
	sraiw	a5,a5,1	#, tmp228, tmp227
	sext.w	a5,a5	# _27, tmp228
# problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	slli	a5,a5,2	#, _29, _28
	ld	a4,-40(s0)		# tmp229, l
	add	a5,a4,a5	# _29, _30, tmp229
	flw	fa4,0(a5)	# _31, *_30
# problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	lw	a5,-44(s0)		# tmp232, size
	srliw	a4,a5,31	#, tmp233, tmp231
	addw	a5,a4,a5	# tmp231, tmp234, tmp233
	sraiw	a5,a5,1	#, tmp235, tmp234
	sext.w	a5,a5	# _32, tmp235
# problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	slli	a5,a5,2	#, _34, _33
	addi	a5,a5,-4	#, _35, _34
	ld	a4,-40(s0)		# tmp236, l
	add	a5,a4,a5	# _35, _36, tmp236
	flw	fa5,0(a5)	# _37, *_36
# problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	fadd.s	fa4,fa4,fa5	# _38, _31, _37
# problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	lla	a5,.LC3	# tmp238,
	flw	fa5,0(a5)	# tmp237,
	fmul.s	fa5,fa4,fa5	# _41, _38, tmp237
.L9:
# problem48.c:17: }
	fmv.s	fa0,fa5	#, <retval>
	ld	s0,40(sp)		#,
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
.LC6:
	.string	"problem48.c"
	.align	3
.LC7:
	.string	"fabs(func0(list1, 5) - 3) < 1e-4"
	.align	3
.LC9:
	.string	"fabs(func0(list2, 6) - 8.0) < 1e-4"
	.align	3
.LC11:
	.string	"fabs(func0(list3, 1) - 5) < 1e-4"
	.align	3
.LC14:
	.string	"fabs(func0(list4, 2) - 5.5) < 1e-4"
	.align	3
.LC16:
	.string	"fabs(func0(list5, 7) - 7) < 1e-4"
	.align	3
.LC0:
	.word	1077936128
	.word	1065353216
	.word	1073741824
	.word	1082130432
	.word	1084227584
	.align	3
.LC1:
	.word	-1054867456
	.word	1082130432
	.word	1086324736
	.word	1148846080
	.word	1092616192
	.word	1101004800
	.align	3
.LC2:
	.word	1090519040
	.word	1065353216
	.word	1077936128
	.word	1091567616
	.word	1091567616
	.word	1073741824
	.word	1088421888
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-128	#,,
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128	#,,
	.cfi_def_cfa 8, 0
# problem48.c:25: int main() {
	la	a5,__stack_chk_guard		# tmp156,
	ld	a4, 0(a5)	# tmp209, __stack_chk_guard
	sd	a4, -24(s0)	# tmp209, D.4339
	li	a4, 0	# tmp209
# problem48.c:26:     float list1[] = {3, 1, 2, 4, 5};
	lla	a5,.LC0	# tmp157,
	ld	a4,0(a5)		# tmp158,
	sd	a4,-104(s0)	# tmp158, list1
	ld	a4,8(a5)		# tmp159,
	sd	a4,-96(s0)	# tmp159, list1
	lw	a5,16(a5)		# tmp160,
	sw	a5,-88(s0)	# tmp160, list1
# problem48.c:27:     assert(fabs(func0(list1, 5) - 3) < 1e-4);
	addi	a5,s0,-104	#, tmp161,
	li	a1,5		#,
	mv	a0,a5	#, tmp161
	call	func0		#
	fmv.s	fa4,fa0	# _1,
# problem48.c:27:     assert(fabs(func0(list1, 5) - 3) < 1e-4);
	lla	a5,.LC4	# tmp163,
	flw	fa5,0(a5)	# tmp162,
	fsub.s	fa5,fa4,fa5	# _2, _1, tmp162
	fabs.s	fa5,fa5	# _3, _2
	fcvt.d.s	fa4,fa5	# _4, _3
	lla	a5,.LC5	# tmp165,
	fld	fa5,0(a5)	# tmp164,
	flt.d	a5,fa4,fa5	#, tmp166, _4, tmp164
	bne	a5,zero,.L12	#, tmp166,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC6	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L12:
# problem48.c:29:     float list2[] = {-10, 4, 6, 1000, 10, 20};
	lla	a5,.LC1	# tmp167,
	ld	a4,0(a5)		# tmp168,
	sd	a4,-80(s0)	# tmp168, list2
	ld	a4,8(a5)		# tmp169,
	sd	a4,-72(s0)	# tmp169, list2
	ld	a5,16(a5)		# tmp170,
	sd	a5,-64(s0)	# tmp170, list2
# problem48.c:30:     assert(fabs(func0(list2, 6) - 8.0) < 1e-4);
	addi	a5,s0,-80	#, tmp171,
	li	a1,6		#,
	mv	a0,a5	#, tmp171
	call	func0		#
	fmv.s	fa5,fa0	# _5,
# problem48.c:30:     assert(fabs(func0(list2, 6) - 8.0) < 1e-4);
	fcvt.d.s	fa4,fa5	# _6, _5
	lla	a5,.LC8	# tmp173,
	fld	fa5,0(a5)	# tmp172,
	fsub.d	fa5,fa4,fa5	# _7, _6, tmp172
	fabs.d	fa4,fa5	# _8, _7
	lla	a5,.LC5	# tmp175,
	fld	fa5,0(a5)	# tmp174,
	flt.d	a5,fa4,fa5	#, tmp176, _8, tmp174
	bne	a5,zero,.L13	#, tmp176,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC6	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L13:
# problem48.c:32:     float list3[] = {5};
	lla	a5,.LC10	# tmp177,
	flw	fa5,0(a5)	# tmp178,
	fsw	fa5,-120(s0)	# tmp178, list3[0]
# problem48.c:33:     assert(fabs(func0(list3, 1) - 5) < 1e-4);
	addi	a5,s0,-120	#, tmp179,
	li	a1,1		#,
	mv	a0,a5	#, tmp179
	call	func0		#
	fmv.s	fa4,fa0	# _9,
# problem48.c:33:     assert(fabs(func0(list3, 1) - 5) < 1e-4);
	lla	a5,.LC10	# tmp181,
	flw	fa5,0(a5)	# tmp180,
	fsub.s	fa5,fa4,fa5	# _10, _9, tmp180
	fabs.s	fa5,fa5	# _11, _10
	fcvt.d.s	fa4,fa5	# _12, _11
	lla	a5,.LC5	# tmp183,
	fld	fa5,0(a5)	# tmp182,
	flt.d	a5,fa4,fa5	#, tmp184, _12, tmp182
	bne	a5,zero,.L14	#, tmp184,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC6	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L14:
# problem48.c:35:     float list4[] = {6, 5};
	lla	a5,.LC12	# tmp185,
	flw	fa5,0(a5)	# tmp186,
	fsw	fa5,-112(s0)	# tmp186, list4[0]
	lla	a5,.LC10	# tmp187,
	flw	fa5,0(a5)	# tmp188,
	fsw	fa5,-108(s0)	# tmp188, list4[1]
# problem48.c:36:     assert(fabs(func0(list4, 2) - 5.5) < 1e-4);
	addi	a5,s0,-112	#, tmp189,
	li	a1,2		#,
	mv	a0,a5	#, tmp189
	call	func0		#
	fmv.s	fa5,fa0	# _13,
# problem48.c:36:     assert(fabs(func0(list4, 2) - 5.5) < 1e-4);
	fcvt.d.s	fa4,fa5	# _14, _13
	lla	a5,.LC13	# tmp191,
	fld	fa5,0(a5)	# tmp190,
	fsub.d	fa5,fa4,fa5	# _15, _14, tmp190
	fabs.d	fa4,fa5	# _16, _15
	lla	a5,.LC5	# tmp193,
	fld	fa5,0(a5)	# tmp192,
	flt.d	a5,fa4,fa5	#, tmp194, _16, tmp192
	bne	a5,zero,.L15	#, tmp194,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC6	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L15:
# problem48.c:38:     float list5[] = {8, 1, 3, 9, 9, 2, 7};
	lla	a5,.LC2	# tmp195,
	ld	a2,0(a5)		# tmp196,
	ld	a3,8(a5)		# tmp197,
	ld	a4,16(a5)		# tmp198,
	sd	a2,-56(s0)	# tmp196, list5
	sd	a3,-48(s0)	# tmp197, list5
	sd	a4,-40(s0)	# tmp198, list5
	lw	a5,24(a5)		# tmp199,
	sw	a5,-32(s0)	# tmp199, list5
# problem48.c:39:     assert(fabs(func0(list5, 7) - 7) < 1e-4);
	addi	a5,s0,-56	#, tmp200,
	li	a1,7		#,
	mv	a0,a5	#, tmp200
	call	func0		#
	fmv.s	fa4,fa0	# _17,
# problem48.c:39:     assert(fabs(func0(list5, 7) - 7) < 1e-4);
	lla	a5,.LC15	# tmp202,
	flw	fa5,0(a5)	# tmp201,
	fsub.s	fa5,fa4,fa5	# _18, _17, tmp201
	fabs.s	fa5,fa5	# _19, _18
	fcvt.d.s	fa4,fa5	# _20, _19
	lla	a5,.LC5	# tmp204,
	fld	fa5,0(a5)	# tmp203,
	flt.d	a5,fa4,fa5	#, tmp205, _20, tmp203
	bne	a5,zero,.L16	#, tmp205,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC6	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L16:
# problem48.c:41:     return 0;
	li	a5,0		# _38,
# problem48.c:42: }
	mv	a4,a5	# <retval>, _38
	la	a5,__stack_chk_guard		# tmp207,
	ld	a3, -24(s0)	# tmp210, D.4339
	ld	a5, 0(a5)	# tmp208, __stack_chk_guard
	xor	a5, a3, a5	# tmp208, tmp210
	li	a3, 0	# tmp210
	beq	a5,zero,.L18	#, tmp208,,
	call	__stack_chk_fail@plt	#
.L18:
	mv	a0,a4	#, <retval>
	ld	ra,120(sp)		#,
	.cfi_restore 1
	ld	s0,112(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128	#,,
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
	.align	2
.LC3:
	.word	1056964608
	.align	2
.LC4:
	.word	1077936128
	.align	3
.LC5:
	.word	-350469331
	.word	1058682594
	.align	3
.LC8:
	.word	0
	.word	1075838976
	.align	2
.LC10:
	.word	1084227584
	.align	2
.LC12:
	.word	1086324736
	.align	3
.LC13:
	.word	0
	.word	1075183616
	.align	2
.LC15:
	.word	1088421888
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
