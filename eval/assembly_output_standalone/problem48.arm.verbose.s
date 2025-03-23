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
.LFB6:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// l, l
	str	w1, [sp, 4]	// size, size
// eval/problem48//code.c:6:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 20]	//, i
// eval/problem48//code.c:6:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L7:
// eval/problem48//code.c:7:         for (int j = i + 1; j < size; j++) {
	ldr	w0, [sp, 20]	// tmp133, i
	add	w0, w0, 1	// tmp132, tmp133,
	str	w0, [sp, 24]	// tmp132, j
// eval/problem48//code.c:7:         for (int j = i + 1; j < size; j++) {
	b	.L3		//
.L6:
// eval/problem48//code.c:8:             if (l[i] > l[j]) {
	ldrsw	x0, [sp, 20]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp134, l
	add	x0, x1, x0	// _3, tmp134, _2
	ldr	s1, [x0]	// _4, *_3
// eval/problem48//code.c:8:             if (l[i] > l[j]) {
	ldrsw	x0, [sp, 24]	// _5, j
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 8]	// tmp135, l
	add	x0, x1, x0	// _7, tmp135, _6
	ldr	s0, [x0]	// _8, *_7
// eval/problem48//code.c:8:             if (l[i] > l[j]) {
	fcmpe	s1, s0	// _4, _8
	bgt	.L10		//,
	b	.L4		//
.L10:
// eval/problem48//code.c:9:                 float temp = l[i];
	ldrsw	x0, [sp, 20]	// _9, i
	lsl	x0, x0, 2	// _10, _9,
	ldr	x1, [sp, 8]	// tmp136, l
	add	x0, x1, x0	// _11, tmp136, _10
// eval/problem48//code.c:9:                 float temp = l[i];
	ldr	s0, [x0]	// tmp137, *_11
	str	s0, [sp, 28]	// tmp137, temp
// eval/problem48//code.c:10:                 l[i] = l[j];
	ldrsw	x0, [sp, 24]	// _12, j
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 8]	// tmp138, l
	add	x1, x1, x0	// _14, tmp138, _13
// eval/problem48//code.c:10:                 l[i] = l[j];
	ldrsw	x0, [sp, 20]	// _15, i
	lsl	x0, x0, 2	// _16, _15,
	ldr	x2, [sp, 8]	// tmp139, l
	add	x0, x2, x0	// _17, tmp139, _16
// eval/problem48//code.c:10:                 l[i] = l[j];
	ldr	s0, [x1]	// _18, *_14
// eval/problem48//code.c:10:                 l[i] = l[j];
	str	s0, [x0]	// _18, *_17
// eval/problem48//code.c:11:                 l[j] = temp;
	ldrsw	x0, [sp, 24]	// _19, j
	lsl	x0, x0, 2	// _20, _19,
	ldr	x1, [sp, 8]	// tmp140, l
	add	x0, x1, x0	// _21, tmp140, _20
// eval/problem48//code.c:11:                 l[j] = temp;
	ldr	s0, [sp, 28]	// tmp141, temp
	str	s0, [x0]	// tmp141, *_21
.L4:
// eval/problem48//code.c:7:         for (int j = i + 1; j < size; j++) {
	ldr	w0, [sp, 24]	// tmp143, j
	add	w0, w0, 1	// tmp142, tmp143,
	str	w0, [sp, 24]	// tmp142, j
.L3:
// eval/problem48//code.c:7:         for (int j = i + 1; j < size; j++) {
	ldr	w1, [sp, 24]	// tmp144, j
	ldr	w0, [sp, 4]	// tmp145, size
	cmp	w1, w0	// tmp144, tmp145
	blt	.L6		//,
// eval/problem48//code.c:6:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 20]	// tmp147, i
	add	w0, w0, 1	// tmp146, tmp147,
	str	w0, [sp, 20]	// tmp146, i
.L2:
// eval/problem48//code.c:6:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 20]	// tmp148, i
	ldr	w0, [sp, 4]	// tmp149, size
	cmp	w1, w0	// tmp148, tmp149
	blt	.L7		//,
// eval/problem48//code.c:15:     if (size % 2 == 1) return l[size / 2];
	ldr	w0, [sp, 4]	// tmp150, size
	cmp	w0, 0	// tmp150,
	and	w0, w0, 1	// tmp151, tmp150,
	csneg	w0, w0, w0, ge	// _22, tmp151, tmp151,
// eval/problem48//code.c:15:     if (size % 2 == 1) return l[size / 2];
	cmp	w0, 1	// _22,
	bne	.L8		//,
// eval/problem48//code.c:15:     if (size % 2 == 1) return l[size / 2];
	ldr	w0, [sp, 4]	// tmp152, size
	lsr	w1, w0, 31	// tmp153, tmp152,
	add	w0, w1, w0	// tmp154, tmp153, tmp152
	asr	w0, w0, 1	// tmp155, tmp154,
	sxtw	x0, w0	// _24, _23
// eval/problem48//code.c:15:     if (size % 2 == 1) return l[size / 2];
	lsl	x0, x0, 2	// _25, _24,
	ldr	x1, [sp, 8]	// tmp156, l
	add	x0, x1, x0	// _26, tmp156, _25
	ldr	s0, [x0]	// _41, *_26
	b	.L9		//
.L8:
// eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	ldr	w0, [sp, 4]	// tmp157, size
	lsr	w1, w0, 31	// tmp158, tmp157,
	add	w0, w1, w0	// tmp159, tmp158, tmp157
	asr	w0, w0, 1	// tmp160, tmp159,
	sxtw	x0, w0	// _28, _27
// eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	lsl	x0, x0, 2	// _29, _28,
	ldr	x1, [sp, 8]	// tmp161, l
	add	x0, x1, x0	// _30, tmp161, _29
	ldr	s1, [x0]	// _31, *_30
// eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	ldr	w0, [sp, 4]	// tmp162, size
	lsr	w1, w0, 31	// tmp163, tmp162,
	add	w0, w1, w0	// tmp164, tmp163, tmp162
	asr	w0, w0, 1	// tmp165, tmp164,
	sxtw	x0, w0	// _33, _32
// eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	lsl	x0, x0, 2	// _34, _33,
	sub	x0, x0, #4	// _35, _34,
	ldr	x1, [sp, 8]	// tmp166, l
	add	x0, x1, x0	// _36, tmp166, _35
	ldr	s0, [x0]	// _37, *_36
// eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	fadd	s1, s1, s0	// _38, _31, _37
// eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	fmov	s0, 5.0e-1	// tmp167,
	fmul	s0, s1, s0	// _41, _38, tmp167
.L9:
// eval/problem48//code.c:17: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
