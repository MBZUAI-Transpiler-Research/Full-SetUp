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
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// n, n
	str	w1, [sp, 4]	// size, size
// code.c:5:     int num = 0;
	str	wzr, [sp, 16]	//, num
// code.c:6:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 20]	//, i
// code.c:6:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L7:
// code.c:7:         if (n[i] > 0) {
	ldrsw	x0, [sp, 20]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp103, n
	add	x0, x1, x0	// _3, tmp103, _2
	ldr	w0, [x0]	// _4, *_3
// code.c:7:         if (n[i] > 0) {
	cmp	w0, 0	// _4,
	ble	.L3		//,
// code.c:8:             num += 1;
	ldr	w0, [sp, 16]	// tmp105, num
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [sp, 16]	// tmp104, num
	b	.L4		//
.L3:
// code.c:10:             int sum = 0;
	str	wzr, [sp, 24]	//, sum
// code.c:11:             int w = abs(n[i]);
	ldrsw	x0, [sp, 20]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 8]	// tmp106, n
	add	x0, x1, x0	// _7, tmp106, _6
	ldr	w0, [x0]	// _8, *_7
// code.c:11:             int w = abs(n[i]);
	cmp	w0, 0	// _8,
	csneg	w0, w0, w0, ge	// tmp107, _8, _8,
	str	w0, [sp, 28]	// tmp107, w
// code.c:12:             while (w >= 10) {
	b	.L5		//
.L6:
// code.c:13:                 sum += w % 10;
	ldr	w2, [sp, 28]	// tmp108, w
	mov	w0, 26215	// tmp110,
	movk	w0, 0x6666, lsl 16	// tmp110,,
	smull	x0, w2, w0	// tmp109, tmp108, tmp110
	lsr	x0, x0, 32	// tmp111, tmp109,
	asr	w1, w0, 2	// tmp112, tmp111,
	asr	w0, w2, 31	// tmp113, tmp108,
	sub	w1, w1, w0	// _9, tmp112, tmp113
	mov	w0, w1	// tmp114, _9
	lsl	w0, w0, 2	// tmp115, tmp114,
	add	w0, w0, w1	// tmp114, tmp114, _9
	lsl	w0, w0, 1	// tmp116, tmp114,
	sub	w1, w2, w0	// _9, tmp108, tmp114
// code.c:13:                 sum += w % 10;
	ldr	w0, [sp, 24]	// tmp118, sum
	add	w0, w0, w1	// tmp117, tmp118, _9
	str	w0, [sp, 24]	// tmp117, sum
// code.c:14:                 w = w / 10;
	ldr	w0, [sp, 28]	// tmp120, w
	mov	w1, 26215	// tmp122,
	movk	w1, 0x6666, lsl 16	// tmp122,,
	smull	x1, w0, w1	// tmp121, tmp120, tmp122
	lsr	x1, x1, 32	// tmp123, tmp121,
	asr	w1, w1, 2	// tmp124, tmp123,
	asr	w0, w0, 31	// tmp125, tmp120,
	sub	w0, w1, w0	// tmp119, tmp124, tmp125
	str	w0, [sp, 28]	// tmp119, w
.L5:
// code.c:12:             while (w >= 10) {
	ldr	w0, [sp, 28]	// tmp126, w
	cmp	w0, 9	// tmp126,
	bgt	.L6		//,
// code.c:16:             sum -= w;
	ldr	w1, [sp, 24]	// tmp128, sum
	ldr	w0, [sp, 28]	// tmp129, w
	sub	w0, w1, w0	// tmp127, tmp128, tmp129
	str	w0, [sp, 24]	// tmp127, sum
// code.c:17:             if (sum > 0) num += 1;
	ldr	w0, [sp, 24]	// tmp130, sum
	cmp	w0, 0	// tmp130,
	ble	.L4		//,
// code.c:17:             if (sum > 0) num += 1;
	ldr	w0, [sp, 16]	// tmp132, num
	add	w0, w0, 1	// tmp131, tmp132,
	str	w0, [sp, 16]	// tmp131, num
.L4:
// code.c:6:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 20]	// tmp134, i
	add	w0, w0, 1	// tmp133, tmp134,
	str	w0, [sp, 20]	// tmp133, i
.L2:
// code.c:6:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 20]	// tmp135, i
	ldr	w0, [sp, 4]	// tmp136, size
	cmp	w1, w0	// tmp135, tmp136
	blt	.L7		//,
// code.c:20:     return num;
	ldr	w0, [sp, 16]	// _18, num
// code.c:21: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
