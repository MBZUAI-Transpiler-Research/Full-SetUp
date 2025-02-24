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
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// grid, grid
	str	w1, [sp, 20]	// rows, rows
	str	w2, [sp, 16]	// cols, cols
	str	w3, [sp, 12]	// capacity, capacity
// code.c:3:     int out = 0;
	str	wzr, [sp, 32]	//, out
// code.c:4:     for (int i = 0; i < rows; i++) {
	str	wzr, [sp, 36]	//, i
// code.c:4:     for (int i = 0; i < rows; i++) {
	b	.L2		//
.L6:
// code.c:5:         int sum = 0;
	str	wzr, [sp, 40]	//, sum
// code.c:6:         for (int j = 0; j < cols; j++)
	str	wzr, [sp, 44]	//, j
// code.c:6:         for (int j = 0; j < cols; j++)
	b	.L3		//
.L4:
// code.c:7:             sum += grid[i][j];
	ldrsw	x0, [sp, 36]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 24]	// tmp105, grid
	add	x0, x1, x0	// _3, tmp105, _2
	ldr	x1, [x0]	// _4, *_3
// code.c:7:             sum += grid[i][j];
	ldrsw	x0, [sp, 44]	// _5, j
	lsl	x0, x0, 2	// _6, _5,
	add	x0, x1, x0	// _7, _4, _6
	ldr	w0, [x0]	// _8, *_7
// code.c:7:             sum += grid[i][j];
	ldr	w1, [sp, 40]	// tmp107, sum
	add	w0, w1, w0	// tmp106, tmp107, _8
	str	w0, [sp, 40]	// tmp106, sum
// code.c:6:         for (int j = 0; j < cols; j++)
	ldr	w0, [sp, 44]	// tmp109, j
	add	w0, w0, 1	// tmp108, tmp109,
	str	w0, [sp, 44]	// tmp108, j
.L3:
// code.c:6:         for (int j = 0; j < cols; j++)
	ldr	w1, [sp, 44]	// tmp110, j
	ldr	w0, [sp, 16]	// tmp111, cols
	cmp	w1, w0	// tmp110, tmp111
	blt	.L4		//,
// code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	ldr	w0, [sp, 40]	// tmp112, sum
	cmp	w0, 0	// tmp112,
	ble	.L5		//,
// code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	ldr	w1, [sp, 40]	// tmp113, sum
	ldr	w0, [sp, 12]	// tmp114, capacity
	add	w0, w1, w0	// _9, tmp113, tmp114
// code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	sub	w1, w0, #1	// _10, _9,
// code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	ldr	w0, [sp, 12]	// tmp115, capacity
	sdiv	w0, w1, w0	// _11, _10, tmp115
// code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	ldr	w1, [sp, 32]	// tmp117, out
	add	w0, w1, w0	// tmp116, tmp117, _11
	str	w0, [sp, 32]	// tmp116, out
.L5:
// code.c:4:     for (int i = 0; i < rows; i++) {
	ldr	w0, [sp, 36]	// tmp119, i
	add	w0, w0, 1	// tmp118, tmp119,
	str	w0, [sp, 36]	// tmp118, i
.L2:
// code.c:4:     for (int i = 0; i < rows; i++) {
	ldr	w1, [sp, 36]	// tmp120, i
	ldr	w0, [sp, 20]	// tmp121, rows
	cmp	w1, w0	// tmp120, tmp121
	blt	.L6		//,
// code.c:10:     return out;
	ldr	w0, [sp, 32]	// _20, out
// code.c:11: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
