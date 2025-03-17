	.file	"problem31.c"
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
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# l, l
	mv	a5,a1	# tmp151, count
	sd	a2,-56(s0)	# out_count, out_count
	sw	a5,-44(s0)	# tmp152, count
# problem31.c:5:     float* out = (float*)malloc(count * sizeof(float));
	lw	a5,-44(s0)		# _1, count
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp153,
	sd	a5,-24(s0)	# tmp153, out
# problem31.c:6:     *out_count = 0;
	ld	a5,-56(s0)		# tmp154, out_count
	sw	zero,0(a5)	#, *out_count_24(D)
# problem31.c:8:     for (int i = 0; i < count; i++) {
	sw	zero,-28(s0)	#, i
# problem31.c:8:     for (int i = 0; i < count; i++) {
	j	.L2		#
.L5:
# problem31.c:9:         if (l[i] > 0) {
	lw	a5,-28(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
	ld	a4,-40(s0)		# tmp155, l
	add	a5,a4,a5	# _4, _5, tmp155
	flw	fa5,0(a5)	# _6, *_5
# problem31.c:9:         if (l[i] > 0) {
	fmv.s.x	fa4,zero	# tmp156,
	fgt.s	a5,fa5,fa4	#, tmp157, _6, tmp156
	beq	a5,zero,.L3	#, tmp157,,
# problem31.c:10:             out[(*out_count)++] = l[i];
	lw	a5,-28(s0)		# _7, i
	slli	a5,a5,2	#, _8, _7
	ld	a4,-40(s0)		# tmp158, l
	add	a4,a4,a5	# _8, _9, tmp158
# problem31.c:10:             out[(*out_count)++] = l[i];
	ld	a5,-56(s0)		# tmp159, out_count
	lw	a5,0(a5)		# _10, *out_count_24(D)
# problem31.c:10:             out[(*out_count)++] = l[i];
	addiw	a3,a5,1	#, tmp160, _10
	sext.w	a2,a3	# _12, tmp160
	ld	a3,-56(s0)		# tmp161, out_count
	sw	a2,0(a3)	# _12, *out_count_24(D)
# problem31.c:10:             out[(*out_count)++] = l[i];
	slli	a5,a5,2	#, _14, _13
	ld	a3,-24(s0)		# tmp162, out
	add	a5,a3,a5	# _14, _15, tmp162
# problem31.c:10:             out[(*out_count)++] = l[i];
	flw	fa5,0(a4)	# _16, *_9
# problem31.c:10:             out[(*out_count)++] = l[i];
	fsw	fa5,0(a5)	# _16, *_15
.L3:
# problem31.c:8:     for (int i = 0; i < count; i++) {
	lw	a5,-28(s0)		# tmp165, i
	addiw	a5,a5,1	#, tmp163, tmp164
	sw	a5,-28(s0)	# tmp163, i
.L2:
# problem31.c:8:     for (int i = 0; i < count; i++) {
	lw	a5,-28(s0)		# tmp167, i
	mv	a4,a5	# tmp166, tmp167
	lw	a5,-44(s0)		# tmp169, count
	sext.w	a4,a4	# tmp170, tmp166
	sext.w	a5,a5	# tmp171, tmp168
	blt	a4,a5,.L5	#, tmp170, tmp171,
# problem31.c:14:     return out;
	ld	a5,-24(s0)		# _27, out
# problem31.c:15: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# a, a
	mv	a5,a1	# tmp147, a_count
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp149, b_count
	sw	a5,-44(s0)	# tmp148, a_count
	mv	a5,a4	# tmp150, tmp149
	sw	a5,-48(s0)	# tmp150, b_count
# problem31.c:25:     if (a_count != b_count) return 0;
	lw	a5,-44(s0)		# tmp152, a_count
	mv	a4,a5	# tmp151, tmp152
	lw	a5,-48(s0)		# tmp154, b_count
	sext.w	a4,a4	# tmp155, tmp151
	sext.w	a5,a5	# tmp156, tmp153
	beq	a4,a5,.L9	#, tmp155, tmp156,
# problem31.c:25:     if (a_count != b_count) return 0;
	li	a5,0		# _13,
# problem31.c:25:     if (a_count != b_count) return 0;
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
	ld	a4,-40(s0)		# tmp157, a
	add	a5,a4,a5	# _2, _3, tmp157
	flw	fa4,0(a5)	# _4, *_3
# problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp158, b
	add	a5,a4,a5	# _6, _7, tmp158
	flw	fa5,0(a5)	# _8, *_7
# problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	fsub.s	fa5,fa4,fa5	# _9, _4, _8
# problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	fabs.s	fa5,fa5	# _10, _9
	fcvt.d.s	fa4,fa5	# _11, _10
# problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	lla	a5,.LC3	# tmp160,
	fld	fa5,0(a5)	# tmp159,
	fgt.d	a5,fa4,fa5	#, tmp161, _11, tmp159
	beq	a5,zero,.L16	#, tmp161,,
# problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	li	a5,0		# _13,
# problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	j	.L10		#
.L16:
# problem31.c:26:     for (int i = 0; i < a_count; i++) {
	lw	a5,-20(s0)		# tmp164, i
	addiw	a5,a5,1	#, tmp162, tmp163
	sw	a5,-20(s0)	# tmp162, i
.L11:
# problem31.c:26:     for (int i = 0; i < a_count; i++) {
	lw	a5,-20(s0)		# tmp166, i
	mv	a4,a5	# tmp165, tmp166
	lw	a5,-44(s0)		# tmp168, a_count
	sext.w	a4,a4	# tmp169, tmp165
	sext.w	a5,a5	# tmp170, tmp167
	blt	a4,a5,.L14	#, tmp169, tmp170,
# problem31.c:29:     return 1;
	li	a5,1		# _13,
.L10:
# problem31.c:30: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
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
.LFB8:
	.cfi_startproc
	addi	sp,sp,-160	#,,
	.cfi_def_cfa_offset 160
	sd	ra,152(sp)	#,
	sd	s0,144(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,160	#,,
	.cfi_def_cfa 8, 0
# problem31.c:32: int main() {
	la	a5,__stack_chk_guard		# tmp144,
	ld	a4, 0(a5)	# tmp190, __stack_chk_guard
	sd	a4, -24(s0)	# tmp190, D.4360
	li	a4, 0	# tmp190
# problem31.c:36:     result = func0((float[]){-1, -2, 4, 5, 6}, 5, &count);
	lla	a5,.LC0	# tmp145,
	ld	a4,0(a5)		# tmp146,
	sd	a4,-128(s0)	# tmp146, D.4314
	ld	a4,8(a5)		# tmp147,
	sd	a4,-120(s0)	# tmp147, D.4314
	lw	a5,16(a5)		# tmp148,
	sw	a5,-112(s0)	# tmp148, D.4314
# problem31.c:36:     result = func0((float[]){-1, -2, 4, 5, 6}, 5, &count);
	addi	a4,s0,-156	#, tmp149,
	addi	a5,s0,-128	#, tmp150,
	mv	a2,a4	#, tmp149
	li	a1,5		#,
	mv	a0,a5	#, tmp150
	call	func0		#
	sd	a0,-152(s0)	#, result
# problem31.c:37:     assert(issame(result, count, (float[]){4, 5, 6}, 3));
	lw	a4,-156(s0)		# count.0_1, count
	lla	a5,.LC4	# tmp151,
	flw	fa5,0(a5)	# tmp152,
	fsw	fa5,-72(s0)	# tmp152, MEM[(float[3] *)_53][0]
	lla	a5,.LC5	# tmp153,
	flw	fa5,0(a5)	# tmp154,
	fsw	fa5,-68(s0)	# tmp154, MEM[(float[3] *)_53][1]
	lla	a5,.LC6	# tmp155,
	flw	fa5,0(a5)	# tmp156,
	fsw	fa5,-64(s0)	# tmp156, MEM[(float[3] *)_53][2]
	addi	a5,s0,-72	#, tmp157,
	li	a3,3		#,
	mv	a2,a5	#, tmp157
	mv	a1,a4	#, count.0_1
	ld	a0,-152(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp158,
# problem31.c:37:     assert(issame(result, count, (float[]){4, 5, 6}, 3));
	bne	a5,zero,.L18	#, _2,,
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
	lla	a5,.LC1	# tmp159,
	ld	a0,0(a5)		# tmp160,
	ld	a1,8(a5)		# tmp161,
	ld	a2,16(a5)		# tmp162,
	ld	a3,24(a5)		# tmp163,
	ld	a4,32(a5)		# tmp164,
	sd	a0,-72(s0)	# tmp160, MEM[(float[11] *)_53]
	sd	a1,-64(s0)	# tmp161, MEM[(float[11] *)_53]
	sd	a2,-56(s0)	# tmp162, MEM[(float[11] *)_53]
	sd	a3,-48(s0)	# tmp163, MEM[(float[11] *)_53]
	sd	a4,-40(s0)	# tmp164, MEM[(float[11] *)_53]
	lw	a5,40(a5)		# tmp165,
	sw	a5,-32(s0)	# tmp165, MEM[(float[11] *)_53]
# problem31.c:40:     result = func0((float[]){5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10}, 11, &count);
	addi	a4,s0,-156	#, tmp166,
	addi	a5,s0,-72	#, tmp167,
	mv	a2,a4	#, tmp166
	li	a1,11		#,
	mv	a0,a5	#, tmp167
	call	func0		#
	sd	a0,-152(s0)	#, result
# problem31.c:41:     assert(issame(result, count, (float[]){5, 3, 2, 3, 3, 9, 123, 1}, 8));
	lw	a1,-156(s0)		# count.1_3, count
	lla	a5,.LC2	# tmp168,
	ld	a2,0(a5)		# tmp169,
	ld	a3,8(a5)		# tmp170,
	ld	a4,16(a5)		# tmp171,
	ld	a5,24(a5)		# tmp172,
	sd	a2,-104(s0)	# tmp169, MEM[(float[8] *)_54]
	sd	a3,-96(s0)	# tmp170, MEM[(float[8] *)_54]
	sd	a4,-88(s0)	# tmp171, MEM[(float[8] *)_54]
	sd	a5,-80(s0)	# tmp172, MEM[(float[8] *)_54]
	addi	a5,s0,-104	#, tmp173,
	li	a3,8		#,
	mv	a2,a5	#, tmp173
	ld	a0,-152(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp174,
# problem31.c:41:     assert(issame(result, count, (float[]){5, 3, 2, 3, 3, 9, 123, 1}, 8));
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
	lla	a5,.LC10	# tmp175,
	flw	fa5,0(a5)	# tmp176,
	fsw	fa5,-104(s0)	# tmp176, MEM[(float[2] *)_54][0]
	lla	a5,.LC11	# tmp177,
	flw	fa5,0(a5)	# tmp178,
	fsw	fa5,-100(s0)	# tmp178, MEM[(float[2] *)_54][1]
# problem31.c:44:     result = func0((float[]){-1, -2}, 2, &count);
	addi	a4,s0,-156	#, tmp179,
	addi	a5,s0,-104	#, tmp180,
	mv	a2,a4	#, tmp179
	li	a1,2		#,
	mv	a0,a5	#, tmp180
	call	func0		#
	sd	a0,-152(s0)	#, result
# problem31.c:45:     assert(issame(result, count, (float[]){}, 0));
	lw	a5,-156(s0)		# count.2_5, count
	addi	a4,s0,-136	#, tmp181,
	li	a3,0		#,
	mv	a2,a4	#, tmp181
	mv	a1,a5	#, count.2_5
	ld	a0,-152(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp182,
# problem31.c:45:     assert(issame(result, count, (float[]){}, 0));
	bne	a5,zero,.L20	#, _6,,
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
	addi	a4,s0,-156	#, tmp183,
	addi	a5,s0,-144	#, tmp184,
	mv	a2,a4	#, tmp183
	li	a1,0		#,
	mv	a0,a5	#, tmp184
	call	func0		#
	sd	a0,-152(s0)	#, result
# problem31.c:49:     assert(issame(result, count, (float[]){}, 0));
	lw	a5,-156(s0)		# count.3_7, count
	addi	a4,s0,-136	#, tmp185,
	li	a3,0		#,
	mv	a2,a4	#, tmp185
	mv	a1,a5	#, count.3_7
	ld	a0,-152(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp186,
# problem31.c:49:     assert(issame(result, count, (float[]){}, 0));
	bne	a5,zero,.L21	#, _8,,
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
	li	a5,0		# _42,
# problem31.c:53: }
	mv	a4,a5	# <retval>, _42
	la	a5,__stack_chk_guard		# tmp188,
	ld	a3, -24(s0)	# tmp191, D.4360
	ld	a5, 0(a5)	# tmp189, __stack_chk_guard
	xor	a5, a3, a5	# tmp189, tmp191
	li	a3, 0	# tmp191
	beq	a5,zero,.L23	#, tmp189,,
	call	__stack_chk_fail@plt	#
.L23:
	mv	a0,a4	#, <retval>
	ld	ra,152(sp)		#,
	.cfi_restore 1
	ld	s0,144(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE8:
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
