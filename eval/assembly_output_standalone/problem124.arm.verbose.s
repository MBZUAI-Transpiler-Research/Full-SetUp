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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	w0, [sp, 44]	// n, n
	str	x1, [sp, 32]	// out, out
	str	x2, [sp, 24]	// size, size
// eval/problem124//code.c:5:     int capacity = 10;
	mov	w0, 10	// tmp122,
	str	w0, [sp, 48]	// tmp122, capacity
// eval/problem124//code.c:6:     *size = 1;
	ldr	x0, [sp, 24]	// tmp123, size
	mov	w1, 1	// tmp124,
	str	w1, [x0]	// tmp124, *size_45(D)
// eval/problem124//code.c:7:     out[0] = 1;
	ldr	x0, [sp, 32]	// tmp125, out
	mov	w1, 1	// tmp126,
	str	w1, [x0]	// tmp126, *out_47(D)
// eval/problem124//code.c:9:     while (n != 1) {
	b	.L2		//
.L5:
// eval/problem124//code.c:10:         if (n % 2 == 1) {
	ldr	w0, [sp, 44]	// tmp127, n
	cmp	w0, 0	// tmp127,
	and	w0, w0, 1	// tmp128, tmp127,
	csneg	w0, w0, w0, ge	// _1, tmp128, tmp128,
// eval/problem124//code.c:10:         if (n % 2 == 1) {
	cmp	w0, 1	// _1,
	bne	.L3		//,
// eval/problem124//code.c:11:             if (*size >= capacity) {
	ldr	x0, [sp, 24]	// tmp129, size
	ldr	w0, [x0]	// _2, *size_45(D)
// eval/problem124//code.c:11:             if (*size >= capacity) {
	ldr	w1, [sp, 48]	// tmp130, capacity
	cmp	w1, w0	// tmp130, _2
	bgt	.L4		//,
// eval/problem124//code.c:12:                 capacity *= 2;
	ldr	w0, [sp, 48]	// tmp132, capacity
	lsl	w0, w0, 1	// tmp131, tmp132,
	str	w0, [sp, 48]	// tmp131, capacity
// eval/problem124//code.c:13:                 out = (int*)realloc(out, capacity * sizeof(int));
	ldrsw	x0, [sp, 48]	// _3, capacity
	lsl	x0, x0, 2	// _4, _3,
	mov	x1, x0	//, _4
	ldr	x0, [sp, 32]	//, out
	bl	realloc		//
	str	x0, [sp, 32]	//, out
.L4:
// eval/problem124//code.c:15:             out[(*size)++] = n;
	ldr	x0, [sp, 24]	// tmp133, size
	ldr	w0, [x0]	// _5, *size_45(D)
// eval/problem124//code.c:15:             out[(*size)++] = n;
	add	w2, w0, 1	// _7, _5,
	ldr	x1, [sp, 24]	// tmp134, size
	str	w2, [x1]	// _7, *size_45(D)
	sxtw	x0, w0	// _8, _5
// eval/problem124//code.c:15:             out[(*size)++] = n;
	lsl	x0, x0, 2	// _9, _8,
	ldr	x1, [sp, 32]	// tmp135, out
	add	x0, x1, x0	// _10, tmp135, _9
// eval/problem124//code.c:15:             out[(*size)++] = n;
	ldr	w1, [sp, 44]	// tmp136, n
	str	w1, [x0]	// tmp136, *_10
// eval/problem124//code.c:16:             n = n * 3 + 1;
	ldr	w1, [sp, 44]	// tmp137, n
	mov	w0, w1	// tmp138, tmp137
	lsl	w0, w0, 1	// tmp139, tmp138,
	add	w0, w0, w1	// _11, tmp138, tmp137
// eval/problem124//code.c:16:             n = n * 3 + 1;
	add	w0, w0, 1	// tmp140, _11,
	str	w0, [sp, 44]	// tmp140, n
	b	.L2		//
.L3:
// eval/problem124//code.c:18:             n = n / 2;
	ldr	w0, [sp, 44]	// tmp142, n
	lsr	w1, w0, 31	// tmp143, tmp142,
	add	w0, w1, w0	// tmp144, tmp143, tmp142
	asr	w0, w0, 1	// tmp145, tmp144,
	str	w0, [sp, 44]	// tmp145, n
.L2:
// eval/problem124//code.c:9:     while (n != 1) {
	ldr	w0, [sp, 44]	// tmp146, n
	cmp	w0, 1	// tmp146,
	bne	.L5		//,
// eval/problem124//code.c:22:     for (int i = 1; i < *size; i++) {
	mov	w0, 1	// tmp147,
	str	w0, [sp, 52]	// tmp147, i
// eval/problem124//code.c:22:     for (int i = 1; i < *size; i++) {
	b	.L6		//
.L10:
// eval/problem124//code.c:23:         int key = out[i];
	ldrsw	x0, [sp, 52]	// _12, i
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 32]	// tmp148, out
	add	x0, x1, x0	// _14, tmp148, _13
// eval/problem124//code.c:23:         int key = out[i];
	ldr	w0, [x0]	// tmp149, *_14
	str	w0, [sp, 60]	// tmp149, key
// eval/problem124//code.c:24:         int j = i - 1;
	ldr	w0, [sp, 52]	// tmp151, i
	sub	w0, w0, #1	// tmp150, tmp151,
	str	w0, [sp, 56]	// tmp150, j
// eval/problem124//code.c:26:         while (j >= 0 && out[j] > key) {
	b	.L7		//
.L9:
// eval/problem124//code.c:27:             out[j + 1] = out[j];
	ldrsw	x0, [sp, 56]	// _15, j
	lsl	x0, x0, 2	// _16, _15,
	ldr	x1, [sp, 32]	// tmp152, out
	add	x1, x1, x0	// _17, tmp152, _16
// eval/problem124//code.c:27:             out[j + 1] = out[j];
	ldrsw	x0, [sp, 56]	// _18, j
	add	x0, x0, 1	// _19, _18,
	lsl	x0, x0, 2	// _20, _19,
	ldr	x2, [sp, 32]	// tmp153, out
	add	x0, x2, x0	// _21, tmp153, _20
// eval/problem124//code.c:27:             out[j + 1] = out[j];
	ldr	w1, [x1]	// _22, *_17
// eval/problem124//code.c:27:             out[j + 1] = out[j];
	str	w1, [x0]	// _22, *_21
// eval/problem124//code.c:28:             j = j - 1;
	ldr	w0, [sp, 56]	// tmp155, j
	sub	w0, w0, #1	// tmp154, tmp155,
	str	w0, [sp, 56]	// tmp154, j
.L7:
// eval/problem124//code.c:26:         while (j >= 0 && out[j] > key) {
	ldr	w0, [sp, 56]	// tmp156, j
	cmp	w0, 0	// tmp156,
	blt	.L8		//,
// eval/problem124//code.c:26:         while (j >= 0 && out[j] > key) {
	ldrsw	x0, [sp, 56]	// _23, j
	lsl	x0, x0, 2	// _24, _23,
	ldr	x1, [sp, 32]	// tmp157, out
	add	x0, x1, x0	// _25, tmp157, _24
	ldr	w0, [x0]	// _26, *_25
// eval/problem124//code.c:26:         while (j >= 0 && out[j] > key) {
	ldr	w1, [sp, 60]	// tmp158, key
	cmp	w1, w0	// tmp158, _26
	blt	.L9		//,
.L8:
// eval/problem124//code.c:30:         out[j + 1] = key;
	ldrsw	x0, [sp, 56]	// _27, j
	add	x0, x0, 1	// _28, _27,
	lsl	x0, x0, 2	// _29, _28,
	ldr	x1, [sp, 32]	// tmp159, out
	add	x0, x1, x0	// _30, tmp159, _29
// eval/problem124//code.c:30:         out[j + 1] = key;
	ldr	w1, [sp, 60]	// tmp160, key
	str	w1, [x0]	// tmp160, *_30
// eval/problem124//code.c:22:     for (int i = 1; i < *size; i++) {
	ldr	w0, [sp, 52]	// tmp162, i
	add	w0, w0, 1	// tmp161, tmp162,
	str	w0, [sp, 52]	// tmp161, i
.L6:
// eval/problem124//code.c:22:     for (int i = 1; i < *size; i++) {
	ldr	x0, [sp, 24]	// tmp163, size
	ldr	w0, [x0]	// _31, *size_45(D)
// eval/problem124//code.c:22:     for (int i = 1; i < *size; i++) {
	ldr	w1, [sp, 52]	// tmp164, i
	cmp	w1, w0	// tmp164, _31
	blt	.L10		//,
// eval/problem124//code.c:32: }
	nop	
	nop	
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
