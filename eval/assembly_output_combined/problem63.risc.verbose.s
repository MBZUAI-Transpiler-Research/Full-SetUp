	.file	"problem63.c"
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
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# xs, xs
	mv	a5,a1	# tmp82, xs_size
	sd	a2,-56(s0)	# out, out
	sw	a5,-44(s0)	# tmp83, xs_size
# problem63.c:4:     for (int i = 1; i < xs_size; i++) {
	li	a5,1		# tmp84,
	sw	a5,-20(s0)	# tmp84, i
# problem63.c:4:     for (int i = 1; i < xs_size; i++) {
	j	.L2		#
.L3:
# problem63.c:5:         out[i - 1] = i * xs[i];
	lw	a5,-20(s0)		# tmp86, i
	fcvt.s.w	fa4,a5	# _1, tmp85
# problem63.c:5:         out[i - 1] = i * xs[i];
	lw	a5,-20(s0)		# _2, i
	slli	a5,a5,2	#, _3, _2
	ld	a4,-40(s0)		# tmp87, xs
	add	a5,a4,a5	# _3, _4, tmp87
	flw	fa5,0(a5)	# _5, *_4
# problem63.c:5:         out[i - 1] = i * xs[i];
	lw	a5,-20(s0)		# _6, i
	slli	a5,a5,2	#, _7, _6
	addi	a5,a5,-4	#, _8, _7
	ld	a4,-56(s0)		# tmp88, out
	add	a5,a4,a5	# _8, _9, tmp88
# problem63.c:5:         out[i - 1] = i * xs[i];
	fmul.s	fa5,fa4,fa5	# _10, _1, _5
# problem63.c:5:         out[i - 1] = i * xs[i];
	fsw	fa5,0(a5)	# _10, *_9
# problem63.c:4:     for (int i = 1; i < xs_size; i++) {
	lw	a5,-20(s0)		# tmp91, i
	addiw	a5,a5,1	#, tmp89, tmp90
	sw	a5,-20(s0)	# tmp89, i
.L2:
# problem63.c:4:     for (int i = 1; i < xs_size; i++) {
	lw	a5,-20(s0)		# tmp93, i
	mv	a4,a5	# tmp92, tmp93
	lw	a5,-44(s0)		# tmp95, xs_size
	sext.w	a4,a4	# tmp96, tmp92
	sext.w	a5,a5	# tmp97, tmp94
	blt	a4,a5,.L3	#, tmp96, tmp97,
# problem63.c:7: }
	nop	
	nop	
	ld	s0,56(sp)		#,
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
	mv	a5,a1	# tmp85, a_size
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp87, b_size
	sw	a5,-44(s0)	# tmp86, a_size
	mv	a5,a4	# tmp88, tmp87
	sw	a5,-48(s0)	# tmp88, b_size
# problem63.c:17:     if (a_size != b_size) return false;
	lw	a5,-44(s0)		# tmp90, a_size
	mv	a4,a5	# tmp89, tmp90
	lw	a5,-48(s0)		# tmp92, b_size
	sext.w	a4,a4	# tmp93, tmp89
	sext.w	a5,a5	# tmp94, tmp91
	beq	a4,a5,.L5	#, tmp93, tmp94,
# problem63.c:17:     if (a_size != b_size) return false;
	li	a5,0		# _13,
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
	ld	a4,-40(s0)		# tmp95, a
	add	a5,a4,a5	# _2, _3, tmp95
	flw	fa4,0(a5)	# _4, *_3
# problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp96, b
	add	a5,a4,a5	# _6, _7, tmp96
	flw	fa5,0(a5)	# _8, *_7
# problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	fsub.s	fa5,fa4,fa5	# _9, _4, _8
# problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	fabs.s	fa5,fa5	# _10, _9
	fcvt.d.s	fa4,fa5	# _11, _10
# problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	lla	a5,.LC4	# tmp98,
	fld	fa5,0(a5)	# tmp97,
	fgt.d	a5,fa4,fa5	#, tmp99, _11, tmp97
	beq	a5,zero,.L12	#, tmp99,,
# problem63.c:19:         if (fabs(a[i] - b[i]) > 1e-4) return false;
	li	a5,0		# _13,
	j	.L6		#
.L12:
# problem63.c:18:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp102, i
	addiw	a5,a5,1	#, tmp100, tmp101
	sw	a5,-20(s0)	# tmp100, i
.L7:
# problem63.c:18:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp104, i
	mv	a4,a5	# tmp103, tmp104
	lw	a5,-44(s0)		# tmp106, a_size
	sext.w	a4,a4	# tmp107, tmp103
	sext.w	a5,a5	# tmp108, tmp105
	blt	a4,a5,.L10	#, tmp107, tmp108,
# problem63.c:21:     return true;
	li	a5,1		# _13,
.L6:
# problem63.c:22: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
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
	addi	sp,sp,-176	#,,
	sd	ra,168(sp)	#,
	sd	s0,160(sp)	#,
	addi	s0,sp,176	#,,
# problem63.c:24: int main() {
	la	a5,__stack_chk_guard		# tmp79,
	ld	a4, 0(a5)	# tmp143, __stack_chk_guard
	sd	a4, -24(s0)	# tmp143, D.3196
	li	a4, 0	# tmp143
# problem63.c:27:     float case1[] = {3, 1, 2, 4, 5};
	lla	a5,.LC0	# tmp80,
	ld	a4,0(a5)		# tmp81,
	sd	a4,-72(s0)	# tmp81, case1
	ld	a4,8(a5)		# tmp82,
	sd	a4,-64(s0)	# tmp82, case1
	lw	a5,16(a5)		# tmp83,
	sw	a5,-56(s0)	# tmp83, case1
# problem63.c:28:     float expected1[] = {1, 4, 12, 20};
	lla	a5,.LC1	# tmp84,
	ld	a4,0(a5)		# tmp85,
	sd	a4,-104(s0)	# tmp85, expected1
	ld	a5,8(a5)		# tmp86,
	sd	a5,-96(s0)	# tmp86, expected1
# problem63.c:29:     func0(case1, 5, result);
	addi	a4,s0,-120	#, tmp87,
	addi	a5,s0,-72	#, tmp88,
	mv	a2,a4	#, tmp87
	li	a1,5		#,
	mv	a0,a5	#, tmp88
	call	func0		#
# problem63.c:30:     assert(issame(result, 4, expected1, 4));
	addi	a4,s0,-104	#, tmp89,
	addi	a5,s0,-120	#, tmp90,
	li	a3,4		#,
	mv	a2,a4	#, tmp89
	li	a1,4		#,
	mv	a0,a5	#, tmp90
	call	issame		#
	mv	a5,a0	# tmp91,
	bne	a5,zero,.L14	#, _1,,
# problem63.c:30:     assert(issame(result, 4, expected1, 4));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC5	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L14:
# problem63.c:32:     float case2[] = {1, 2, 3};
	lla	a5,.LC7	# tmp92,
	flw	fa5,0(a5)	# tmp93,
	fsw	fa5,-152(s0)	# tmp93, case2[0]
	lla	a5,.LC8	# tmp94,
	flw	fa5,0(a5)	# tmp95,
	fsw	fa5,-148(s0)	# tmp95, case2[1]
	lla	a5,.LC9	# tmp96,
	flw	fa5,0(a5)	# tmp97,
	fsw	fa5,-144(s0)	# tmp97, case2[2]
# problem63.c:33:     float expected2[] = {2, 6};
	lla	a5,.LC8	# tmp98,
	flw	fa5,0(a5)	# tmp99,
	fsw	fa5,-168(s0)	# tmp99, expected2[0]
	lla	a5,.LC10	# tmp100,
	flw	fa5,0(a5)	# tmp101,
	fsw	fa5,-164(s0)	# tmp101, expected2[1]
# problem63.c:34:     func0(case2, 3, result);
	addi	a4,s0,-120	#, tmp102,
	addi	a5,s0,-152	#, tmp103,
	mv	a2,a4	#, tmp102
	li	a1,3		#,
	mv	a0,a5	#, tmp103
	call	func0		#
# problem63.c:35:     assert(issame(result, 2, expected2, 2));
	addi	a4,s0,-168	#, tmp104,
	addi	a5,s0,-120	#, tmp105,
	li	a3,2		#,
	mv	a2,a4	#, tmp104
	li	a1,2		#,
	mv	a0,a5	#, tmp105
	call	issame		#
	mv	a5,a0	# tmp106,
	bne	a5,zero,.L15	#, _2,,
# problem63.c:35:     assert(issame(result, 2, expected2, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC5	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L15:
# problem63.c:37:     float case3[] = {3, 2, 1};
	lla	a5,.LC9	# tmp107,
	flw	fa5,0(a5)	# tmp108,
	fsw	fa5,-136(s0)	# tmp108, case3[0]
	lla	a5,.LC8	# tmp109,
	flw	fa5,0(a5)	# tmp110,
	fsw	fa5,-132(s0)	# tmp110, case3[1]
	lla	a5,.LC7	# tmp111,
	flw	fa5,0(a5)	# tmp112,
	fsw	fa5,-128(s0)	# tmp112, case3[2]
# problem63.c:38:     float expected3[] = {2, 2};
	lla	a5,.LC8	# tmp113,
	flw	fa5,0(a5)	# tmp114,
	fsw	fa5,-160(s0)	# tmp114, expected3[0]
	lla	a5,.LC8	# tmp115,
	flw	fa5,0(a5)	# tmp116,
	fsw	fa5,-156(s0)	# tmp116, expected3[1]
# problem63.c:39:     func0(case3, 3, result);
	addi	a4,s0,-120	#, tmp117,
	addi	a5,s0,-136	#, tmp118,
	mv	a2,a4	#, tmp117
	li	a1,3		#,
	mv	a0,a5	#, tmp118
	call	func0		#
# problem63.c:40:     assert(issame(result, 2, expected3, 2));
	addi	a4,s0,-160	#, tmp119,
	addi	a5,s0,-120	#, tmp120,
	li	a3,2		#,
	mv	a2,a4	#, tmp119
	li	a1,2		#,
	mv	a0,a5	#, tmp120
	call	issame		#
	mv	a5,a0	# tmp121,
	bne	a5,zero,.L16	#, _3,,
# problem63.c:40:     assert(issame(result, 2, expected3, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC5	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L16:
# problem63.c:42:     float case4[] = {3, 2, 1, 0, 4};
	lla	a5,.LC2	# tmp122,
	ld	a4,0(a5)		# tmp123,
	sd	a4,-48(s0)	# tmp123, case4
	ld	a4,8(a5)		# tmp124,
	sd	a4,-40(s0)	# tmp124, case4
	lw	a5,16(a5)		# tmp125,
	sw	a5,-32(s0)	# tmp125, case4
# problem63.c:43:     float expected4[] = {2, 2, 0, 16};
	lla	a5,.LC3	# tmp126,
	ld	a4,0(a5)		# tmp127,
	sd	a4,-88(s0)	# tmp127, expected4
	ld	a5,8(a5)		# tmp128,
	sd	a5,-80(s0)	# tmp128, expected4
# problem63.c:44:     func0(case4, 5, result);
	addi	a4,s0,-120	#, tmp129,
	addi	a5,s0,-48	#, tmp130,
	mv	a2,a4	#, tmp129
	li	a1,5		#,
	mv	a0,a5	#, tmp130
	call	func0		#
# problem63.c:45:     assert(issame(result, 4, expected4, 4));
	addi	a4,s0,-88	#, tmp131,
	addi	a5,s0,-120	#, tmp132,
	li	a3,4		#,
	mv	a2,a4	#, tmp131
	li	a1,4		#,
	mv	a0,a5	#, tmp132
	call	issame		#
	mv	a5,a0	# tmp133,
	bne	a5,zero,.L17	#, _4,,
# problem63.c:45:     assert(issame(result, 4, expected4, 4));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC5	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L17:
# problem63.c:47:     float case5[] = {1};
	lla	a5,.LC7	# tmp134,
	flw	fa5,0(a5)	# tmp135,
	fsw	fa5,-176(s0)	# tmp135, case5[0]
# problem63.c:48:     func0(case5, 1, result);
	addi	a4,s0,-120	#, tmp136,
	addi	a5,s0,-176	#, tmp137,
	mv	a2,a4	#, tmp136
	li	a1,1		#,
	mv	a0,a5	#, tmp137
	call	func0		#
# problem63.c:49:     assert(issame(result, 0, NULL, 0));
	addi	a5,s0,-120	#, tmp138,
	li	a3,0		#,
	li	a2,0		#,
	li	a1,0		#,
	mv	a0,a5	#, tmp138
	call	issame		#
	mv	a5,a0	# tmp139,
	bne	a5,zero,.L18	#, _5,,
# problem63.c:49:     assert(issame(result, 0, NULL, 0));
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
	la	a5,__stack_chk_guard		# tmp141,
	ld	a3, -24(s0)	# tmp144, D.3196
	ld	a5, 0(a5)	# tmp142, __stack_chk_guard
	xor	a5, a3, a5	# tmp142, tmp144
	li	a3, 0	# tmp144
	beq	a5,zero,.L20	#, tmp142,,
	call	__stack_chk_fail@plt	#
.L20:
	mv	a0,a4	#, <retval>
	ld	ra,168(sp)		#,
	ld	s0,160(sp)		#,
	addi	sp,sp,176	#,,
	jr	ra		#
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
