	.file	"problem21.c"
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
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# numbers, numbers
	mv	a5,a1	# tmp160, size
	sd	a2,-72(s0)	# out, out
	sw	a5,-60(s0)	# tmp161, size
# problem21.c:6:     float min_diff = FLT_MAX;
	lla	a5,.LC5	# tmp162,
	flw	fa5,0(a5)	# tmp163,
	fsw	fa5,-36(s0)	# tmp163, min_diff
# problem21.c:9:     out[0] = numbers[0];
	ld	a5,-56(s0)		# tmp164, numbers
	flw	fa5,0(a5)	# _1, *numbers_38(D)
# problem21.c:9:     out[0] = numbers[0];
	ld	a5,-72(s0)		# tmp165, out
	fsw	fa5,0(a5)	# _1, *out_39(D)
# problem21.c:10:     out[1] = numbers[1];
	ld	a5,-72(s0)		# tmp166, out
	addi	a5,a5,4	#, _2, tmp166
# problem21.c:10:     out[1] = numbers[1];
	ld	a4,-56(s0)		# tmp167, numbers
	flw	fa5,4(a4)	# _3, MEM[(float *)numbers_38(D) + 4B]
	fsw	fa5,0(a5)	# _3, *_2
# problem21.c:12:     for (i = 0; i < size; i++) {
	sw	zero,-32(s0)	#, i
# problem21.c:12:     for (i = 0; i < size; i++) {
	j	.L2		#
.L7:
# problem21.c:13:         for (j = i + 1; j < size; j++) {
	lw	a5,-32(s0)		# tmp170, i
	addiw	a5,a5,1	#, tmp168, tmp169
	sw	a5,-28(s0)	# tmp168, j
# problem21.c:13:         for (j = i + 1; j < size; j++) {
	j	.L3		#
.L6:
# problem21.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	lw	a5,-32(s0)		# _4, i
	slli	a5,a5,2	#, _5, _4
	ld	a4,-56(s0)		# tmp171, numbers
	add	a5,a4,a5	# _5, _6, tmp171
	flw	fa4,0(a5)	# _7, *_6
# problem21.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	lw	a5,-28(s0)		# _8, j
	slli	a5,a5,2	#, _9, _8
	ld	a4,-56(s0)		# tmp172, numbers
	add	a5,a4,a5	# _9, _10, tmp172
	flw	fa5,0(a5)	# _11, *_10
# problem21.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	fsub.s	fa5,fa4,fa5	# _12, _7, _11
# problem21.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	fabs.s	fa5,fa5	# tmp173, _12
	fsw	fa5,-20(s0)	# tmp173, diff
# problem21.c:15:             if (diff < min_diff) {
	flw	fa4,-20(s0)	# tmp174, diff
	flw	fa5,-36(s0)	# tmp175, min_diff
	flt.s	a5,fa4,fa5	#, tmp176, tmp174, tmp175
	beq	a5,zero,.L4	#, tmp176,,
# problem21.c:16:                 min_diff = diff;
	flw	fa5,-20(s0)	# tmp177, diff
	fsw	fa5,-36(s0)	# tmp177, min_diff
# problem21.c:17:                 out[0] = numbers[i];
	lw	a5,-32(s0)		# _13, i
	slli	a5,a5,2	#, _14, _13
	ld	a4,-56(s0)		# tmp178, numbers
	add	a5,a4,a5	# _14, _15, tmp178
	flw	fa5,0(a5)	# _16, *_15
# problem21.c:17:                 out[0] = numbers[i];
	ld	a5,-72(s0)		# tmp179, out
	fsw	fa5,0(a5)	# _16, *out_39(D)
# problem21.c:18:                 out[1] = numbers[j];
	lw	a5,-28(s0)		# _17, j
	slli	a5,a5,2	#, _18, _17
	ld	a4,-56(s0)		# tmp180, numbers
	add	a4,a4,a5	# _18, _19, tmp180
# problem21.c:18:                 out[1] = numbers[j];
	ld	a5,-72(s0)		# tmp181, out
	addi	a5,a5,4	#, _20, tmp181
# problem21.c:18:                 out[1] = numbers[j];
	flw	fa5,0(a4)	# _21, *_19
# problem21.c:18:                 out[1] = numbers[j];
	fsw	fa5,0(a5)	# _21, *_20
.L4:
# problem21.c:13:         for (j = i + 1; j < size; j++) {
	lw	a5,-28(s0)		# tmp184, j
	addiw	a5,a5,1	#, tmp182, tmp183
	sw	a5,-28(s0)	# tmp182, j
.L3:
# problem21.c:13:         for (j = i + 1; j < size; j++) {
	lw	a5,-28(s0)		# tmp186, j
	mv	a4,a5	# tmp185, tmp186
	lw	a5,-60(s0)		# tmp188, size
	sext.w	a4,a4	# tmp189, tmp185
	sext.w	a5,a5	# tmp190, tmp187
	blt	a4,a5,.L6	#, tmp189, tmp190,
# problem21.c:12:     for (i = 0; i < size; i++) {
	lw	a5,-32(s0)		# tmp193, i
	addiw	a5,a5,1	#, tmp191, tmp192
	sw	a5,-32(s0)	# tmp191, i
.L2:
# problem21.c:12:     for (i = 0; i < size; i++) {
	lw	a5,-32(s0)		# tmp195, i
	mv	a4,a5	# tmp194, tmp195
	lw	a5,-60(s0)		# tmp197, size
	sext.w	a4,a4	# tmp198, tmp194
	sext.w	a5,a5	# tmp199, tmp196
	blt	a4,a5,.L7	#, tmp198, tmp199,
# problem21.c:23:     if (out[0] > out[1]) {
	ld	a5,-72(s0)		# tmp200, out
	flw	fa4,0(a5)	# _22, *out_39(D)
# problem21.c:23:     if (out[0] > out[1]) {
	ld	a5,-72(s0)		# tmp201, out
	addi	a5,a5,4	#, _23, tmp201
	flw	fa5,0(a5)	# _24, *_23
# problem21.c:23:     if (out[0] > out[1]) {
	fgt.s	a5,fa4,fa5	#, tmp202, _22, _24
	bne	a5,zero,.L11	#, tmp202,,
# problem21.c:28: }
	j	.L12		#
.L11:
# problem21.c:24:         float temp = out[0];
	ld	a5,-72(s0)		# tmp203, out
	flw	fa5,0(a5)	# tmp204, *out_39(D)
	fsw	fa5,-24(s0)	# tmp204, temp
# problem21.c:25:         out[0] = out[1];
	ld	a5,-72(s0)		# tmp205, out
	flw	fa5,4(a5)	# _25, MEM[(float *)out_39(D) + 4B]
	ld	a5,-72(s0)		# tmp206, out
	fsw	fa5,0(a5)	# _25, *out_39(D)
# problem21.c:26:         out[1] = temp;
	ld	a5,-72(s0)		# tmp207, out
	addi	a5,a5,4	#, _26, tmp207
# problem21.c:26:         out[1] = temp;
	flw	fa5,-24(s0)	# tmp208, temp
	fsw	fa5,0(a5)	# tmp208, *_26
.L12:
# problem21.c:28: }
	nop	
	ld	s0,72(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80	#,,
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
# problem21.c:36:     const float EPSILON = 1e-4;
	lla	a5,.LC6	# tmp148,
	flw	fa5,0(a5)	# tmp149,
	fsw	fa5,-20(s0)	# tmp149, EPSILON
# problem21.c:37:     for (int i = 0; i < size; i++) {
	sw	zero,-24(s0)	#, i
# problem21.c:37:     for (int i = 0; i < size; i++) {
	j	.L14		#
.L18:
# problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	lw	a5,-24(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp150, a
	add	a5,a4,a5	# _2, _3, tmp150
	flw	fa4,0(a5)	# _4, *_3
# problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	lw	a5,-24(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp151, b
	add	a5,a4,a5	# _6, _7, tmp151
	flw	fa5,0(a5)	# _8, *_7
# problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	fsub.s	fa5,fa4,fa5	# _9, _4, _8
# problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	fabs.s	fa5,fa5	# _10, _9
# problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	flw	fa4,-20(s0)	# tmp152, EPSILON
	flt.s	a5,fa4,fa5	#, tmp153, tmp152, _10
	beq	a5,zero,.L20	#, tmp153,,
# problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	li	a5,0		# _12,
# problem21.c:38:         if (fabs(a[i] - b[i]) > EPSILON) return 0;
	j	.L17		#
.L20:
# problem21.c:37:     for (int i = 0; i < size; i++) {
	lw	a5,-24(s0)		# tmp156, i
	addiw	a5,a5,1	#, tmp154, tmp155
	sw	a5,-24(s0)	# tmp154, i
.L14:
# problem21.c:37:     for (int i = 0; i < size; i++) {
	lw	a5,-24(s0)		# tmp158, i
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-52(s0)		# tmp160, size
	sext.w	a4,a4	# tmp161, tmp157
	sext.w	a5,a5	# tmp162, tmp159
	blt	a4,a5,.L18	#, tmp161, tmp162,
# problem21.c:40:     return 1;
	li	a5,1		# _12,
.L17:
# problem21.c:41: }
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
.LFB2:
	.cfi_startproc
	addi	sp,sp,-192	#,,
	.cfi_def_cfa_offset 192
	sd	ra,184(sp)	#,
	sd	s0,176(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,192	#,,
	.cfi_def_cfa 8, 0
# problem21.c:43: int main() {
	la	a5,__stack_chk_guard		# tmp141,
	ld	a4, 0(a5)	# tmp210, __stack_chk_guard
	sd	a4, -24(s0)	# tmp210, D.3842
	li	a4, 0	# tmp210
# problem21.c:46:     float test1[] = {1.0, 2.0, 3.9, 4.0, 5.0, 2.2};
	lla	a5,.LC0	# tmp142,
	ld	a4,0(a5)		# tmp143,
	sd	a4,-96(s0)	# tmp143, test1
	ld	a4,8(a5)		# tmp144,
	sd	a4,-88(s0)	# tmp144, test1
	ld	a5,16(a5)		# tmp145,
	sd	a5,-80(s0)	# tmp145, test1
# problem21.c:47:     float expected1[] = {3.9, 4.0};
	lla	a5,.LC7	# tmp146,
	flw	fa5,0(a5)	# tmp147,
	fsw	fa5,-184(s0)	# tmp147, expected1[0]
	lla	a5,.LC8	# tmp148,
	flw	fa5,0(a5)	# tmp149,
	fsw	fa5,-180(s0)	# tmp149, expected1[1]
# problem21.c:48:     func0(test1, 6, result);
	addi	a4,s0,-192	#, tmp150,
	addi	a5,s0,-96	#, tmp151,
	mv	a2,a4	#, tmp150
	li	a1,6		#,
	mv	a0,a5	#, tmp151
	call	func0		#
# problem21.c:49:     assert(issame(result, expected1, 2));
	addi	a4,s0,-184	#, tmp152,
	addi	a5,s0,-192	#, tmp153,
	li	a2,2		#,
	mv	a1,a4	#, tmp152
	mv	a0,a5	#, tmp153
	call	issame		#
	mv	a5,a0	# tmp154,
# problem21.c:49:     assert(issame(result, expected1, 2));
	bne	a5,zero,.L22	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,49		#,
	lla	a1,.LC9	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L22:
# problem21.c:51:     float test2[] = {1.0, 2.0, 5.9, 4.0, 5.0};
	lla	a5,.LC1	# tmp155,
	ld	a4,0(a5)		# tmp156,
	sd	a4,-144(s0)	# tmp156, test2
	ld	a4,8(a5)		# tmp157,
	sd	a4,-136(s0)	# tmp157, test2
	lw	a5,16(a5)		# tmp158,
	sw	a5,-128(s0)	# tmp158, test2
# problem21.c:52:     float expected2[] = {5.0, 5.9};
	lla	a5,.LC11	# tmp159,
	flw	fa5,0(a5)	# tmp160,
	fsw	fa5,-176(s0)	# tmp160, expected2[0]
	lla	a5,.LC12	# tmp161,
	flw	fa5,0(a5)	# tmp162,
	fsw	fa5,-172(s0)	# tmp162, expected2[1]
# problem21.c:53:     func0(test2, 5, result);
	addi	a4,s0,-192	#, tmp163,
	addi	a5,s0,-144	#, tmp164,
	mv	a2,a4	#, tmp163
	li	a1,5		#,
	mv	a0,a5	#, tmp164
	call	func0		#
# problem21.c:54:     assert(issame(result, expected2, 2));
	addi	a4,s0,-176	#, tmp165,
	addi	a5,s0,-192	#, tmp166,
	li	a2,2		#,
	mv	a1,a4	#, tmp165
	mv	a0,a5	#, tmp166
	call	issame		#
	mv	a5,a0	# tmp167,
# problem21.c:54:     assert(issame(result, expected2, 2));
	bne	a5,zero,.L23	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,54		#,
	lla	a1,.LC9	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L23:
# problem21.c:56:     float test3[] = {1.0, 2.0, 3.0, 4.0, 5.0, 2.2};
	lla	a5,.LC2	# tmp168,
	ld	a4,0(a5)		# tmp169,
	sd	a4,-72(s0)	# tmp169, test3
	ld	a4,8(a5)		# tmp170,
	sd	a4,-64(s0)	# tmp170, test3
	ld	a5,16(a5)		# tmp171,
	sd	a5,-56(s0)	# tmp171, test3
# problem21.c:57:     float expected3[] = {2.0, 2.2};
	lla	a5,.LC14	# tmp172,
	flw	fa5,0(a5)	# tmp173,
	fsw	fa5,-168(s0)	# tmp173, expected3[0]
	lla	a5,.LC15	# tmp174,
	flw	fa5,0(a5)	# tmp175,
	fsw	fa5,-164(s0)	# tmp175, expected3[1]
# problem21.c:58:     func0(test3, 6, result);
	addi	a4,s0,-192	#, tmp176,
	addi	a5,s0,-72	#, tmp177,
	mv	a2,a4	#, tmp176
	li	a1,6		#,
	mv	a0,a5	#, tmp177
	call	func0		#
# problem21.c:59:     assert(issame(result, expected3, 2));
	addi	a4,s0,-168	#, tmp178,
	addi	a5,s0,-192	#, tmp179,
	li	a2,2		#,
	mv	a1,a4	#, tmp178
	mv	a0,a5	#, tmp179
	call	issame		#
	mv	a5,a0	# tmp180,
# problem21.c:59:     assert(issame(result, expected3, 2));
	bne	a5,zero,.L24	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,59		#,
	lla	a1,.LC9	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L24:
# problem21.c:61:     float test4[] = {1.0, 2.0, 3.0, 4.0, 5.0, 2.0};
	lla	a5,.LC3	# tmp181,
	ld	a4,0(a5)		# tmp182,
	sd	a4,-48(s0)	# tmp182, test4
	ld	a4,8(a5)		# tmp183,
	sd	a4,-40(s0)	# tmp183, test4
	ld	a5,16(a5)		# tmp184,
	sd	a5,-32(s0)	# tmp184, test4
# problem21.c:62:     float expected4[] = {2.0, 2.0};
	lla	a5,.LC14	# tmp185,
	flw	fa5,0(a5)	# tmp186,
	fsw	fa5,-160(s0)	# tmp186, expected4[0]
	lla	a5,.LC14	# tmp187,
	flw	fa5,0(a5)	# tmp188,
	fsw	fa5,-156(s0)	# tmp188, expected4[1]
# problem21.c:63:     func0(test4, 6, result);
	addi	a4,s0,-192	#, tmp189,
	addi	a5,s0,-48	#, tmp190,
	mv	a2,a4	#, tmp189
	li	a1,6		#,
	mv	a0,a5	#, tmp190
	call	func0		#
# problem21.c:64:     assert(issame(result, expected4, 2));
	addi	a4,s0,-160	#, tmp191,
	addi	a5,s0,-192	#, tmp192,
	li	a2,2		#,
	mv	a1,a4	#, tmp191
	mv	a0,a5	#, tmp192
	call	issame		#
	mv	a5,a0	# tmp193,
# problem21.c:64:     assert(issame(result, expected4, 2));
	bne	a5,zero,.L25	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,64		#,
	lla	a1,.LC9	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L25:
# problem21.c:66:     float test5[] = {1.1, 2.2, 3.1, 4.1, 5.1};
	lla	a5,.LC4	# tmp194,
	ld	a4,0(a5)		# tmp195,
	sd	a4,-120(s0)	# tmp195, test5
	ld	a4,8(a5)		# tmp196,
	sd	a4,-112(s0)	# tmp196, test5
	lw	a5,16(a5)		# tmp197,
	sw	a5,-104(s0)	# tmp197, test5
# problem21.c:67:     float expected5[] = {2.2, 3.1};
	lla	a5,.LC15	# tmp198,
	flw	fa5,0(a5)	# tmp199,
	fsw	fa5,-152(s0)	# tmp199, expected5[0]
	lla	a5,.LC18	# tmp200,
	flw	fa5,0(a5)	# tmp201,
	fsw	fa5,-148(s0)	# tmp201, expected5[1]
# problem21.c:68:     func0(test5, 5, result);
	addi	a4,s0,-192	#, tmp202,
	addi	a5,s0,-120	#, tmp203,
	mv	a2,a4	#, tmp202
	li	a1,5		#,
	mv	a0,a5	#, tmp203
	call	func0		#
# problem21.c:69:     assert(issame(result, expected5, 2));
	addi	a4,s0,-152	#, tmp204,
	addi	a5,s0,-192	#, tmp205,
	li	a2,2		#,
	mv	a1,a4	#, tmp204
	mv	a0,a5	#, tmp205
	call	issame		#
	mv	a5,a0	# tmp206,
# problem21.c:69:     assert(issame(result, expected5, 2));
	bne	a5,zero,.L26	#, _5,,
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
	la	a5,__stack_chk_guard		# tmp208,
	ld	a3, -24(s0)	# tmp211, D.3842
	ld	a5, 0(a5)	# tmp209, __stack_chk_guard
	xor	a5, a3, a5	# tmp209, tmp211
	li	a3, 0	# tmp211
	beq	a5,zero,.L28	#, tmp209,,
	call	__stack_chk_fail@plt	#
.L28:
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
