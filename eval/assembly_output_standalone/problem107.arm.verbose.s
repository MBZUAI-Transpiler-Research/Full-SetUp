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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	w0, [sp, 28]	// n, n
// eval/problem107//code.c:5:     int* out = (int*)malloc(n * sizeof(int));
	ldrsw	x0, [sp, 28]	// _1, n
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 56]	// tmp106, out
// eval/problem107//code.c:6:     int sum = 0, prod = 1;
	str	wzr, [sp, 44]	//, sum
// eval/problem107//code.c:6:     int sum = 0, prod = 1;
	mov	w0, 1	// tmp107,
	str	w0, [sp, 48]	// tmp107, prod
// eval/problem107//code.c:7:     for (int i = 1; i <= n; i++) {
	mov	w0, 1	// tmp108,
	str	w0, [sp, 52]	// tmp108, i
// eval/problem107//code.c:7:     for (int i = 1; i <= n; i++) {
	b	.L2		//
.L5:
// eval/problem107//code.c:8:         sum += i;
	ldr	w1, [sp, 44]	// tmp110, sum
	ldr	w0, [sp, 52]	// tmp111, i
	add	w0, w1, w0	// tmp109, tmp110, tmp111
	str	w0, [sp, 44]	// tmp109, sum
// eval/problem107//code.c:9:         prod *= i;
	ldr	w1, [sp, 48]	// tmp113, prod
	ldr	w0, [sp, 52]	// tmp114, i
	mul	w0, w1, w0	// tmp112, tmp113, tmp114
	str	w0, [sp, 48]	// tmp112, prod
// eval/problem107//code.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	ldr	w0, [sp, 52]	// i.0_3, i
	and	w0, w0, 1	// _4, i.0_3,
// eval/problem107//code.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	cmp	w0, 0	// _4,
	bne	.L3		//,
// eval/problem107//code.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	ldrsw	x0, [sp, 52]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	sub	x0, x0, #4	// _7, _6,
	ldr	x1, [sp, 56]	// tmp115, out
	add	x0, x1, x0	// _8, tmp115, _7
// eval/problem107//code.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	ldr	w1, [sp, 48]	// tmp116, prod
	str	w1, [x0]	// tmp116, *_8
	b	.L4		//
.L3:
// eval/problem107//code.c:11:         else out[i - 1] = sum;
	ldrsw	x0, [sp, 52]	// _9, i
	lsl	x0, x0, 2	// _10, _9,
	sub	x0, x0, #4	// _11, _10,
	ldr	x1, [sp, 56]	// tmp117, out
	add	x0, x1, x0	// _12, tmp117, _11
// eval/problem107//code.c:11:         else out[i - 1] = sum;
	ldr	w1, [sp, 44]	// tmp118, sum
	str	w1, [x0]	// tmp118, *_12
.L4:
// eval/problem107//code.c:7:     for (int i = 1; i <= n; i++) {
	ldr	w0, [sp, 52]	// tmp120, i
	add	w0, w0, 1	// tmp119, tmp120,
	str	w0, [sp, 52]	// tmp119, i
.L2:
// eval/problem107//code.c:7:     for (int i = 1; i <= n; i++) {
	ldr	w1, [sp, 52]	// tmp121, i
	ldr	w0, [sp, 28]	// tmp122, n
	cmp	w1, w0	// tmp121, tmp122
	ble	.L5		//,
// eval/problem107//code.c:13:     return out;
	ldr	x0, [sp, 56]	// _25, out
// eval/problem107//code.c:14: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
