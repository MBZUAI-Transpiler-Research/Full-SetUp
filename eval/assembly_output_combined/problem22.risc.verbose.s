	.file	"problem22.c"
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
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# numbers, numbers
	mv	a5,a1	# tmp158, size
	sw	a5,-44(s0)	# tmp159, size
# problem22.c:5:     float min = numbers[0], max = numbers[0];
	ld	a5,-40(s0)		# tmp160, numbers
	flw	fa5,0(a5)	# tmp161, *numbers_33(D)
	fsw	fa5,-32(s0)	# tmp161, min
# problem22.c:5:     float min = numbers[0], max = numbers[0];
	ld	a5,-40(s0)		# tmp162, numbers
	flw	fa5,0(a5)	# tmp163, *numbers_33(D)
	fsw	fa5,-28(s0)	# tmp163, max
# problem22.c:6:     for (int i = 1; i < size; i++) {
	li	a5,1		# tmp164,
	sw	a5,-24(s0)	# tmp164, i
# problem22.c:6:     for (int i = 1; i < size; i++) {
	j	.L2		#
.L7:
# problem22.c:7:         if (numbers[i] < min) min = numbers[i];
	lw	a5,-24(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp165, numbers
	add	a5,a4,a5	# _2, _3, tmp165
	flw	fa5,0(a5)	# _4, *_3
# problem22.c:7:         if (numbers[i] < min) min = numbers[i];
	flw	fa4,-32(s0)	# tmp166, min
	fgt.s	a5,fa4,fa5	#, tmp167, tmp166, _4
	beq	a5,zero,.L3	#, tmp167,,
# problem22.c:7:         if (numbers[i] < min) min = numbers[i];
	lw	a5,-24(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp168, numbers
	add	a5,a4,a5	# _6, _7, tmp168
# problem22.c:7:         if (numbers[i] < min) min = numbers[i];
	flw	fa5,0(a5)	# tmp169, *_7
	fsw	fa5,-32(s0)	# tmp169, min
.L3:
# problem22.c:8:         if (numbers[i] > max) max = numbers[i];
	lw	a5,-24(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a4,-40(s0)		# tmp170, numbers
	add	a5,a4,a5	# _9, _10, tmp170
	flw	fa5,0(a5)	# _11, *_10
# problem22.c:8:         if (numbers[i] > max) max = numbers[i];
	flw	fa4,-28(s0)	# tmp171, max
	flt.s	a5,fa4,fa5	#, tmp172, tmp171, _11
	beq	a5,zero,.L5	#, tmp172,,
# problem22.c:8:         if (numbers[i] > max) max = numbers[i];
	lw	a5,-24(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-40(s0)		# tmp173, numbers
	add	a5,a4,a5	# _13, _14, tmp173
# problem22.c:8:         if (numbers[i] > max) max = numbers[i];
	flw	fa5,0(a5)	# tmp174, *_14
	fsw	fa5,-28(s0)	# tmp174, max
.L5:
# problem22.c:6:     for (int i = 1; i < size; i++) {
	lw	a5,-24(s0)		# tmp177, i
	addiw	a5,a5,1	#, tmp175, tmp176
	sw	a5,-24(s0)	# tmp175, i
.L2:
# problem22.c:6:     for (int i = 1; i < size; i++) {
	lw	a5,-24(s0)		# tmp179, i
	mv	a4,a5	# tmp178, tmp179
	lw	a5,-44(s0)		# tmp181, size
	sext.w	a4,a4	# tmp182, tmp178
	sext.w	a5,a5	# tmp183, tmp180
	blt	a4,a5,.L7	#, tmp182, tmp183,
# problem22.c:10:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem22.c:10:     for (int i = 0; i < size; i++) {
	j	.L8		#
.L9:
# problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	lw	a5,-20(s0)		# _15, i
	slli	a5,a5,2	#, _16, _15
	ld	a4,-40(s0)		# tmp184, numbers
	add	a5,a4,a5	# _16, _17, tmp184
	flw	fa4,0(a5)	# _18, *_17
# problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	flw	fa5,-32(s0)	# tmp185, min
	fsub.s	fa4,fa4,fa5	# _19, _18, tmp185
# problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	flw	fa3,-28(s0)	# tmp186, max
	flw	fa5,-32(s0)	# tmp187, min
	fsub.s	fa5,fa3,fa5	# _20, tmp186, tmp187
# problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	lw	a5,-20(s0)		# _21, i
	slli	a5,a5,2	#, _22, _21
	ld	a4,-40(s0)		# tmp188, numbers
	add	a5,a4,a5	# _22, _23, tmp188
# problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	fdiv.s	fa5,fa4,fa5	# _24, _19, _20
# problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	fsw	fa5,0(a5)	# _24, *_23
# problem22.c:10:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp191, i
	addiw	a5,a5,1	#, tmp189, tmp190
	sw	a5,-20(s0)	# tmp189, i
.L8:
# problem22.c:10:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp193, i
	mv	a4,a5	# tmp192, tmp193
	lw	a5,-44(s0)		# tmp195, size
	sext.w	a4,a4	# tmp196, tmp192
	sext.w	a5,a5	# tmp197, tmp194
	blt	a4,a5,.L9	#, tmp196, tmp197,
# problem22.c:13: }
	nop	
	nop	
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp146, size
	sw	a5,-52(s0)	# tmp147, size
# problem22.c:21:     const float EPSILON = 1e-4;
	lla	a5,.LC5	# tmp148,
	flw	fa5,0(a5)	# tmp149,
	fsw	fa5,-20(s0)	# tmp149, EPSILON
# problem22.c:22:     for (int i = 0; i < size; i++) {
	sw	zero,-24(s0)	#, i
# problem22.c:22:     for (int i = 0; i < size; i++) {
	j	.L13		#
.L17:
# problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	lw	a5,-24(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp150, a
	add	a5,a4,a5	# _2, _3, tmp150
	flw	fa4,0(a5)	# _4, *_3
# problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	lw	a5,-24(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp151, b
	add	a5,a4,a5	# _6, _7, tmp151
	flw	fa5,0(a5)	# _8, *_7
# problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	fsub.s	fa5,fa4,fa5	# _9, _4, _8
# problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	fabs.s	fa5,fa5	# _10, _9
# problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	flw	fa4,-20(s0)	# tmp152, EPSILON
	flt.s	a5,fa4,fa5	#, tmp153, tmp152, _10
	beq	a5,zero,.L19	#, tmp153,,
# problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	li	a5,0		# _12,
# problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	j	.L16		#
.L19:
# problem22.c:22:     for (int i = 0; i < size; i++) {
	lw	a5,-24(s0)		# tmp156, i
	addiw	a5,a5,1	#, tmp154, tmp155
	sw	a5,-24(s0)	# tmp154, i
.L13:
# problem22.c:22:     for (int i = 0; i < size; i++) {
	lw	a5,-24(s0)		# tmp158, i
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-52(s0)		# tmp160, size
	sext.w	a4,a4	# tmp161, tmp157
	sext.w	a5,a5	# tmp162, tmp159
	blt	a4,a5,.L17	#, tmp161, tmp162,
# problem22.c:25:     return 1;
	li	a5,1		# _12,
.L16:
# problem22.c:26: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC9:
	.string	"problem22.c"
	.align	3
.LC10:
	.string	"issame(test1, expected1, 2)"
	.align	3
.LC12:
	.string	"issame(test2, expected2, 2)"
	.align	3
.LC13:
	.string	"issame(test3, expected3, 5)"
	.align	3
.LC14:
	.string	"issame(test4, expected4, 5)"
	.align	3
.LC15:
	.string	"issame(test5, expected5, 5)"
	.align	3
.LC0:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.align	3
.LC1:
	.word	0
	.word	1048576000
	.word	1056964608
	.word	1061158912
	.word	1065353216
	.align	3
.LC2:
	.word	1073741824
	.word	1065353216
	.word	1084227584
	.word	1077936128
	.word	1082130432
	.align	3
.LC3:
	.word	1048576000
	.word	0
	.word	1065353216
	.word	1056964608
	.word	1061158912
	.align	3
.LC4:
	.word	1094713344
	.word	1093664768
	.word	1097859072
	.word	1095761920
	.word	1096810496
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-208	#,,
	.cfi_def_cfa_offset 208
	sd	ra,200(sp)	#,
	sd	s0,192(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,208	#,,
	.cfi_def_cfa 8, 0
# problem22.c:28: int main() {
	la	a5,__stack_chk_guard		# tmp141,
	ld	a4, 0(a5)	# tmp203, __stack_chk_guard
	sd	a4, -24(s0)	# tmp203, D.3837
	li	a4, 0	# tmp203
# problem22.c:29:     float test1[] = {2.0, 49.9};
	lla	a5,.LC6	# tmp142,
	flw	fa5,0(a5)	# tmp143,
	fsw	fa5,-200(s0)	# tmp143, test1[0]
	lla	a5,.LC7	# tmp144,
	flw	fa5,0(a5)	# tmp145,
	fsw	fa5,-196(s0)	# tmp145, test1[1]
# problem22.c:30:     float expected1[] = {0.0, 1.0};
	fmv.s.x	fa5,zero	# tmp146,
	fsw	fa5,-192(s0)	# tmp146, expected1[0]
	lla	a5,.LC8	# tmp147,
	flw	fa5,0(a5)	# tmp148,
	fsw	fa5,-188(s0)	# tmp148, expected1[1]
# problem22.c:31:     func0(test1, 2);
	addi	a5,s0,-200	#, tmp149,
	li	a1,2		#,
	mv	a0,a5	#, tmp149
	call	func0		#
# problem22.c:32:     assert(issame(test1, expected1, 2));
	addi	a4,s0,-192	#, tmp150,
	addi	a5,s0,-200	#, tmp151,
	li	a2,2		#,
	mv	a1,a4	#, tmp150
	mv	a0,a5	#, tmp151
	call	issame		#
	mv	a5,a0	# tmp152,
# problem22.c:32:     assert(issame(test1, expected1, 2));
	bne	a5,zero,.L21	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC9	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L21:
# problem22.c:34:     float test2[] = {100.0, 49.9};
	lla	a5,.LC11	# tmp153,
	flw	fa5,0(a5)	# tmp154,
	fsw	fa5,-184(s0)	# tmp154, test2[0]
	lla	a5,.LC7	# tmp155,
	flw	fa5,0(a5)	# tmp156,
	fsw	fa5,-180(s0)	# tmp156, test2[1]
# problem22.c:35:     float expected2[] = {1.0, 0.0};
	lla	a5,.LC8	# tmp157,
	flw	fa5,0(a5)	# tmp158,
	fsw	fa5,-176(s0)	# tmp158, expected2[0]
	fmv.s.x	fa5,zero	# tmp159,
	fsw	fa5,-172(s0)	# tmp159, expected2[1]
# problem22.c:36:     func0(test2, 2);
	addi	a5,s0,-184	#, tmp160,
	li	a1,2		#,
	mv	a0,a5	#, tmp160
	call	func0		#
# problem22.c:37:     assert(issame(test2, expected2, 2));
	addi	a4,s0,-176	#, tmp161,
	addi	a5,s0,-184	#, tmp162,
	li	a2,2		#,
	mv	a1,a4	#, tmp161
	mv	a0,a5	#, tmp162
	call	issame		#
	mv	a5,a0	# tmp163,
# problem22.c:37:     assert(issame(test2, expected2, 2));
	bne	a5,zero,.L22	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC9	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L22:
# problem22.c:39:     float test3[] = {1.0, 2.0, 3.0, 4.0, 5.0};
	lla	a5,.LC0	# tmp164,
	ld	a4,0(a5)		# tmp165,
	sd	a4,-168(s0)	# tmp165, test3
	ld	a4,8(a5)		# tmp166,
	sd	a4,-160(s0)	# tmp166, test3
	lw	a5,16(a5)		# tmp167,
	sw	a5,-152(s0)	# tmp167, test3
# problem22.c:40:     float expected3[] = {0.0, 0.25, 0.5, 0.75, 1.0};
	lla	a5,.LC1	# tmp168,
	ld	a4,0(a5)		# tmp169,
	sd	a4,-144(s0)	# tmp169, expected3
	ld	a4,8(a5)		# tmp170,
	sd	a4,-136(s0)	# tmp170, expected3
	lw	a5,16(a5)		# tmp171,
	sw	a5,-128(s0)	# tmp171, expected3
# problem22.c:41:     func0(test3, 5);
	addi	a5,s0,-168	#, tmp172,
	li	a1,5		#,
	mv	a0,a5	#, tmp172
	call	func0		#
# problem22.c:42:     assert(issame(test3, expected3, 5));
	addi	a4,s0,-144	#, tmp173,
	addi	a5,s0,-168	#, tmp174,
	li	a2,5		#,
	mv	a1,a4	#, tmp173
	mv	a0,a5	#, tmp174
	call	issame		#
	mv	a5,a0	# tmp175,
# problem22.c:42:     assert(issame(test3, expected3, 5));
	bne	a5,zero,.L23	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC9	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L23:
# problem22.c:44:     float test4[] = {2.0, 1.0, 5.0, 3.0, 4.0};
	lla	a5,.LC2	# tmp176,
	ld	a4,0(a5)		# tmp177,
	sd	a4,-120(s0)	# tmp177, test4
	ld	a4,8(a5)		# tmp178,
	sd	a4,-112(s0)	# tmp178, test4
	lw	a5,16(a5)		# tmp179,
	sw	a5,-104(s0)	# tmp179, test4
# problem22.c:45:     float expected4[] = {0.25, 0.0, 1.0, 0.5, 0.75};
	lla	a5,.LC3	# tmp180,
	ld	a4,0(a5)		# tmp181,
	sd	a4,-96(s0)	# tmp181, expected4
	ld	a4,8(a5)		# tmp182,
	sd	a4,-88(s0)	# tmp182, expected4
	lw	a5,16(a5)		# tmp183,
	sw	a5,-80(s0)	# tmp183, expected4
# problem22.c:46:     func0(test4, 5);
	addi	a5,s0,-120	#, tmp184,
	li	a1,5		#,
	mv	a0,a5	#, tmp184
	call	func0		#
# problem22.c:47:     assert(issame(test4, expected4, 5));
	addi	a4,s0,-96	#, tmp185,
	addi	a5,s0,-120	#, tmp186,
	li	a2,5		#,
	mv	a1,a4	#, tmp185
	mv	a0,a5	#, tmp186
	call	issame		#
	mv	a5,a0	# tmp187,
# problem22.c:47:     assert(issame(test4, expected4, 5));
	bne	a5,zero,.L24	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,47		#,
	lla	a1,.LC9	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L24:
# problem22.c:49:     float test5[] = {12.0, 11.0, 15.0, 13.0, 14.0};
	lla	a5,.LC4	# tmp188,
	ld	a4,0(a5)		# tmp189,
	sd	a4,-72(s0)	# tmp189, test5
	ld	a4,8(a5)		# tmp190,
	sd	a4,-64(s0)	# tmp190, test5
	lw	a5,16(a5)		# tmp191,
	sw	a5,-56(s0)	# tmp191, test5
# problem22.c:50:     float expected5[] = {0.25, 0.0, 1.0, 0.5, 0.75};
	lla	a5,.LC3	# tmp192,
	ld	a4,0(a5)		# tmp193,
	sd	a4,-48(s0)	# tmp193, expected5
	ld	a4,8(a5)		# tmp194,
	sd	a4,-40(s0)	# tmp194, expected5
	lw	a5,16(a5)		# tmp195,
	sw	a5,-32(s0)	# tmp195, expected5
# problem22.c:51:     func0(test5, 5);
	addi	a5,s0,-72	#, tmp196,
	li	a1,5		#,
	mv	a0,a5	#, tmp196
	call	func0		#
# problem22.c:52:     assert(issame(test5, expected5, 5));
	addi	a4,s0,-48	#, tmp197,
	addi	a5,s0,-72	#, tmp198,
	li	a2,5		#,
	mv	a1,a4	#, tmp197
	mv	a0,a5	#, tmp198
	call	issame		#
	mv	a5,a0	# tmp199,
# problem22.c:52:     assert(issame(test5, expected5, 5));
	bne	a5,zero,.L25	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,52		#,
	lla	a1,.LC9	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L25:
# problem22.c:54:     return 0;
	li	a5,0		# _36,
# problem22.c:55: }
	mv	a4,a5	# <retval>, _36
	la	a5,__stack_chk_guard		# tmp201,
	ld	a3, -24(s0)	# tmp204, D.3837
	ld	a5, 0(a5)	# tmp202, __stack_chk_guard
	xor	a5, a3, a5	# tmp202, tmp204
	li	a3, 0	# tmp204
	beq	a5,zero,.L27	#, tmp202,,
	call	__stack_chk_fail@plt	#
.L27:
	mv	a0,a4	#, <retval>
	ld	ra,200(sp)		#,
	.cfi_restore 1
	ld	s0,192(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 208
	addi	sp,sp,208	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	2
.LC5:
	.word	953267991
	.align	2
.LC6:
	.word	1073741824
	.align	2
.LC7:
	.word	1111988634
	.align	2
.LC8:
	.word	1065353216
	.align	2
.LC11:
	.word	1120403456
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
