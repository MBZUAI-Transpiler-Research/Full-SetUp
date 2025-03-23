	.file	"problem33.c"
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
	sd	a0,-72(s0)	# xs, xs
	mv	a5,a1	# tmp93, size
	sw	a5,-76(s0)	# tmp94, size
# problem33.c:5:     double ans = 0.0;
	sd	zero,-48(s0)	#, ans
# problem33.c:9:     value = xs[0];
	ld	a5,-72(s0)		# tmp95, xs
	fld	fa5,0(a5)	# tmp96, *xs_36(D)
	fsd	fa5,-40(s0)	# tmp96, value
# problem33.c:10:     for (i = 1; i < size; i++) {
	li	a5,1		# tmp97,
	sw	a5,-64(s0)	# tmp97, i
# problem33.c:10:     for (i = 1; i < size; i++) {
	j	.L2		#
.L5:
# problem33.c:11:         x_pow = 1.0;
	lla	a5,.LC0	# tmp98,
	fld	fa5,0(a5)	# tmp99,
	fsd	fa5,-24(s0)	# tmp99, x_pow
# problem33.c:12:         for (int j = 0; j < i; j++) {
	sw	zero,-60(s0)	#, j
# problem33.c:12:         for (int j = 0; j < i; j++) {
	j	.L3		#
.L4:
# problem33.c:13:             x_pow *= ans;
	fld	fa4,-24(s0)	# tmp101, x_pow
	fld	fa5,-48(s0)	# tmp102, ans
	fmul.d	fa5,fa4,fa5	# tmp100, tmp101, tmp102
	fsd	fa5,-24(s0)	# tmp100, x_pow
# problem33.c:12:         for (int j = 0; j < i; j++) {
	lw	a5,-60(s0)		# tmp105, j
	addiw	a5,a5,1	#, tmp103, tmp104
	sw	a5,-60(s0)	# tmp103, j
.L3:
# problem33.c:12:         for (int j = 0; j < i; j++) {
	lw	a5,-60(s0)		# tmp107, j
	mv	a4,a5	# tmp106, tmp107
	lw	a5,-64(s0)		# tmp109, i
	sext.w	a4,a4	# tmp110, tmp106
	sext.w	a5,a5	# tmp111, tmp108
	blt	a4,a5,.L4	#, tmp110, tmp111,
# problem33.c:15:         value += xs[i] * x_pow;
	lw	a5,-64(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-72(s0)		# tmp112, xs
	add	a5,a4,a5	# _2, _3, tmp112
	fld	fa4,0(a5)	# _4, *_3
# problem33.c:15:         value += xs[i] * x_pow;
	fld	fa5,-24(s0)	# tmp113, x_pow
	fmul.d	fa5,fa4,fa5	# _5, _4, tmp113
# problem33.c:15:         value += xs[i] * x_pow;
	fld	fa4,-40(s0)	# tmp115, value
	fadd.d	fa5,fa4,fa5	# tmp114, tmp115, _5
	fsd	fa5,-40(s0)	# tmp114, value
# problem33.c:10:     for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp118, i
	addiw	a5,a5,1	#, tmp116, tmp117
	sw	a5,-64(s0)	# tmp116, i
.L2:
# problem33.c:10:     for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp120, i
	mv	a4,a5	# tmp119, tmp120
	lw	a5,-76(s0)		# tmp122, size
	sext.w	a4,a4	# tmp123, tmp119
	sext.w	a5,a5	# tmp124, tmp121
	blt	a4,a5,.L5	#, tmp123, tmp124,
# problem33.c:18:     while (fabs(value) > 1e-6) {
	j	.L6		#
.L15:
# problem33.c:19:         driv = 0.0;
	sd	zero,-32(s0)	#, driv
# problem33.c:20:         for (i = 1; i < size; i++) {
	li	a5,1		# tmp125,
	sw	a5,-64(s0)	# tmp125, i
# problem33.c:20:         for (i = 1; i < size; i++) {
	j	.L7		#
.L10:
# problem33.c:21:             x_pow = 1.0;
	lla	a5,.LC0	# tmp126,
	fld	fa5,0(a5)	# tmp127,
	fsd	fa5,-24(s0)	# tmp127, x_pow
# problem33.c:22:             for (int j = 1; j < i; j++) {
	li	a5,1		# tmp128,
	sw	a5,-56(s0)	# tmp128, j
# problem33.c:22:             for (int j = 1; j < i; j++) {
	j	.L8		#
.L9:
# problem33.c:23:                 x_pow *= ans;
	fld	fa4,-24(s0)	# tmp130, x_pow
	fld	fa5,-48(s0)	# tmp131, ans
	fmul.d	fa5,fa4,fa5	# tmp129, tmp130, tmp131
	fsd	fa5,-24(s0)	# tmp129, x_pow
# problem33.c:22:             for (int j = 1; j < i; j++) {
	lw	a5,-56(s0)		# tmp134, j
	addiw	a5,a5,1	#, tmp132, tmp133
	sw	a5,-56(s0)	# tmp132, j
.L8:
# problem33.c:22:             for (int j = 1; j < i; j++) {
	lw	a5,-56(s0)		# tmp136, j
	mv	a4,a5	# tmp135, tmp136
	lw	a5,-64(s0)		# tmp138, i
	sext.w	a4,a4	# tmp139, tmp135
	sext.w	a5,a5	# tmp140, tmp137
	blt	a4,a5,.L9	#, tmp139, tmp140,
# problem33.c:25:             driv += i * xs[i] * x_pow;
	lw	a5,-64(s0)		# tmp142, i
	fcvt.d.w	fa4,a5	# _6, tmp141
# problem33.c:25:             driv += i * xs[i] * x_pow;
	lw	a5,-64(s0)		# _7, i
	slli	a5,a5,3	#, _8, _7
	ld	a4,-72(s0)		# tmp143, xs
	add	a5,a4,a5	# _8, _9, tmp143
	fld	fa5,0(a5)	# _10, *_9
# problem33.c:25:             driv += i * xs[i] * x_pow;
	fmul.d	fa4,fa4,fa5	# _11, _6, _10
# problem33.c:25:             driv += i * xs[i] * x_pow;
	fld	fa5,-24(s0)	# tmp144, x_pow
	fmul.d	fa5,fa4,fa5	# _12, _11, tmp144
# problem33.c:25:             driv += i * xs[i] * x_pow;
	fld	fa4,-32(s0)	# tmp146, driv
	fadd.d	fa5,fa4,fa5	# tmp145, tmp146, _12
	fsd	fa5,-32(s0)	# tmp145, driv
# problem33.c:20:         for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp149, i
	addiw	a5,a5,1	#, tmp147, tmp148
	sw	a5,-64(s0)	# tmp147, i
.L7:
# problem33.c:20:         for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp151, i
	mv	a4,a5	# tmp150, tmp151
	lw	a5,-76(s0)		# tmp153, size
	sext.w	a4,a4	# tmp154, tmp150
	sext.w	a5,a5	# tmp155, tmp152
	blt	a4,a5,.L10	#, tmp154, tmp155,
# problem33.c:27:         ans = ans - value / driv;
	fld	fa4,-40(s0)	# tmp156, value
	fld	fa5,-32(s0)	# tmp157, driv
	fdiv.d	fa5,fa4,fa5	# _13, tmp156, tmp157
# problem33.c:27:         ans = ans - value / driv;
	fld	fa4,-48(s0)	# tmp159, ans
	fsub.d	fa5,fa4,fa5	# tmp158, tmp159, _13
	fsd	fa5,-48(s0)	# tmp158, ans
# problem33.c:29:         value = xs[0];
	ld	a5,-72(s0)		# tmp160, xs
	fld	fa5,0(a5)	# tmp161, *xs_36(D)
	fsd	fa5,-40(s0)	# tmp161, value
# problem33.c:30:         for (i = 1; i < size; i++) {
	li	a5,1		# tmp162,
	sw	a5,-64(s0)	# tmp162, i
# problem33.c:30:         for (i = 1; i < size; i++) {
	j	.L11		#
.L14:
# problem33.c:31:             x_pow = 1.0;
	lla	a5,.LC0	# tmp163,
	fld	fa5,0(a5)	# tmp164,
	fsd	fa5,-24(s0)	# tmp164, x_pow
# problem33.c:32:             for (int j = 0; j < i; j++) {
	sw	zero,-52(s0)	#, j
# problem33.c:32:             for (int j = 0; j < i; j++) {
	j	.L12		#
.L13:
# problem33.c:33:                 x_pow *= ans;
	fld	fa4,-24(s0)	# tmp166, x_pow
	fld	fa5,-48(s0)	# tmp167, ans
	fmul.d	fa5,fa4,fa5	# tmp165, tmp166, tmp167
	fsd	fa5,-24(s0)	# tmp165, x_pow
# problem33.c:32:             for (int j = 0; j < i; j++) {
	lw	a5,-52(s0)		# tmp170, j
	addiw	a5,a5,1	#, tmp168, tmp169
	sw	a5,-52(s0)	# tmp168, j
.L12:
# problem33.c:32:             for (int j = 0; j < i; j++) {
	lw	a5,-52(s0)		# tmp172, j
	mv	a4,a5	# tmp171, tmp172
	lw	a5,-64(s0)		# tmp174, i
	sext.w	a4,a4	# tmp175, tmp171
	sext.w	a5,a5	# tmp176, tmp173
	blt	a4,a5,.L13	#, tmp175, tmp176,
# problem33.c:35:             value += xs[i] * x_pow;
	lw	a5,-64(s0)		# _14, i
	slli	a5,a5,3	#, _15, _14
	ld	a4,-72(s0)		# tmp177, xs
	add	a5,a4,a5	# _15, _16, tmp177
	fld	fa4,0(a5)	# _17, *_16
# problem33.c:35:             value += xs[i] * x_pow;
	fld	fa5,-24(s0)	# tmp178, x_pow
	fmul.d	fa5,fa4,fa5	# _18, _17, tmp178
# problem33.c:35:             value += xs[i] * x_pow;
	fld	fa4,-40(s0)	# tmp180, value
	fadd.d	fa5,fa4,fa5	# tmp179, tmp180, _18
	fsd	fa5,-40(s0)	# tmp179, value
# problem33.c:30:         for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp183, i
	addiw	a5,a5,1	#, tmp181, tmp182
	sw	a5,-64(s0)	# tmp181, i
.L11:
# problem33.c:30:         for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp185, i
	mv	a4,a5	# tmp184, tmp185
	lw	a5,-76(s0)		# tmp187, size
	sext.w	a4,a4	# tmp188, tmp184
	sext.w	a5,a5	# tmp189, tmp186
	blt	a4,a5,.L14	#, tmp188, tmp189,
.L6:
# problem33.c:18:     while (fabs(value) > 1e-6) {
	fld	fa5,-40(s0)	# tmp190, value
	fabs.d	fa4,fa5	# _19, tmp190
# problem33.c:18:     while (fabs(value) > 1e-6) {
	lla	a5,.LC1	# tmp192,
	fld	fa5,0(a5)	# tmp191,
	fgt.d	a5,fa4,fa5	#, tmp193, _19, tmp191
	bne	a5,zero,.L15	#, tmp193,,
# problem33.c:39:     return ans;
	fld	fa5,-48(s0)	# _40, ans
# problem33.c:40: }
	fmv.d	fa0,fa5	#, <retval>
	ld	s0,72(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	func0, .-func0
	.align	1
	.globl	evaluate_polynomial
	.type	evaluate_polynomial, @function
evaluate_polynomial:
	addi	sp,sp,-80	#,,
	sd	s0,72(sp)	#,
	addi	s0,sp,80	#,,
	sd	a0,-56(s0)	# coeffs, coeffs
	mv	a5,a1	# tmp79, size
	fsd	fa0,-72(s0)	# x, x
	sw	a5,-60(s0)	# tmp80, size
# problem33.c:50:     double result = 0.0;
	sd	zero,-32(s0)	#, result
# problem33.c:51:     double term = 1.0; 
	lla	a5,.LC0	# tmp81,
	fld	fa5,0(a5)	# tmp82,
	fsd	fa5,-24(s0)	# tmp82, term
# problem33.c:52:     for (int i = 0; i < size; i++) {
	sw	zero,-36(s0)	#, i
# problem33.c:52:     for (int i = 0; i < size; i++) {
	j	.L18		#
.L20:
# problem33.c:53:         if (i > 0) {
	lw	a5,-36(s0)		# tmp84, i
	sext.w	a5,a5	# tmp85, tmp83
	ble	a5,zero,.L19	#, tmp85,,
# problem33.c:54:             term *= x; 
	fld	fa4,-24(s0)	# tmp87, term
	fld	fa5,-72(s0)	# tmp88, x
	fmul.d	fa5,fa4,fa5	# tmp86, tmp87, tmp88
	fsd	fa5,-24(s0)	# tmp86, term
.L19:
# problem33.c:56:         result += coeffs[i] * term;
	lw	a5,-36(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-56(s0)		# tmp89, coeffs
	add	a5,a4,a5	# _2, _3, tmp89
	fld	fa4,0(a5)	# _4, *_3
# problem33.c:56:         result += coeffs[i] * term;
	fld	fa5,-24(s0)	# tmp90, term
	fmul.d	fa5,fa4,fa5	# _5, _4, tmp90
# problem33.c:56:         result += coeffs[i] * term;
	fld	fa4,-32(s0)	# tmp92, result
	fadd.d	fa5,fa4,fa5	# tmp91, tmp92, _5
	fsd	fa5,-32(s0)	# tmp91, result
# problem33.c:52:     for (int i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp95, i
	addiw	a5,a5,1	#, tmp93, tmp94
	sw	a5,-36(s0)	# tmp93, i
.L18:
# problem33.c:52:     for (int i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp97, i
	mv	a4,a5	# tmp96, tmp97
	lw	a5,-60(s0)		# tmp99, size
	sext.w	a4,a4	# tmp100, tmp96
	sext.w	a5,a5	# tmp101, tmp98
	blt	a4,a5,.L20	#, tmp100, tmp101,
# problem33.c:58:     return result;
	fld	fa5,-32(s0)	# _14, result
# problem33.c:59: }
	fmv.d	fa0,fa5	#, <retval>
	ld	s0,72(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
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
	addi	sp,sp,-160	#,,
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
	addi	s0,sp,160	#,,
# problem33.c:61: int main() {
	la	a5,__stack_chk_guard		# tmp97,
	ld	a4, 0(a5)	# tmp159, __stack_chk_guard
	sd	a4, -104(s0)	# tmp159, D.3554
	li	a4, 0	# tmp159
# problem33.c:65:     for (int i = 0; i < 100; i++) {
	sw	zero,-148(s0)	#, i
# problem33.c:65:     for (int i = 0; i < 100; i++) {
	j	.L23		#
.L28:
# problem33.c:65:     for (int i = 0; i < 100; i++) {
	mv	a5,sp	# tmp98,
	mv	s1,a5	# saved_stack.2_31, tmp98
# problem33.c:66:         ncoeff = 2 * (1 + rand() % 4);
	call	rand@plt	#
	mv	a5,a0	# tmp99,
# problem33.c:66:         ncoeff = 2 * (1 + rand() % 4);
	mv	a4,a5	# tmp101, _1
	sraiw	a5,a4,31	#, tmp102, tmp101
	srliw	a5,a5,30	#, tmp103, tmp102
	addw	a4,a4,a5	# tmp103, tmp104, tmp101
	andi	a4,a4,3	#, tmp105, tmp104
	subw	a5,a4,a5	# tmp106, tmp105, tmp103
	sext.w	a5,a5	# _2, tmp106
# problem33.c:66:         ncoeff = 2 * (1 + rand() % 4);
	addiw	a5,a5,1	#, tmp107, _2
	sext.w	a5,a5	# _3, tmp107
# problem33.c:66:         ncoeff = 2 * (1 + rand() % 4);
	slliw	a5,a5,1	#, tmp108, _3
	sw	a5,-140(s0)	# tmp108, ncoeff
# problem33.c:67:         double coeffs[ncoeff];
	lw	a5,-140(s0)		# ncoeff.0_34, ncoeff
# problem33.c:67:         double coeffs[ncoeff];
	mv	a4,a5	# _4, ncoeff.0_34
	addi	a4,a4,-1	#, _5, _4
	sd	a4,-128(s0)	# _6, D.3537
	mv	a4,a5	# _7, ncoeff.0_34
	mv	s6,a4	# _8, _7
	li	s7,0		# _8,
	srli	a4,s6,58	#, tmp109, _8
	slli	s3,s7,6	#, _9, _8
	or	s3,a4,s3	# _9, _9, tmp109
	slli	s2,s6,6	#, _9, _8
	mv	a4,a5	# _12, ncoeff.0_34
	mv	s8,a4	# _13, _12
	li	s9,0		# _13,
	srli	a4,s8,58	#, tmp110, _13
	slli	s5,s9,6	#, _14, _13
	or	s5,a4,s5	# _14, _14, tmp110
	slli	s4,s8,6	#, _14, _13
	slli	a5,a5,3	#, _16, _15
	addi	a5,a5,15	#, tmp111, _16
	srli	a5,a5,4	#, tmp112, tmp111
	slli	a5,a5,4	#, tmp113, tmp112
	sub	sp,sp,a5	#,, tmp113
	mv	a5,sp	# tmp114,
	addi	a5,a5,7	#, tmp115, tmp114
	srli	a5,a5,3	#, tmp116, tmp115
	slli	a5,a5,3	#, tmp117, tmp116
	sd	a5,-120(s0)	# tmp117, coeffs.1
# problem33.c:68:         for (int j = 0; j < ncoeff; j++) {
	sw	zero,-144(s0)	#, j
# problem33.c:68:         for (int j = 0; j < ncoeff; j++) {
	j	.L24		#
.L26:
# problem33.c:69:             double coeff = -10 + rand() % 21;
	call	rand@plt	#
	mv	a5,a0	# tmp118,
# problem33.c:69:             double coeff = -10 + rand() % 21;
	mv	a4,a5	# tmp120, _17
	li	a5,21		# tmp122,
	remw	a5,a4,a5	# tmp122, tmp121, tmp120
	sext.w	a5,a5	# _18, tmp121
# problem33.c:69:             double coeff = -10 + rand() % 21;
	addiw	a5,a5,-10	#, tmp123, _18
	sext.w	a5,a5	# _19, tmp123
# problem33.c:69:             double coeff = -10 + rand() % 21;
	fcvt.d.w	fa5,a5	# tmp124, _19
	fsd	fa5,-136(s0)	# tmp124, coeff
# problem33.c:70:             if (coeff == 0) coeff = 1;
	fld	fa5,-136(s0)	# tmp125, coeff
	fmv.d.x	fa4,zero	# tmp126,
	feq.d	a5,fa5,fa4	#, tmp127, tmp125, tmp126
	beq	a5,zero,.L25	#, tmp127,,
# problem33.c:70:             if (coeff == 0) coeff = 1;
	lla	a5,.LC0	# tmp128,
	fld	fa5,0(a5)	# tmp129,
	fsd	fa5,-136(s0)	# tmp129, coeff
.L25:
# problem33.c:71:             coeffs[j] = coeff;
	ld	a4,-120(s0)		# tmp130, coeffs.1
	lw	a5,-144(s0)		# tmp131, j
	slli	a5,a5,3	#, tmp132, tmp131
	add	a5,a4,a5	# tmp132, tmp133, tmp130
	fld	fa5,-136(s0)	# tmp134, coeff
	fsd	fa5,0(a5)	# tmp134, (*coeffs.1_41)[j_23]
# problem33.c:68:         for (int j = 0; j < ncoeff; j++) {
	lw	a5,-144(s0)		# tmp137, j
	addiw	a5,a5,1	#, tmp135, tmp136
	sw	a5,-144(s0)	# tmp135, j
.L24:
# problem33.c:68:         for (int j = 0; j < ncoeff; j++) {
	lw	a5,-144(s0)		# tmp139, j
	mv	a4,a5	# tmp138, tmp139
	lw	a5,-140(s0)		# tmp141, ncoeff
	sext.w	a4,a4	# tmp142, tmp138
	sext.w	a5,a5	# tmp143, tmp140
	blt	a4,a5,.L26	#, tmp142, tmp143,
# problem33.c:74:         solution = func0(coeffs, ncoeff);
	lw	a5,-140(s0)		# tmp144, ncoeff
	mv	a1,a5	#, tmp144
	ld	a0,-120(s0)		#, coeffs.1
	call	func0		#
	fsd	fa0,-112(s0)	#, solution
# problem33.c:76:         assert(fabs(evaluate_polynomial(coeffs, ncoeff, solution)) < 1e-3);
	lw	a5,-140(s0)		# tmp145, ncoeff
	fld	fa0,-112(s0)	#, solution
	mv	a1,a5	#, tmp145
	ld	a0,-120(s0)		#, coeffs.1
	call	evaluate_polynomial		#
	fmv.d	fa5,fa0	# _20,
	fabs.d	fa4,fa5	# _21, _20
	lla	a5,.LC2	# tmp147,
	fld	fa5,0(a5)	# tmp146,
	flt.d	a5,fa4,fa5	#, tmp148, _21, tmp146
	bne	a5,zero,.L27	#, tmp148,,
# problem33.c:76:         assert(fabs(evaluate_polynomial(coeffs, ncoeff, solution)) < 1e-3);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,76		#,
	lla	a1,.LC3	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L27:
	mv	sp,s1	#, saved_stack.2_31
# problem33.c:65:     for (int i = 0; i < 100; i++) {
	lw	a5,-148(s0)		# tmp151, i
	addiw	a5,a5,1	#, tmp149, tmp150
	sw	a5,-148(s0)	# tmp149, i
.L23:
# problem33.c:65:     for (int i = 0; i < 100; i++) {
	lw	a5,-148(s0)		# tmp153, i
	sext.w	a4,a5	# tmp154, tmp152
	li	a5,99		# tmp155,
	ble	a4,a5,.L28	#, tmp154, tmp155,
# problem33.c:79:     return 0;
	li	a5,0		# _29,
# problem33.c:80: }
	mv	a4,a5	# <retval>, _29
	la	a5,__stack_chk_guard		# tmp157,
	ld	a3, -104(s0)	# tmp160, D.3554
	ld	a5, 0(a5)	# tmp158, __stack_chk_guard
	xor	a5, a3, a5	# tmp158, tmp160
	li	a3, 0	# tmp160
	beq	a5,zero,.L30	#, tmp158,,
	call	__stack_chk_fail@plt	#
.L30:
	mv	a0,a4	#, <retval>
	addi	sp,s0,-160	#,,
	ld	ra,152(sp)		#,
	ld	s0,144(sp)		#,
	ld	s1,136(sp)		#,
	ld	s2,128(sp)		#,
	ld	s3,120(sp)		#,
	ld	s4,112(sp)		#,
	ld	s5,104(sp)		#,
	ld	s6,96(sp)		#,
	ld	s7,88(sp)		#,
	ld	s8,80(sp)		#,
	ld	s9,72(sp)		#,
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
