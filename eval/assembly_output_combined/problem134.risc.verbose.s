	.file	"problem134.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	sd	s1,40(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# lst, lst
	mv	a5,a1	# tmp89, size
	sw	a5,-60(s0)	# tmp90, size
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
	ld	a4,-56(s0)		# tmp91, lst
	add	a5,a4,a5	# _2, _3, tmp91
	flw	fa5,0(a5)	# _4, *_3
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvt.d.s	fa5,fa5	# _5, _4
	fmv.d	fa0,fa5	#, _5
	call	ceil@plt	#
	fmv.d	fa5,fa0	# _6,
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvt.w.d a5,fa5,rtz	# tmp92, _6
	sext.w	s1,a5	# _7, tmp92
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	lw	a5,-36(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a4,-56(s0)		# tmp93, lst
	add	a5,a4,a5	# _9, _10, tmp93
	flw	fa5,0(a5)	# _11, *_10
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvt.d.s	fa5,fa5	# _12, _11
	fmv.d	fa0,fa5	#, _12
	call	ceil@plt	#
	fmv.d	fa5,fa0	# _13,
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvt.w.d a5,fa5,rtz	# tmp94, _13
	sext.w	a5,a5	# _14, tmp94
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	mulw	a5,s1,a5	# tmp95, _7, _14
	sext.w	a5,a5	# _15, tmp95
# problem134.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	lw	a4,-40(s0)		# tmp98, sum
	addw	a5,a4,a5	# _15, tmp96, tmp97
	sw	a5,-40(s0)	# tmp96, sum
# problem134.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp101, i
	addiw	a5,a5,1	#, tmp99, tmp100
	sw	a5,-36(s0)	# tmp99, i
.L2:
# problem134.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp103, i
	mv	a4,a5	# tmp102, tmp103
	lw	a5,-60(s0)		# tmp105, size
	sext.w	a4,a4	# tmp106, tmp102
	sext.w	a5,a5	# tmp107, tmp104
	blt	a4,a5,.L3	#, tmp106, tmp107,
# problem134.c:9:     return sum;
	lw	a5,-40(s0)		# _21, sum
# problem134.c:10: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	ld	s1,40(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
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
	addi	sp,sp,-192	#,,
	sd	ra,184(sp)	#,
	sd	s0,176(sp)	#,
	addi	s0,sp,192	#,,
# problem134.c:16: int main() {
	la	a5,__stack_chk_guard		# tmp86,
	ld	a4, 0(a5)	# tmp185, __stack_chk_guard
	sd	a4, -24(s0)	# tmp185, D.3016
	li	a4, 0	# tmp185
# problem134.c:17:     float lst1[] = {1, 2, 3};
	lla	a5,.LC3	# tmp87,
	flw	fa5,0(a5)	# tmp88,
	fsw	fa5,-168(s0)	# tmp88, lst1[0]
	lla	a5,.LC4	# tmp89,
	flw	fa5,0(a5)	# tmp90,
	fsw	fa5,-164(s0)	# tmp90, lst1[1]
	lla	a5,.LC5	# tmp91,
	flw	fa5,0(a5)	# tmp92,
	fsw	fa5,-160(s0)	# tmp92, lst1[2]
# problem134.c:18:     assert(func0(lst1, 3) == 14);
	addi	a5,s0,-168	#, tmp93,
	li	a1,3		#,
	mv	a0,a5	#, tmp93
	call	func0		#
	mv	a5,a0	# tmp94,
	mv	a4,a5	# tmp95, _1
	li	a5,14		# tmp96,
	beq	a4,a5,.L6	#, tmp95, tmp96,
# problem134.c:18:     assert(func0(lst1, 3) == 14);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC6	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L6:
# problem134.c:20:     float lst2[] = {1.0, 2, 3};
	lla	a5,.LC3	# tmp97,
	flw	fa5,0(a5)	# tmp98,
	fsw	fa5,-152(s0)	# tmp98, lst2[0]
	lla	a5,.LC4	# tmp99,
	flw	fa5,0(a5)	# tmp100,
	fsw	fa5,-148(s0)	# tmp100, lst2[1]
	lla	a5,.LC5	# tmp101,
	flw	fa5,0(a5)	# tmp102,
	fsw	fa5,-144(s0)	# tmp102, lst2[2]
# problem134.c:21:     assert(func0(lst2, 3) == 14);
	addi	a5,s0,-152	#, tmp103,
	li	a1,3		#,
	mv	a0,a5	#, tmp103
	call	func0		#
	mv	a5,a0	# tmp104,
	mv	a4,a5	# tmp105, _2
	li	a5,14		# tmp106,
	beq	a4,a5,.L7	#, tmp105, tmp106,
# problem134.c:21:     assert(func0(lst2, 3) == 14);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC6	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L7:
# problem134.c:23:     float lst3[] = {1, 3, 5, 7};
	lla	a5,.LC0	# tmp107,
	ld	a4,0(a5)		# tmp108,
	sd	a4,-72(s0)	# tmp108, lst3
	ld	a5,8(a5)		# tmp109,
	sd	a5,-64(s0)	# tmp109, lst3
# problem134.c:24:     assert(func0(lst3, 4) == 84);
	addi	a5,s0,-72	#, tmp110,
	li	a1,4		#,
	mv	a0,a5	#, tmp110
	call	func0		#
	mv	a5,a0	# tmp111,
	mv	a4,a5	# tmp112, _3
	li	a5,84		# tmp113,
	beq	a4,a5,.L8	#, tmp112, tmp113,
# problem134.c:24:     assert(func0(lst3, 4) == 84);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC6	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L8:
# problem134.c:26:     float lst4[] = {1.4, 4.2, 0};
	lla	a5,.LC10	# tmp114,
	flw	fa5,0(a5)	# tmp115,
	fsw	fa5,-136(s0)	# tmp115, lst4[0]
	lla	a5,.LC11	# tmp116,
	flw	fa5,0(a5)	# tmp117,
	fsw	fa5,-132(s0)	# tmp117, lst4[1]
	sw	zero,-128(s0)	#, lst4[2]
# problem134.c:27:     assert(func0(lst4, 3) == 29);
	addi	a5,s0,-136	#, tmp118,
	li	a1,3		#,
	mv	a0,a5	#, tmp118
	call	func0		#
	mv	a5,a0	# tmp119,
	mv	a4,a5	# tmp120, _4
	li	a5,29		# tmp121,
	beq	a4,a5,.L9	#, tmp120, tmp121,
# problem134.c:27:     assert(func0(lst4, 3) == 29);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC6	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L9:
# problem134.c:29:     float lst5[] = {-2.4, 1, 1};
	lla	a5,.LC13	# tmp122,
	flw	fa5,0(a5)	# tmp123,
	fsw	fa5,-120(s0)	# tmp123, lst5[0]
	lla	a5,.LC3	# tmp124,
	flw	fa5,0(a5)	# tmp125,
	fsw	fa5,-116(s0)	# tmp125, lst5[1]
	lla	a5,.LC3	# tmp126,
	flw	fa5,0(a5)	# tmp127,
	fsw	fa5,-112(s0)	# tmp127, lst5[2]
# problem134.c:30:     assert(func0(lst5, 3) == 6);
	addi	a5,s0,-120	#, tmp128,
	li	a1,3		#,
	mv	a0,a5	#, tmp128
	call	func0		#
	mv	a5,a0	# tmp129,
	mv	a4,a5	# tmp130, _5
	li	a5,6		# tmp131,
	beq	a4,a5,.L10	#, tmp130, tmp131,
# problem134.c:30:     assert(func0(lst5, 3) == 6);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC6	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L10:
# problem134.c:32:     float lst6[] = {100, 1, 15, 2};
	lla	a5,.LC1	# tmp132,
	ld	a4,0(a5)		# tmp133,
	sd	a4,-56(s0)	# tmp133, lst6
	ld	a5,8(a5)		# tmp134,
	sd	a5,-48(s0)	# tmp134, lst6
# problem134.c:33:     assert(func0(lst6, 4) == 10230);
	addi	a5,s0,-56	#, tmp135,
	li	a1,4		#,
	mv	a0,a5	#, tmp135
	call	func0		#
	mv	a5,a0	# tmp136,
	mv	a4,a5	# tmp137, _6
	li	a5,8192		# tmp139,
	addi	a5,a5,2038	#, tmp138, tmp139
	beq	a4,a5,.L11	#, tmp137, tmp138,
# problem134.c:33:     assert(func0(lst6, 4) == 10230);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC6	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L11:
# problem134.c:35:     float lst7[] = {10000, 10000};
	lla	a5,.LC16	# tmp140,
	flw	fa5,0(a5)	# tmp141,
	fsw	fa5,-176(s0)	# tmp141, lst7[0]
	lla	a5,.LC16	# tmp142,
	flw	fa5,0(a5)	# tmp143,
	fsw	fa5,-172(s0)	# tmp143, lst7[1]
# problem134.c:36:     assert(func0(lst7, 2) == 200000000);
	addi	a5,s0,-176	#, tmp144,
	li	a1,2		#,
	mv	a0,a5	#, tmp144
	call	func0		#
	mv	a5,a0	# tmp145,
	mv	a4,a5	# tmp146, _7
	li	a5,199999488		# tmp148,
	addi	a5,a5,512	#, tmp147, tmp148
	beq	a4,a5,.L12	#, tmp146, tmp147,
# problem134.c:36:     assert(func0(lst7, 2) == 200000000);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC6	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L12:
# problem134.c:38:     float lst8[] = {-1.4, 4.6, 6.3};
	lla	a5,.LC18	# tmp149,
	flw	fa5,0(a5)	# tmp150,
	fsw	fa5,-104(s0)	# tmp150, lst8[0]
	lla	a5,.LC19	# tmp151,
	flw	fa5,0(a5)	# tmp152,
	fsw	fa5,-100(s0)	# tmp152, lst8[1]
	lla	a5,.LC20	# tmp153,
	flw	fa5,0(a5)	# tmp154,
	fsw	fa5,-96(s0)	# tmp154, lst8[2]
# problem134.c:39:     assert(func0(lst8, 3) == 75);
	addi	a5,s0,-104	#, tmp155,
	li	a1,3		#,
	mv	a0,a5	#, tmp155
	call	func0		#
	mv	a5,a0	# tmp156,
	mv	a4,a5	# tmp157, _8
	li	a5,75		# tmp158,
	beq	a4,a5,.L13	#, tmp157, tmp158,
# problem134.c:39:     assert(func0(lst8, 3) == 75);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC6	#,
	lla	a0,.LC21	#,
	call	__assert_fail@plt	#
.L13:
# problem134.c:41:     float lst9[] = {-1.4, 17.9, 18.9, 19.9};
	lla	a5,.LC2	# tmp159,
	ld	a4,0(a5)		# tmp160,
	sd	a4,-40(s0)	# tmp160, lst9
	ld	a5,8(a5)		# tmp161,
	sd	a5,-32(s0)	# tmp161, lst9
# problem134.c:42:     assert(func0(lst9, 4) == 1086);
	addi	a5,s0,-40	#, tmp162,
	li	a1,4		#,
	mv	a0,a5	#, tmp162
	call	func0		#
	mv	a5,a0	# tmp163,
	mv	a4,a5	# tmp164, _9
	li	a5,1086		# tmp165,
	beq	a4,a5,.L14	#, tmp164, tmp165,
# problem134.c:42:     assert(func0(lst9, 4) == 1086);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC6	#,
	lla	a0,.LC22	#,
	call	__assert_fail@plt	#
.L14:
# problem134.c:44:     float lst10[] = {0};
	sw	zero,-192(s0)	#, lst10[0]
# problem134.c:45:     assert(func0(lst10, 1) == 0);
	addi	a5,s0,-192	#, tmp166,
	li	a1,1		#,
	mv	a0,a5	#, tmp166
	call	func0		#
	mv	a5,a0	# tmp167,
	beq	a5,zero,.L15	#, _10,,
# problem134.c:45:     assert(func0(lst10, 1) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC6	#,
	lla	a0,.LC23	#,
	call	__assert_fail@plt	#
.L15:
# problem134.c:47:     float lst11[] = {-1};
	lla	a5,.LC24	# tmp168,
	flw	fa5,0(a5)	# tmp169,
	fsw	fa5,-184(s0)	# tmp169, lst11[0]
# problem134.c:48:     assert(func0(lst11, 1) == 1);
	addi	a5,s0,-184	#, tmp170,
	li	a1,1		#,
	mv	a0,a5	#, tmp170
	call	func0		#
	mv	a5,a0	# tmp171,
	mv	a4,a5	# tmp172, _11
	li	a5,1		# tmp173,
	beq	a4,a5,.L16	#, tmp172, tmp173,
# problem134.c:48:     assert(func0(lst11, 1) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,48		#,
	lla	a1,.LC6	#,
	lla	a0,.LC25	#,
	call	__assert_fail@plt	#
.L16:
# problem134.c:50:     float lst12[] = {-1, 1, 0};
	lla	a5,.LC24	# tmp174,
	flw	fa5,0(a5)	# tmp175,
	fsw	fa5,-88(s0)	# tmp175, lst12[0]
	lla	a5,.LC3	# tmp176,
	flw	fa5,0(a5)	# tmp177,
	fsw	fa5,-84(s0)	# tmp177, lst12[1]
	sw	zero,-80(s0)	#, lst12[2]
# problem134.c:51:     assert(func0(lst12, 3) == 2);
	addi	a5,s0,-88	#, tmp178,
	li	a1,3		#,
	mv	a0,a5	#, tmp178
	call	func0		#
	mv	a5,a0	# tmp179,
	mv	a4,a5	# tmp180, _12
	li	a5,2		# tmp181,
	beq	a4,a5,.L17	#, tmp180, tmp181,
# problem134.c:51:     assert(func0(lst12, 3) == 2);
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
	la	a5,__stack_chk_guard		# tmp183,
	ld	a3, -24(s0)	# tmp186, D.3016
	ld	a5, 0(a5)	# tmp184, __stack_chk_guard
	xor	a5, a3, a5	# tmp184, tmp186
	li	a3, 0	# tmp186
	beq	a5,zero,.L19	#, tmp184,,
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,184(sp)		#,
	ld	s0,176(sp)		#,
	addi	sp,sp,192	#,,
	jr	ra		#
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
