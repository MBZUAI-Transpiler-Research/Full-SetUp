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
// eval/problem91//code.c:5:     if (size < 2) return -1;
	ldr	w0, [sp, 4]	// tmp112, size
	cmp	w0, 1	// tmp112,
	bgt	.L2		//,
// eval/problem91//code.c:5:     if (size < 2) return -1;
	mov	w0, -1	// _24,
// eval/problem91//code.c:5:     if (size < 2) return -1;
	b	.L3		//
.L2:
// eval/problem91//code.c:7:     int first = INT_MAX, second = INT_MAX;
	mov	w0, 2147483647	// tmp113,
	str	w0, [sp, 20]	// tmp113, first
// eval/problem91//code.c:7:     int first = INT_MAX, second = INT_MAX;
	mov	w0, 2147483647	// tmp114,
	str	w0, [sp, 24]	// tmp114, second
// eval/problem91//code.c:8:     for (int i = 0; i < size; ++i) {
	str	wzr, [sp, 28]	//, i
// eval/problem91//code.c:8:     for (int i = 0; i < size; ++i) {
	b	.L4		//
.L7:
// eval/problem91//code.c:9:         if (lst[i] < first) {
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp115, lst
	add	x0, x1, x0	// _3, tmp115, _2
	ldr	w0, [x0]	// _4, *_3
// eval/problem91//code.c:9:         if (lst[i] < first) {
	ldr	w1, [sp, 20]	// tmp116, first
	cmp	w1, w0	// tmp116, _4
	ble	.L5		//,
// eval/problem91//code.c:10:             second = first;
	ldr	w0, [sp, 20]	// tmp117, first
	str	w0, [sp, 24]	// tmp117, second
// eval/problem91//code.c:11:             first = lst[i];
	ldrsw	x0, [sp, 28]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 8]	// tmp118, lst
	add	x0, x1, x0	// _7, tmp118, _6
// eval/problem91//code.c:11:             first = lst[i];
	ldr	w0, [x0]	// tmp119, *_7
	str	w0, [sp, 20]	// tmp119, first
	b	.L6		//
.L5:
// eval/problem91//code.c:12:         } else if (lst[i] < second && lst[i] != first) {
	ldrsw	x0, [sp, 28]	// _8, i
	lsl	x0, x0, 2	// _9, _8,
	ldr	x1, [sp, 8]	// tmp120, lst
	add	x0, x1, x0	// _10, tmp120, _9
	ldr	w0, [x0]	// _11, *_10
// eval/problem91//code.c:12:         } else if (lst[i] < second && lst[i] != first) {
	ldr	w1, [sp, 24]	// tmp121, second
	cmp	w1, w0	// tmp121, _11
	ble	.L6		//,
// eval/problem91//code.c:12:         } else if (lst[i] < second && lst[i] != first) {
	ldrsw	x0, [sp, 28]	// _12, i
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 8]	// tmp122, lst
	add	x0, x1, x0	// _14, tmp122, _13
	ldr	w0, [x0]	// _15, *_14
// eval/problem91//code.c:12:         } else if (lst[i] < second && lst[i] != first) {
	ldr	w1, [sp, 20]	// tmp123, first
	cmp	w1, w0	// tmp123, _15
	beq	.L6		//,
// eval/problem91//code.c:13:             second = lst[i];
	ldrsw	x0, [sp, 28]	// _16, i
	lsl	x0, x0, 2	// _17, _16,
	ldr	x1, [sp, 8]	// tmp124, lst
	add	x0, x1, x0	// _18, tmp124, _17
// eval/problem91//code.c:13:             second = lst[i];
	ldr	w0, [x0]	// tmp125, *_18
	str	w0, [sp, 24]	// tmp125, second
.L6:
// eval/problem91//code.c:8:     for (int i = 0; i < size; ++i) {
	ldr	w0, [sp, 28]	// tmp127, i
	add	w0, w0, 1	// tmp126, tmp127,
	str	w0, [sp, 28]	// tmp126, i
.L4:
// eval/problem91//code.c:8:     for (int i = 0; i < size; ++i) {
	ldr	w1, [sp, 28]	// tmp128, i
	ldr	w0, [sp, 4]	// tmp129, size
	cmp	w1, w0	// tmp128, tmp129
	blt	.L7		//,
// eval/problem91//code.c:17:     if (second == INT_MAX) return -1;
	ldr	w1, [sp, 24]	// tmp130, second
	mov	w0, 2147483647	// tmp131,
	cmp	w1, w0	// tmp130, tmp131
	bne	.L8		//,
// eval/problem91//code.c:17:     if (second == INT_MAX) return -1;
	mov	w0, -1	// _24,
// eval/problem91//code.c:17:     if (second == INT_MAX) return -1;
	b	.L3		//
.L8:
// eval/problem91//code.c:18:     return second;
	ldr	w0, [sp, 24]	// _24, second
.L3:
// eval/problem91//code.c:19: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
