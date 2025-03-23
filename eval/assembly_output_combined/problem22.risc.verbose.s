	.file	"problem22.c"
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
	sd	a0,-40(s0)	# numbers, numbers
	mv	a5,a1	# tmp96, size
	sw	a5,-44(s0)	# tmp97, size
# problem22.c:5:     float min = numbers[0], max = numbers[0];
	ld	a5,-40(s0)		# tmp98, numbers
	flw	fa5,0(a5)	# tmp99, *numbers_33(D)
	fsw	fa5,-32(s0)	# tmp99, min
# problem22.c:5:     float min = numbers[0], max = numbers[0];
	ld	a5,-40(s0)		# tmp100, numbers
	flw	fa5,0(a5)	# tmp101, *numbers_33(D)
	fsw	fa5,-28(s0)	# tmp101, max
# problem22.c:6:     for (int i = 1; i < size; i++) {
	li	a5,1		# tmp102,
	sw	a5,-24(s0)	# tmp102, i
# problem22.c:6:     for (int i = 1; i < size; i++) {
	j	.L2		#
.L7:
# problem22.c:7:         if (numbers[i] < min) min = numbers[i];
	lw	a5,-24(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp103, numbers
	add	a5,a4,a5	# _2, _3, tmp103
	flw	fa5,0(a5)	# _4, *_3
# problem22.c:7:         if (numbers[i] < min) min = numbers[i];
	flw	fa4,-32(s0)	# tmp104, min
	fgt.s	a5,fa4,fa5	#, tmp105, tmp104, _4
	beq	a5,zero,.L3	#, tmp105,,
# problem22.c:7:         if (numbers[i] < min) min = numbers[i];
	lw	a5,-24(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp106, numbers
	add	a5,a4,a5	# _6, _7, tmp106
# problem22.c:7:         if (numbers[i] < min) min = numbers[i];
	flw	fa5,0(a5)	# tmp107, *_7
	fsw	fa5,-32(s0)	# tmp107, min
.L3:
# problem22.c:8:         if (numbers[i] > max) max = numbers[i];
	lw	a5,-24(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a4,-40(s0)		# tmp108, numbers
	add	a5,a4,a5	# _9, _10, tmp108
	flw	fa5,0(a5)	# _11, *_10
# problem22.c:8:         if (numbers[i] > max) max = numbers[i];
	flw	fa4,-28(s0)	# tmp109, max
	flt.s	a5,fa4,fa5	#, tmp110, tmp109, _11
	beq	a5,zero,.L5	#, tmp110,,
# problem22.c:8:         if (numbers[i] > max) max = numbers[i];
	lw	a5,-24(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-40(s0)		# tmp111, numbers
	add	a5,a4,a5	# _13, _14, tmp111
# problem22.c:8:         if (numbers[i] > max) max = numbers[i];
	flw	fa5,0(a5)	# tmp112, *_14
	fsw	fa5,-28(s0)	# tmp112, max
.L5:
# problem22.c:6:     for (int i = 1; i < size; i++) {
	lw	a5,-24(s0)		# tmp115, i
	addiw	a5,a5,1	#, tmp113, tmp114
	sw	a5,-24(s0)	# tmp113, i
.L2:
# problem22.c:6:     for (int i = 1; i < size; i++) {
	lw	a5,-24(s0)		# tmp117, i
	mv	a4,a5	# tmp116, tmp117
	lw	a5,-44(s0)		# tmp119, size
	sext.w	a4,a4	# tmp120, tmp116
	sext.w	a5,a5	# tmp121, tmp118
	blt	a4,a5,.L7	#, tmp120, tmp121,
# problem22.c:10:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem22.c:10:     for (int i = 0; i < size; i++) {
	j	.L8		#
.L9:
# problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	lw	a5,-20(s0)		# _15, i
	slli	a5,a5,2	#, _16, _15
	ld	a4,-40(s0)		# tmp122, numbers
	add	a5,a4,a5	# _16, _17, tmp122
	flw	fa4,0(a5)	# _18, *_17
# problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	flw	fa5,-32(s0)	# tmp123, min
	fsub.s	fa4,fa4,fa5	# _19, _18, tmp123
# problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	flw	fa3,-28(s0)	# tmp124, max
	flw	fa5,-32(s0)	# tmp125, min
	fsub.s	fa5,fa3,fa5	# _20, tmp124, tmp125
# problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	lw	a5,-20(s0)		# _21, i
	slli	a5,a5,2	#, _22, _21
	ld	a4,-40(s0)		# tmp126, numbers
	add	a5,a4,a5	# _22, _23, tmp126
# problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	fdiv.s	fa5,fa4,fa5	# _24, _19, _20
# problem22.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	fsw	fa5,0(a5)	# _24, *_23
# problem22.c:10:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp129, i
	addiw	a5,a5,1	#, tmp127, tmp128
	sw	a5,-20(s0)	# tmp127, i
.L8:
# problem22.c:10:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp131, i
	mv	a4,a5	# tmp130, tmp131
	lw	a5,-44(s0)		# tmp133, size
	sext.w	a4,a4	# tmp134, tmp130
	sext.w	a5,a5	# tmp135, tmp132
	blt	a4,a5,.L9	#, tmp134, tmp135,
# problem22.c:13: }
	nop	
	nop	
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-64	#,,
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp84, size
	sw	a5,-52(s0)	# tmp85, size
# problem22.c:21:     const float EPSILON = 1e-4;
	lla	a5,.LC5	# tmp86,
	flw	fa5,0(a5)	# tmp87,
	fsw	fa5,-20(s0)	# tmp87, EPSILON
# problem22.c:22:     for (int i = 0; i < size; i++) {
	sw	zero,-24(s0)	#, i
# problem22.c:22:     for (int i = 0; i < size; i++) {
	j	.L13		#
.L17:
# problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	lw	a5,-24(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp88, a
	add	a5,a4,a5	# _2, _3, tmp88
	flw	fa4,0(a5)	# _4, *_3
# problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	lw	a5,-24(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp89, b
	add	a5,a4,a5	# _6, _7, tmp89
	flw	fa5,0(a5)	# _8, *_7
# problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	fsub.s	fa5,fa4,fa5	# _9, _4, _8
# problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	fabs.s	fa5,fa5	# _10, _9
# problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	flw	fa4,-20(s0)	# tmp90, EPSILON
	flt.s	a5,fa4,fa5	#, tmp91, tmp90, _10
	beq	a5,zero,.L19	#, tmp91,,
# problem22.c:23:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	li	a5,0		# _12,
	j	.L16		#
.L19:
# problem22.c:22:     for (int i = 0; i < size; i++) {
	lw	a5,-24(s0)		# tmp94, i
	addiw	a5,a5,1	#, tmp92, tmp93
	sw	a5,-24(s0)	# tmp92, i
.L13:
# problem22.c:22:     for (int i = 0; i < size; i++) {
	lw	a5,-24(s0)		# tmp96, i
	mv	a4,a5	# tmp95, tmp96
	lw	a5,-52(s0)		# tmp98, size
	sext.w	a4,a4	# tmp99, tmp95
	sext.w	a5,a5	# tmp100, tmp97
	blt	a4,a5,.L17	#, tmp99, tmp100,
# problem22.c:25:     return 1;
	li	a5,1		# _12,
.L16:
# problem22.c:26: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
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
	addi	sp,sp,-208	#,,
	sd	ra,200(sp)	#,
	sd	s0,192(sp)	#,
	addi	s0,sp,208	#,,
# problem22.c:28: int main() {
	la	a5,__stack_chk_guard		# tmp79,
	ld	a4, 0(a5)	# tmp139, __stack_chk_guard
	sd	a4, -24(s0)	# tmp139, D.3019
	li	a4, 0	# tmp139
# problem22.c:29:     float test1[] = {2.0, 49.9};
	lla	a5,.LC6	# tmp80,
	flw	fa5,0(a5)	# tmp81,
	fsw	fa5,-200(s0)	# tmp81, test1[0]
	lla	a5,.LC7	# tmp82,
	flw	fa5,0(a5)	# tmp83,
	fsw	fa5,-196(s0)	# tmp83, test1[1]
# problem22.c:30:     float expected1[] = {0.0, 1.0};
	sw	zero,-192(s0)	#, expected1[0]
	lla	a5,.LC8	# tmp84,
	flw	fa5,0(a5)	# tmp85,
	fsw	fa5,-188(s0)	# tmp85, expected1[1]
# problem22.c:31:     func0(test1, 2);
	addi	a5,s0,-200	#, tmp86,
	li	a1,2		#,
	mv	a0,a5	#, tmp86
	call	func0		#
# problem22.c:32:     assert(issame(test1, expected1, 2));
	addi	a4,s0,-192	#, tmp87,
	addi	a5,s0,-200	#, tmp88,
	li	a2,2		#,
	mv	a1,a4	#, tmp87
	mv	a0,a5	#, tmp88
	call	issame		#
	mv	a5,a0	# tmp89,
	bne	a5,zero,.L21	#, _1,,
# problem22.c:32:     assert(issame(test1, expected1, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC9	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L21:
# problem22.c:34:     float test2[] = {100.0, 49.9};
	lla	a5,.LC11	# tmp90,
	flw	fa5,0(a5)	# tmp91,
	fsw	fa5,-184(s0)	# tmp91, test2[0]
	lla	a5,.LC7	# tmp92,
	flw	fa5,0(a5)	# tmp93,
	fsw	fa5,-180(s0)	# tmp93, test2[1]
# problem22.c:35:     float expected2[] = {1.0, 0.0};
	lla	a5,.LC8	# tmp94,
	flw	fa5,0(a5)	# tmp95,
	fsw	fa5,-176(s0)	# tmp95, expected2[0]
	sw	zero,-172(s0)	#, expected2[1]
# problem22.c:36:     func0(test2, 2);
	addi	a5,s0,-184	#, tmp96,
	li	a1,2		#,
	mv	a0,a5	#, tmp96
	call	func0		#
# problem22.c:37:     assert(issame(test2, expected2, 2));
	addi	a4,s0,-176	#, tmp97,
	addi	a5,s0,-184	#, tmp98,
	li	a2,2		#,
	mv	a1,a4	#, tmp97
	mv	a0,a5	#, tmp98
	call	issame		#
	mv	a5,a0	# tmp99,
	bne	a5,zero,.L22	#, _2,,
# problem22.c:37:     assert(issame(test2, expected2, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC9	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L22:
# problem22.c:39:     float test3[] = {1.0, 2.0, 3.0, 4.0, 5.0};
	lla	a5,.LC0	# tmp100,
	ld	a4,0(a5)		# tmp101,
	sd	a4,-168(s0)	# tmp101, test3
	ld	a4,8(a5)		# tmp102,
	sd	a4,-160(s0)	# tmp102, test3
	lw	a5,16(a5)		# tmp103,
	sw	a5,-152(s0)	# tmp103, test3
# problem22.c:40:     float expected3[] = {0.0, 0.25, 0.5, 0.75, 1.0};
	lla	a5,.LC1	# tmp104,
	ld	a4,0(a5)		# tmp105,
	sd	a4,-144(s0)	# tmp105, expected3
	ld	a4,8(a5)		# tmp106,
	sd	a4,-136(s0)	# tmp106, expected3
	lw	a5,16(a5)		# tmp107,
	sw	a5,-128(s0)	# tmp107, expected3
# problem22.c:41:     func0(test3, 5);
	addi	a5,s0,-168	#, tmp108,
	li	a1,5		#,
	mv	a0,a5	#, tmp108
	call	func0		#
# problem22.c:42:     assert(issame(test3, expected3, 5));
	addi	a4,s0,-144	#, tmp109,
	addi	a5,s0,-168	#, tmp110,
	li	a2,5		#,
	mv	a1,a4	#, tmp109
	mv	a0,a5	#, tmp110
	call	issame		#
	mv	a5,a0	# tmp111,
	bne	a5,zero,.L23	#, _3,,
# problem22.c:42:     assert(issame(test3, expected3, 5));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC9	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L23:
# problem22.c:44:     float test4[] = {2.0, 1.0, 5.0, 3.0, 4.0};
	lla	a5,.LC2	# tmp112,
	ld	a4,0(a5)		# tmp113,
	sd	a4,-120(s0)	# tmp113, test4
	ld	a4,8(a5)		# tmp114,
	sd	a4,-112(s0)	# tmp114, test4
	lw	a5,16(a5)		# tmp115,
	sw	a5,-104(s0)	# tmp115, test4
# problem22.c:45:     float expected4[] = {0.25, 0.0, 1.0, 0.5, 0.75};
	lla	a5,.LC3	# tmp116,
	ld	a4,0(a5)		# tmp117,
	sd	a4,-96(s0)	# tmp117, expected4
	ld	a4,8(a5)		# tmp118,
	sd	a4,-88(s0)	# tmp118, expected4
	lw	a5,16(a5)		# tmp119,
	sw	a5,-80(s0)	# tmp119, expected4
# problem22.c:46:     func0(test4, 5);
	addi	a5,s0,-120	#, tmp120,
	li	a1,5		#,
	mv	a0,a5	#, tmp120
	call	func0		#
# problem22.c:47:     assert(issame(test4, expected4, 5));
	addi	a4,s0,-96	#, tmp121,
	addi	a5,s0,-120	#, tmp122,
	li	a2,5		#,
	mv	a1,a4	#, tmp121
	mv	a0,a5	#, tmp122
	call	issame		#
	mv	a5,a0	# tmp123,
	bne	a5,zero,.L24	#, _4,,
# problem22.c:47:     assert(issame(test4, expected4, 5));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,47		#,
	lla	a1,.LC9	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L24:
# problem22.c:49:     float test5[] = {12.0, 11.0, 15.0, 13.0, 14.0};
	lla	a5,.LC4	# tmp124,
	ld	a4,0(a5)		# tmp125,
	sd	a4,-72(s0)	# tmp125, test5
	ld	a4,8(a5)		# tmp126,
	sd	a4,-64(s0)	# tmp126, test5
	lw	a5,16(a5)		# tmp127,
	sw	a5,-56(s0)	# tmp127, test5
# problem22.c:50:     float expected5[] = {0.25, 0.0, 1.0, 0.5, 0.75};
	lla	a5,.LC3	# tmp128,
	ld	a4,0(a5)		# tmp129,
	sd	a4,-48(s0)	# tmp129, expected5
	ld	a4,8(a5)		# tmp130,
	sd	a4,-40(s0)	# tmp130, expected5
	lw	a5,16(a5)		# tmp131,
	sw	a5,-32(s0)	# tmp131, expected5
# problem22.c:51:     func0(test5, 5);
	addi	a5,s0,-72	#, tmp132,
	li	a1,5		#,
	mv	a0,a5	#, tmp132
	call	func0		#
# problem22.c:52:     assert(issame(test5, expected5, 5));
	addi	a4,s0,-48	#, tmp133,
	addi	a5,s0,-72	#, tmp134,
	li	a2,5		#,
	mv	a1,a4	#, tmp133
	mv	a0,a5	#, tmp134
	call	issame		#
	mv	a5,a0	# tmp135,
	bne	a5,zero,.L25	#, _5,,
# problem22.c:52:     assert(issame(test5, expected5, 5));
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
	la	a5,__stack_chk_guard		# tmp137,
	ld	a3, -24(s0)	# tmp140, D.3019
	ld	a5, 0(a5)	# tmp138, __stack_chk_guard
	xor	a5, a3, a5	# tmp138, tmp140
	li	a3, 0	# tmp140
	beq	a5,zero,.L27	#, tmp138,,
	call	__stack_chk_fail@plt	#
.L27:
	mv	a0,a4	#, <retval>
	ld	ra,200(sp)		#,
	ld	s0,192(sp)		#,
	addi	sp,sp,208	#,,
	jr	ra		#
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
