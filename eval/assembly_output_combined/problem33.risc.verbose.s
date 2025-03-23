	.file	"problem33.c"
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
	sd	a0,-72(s0)	# xs, xs
	mv	a5,a1	# tmp155, size
	sw	a5,-76(s0)	# tmp156, size
# problem33.c:5:     double ans = 0.0;
	fmv.d.x	fa5,zero	# tmp157,
	fsd	fa5,-48(s0)	# tmp157, ans
# problem33.c:9:     value = xs[0];
	ld	a5,-72(s0)		# tmp158, xs
	fld	fa5,0(a5)	# tmp159, *xs_36(D)
	fsd	fa5,-40(s0)	# tmp159, value
# problem33.c:10:     for (i = 1; i < size; i++) {
	li	a5,1		# tmp160,
	sw	a5,-64(s0)	# tmp160, i
# problem33.c:10:     for (i = 1; i < size; i++) {
	j	.L2		#
.L5:
# problem33.c:11:         x_pow = 1.0;
	lla	a5,.LC0	# tmp161,
	fld	fa5,0(a5)	# tmp162,
	fsd	fa5,-24(s0)	# tmp162, x_pow
# problem33.c:12:         for (int j = 0; j < i; j++) {
	sw	zero,-60(s0)	#, j
# problem33.c:12:         for (int j = 0; j < i; j++) {
	j	.L3		#
.L4:
# problem33.c:13:             x_pow *= ans;
	fld	fa4,-24(s0)	# tmp164, x_pow
	fld	fa5,-48(s0)	# tmp165, ans
	fmul.d	fa5,fa4,fa5	# tmp163, tmp164, tmp165
	fsd	fa5,-24(s0)	# tmp163, x_pow
# problem33.c:12:         for (int j = 0; j < i; j++) {
	lw	a5,-60(s0)		# tmp168, j
	addiw	a5,a5,1	#, tmp166, tmp167
	sw	a5,-60(s0)	# tmp166, j
.L3:
# problem33.c:12:         for (int j = 0; j < i; j++) {
	lw	a5,-60(s0)		# tmp170, j
	mv	a4,a5	# tmp169, tmp170
	lw	a5,-64(s0)		# tmp172, i
	sext.w	a4,a4	# tmp173, tmp169
	sext.w	a5,a5	# tmp174, tmp171
	blt	a4,a5,.L4	#, tmp173, tmp174,
# problem33.c:15:         value += xs[i] * x_pow;
	lw	a5,-64(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-72(s0)		# tmp175, xs
	add	a5,a4,a5	# _2, _3, tmp175
	fld	fa4,0(a5)	# _4, *_3
# problem33.c:15:         value += xs[i] * x_pow;
	fld	fa5,-24(s0)	# tmp176, x_pow
	fmul.d	fa5,fa4,fa5	# _5, _4, tmp176
# problem33.c:15:         value += xs[i] * x_pow;
	fld	fa4,-40(s0)	# tmp178, value
	fadd.d	fa5,fa4,fa5	# tmp177, tmp178, _5
	fsd	fa5,-40(s0)	# tmp177, value
# problem33.c:10:     for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp181, i
	addiw	a5,a5,1	#, tmp179, tmp180
	sw	a5,-64(s0)	# tmp179, i
.L2:
# problem33.c:10:     for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp183, i
	mv	a4,a5	# tmp182, tmp183
	lw	a5,-76(s0)		# tmp185, size
	sext.w	a4,a4	# tmp186, tmp182
	sext.w	a5,a5	# tmp187, tmp184
	blt	a4,a5,.L5	#, tmp186, tmp187,
# problem33.c:18:     while (fabs(value) > 1e-6) {
	j	.L6		#
.L15:
# problem33.c:19:         driv = 0.0;
	fmv.d.x	fa5,zero	# tmp188,
	fsd	fa5,-32(s0)	# tmp188, driv
# problem33.c:20:         for (i = 1; i < size; i++) {
	li	a5,1		# tmp189,
	sw	a5,-64(s0)	# tmp189, i
# problem33.c:20:         for (i = 1; i < size; i++) {
	j	.L7		#
.L10:
# problem33.c:21:             x_pow = 1.0;
	lla	a5,.LC0	# tmp190,
	fld	fa5,0(a5)	# tmp191,
	fsd	fa5,-24(s0)	# tmp191, x_pow
# problem33.c:22:             for (int j = 1; j < i; j++) {
	li	a5,1		# tmp192,
	sw	a5,-56(s0)	# tmp192, j
# problem33.c:22:             for (int j = 1; j < i; j++) {
	j	.L8		#
.L9:
# problem33.c:23:                 x_pow *= ans;
	fld	fa4,-24(s0)	# tmp194, x_pow
	fld	fa5,-48(s0)	# tmp195, ans
	fmul.d	fa5,fa4,fa5	# tmp193, tmp194, tmp195
	fsd	fa5,-24(s0)	# tmp193, x_pow
# problem33.c:22:             for (int j = 1; j < i; j++) {
	lw	a5,-56(s0)		# tmp198, j
	addiw	a5,a5,1	#, tmp196, tmp197
	sw	a5,-56(s0)	# tmp196, j
.L8:
# problem33.c:22:             for (int j = 1; j < i; j++) {
	lw	a5,-56(s0)		# tmp200, j
	mv	a4,a5	# tmp199, tmp200
	lw	a5,-64(s0)		# tmp202, i
	sext.w	a4,a4	# tmp203, tmp199
	sext.w	a5,a5	# tmp204, tmp201
	blt	a4,a5,.L9	#, tmp203, tmp204,
# problem33.c:25:             driv += i * xs[i] * x_pow;
	lw	a5,-64(s0)		# tmp206, i
	fcvt.d.w	fa4,a5	# _6, tmp205
# problem33.c:25:             driv += i * xs[i] * x_pow;
	lw	a5,-64(s0)		# _7, i
	slli	a5,a5,3	#, _8, _7
	ld	a4,-72(s0)		# tmp207, xs
	add	a5,a4,a5	# _8, _9, tmp207
	fld	fa5,0(a5)	# _10, *_9
# problem33.c:25:             driv += i * xs[i] * x_pow;
	fmul.d	fa4,fa4,fa5	# _11, _6, _10
# problem33.c:25:             driv += i * xs[i] * x_pow;
	fld	fa5,-24(s0)	# tmp208, x_pow
	fmul.d	fa5,fa4,fa5	# _12, _11, tmp208
# problem33.c:25:             driv += i * xs[i] * x_pow;
	fld	fa4,-32(s0)	# tmp210, driv
	fadd.d	fa5,fa4,fa5	# tmp209, tmp210, _12
	fsd	fa5,-32(s0)	# tmp209, driv
# problem33.c:20:         for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp213, i
	addiw	a5,a5,1	#, tmp211, tmp212
	sw	a5,-64(s0)	# tmp211, i
.L7:
# problem33.c:20:         for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp215, i
	mv	a4,a5	# tmp214, tmp215
	lw	a5,-76(s0)		# tmp217, size
	sext.w	a4,a4	# tmp218, tmp214
	sext.w	a5,a5	# tmp219, tmp216
	blt	a4,a5,.L10	#, tmp218, tmp219,
# problem33.c:27:         ans = ans - value / driv;
	fld	fa4,-40(s0)	# tmp220, value
	fld	fa5,-32(s0)	# tmp221, driv
	fdiv.d	fa5,fa4,fa5	# _13, tmp220, tmp221
# problem33.c:27:         ans = ans - value / driv;
	fld	fa4,-48(s0)	# tmp223, ans
	fsub.d	fa5,fa4,fa5	# tmp222, tmp223, _13
	fsd	fa5,-48(s0)	# tmp222, ans
# problem33.c:29:         value = xs[0];
	ld	a5,-72(s0)		# tmp224, xs
	fld	fa5,0(a5)	# tmp225, *xs_36(D)
	fsd	fa5,-40(s0)	# tmp225, value
# problem33.c:30:         for (i = 1; i < size; i++) {
	li	a5,1		# tmp226,
	sw	a5,-64(s0)	# tmp226, i
# problem33.c:30:         for (i = 1; i < size; i++) {
	j	.L11		#
.L14:
# problem33.c:31:             x_pow = 1.0;
	lla	a5,.LC0	# tmp227,
	fld	fa5,0(a5)	# tmp228,
	fsd	fa5,-24(s0)	# tmp228, x_pow
# problem33.c:32:             for (int j = 0; j < i; j++) {
	sw	zero,-52(s0)	#, j
# problem33.c:32:             for (int j = 0; j < i; j++) {
	j	.L12		#
.L13:
# problem33.c:33:                 x_pow *= ans;
	fld	fa4,-24(s0)	# tmp230, x_pow
	fld	fa5,-48(s0)	# tmp231, ans
	fmul.d	fa5,fa4,fa5	# tmp229, tmp230, tmp231
	fsd	fa5,-24(s0)	# tmp229, x_pow
# problem33.c:32:             for (int j = 0; j < i; j++) {
	lw	a5,-52(s0)		# tmp234, j
	addiw	a5,a5,1	#, tmp232, tmp233
	sw	a5,-52(s0)	# tmp232, j
.L12:
# problem33.c:32:             for (int j = 0; j < i; j++) {
	lw	a5,-52(s0)		# tmp236, j
	mv	a4,a5	# tmp235, tmp236
	lw	a5,-64(s0)		# tmp238, i
	sext.w	a4,a4	# tmp239, tmp235
	sext.w	a5,a5	# tmp240, tmp237
	blt	a4,a5,.L13	#, tmp239, tmp240,
# problem33.c:35:             value += xs[i] * x_pow;
	lw	a5,-64(s0)		# _14, i
	slli	a5,a5,3	#, _15, _14
	ld	a4,-72(s0)		# tmp241, xs
	add	a5,a4,a5	# _15, _16, tmp241
	fld	fa4,0(a5)	# _17, *_16
# problem33.c:35:             value += xs[i] * x_pow;
	fld	fa5,-24(s0)	# tmp242, x_pow
	fmul.d	fa5,fa4,fa5	# _18, _17, tmp242
# problem33.c:35:             value += xs[i] * x_pow;
	fld	fa4,-40(s0)	# tmp244, value
	fadd.d	fa5,fa4,fa5	# tmp243, tmp244, _18
	fsd	fa5,-40(s0)	# tmp243, value
# problem33.c:30:         for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp247, i
	addiw	a5,a5,1	#, tmp245, tmp246
	sw	a5,-64(s0)	# tmp245, i
.L11:
# problem33.c:30:         for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp249, i
	mv	a4,a5	# tmp248, tmp249
	lw	a5,-76(s0)		# tmp251, size
	sext.w	a4,a4	# tmp252, tmp248
	sext.w	a5,a5	# tmp253, tmp250
	blt	a4,a5,.L14	#, tmp252, tmp253,
.L6:
# problem33.c:18:     while (fabs(value) > 1e-6) {
	fld	fa5,-40(s0)	# tmp254, value
	fabs.d	fa4,fa5	# _19, tmp254
# problem33.c:18:     while (fabs(value) > 1e-6) {
	lla	a5,.LC1	# tmp256,
	fld	fa5,0(a5)	# tmp255,
	fgt.d	a5,fa4,fa5	#, tmp257, _19, tmp255
	bne	a5,zero,.L15	#, tmp257,,
# problem33.c:39:     return ans;
	fld	fa5,-48(s0)	# _40, ans
# problem33.c:40: }
	fmv.d	fa0,fa5	#, <retval>
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
	.globl	evaluate_polynomial
	.type	evaluate_polynomial, @function
evaluate_polynomial:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# coeffs, coeffs
	mv	a5,a1	# tmp141, size
	fsd	fa0,-72(s0)	# x, x
	sw	a5,-60(s0)	# tmp142, size
# problem33.c:50:     double result = 0.0;
	fmv.d.x	fa5,zero	# tmp143,
	fsd	fa5,-32(s0)	# tmp143, result
# problem33.c:51:     double term = 1.0; 
	lla	a5,.LC0	# tmp144,
	fld	fa5,0(a5)	# tmp145,
	fsd	fa5,-24(s0)	# tmp145, term
# problem33.c:52:     for (int i = 0; i < size; i++) {
	sw	zero,-36(s0)	#, i
# problem33.c:52:     for (int i = 0; i < size; i++) {
	j	.L18		#
.L20:
# problem33.c:53:         if (i > 0) {
	lw	a5,-36(s0)		# tmp147, i
	sext.w	a5,a5	# tmp148, tmp146
	ble	a5,zero,.L19	#, tmp148,,
# problem33.c:54:             term *= x; 
	fld	fa4,-24(s0)	# tmp150, term
	fld	fa5,-72(s0)	# tmp151, x
	fmul.d	fa5,fa4,fa5	# tmp149, tmp150, tmp151
	fsd	fa5,-24(s0)	# tmp149, term
.L19:
# problem33.c:56:         result += coeffs[i] * term;
	lw	a5,-36(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-56(s0)		# tmp152, coeffs
	add	a5,a4,a5	# _2, _3, tmp152
	fld	fa4,0(a5)	# _4, *_3
# problem33.c:56:         result += coeffs[i] * term;
	fld	fa5,-24(s0)	# tmp153, term
	fmul.d	fa5,fa4,fa5	# _5, _4, tmp153
# problem33.c:56:         result += coeffs[i] * term;
	fld	fa4,-32(s0)	# tmp155, result
	fadd.d	fa5,fa4,fa5	# tmp154, tmp155, _5
	fsd	fa5,-32(s0)	# tmp154, result
# problem33.c:52:     for (int i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp158, i
	addiw	a5,a5,1	#, tmp156, tmp157
	sw	a5,-36(s0)	# tmp156, i
.L18:
# problem33.c:52:     for (int i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp160, i
	mv	a4,a5	# tmp159, tmp160
	lw	a5,-60(s0)		# tmp162, size
	sext.w	a4,a4	# tmp163, tmp159
	sext.w	a5,a5	# tmp164, tmp161
	blt	a4,a5,.L20	#, tmp163, tmp164,
# problem33.c:58:     return result;
	fld	fa5,-32(s0)	# _14, result
# problem33.c:59: }
	fmv.d	fa0,fa5	#, <retval>
	ld	s0,72(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	evaluate_polynomial, .-evaluate_polynomial
	.section	.rodata
	.align	3
.LC3:
	.string	"problem33.c"
	.align	3
.LC4:
	.string	"fabs(evaluate_polynomial(coeffs, ncoeff, solution)) < 1e-3"
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
	sd	s1,136(sp)	#,
	sd	s2,128(sp)	#,
	sd	s3,120(sp)	#,
	sd	s4,112(sp)	#,
	sd	s5,104(sp)	#,
	sd	s6,96(sp)	#,
	sd	s7,88(sp)	#,
	sd	s8,80(sp)	#,
	sd	s9,72(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	addi	s0,sp,160	#,,
	.cfi_def_cfa 8, 0
# problem33.c:61: int main() {
	la	a5,__stack_chk_guard		# tmp159,
	ld	a4, 0(a5)	# tmp221, __stack_chk_guard
	sd	a4, -104(s0)	# tmp221, D.4379
	li	a4, 0	# tmp221
# problem33.c:65:     for (int i = 0; i < 100; i++) {
	sw	zero,-148(s0)	#, i
# problem33.c:65:     for (int i = 0; i < 100; i++) {
	j	.L23		#
.L28:
# problem33.c:65:     for (int i = 0; i < 100; i++) {
	mv	a5,sp	# tmp160,
	mv	s1,a5	# saved_stack.2_31, tmp160
# problem33.c:66:         ncoeff = 2 * (1 + rand() % 4);
	call	rand@plt	#
	mv	a5,a0	# tmp161,
# problem33.c:66:         ncoeff = 2 * (1 + rand() % 4);
	mv	a4,a5	# tmp163, _1
	sraiw	a5,a4,31	#, tmp164, tmp163
	srliw	a5,a5,30	#, tmp165, tmp164
	addw	a4,a4,a5	# tmp165, tmp166, tmp163
	andi	a4,a4,3	#, tmp167, tmp166
	subw	a5,a4,a5	# tmp168, tmp167, tmp165
	sext.w	a5,a5	# _2, tmp168
# problem33.c:66:         ncoeff = 2 * (1 + rand() % 4);
	addiw	a5,a5,1	#, tmp169, _2
	sext.w	a5,a5	# _3, tmp169
# problem33.c:66:         ncoeff = 2 * (1 + rand() % 4);
	slliw	a5,a5,1	#, tmp170, _3
	sw	a5,-140(s0)	# tmp170, ncoeff
# problem33.c:67:         double coeffs[ncoeff];
	lw	a5,-140(s0)		# ncoeff.0_34, ncoeff
# problem33.c:67:         double coeffs[ncoeff];
	mv	a4,a5	# _4, ncoeff.0_34
	addi	a4,a4,-1	#, _5, _4
	sd	a4,-128(s0)	# _6, D.4362
	mv	a4,a5	# _7, ncoeff.0_34
	mv	s6,a4	# _8, _7
	li	s7,0		# _8,
	srli	a4,s6,58	#, tmp171, _8
	slli	s3,s7,6	#, _9, _8
	or	s3,a4,s3	# _9, _9, tmp171
	slli	s2,s6,6	#, _9, _8
	mv	a4,a5	# _12, ncoeff.0_34
	mv	s8,a4	# _13, _12
	li	s9,0		# _13,
	srli	a4,s8,58	#, tmp172, _13
	slli	s5,s9,6	#, _14, _13
	or	s5,a4,s5	# _14, _14, tmp172
	slli	s4,s8,6	#, _14, _13
	slli	a5,a5,3	#, _16, _15
	addi	a5,a5,15	#, tmp173, _16
	srli	a5,a5,4	#, tmp174, tmp173
	slli	a5,a5,4	#, tmp175, tmp174
	sub	sp,sp,a5	#,, tmp175
	mv	a5,sp	# tmp176,
	addi	a5,a5,7	#, tmp177, tmp176
	srli	a5,a5,3	#, tmp178, tmp177
	slli	a5,a5,3	#, tmp179, tmp178
	sd	a5,-120(s0)	# tmp179, coeffs.1
# problem33.c:68:         for (int j = 0; j < ncoeff; j++) {
	sw	zero,-144(s0)	#, j
# problem33.c:68:         for (int j = 0; j < ncoeff; j++) {
	j	.L24		#
.L26:
# problem33.c:69:             double coeff = -10 + rand() % 21;
	call	rand@plt	#
	mv	a5,a0	# tmp180,
# problem33.c:69:             double coeff = -10 + rand() % 21;
	mv	a4,a5	# tmp182, _17
	li	a5,21		# tmp184,
	remw	a5,a4,a5	# tmp184, tmp183, tmp182
	sext.w	a5,a5	# _18, tmp183
# problem33.c:69:             double coeff = -10 + rand() % 21;
	addiw	a5,a5,-10	#, tmp185, _18
	sext.w	a5,a5	# _19, tmp185
# problem33.c:69:             double coeff = -10 + rand() % 21;
	fcvt.d.w	fa5,a5	# tmp186, _19
	fsd	fa5,-136(s0)	# tmp186, coeff
# problem33.c:70:             if (coeff == 0) coeff = 1;
	fld	fa5,-136(s0)	# tmp187, coeff
	fmv.d.x	fa4,zero	# tmp188,
	feq.d	a5,fa5,fa4	#, tmp189, tmp187, tmp188
	beq	a5,zero,.L25	#, tmp189,,
# problem33.c:70:             if (coeff == 0) coeff = 1;
	lla	a5,.LC0	# tmp190,
	fld	fa5,0(a5)	# tmp191,
	fsd	fa5,-136(s0)	# tmp191, coeff
.L25:
# problem33.c:71:             coeffs[j] = coeff;
	ld	a4,-120(s0)		# tmp192, coeffs.1
	lw	a5,-144(s0)		# tmp193, j
	slli	a5,a5,3	#, tmp194, tmp193
	add	a5,a4,a5	# tmp194, tmp195, tmp192
	fld	fa5,-136(s0)	# tmp196, coeff
	fsd	fa5,0(a5)	# tmp196, (*coeffs.1_41)[j_23]
# problem33.c:68:         for (int j = 0; j < ncoeff; j++) {
	lw	a5,-144(s0)		# tmp199, j
	addiw	a5,a5,1	#, tmp197, tmp198
	sw	a5,-144(s0)	# tmp197, j
.L24:
# problem33.c:68:         for (int j = 0; j < ncoeff; j++) {
	lw	a5,-144(s0)		# tmp201, j
	mv	a4,a5	# tmp200, tmp201
	lw	a5,-140(s0)		# tmp203, ncoeff
	sext.w	a4,a4	# tmp204, tmp200
	sext.w	a5,a5	# tmp205, tmp202
	blt	a4,a5,.L26	#, tmp204, tmp205,
# problem33.c:74:         solution = func0(coeffs, ncoeff);
	lw	a5,-140(s0)		# tmp206, ncoeff
	mv	a1,a5	#, tmp206
	ld	a0,-120(s0)		#, coeffs.1
	call	func0		#
	fsd	fa0,-112(s0)	#, solution
# problem33.c:76:         assert(fabs(evaluate_polynomial(coeffs, ncoeff, solution)) < 1e-3);
	lw	a5,-140(s0)		# tmp207, ncoeff
	fld	fa0,-112(s0)	#, solution
	mv	a1,a5	#, tmp207
	ld	a0,-120(s0)		#, coeffs.1
	call	evaluate_polynomial		#
	fmv.d	fa5,fa0	# _20,
# problem33.c:76:         assert(fabs(evaluate_polynomial(coeffs, ncoeff, solution)) < 1e-3);
	fabs.d	fa4,fa5	# _21, _20
	lla	a5,.LC2	# tmp209,
	fld	fa5,0(a5)	# tmp208,
	flt.d	a5,fa4,fa5	#, tmp210, _21, tmp208
	bne	a5,zero,.L27	#, tmp210,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,76		#,
	lla	a1,.LC3	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L27:
	mv	sp,s1	#, saved_stack.2_31
# problem33.c:65:     for (int i = 0; i < 100; i++) {
	lw	a5,-148(s0)		# tmp213, i
	addiw	a5,a5,1	#, tmp211, tmp212
	sw	a5,-148(s0)	# tmp211, i
.L23:
# problem33.c:65:     for (int i = 0; i < 100; i++) {
	lw	a5,-148(s0)		# tmp215, i
	sext.w	a4,a5	# tmp216, tmp214
	li	a5,99		# tmp217,
	ble	a4,a5,.L28	#, tmp216, tmp217,
# problem33.c:79:     return 0;
	li	a5,0		# _29,
# problem33.c:80: }
	mv	a4,a5	# <retval>, _29
	la	a5,__stack_chk_guard		# tmp219,
	ld	a3, -104(s0)	# tmp222, D.4379
	ld	a5, 0(a5)	# tmp220, __stack_chk_guard
	xor	a5, a3, a5	# tmp220, tmp222
	li	a3, 0	# tmp222
	beq	a5,zero,.L30	#, tmp220,,
	call	__stack_chk_fail@plt	#
.L30:
	mv	a0,a4	#, <retval>
	addi	sp,s0,-160	#,,
	.cfi_def_cfa 2, 160
	ld	ra,152(sp)		#,
	.cfi_restore 1
	ld	s0,144(sp)		#,
	.cfi_restore 8
	ld	s1,136(sp)		#,
	.cfi_restore 9
	ld	s2,128(sp)		#,
	.cfi_restore 18
	ld	s3,120(sp)		#,
	.cfi_restore 19
	ld	s4,112(sp)		#,
	.cfi_restore 20
	ld	s5,104(sp)		#,
	.cfi_restore 21
	ld	s6,96(sp)		#,
	.cfi_restore 22
	ld	s7,88(sp)		#,
	.cfi_restore 23
	ld	s8,80(sp)		#,
	.cfi_restore 24
	ld	s9,72(sp)		#,
	.cfi_restore 25
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
.LC0:
	.word	0
	.word	1072693248
	.align	3
.LC1:
	.word	-1598689907
	.word	1051772663
	.align	3
.LC2:
	.word	-755914244
	.word	1062232653
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
