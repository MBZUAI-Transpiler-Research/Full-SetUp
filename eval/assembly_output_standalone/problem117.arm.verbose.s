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
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]	// arr, arr
	str	w1, [sp, 4]	// size, size
// eval/problem117//code.c:6:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 36]	//, i
// eval/problem117//code.c:6:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L11:
// eval/problem117//code.c:7:         for (int j = i + 1; j < size; j++) {
	ldr	w0, [sp, 36]	// tmp122, i
	add	w0, w0, 1	// tmp121, tmp122,
	str	w0, [sp, 40]	// tmp121, j
// eval/problem117//code.c:7:         for (int j = i + 1; j < size; j++) {
	b	.L3		//
.L10:
// eval/problem117//code.c:8:             count_ones = 0;
	str	wzr, [sp, 24]	//, count_ones
// eval/problem117//code.c:9:             x = arr[i];
	ldrsw	x0, [sp, 36]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp123, arr
	add	x0, x1, x0	// _3, tmp123, _2
// eval/problem117//code.c:9:             x = arr[i];
	ldr	w0, [x0]	// tmp124, *_3
	str	w0, [sp, 28]	// tmp124, x
// eval/problem117//code.c:10:             y = arr[j];
	ldrsw	x0, [sp, 40]	// _4, j
	lsl	x0, x0, 2	// _5, _4,
	ldr	x1, [sp, 8]	// tmp125, arr
	add	x0, x1, x0	// _6, tmp125, _5
// eval/problem117//code.c:10:             y = arr[j];
	ldr	w0, [x0]	// tmp126, *_6
	str	w0, [sp, 32]	// tmp126, y
// eval/problem117//code.c:11:             while (x > 0) {
	b	.L4		//
.L5:
// eval/problem117//code.c:12:                 count_ones += x & 1;
	ldr	w0, [sp, 28]	// tmp127, x
	and	w0, w0, 1	// _7, tmp127,
// eval/problem117//code.c:12:                 count_ones += x & 1;
	ldr	w1, [sp, 24]	// tmp129, count_ones
	add	w0, w1, w0	// tmp128, tmp129, _7
	str	w0, [sp, 24]	// tmp128, count_ones
// eval/problem117//code.c:13:                 x >>= 1;
	ldr	w0, [sp, 28]	// tmp131, x
	asr	w0, w0, 1	// tmp130, tmp131,
	str	w0, [sp, 28]	// tmp130, x
.L4:
// eval/problem117//code.c:11:             while (x > 0) {
	ldr	w0, [sp, 28]	// tmp132, x
	cmp	w0, 0	// tmp132,
	bgt	.L5		//,
// eval/problem117//code.c:15:             x = count_ones;
	ldr	w0, [sp, 24]	// tmp133, count_ones
	str	w0, [sp, 28]	// tmp133, x
// eval/problem117//code.c:16:             count_ones = 0;
	str	wzr, [sp, 24]	//, count_ones
// eval/problem117//code.c:17:             while (y > 0) {
	b	.L6		//
.L7:
// eval/problem117//code.c:18:                 count_ones += y & 1;
	ldr	w0, [sp, 32]	// tmp134, y
	and	w0, w0, 1	// _8, tmp134,
// eval/problem117//code.c:18:                 count_ones += y & 1;
	ldr	w1, [sp, 24]	// tmp136, count_ones
	add	w0, w1, w0	// tmp135, tmp136, _8
	str	w0, [sp, 24]	// tmp135, count_ones
// eval/problem117//code.c:19:                 y >>= 1;
	ldr	w0, [sp, 32]	// tmp138, y
	asr	w0, w0, 1	// tmp137, tmp138,
	str	w0, [sp, 32]	// tmp137, y
.L6:
// eval/problem117//code.c:17:             while (y > 0) {
	ldr	w0, [sp, 32]	// tmp139, y
	cmp	w0, 0	// tmp139,
	bgt	.L7		//,
// eval/problem117//code.c:21:             y = count_ones;
	ldr	w0, [sp, 24]	// tmp140, count_ones
	str	w0, [sp, 32]	// tmp140, y
// eval/problem117//code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	ldr	w1, [sp, 32]	// tmp141, y
	ldr	w0, [sp, 28]	// tmp142, x
	cmp	w1, w0	// tmp141, tmp142
	blt	.L8		//,
// eval/problem117//code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	ldr	w1, [sp, 32]	// tmp143, y
	ldr	w0, [sp, 28]	// tmp144, x
	cmp	w1, w0	// tmp143, tmp144
	bne	.L9		//,
// eval/problem117//code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	ldrsw	x0, [sp, 40]	// _9, j
	lsl	x0, x0, 2	// _10, _9,
	ldr	x1, [sp, 8]	// tmp145, arr
	add	x0, x1, x0	// _11, tmp145, _10
	ldr	w1, [x0]	// _12, *_11
// eval/problem117//code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	ldrsw	x0, [sp, 36]	// _13, i
	lsl	x0, x0, 2	// _14, _13,
	ldr	x2, [sp, 8]	// tmp146, arr
	add	x0, x2, x0	// _15, tmp146, _14
	ldr	w0, [x0]	// _16, *_15
// eval/problem117//code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	cmp	w1, w0	// _12, _16
	bge	.L9		//,
.L8:
// eval/problem117//code.c:23:                 temp = arr[i];
	ldrsw	x0, [sp, 36]	// _17, i
	lsl	x0, x0, 2	// _18, _17,
	ldr	x1, [sp, 8]	// tmp147, arr
	add	x0, x1, x0	// _19, tmp147, _18
// eval/problem117//code.c:23:                 temp = arr[i];
	ldr	w0, [x0]	// tmp148, *_19
	str	w0, [sp, 44]	// tmp148, temp
// eval/problem117//code.c:24:                 arr[i] = arr[j];
	ldrsw	x0, [sp, 40]	// _20, j
	lsl	x0, x0, 2	// _21, _20,
	ldr	x1, [sp, 8]	// tmp149, arr
	add	x1, x1, x0	// _22, tmp149, _21
// eval/problem117//code.c:24:                 arr[i] = arr[j];
	ldrsw	x0, [sp, 36]	// _23, i
	lsl	x0, x0, 2	// _24, _23,
	ldr	x2, [sp, 8]	// tmp150, arr
	add	x0, x2, x0	// _25, tmp150, _24
// eval/problem117//code.c:24:                 arr[i] = arr[j];
	ldr	w1, [x1]	// _26, *_22
// eval/problem117//code.c:24:                 arr[i] = arr[j];
	str	w1, [x0]	// _26, *_25
// eval/problem117//code.c:25:                 arr[j] = temp;
	ldrsw	x0, [sp, 40]	// _27, j
	lsl	x0, x0, 2	// _28, _27,
	ldr	x1, [sp, 8]	// tmp151, arr
	add	x0, x1, x0	// _29, tmp151, _28
// eval/problem117//code.c:25:                 arr[j] = temp;
	ldr	w1, [sp, 44]	// tmp152, temp
	str	w1, [x0]	// tmp152, *_29
.L9:
// eval/problem117//code.c:7:         for (int j = i + 1; j < size; j++) {
	ldr	w0, [sp, 40]	// tmp154, j
	add	w0, w0, 1	// tmp153, tmp154,
	str	w0, [sp, 40]	// tmp153, j
.L3:
// eval/problem117//code.c:7:         for (int j = i + 1; j < size; j++) {
	ldr	w1, [sp, 40]	// tmp155, j
	ldr	w0, [sp, 4]	// tmp156, size
	cmp	w1, w0	// tmp155, tmp156
	blt	.L10		//,
// eval/problem117//code.c:6:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 36]	// tmp158, i
	add	w0, w0, 1	// tmp157, tmp158,
	str	w0, [sp, 36]	// tmp157, i
.L2:
// eval/problem117//code.c:6:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 36]	// tmp159, i
	ldr	w0, [sp, 4]	// tmp160, size
	cmp	w1, w0	// tmp159, tmp160
	blt	.L11		//,
// eval/problem117//code.c:29: }
	nop	
	nop	
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
