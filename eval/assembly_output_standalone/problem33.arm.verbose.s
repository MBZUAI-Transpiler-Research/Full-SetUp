	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
// eval/problem33//code.c:5:     double ans = 0.0;
	str	xzr, [sp, 32]	//, ans
// eval/problem33//code.c:9:     value = xs[0];
	ldr	x0, [sp, 8]	// tmp113, xs
	ldr	d0, [x0]	// tmp114, *xs_36(D)
	str	d0, [sp, 40]	// tmp114, value
// eval/problem33//code.c:10:     for (i = 1; i < size; i++) {
	mov	w0, 1	// tmp115,
	str	w0, [sp, 16]	// tmp115, i
// eval/problem33//code.c:10:     for (i = 1; i < size; i++) {
	b	.L2		//
.L5:
// eval/problem33//code.c:11:         x_pow = 1.0;
	fmov	d0, 1.0e+0	// tmp116,
	str	d0, [sp, 56]	// tmp116, x_pow
// eval/problem33//code.c:12:         for (int j = 0; j < i; j++) {
	str	wzr, [sp, 20]	//, j
// eval/problem33//code.c:12:         for (int j = 0; j < i; j++) {
	b	.L3		//
.L4:
// eval/problem33//code.c:13:             x_pow *= ans;
	ldr	d1, [sp, 56]	// tmp118, x_pow
	ldr	d0, [sp, 32]	// tmp119, ans
	fmul	d0, d1, d0	// tmp117, tmp118, tmp119
	str	d0, [sp, 56]	// tmp117, x_pow
// eval/problem33//code.c:12:         for (int j = 0; j < i; j++) {
	ldr	w0, [sp, 20]	// tmp121, j
	add	w0, w0, 1	// tmp120, tmp121,
	str	w0, [sp, 20]	// tmp120, j
.L3:
// eval/problem33//code.c:12:         for (int j = 0; j < i; j++) {
	ldr	w1, [sp, 20]	// tmp122, j
	ldr	w0, [sp, 16]	// tmp123, i
	cmp	w1, w0	// tmp122, tmp123
	blt	.L4		//,
// eval/problem33//code.c:15:         value += xs[i] * x_pow;
	ldrsw	x0, [sp, 16]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 8]	// tmp124, xs
	add	x0, x1, x0	// _3, tmp124, _2
	ldr	d1, [x0]	// _4, *_3
// eval/problem33//code.c:15:         value += xs[i] * x_pow;
	ldr	d0, [sp, 56]	// tmp125, x_pow
	fmul	d0, d1, d0	// _5, _4, tmp125
// eval/problem33//code.c:15:         value += xs[i] * x_pow;
	ldr	d1, [sp, 40]	// tmp127, value
	fadd	d0, d1, d0	// tmp126, tmp127, _5
	str	d0, [sp, 40]	// tmp126, value
// eval/problem33//code.c:10:     for (i = 1; i < size; i++) {
	ldr	w0, [sp, 16]	// tmp129, i
	add	w0, w0, 1	// tmp128, tmp129,
	str	w0, [sp, 16]	// tmp128, i
.L2:
// eval/problem33//code.c:10:     for (i = 1; i < size; i++) {
	ldr	w1, [sp, 16]	// tmp130, i
	ldr	w0, [sp, 4]	// tmp131, size
	cmp	w1, w0	// tmp130, tmp131
	blt	.L5		//,
// eval/problem33//code.c:18:     while (fabs(value) > 1e-6) {
	b	.L6		//
.L15:
// eval/problem33//code.c:19:         driv = 0.0;
	str	xzr, [sp, 48]	//, driv
// eval/problem33//code.c:20:         for (i = 1; i < size; i++) {
	mov	w0, 1	// tmp132,
	str	w0, [sp, 16]	// tmp132, i
// eval/problem33//code.c:20:         for (i = 1; i < size; i++) {
	b	.L7		//
.L10:
// eval/problem33//code.c:21:             x_pow = 1.0;
	fmov	d0, 1.0e+0	// tmp133,
	str	d0, [sp, 56]	// tmp133, x_pow
// eval/problem33//code.c:22:             for (int j = 1; j < i; j++) {
	mov	w0, 1	// tmp134,
	str	w0, [sp, 24]	// tmp134, j
// eval/problem33//code.c:22:             for (int j = 1; j < i; j++) {
	b	.L8		//
.L9:
// eval/problem33//code.c:23:                 x_pow *= ans;
	ldr	d1, [sp, 56]	// tmp136, x_pow
	ldr	d0, [sp, 32]	// tmp137, ans
	fmul	d0, d1, d0	// tmp135, tmp136, tmp137
	str	d0, [sp, 56]	// tmp135, x_pow
// eval/problem33//code.c:22:             for (int j = 1; j < i; j++) {
	ldr	w0, [sp, 24]	// tmp139, j
	add	w0, w0, 1	// tmp138, tmp139,
	str	w0, [sp, 24]	// tmp138, j
.L8:
// eval/problem33//code.c:22:             for (int j = 1; j < i; j++) {
	ldr	w1, [sp, 24]	// tmp140, j
	ldr	w0, [sp, 16]	// tmp141, i
	cmp	w1, w0	// tmp140, tmp141
	blt	.L9		//,
// eval/problem33//code.c:25:             driv += i * xs[i] * x_pow;
	ldr	w0, [sp, 16]	// tmp142, i
	scvtf	d1, w0	// _6, tmp142
// eval/problem33//code.c:25:             driv += i * xs[i] * x_pow;
	ldrsw	x0, [sp, 16]	// _7, i
	lsl	x0, x0, 3	// _8, _7,
	ldr	x1, [sp, 8]	// tmp143, xs
	add	x0, x1, x0	// _9, tmp143, _8
	ldr	d0, [x0]	// _10, *_9
// eval/problem33//code.c:25:             driv += i * xs[i] * x_pow;
	fmul	d1, d1, d0	// _11, _6, _10
// eval/problem33//code.c:25:             driv += i * xs[i] * x_pow;
	ldr	d0, [sp, 56]	// tmp144, x_pow
	fmul	d0, d1, d0	// _12, _11, tmp144
// eval/problem33//code.c:25:             driv += i * xs[i] * x_pow;
	ldr	d1, [sp, 48]	// tmp146, driv
	fadd	d0, d1, d0	// tmp145, tmp146, _12
	str	d0, [sp, 48]	// tmp145, driv
// eval/problem33//code.c:20:         for (i = 1; i < size; i++) {
	ldr	w0, [sp, 16]	// tmp148, i
	add	w0, w0, 1	// tmp147, tmp148,
	str	w0, [sp, 16]	// tmp147, i
.L7:
// eval/problem33//code.c:20:         for (i = 1; i < size; i++) {
	ldr	w1, [sp, 16]	// tmp149, i
	ldr	w0, [sp, 4]	// tmp150, size
	cmp	w1, w0	// tmp149, tmp150
	blt	.L10		//,
// eval/problem33//code.c:27:         ans = ans - value / driv;
	ldr	d0, [sp, 48]	// tmp151, driv
	ldr	d1, [sp, 40]	// tmp152, value
	fdiv	d0, d1, d0	// _13, tmp152, tmp151
// eval/problem33//code.c:27:         ans = ans - value / driv;
	ldr	d1, [sp, 32]	// tmp154, ans
	fsub	d0, d1, d0	// tmp153, tmp154, _13
	str	d0, [sp, 32]	// tmp153, ans
// eval/problem33//code.c:29:         value = xs[0];
	ldr	x0, [sp, 8]	// tmp155, xs
	ldr	d0, [x0]	// tmp156, *xs_36(D)
	str	d0, [sp, 40]	// tmp156, value
// eval/problem33//code.c:30:         for (i = 1; i < size; i++) {
	mov	w0, 1	// tmp157,
	str	w0, [sp, 16]	// tmp157, i
// eval/problem33//code.c:30:         for (i = 1; i < size; i++) {
	b	.L11		//
.L14:
// eval/problem33//code.c:31:             x_pow = 1.0;
	fmov	d0, 1.0e+0	// tmp158,
	str	d0, [sp, 56]	// tmp158, x_pow
// eval/problem33//code.c:32:             for (int j = 0; j < i; j++) {
	str	wzr, [sp, 28]	//, j
// eval/problem33//code.c:32:             for (int j = 0; j < i; j++) {
	b	.L12		//
.L13:
// eval/problem33//code.c:33:                 x_pow *= ans;
	ldr	d1, [sp, 56]	// tmp160, x_pow
	ldr	d0, [sp, 32]	// tmp161, ans
	fmul	d0, d1, d0	// tmp159, tmp160, tmp161
	str	d0, [sp, 56]	// tmp159, x_pow
// eval/problem33//code.c:32:             for (int j = 0; j < i; j++) {
	ldr	w0, [sp, 28]	// tmp163, j
	add	w0, w0, 1	// tmp162, tmp163,
	str	w0, [sp, 28]	// tmp162, j
.L12:
// eval/problem33//code.c:32:             for (int j = 0; j < i; j++) {
	ldr	w1, [sp, 28]	// tmp164, j
	ldr	w0, [sp, 16]	// tmp165, i
	cmp	w1, w0	// tmp164, tmp165
	blt	.L13		//,
// eval/problem33//code.c:35:             value += xs[i] * x_pow;
	ldrsw	x0, [sp, 16]	// _14, i
	lsl	x0, x0, 3	// _15, _14,
	ldr	x1, [sp, 8]	// tmp166, xs
	add	x0, x1, x0	// _16, tmp166, _15
	ldr	d1, [x0]	// _17, *_16
// eval/problem33//code.c:35:             value += xs[i] * x_pow;
	ldr	d0, [sp, 56]	// tmp167, x_pow
	fmul	d0, d1, d0	// _18, _17, tmp167
// eval/problem33//code.c:35:             value += xs[i] * x_pow;
	ldr	d1, [sp, 40]	// tmp169, value
	fadd	d0, d1, d0	// tmp168, tmp169, _18
	str	d0, [sp, 40]	// tmp168, value
// eval/problem33//code.c:30:         for (i = 1; i < size; i++) {
	ldr	w0, [sp, 16]	// tmp171, i
	add	w0, w0, 1	// tmp170, tmp171,
	str	w0, [sp, 16]	// tmp170, i
.L11:
// eval/problem33//code.c:30:         for (i = 1; i < size; i++) {
	ldr	w1, [sp, 16]	// tmp172, i
	ldr	w0, [sp, 4]	// tmp173, size
	cmp	w1, w0	// tmp172, tmp173
	blt	.L14		//,
.L6:
// eval/problem33//code.c:18:     while (fabs(value) > 1e-6) {
	ldr	d0, [sp, 40]	// tmp174, value
	fabs	d0, d0	// _19, tmp174
// eval/problem33//code.c:18:     while (fabs(value) > 1e-6) {
	adrp	x0, .LC0	// tmp178,
	ldr	d1, [x0, #:lo12:.LC0]	// tmp175,
	fcmpe	d0, d1	// _19, tmp175
	bgt	.L15		//,
// eval/problem33//code.c:39:     return ans;
	ldr	d0, [sp, 32]	// _40, ans
// eval/problem33//code.c:40: }
	add	sp, sp, 64	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.word	-1598689907
	.word	1051772663
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
