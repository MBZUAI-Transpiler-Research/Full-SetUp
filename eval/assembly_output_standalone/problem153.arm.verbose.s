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
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// game, game
	str	x1, [sp, 16]	// guess, guess
	str	x2, [sp, 8]	// out, out
	str	w3, [sp, 4]	// length, length
// eval/problem153//code.c:5:     for (int i = 0; i < length; i++) {
	str	wzr, [sp, 44]	//, i
// eval/problem153//code.c:5:     for (int i = 0; i < length; i++) {
	b	.L2		//
.L3:
// eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp105, game
	add	x0, x1, x0	// _3, tmp105, _2
	ldr	w1, [x0]	// _4, *_3
// eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 16]	// tmp106, guess
	add	x0, x2, x0	// _7, tmp106, _6
	ldr	w0, [x0]	// _8, *_7
// eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	sub	w0, w1, w0	// _9, _4, _8
// eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	ldrsw	x1, [sp, 44]	// _10, i
	lsl	x1, x1, 2	// _11, _10,
	ldr	x2, [sp, 8]	// tmp107, out
	add	x1, x2, x1	// _12, tmp107, _11
// eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	cmp	w0, 0	// _9,
	csneg	w0, w0, w0, ge	// _13, _9, _9,
// eval/problem153//code.c:6:         out[i] = abs(game[i] - guess[i]);
	str	w0, [x1]	// _13, *_12
// eval/problem153//code.c:5:     for (int i = 0; i < length; i++) {
	ldr	w0, [sp, 44]	// tmp109, i
	add	w0, w0, 1	// tmp108, tmp109,
	str	w0, [sp, 44]	// tmp108, i
.L2:
// eval/problem153//code.c:5:     for (int i = 0; i < length; i++) {
	ldr	w1, [sp, 44]	// tmp110, i
	ldr	w0, [sp, 4]	// tmp111, length
	cmp	w1, w0	// tmp110, tmp111
	blt	.L3		//,
// eval/problem153//code.c:8: }
	nop	
	nop	
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
