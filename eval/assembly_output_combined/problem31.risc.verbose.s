	.file	"problem31.c"
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
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# l, l
	mv	a5,a1	# tmp89, count
	sd	a2,-56(s0)	# out_count, out_count
	sw	a5,-44(s0)	# tmp90, count
# problem31.c:5:     float* out = (float*)malloc(count * sizeof(float));
	lw	a5,-44(s0)		# _1, count
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp91,
	sd	a5,-24(s0)	# tmp91, out
# problem31.c:6:     *out_count = 0;
	ld	a5,-56(s0)		# tmp92, out_count
	sw	zero,0(a5)	#, *out_count_24(D)
# problem31.c:8:     for (int i = 0; i < count; i++) {
	sw	zero,-28(s0)	#, i
# problem31.c:8:     for (int i = 0; i < count; i++) {
	j	.L2		#
.L5:
# problem31.c:9:         if (l[i] > 0) {
	lw	a5,-28(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
	ld	a4,-40(s0)		# tmp93, l
	add	a5,a4,a5	# _4, _5, tmp93
	flw	fa5,0(a5)	# _6, *_5
# problem31.c:9:         if (l[i] > 0) {
	fmv.w.x	fa4,zero	# tmp94,
	fgt.s	a5,fa5,fa4	#, tmp95, _6, tmp94
	beq	a5,zero,.L3	#, tmp95,,
# problem31.c:10:             out[(*out_count)++] = l[i];
	lw	a5,-28(s0)		# _7, i
	slli	a5,a5,2	#, _8, _7
	ld	a4,-40(s0)		# tmp96, l
	add	a4,a4,a5	# _8, _9, tmp96
# problem31.c:10:             out[(*out_count)++] = l[i];
	ld	a5,-56(s0)		# tmp97, out_count
	lw	a5,0(a5)		# _10, *out_count_24(D)
# problem31.c:10:             out[(*out_count)++] = l[i];
	addiw	a3,a5,1	#, tmp98, _10
	sext.w	a2,a3	# _12, tmp98
	ld	a3,-56(s0)		# tmp99, out_count
	sw	a2,0(a3)	# _12, *out_count_24(D)
# problem31.c:10:             out[(*out_count)++] = l[i];
	slli	a5,a5,2	#, _14, _13
	ld	a3,-24(s0)		# tmp100, out
	add	a5,a3,a5	# _14, _15, tmp100
# problem31.c:10:             out[(*out_count)++] = l[i];
	flw	fa5,0(a4)	# _16, *_9
# problem31.c:10:             out[(*out_count)++] = l[i];
	fsw	fa5,0(a5)	# _16, *_15
.L3:
# problem31.c:8:     for (int i = 0; i < count; i++) {
	lw	a5,-28(s0)		# tmp103, i
	addiw	a5,a5,1	#, tmp101, tmp102
	sw	a5,-28(s0)	# tmp101, i
.L2:
# problem31.c:8:     for (int i = 0; i < count; i++) {
	lw	a5,-28(s0)		# tmp105, i
	mv	a4,a5	# tmp104, tmp105
	lw	a5,-44(s0)		# tmp107, count
	sext.w	a4,a4	# tmp108, tmp104
	sext.w	a5,a5	# tmp109, tmp106
	blt	a4,a5,.L5	#, tmp108, tmp109,
# problem31.c:14:     return out;
	ld	a5,-24(s0)		# _27, out
# problem31.c:15: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
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
	mv	a5,a1	# tmp85, a_count
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp87, b_count
	sw	a5,-44(s0)	# tmp86, a_count
	mv	a5,a4	# tmp88, tmp87
	sw	a5,-48(s0)	# tmp88, b_count
# problem31.c:25:     if (a_count != b_count) return 0;
	lw	a5,-44(s0)		# tmp90, a_count
	mv	a4,a5	# tmp89, tmp90
	lw	a5,-48(s0)		# tmp92, b_count
	sext.w	a4,a4	# tmp93, tmp89
	sext.w	a5,a5	# tmp94, tmp91
	beq	a4,a5,.L9	#, tmp93, tmp94,
# problem31.c:25:     if (a_count != b_count) return 0;
	li	a5,0		# _13,
	j	.L10		#
.L9:
# problem31.c:26:     for (int i = 0; i < a_count; i++) {
	sw	zero,-20(s0)	#, i
# problem31.c:26:     for (int i = 0; i < a_count; i++) {
	j	.L11		#
.L14:
# problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp95, a
	add	a5,a4,a5	# _2, _3, tmp95
	flw	fa4,0(a5)	# _4, *_3
# problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp96, b
	add	a5,a4,a5	# _6, _7, tmp96
	flw	fa5,0(a5)	# _8, *_7
# problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	fsub.s	fa5,fa4,fa5	# _9, _4, _8
# problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	fabs.s	fa5,fa5	# _10, _9
	fcvt.d.s	fa4,fa5	# _11, _10
# problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	lla	a5,.LC3	# tmp98,
	fld	fa5,0(a5)	# tmp97,
	fgt.d	a5,fa4,fa5	#, tmp99, _11, tmp97
	beq	a5,zero,.L16	#, tmp99,,
# problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	li	a5,0		# _13,
	j	.L10		#
.L16:
# problem31.c:26:     for (int i = 0; i < a_count; i++) {
	lw	a5,-20(s0)		# tmp102, i
	addiw	a5,a5,1	#, tmp100, tmp101
	sw	a5,-20(s0)	# tmp100, i
.L11:
# problem31.c:26:     for (int i = 0; i < a_count; i++) {
	lw	a5,-20(s0)		# tmp104, i
	mv	a4,a5	# tmp103, tmp104
	lw	a5,-44(s0)		# tmp106, a_count
	sext.w	a4,a4	# tmp107, tmp103
	sext.w	a5,a5	# tmp108, tmp105
	blt	a4,a5,.L14	#, tmp107, tmp108,
# problem31.c:29:     return 1;
	li	a5,1		# _13,
.L10:
# problem31.c:30: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC7:
	.string	"problem31.c"
	.align	3
.LC8:
	.string	"issame(result, count, (float[]){4, 5, 6}, 3)"
	.align	3
.LC9:
	.string	"issame(result, count, (float[]){5, 3, 2, 3, 3, 9, 123, 1}, 8)"
	.align	3
.LC12:
	.string	"issame(result, count, (float[]){}, 0)"
	.align	3
.LC0:
	.word	-1082130432
	.word	-1073741824
	.word	1082130432
	.word	1084227584
	.word	1086324736
	.align	3
.LC1:
	.word	1084227584
	.word	1077936128
	.word	-1063256064
	.word	1073741824
	.word	1077936128
	.word	1077936128
	.word	1091567616
	.word	0
	.word	1123418112
	.word	1065353216
	.word	-1054867456
	.align	3
.LC2:
	.word	1084227584
	.word	1077936128
	.word	1073741824
	.word	1077936128
	.word	1077936128
	.word	1091567616
	.word	1123418112
	.word	1065353216
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-160	#,,
	sd	ra,152(sp)	#,
	sd	s0,144(sp)	#,
	addi	s0,sp,160	#,,
# problem31.c:32: int main() {
	la	a5,__stack_chk_guard		# tmp82,
	ld	a4, 0(a5)	# tmp128, __stack_chk_guard
	sd	a4, -24(s0)	# tmp128, D.3535
	li	a4, 0	# tmp128
# problem31.c:36:     result = func0((float[]){-1, -2, 4, 5, 6}, 5, &count);
	lla	a5,.LC0	# tmp83,
	ld	a4,0(a5)		# tmp84,
	sd	a4,-128(s0)	# tmp84, D.3489
	ld	a4,8(a5)		# tmp85,
	sd	a4,-120(s0)	# tmp85, D.3489
	lw	a5,16(a5)		# tmp86,
	sw	a5,-112(s0)	# tmp86, D.3489
# problem31.c:36:     result = func0((float[]){-1, -2, 4, 5, 6}, 5, &count);
	addi	a4,s0,-156	#, tmp87,
	addi	a5,s0,-128	#, tmp88,
	mv	a2,a4	#, tmp87
	li	a1,5		#,
	mv	a0,a5	#, tmp88
	call	func0		#
	sd	a0,-152(s0)	#, result
# problem31.c:37:     assert(issame(result, count, (float[]){4, 5, 6}, 3));
	lw	a4,-156(s0)		# count.0_1, count
	lla	a5,.LC4	# tmp89,
	flw	fa5,0(a5)	# tmp90,
	fsw	fa5,-72(s0)	# tmp90, MEM[(float[3] *)_56][0]
	lla	a5,.LC5	# tmp91,
	flw	fa5,0(a5)	# tmp92,
	fsw	fa5,-68(s0)	# tmp92, MEM[(float[3] *)_56][1]
	lla	a5,.LC6	# tmp93,
	flw	fa5,0(a5)	# tmp94,
	fsw	fa5,-64(s0)	# tmp94, MEM[(float[3] *)_56][2]
	addi	a5,s0,-72	#, tmp95,
	li	a3,3		#,
	mv	a2,a5	#, tmp95
	mv	a1,a4	#, count.0_1
	ld	a0,-152(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp96,
	bne	a5,zero,.L18	#, _2,,
# problem31.c:37:     assert(issame(result, count, (float[]){4, 5, 6}, 3));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC7	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L18:
# problem31.c:38:     free(result);
	ld	a0,-152(s0)		#, result
	call	free@plt	#
# problem31.c:40:     result = func0((float[]){5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10}, 11, &count);
	lla	a5,.LC1	# tmp97,
	ld	a0,0(a5)		# tmp98,
	ld	a1,8(a5)		# tmp99,
	ld	a2,16(a5)		# tmp100,
	ld	a3,24(a5)		# tmp101,
	ld	a4,32(a5)		# tmp102,
	sd	a0,-72(s0)	# tmp98, MEM[(float[11] *)_56]
	sd	a1,-64(s0)	# tmp99, MEM[(float[11] *)_56]
	sd	a2,-56(s0)	# tmp100, MEM[(float[11] *)_56]
	sd	a3,-48(s0)	# tmp101, MEM[(float[11] *)_56]
	sd	a4,-40(s0)	# tmp102, MEM[(float[11] *)_56]
	lw	a5,40(a5)		# tmp103,
	sw	a5,-32(s0)	# tmp103, MEM[(float[11] *)_56]
# problem31.c:40:     result = func0((float[]){5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10}, 11, &count);
	addi	a4,s0,-156	#, tmp104,
	addi	a5,s0,-72	#, tmp105,
	mv	a2,a4	#, tmp104
	li	a1,11		#,
	mv	a0,a5	#, tmp105
	call	func0		#
	sd	a0,-152(s0)	#, result
# problem31.c:41:     assert(issame(result, count, (float[]){5, 3, 2, 3, 3, 9, 123, 1}, 8));
	lw	a1,-156(s0)		# count.1_3, count
	lla	a5,.LC2	# tmp106,
	ld	a2,0(a5)		# tmp107,
	ld	a3,8(a5)		# tmp108,
	ld	a4,16(a5)		# tmp109,
	ld	a5,24(a5)		# tmp110,
	sd	a2,-104(s0)	# tmp107, MEM[(float[8] *)_57]
	sd	a3,-96(s0)	# tmp108, MEM[(float[8] *)_57]
	sd	a4,-88(s0)	# tmp109, MEM[(float[8] *)_57]
	sd	a5,-80(s0)	# tmp110, MEM[(float[8] *)_57]
	addi	a5,s0,-104	#, tmp111,
	li	a3,8		#,
	mv	a2,a5	#, tmp111
	ld	a0,-152(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp112,
	bne	a5,zero,.L19	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC7	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L19:
# problem31.c:42:     free(result);
	ld	a0,-152(s0)		#, result
	call	free@plt	#
# problem31.c:44:     result = func0((float[]){-1, -2}, 2, &count);
	lla	a5,.LC10	# tmp113,
	flw	fa5,0(a5)	# tmp114,
	fsw	fa5,-104(s0)	# tmp114, MEM[(float[2] *)_57][0]
	lla	a5,.LC11	# tmp115,
	flw	fa5,0(a5)	# tmp116,
	fsw	fa5,-100(s0)	# tmp116, MEM[(float[2] *)_57][1]
# problem31.c:44:     result = func0((float[]){-1, -2}, 2, &count);
	addi	a4,s0,-156	#, tmp117,
	addi	a5,s0,-104	#, tmp118,
	mv	a2,a4	#, tmp117
	li	a1,2		#,
	mv	a0,a5	#, tmp118
	call	func0		#
	sd	a0,-152(s0)	#, result
# problem31.c:45:     assert(issame(result, count, (float[]){}, 0));
	lw	a5,-156(s0)		# count.2_5, count
	addi	a4,s0,-136	#, tmp119,
	li	a3,0		#,
	mv	a2,a4	#, tmp119
	mv	a1,a5	#, count.2_5
	ld	a0,-152(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp120,
	bne	a5,zero,.L20	#, _6,,
# problem31.c:45:     assert(issame(result, count, (float[]){}, 0));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC7	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L20:
# problem31.c:46:     free(result);
	ld	a0,-152(s0)		#, result
	call	free@plt	#
# problem31.c:48:     result = func0((float[]){}, 0, &count);
	addi	a4,s0,-156	#, tmp121,
	addi	a5,s0,-144	#, tmp122,
	mv	a2,a4	#, tmp121
	li	a1,0		#,
	mv	a0,a5	#, tmp122
	call	func0		#
	sd	a0,-152(s0)	#, result
# problem31.c:49:     assert(issame(result, count, (float[]){}, 0));
	lw	a5,-156(s0)		# count.3_7, count
	addi	a4,s0,-136	#, tmp123,
	li	a3,0		#,
	mv	a2,a4	#, tmp123
	mv	a1,a5	#, count.3_7
	ld	a0,-152(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp124,
	bne	a5,zero,.L21	#, _8,,
# problem31.c:49:     assert(issame(result, count, (float[]){}, 0));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,49		#,
	lla	a1,.LC7	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L21:
# problem31.c:50:     free(result);
	ld	a0,-152(s0)		#, result
	call	free@plt	#
# problem31.c:52:     return 0;
	li	a5,0		# _45,
# problem31.c:53: }
	mv	a4,a5	# <retval>, _45
	la	a5,__stack_chk_guard		# tmp126,
	ld	a3, -24(s0)	# tmp129, D.3535
	ld	a5, 0(a5)	# tmp127, __stack_chk_guard
	xor	a5, a3, a5	# tmp127, tmp129
	li	a3, 0	# tmp129
	beq	a5,zero,.L23	#, tmp127,,
# problem31.c:53: }
	call	__stack_chk_fail@plt	#
.L23:
	mv	a0,a4	#, <retval>
	ld	ra,152(sp)		#,
	ld	s0,144(sp)		#,
	addi	sp,sp,160	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC3:
	.word	-350469331
	.word	1058682594
	.align	2
.LC4:
	.word	1082130432
	.align	2
.LC5:
	.word	1084227584
	.align	2
.LC6:
	.word	1086324736
	.align	2
.LC10:
	.word	-1082130432
	.align	2
.LC11:
	.word	-1073741824
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
