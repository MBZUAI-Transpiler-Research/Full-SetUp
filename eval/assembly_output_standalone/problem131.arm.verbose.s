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
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	w0, [sp, 28]	// n, n
// eval/problem131//code.c:5:     int* out = (int*)malloc((n + 1) * sizeof(int));
	ldr	w0, [sp, 28]	// tmp123, n
	add	w0, w0, 1	// _1, tmp123,
	sxtw	x0, w0	// _2, _1
// eval/problem131//code.c:5:     int* out = (int*)malloc((n + 1) * sizeof(int));
	lsl	x0, x0, 2	// _3, _2,
	bl	malloc		//
	str	x0, [sp, 40]	// tmp124, out
// eval/problem131//code.c:6:     out[0] = 1;
	ldr	x0, [sp, 40]	// tmp125, out
	mov	w1, 1	// tmp126,
	str	w1, [x0]	// tmp126, *out_38
// eval/problem131//code.c:7:     if (n == 0) return out;
	ldr	w0, [sp, 28]	// tmp127, n
	cmp	w0, 0	// tmp127,
	bne	.L2		//,
// eval/problem131//code.c:7:     if (n == 0) return out;
	ldr	x0, [sp, 40]	// _31, out
// eval/problem131//code.c:7:     if (n == 0) return out;
	b	.L3		//
.L2:
// eval/problem131//code.c:8:     out[1] = 3;
	ldr	x0, [sp, 40]	// tmp128, out
	add	x0, x0, 4	// _4, tmp128,
// eval/problem131//code.c:8:     out[1] = 3;
	mov	w1, 3	// tmp129,
	str	w1, [x0]	// tmp129, *_4
// eval/problem131//code.c:9:     for (int i = 2; i <= n; i++) {
	mov	w0, 2	// tmp130,
	str	w0, [sp, 36]	// tmp130, i
// eval/problem131//code.c:9:     for (int i = 2; i <= n; i++) {
	b	.L4		//
.L7:
// eval/problem131//code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	ldr	w0, [sp, 36]	// i.0_5, i
	and	w0, w0, 1	// _6, i.0_5,
// eval/problem131//code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	cmp	w0, 0	// _6,
	bne	.L5		//,
// eval/problem131//code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	ldr	w0, [sp, 36]	// tmp131, i
	lsr	w1, w0, 31	// tmp132, tmp131,
	add	w0, w1, w0	// tmp133, tmp132, tmp131
	asr	w0, w0, 1	// tmp134, tmp133,
	mov	w2, w0	// _7, tmp134
// eval/problem131//code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	ldrsw	x0, [sp, 36]	// _8, i
	lsl	x0, x0, 2	// _9, _8,
	ldr	x1, [sp, 40]	// tmp135, out
	add	x0, x1, x0	// _10, tmp135, _9
// eval/problem131//code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	add	w1, w2, 1	// _11, _7,
// eval/problem131//code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	str	w1, [x0]	// _11, *_10
	b	.L6		//
.L5:
// eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	ldrsw	x0, [sp, 36]	// _12, i
	lsl	x0, x0, 2	// _13, _12,
	sub	x0, x0, #4	// _14, _13,
	ldr	x1, [sp, 40]	// tmp136, out
	add	x0, x1, x0	// _15, tmp136, _14
	ldr	w1, [x0]	// _16, *_15
// eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	ldrsw	x0, [sp, 36]	// _17, i
	lsl	x0, x0, 2	// _18, _17,
	sub	x0, x0, #8	// _19, _18,
	ldr	x2, [sp, 40]	// tmp137, out
	add	x0, x2, x0	// _20, tmp137, _19
	ldr	w0, [x0]	// _21, *_20
// eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	add	w0, w1, w0	// _22, _16, _21
// eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	add	w1, w0, 1	// _23, _22,
// eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	ldr	w0, [sp, 36]	// tmp138, i
	add	w0, w0, 1	// _24, tmp138,
// eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	lsr	w2, w0, 31	// tmp139, _24,
	add	w0, w2, w0	// tmp140, tmp139, _24
	asr	w0, w0, 1	// tmp141, tmp140,
	mov	w3, w0	// _25, tmp141
// eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	ldrsw	x0, [sp, 36]	// _26, i
	lsl	x0, x0, 2	// _27, _26,
	ldr	x2, [sp, 40]	// tmp142, out
	add	x0, x2, x0	// _28, tmp142, _27
// eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	add	w1, w1, w3	// _29, _23, _25
// eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	str	w1, [x0]	// _29, *_28
.L6:
// eval/problem131//code.c:9:     for (int i = 2; i <= n; i++) {
	ldr	w0, [sp, 36]	// tmp144, i
	add	w0, w0, 1	// tmp143, tmp144,
	str	w0, [sp, 36]	// tmp143, i
.L4:
// eval/problem131//code.c:9:     for (int i = 2; i <= n; i++) {
	ldr	w1, [sp, 36]	// tmp145, i
	ldr	w0, [sp, 28]	// tmp146, n
	cmp	w1, w0	// tmp145, tmp146
	ble	.L7		//,
// eval/problem131//code.c:13:     return out;
	ldr	x0, [sp, 40]	// _31, out
.L3:
// eval/problem131//code.c:14: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
