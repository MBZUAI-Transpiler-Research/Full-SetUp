	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 40]	// l, l
	str	w1, [sp, 36]	// count, count
	str	x2, [sp, 24]	// out_count, out_count
// code.c:5:     float* out = (float*)malloc(count * sizeof(float));
	ldrsw	x0, [sp, 36]	// _1, count
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 56]	// tmp109, out
// code.c:6:     *out_count = 0;
	ldr	x0, [sp, 24]	// tmp110, out_count
	str	wzr, [x0]	//, *out_count_24(D)
// code.c:8:     for (int i = 0; i < count; i++) {
	str	wzr, [sp, 52]	//, i
// code.c:8:     for (int i = 0; i < count; i++) {
	b	.L2		//
.L5:
// code.c:9:         if (l[i] > 0) {
	ldrsw	x0, [sp, 52]	// _3, i
	lsl	x0, x0, 2	// _4, _3,
	ldr	x1, [sp, 40]	// tmp111, l
	add	x0, x1, x0	// _5, tmp111, _4
	ldr	s0, [x0]	// _6, *_5
// code.c:9:         if (l[i] > 0) {
	fcmpe	s0, #0.0	// _6
	bgt	.L7		//,
	b	.L3		//
.L7:
// code.c:10:             out[(*out_count)++] = l[i];
	ldrsw	x0, [sp, 52]	// _7, i
	lsl	x0, x0, 2	// _8, _7,
	ldr	x1, [sp, 40]	// tmp112, l
	add	x1, x1, x0	// _9, tmp112, _8
// code.c:10:             out[(*out_count)++] = l[i];
	ldr	x0, [sp, 24]	// tmp113, out_count
	ldr	w0, [x0]	// _10, *out_count_24(D)
// code.c:10:             out[(*out_count)++] = l[i];
	add	w3, w0, 1	// _12, _10,
	ldr	x2, [sp, 24]	// tmp114, out_count
	str	w3, [x2]	// _12, *out_count_24(D)
	sxtw	x0, w0	// _13, _10
// code.c:10:             out[(*out_count)++] = l[i];
	lsl	x0, x0, 2	// _14, _13,
	ldr	x2, [sp, 56]	// tmp115, out
	add	x0, x2, x0	// _15, tmp115, _14
// code.c:10:             out[(*out_count)++] = l[i];
	ldr	s0, [x1]	// _16, *_9
// code.c:10:             out[(*out_count)++] = l[i];
	str	s0, [x0]	// _16, *_15
.L3:
// code.c:8:     for (int i = 0; i < count; i++) {
	ldr	w0, [sp, 52]	// tmp117, i
	add	w0, w0, 1	// tmp116, tmp117,
	str	w0, [sp, 52]	// tmp116, i
.L2:
// code.c:8:     for (int i = 0; i < count; i++) {
	ldr	w1, [sp, 52]	// tmp118, i
	ldr	w0, [sp, 36]	// tmp119, count
	cmp	w1, w0	// tmp118, tmp119
	blt	.L5		//,
// code.c:14:     return out;
	ldr	x0, [sp, 56]	// _27, out
// code.c:15: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
