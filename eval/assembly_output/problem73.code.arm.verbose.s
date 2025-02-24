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
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// q, q
	str	w1, [sp, 4]	// size, size
	str	w2, [sp]	// w, w
// code.c:5:     int sum = 0;
	str	wzr, [sp, 24]	//, sum
// code.c:6:     for (int i = 0; i < size / 2; i++) {
	str	wzr, [sp, 28]	//, i
// code.c:6:     for (int i = 0; i < size / 2; i++) {
	b	.L2		//
.L5:
// code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp122, q
	add	x0, x1, x0	// _3, tmp122, _2
	ldr	w1, [x0]	// _4, *_3
// code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	ldr	w0, [sp, 4]	// tmp123, size
	sub	w2, w0, #1	// _5, tmp123,
// code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	ldr	w0, [sp, 28]	// tmp124, i
	sub	w0, w2, w0	// _6, _5, tmp124
	sxtw	x0, w0	// _7, _6
// code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	lsl	x0, x0, 2	// _8, _7,
	ldr	x2, [sp, 8]	// tmp125, q
	add	x0, x2, x0	// _9, tmp125, _8
	ldr	w0, [x0]	// _10, *_9
// code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	cmp	w1, w0	// _4, _10
	beq	.L3		//,
// code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	mov	w0, 0	// _32,
// code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	b	.L4		//
.L3:
// code.c:8:         sum += q[i] + q[size - 1 - i];
	ldrsw	x0, [sp, 28]	// _11, i
	lsl	x0, x0, 2	// _12, _11,
	ldr	x1, [sp, 8]	// tmp126, q
	add	x0, x1, x0	// _13, tmp126, _12
	ldr	w1, [x0]	// _14, *_13
// code.c:8:         sum += q[i] + q[size - 1 - i];
	ldr	w0, [sp, 4]	// tmp127, size
	sub	w2, w0, #1	// _15, tmp127,
// code.c:8:         sum += q[i] + q[size - 1 - i];
	ldr	w0, [sp, 28]	// tmp128, i
	sub	w0, w2, w0	// _16, _15, tmp128
	sxtw	x0, w0	// _17, _16
// code.c:8:         sum += q[i] + q[size - 1 - i];
	lsl	x0, x0, 2	// _18, _17,
	ldr	x2, [sp, 8]	// tmp129, q
	add	x0, x2, x0	// _19, tmp129, _18
	ldr	w0, [x0]	// _20, *_19
// code.c:8:         sum += q[i] + q[size - 1 - i];
	add	w0, w1, w0	// _21, _14, _20
// code.c:8:         sum += q[i] + q[size - 1 - i];
	ldr	w1, [sp, 24]	// tmp131, sum
	add	w0, w1, w0	// tmp130, tmp131, _21
	str	w0, [sp, 24]	// tmp130, sum
// code.c:6:     for (int i = 0; i < size / 2; i++) {
	ldr	w0, [sp, 28]	// tmp133, i
	add	w0, w0, 1	// tmp132, tmp133,
	str	w0, [sp, 28]	// tmp132, i
.L2:
// code.c:6:     for (int i = 0; i < size / 2; i++) {
	ldr	w0, [sp, 4]	// tmp134, size
	lsr	w1, w0, 31	// tmp135, tmp134,
	add	w0, w1, w0	// tmp136, tmp135, tmp134
	asr	w0, w0, 1	// tmp137, tmp136,
	mov	w1, w0	// _22, tmp137
// code.c:6:     for (int i = 0; i < size / 2; i++) {
	ldr	w0, [sp, 28]	// tmp138, i
	cmp	w0, w1	// tmp138, _22
	blt	.L5		//,
// code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	ldr	w0, [sp, 4]	// tmp139, size
	cmp	w0, 0	// tmp139,
	and	w0, w0, 1	// tmp140, tmp139,
	csneg	w0, w0, w0, ge	// _23, tmp140, tmp140,
// code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	cmp	w0, 1	// _23,
	bne	.L6		//,
// code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	ldr	w0, [sp, 4]	// tmp141, size
	lsr	w1, w0, 31	// tmp142, tmp141,
	add	w0, w1, w0	// tmp143, tmp142, tmp141
	asr	w0, w0, 1	// tmp144, tmp143,
	sxtw	x0, w0	// _25, _24
// code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	lsl	x0, x0, 2	// _26, _25,
	ldr	x1, [sp, 8]	// tmp145, q
	add	x0, x1, x0	// _27, tmp145, _26
	ldr	w0, [x0]	// _28, *_27
// code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	ldr	w1, [sp, 24]	// tmp147, sum
	add	w0, w1, w0	// tmp146, tmp147, _28
	str	w0, [sp, 24]	// tmp146, sum
.L6:
// code.c:11:     return sum <= w;
	ldr	w1, [sp, 24]	// tmp149, sum
	ldr	w0, [sp]	// tmp150, w
	cmp	w1, w0	// tmp149, tmp150
	cset	w0, le	// tmp151,
	and	w0, w0, 255	// _32, tmp148
.L4:
// code.c:12: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
