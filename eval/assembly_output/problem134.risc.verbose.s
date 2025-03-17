	.file	"problem134.c"
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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	sd	s1,40(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# lst, lst
	mv	a5,a1	# tmp151, size
	sw	a5,-60(s0)	# tmp152, size
# problem134.c:5:     int sum = 0;
	sw	zero,-40(s0)	#, sum
# problem134.c:6:     for (int i = 0; i < size; i++) {
	sw	zero,-36(s0)	#, i
# problem134.c:6:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L3:
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	lw	a5,-36(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-56(s0)		# tmp153, lst
	add	a5,a4,a5	# _2, _3, tmp153
	flw	fa5,0(a5)	# _4, *_3
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvt.d.s	fa5,fa5	# _5, _4
	fmv.d	fa0,fa5	#, _5
	call	ceil@plt	#
	fmv.d	fa5,fa0	# _6,
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvt.w.d a5,fa5,rtz	# tmp154, _6
	sext.w	s1,a5	# _7, tmp154
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	lw	a5,-36(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a4,-56(s0)		# tmp155, lst
	add	a5,a4,a5	# _9, _10, tmp155
	flw	fa5,0(a5)	# _11, *_10
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvt.d.s	fa5,fa5	# _12, _11
	fmv.d	fa0,fa5	#, _12
	call	ceil@plt	#
	fmv.d	fa5,fa0	# _13,
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvt.w.d a5,fa5,rtz	# tmp156, _13
	sext.w	a5,a5	# _14, tmp156
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	mulw	a5,s1,a5	# tmp157, _7, _14
	sext.w	a5,a5	# _15, tmp157
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	lw	a4,-40(s0)		# tmp160, sum
	addw	a5,a4,a5	# _15, tmp158, tmp159
	sw	a5,-40(s0)	# tmp158, sum
# problem134.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp163, i
	addiw	a5,a5,1	#, tmp161, tmp162
	sw	a5,-36(s0)	# tmp161, i
.L2:
# problem134.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp165, i
	mv	a4,a5	# tmp164, tmp165
	lw	a5,-60(s0)		# tmp167, size
	sext.w	a4,a4	# tmp168, tmp164
	sext.w	a5,a5	# tmp169, tmp166
	blt	a4,a5,.L3	#, tmp168, tmp169,
# problem134.c:9:     return sum;
	lw	a5,-40(s0)		# _21, sum
# problem134.c:10: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	ld	s1,40(sp)		#,
	.cfi_restore 9
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC6:
	.string	"problem134.c"
	.align	3
.LC7:
	.string	"func0(lst1, 3) == 14"
	.align	3
.LC8:
	.string	"func0(lst2, 3) == 14"
	.align	3
.LC9:
	.string	"func0(lst3, 4) == 84"
	.align	3
.LC12:
	.string	"func0(lst4, 3) == 29"
	.align	3
.LC14:
	.string	"func0(lst5, 3) == 6"
	.align	3
.LC15:
	.string	"func0(lst6, 4) == 10230"
	.align	3
.LC17:
	.string	"func0(lst7, 2) == 200000000"
	.align	3
.LC21:
	.string	"func0(lst8, 3) == 75"
	.align	3
.LC22:
	.string	"func0(lst9, 4) == 1086"
	.align	3
.LC23:
	.string	"func0(lst10, 1) == 0"
	.align	3
.LC25:
	.string	"func0(lst11, 1) == 1"
	.align	3
.LC26:
	.string	"func0(lst12, 3) == 2"
	.align	3
.LC0:
	.word	1065353216
	.word	1077936128
	.word	1084227584
	.word	1088421888
	.align	3
.LC1:
	.word	1120403456
	.word	1065353216
	.word	1097859072
	.word	1073741824
	.align	3
.LC2:
	.word	-1078774989
	.word	1099903795
	.word	1100428083
	.word	1100952371
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-192	#,,
	.cfi_def_cfa_offset 192
	sd	ra,184(sp)	#,
	sd	s0,176(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,192	#,,
	.cfi_def_cfa 8, 0
# problem134.c:16: int main() {
	la	a5,__stack_chk_guard		# tmp148,
	ld	a4, 0(a5)	# tmp250, __stack_chk_guard
	sd	a4, -24(s0)	# tmp250, D.3834
	li	a4, 0	# tmp250
# problem134.c:17:     float lst1[] = {1, 2, 3};
	lla	a5,.LC3	# tmp149,
	flw	fa5,0(a5)	# tmp150,
	fsw	fa5,-168(s0)	# tmp150, lst1[0]
	lla	a5,.LC4	# tmp151,
	flw	fa5,0(a5)	# tmp152,
	fsw	fa5,-164(s0)	# tmp152, lst1[1]
	lla	a5,.LC5	# tmp153,
	flw	fa5,0(a5)	# tmp154,
	fsw	fa5,-160(s0)	# tmp154, lst1[2]
# problem134.c:18:     assert(func0(lst1, 3) == 14);
	addi	a5,s0,-168	#, tmp155,
	li	a1,3		#,
	mv	a0,a5	#, tmp155
	call	func0		#
	mv	a5,a0	# tmp156,
# problem134.c:18:     assert(func0(lst1, 3) == 14);
	mv	a4,a5	# tmp157, _1
	li	a5,14		# tmp158,
	beq	a4,a5,.L6	#, tmp157, tmp158,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC6	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L6:
# problem134.c:20:     float lst2[] = {1.0, 2, 3};
	lla	a5,.LC3	# tmp159,
	flw	fa5,0(a5)	# tmp160,
	fsw	fa5,-152(s0)	# tmp160, lst2[0]
	lla	a5,.LC4	# tmp161,
	flw	fa5,0(a5)	# tmp162,
	fsw	fa5,-148(s0)	# tmp162, lst2[1]
	lla	a5,.LC5	# tmp163,
	flw	fa5,0(a5)	# tmp164,
	fsw	fa5,-144(s0)	# tmp164, lst2[2]
# problem134.c:21:     assert(func0(lst2, 3) == 14);
	addi	a5,s0,-152	#, tmp165,
	li	a1,3		#,
	mv	a0,a5	#, tmp165
	call	func0		#
	mv	a5,a0	# tmp166,
# problem134.c:21:     assert(func0(lst2, 3) == 14);
	mv	a4,a5	# tmp167, _2
	li	a5,14		# tmp168,
	beq	a4,a5,.L7	#, tmp167, tmp168,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC6	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L7:
# problem134.c:23:     float lst3[] = {1, 3, 5, 7};
	lla	a5,.LC0	# tmp169,
	ld	a4,0(a5)		# tmp170,
	sd	a4,-72(s0)	# tmp170, lst3
	ld	a5,8(a5)		# tmp171,
	sd	a5,-64(s0)	# tmp171, lst3
# problem134.c:24:     assert(func0(lst3, 4) == 84);
	addi	a5,s0,-72	#, tmp172,
	li	a1,4		#,
	mv	a0,a5	#, tmp172
	call	func0		#
	mv	a5,a0	# tmp173,
# problem134.c:24:     assert(func0(lst3, 4) == 84);
	mv	a4,a5	# tmp174, _3
	li	a5,84		# tmp175,
	beq	a4,a5,.L8	#, tmp174, tmp175,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC6	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L8:
# problem134.c:26:     float lst4[] = {1.4, 4.2, 0};
	lla	a5,.LC10	# tmp176,
	flw	fa5,0(a5)	# tmp177,
	fsw	fa5,-136(s0)	# tmp177, lst4[0]
	lla	a5,.LC11	# tmp178,
	flw	fa5,0(a5)	# tmp179,
	fsw	fa5,-132(s0)	# tmp179, lst4[1]
	fmv.s.x	fa5,zero	# tmp180,
	fsw	fa5,-128(s0)	# tmp180, lst4[2]
# problem134.c:27:     assert(func0(lst4, 3) == 29);
	addi	a5,s0,-136	#, tmp181,
	li	a1,3		#,
	mv	a0,a5	#, tmp181
	call	func0		#
	mv	a5,a0	# tmp182,
# problem134.c:27:     assert(func0(lst4, 3) == 29);
	mv	a4,a5	# tmp183, _4
	li	a5,29		# tmp184,
	beq	a4,a5,.L9	#, tmp183, tmp184,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC6	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L9:
# problem134.c:29:     float lst5[] = {-2.4, 1, 1};
	lla	a5,.LC13	# tmp185,
	flw	fa5,0(a5)	# tmp186,
	fsw	fa5,-120(s0)	# tmp186, lst5[0]
	lla	a5,.LC3	# tmp187,
	flw	fa5,0(a5)	# tmp188,
	fsw	fa5,-116(s0)	# tmp188, lst5[1]
	lla	a5,.LC3	# tmp189,
	flw	fa5,0(a5)	# tmp190,
	fsw	fa5,-112(s0)	# tmp190, lst5[2]
# problem134.c:30:     assert(func0(lst5, 3) == 6);
	addi	a5,s0,-120	#, tmp191,
	li	a1,3		#,
	mv	a0,a5	#, tmp191
	call	func0		#
	mv	a5,a0	# tmp192,
# problem134.c:30:     assert(func0(lst5, 3) == 6);
	mv	a4,a5	# tmp193, _5
	li	a5,6		# tmp194,
	beq	a4,a5,.L10	#, tmp193, tmp194,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC6	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L10:
# problem134.c:32:     float lst6[] = {100, 1, 15, 2};
	lla	a5,.LC1	# tmp195,
	ld	a4,0(a5)		# tmp196,
	sd	a4,-56(s0)	# tmp196, lst6
	ld	a5,8(a5)		# tmp197,
	sd	a5,-48(s0)	# tmp197, lst6
# problem134.c:33:     assert(func0(lst6, 4) == 10230);
	addi	a5,s0,-56	#, tmp198,
	li	a1,4		#,
	mv	a0,a5	#, tmp198
	call	func0		#
	mv	a5,a0	# tmp199,
# problem134.c:33:     assert(func0(lst6, 4) == 10230);
	mv	a4,a5	# tmp200, _6
	li	a5,8192		# tmp202,
	addi	a5,a5,2038	#, tmp201, tmp202
	beq	a4,a5,.L11	#, tmp200, tmp201,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC6	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L11:
# problem134.c:35:     float lst7[] = {10000, 10000};
	lla	a5,.LC16	# tmp203,
	flw	fa5,0(a5)	# tmp204,
	fsw	fa5,-176(s0)	# tmp204, lst7[0]
	lla	a5,.LC16	# tmp205,
	flw	fa5,0(a5)	# tmp206,
	fsw	fa5,-172(s0)	# tmp206, lst7[1]
# problem134.c:36:     assert(func0(lst7, 2) == 200000000);
	addi	a5,s0,-176	#, tmp207,
	li	a1,2		#,
	mv	a0,a5	#, tmp207
	call	func0		#
	mv	a5,a0	# tmp208,
# problem134.c:36:     assert(func0(lst7, 2) == 200000000);
	mv	a4,a5	# tmp209, _7
	li	a5,199999488		# tmp211,
	addi	a5,a5,512	#, tmp210, tmp211
	beq	a4,a5,.L12	#, tmp209, tmp210,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC6	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L12:
# problem134.c:38:     float lst8[] = {-1.4, 4.6, 6.3};
	lla	a5,.LC18	# tmp212,
	flw	fa5,0(a5)	# tmp213,
	fsw	fa5,-104(s0)	# tmp213, lst8[0]
	lla	a5,.LC19	# tmp214,
	flw	fa5,0(a5)	# tmp215,
	fsw	fa5,-100(s0)	# tmp215, lst8[1]
	lla	a5,.LC20	# tmp216,
	flw	fa5,0(a5)	# tmp217,
	fsw	fa5,-96(s0)	# tmp217, lst8[2]
# problem134.c:39:     assert(func0(lst8, 3) == 75);
	addi	a5,s0,-104	#, tmp218,
	li	a1,3		#,
	mv	a0,a5	#, tmp218
	call	func0		#
	mv	a5,a0	# tmp219,
# problem134.c:39:     assert(func0(lst8, 3) == 75);
	mv	a4,a5	# tmp220, _8
	li	a5,75		# tmp221,
	beq	a4,a5,.L13	#, tmp220, tmp221,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC6	#,
	lla	a0,.LC21	#,
	call	__assert_fail@plt	#
.L13:
# problem134.c:41:     float lst9[] = {-1.4, 17.9, 18.9, 19.9};
	lla	a5,.LC2	# tmp222,
	ld	a4,0(a5)		# tmp223,
	sd	a4,-40(s0)	# tmp223, lst9
	ld	a5,8(a5)		# tmp224,
	sd	a5,-32(s0)	# tmp224, lst9
# problem134.c:42:     assert(func0(lst9, 4) == 1086);
	addi	a5,s0,-40	#, tmp225,
	li	a1,4		#,
	mv	a0,a5	#, tmp225
	call	func0		#
	mv	a5,a0	# tmp226,
# problem134.c:42:     assert(func0(lst9, 4) == 1086);
	mv	a4,a5	# tmp227, _9
	li	a5,1086		# tmp228,
	beq	a4,a5,.L14	#, tmp227, tmp228,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC6	#,
	lla	a0,.LC22	#,
	call	__assert_fail@plt	#
.L14:
# problem134.c:44:     float lst10[] = {0};
	fmv.s.x	fa5,zero	# tmp229,
	fsw	fa5,-192(s0)	# tmp229, lst10[0]
# problem134.c:45:     assert(func0(lst10, 1) == 0);
	addi	a5,s0,-192	#, tmp230,
	li	a1,1		#,
	mv	a0,a5	#, tmp230
	call	func0		#
	mv	a5,a0	# tmp231,
# problem134.c:45:     assert(func0(lst10, 1) == 0);
	beq	a5,zero,.L15	#, _10,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC6	#,
	lla	a0,.LC23	#,
	call	__assert_fail@plt	#
.L15:
# problem134.c:47:     float lst11[] = {-1};
	lla	a5,.LC24	# tmp232,
	flw	fa5,0(a5)	# tmp233,
	fsw	fa5,-184(s0)	# tmp233, lst11[0]
# problem134.c:48:     assert(func0(lst11, 1) == 1);
	addi	a5,s0,-184	#, tmp234,
	li	a1,1		#,
	mv	a0,a5	#, tmp234
	call	func0		#
	mv	a5,a0	# tmp235,
# problem134.c:48:     assert(func0(lst11, 1) == 1);
	mv	a4,a5	# tmp236, _11
	li	a5,1		# tmp237,
	beq	a4,a5,.L16	#, tmp236, tmp237,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,48		#,
	lla	a1,.LC6	#,
	lla	a0,.LC25	#,
	call	__assert_fail@plt	#
.L16:
# problem134.c:50:     float lst12[] = {-1, 1, 0};
	lla	a5,.LC24	# tmp238,
	flw	fa5,0(a5)	# tmp239,
	fsw	fa5,-88(s0)	# tmp239, lst12[0]
	lla	a5,.LC3	# tmp240,
	flw	fa5,0(a5)	# tmp241,
	fsw	fa5,-84(s0)	# tmp241, lst12[1]
	fmv.s.x	fa5,zero	# tmp242,
	fsw	fa5,-80(s0)	# tmp242, lst12[2]
# problem134.c:51:     assert(func0(lst12, 3) == 2);
	addi	a5,s0,-88	#, tmp243,
	li	a1,3		#,
	mv	a0,a5	#, tmp243
	call	func0		#
	mv	a5,a0	# tmp244,
# problem134.c:51:     assert(func0(lst12, 3) == 2);
	mv	a4,a5	# tmp245, _12
	li	a5,2		# tmp246,
	beq	a4,a5,.L17	#, tmp245, tmp246,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,51		#,
	lla	a1,.LC6	#,
	lla	a0,.LC26	#,
	call	__assert_fail@plt	#
.L17:
# problem134.c:53:     return 0;
	li	a5,0		# _63,
# problem134.c:54: }
	mv	a4,a5	# <retval>, _63
	la	a5,__stack_chk_guard		# tmp248,
	ld	a3, -24(s0)	# tmp251, D.3834
	ld	a5, 0(a5)	# tmp249, __stack_chk_guard
	xor	a5, a3, a5	# tmp249, tmp251
	li	a3, 0	# tmp251
	beq	a5,zero,.L19	#, tmp249,,
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,184(sp)		#,
	.cfi_restore 1
	ld	s0,176(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 192
	addi	sp,sp,192	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	2
.LC3:
	.word	1065353216
	.align	2
.LC4:
	.word	1073741824
	.align	2
.LC5:
	.word	1077936128
	.align	2
.LC10:
	.word	1068708659
	.align	2
.LC11:
	.word	1082549862
	.align	2
.LC13:
	.word	-1072064102
	.align	2
.LC16:
	.word	1176256512
	.align	2
.LC18:
	.word	-1078774989
	.align	2
.LC19:
	.word	1083388723
	.align	2
.LC20:
	.word	1086953882
	.align	2
.LC24:
	.word	-1082130432
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
