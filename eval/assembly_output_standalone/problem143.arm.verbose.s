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
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// lst, lst
	str	w1, [sp, 4]	// size, size
// eval/problem143//code.c:4:     int sum = 0;
	str	wzr, [sp, 24]	//, sum
// eval/problem143//code.c:5:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 28]	//, i
// eval/problem143//code.c:5:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L6:
// eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	ldr	w2, [sp, 28]	// tmp124, i
	mov	w0, 21846	// tmp126,
	movk	w0, 0x5555, lsl 16	// tmp126,,
	smull	x0, w2, w0	// tmp125, tmp124, tmp126
	lsr	x1, x0, 32	// tmp127, tmp125,
	asr	w0, w2, 31	// tmp128, tmp124,
	sub	w1, w1, w0	// _1, tmp127, tmp128
	mov	w0, w1	// tmp129, _1
	lsl	w0, w0, 1	// tmp130, tmp129,
	add	w0, w0, w1	// tmp129, tmp129, _1
	sub	w1, w2, w0	// _1, tmp124, tmp129
// eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	cmp	w1, 0	// _1,
	bne	.L3		//,
// eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	ldrsw	x0, [sp, 28]	// _2, i
	lsl	x0, x0, 2	// _3, _2,
	ldr	x1, [sp, 8]	// tmp131, lst
	add	x0, x1, x0	// _4, tmp131, _3
	ldr	w1, [x0]	// _5, *_4
// eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	ldrsw	x0, [sp, 28]	// _6, i
	lsl	x0, x0, 2	// _7, _6,
	ldr	x2, [sp, 8]	// tmp132, lst
	add	x0, x2, x0	// _8, tmp132, _7
	ldr	w0, [x0]	// _9, *_8
// eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	mul	w0, w1, w0	// _10, _5, _9
// eval/problem143//code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	ldr	w1, [sp, 24]	// tmp134, sum
	add	w0, w1, w0	// tmp133, tmp134, _10
	str	w0, [sp, 24]	// tmp133, sum
	b	.L4		//
.L3:
// eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	ldr	w0, [sp, 28]	// i.0_11, i
	and	w0, w0, 3	// _12, i.0_11,
// eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	cmp	w0, 0	// _12,
	bne	.L5		//,
// eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	ldrsw	x0, [sp, 28]	// _13, i
	lsl	x0, x0, 2	// _14, _13,
	ldr	x1, [sp, 8]	// tmp135, lst
	add	x0, x1, x0	// _15, tmp135, _14
	ldr	w1, [x0]	// _16, *_15
// eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	ldrsw	x0, [sp, 28]	// _17, i
	lsl	x0, x0, 2	// _18, _17,
	ldr	x2, [sp, 8]	// tmp136, lst
	add	x0, x2, x0	// _19, tmp136, _18
	ldr	w0, [x0]	// _20, *_19
// eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	mul	w1, w1, w0	// _21, _16, _20
// eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	ldrsw	x0, [sp, 28]	// _22, i
	lsl	x0, x0, 2	// _23, _22,
	ldr	x2, [sp, 8]	// tmp137, lst
	add	x0, x2, x0	// _24, tmp137, _23
	ldr	w0, [x0]	// _25, *_24
// eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	mul	w0, w1, w0	// _26, _21, _25
// eval/problem143//code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	ldr	w1, [sp, 24]	// tmp139, sum
	add	w0, w1, w0	// tmp138, tmp139, _26
	str	w0, [sp, 24]	// tmp138, sum
	b	.L4		//
.L5:
// eval/problem143//code.c:8:         else sum += lst[i];
	ldrsw	x0, [sp, 28]	// _27, i
	lsl	x0, x0, 2	// _28, _27,
	ldr	x1, [sp, 8]	// tmp140, lst
	add	x0, x1, x0	// _29, tmp140, _28
	ldr	w0, [x0]	// _30, *_29
// eval/problem143//code.c:8:         else sum += lst[i];
	ldr	w1, [sp, 24]	// tmp142, sum
	add	w0, w1, w0	// tmp141, tmp142, _30
	str	w0, [sp, 24]	// tmp141, sum
.L4:
// eval/problem143//code.c:5:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 28]	// tmp144, i
	add	w0, w0, 1	// tmp143, tmp144,
	str	w0, [sp, 28]	// tmp143, i
.L2:
// eval/problem143//code.c:5:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 28]	// tmp145, i
	ldr	w0, [sp, 4]	// tmp146, size
	cmp	w1, w0	// tmp145, tmp146
	blt	.L6		//,
// eval/problem143//code.c:10:     return sum;
	ldr	w0, [sp, 24]	// _37, sum
// eval/problem143//code.c:11: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
