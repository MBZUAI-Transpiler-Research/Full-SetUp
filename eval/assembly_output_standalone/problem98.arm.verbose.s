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
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]	// a, a
	str	w1, [sp, 8]	// b, b
// eval/problem98//code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	ldr	w0, [sp, 12]	// tmp98, a
	cmp	w0, 0	// tmp98,
	csneg	w1, w0, w0, ge	// _1, tmp98, tmp98,
// eval/problem98//code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	mov	w0, 26215	// tmp100,
	movk	w0, 0x6666, lsl 16	// tmp100,,
	smull	x0, w1, w0	// tmp99, _1, tmp100
	lsr	x0, x0, 32	// tmp101, tmp99,
	asr	w2, w0, 2	// tmp102, tmp101,
	asr	w0, w1, 31	// tmp103, _1,
	sub	w2, w2, w0	// _2, tmp102, tmp103
	mov	w0, w2	// tmp104, _2
	lsl	w0, w0, 2	// tmp105, tmp104,
	add	w0, w0, w2	// tmp104, tmp104, _2
	lsl	w0, w0, 1	// tmp106, tmp104,
	sub	w2, w1, w0	// _2, _1, tmp104
// eval/problem98//code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	ldr	w0, [sp, 8]	// tmp107, b
	cmp	w0, 0	// tmp107,
	csneg	w3, w0, w0, ge	// _3, tmp107, tmp107,
// eval/problem98//code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	mov	w0, 26215	// tmp109,
	movk	w0, 0x6666, lsl 16	// tmp109,,
	smull	x0, w3, w0	// tmp108, _3, tmp109
	lsr	x0, x0, 32	// tmp110, tmp108,
	asr	w1, w0, 2	// tmp111, tmp110,
	asr	w0, w3, 31	// tmp112, _3,
	sub	w1, w1, w0	// _4, tmp111, tmp112
	mov	w0, w1	// tmp113, _4
	lsl	w0, w0, 2	// tmp114, tmp113,
	add	w0, w0, w1	// tmp113, tmp113, _4
	lsl	w0, w0, 1	// tmp115, tmp113,
	sub	w1, w3, w0	// _4, _3, tmp113
// eval/problem98//code.c:5:     return (abs(a) % 10) * (abs(b) % 10);
	mul	w0, w2, w1	// _7, _2, _4
// eval/problem98//code.c:6: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
