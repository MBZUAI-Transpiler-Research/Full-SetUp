	.arch armv8-a
	.file	"problem33.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #64	//,,
	.cfi_def_cfa_offset 64
	str	x0, [sp, 8]	// xs, xs
	str	w1, [sp, 4]	// size, size
// problem33.c:5:     double ans = 0.0;
	str	xzr, [sp, 32]	//, ans
// problem33.c:9:     value = xs[0];
	ldr	x0, [sp, 8]	// tmp113, xs
	ldr	d0, [x0]	// tmp114, *xs_36(D)
	str	d0, [sp, 40]	// tmp114, value
// problem33.c:10:     for (i = 1; i < size; i++) {
	mov	w0, 1	// tmp115,
	str	w0, [sp, 16]	// tmp115, i
// problem33.c:10:     for (i = 1; i < size; i++) {
	b	.L2		//
.L5:
// problem33.c:11:         x_pow = 1.0;
	fmov	d0, 1.0e+0	// tmp116,
	str	d0, [sp, 56]	// tmp116, x_pow
// problem33.c:12:         for (int j = 0; j < i; j++) {
	str	wzr, [sp, 20]	//, j
// problem33.c:12:         for (int j = 0; j < i; j++) {
	b	.L3		//
.L4:
// problem33.c:13:             x_pow *= ans;
	ldr	d1, [sp, 56]	// tmp118, x_pow
	ldr	d0, [sp, 32]	// tmp119, ans
	fmul	d0, d1, d0	// tmp117, tmp118, tmp119
	str	d0, [sp, 56]	// tmp117, x_pow
// problem33.c:12:         for (int j = 0; j < i; j++) {
	ldr	w0, [sp, 20]	// tmp121, j
	add	w0, w0, 1	// tmp120, tmp121,
	str	w0, [sp, 20]	// tmp120, j
.L3:
// problem33.c:12:         for (int j = 0; j < i; j++) {
	ldr	w1, [sp, 20]	// tmp122, j
	ldr	w0, [sp, 16]	// tmp123, i
	cmp	w1, w0	// tmp122, tmp123
	blt	.L4		//,
// problem33.c:15:         value += xs[i] * x_pow;
	ldrsw	x0, [sp, 16]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 8]	// tmp124, xs
	add	x0, x1, x0	// _3, tmp124, _2
	ldr	d1, [x0]	// _4, *_3
// problem33.c:15:         value += xs[i] * x_pow;
	ldr	d0, [sp, 56]	// tmp125, x_pow
	fmul	d0, d1, d0	// _5, _4, tmp125
// problem33.c:15:         value += xs[i] * x_pow;
	ldr	d1, [sp, 40]	// tmp127, value
	fadd	d0, d1, d0	// tmp126, tmp127, _5
	str	d0, [sp, 40]	// tmp126, value
// problem33.c:10:     for (i = 1; i < size; i++) {
	ldr	w0, [sp, 16]	// tmp129, i
	add	w0, w0, 1	// tmp128, tmp129,
	str	w0, [sp, 16]	// tmp128, i
.L2:
// problem33.c:10:     for (i = 1; i < size; i++) {
	ldr	w1, [sp, 16]	// tmp130, i
	ldr	w0, [sp, 4]	// tmp131, size
	cmp	w1, w0	// tmp130, tmp131
	blt	.L5		//,
// problem33.c:18:     while (fabs(value) > 1e-6) {
	b	.L6		//
.L15:
// problem33.c:19:         driv = 0.0;
	str	xzr, [sp, 48]	//, driv
// problem33.c:20:         for (i = 1; i < size; i++) {
	mov	w0, 1	// tmp132,
	str	w0, [sp, 16]	// tmp132, i
// problem33.c:20:         for (i = 1; i < size; i++) {
	b	.L7		//
.L10:
// problem33.c:21:             x_pow = 1.0;
	fmov	d0, 1.0e+0	// tmp133,
	str	d0, [sp, 56]	// tmp133, x_pow
// problem33.c:22:             for (int j = 1; j < i; j++) {
	mov	w0, 1	// tmp134,
	str	w0, [sp, 24]	// tmp134, j
// problem33.c:22:             for (int j = 1; j < i; j++) {
	b	.L8		//
.L9:
// problem33.c:23:                 x_pow *= ans;
	ldr	d1, [sp, 56]	// tmp136, x_pow
	ldr	d0, [sp, 32]	// tmp137, ans
	fmul	d0, d1, d0	// tmp135, tmp136, tmp137
	str	d0, [sp, 56]	// tmp135, x_pow
// problem33.c:22:             for (int j = 1; j < i; j++) {
	ldr	w0, [sp, 24]	// tmp139, j
	add	w0, w0, 1	// tmp138, tmp139,
	str	w0, [sp, 24]	// tmp138, j
.L8:
// problem33.c:22:             for (int j = 1; j < i; j++) {
	ldr	w1, [sp, 24]	// tmp140, j
	ldr	w0, [sp, 16]	// tmp141, i
	cmp	w1, w0	// tmp140, tmp141
	blt	.L9		//,
// problem33.c:25:             driv += i * xs[i] * x_pow;
	ldr	w0, [sp, 16]	// tmp142, i
	scvtf	d1, w0	// _6, tmp142
// problem33.c:25:             driv += i * xs[i] * x_pow;
	ldrsw	x0, [sp, 16]	// _7, i
	lsl	x0, x0, 3	// _8, _7,
	ldr	x1, [sp, 8]	// tmp143, xs
	add	x0, x1, x0	// _9, tmp143, _8
	ldr	d0, [x0]	// _10, *_9
// problem33.c:25:             driv += i * xs[i] * x_pow;
	fmul	d1, d1, d0	// _11, _6, _10
// problem33.c:25:             driv += i * xs[i] * x_pow;
	ldr	d0, [sp, 56]	// tmp144, x_pow
	fmul	d0, d1, d0	// _12, _11, tmp144
// problem33.c:25:             driv += i * xs[i] * x_pow;
	ldr	d1, [sp, 48]	// tmp146, driv
	fadd	d0, d1, d0	// tmp145, tmp146, _12
	str	d0, [sp, 48]	// tmp145, driv
// problem33.c:20:         for (i = 1; i < size; i++) {
	ldr	w0, [sp, 16]	// tmp148, i
	add	w0, w0, 1	// tmp147, tmp148,
	str	w0, [sp, 16]	// tmp147, i
.L7:
// problem33.c:20:         for (i = 1; i < size; i++) {
	ldr	w1, [sp, 16]	// tmp149, i
	ldr	w0, [sp, 4]	// tmp150, size
	cmp	w1, w0	// tmp149, tmp150
	blt	.L10		//,
// problem33.c:27:         ans = ans - value / driv;
	ldr	d0, [sp, 48]	// tmp151, driv
	ldr	d1, [sp, 40]	// tmp152, value
	fdiv	d0, d1, d0	// _13, tmp152, tmp151
// problem33.c:27:         ans = ans - value / driv;
	ldr	d1, [sp, 32]	// tmp154, ans
	fsub	d0, d1, d0	// tmp153, tmp154, _13
	str	d0, [sp, 32]	// tmp153, ans
// problem33.c:29:         value = xs[0];
	ldr	x0, [sp, 8]	// tmp155, xs
	ldr	d0, [x0]	// tmp156, *xs_36(D)
	str	d0, [sp, 40]	// tmp156, value
// problem33.c:30:         for (i = 1; i < size; i++) {
	mov	w0, 1	// tmp157,
	str	w0, [sp, 16]	// tmp157, i
// problem33.c:30:         for (i = 1; i < size; i++) {
	b	.L11		//
.L14:
// problem33.c:31:             x_pow = 1.0;
	fmov	d0, 1.0e+0	// tmp158,
	str	d0, [sp, 56]	// tmp158, x_pow
// problem33.c:32:             for (int j = 0; j < i; j++) {
	str	wzr, [sp, 28]	//, j
// problem33.c:32:             for (int j = 0; j < i; j++) {
	b	.L12		//
.L13:
// problem33.c:33:                 x_pow *= ans;
	ldr	d1, [sp, 56]	// tmp160, x_pow
	ldr	d0, [sp, 32]	// tmp161, ans
	fmul	d0, d1, d0	// tmp159, tmp160, tmp161
	str	d0, [sp, 56]	// tmp159, x_pow
// problem33.c:32:             for (int j = 0; j < i; j++) {
	ldr	w0, [sp, 28]	// tmp163, j
	add	w0, w0, 1	// tmp162, tmp163,
	str	w0, [sp, 28]	// tmp162, j
.L12:
// problem33.c:32:             for (int j = 0; j < i; j++) {
	ldr	w1, [sp, 28]	// tmp164, j
	ldr	w0, [sp, 16]	// tmp165, i
	cmp	w1, w0	// tmp164, tmp165
	blt	.L13		//,
// problem33.c:35:             value += xs[i] * x_pow;
	ldrsw	x0, [sp, 16]	// _14, i
	lsl	x0, x0, 3	// _15, _14,
	ldr	x1, [sp, 8]	// tmp166, xs
	add	x0, x1, x0	// _16, tmp166, _15
	ldr	d1, [x0]	// _17, *_16
// problem33.c:35:             value += xs[i] * x_pow;
	ldr	d0, [sp, 56]	// tmp167, x_pow
	fmul	d0, d1, d0	// _18, _17, tmp167
// problem33.c:35:             value += xs[i] * x_pow;
	ldr	d1, [sp, 40]	// tmp169, value
	fadd	d0, d1, d0	// tmp168, tmp169, _18
	str	d0, [sp, 40]	// tmp168, value
// problem33.c:30:         for (i = 1; i < size; i++) {
	ldr	w0, [sp, 16]	// tmp171, i
	add	w0, w0, 1	// tmp170, tmp171,
	str	w0, [sp, 16]	// tmp170, i
.L11:
// problem33.c:30:         for (i = 1; i < size; i++) {
	ldr	w1, [sp, 16]	// tmp172, i
	ldr	w0, [sp, 4]	// tmp173, size
	cmp	w1, w0	// tmp172, tmp173
	blt	.L14		//,
.L6:
// problem33.c:18:     while (fabs(value) > 1e-6) {
	ldr	d0, [sp, 40]	// tmp174, value
	fabs	d0, d0	// _19, tmp174
// problem33.c:18:     while (fabs(value) > 1e-6) {
	adrp	x0, .LC0	// tmp178,
	ldr	d1, [x0, #:lo12:.LC0]	// tmp175,
	fcmpe	d0, d1	// _19, tmp175
	bgt	.L15		//,
// problem33.c:39:     return ans;
	ldr	d0, [sp, 32]	// _40, ans
// problem33.c:40: }
	add	sp, sp, 64	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.align	2
	.global	evaluate_polynomial
	.type	evaluate_polynomial, %function
evaluate_polynomial:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #64	//,,
	.cfi_def_cfa_offset 64
	str	x0, [sp, 24]	// coeffs, coeffs
	str	w1, [sp, 20]	// size, size
	str	d0, [sp, 8]	// x, x
// problem33.c:50:     double result = 0.0;
	str	xzr, [sp, 48]	//, result
// problem33.c:51:     double term = 1.0; 
	fmov	d0, 1.0e+0	// tmp99,
	str	d0, [sp, 56]	// tmp99, term
// problem33.c:52:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 44]	//, i
// problem33.c:52:     for (int i = 0; i < size; i++) {
	b	.L18		//
.L20:
// problem33.c:53:         if (i > 0) {
	ldr	w0, [sp, 44]	// tmp100, i
	cmp	w0, 0	// tmp100,
	ble	.L19		//,
// problem33.c:54:             term *= x; 
	ldr	d1, [sp, 56]	// tmp102, term
	ldr	d0, [sp, 8]	// tmp103, x
	fmul	d0, d1, d0	// tmp101, tmp102, tmp103
	str	d0, [sp, 56]	// tmp101, term
.L19:
// problem33.c:56:         result += coeffs[i] * term;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 24]	// tmp104, coeffs
	add	x0, x1, x0	// _3, tmp104, _2
	ldr	d1, [x0]	// _4, *_3
// problem33.c:56:         result += coeffs[i] * term;
	ldr	d0, [sp, 56]	// tmp105, term
	fmul	d0, d1, d0	// _5, _4, tmp105
// problem33.c:56:         result += coeffs[i] * term;
	ldr	d1, [sp, 48]	// tmp107, result
	fadd	d0, d1, d0	// tmp106, tmp107, _5
	str	d0, [sp, 48]	// tmp106, result
// problem33.c:52:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 44]	// tmp109, i
	add	w0, w0, 1	// tmp108, tmp109,
	str	w0, [sp, 44]	// tmp108, i
.L18:
// problem33.c:52:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 44]	// tmp110, i
	ldr	w0, [sp, 20]	// tmp111, size
	cmp	w1, w0	// tmp110, tmp111
	blt	.L20		//,
// problem33.c:58:     return result;
	ldr	d0, [sp, 48]	// _14, result
// problem33.c:59: }
	add	sp, sp, 64	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	evaluate_polynomial, .-evaluate_polynomial
	.section	.rodata
	.align	3
.LC1:
	.string	"problem33.c"
	.align	3
.LC2:
	.string	"fabs(evaluate_polynomial(coeffs, ncoeff, solution)) < 1e-3"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	.cfi_def_cfa_register 29
	stp	x19, x20, [sp, 16]	//,,
	stp	x21, x22, [sp, 32]	//,,
	stp	x23, x24, [sp, 48]	//,,
	stp	x25, x26, [sp, 64]	//,,
	str	x27, [sp, 80]	//,
	sub	sp, sp, #80	//,,
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
// problem33.c:61: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp117,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp117,
	ldr	x1, [x0]	// tmp162,
	str	x1, [x29, -8]	// tmp162, D.6659
	mov	x1, 0	// tmp162
// problem33.c:65:     for (int i = 0; i < 100; i++) {
	str	wzr, [x29, -52]	//, i
// problem33.c:65:     for (int i = 0; i < 100; i++) {
	b	.L23		//
.L31:
// problem33.c:65:     for (int i = 0; i < 100; i++) {
	mov	x0, sp	// tmp118,
	mov	x19, x0	// saved_stack.2_31, tmp118
// problem33.c:66:         ncoeff = 2 * (1 + rand() % 4);
	bl	rand		//
// problem33.c:66:         ncoeff = 2 * (1 + rand() % 4);
	negs	w1, w0	// tmp119, _1
	and	w0, w0, 3	// tmp120, _1,
	and	w1, w1, 3	// tmp121, tmp119,
	csneg	w0, w0, w1, mi	// _2, tmp120, tmp121,
// problem33.c:66:         ncoeff = 2 * (1 + rand() % 4);
	add	w0, w0, 1	// _3, _2,
// problem33.c:66:         ncoeff = 2 * (1 + rand() % 4);
	lsl	w0, w0, 1	// tmp122, _3,
	str	w0, [x29, -44]	// tmp122, ncoeff
// problem33.c:67:         double coeffs[ncoeff];
	ldr	w0, [x29, -44]	// ncoeff.0_34, ncoeff
// problem33.c:67:         double coeffs[ncoeff];
	sxtw	x1, w0	// _4, ncoeff.0_34
	sub	x1, x1, #1	// _5, _4,
	str	x1, [x29, -32]	// _6, D.6642
	sxtw	x1, w0	// _7, ncoeff.0_34
	mov	x24, x1	// _8, _7
	mov	x25, 0	// _8,
	lsr	x1, x24, 58	// tmp123, _8,
	lsl	x21, x25, 6	// _9, _8,
	orr	x21, x1, x21	// _9, tmp123, _9
	lsl	x20, x24, 6	// _9, _8,
	sxtw	x1, w0	// _12, ncoeff.0_34
	mov	x26, x1	// _13, _12
	mov	x27, 0	// _13,
	lsr	x1, x26, 58	// tmp124, _13,
	lsl	x23, x27, 6	// _14, _13,
	orr	x23, x1, x23	// _14, tmp124, _14
	lsl	x22, x26, 6	// _14, _13,
	sxtw	x0, w0	// _15, ncoeff.0_34
	lsl	x0, x0, 3	// _16, _15,
	add	x0, x0, 15	// tmp125, _16,
	lsr	x0, x0, 4	// tmp126, tmp125,
	lsl	x0, x0, 4	// tmp127, tmp126,
	and	x1, x0, -65536	// tmp129, tmp127,
	sub	x1, sp, x1	// tmp130,, tmp129
.L24:
	cmp	sp, x1	//, tmp130
	beq	.L25		//,
	sub	sp, sp, #65536	//,,
	str	xzr, [sp, 1024]	//,
	b	.L24		//
.L25:
	and	x1, x0, 65535	// tmp131, tmp127,
	sub	sp, sp, x1	//,, tmp131
	str	xzr, [sp]	//,
	and	x0, x0, 65535	// tmp132, tmp127,
	cmp	x0, 1024	// tmp132,
	bcc	.L26		//,
	str	xzr, [sp, 1024]	//,
.L26:
	add	x0, sp, 16	// tmp128,,
	add	x0, x0, 7	// tmp133, tmp128,
	lsr	x0, x0, 3	// tmp134, tmp133,
	lsl	x0, x0, 3	// tmp135, tmp134,
	str	x0, [x29, -24]	// tmp135, coeffs.1
// problem33.c:68:         for (int j = 0; j < ncoeff; j++) {
	str	wzr, [x29, -48]	//, j
// problem33.c:68:         for (int j = 0; j < ncoeff; j++) {
	b	.L27		//
.L29:
// problem33.c:69:             double coeff = -10 + rand() % 21;
	bl	rand		//
	mov	w1, w0	// _17,
// problem33.c:69:             double coeff = -10 + rand() % 21;
	mov	w0, 3121	// tmp137,
	movk	w0, 0x30c3, lsl 16	// tmp137,,
	smull	x0, w1, w0	// tmp136, _17, tmp137
	lsr	x0, x0, 32	// tmp138, tmp136,
	asr	w2, w0, 2	// tmp139, tmp138,
	asr	w0, w1, 31	// tmp140, _17,
	sub	w0, w2, w0	// _18, tmp139, tmp140
	mov	w2, 21	// tmp142,
	mul	w0, w0, w2	// tmp141, _18, tmp142
	sub	w0, w1, w0	// _18, _17, tmp141
// problem33.c:69:             double coeff = -10 + rand() % 21;
	sub	w0, w0, #10	// _19, _18,
// problem33.c:69:             double coeff = -10 + rand() % 21;
	scvtf	d0, w0	// tmp143, _19
	str	d0, [x29, -40]	// tmp143, coeff
// problem33.c:70:             if (coeff == 0) coeff = 1;
	ldr	d0, [x29, -40]	// tmp144, coeff
	fcmp	d0, #0.0	// tmp144
	bne	.L28		//,
// problem33.c:70:             if (coeff == 0) coeff = 1;
	fmov	d0, 1.0e+0	// tmp145,
	str	d0, [x29, -40]	// tmp145, coeff
.L28:
// problem33.c:71:             coeffs[j] = coeff;
	ldr	x0, [x29, -24]	// tmp146, coeffs.1
	ldrsw	x1, [x29, -48]	// tmp147, j
	ldr	d0, [x29, -40]	// tmp148, coeff
	str	d0, [x0, x1, lsl 3]	// tmp148, (*coeffs.1_41)[j_23]
// problem33.c:68:         for (int j = 0; j < ncoeff; j++) {
	ldr	w0, [x29, -48]	// tmp150, j
	add	w0, w0, 1	// tmp149, tmp150,
	str	w0, [x29, -48]	// tmp149, j
.L27:
// problem33.c:68:         for (int j = 0; j < ncoeff; j++) {
	ldr	w1, [x29, -48]	// tmp151, j
	ldr	w0, [x29, -44]	// tmp152, ncoeff
	cmp	w1, w0	// tmp151, tmp152
	blt	.L29		//,
// problem33.c:74:         solution = func0(coeffs, ncoeff);
	ldr	w1, [x29, -44]	//, ncoeff
	ldr	x0, [x29, -24]	//, coeffs.1
	bl	func0		//
	str	d0, [x29, -16]	//, solution
// problem33.c:76:         assert(fabs(evaluate_polynomial(coeffs, ncoeff, solution)) < 1e-3);
	ldr	d0, [x29, -16]	//, solution
	ldr	w1, [x29, -44]	//, ncoeff
	ldr	x0, [x29, -24]	//, coeffs.1
	bl	evaluate_polynomial		//
// problem33.c:76:         assert(fabs(evaluate_polynomial(coeffs, ncoeff, solution)) < 1e-3);
	fabs	d0, d0	// _21, _20
	adrp	x0, .LC3	// tmp167,
	ldr	d1, [x0, #:lo12:.LC3]	// tmp153,
	fcmpe	d0, d1	// _21, tmp153
	bmi	.L30		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp154,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp154,
	mov	w2, 76	//,
	adrp	x0, .LC1	// tmp155,
	add	x1, x0, :lo12:.LC1	//, tmp155,
	adrp	x0, .LC2	// tmp156,
	add	x0, x0, :lo12:.LC2	//, tmp156,
	bl	__assert_fail		//
.L30:
	mov	sp, x19	//, saved_stack.2_31
// problem33.c:65:     for (int i = 0; i < 100; i++) {
	ldr	w0, [x29, -52]	// tmp158, i
	add	w0, w0, 1	// tmp157, tmp158,
	str	w0, [x29, -52]	// tmp157, i
.L23:
// problem33.c:65:     for (int i = 0; i < 100; i++) {
	ldr	w0, [x29, -52]	// tmp159, i
	cmp	w0, 99	// tmp159,
	ble	.L31		//,
// problem33.c:79:     return 0;
	mov	w0, 0	// _29,
// problem33.c:80: }
	mov	w1, w0	// <retval>, _29
	adrp	x0, :got:__stack_chk_guard	// tmp161,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp161,
	ldr	x3, [x29, -8]	// tmp163, D.6659
	ldr	x2, [x0]	// tmp164,
	subs	x3, x3, x2	// tmp163, tmp164
	mov	x2, 0	// tmp164
	beq	.L33		//,
	bl	__stack_chk_fail		//
.L33:
	mov	w0, w1	//, <retval>
	mov	sp, x29	//,
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x21, x22, [sp, 32]	//,,
	ldp	x23, x24, [sp, 48]	//,,
	ldp	x25, x26, [sp, 64]	//,,
	ldr	x27, [sp, 80]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa 31, 0
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC0:
	.word	-1598689907
	.word	1051772663
	.align	3
.LC3:
	.word	-755914244
	.word	1062232653
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
