	.arch armv8-a
	.file	"code.c"
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
	str	x0, [sp, 24]	// numbers, numbers
	str	w1, [sp, 20]	// size, size
	str	x2, [sp, 8]	// out, out
// eval/problem21//code.c:6:     float min_diff = FLT_MAX;
	mov	w0, 2139095039	// tmp151,
	fmov	s0, w0	// tmp118, tmp151
	str	s0, [sp, 44]	// tmp118, min_diff
// eval/problem21//code.c:9:     out[0] = numbers[0];
	ldr	x0, [sp, 24]	// tmp119, numbers
	ldr	s0, [x0]	// _1, *numbers_38(D)
// eval/problem21//code.c:9:     out[0] = numbers[0];
	ldr	x0, [sp, 8]	// tmp120, out
	str	s0, [x0]	// _1, *out_39(D)
// eval/problem21//code.c:10:     out[1] = numbers[1];
	ldr	x0, [sp, 8]	// tmp121, out
	add	x0, x0, 4	// _2, tmp121,
// eval/problem21//code.c:10:     out[1] = numbers[1];
	ldr	x1, [sp, 24]	// tmp122, numbers
	ldr	s0, [x1, 4]	// _3, MEM[(float *)numbers_38(D) + 4B]
	str	s0, [x0]	// _3, *_2
// eval/problem21//code.c:12:     for (i = 0; i < size; i++) {
	str	wzr, [sp, 48]	//, i
// eval/problem21//code.c:12:     for (i = 0; i < size; i++) {
	b	.L2		//
.L7:
// eval/problem21//code.c:13:         for (j = i + 1; j < size; j++) {
	ldr	w0, [sp, 48]	// tmp124, i
	add	w0, w0, 1	// tmp123, tmp124,
	str	w0, [sp, 52]	// tmp123, j
// eval/problem21//code.c:13:         for (j = i + 1; j < size; j++) {
	b	.L3		//
.L6:
// eval/problem21//code.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	ldrsw	x0, [sp, 48]	// _4, i
	lsl	x0, x0, 2	// _5, _4,
	ldr	x1, [sp, 24]	// tmp125, numbers
	add	x0, x1, x0	// _6, tmp125, _5
	ldr	s1, [x0]	// _7, *_6
// eval/problem21//code.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	ldrsw	x0, [sp, 52]	// _8, j
	lsl	x0, x0, 2	// _9, _8,
	ldr	x1, [sp, 24]	// tmp126, numbers
	add	x0, x1, x0	// _10, tmp126, _9
	ldr	s0, [x0]	// _11, *_10
// eval/problem21//code.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	fsub	s0, s1, s0	// _12, _7, _11
// eval/problem21//code.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	fabs	s0, s0	// tmp127, _12
	str	s0, [sp, 60]	// tmp127, diff
// eval/problem21//code.c:15:             if (diff < min_diff) {
	ldr	s1, [sp, 60]	// tmp128, diff
	ldr	s0, [sp, 44]	// tmp129, min_diff
	fcmpe	s1, s0	// tmp128, tmp129
	bmi	.L10		//,
	b	.L4		//
.L10:
// eval/problem21//code.c:16:                 min_diff = diff;
	ldr	s0, [sp, 60]	// tmp130, diff
	str	s0, [sp, 44]	// tmp130, min_diff
// eval/problem21//code.c:17:                 out[0] = numbers[i];
	ldrsw	x0, [sp, 48]	// _13, i
	lsl	x0, x0, 2	// _14, _13,
	ldr	x1, [sp, 24]	// tmp131, numbers
	add	x0, x1, x0	// _15, tmp131, _14
	ldr	s0, [x0]	// _16, *_15
// eval/problem21//code.c:17:                 out[0] = numbers[i];
	ldr	x0, [sp, 8]	// tmp132, out
	str	s0, [x0]	// _16, *out_39(D)
// eval/problem21//code.c:18:                 out[1] = numbers[j];
	ldrsw	x0, [sp, 52]	// _17, j
	lsl	x0, x0, 2	// _18, _17,
	ldr	x1, [sp, 24]	// tmp133, numbers
	add	x1, x1, x0	// _19, tmp133, _18
// eval/problem21//code.c:18:                 out[1] = numbers[j];
	ldr	x0, [sp, 8]	// tmp134, out
	add	x0, x0, 4	// _20, tmp134,
// eval/problem21//code.c:18:                 out[1] = numbers[j];
	ldr	s0, [x1]	// _21, *_19
// eval/problem21//code.c:18:                 out[1] = numbers[j];
	str	s0, [x0]	// _21, *_20
.L4:
// eval/problem21//code.c:13:         for (j = i + 1; j < size; j++) {
	ldr	w0, [sp, 52]	// tmp136, j
	add	w0, w0, 1	// tmp135, tmp136,
	str	w0, [sp, 52]	// tmp135, j
.L3:
// eval/problem21//code.c:13:         for (j = i + 1; j < size; j++) {
	ldr	w1, [sp, 52]	// tmp137, j
	ldr	w0, [sp, 20]	// tmp138, size
	cmp	w1, w0	// tmp137, tmp138
	blt	.L6		//,
// eval/problem21//code.c:12:     for (i = 0; i < size; i++) {
	ldr	w0, [sp, 48]	// tmp140, i
	add	w0, w0, 1	// tmp139, tmp140,
	str	w0, [sp, 48]	// tmp139, i
.L2:
// eval/problem21//code.c:12:     for (i = 0; i < size; i++) {
	ldr	w1, [sp, 48]	// tmp141, i
	ldr	w0, [sp, 20]	// tmp142, size
	cmp	w1, w0	// tmp141, tmp142
	blt	.L7		//,
// eval/problem21//code.c:23:     if (out[0] > out[1]) {
	ldr	x0, [sp, 8]	// tmp143, out
	ldr	s1, [x0]	// _22, *out_39(D)
// eval/problem21//code.c:23:     if (out[0] > out[1]) {
	ldr	x0, [sp, 8]	// tmp144, out
	add	x0, x0, 4	// _23, tmp144,
	ldr	s0, [x0]	// _24, *_23
// eval/problem21//code.c:23:     if (out[0] > out[1]) {
	fcmpe	s1, s0	// _22, _24
	bgt	.L11		//,
// eval/problem21//code.c:28: }
	b	.L12		//
.L11:
// eval/problem21//code.c:24:         float temp = out[0];
	ldr	x0, [sp, 8]	// tmp145, out
	ldr	s0, [x0]	// tmp146, *out_39(D)
	str	s0, [sp, 56]	// tmp146, temp
// eval/problem21//code.c:25:         out[0] = out[1];
	ldr	x0, [sp, 8]	// tmp147, out
	ldr	s0, [x0, 4]	// _25, MEM[(float *)out_39(D) + 4B]
	ldr	x0, [sp, 8]	// tmp148, out
	str	s0, [x0]	// _25, *out_39(D)
// eval/problem21//code.c:26:         out[1] = temp;
	ldr	x0, [sp, 8]	// tmp149, out
	add	x0, x0, 4	// _26, tmp149,
// eval/problem21//code.c:26:         out[1] = temp;
	ldr	s0, [sp, 56]	// tmp150, temp
	str	s0, [x0]	// tmp150, *_26
.L12:
// eval/problem21//code.c:28: }
	nop	
	add	sp, sp, 64	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
