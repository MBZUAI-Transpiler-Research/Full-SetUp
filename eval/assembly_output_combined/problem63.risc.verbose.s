	.file	"problem63.c"
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
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# xs, xs
	mv	a5,a1	# tmp144, xs_size
	sd	a2,-56(s0)	# out, out
	sw	a5,-44(s0)	# tmp145, xs_size
# problem63.c:4:     for (int i = 1; i < xs_size; i++) {
	li	a5,1		# tmp146,
	sw	a5,-20(s0)	# tmp146, i
# problem63.c:4:     for (int i = 1; i < xs_size; i++) {
	j	.L2		#
.L3:
# problem63.c:5:         out[i - 1] = i * xs[i];
	lw	a5,-20(s0)		# tmp148, i
	fcvt.s.w	fa4,a5	# _1, tmp147
# problem63.c:5:         out[i - 1] = i * xs[i];
	lw	a5,-20(s0)		# _2, i
	slli	a5,a5,2	#, _3, _2
	ld	a4,-40(s0)		# tmp149, xs
	add	a5,a4,a5	# _3, _4, tmp149
	flw	fa5,0(a5)	# _5, *_4
# problem63.c:5:         out[i - 1] = i * xs[i];
	lw	a5,-20(s0)		# _6, i
	slli	a5,a5,2	#, _7, _6
	addi	a5,a5,-4	#, _8, _7
	ld	a4,-56(s0)		# tmp150, out
	add	a5,a4,a5	# _8, _9, tmp150
# problem63.c:5:         out[i - 1] = i * xs[i];
	fmul.s	fa5,fa4,fa5	# _10, _1, _5
# problem63.c:5:         out[i - 1] = i * xs[i];
	fsw	fa5,0(a5)	# _10, *_9
# problem63.c:4:     for (int i = 1; i < xs_size; i++) {
	lw	a5,-20(s0)		# tmp153, i
	addiw	a5,a5,1	#, tmp151, tmp152
	sw	a5,-20(s0)	# tmp151, i
.L2:
# problem63.c:4:     for (int i = 1; i < xs_size; i++) {
	lw	a5,-20(s0)		# tmp155, i
	mv	a4,a5	# tmp154, tmp155
	lw	a5,-44(s0)		# tmp157, xs_size
	sext.w	a4,a4	# tmp158, tmp154
	sext.w	a5,a5	# tmp159, tmp156
	blt	a4,a5,.L3	#, tmp158, tmp159,
# problem63.c:7: }
	nop	
	nop	
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
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
	mv	a5,a1	# tmp147, a_size
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp149, b_size
	sw	a5,-44(s0)	# tmp148, a_size
	mv	a5,a4	# tmp150, tmp149
	sw	a5,-48(s0)	# tmp150, b_size
# problem63.c:17:     if (a_size != b_size) return false;
	lw	a5,-44(s0)		# tmp152, a_size
	mv	a4,a5	# tmp151, tmp152
	lw	a5,-48(s0)		# tmp154, b_size
	sext.w	a4,a4	# tmp155, tmp151
	sext.w	a5,a5	# tmp156, tmp153
	beq	a4,a5,.L5	#, tmp155, tmp156,
# problem63.c:17:     if (a_size != b_size) return false;
	li	a5,0		# _13,
# problem63.c:17:     if (a_size != b_size) return false;
	j	.L6		#
.L5:
# problem63.c:18:     for (int i = 0; i < a_size; i++) {
	sw	zero,-20(s0)	#, i
# problem63.c:18:     for (int i = 0; i < a_size; i++) {
	j	.L7		#
.L10:
# problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp157, a
	add	a5,a4,a5	# _2, _3, tmp157
	flw	fa4,0(a5)	# _4, *_3
# problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp158, b
	add	a5,a4,a5	# _6, _7, tmp158
	flw	fa5,0(a5)	# _8, *_7
# problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	fsub.s	fa5,fa4,fa5	# _9, _4, _8
# problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	fabs.s	fa5,fa5	# _10, _9
	fcvt.d.s	fa4,fa5	# _11, _10
# problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	lla	a5,.LC4	# tmp160,
	fld	fa5,0(a5)	# tmp159,
	fgt.d	a5,fa4,fa5	#, tmp161, _11, tmp159
	beq	a5,zero,.L12	#, tmp161,,
# problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	li	a5,0		# _13,
# problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	j	.L6		#
.L12:
# problem63.c:18:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp164, i
	addiw	a5,a5,1	#, tmp162, tmp163
	sw	a5,-20(s0)	# tmp162, i
.L7:
# problem63.c:18:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp166, i
	mv	a4,a5	# tmp165, tmp166
	lw	a5,-44(s0)		# tmp168, a_size
	sext.w	a4,a4	# tmp169, tmp165
	sext.w	a5,a5	# tmp170, tmp167
	blt	a4,a5,.L10	#, tmp169, tmp170,
# problem63.c:21:     return true;
	li	a5,1		# _13,
.L6:
# problem63.c:22: }
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
.LC5:
	.string	"problem63.c"
	.align	3
.LC6:
	.string	"issame(result, 4, expected1, 4)"
	.align	3
.LC11:
	.string	"issame(result, 2, expected2, 2)"
	.align	3
.LC12:
	.string	"issame(result, 2, expected3, 2)"
	.align	3
.LC13:
	.string	"issame(result, 4, expected4, 4)"
	.align	3
.LC14:
	.string	"issame(result, 0, NULL, 0)"
	.align	3
.LC0:
	.word	1077936128
	.word	1065353216
	.word	1073741824
	.word	1082130432
	.word	1084227584
	.align	3
.LC1:
	.word	1065353216
	.word	1082130432
	.word	1094713344
	.word	1101004800
	.align	3
.LC2:
	.word	1077936128
	.word	1073741824
	.word	1065353216
	.word	0
	.word	1082130432
	.align	3
.LC3:
	.word	1073741824
	.word	1073741824
	.word	0
	.word	1098907648
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-176	#,,
	.cfi_def_cfa_offset 176
	sd	ra,168(sp)	#,
	sd	s0,160(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,176	#,,
	.cfi_def_cfa 8, 0
# problem63.c:24: int main() {
	la	a5,__stack_chk_guard		# tmp141,
	ld	a4, 0(a5)	# tmp205, __stack_chk_guard
	sd	a4, -24(s0)	# tmp205, D.4041
	li	a4, 0	# tmp205
# problem63.c:27:     float case1[] = {3, 1, 2, 4, 5};
	lla	a5,.LC0	# tmp142,
	ld	a4,0(a5)		# tmp143,
	sd	a4,-72(s0)	# tmp143, case1
	ld	a4,8(a5)		# tmp144,
	sd	a4,-64(s0)	# tmp144, case1
	lw	a5,16(a5)		# tmp145,
	sw	a5,-56(s0)	# tmp145, case1
# problem63.c:28:     float expected1[] = {1, 4, 12, 20};
	lla	a5,.LC1	# tmp146,
	ld	a4,0(a5)		# tmp147,
	sd	a4,-104(s0)	# tmp147, expected1
	ld	a5,8(a5)		# tmp148,
	sd	a5,-96(s0)	# tmp148, expected1
# problem63.c:29:     func0(case1, 5, result);
	addi	a4,s0,-120	#, tmp149,
	addi	a5,s0,-72	#, tmp150,
	mv	a2,a4	#, tmp149
	li	a1,5		#,
	mv	a0,a5	#, tmp150
	call	func0		#
# problem63.c:30:     assert(issame(result, 4, expected1, 4));
	addi	a4,s0,-104	#, tmp151,
	addi	a5,s0,-120	#, tmp152,
	li	a3,4		#,
	mv	a2,a4	#, tmp151
	li	a1,4		#,
	mv	a0,a5	#, tmp152
	call	issame		#
	mv	a5,a0	# tmp153,
# problem63.c:30:     assert(issame(result, 4, expected1, 4));
	bne	a5,zero,.L14	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC5	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L14:
# problem63.c:32:     float case2[] = {1, 2, 3};
	lla	a5,.LC7	# tmp154,
	flw	fa5,0(a5)	# tmp155,
	fsw	fa5,-152(s0)	# tmp155, case2[0]
	lla	a5,.LC8	# tmp156,
	flw	fa5,0(a5)	# tmp157,
	fsw	fa5,-148(s0)	# tmp157, case2[1]
	lla	a5,.LC9	# tmp158,
	flw	fa5,0(a5)	# tmp159,
	fsw	fa5,-144(s0)	# tmp159, case2[2]
# problem63.c:33:     float expected2[] = {2, 6};
	lla	a5,.LC8	# tmp160,
	flw	fa5,0(a5)	# tmp161,
	fsw	fa5,-168(s0)	# tmp161, expected2[0]
	lla	a5,.LC10	# tmp162,
	flw	fa5,0(a5)	# tmp163,
	fsw	fa5,-164(s0)	# tmp163, expected2[1]
# problem63.c:34:     func0(case2, 3, result);
	addi	a4,s0,-120	#, tmp164,
	addi	a5,s0,-152	#, tmp165,
	mv	a2,a4	#, tmp164
	li	a1,3		#,
	mv	a0,a5	#, tmp165
	call	func0		#
# problem63.c:35:     assert(issame(result, 2, expected2, 2));
	addi	a4,s0,-168	#, tmp166,
	addi	a5,s0,-120	#, tmp167,
	li	a3,2		#,
	mv	a2,a4	#, tmp166
	li	a1,2		#,
	mv	a0,a5	#, tmp167
	call	issame		#
	mv	a5,a0	# tmp168,
# problem63.c:35:     assert(issame(result, 2, expected2, 2));
	bne	a5,zero,.L15	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC5	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L15:
# problem63.c:37:     float case3[] = {3, 2, 1};
	lla	a5,.LC9	# tmp169,
	flw	fa5,0(a5)	# tmp170,
	fsw	fa5,-136(s0)	# tmp170, case3[0]
	lla	a5,.LC8	# tmp171,
	flw	fa5,0(a5)	# tmp172,
	fsw	fa5,-132(s0)	# tmp172, case3[1]
	lla	a5,.LC7	# tmp173,
	flw	fa5,0(a5)	# tmp174,
	fsw	fa5,-128(s0)	# tmp174, case3[2]
# problem63.c:38:     float expected3[] = {2, 2};
	lla	a5,.LC8	# tmp175,
	flw	fa5,0(a5)	# tmp176,
	fsw	fa5,-160(s0)	# tmp176, expected3[0]
	lla	a5,.LC8	# tmp177,
	flw	fa5,0(a5)	# tmp178,
	fsw	fa5,-156(s0)	# tmp178, expected3[1]
# problem63.c:39:     func0(case3, 3, result);
	addi	a4,s0,-120	#, tmp179,
	addi	a5,s0,-136	#, tmp180,
	mv	a2,a4	#, tmp179
	li	a1,3		#,
	mv	a0,a5	#, tmp180
	call	func0		#
# problem63.c:40:     assert(issame(result, 2, expected3, 2));
	addi	a4,s0,-160	#, tmp181,
	addi	a5,s0,-120	#, tmp182,
	li	a3,2		#,
	mv	a2,a4	#, tmp181
	li	a1,2		#,
	mv	a0,a5	#, tmp182
	call	issame		#
	mv	a5,a0	# tmp183,
# problem63.c:40:     assert(issame(result, 2, expected3, 2));
	bne	a5,zero,.L16	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC5	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L16:
# problem63.c:42:     float case4[] = {3, 2, 1, 0, 4};
	lla	a5,.LC2	# tmp184,
	ld	a4,0(a5)		# tmp185,
	sd	a4,-48(s0)	# tmp185, case4
	ld	a4,8(a5)		# tmp186,
	sd	a4,-40(s0)	# tmp186, case4
	lw	a5,16(a5)		# tmp187,
	sw	a5,-32(s0)	# tmp187, case4
# problem63.c:43:     float expected4[] = {2, 2, 0, 16};
	lla	a5,.LC3	# tmp188,
	ld	a4,0(a5)		# tmp189,
	sd	a4,-88(s0)	# tmp189, expected4
	ld	a5,8(a5)		# tmp190,
	sd	a5,-80(s0)	# tmp190, expected4
# problem63.c:44:     func0(case4, 5, result);
	addi	a4,s0,-120	#, tmp191,
	addi	a5,s0,-48	#, tmp192,
	mv	a2,a4	#, tmp191
	li	a1,5		#,
	mv	a0,a5	#, tmp192
	call	func0		#
# problem63.c:45:     assert(issame(result, 4, expected4, 4));
	addi	a4,s0,-88	#, tmp193,
	addi	a5,s0,-120	#, tmp194,
	li	a3,4		#,
	mv	a2,a4	#, tmp193
	li	a1,4		#,
	mv	a0,a5	#, tmp194
	call	issame		#
	mv	a5,a0	# tmp195,
# problem63.c:45:     assert(issame(result, 4, expected4, 4));
	bne	a5,zero,.L17	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC5	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L17:
# problem63.c:47:     float case5[] = {1};
	lla	a5,.LC7	# tmp196,
	flw	fa5,0(a5)	# tmp197,
	fsw	fa5,-176(s0)	# tmp197, case5[0]
# problem63.c:48:     func0(case5, 1, result);
	addi	a4,s0,-120	#, tmp198,
	addi	a5,s0,-176	#, tmp199,
	mv	a2,a4	#, tmp198
	li	a1,1		#,
	mv	a0,a5	#, tmp199
	call	func0		#
# problem63.c:49:     assert(issame(result, 0, NULL, 0));
	addi	a5,s0,-120	#, tmp200,
	li	a3,0		#,
	li	a2,0		#,
	li	a1,0		#,
	mv	a0,a5	#, tmp200
	call	issame		#
	mv	a5,a0	# tmp201,
# problem63.c:49:     assert(issame(result, 0, NULL, 0));
	bne	a5,zero,.L18	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,49		#,
	lla	a1,.LC5	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L18:
# problem63.c:51:     return 0;
	li	a5,0		# _37,
# problem63.c:52: }
	mv	a4,a5	# <retval>, _37
	la	a5,__stack_chk_guard		# tmp203,
	ld	a3, -24(s0)	# tmp206, D.4041
	ld	a5, 0(a5)	# tmp204, __stack_chk_guard
	xor	a5, a3, a5	# tmp204, tmp206
	li	a3, 0	# tmp206
	beq	a5,zero,.L20	#, tmp204,,
	call	__stack_chk_fail@plt	#
.L20:
	mv	a0,a4	#, <retval>
	ld	ra,168(sp)		#,
	.cfi_restore 1
	ld	s0,160(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	addi	sp,sp,176	#,,
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
	.align	3
.LC4:
	.word	-350469331
	.word	1058682594
	.align	2
.LC7:
	.word	1065353216
	.align	2
.LC8:
	.word	1073741824
	.align	2
.LC9:
	.word	1077936128
	.align	2
.LC10:
	.word	1086324736
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
