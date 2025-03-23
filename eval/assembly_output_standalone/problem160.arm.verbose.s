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
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 28]	// number, number
	str	w1, [sp, 24]	// need, need
	str	w2, [sp, 20]	// remaining, remaining
	str	x3, [sp, 8]	// result, result
// eval/problem160//code.c:4:     if (need > remaining) {
	ldr	w1, [sp, 24]	// tmp97, need
	ldr	w0, [sp, 20]	// tmp98, remaining
	cmp	w1, w0	// tmp97, tmp98
	ble	.L2		//,
// eval/problem160//code.c:5:         result[0] = number + remaining;
	ldr	w1, [sp, 28]	// tmp99, number
	ldr	w0, [sp, 20]	// tmp100, remaining
	add	w1, w1, w0	// _1, tmp99, tmp100
// eval/problem160//code.c:5:         result[0] = number + remaining;
	ldr	x0, [sp, 8]	// tmp101, result
	str	w1, [x0]	// _1, *result_11(D)
// eval/problem160//code.c:6:         result[1] = 0;
	ldr	x0, [sp, 8]	// tmp102, result
	add	x0, x0, 4	// _2, tmp102,
// eval/problem160//code.c:6:         result[1] = 0;
	str	wzr, [x0]	//, *_2
// eval/problem160//code.c:11: }
	b	.L4		//
.L2:
// eval/problem160//code.c:8:         result[0] = number + need;
	ldr	w1, [sp, 28]	// tmp103, number
	ldr	w0, [sp, 24]	// tmp104, need
	add	w1, w1, w0	// _3, tmp103, tmp104
// eval/problem160//code.c:8:         result[0] = number + need;
	ldr	x0, [sp, 8]	// tmp105, result
	str	w1, [x0]	// _3, *result_11(D)
// eval/problem160//code.c:9:         result[1] = remaining - need;
	ldr	x0, [sp, 8]	// tmp106, result
	add	x0, x0, 4	// _4, tmp106,
// eval/problem160//code.c:9:         result[1] = remaining - need;
	ldr	w2, [sp, 20]	// tmp107, remaining
	ldr	w1, [sp, 24]	// tmp108, need
	sub	w1, w2, w1	// _5, tmp107, tmp108
// eval/problem160//code.c:9:         result[1] = remaining - need;
	str	w1, [x0]	// _5, *_4
.L4:
// eval/problem160//code.c:11: }
	nop	
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
