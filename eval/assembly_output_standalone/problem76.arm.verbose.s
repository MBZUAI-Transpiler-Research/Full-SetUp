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
	str	w0, [sp, 12]	// a, a
// eval/problem76//code.c:5:     if (a < 2) return 0;
	ldr	w0, [sp, 12]	// tmp97, a
	cmp	w0, 1	// tmp97,
	bgt	.L2		//,
// eval/problem76//code.c:5:     if (a < 2) return 0;
	mov	w0, 0	// _10,
	b	.L3		//
.L2:
// eval/problem76//code.c:6:     int num = 0;
	str	wzr, [sp, 24]	//, num
// eval/problem76//code.c:7:     for (int i = 2; i * i <= a; i++) {
	mov	w0, 2	// tmp98,
	str	w0, [sp, 28]	// tmp98, i
// eval/problem76//code.c:7:     for (int i = 2; i * i <= a; i++) {
	b	.L4		//
.L6:
// eval/problem76//code.c:9:             a = a / i;
	ldr	w1, [sp, 12]	// tmp101, a
	ldr	w0, [sp, 28]	// tmp102, i
	sdiv	w0, w1, w0	// tmp100, tmp101, tmp102
	str	w0, [sp, 12]	// tmp100, a
// eval/problem76//code.c:10:             num++;
	ldr	w0, [sp, 24]	// tmp104, num
	add	w0, w0, 1	// tmp103, tmp104,
	str	w0, [sp, 24]	// tmp103, num
.L5:
// eval/problem76//code.c:8:         while (a % i == 0) {
	ldr	w0, [sp, 12]	// tmp105, a
	ldr	w1, [sp, 28]	// tmp118, i
	sdiv	w2, w0, w1	// tmp117, tmp105, tmp118
	ldr	w1, [sp, 28]	// tmp120, i
	mul	w1, w2, w1	// tmp119, tmp117, tmp120
	sub	w0, w0, w1	// _1, tmp105, tmp119
// eval/problem76//code.c:8:         while (a % i == 0) {
	cmp	w0, 0	// _1,
	beq	.L6		//,
// eval/problem76//code.c:7:     for (int i = 2; i * i <= a; i++) {
	ldr	w0, [sp, 28]	// tmp122, i
	add	w0, w0, 1	// tmp121, tmp122,
	str	w0, [sp, 28]	// tmp121, i
.L4:
// eval/problem76//code.c:7:     for (int i = 2; i * i <= a; i++) {
	ldr	w0, [sp, 28]	// tmp123, i
	mul	w0, w0, w0	// _2, tmp123, tmp123
// eval/problem76//code.c:7:     for (int i = 2; i * i <= a; i++) {
	ldr	w1, [sp, 12]	// tmp124, a
	cmp	w1, w0	// tmp124, _2
	bge	.L5		//,
// eval/problem76//code.c:13:     if (a > 1) num++;
	ldr	w0, [sp, 12]	// tmp125, a
	cmp	w0, 1	// tmp125,
	ble	.L8		//,
// eval/problem76//code.c:13:     if (a > 1) num++;
	ldr	w0, [sp, 24]	// tmp127, num
	add	w0, w0, 1	// tmp126, tmp127,
	str	w0, [sp, 24]	// tmp126, num
.L8:
// eval/problem76//code.c:14:     return num == 3;
	ldr	w0, [sp, 24]	// tmp129, num
	cmp	w0, 3	// tmp129,
	cset	w0, eq	// tmp130,
	and	w0, w0, 255	// _3, tmp128
.L3:
// eval/problem76//code.c:15: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
