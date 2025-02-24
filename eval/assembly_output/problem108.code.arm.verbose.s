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
	str	w0, [sp, 28]	// n, n
// code.c:5:     int* counts = (int*)malloc(2 * sizeof(int));
	mov	x0, 8	//,
	bl	malloc		//
	str	x0, [sp, 56]	// tmp104, counts
// code.c:6:     counts[0] = 0;
	ldr	x0, [sp, 56]	// tmp105, counts
	str	wzr, [x0]	//, *counts_18
// code.c:7:     counts[1] = 0;
	ldr	x0, [sp, 56]	// tmp106, counts
	add	x0, x0, 4	// _1, tmp106,
// code.c:7:     counts[1] = 0;
	str	wzr, [x0]	//, *_1
// code.c:9:     for (int i = 1; i <= n; i++) {
	mov	w0, 1	// tmp107,
	str	w0, [sp, 40]	// tmp107, i
// code.c:9:     for (int i = 1; i <= n; i++) {
	b	.L2		//
.L7:
// code.c:10:         int reversed = 0, original = i;
	str	wzr, [sp, 44]	//, reversed
// code.c:10:         int reversed = 0, original = i;
	ldr	w0, [sp, 40]	// tmp108, i
	str	w0, [sp, 52]	// tmp108, original
// code.c:12:         int number = i;
	ldr	w0, [sp, 40]	// tmp109, i
	str	w0, [sp, 48]	// tmp109, number
// code.c:13:         while (number != 0) {
	b	.L3		//
.L4:
// code.c:14:             reversed = reversed * 10 + number % 10;
	ldr	w1, [sp, 44]	// tmp110, reversed
	mov	w0, w1	// tmp111, tmp110
	lsl	w0, w0, 2	// tmp112, tmp111,
	add	w0, w0, w1	// tmp111, tmp111, tmp110
	lsl	w0, w0, 1	// tmp113, tmp111,
	mov	w3, w0	// _2, tmp111
// code.c:14:             reversed = reversed * 10 + number % 10;
	ldr	w2, [sp, 48]	// tmp114, number
	mov	w0, 26215	// tmp116,
	movk	w0, 0x6666, lsl 16	// tmp116,,
	smull	x0, w2, w0	// tmp115, tmp114, tmp116
	lsr	x0, x0, 32	// tmp117, tmp115,
	asr	w1, w0, 2	// tmp118, tmp117,
	asr	w0, w2, 31	// tmp119, tmp114,
	sub	w1, w1, w0	// _3, tmp118, tmp119
	mov	w0, w1	// tmp120, _3
	lsl	w0, w0, 2	// tmp121, tmp120,
	add	w0, w0, w1	// tmp120, tmp120, _3
	lsl	w0, w0, 1	// tmp122, tmp120,
	sub	w1, w2, w0	// _3, tmp114, tmp120
// code.c:14:             reversed = reversed * 10 + number % 10;
	add	w0, w3, w1	// tmp123, _2, _3
	str	w0, [sp, 44]	// tmp123, reversed
// code.c:15:             number /= 10;
	ldr	w0, [sp, 48]	// tmp125, number
	mov	w1, 26215	// tmp127,
	movk	w1, 0x6666, lsl 16	// tmp127,,
	smull	x1, w0, w1	// tmp126, tmp125, tmp127
	lsr	x1, x1, 32	// tmp128, tmp126,
	asr	w1, w1, 2	// tmp129, tmp128,
	asr	w0, w0, 31	// tmp130, tmp125,
	sub	w0, w1, w0	// tmp124, tmp129, tmp130
	str	w0, [sp, 48]	// tmp124, number
.L3:
// code.c:13:         while (number != 0) {
	ldr	w0, [sp, 48]	// tmp131, number
	cmp	w0, 0	// tmp131,
	bne	.L4		//,
// code.c:18:         if (original == reversed) {
	ldr	w1, [sp, 52]	// tmp132, original
	ldr	w0, [sp, 44]	// tmp133, reversed
	cmp	w1, w0	// tmp132, tmp133
	bne	.L5		//,
// code.c:19:             if (original % 2 == 0) counts[0]++;
	ldr	w0, [sp, 52]	// original.0_4, original
	and	w0, w0, 1	// _5, original.0_4,
// code.c:19:             if (original % 2 == 0) counts[0]++;
	cmp	w0, 0	// _5,
	bne	.L6		//,
// code.c:19:             if (original % 2 == 0) counts[0]++;
	ldr	x0, [sp, 56]	// tmp134, counts
	ldr	w0, [x0]	// _6, *counts_18
// code.c:19:             if (original % 2 == 0) counts[0]++;
	add	w1, w0, 1	// _7, _6,
	ldr	x0, [sp, 56]	// tmp135, counts
	str	w1, [x0]	// _7, *counts_18
	b	.L5		//
.L6:
// code.c:20:             else counts[1]++;
	ldr	x0, [sp, 56]	// tmp136, counts
	add	x0, x0, 4	// _8, tmp136,
	ldr	w1, [x0]	// _9, *_8
// code.c:20:             else counts[1]++;
	add	w1, w1, 1	// _10, _9,
	str	w1, [x0]	// _10, *_8
.L5:
// code.c:9:     for (int i = 1; i <= n; i++) {
	ldr	w0, [sp, 40]	// tmp138, i
	add	w0, w0, 1	// tmp137, tmp138,
	str	w0, [sp, 40]	// tmp137, i
.L2:
// code.c:9:     for (int i = 1; i <= n; i++) {
	ldr	w1, [sp, 40]	// tmp139, i
	ldr	w0, [sp, 28]	// tmp140, n
	cmp	w1, w0	// tmp139, tmp140
	ble	.L7		//,
// code.c:24:     return counts;
	ldr	x0, [sp, 56]	// _23, counts
// code.c:25: }
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
