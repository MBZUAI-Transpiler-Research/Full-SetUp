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
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 56]	// lst, lst
	str	w1, [sp, 52]	// lst_size, lst_size
	str	x2, [sp, 40]	// row_sizes, row_sizes
	str	w3, [sp, 48]	// x, x
	str	x4, [sp, 32]	// return_size, return_size
// eval/problem88//code.c:5:     int **out = (int **)malloc(100 * sizeof(int *));
	mov	x0, 800	//,
	bl	malloc		//
	str	x0, [sp, 88]	// tmp119, out
// eval/problem88//code.c:6:     int count = 0;
	str	wzr, [sp, 76]	//, count
// eval/problem88//code.c:7:     for (int i = 0; i < lst_size; i++) {
	str	wzr, [sp, 80]	//, i
// eval/problem88//code.c:7:     for (int i = 0; i < lst_size; i++) {
	b	.L2		//
.L6:
// eval/problem88//code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	ldrsw	x0, [sp, 80]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 40]	// tmp120, row_sizes
	add	x0, x1, x0	// _3, tmp120, _2
	ldr	w0, [x0]	// _4, *_3
// eval/problem88//code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	sub	w0, w0, #1	// tmp121, _4,
	str	w0, [sp, 84]	// tmp121, j
// eval/problem88//code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	b	.L3		//
.L5:
// eval/problem88//code.c:9:             if (lst[i][j] == x) {
	ldrsw	x0, [sp, 80]	// _5, i
	lsl	x0, x0, 3	// _6, _5,
	ldr	x1, [sp, 56]	// tmp122, lst
	add	x0, x1, x0	// _7, tmp122, _6
	ldr	x1, [x0]	// _8, *_7
// eval/problem88//code.c:9:             if (lst[i][j] == x) {
	ldrsw	x0, [sp, 84]	// _9, j
	lsl	x0, x0, 2	// _10, _9,
	add	x0, x1, x0	// _11, _8, _10
	ldr	w0, [x0]	// _12, *_11
// eval/problem88//code.c:9:             if (lst[i][j] == x) {
	ldr	w1, [sp, 48]	// tmp123, x
	cmp	w1, w0	// tmp123, _12
	bne	.L4		//,
// eval/problem88//code.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	ldrsw	x0, [sp, 76]	// _13, count
	lsl	x0, x0, 3	// _14, _13,
	ldr	x1, [sp, 88]	// tmp124, out
	add	x19, x1, x0	// _15, tmp124, _14
// eval/problem88//code.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	mov	x0, 8	//,
	bl	malloc		//
// eval/problem88//code.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	str	x0, [x19]	// _16, *_15
// eval/problem88//code.c:11:                 out[count][0] = i;
	ldrsw	x0, [sp, 76]	// _17, count
	lsl	x0, x0, 3	// _18, _17,
	ldr	x1, [sp, 88]	// tmp126, out
	add	x0, x1, x0	// _19, tmp126, _18
	ldr	x0, [x0]	// _20, *_19
// eval/problem88//code.c:11:                 out[count][0] = i;
	ldr	w1, [sp, 80]	// tmp127, i
	str	w1, [x0]	// tmp127, *_20
// eval/problem88//code.c:12:                 out[count][1] = j;
	ldrsw	x0, [sp, 76]	// _21, count
	lsl	x0, x0, 3	// _22, _21,
	ldr	x1, [sp, 88]	// tmp128, out
	add	x0, x1, x0	// _23, tmp128, _22
	ldr	x0, [x0]	// _24, *_23
// eval/problem88//code.c:12:                 out[count][1] = j;
	add	x0, x0, 4	// _25, _24,
// eval/problem88//code.c:12:                 out[count][1] = j;
	ldr	w1, [sp, 84]	// tmp129, j
	str	w1, [x0]	// tmp129, *_25
// eval/problem88//code.c:13:                 count++;
	ldr	w0, [sp, 76]	// tmp131, count
	add	w0, w0, 1	// tmp130, tmp131,
	str	w0, [sp, 76]	// tmp130, count
.L4:
// eval/problem88//code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	ldr	w0, [sp, 84]	// tmp133, j
	sub	w0, w0, #1	// tmp132, tmp133,
	str	w0, [sp, 84]	// tmp132, j
.L3:
// eval/problem88//code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	ldr	w0, [sp, 84]	// tmp134, j
	cmp	w0, 0	// tmp134,
	bge	.L5		//,
// eval/problem88//code.c:7:     for (int i = 0; i < lst_size; i++) {
	ldr	w0, [sp, 80]	// tmp136, i
	add	w0, w0, 1	// tmp135, tmp136,
	str	w0, [sp, 80]	// tmp135, i
.L2:
// eval/problem88//code.c:7:     for (int i = 0; i < lst_size; i++) {
	ldr	w1, [sp, 80]	// tmp137, i
	ldr	w0, [sp, 52]	// tmp138, lst_size
	cmp	w1, w0	// tmp137, tmp138
	blt	.L6		//,
// eval/problem88//code.c:17:     *return_size = count;
	ldr	x0, [sp, 32]	// tmp139, return_size
	ldr	w1, [sp, 76]	// tmp140, count
	str	w1, [x0]	// tmp140, *return_size_40(D)
// eval/problem88//code.c:18:     return out;
	ldr	x0, [sp, 88]	// _42, out
// eval/problem88//code.c:19: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
