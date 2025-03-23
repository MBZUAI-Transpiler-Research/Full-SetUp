	.file	"problem48.c"
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
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# l, l
	mv	a5,a1	# tmp112, size
	sw	a5,-44(s0)	# tmp113, size
# problem48.c:6:     for (int i = 0; i < size; i++) {
	sw	zero,-28(s0)	#, i
# problem48.c:6:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L7:
# problem48.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-28(s0)		# tmp116, i
	addiw	a5,a5,1	#, tmp114, tmp115
	sw	a5,-24(s0)	# tmp114, j
# problem48.c:7:         for (int j = i + 1; j < size; j++) {
	j	.L3		#
.L6:
# problem48.c:8:             if (l[i] > l[j]) {
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp117, l
	add	a5,a4,a5	# _2, _3, tmp117
	flw	fa4,0(a5)	# _4, *_3
# problem48.c:8:             if (l[i] > l[j]) {
	lw	a5,-24(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp118, l
	add	a5,a4,a5	# _6, _7, tmp118
	flw	fa5,0(a5)	# _8, *_7
# problem48.c:8:             if (l[i] > l[j]) {
	fgt.s	a5,fa4,fa5	#, tmp119, _4, _8
	beq	a5,zero,.L4	#, tmp119,,
# problem48.c:9:                 float temp = l[i];
	lw	a5,-28(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a4,-40(s0)		# tmp120, l
	add	a5,a4,a5	# _10, _11, tmp120
# problem48.c:9:                 float temp = l[i];
	flw	fa5,0(a5)	# tmp121, *_11
	fsw	fa5,-20(s0)	# tmp121, temp
# problem48.c:10:                 l[i] = l[j];
	lw	a5,-24(s0)		# _12, j
	slli	a5,a5,2	#, _13, _12
	ld	a4,-40(s0)		# tmp122, l
	add	a4,a4,a5	# _13, _14, tmp122
# problem48.c:10:                 l[i] = l[j];
	lw	a5,-28(s0)		# _15, i
	slli	a5,a5,2	#, _16, _15
	ld	a3,-40(s0)		# tmp123, l
	add	a5,a3,a5	# _16, _17, tmp123
# problem48.c:10:                 l[i] = l[j];
	flw	fa5,0(a4)	# _18, *_14
# problem48.c:10:                 l[i] = l[j];
	fsw	fa5,0(a5)	# _18, *_17
# problem48.c:11:                 l[j] = temp;
	lw	a5,-24(s0)		# _19, j
	slli	a5,a5,2	#, _20, _19
	ld	a4,-40(s0)		# tmp124, l
	add	a5,a4,a5	# _20, _21, tmp124
# problem48.c:11:                 l[j] = temp;
	flw	fa5,-20(s0)	# tmp125, temp
	fsw	fa5,0(a5)	# tmp125, *_21
.L4:
# problem48.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-24(s0)		# tmp128, j
	addiw	a5,a5,1	#, tmp126, tmp127
	sw	a5,-24(s0)	# tmp126, j
.L3:
# problem48.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-24(s0)		# tmp130, j
	mv	a4,a5	# tmp129, tmp130
	lw	a5,-44(s0)		# tmp132, size
	sext.w	a4,a4	# tmp133, tmp129
	sext.w	a5,a5	# tmp134, tmp131
	blt	a4,a5,.L6	#, tmp133, tmp134,
# problem48.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp137, i
	addiw	a5,a5,1	#, tmp135, tmp136
	sw	a5,-28(s0)	# tmp135, i
.L2:
# problem48.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp139, i
	mv	a4,a5	# tmp138, tmp139
	lw	a5,-44(s0)		# tmp141, size
	sext.w	a4,a4	# tmp142, tmp138
	sext.w	a5,a5	# tmp143, tmp140
	blt	a4,a5,.L7	#, tmp142, tmp143,
# problem48.c:15:     if (size % 2 == 1) return l[size / 2];
	lw	a5,-44(s0)		# tmp146, size
	mv	a4,a5	# tmp145, tmp146
	sraiw	a5,a4,31	#, tmp147, tmp145
	srliw	a5,a5,31	#, tmp148, tmp147
	addw	a4,a4,a5	# tmp148, tmp149, tmp145
	andi	a4,a4,1	#, tmp150, tmp149
	subw	a5,a4,a5	# tmp151, tmp150, tmp148
	sext.w	a5,a5	# _22, tmp151
# problem48.c:15:     if (size % 2 == 1) return l[size / 2];
	mv	a4,a5	# tmp152, _22
	li	a5,1		# tmp153,
	bne	a4,a5,.L8	#, tmp152, tmp153,
# problem48.c:15:     if (size % 2 == 1) return l[size / 2];
	lw	a5,-44(s0)		# tmp156, size
	srliw	a4,a5,31	#, tmp157, tmp155
	addw	a5,a4,a5	# tmp155, tmp158, tmp157
	sraiw	a5,a5,1	#, tmp159, tmp158
	sext.w	a5,a5	# _23, tmp159
# problem48.c:15:     if (size % 2 == 1) return l[size / 2];
	slli	a5,a5,2	#, _25, _24
	ld	a4,-40(s0)		# tmp160, l
	add	a5,a4,a5	# _25, _26, tmp160
	flw	fa5,0(a5)	# _41, *_26
	j	.L9		#
.L8:
# problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	lw	a5,-44(s0)		# tmp163, size
	srliw	a4,a5,31	#, tmp164, tmp162
	addw	a5,a4,a5	# tmp162, tmp165, tmp164
	sraiw	a5,a5,1	#, tmp166, tmp165
	sext.w	a5,a5	# _27, tmp166
# problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	slli	a5,a5,2	#, _29, _28
	ld	a4,-40(s0)		# tmp167, l
	add	a5,a4,a5	# _29, _30, tmp167
	flw	fa4,0(a5)	# _31, *_30
# problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	lw	a5,-44(s0)		# tmp170, size
	srliw	a4,a5,31	#, tmp171, tmp169
	addw	a5,a4,a5	# tmp169, tmp172, tmp171
	sraiw	a5,a5,1	#, tmp173, tmp172
	sext.w	a5,a5	# _32, tmp173
# problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	slli	a5,a5,2	#, _34, _33
	addi	a5,a5,-4	#, _35, _34
	ld	a4,-40(s0)		# tmp174, l
	add	a5,a4,a5	# _35, _36, tmp174
	flw	fa5,0(a5)	# _37, *_36
# problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	fadd.s	fa4,fa4,fa5	# _38, _31, _37
# problem48.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	lla	a5,.LC3	# tmp176,
	flw	fa5,0(a5)	# tmp175,
	fmul.s	fa5,fa4,fa5	# _41, _38, tmp175
.L9:
# problem48.c:17: }
	fmv.s	fa0,fa5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
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
	addi	sp,sp,-128	#,,
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	addi	s0,sp,128	#,,
# problem48.c:25: int main() {
	la	a5,__stack_chk_guard		# tmp94,
	ld	a4, 0(a5)	# tmp147, __stack_chk_guard
	sd	a4, -24(s0)	# tmp147, D.3514
	li	a4, 0	# tmp147
# problem48.c:26:     float list1[] = {3, 1, 2, 4, 5};
	lla	a5,.LC0	# tmp95,
	ld	a4,0(a5)		# tmp96,
	sd	a4,-104(s0)	# tmp96, list1
	ld	a4,8(a5)		# tmp97,
	sd	a4,-96(s0)	# tmp97, list1
	lw	a5,16(a5)		# tmp98,
	sw	a5,-88(s0)	# tmp98, list1
# problem48.c:27:     assert(fabs(func0(list1, 5) - 3) < 1e-4);
	addi	a5,s0,-104	#, tmp99,
	li	a1,5		#,
	mv	a0,a5	#, tmp99
	call	func0		#
	fmv.s	fa4,fa0	# _1,
	lla	a5,.LC4	# tmp101,
	flw	fa5,0(a5)	# tmp100,
	fsub.s	fa5,fa4,fa5	# _2, _1, tmp100
	fabs.s	fa5,fa5	# _3, _2
	fcvt.d.s	fa4,fa5	# _4, _3
	lla	a5,.LC5	# tmp103,
	fld	fa5,0(a5)	# tmp102,
	flt.d	a5,fa4,fa5	#, tmp104, _4, tmp102
	bne	a5,zero,.L12	#, tmp104,,
# problem48.c:27:     assert(fabs(func0(list1, 5) - 3) < 1e-4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC6	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L12:
# problem48.c:29:     float list2[] = {-10, 4, 6, 1000, 10, 20};
	lla	a5,.LC1	# tmp105,
	ld	a4,0(a5)		# tmp106,
	sd	a4,-80(s0)	# tmp106, list2
	ld	a4,8(a5)		# tmp107,
	sd	a4,-72(s0)	# tmp107, list2
	ld	a5,16(a5)		# tmp108,
	sd	a5,-64(s0)	# tmp108, list2
# problem48.c:30:     assert(fabs(func0(list2, 6) - 8.0) < 1e-4);
	addi	a5,s0,-80	#, tmp109,
	li	a1,6		#,
	mv	a0,a5	#, tmp109
	call	func0		#
	fmv.s	fa5,fa0	# _5,
	fcvt.d.s	fa4,fa5	# _6, _5
	lla	a5,.LC8	# tmp111,
	fld	fa5,0(a5)	# tmp110,
	fsub.d	fa5,fa4,fa5	# _7, _6, tmp110
	fabs.d	fa4,fa5	# _8, _7
	lla	a5,.LC5	# tmp113,
	fld	fa5,0(a5)	# tmp112,
	flt.d	a5,fa4,fa5	#, tmp114, _8, tmp112
	bne	a5,zero,.L13	#, tmp114,,
# problem48.c:30:     assert(fabs(func0(list2, 6) - 8.0) < 1e-4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC6	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L13:
# problem48.c:32:     float list3[] = {5};
	lla	a5,.LC10	# tmp115,
	flw	fa5,0(a5)	# tmp116,
	fsw	fa5,-120(s0)	# tmp116, list3[0]
# problem48.c:33:     assert(fabs(func0(list3, 1) - 5) < 1e-4);
	addi	a5,s0,-120	#, tmp117,
	li	a1,1		#,
	mv	a0,a5	#, tmp117
	call	func0		#
	fmv.s	fa4,fa0	# _9,
	lla	a5,.LC10	# tmp119,
	flw	fa5,0(a5)	# tmp118,
	fsub.s	fa5,fa4,fa5	# _10, _9, tmp118
	fabs.s	fa5,fa5	# _11, _10
	fcvt.d.s	fa4,fa5	# _12, _11
	lla	a5,.LC5	# tmp121,
	fld	fa5,0(a5)	# tmp120,
	flt.d	a5,fa4,fa5	#, tmp122, _12, tmp120
	bne	a5,zero,.L14	#, tmp122,,
# problem48.c:33:     assert(fabs(func0(list3, 1) - 5) < 1e-4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC6	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L14:
# problem48.c:35:     float list4[] = {6, 5};
	lla	a5,.LC12	# tmp123,
	flw	fa5,0(a5)	# tmp124,
	fsw	fa5,-112(s0)	# tmp124, list4[0]
	lla	a5,.LC10	# tmp125,
	flw	fa5,0(a5)	# tmp126,
	fsw	fa5,-108(s0)	# tmp126, list4[1]
# problem48.c:36:     assert(fabs(func0(list4, 2) - 5.5) < 1e-4);
	addi	a5,s0,-112	#, tmp127,
	li	a1,2		#,
	mv	a0,a5	#, tmp127
	call	func0		#
	fmv.s	fa5,fa0	# _13,
	fcvt.d.s	fa4,fa5	# _14, _13
	lla	a5,.LC13	# tmp129,
	fld	fa5,0(a5)	# tmp128,
	fsub.d	fa5,fa4,fa5	# _15, _14, tmp128
	fabs.d	fa4,fa5	# _16, _15
	lla	a5,.LC5	# tmp131,
	fld	fa5,0(a5)	# tmp130,
	flt.d	a5,fa4,fa5	#, tmp132, _16, tmp130
	bne	a5,zero,.L15	#, tmp132,,
# problem48.c:36:     assert(fabs(func0(list4, 2) - 5.5) < 1e-4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC6	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L15:
# problem48.c:38:     float list5[] = {8, 1, 3, 9, 9, 2, 7};
	lla	a5,.LC2	# tmp133,
	ld	a2,0(a5)		# tmp134,
	ld	a3,8(a5)		# tmp135,
	ld	a4,16(a5)		# tmp136,
	sd	a2,-56(s0)	# tmp134, list5
	sd	a3,-48(s0)	# tmp135, list5
	sd	a4,-40(s0)	# tmp136, list5
	lw	a5,24(a5)		# tmp137,
	sw	a5,-32(s0)	# tmp137, list5
# problem48.c:39:     assert(fabs(func0(list5, 7) - 7) < 1e-4);
	addi	a5,s0,-56	#, tmp138,
	li	a1,7		#,
	mv	a0,a5	#, tmp138
	call	func0		#
	fmv.s	fa4,fa0	# _17,
	lla	a5,.LC15	# tmp140,
	flw	fa5,0(a5)	# tmp139,
	fsub.s	fa5,fa4,fa5	# _18, _17, tmp139
	fabs.s	fa5,fa5	# _19, _18
	fcvt.d.s	fa4,fa5	# _20, _19
	lla	a5,.LC5	# tmp142,
	fld	fa5,0(a5)	# tmp141,
	flt.d	a5,fa4,fa5	#, tmp143, _20, tmp141
	bne	a5,zero,.L16	#, tmp143,,
# problem48.c:39:     assert(fabs(func0(list5, 7) - 7) < 1e-4);
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
	la	a5,__stack_chk_guard		# tmp145,
	ld	a3, -24(s0)	# tmp148, D.3514
	ld	a5, 0(a5)	# tmp146, __stack_chk_guard
	xor	a5, a3, a5	# tmp146, tmp148
	li	a3, 0	# tmp148
	beq	a5,zero,.L18	#, tmp146,,
	call	__stack_chk_fail@plt	#
.L18:
	mv	a0,a4	#, <retval>
	ld	ra,120(sp)		#,
	ld	s0,112(sp)		#,
	addi	sp,sp,128	#,,
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
