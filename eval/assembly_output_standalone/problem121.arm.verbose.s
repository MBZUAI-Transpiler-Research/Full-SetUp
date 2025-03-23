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
	str	x0, [sp, 24]	// arr, arr
	str	w1, [sp, 20]	// arr_size, arr_size
	str	w2, [sp, 16]	// k, k
	str	x3, [sp, 8]	// out, out
// eval/problem121//code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	str	wzr, [sp, 32]	//, i
// eval/problem121//code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	b	.L2		//
.L6:
// eval/problem121//code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	str	wzr, [sp, 36]	//, j
// eval/problem121//code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	b	.L3		//
.L5:
// eval/problem121//code.c:7:             if (arr[j] > arr[j + 1]) {
	ldrsw	x0, [sp, 36]	// _1, j
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp128, arr
	add	x0, x1, x0	// _3, tmp128, _2
	ldr	w1, [x0]	// _4, *_3
// eval/problem121//code.c:7:             if (arr[j] > arr[j + 1]) {
	ldrsw	x0, [sp, 36]	// _5, j
	add	x0, x0, 1	// _6, _5,
	lsl	x0, x0, 2	// _7, _6,
	ldr	x2, [sp, 24]	// tmp129, arr
	add	x0, x2, x0	// _8, tmp129, _7
	ldr	w0, [x0]	// _9, *_8
// eval/problem121//code.c:7:             if (arr[j] > arr[j + 1]) {
	cmp	w1, w0	// _4, _9
	ble	.L4		//,
// eval/problem121//code.c:8:                 int temp = arr[j];
	ldrsw	x0, [sp, 36]	// _10, j
	lsl	x0, x0, 2	// _11, _10,
	ldr	x1, [sp, 24]	// tmp130, arr
	add	x0, x1, x0	// _12, tmp130, _11
// eval/problem121//code.c:8:                 int temp = arr[j];
	ldr	w0, [x0]	// tmp131, *_12
	str	w0, [sp, 44]	// tmp131, temp
// eval/problem121//code.c:9:                 arr[j] = arr[j + 1];
	ldrsw	x0, [sp, 36]	// _13, j
	add	x0, x0, 1	// _14, _13,
	lsl	x0, x0, 2	// _15, _14,
	ldr	x1, [sp, 24]	// tmp132, arr
	add	x1, x1, x0	// _16, tmp132, _15
// eval/problem121//code.c:9:                 arr[j] = arr[j + 1];
	ldrsw	x0, [sp, 36]	// _17, j
	lsl	x0, x0, 2	// _18, _17,
	ldr	x2, [sp, 24]	// tmp133, arr
	add	x0, x2, x0	// _19, tmp133, _18
// eval/problem121//code.c:9:                 arr[j] = arr[j + 1];
	ldr	w1, [x1]	// _20, *_16
// eval/problem121//code.c:9:                 arr[j] = arr[j + 1];
	str	w1, [x0]	// _20, *_19
// eval/problem121//code.c:10:                 arr[j + 1] = temp;
	ldrsw	x0, [sp, 36]	// _21, j
	add	x0, x0, 1	// _22, _21,
	lsl	x0, x0, 2	// _23, _22,
	ldr	x1, [sp, 24]	// tmp134, arr
	add	x0, x1, x0	// _24, tmp134, _23
// eval/problem121//code.c:10:                 arr[j + 1] = temp;
	ldr	w1, [sp, 44]	// tmp135, temp
	str	w1, [x0]	// tmp135, *_24
.L4:
// eval/problem121//code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	ldr	w0, [sp, 36]	// tmp137, j
	add	w0, w0, 1	// tmp136, tmp137,
	str	w0, [sp, 36]	// tmp136, j
.L3:
// eval/problem121//code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	ldr	w1, [sp, 20]	// tmp138, arr_size
	ldr	w0, [sp, 32]	// tmp139, i
	sub	w0, w1, w0	// _25, tmp138, tmp139
// eval/problem121//code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	sub	w0, w0, #1	// _26, _25,
// eval/problem121//code.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	ldr	w1, [sp, 36]	// tmp140, j
	cmp	w1, w0	// tmp140, _26
	blt	.L5		//,
// eval/problem121//code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	ldr	w0, [sp, 32]	// tmp142, i
	add	w0, w0, 1	// tmp141, tmp142,
	str	w0, [sp, 32]	// tmp141, i
.L2:
// eval/problem121//code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	ldr	w0, [sp, 20]	// tmp143, arr_size
	sub	w0, w0, #1	// _27, tmp143,
// eval/problem121//code.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	ldr	w1, [sp, 32]	// tmp144, i
	cmp	w1, w0	// tmp144, _27
	blt	.L6		//,
// eval/problem121//code.c:15:     for (int i = 0; i < k; i++) {
	str	wzr, [sp, 40]	//, i
// eval/problem121//code.c:15:     for (int i = 0; i < k; i++) {
	b	.L7		//
.L8:
// eval/problem121//code.c:16:         out[i] = arr[arr_size - k + i];
	ldr	w1, [sp, 20]	// tmp145, arr_size
	ldr	w0, [sp, 16]	// tmp146, k
	sub	w1, w1, w0	// _28, tmp145, tmp146
// eval/problem121//code.c:16:         out[i] = arr[arr_size - k + i];
	ldr	w0, [sp, 40]	// tmp147, i
	add	w0, w1, w0	// _29, _28, tmp147
	sxtw	x0, w0	// _30, _29
// eval/problem121//code.c:16:         out[i] = arr[arr_size - k + i];
	lsl	x0, x0, 2	// _31, _30,
	ldr	x1, [sp, 24]	// tmp148, arr
	add	x1, x1, x0	// _32, tmp148, _31
// eval/problem121//code.c:16:         out[i] = arr[arr_size - k + i];
	ldrsw	x0, [sp, 40]	// _33, i
	lsl	x0, x0, 2	// _34, _33,
	ldr	x2, [sp, 8]	// tmp149, out
	add	x0, x2, x0	// _35, tmp149, _34
// eval/problem121//code.c:16:         out[i] = arr[arr_size - k + i];
	ldr	w1, [x1]	// _36, *_32
// eval/problem121//code.c:16:         out[i] = arr[arr_size - k + i];
	str	w1, [x0]	// _36, *_35
// eval/problem121//code.c:15:     for (int i = 0; i < k; i++) {
	ldr	w0, [sp, 40]	// tmp151, i
	add	w0, w0, 1	// tmp150, tmp151,
	str	w0, [sp, 40]	// tmp150, i
.L7:
// eval/problem121//code.c:15:     for (int i = 0; i < k; i++) {
	ldr	w1, [sp, 40]	// tmp152, i
	ldr	w0, [sp, 16]	// tmp153, k
	cmp	w1, w0	// tmp152, tmp153
	blt	.L8		//,
// eval/problem121//code.c:18: }
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
