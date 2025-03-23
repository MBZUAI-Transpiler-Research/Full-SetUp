	.file	"problem21.c"
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
	addi	sp,sp,-80	#,,
	sd	s0,72(sp)	#,
	addi	s0,sp,80	#,,
	sd	a0,-56(s0)	# numbers, numbers
	mv	a5,a1	# tmp98, size
	sd	a2,-72(s0)	# out, out
	sw	a5,-60(s0)	# tmp99, size
# problem21.c:6:     float min_diff = FLT_MAX;
	lla	a5,.LC5	# tmp100,
	flw	fa5,0(a5)	# tmp101,
	fsw	fa5,-36(s0)	# tmp101, min_diff
# problem21.c:9:     out[0] = numbers[0];
	ld	a5,-56(s0)		# tmp102, numbers
	flw	fa5,0(a5)	# _1, *numbers_38(D)
# problem21.c:9:     out[0] = numbers[0];
	ld	a5,-72(s0)		# tmp103, out
	fsw	fa5,0(a5)	# _1, *out_39(D)
# problem21.c:10:     out[1] = numbers[1];
	ld	a5,-72(s0)		# tmp104, out
	addi	a5,a5,4	#, _2, tmp104
# problem21.c:10:     out[1] = numbers[1];
	ld	a4,-56(s0)		# tmp105, numbers
	flw	fa5,4(a4)	# _3, MEM[(float *)numbers_38(D) + 4B]
	fsw	fa5,0(a5)	# _3, *_2
# problem21.c:12:     for (i = 0; i < size; i++) {
	sw	zero,-32(s0)	#, i
# problem21.c:12:     for (i = 0; i < size; i++) {
	j	.L2		#
.L7:
# problem21.c:13:         for (j = i + 1; j < size; j++) {
	lw	a5,-32(s0)		# tmp108, i
	addiw	a5,a5,1	#, tmp106, tmp107
	sw	a5,-28(s0)	# tmp106, j
# problem21.c:13:         for (j = i + 1; j < size; j++) {
	j	.L3		#
.L6:
# problem21.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	lw	a5,-32(s0)		# _4, i
	slli	a5,a5,2	#, _5, _4
	ld	a4,-56(s0)		# tmp109, numbers
	add	a5,a4,a5	# _5, _6, tmp109
	flw	fa4,0(a5)	# _7, *_6
# problem21.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	lw	a5,-28(s0)		# _8, j
	slli	a5,a5,2	#, _9, _8
	ld	a4,-56(s0)		# tmp110, numbers
	add	a5,a4,a5	# _9, _10, tmp110
	flw	fa5,0(a5)	# _11, *_10
# problem21.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	fsub.s	fa5,fa4,fa5	# _12, _7, _11
# problem21.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	fabs.s	fa5,fa5	# tmp111, _12
	fsw	fa5,-20(s0)	# tmp111, diff
# problem21.c:15:             if (diff < min_diff) {
	flw	fa4,-20(s0)	# tmp112, diff
	flw	fa5,-36(s0)	# tmp113, min_diff
	flt.s	a5,fa4,fa5	#, tmp114, tmp112, tmp113
	beq	a5,zero,.L4	#, tmp114,,
# problem21.c:16:                 min_diff = diff;
	flw	fa5,-20(s0)	# tmp115, diff
	fsw	fa5,-36(s0)	# tmp115, min_diff
# problem21.c:17:                 out[0] = numbers[i];
	lw	a5,-32(s0)		# _13, i
	slli	a5,a5,2	#, _14, _13
	ld	a4,-56(s0)		# tmp116, numbers
	add	a5,a4,a5	# _14, _15, tmp116
	flw	fa5,0(a5)	# _16, *_15
# problem21.c:17:                 out[0] = numbers[i];
	ld	a5,-72(s0)		# tmp117, out
	fsw	fa5,0(a5)	# _16, *out_39(D)
# problem21.c:18:                 out[1] = numbers[j];
	lw	a5,-28(s0)		# _17, j
	slli	a5,a5,2	#, _18, _17
	ld	a4,-56(s0)		# tmp118, numbers
	add	a4,a4,a5	# _18, _19, tmp118
# problem21.c:18:                 out[1] = numbers[j];
	ld	a5,-72(s0)		# tmp119, out
	addi	a5,a5,4	#, _20, tmp119
# problem21.c:18:                 out[1] = numbers[j];
	flw	fa5,0(a4)	# _21, *_19
# problem21.c:18:                 out[1] = numbers[j];
	fsw	fa5,0(a5)	# _21, *_20
.L4:
# problem21.c:13:         for (j = i + 1; j < size; j++) {
	lw	a5,-28(s0)		# tmp122, j
	addiw	a5,a5,1	#, tmp120, tmp121
	sw	a5,-28(s0)	# tmp120, j
.L3:
# problem21.c:13:         for (j = i + 1; j < size; j++) {
	lw	a5,-28(s0)		# tmp124, j
	mv	a4,a5	# tmp123, tmp124
	lw	a5,-60(s0)		# tmp126, size
	sext.w	a4,a4	# tmp127, tmp123
	sext.w	a5,a5	# tmp128, tmp125
	blt	a4,a5,.L6	#, tmp127, tmp128,
# problem21.c:12:     for (i = 0; i < size; i++) {
	lw	a5,-32(s0)		# tmp131, i
	addiw	a5,a5,1	#, tmp129, tmp130
	sw	a5,-32(s0)	# tmp129, i
.L2:
# problem21.c:12:     for (i = 0; i < size; i++) {
	lw	a5,-32(s0)		# tmp133, i
	mv	a4,a5	# tmp132, tmp133
	lw	a5,-60(s0)		# tmp135, size
	sext.w	a4,a4	# tmp136, tmp132
	sext.w	a5,a5	# tmp137, tmp134
	blt	a4,a5,.L7	#, tmp136, tmp137,
# problem21.c:23:     if (out[0] > out[1]) {
	ld	a5,-72(s0)		# tmp138, out
	flw	fa4,0(a5)	# _22, *out_39(D)
# problem21.c:23:     if (out[0] > out[1]) {
	ld	a5,-72(s0)		# tmp139, out
	addi	a5,a5,4	#, _23, tmp139
	flw	fa5,0(a5)	# _24, *_23
# problem21.c:23:     if (out[0] > out[1]) {
	fgt.s	a5,fa4,fa5	#, tmp140, _22, _24
	bne	a5,zero,.L11	#, tmp140,,
# problem21.c:28: }
	j	.L12		#
.L11:
# problem21.c:24:         float temp = out[0];
	ld	a5,-72(s0)		# tmp141, out
	flw	fa5,0(a5)	# tmp142, *out_39(D)
	fsw	fa5,-24(s0)	# tmp142, temp
# problem21.c:25:         out[0] = out[1];
	ld	a5,-72(s0)		# tmp143, out
	flw	fa5,4(a5)	# _25, MEM[(float *)out_39(D) + 4B]
	ld	a5,-72(s0)		# tmp144, out
	fsw	fa5,0(a5)	# _25, *out_39(D)
# problem21.c:26:         out[1] = temp;
	ld	a5,-72(s0)		# tmp145, out
	addi	a5,a5,4	#, _26, tmp145
# problem21.c:26:         out[1] = temp;
	flw	fa5,-24(s0)	# tmp146, temp
	fsw	fa5,0(a5)	# tmp146, *_26
.L12:
# problem21.c:28: }
	nop	
	ld	s0,72(sp)		#,
	addi	sp,sp,80	#,,
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
# problem21.c:36:     const float EPSILON = 1e-4;
	lla	a5,.LC6	# tmp86,
	flw	fa5,0(a5)	# tmp87,
	fsw	fa5,-20(s0)	# tmp87, EPSILON
# problem21.c:37:     for (int i = 0; i < size; i++) {
	sw	zero,-24(s0)	#, i
# problem21.c:37:     for (int i = 0; i < size; i++) {
	j	.L14		#
.L18:
# problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	lw	a5,-24(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp88, a
	add	a5,a4,a5	# _2, _3, tmp88
	flw	fa4,0(a5)	# _4, *_3
# problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	lw	a5,-24(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp89, b
	add	a5,a4,a5	# _6, _7, tmp89
	flw	fa5,0(a5)	# _8, *_7
# problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	fsub.s	fa5,fa4,fa5	# _9, _4, _8
# problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	fabs.s	fa5,fa5	# _10, _9
# problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	flw	fa4,-20(s0)	# tmp90, EPSILON
	flt.s	a5,fa4,fa5	#, tmp91, tmp90, _10
	beq	a5,zero,.L20	#, tmp91,,
# problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	li	a5,0		# _12,
	j	.L17		#
.L20:
# problem21.c:37:     for (int i = 0; i < size; i++) {
	lw	a5,-24(s0)		# tmp94, i
	addiw	a5,a5,1	#, tmp92, tmp93
	sw	a5,-24(s0)	# tmp92, i
.L14:
# problem21.c:37:     for (int i = 0; i < size; i++) {
	lw	a5,-24(s0)		# tmp96, i
	mv	a4,a5	# tmp95, tmp96
	lw	a5,-52(s0)		# tmp98, size
	sext.w	a4,a4	# tmp99, tmp95
	sext.w	a5,a5	# tmp100, tmp97
	blt	a4,a5,.L18	#, tmp99, tmp100,
# problem21.c:40:     return 1;
	li	a5,1		# _12,
.L17:
# problem21.c:41: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC9:
	.string	"problem21.c"
	.align	3
.LC10:
	.string	"issame(result, expected1, 2)"
	.align	3
.LC13:
	.string	"issame(result, expected2, 2)"
	.align	3
.LC16:
	.string	"issame(result, expected3, 2)"
	.align	3
.LC17:
	.string	"issame(result, expected4, 2)"
	.align	3
.LC19:
	.string	"issame(result, expected5, 2)"
	.align	3
.LC0:
	.word	1065353216
	.word	1073741824
	.word	1081711002
	.word	1082130432
	.word	1084227584
	.word	1074580685
	.align	3
.LC1:
	.word	1065353216
	.word	1073741824
	.word	1086115021
	.word	1082130432
	.word	1084227584
	.align	3
.LC2:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.word	1074580685
	.align	3
.LC3:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.word	1073741824
	.align	3
.LC4:
	.word	1066192077
	.word	1074580685
	.word	1078355558
	.word	1082340147
	.word	1084437299
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-192	#,,
	sd	ra,184(sp)	#,
	sd	s0,176(sp)	#,
	addi	s0,sp,192	#,,
# problem21.c:43: int main() {
	la	a5,__stack_chk_guard		# tmp79,
	ld	a4, 0(a5)	# tmp148, __stack_chk_guard
	sd	a4, -24(s0)	# tmp148, D.3024
	li	a4, 0	# tmp148
# problem21.c:46:     float test1[] = {1.0, 2.0, 3.9, 4.0, 5.0, 2.2};
	lla	a5,.LC0	# tmp80,
	ld	a4,0(a5)		# tmp81,
	sd	a4,-96(s0)	# tmp81, test1
	ld	a4,8(a5)		# tmp82,
	sd	a4,-88(s0)	# tmp82, test1
	ld	a5,16(a5)		# tmp83,
	sd	a5,-80(s0)	# tmp83, test1
# problem21.c:47:     float expected1[] = {3.9, 4.0};
	lla	a5,.LC7	# tmp84,
	flw	fa5,0(a5)	# tmp85,
	fsw	fa5,-184(s0)	# tmp85, expected1[0]
	lla	a5,.LC8	# tmp86,
	flw	fa5,0(a5)	# tmp87,
	fsw	fa5,-180(s0)	# tmp87, expected1[1]
# problem21.c:48:     func0(test1, 6, result);
	addi	a4,s0,-192	#, tmp88,
	addi	a5,s0,-96	#, tmp89,
	mv	a2,a4	#, tmp88
	li	a1,6		#,
	mv	a0,a5	#, tmp89
	call	func0		#
# problem21.c:49:     assert(issame(result, expected1, 2));
	addi	a4,s0,-184	#, tmp90,
	addi	a5,s0,-192	#, tmp91,
	li	a2,2		#,
	mv	a1,a4	#, tmp90
	mv	a0,a5	#, tmp91
	call	issame		#
	mv	a5,a0	# tmp92,
	bne	a5,zero,.L22	#, _1,,
# problem21.c:49:     assert(issame(result, expected1, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,49		#,
	lla	a1,.LC9	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L22:
# problem21.c:51:     float test2[] = {1.0, 2.0, 5.9, 4.0, 5.0};
	lla	a5,.LC1	# tmp93,
	ld	a4,0(a5)		# tmp94,
	sd	a4,-144(s0)	# tmp94, test2
	ld	a4,8(a5)		# tmp95,
	sd	a4,-136(s0)	# tmp95, test2
	lw	a5,16(a5)		# tmp96,
	sw	a5,-128(s0)	# tmp96, test2
# problem21.c:52:     float expected2[] = {5.0, 5.9};
	lla	a5,.LC11	# tmp97,
	flw	fa5,0(a5)	# tmp98,
	fsw	fa5,-176(s0)	# tmp98, expected2[0]
	lla	a5,.LC12	# tmp99,
	flw	fa5,0(a5)	# tmp100,
	fsw	fa5,-172(s0)	# tmp100, expected2[1]
# problem21.c:53:     func0(test2, 5, result);
	addi	a4,s0,-192	#, tmp101,
	addi	a5,s0,-144	#, tmp102,
	mv	a2,a4	#, tmp101
	li	a1,5		#,
	mv	a0,a5	#, tmp102
	call	func0		#
# problem21.c:54:     assert(issame(result, expected2, 2));
	addi	a4,s0,-176	#, tmp103,
	addi	a5,s0,-192	#, tmp104,
	li	a2,2		#,
	mv	a1,a4	#, tmp103
	mv	a0,a5	#, tmp104
	call	issame		#
	mv	a5,a0	# tmp105,
	bne	a5,zero,.L23	#, _2,,
# problem21.c:54:     assert(issame(result, expected2, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,54		#,
	lla	a1,.LC9	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L23:
# problem21.c:56:     float test3[] = {1.0, 2.0, 3.0, 4.0, 5.0, 2.2};
	lla	a5,.LC2	# tmp106,
	ld	a4,0(a5)		# tmp107,
	sd	a4,-72(s0)	# tmp107, test3
	ld	a4,8(a5)		# tmp108,
	sd	a4,-64(s0)	# tmp108, test3
	ld	a5,16(a5)		# tmp109,
	sd	a5,-56(s0)	# tmp109, test3
# problem21.c:57:     float expected3[] = {2.0, 2.2};
	lla	a5,.LC14	# tmp110,
	flw	fa5,0(a5)	# tmp111,
	fsw	fa5,-168(s0)	# tmp111, expected3[0]
	lla	a5,.LC15	# tmp112,
	flw	fa5,0(a5)	# tmp113,
	fsw	fa5,-164(s0)	# tmp113, expected3[1]
# problem21.c:58:     func0(test3, 6, result);
	addi	a4,s0,-192	#, tmp114,
	addi	a5,s0,-72	#, tmp115,
	mv	a2,a4	#, tmp114
	li	a1,6		#,
	mv	a0,a5	#, tmp115
	call	func0		#
# problem21.c:59:     assert(issame(result, expected3, 2));
	addi	a4,s0,-168	#, tmp116,
	addi	a5,s0,-192	#, tmp117,
	li	a2,2		#,
	mv	a1,a4	#, tmp116
	mv	a0,a5	#, tmp117
	call	issame		#
	mv	a5,a0	# tmp118,
	bne	a5,zero,.L24	#, _3,,
# problem21.c:59:     assert(issame(result, expected3, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,59		#,
	lla	a1,.LC9	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L24:
# problem21.c:61:     float test4[] = {1.0, 2.0, 3.0, 4.0, 5.0, 2.0};
	lla	a5,.LC3	# tmp119,
	ld	a4,0(a5)		# tmp120,
	sd	a4,-48(s0)	# tmp120, test4
	ld	a4,8(a5)		# tmp121,
	sd	a4,-40(s0)	# tmp121, test4
	ld	a5,16(a5)		# tmp122,
	sd	a5,-32(s0)	# tmp122, test4
# problem21.c:62:     float expected4[] = {2.0, 2.0};
	lla	a5,.LC14	# tmp123,
	flw	fa5,0(a5)	# tmp124,
	fsw	fa5,-160(s0)	# tmp124, expected4[0]
	lla	a5,.LC14	# tmp125,
	flw	fa5,0(a5)	# tmp126,
	fsw	fa5,-156(s0)	# tmp126, expected4[1]
# problem21.c:63:     func0(test4, 6, result);
	addi	a4,s0,-192	#, tmp127,
	addi	a5,s0,-48	#, tmp128,
	mv	a2,a4	#, tmp127
	li	a1,6		#,
	mv	a0,a5	#, tmp128
	call	func0		#
# problem21.c:64:     assert(issame(result, expected4, 2));
	addi	a4,s0,-160	#, tmp129,
	addi	a5,s0,-192	#, tmp130,
	li	a2,2		#,
	mv	a1,a4	#, tmp129
	mv	a0,a5	#, tmp130
	call	issame		#
	mv	a5,a0	# tmp131,
	bne	a5,zero,.L25	#, _4,,
# problem21.c:64:     assert(issame(result, expected4, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,64		#,
	lla	a1,.LC9	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L25:
# problem21.c:66:     float test5[] = {1.1, 2.2, 3.1, 4.1, 5.1};
	lla	a5,.LC4	# tmp132,
	ld	a4,0(a5)		# tmp133,
	sd	a4,-120(s0)	# tmp133, test5
	ld	a4,8(a5)		# tmp134,
	sd	a4,-112(s0)	# tmp134, test5
	lw	a5,16(a5)		# tmp135,
	sw	a5,-104(s0)	# tmp135, test5
# problem21.c:67:     float expected5[] = {2.2, 3.1};
	lla	a5,.LC15	# tmp136,
	flw	fa5,0(a5)	# tmp137,
	fsw	fa5,-152(s0)	# tmp137, expected5[0]
	lla	a5,.LC18	# tmp138,
	flw	fa5,0(a5)	# tmp139,
	fsw	fa5,-148(s0)	# tmp139, expected5[1]
# problem21.c:68:     func0(test5, 5, result);
	addi	a4,s0,-192	#, tmp140,
	addi	a5,s0,-120	#, tmp141,
	mv	a2,a4	#, tmp140
	li	a1,5		#,
	mv	a0,a5	#, tmp141
	call	func0		#
# problem21.c:69:     assert(issame(result, expected5, 2));
	addi	a4,s0,-152	#, tmp142,
	addi	a5,s0,-192	#, tmp143,
	li	a2,2		#,
	mv	a1,a4	#, tmp142
	mv	a0,a5	#, tmp143
	call	issame		#
	mv	a5,a0	# tmp144,
	bne	a5,zero,.L26	#, _5,,
# problem21.c:69:     assert(issame(result, expected5, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,69		#,
	lla	a1,.LC9	#,
	lla	a0,.LC19	#,
	call	__assert_fail@plt	#
.L26:
# problem21.c:71:     return 0;
	li	a5,0		# _37,
# problem21.c:72: }
	mv	a4,a5	# <retval>, _37
	la	a5,__stack_chk_guard		# tmp146,
	ld	a3, -24(s0)	# tmp149, D.3024
	ld	a5, 0(a5)	# tmp147, __stack_chk_guard
	xor	a5, a3, a5	# tmp147, tmp149
	li	a3, 0	# tmp149
	beq	a5,zero,.L28	#, tmp147,,
	call	__stack_chk_fail@plt	#
.L28:
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
.LC5:
	.word	2139095039
	.align	2
.LC6:
	.word	953267991
	.align	2
.LC7:
	.word	1081711002
	.align	2
.LC8:
	.word	1082130432
	.align	2
.LC11:
	.word	1084227584
	.align	2
.LC12:
	.word	1086115021
	.align	2
.LC14:
	.word	1073741824
	.align	2
.LC15:
	.word	1074580685
	.align	2
.LC18:
	.word	1078355558
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
