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
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
	str	x0, [sp, 40]	// l, l
	str	w1, [sp, 36]	// size, size
	str	x2, [sp, 24]	// out, out
// eval/problem38//code.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	ldr	w0, [sp, 36]	// tmp148, size
	lsr	w1, w0, 31	// tmp149, tmp148,
	add	w0, w1, w0	// tmp150, tmp149, tmp148
	asr	w0, w0, 1	// tmp151, tmp150,
// eval/problem38//code.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	add	w0, w0, 1	// _2, _1,
	sxtw	x0, w0	// _3, _2
// eval/problem38//code.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	lsl	x0, x0, 2	// _4, _3,
	bl	malloc		//
	str	x0, [sp, 72]	// tmp152, even
// eval/problem38//code.c:7:     int i, j, even_count = 0;
	str	wzr, [sp, 64]	//, even_count
// eval/problem38//code.c:9:     for (i = 0; i < size; i += 2) {
	str	wzr, [sp, 56]	//, i
// eval/problem38//code.c:9:     for (i = 0; i < size; i += 2) {
	b	.L2		//
.L3:
// eval/problem38//code.c:10:         even[even_count++] = l[i];
	ldrsw	x0, [sp, 56]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 40]	// tmp153, l
	add	x1, x1, x0	// _7, tmp153, _6
// eval/problem38//code.c:10:         even[even_count++] = l[i];
	ldr	w0, [sp, 64]	// even_count.0_8, even_count
	add	w2, w0, 1	// tmp154, even_count.0_8,
	str	w2, [sp, 64]	// tmp154, even_count
	sxtw	x0, w0	// _9, even_count.0_8
// eval/problem38//code.c:10:         even[even_count++] = l[i];
	lsl	x0, x0, 2	// _10, _9,
	ldr	x2, [sp, 72]	// tmp155, even
	add	x0, x2, x0	// _11, tmp155, _10
// eval/problem38//code.c:10:         even[even_count++] = l[i];
	ldr	s0, [x1]	// _12, *_7
// eval/problem38//code.c:10:         even[even_count++] = l[i];
	str	s0, [x0]	// _12, *_11
// eval/problem38//code.c:9:     for (i = 0; i < size; i += 2) {
	ldr	w0, [sp, 56]	// tmp157, i
	add	w0, w0, 2	// tmp156, tmp157,
	str	w0, [sp, 56]	// tmp156, i
.L2:
// eval/problem38//code.c:9:     for (i = 0; i < size; i += 2) {
	ldr	w1, [sp, 56]	// tmp158, i
	ldr	w0, [sp, 36]	// tmp159, size
	cmp	w1, w0	// tmp158, tmp159
	blt	.L3		//,
// eval/problem38//code.c:13:     for (i = 0; i < even_count - 1; i++) {
	str	wzr, [sp, 56]	//, i
// eval/problem38//code.c:13:     for (i = 0; i < even_count - 1; i++) {
	b	.L4		//
.L9:
// eval/problem38//code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	str	wzr, [sp, 60]	//, j
// eval/problem38//code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	b	.L5		//
.L8:
// eval/problem38//code.c:15:             if (even[j] > even[j + 1]) {
	ldrsw	x0, [sp, 60]	// _13, j
	lsl	x0, x0, 2	// _14, _13,
	ldr	x1, [sp, 72]	// tmp160, even
	add	x0, x1, x0	// _15, tmp160, _14
	ldr	s1, [x0]	// _16, *_15
// eval/problem38//code.c:15:             if (even[j] > even[j + 1]) {
	ldrsw	x0, [sp, 60]	// _17, j
	add	x0, x0, 1	// _18, _17,
	lsl	x0, x0, 2	// _19, _18,
	ldr	x1, [sp, 72]	// tmp161, even
	add	x0, x1, x0	// _20, tmp161, _19
	ldr	s0, [x0]	// _21, *_20
// eval/problem38//code.c:15:             if (even[j] > even[j + 1]) {
	fcmpe	s1, s0	// _16, _21
	bgt	.L14		//,
	b	.L6		//
.L14:
// eval/problem38//code.c:16:                 float temp = even[j];
	ldrsw	x0, [sp, 60]	// _22, j
	lsl	x0, x0, 2	// _23, _22,
	ldr	x1, [sp, 72]	// tmp162, even
	add	x0, x1, x0	// _24, tmp162, _23
// eval/problem38//code.c:16:                 float temp = even[j];
	ldr	s0, [x0]	// tmp163, *_24
	str	s0, [sp, 68]	// tmp163, temp
// eval/problem38//code.c:17:                 even[j] = even[j + 1];
	ldrsw	x0, [sp, 60]	// _25, j
	add	x0, x0, 1	// _26, _25,
	lsl	x0, x0, 2	// _27, _26,
	ldr	x1, [sp, 72]	// tmp164, even
	add	x1, x1, x0	// _28, tmp164, _27
// eval/problem38//code.c:17:                 even[j] = even[j + 1];
	ldrsw	x0, [sp, 60]	// _29, j
	lsl	x0, x0, 2	// _30, _29,
	ldr	x2, [sp, 72]	// tmp165, even
	add	x0, x2, x0	// _31, tmp165, _30
// eval/problem38//code.c:17:                 even[j] = even[j + 1];
	ldr	s0, [x1]	// _32, *_28
// eval/problem38//code.c:17:                 even[j] = even[j + 1];
	str	s0, [x0]	// _32, *_31
// eval/problem38//code.c:18:                 even[j + 1] = temp;
	ldrsw	x0, [sp, 60]	// _33, j
	add	x0, x0, 1	// _34, _33,
	lsl	x0, x0, 2	// _35, _34,
	ldr	x1, [sp, 72]	// tmp166, even
	add	x0, x1, x0	// _36, tmp166, _35
// eval/problem38//code.c:18:                 even[j + 1] = temp;
	ldr	s0, [sp, 68]	// tmp167, temp
	str	s0, [x0]	// tmp167, *_36
.L6:
// eval/problem38//code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	ldr	w0, [sp, 60]	// tmp169, j
	add	w0, w0, 1	// tmp168, tmp169,
	str	w0, [sp, 60]	// tmp168, j
.L5:
// eval/problem38//code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	ldr	w1, [sp, 64]	// tmp170, even_count
	ldr	w0, [sp, 56]	// tmp171, i
	sub	w0, w1, w0	// _37, tmp170, tmp171
// eval/problem38//code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	sub	w0, w0, #1	// _38, _37,
// eval/problem38//code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	ldr	w1, [sp, 60]	// tmp172, j
	cmp	w1, w0	// tmp172, _38
	blt	.L8		//,
// eval/problem38//code.c:13:     for (i = 0; i < even_count - 1; i++) {
	ldr	w0, [sp, 56]	// tmp174, i
	add	w0, w0, 1	// tmp173, tmp174,
	str	w0, [sp, 56]	// tmp173, i
.L4:
// eval/problem38//code.c:13:     for (i = 0; i < even_count - 1; i++) {
	ldr	w0, [sp, 64]	// tmp175, even_count
	sub	w0, w0, #1	// _39, tmp175,
// eval/problem38//code.c:13:     for (i = 0; i < even_count - 1; i++) {
	ldr	w1, [sp, 56]	// tmp176, i
	cmp	w1, w0	// tmp176, _39
	blt	.L9		//,
// eval/problem38//code.c:24:     for (i = 0; i < size; i++) {
	str	wzr, [sp, 56]	//, i
// eval/problem38//code.c:24:     for (i = 0; i < size; i++) {
	b	.L10		//
.L13:
// eval/problem38//code.c:25:         if (i % 2 == 0) {
	ldr	w0, [sp, 56]	// i.1_40, i
	and	w0, w0, 1	// _41, i.1_40,
// eval/problem38//code.c:25:         if (i % 2 == 0) {
	cmp	w0, 0	// _41,
	bne	.L11		//,
// eval/problem38//code.c:26:             out[i] = even[i / 2];
	ldr	w0, [sp, 56]	// tmp177, i
	lsr	w1, w0, 31	// tmp178, tmp177,
	add	w0, w1, w0	// tmp179, tmp178, tmp177
	asr	w0, w0, 1	// tmp180, tmp179,
	sxtw	x0, w0	// _43, _42
// eval/problem38//code.c:26:             out[i] = even[i / 2];
	lsl	x0, x0, 2	// _44, _43,
	ldr	x1, [sp, 72]	// tmp181, even
	add	x1, x1, x0	// _45, tmp181, _44
// eval/problem38//code.c:26:             out[i] = even[i / 2];
	ldrsw	x0, [sp, 56]	// _46, i
	lsl	x0, x0, 2	// _47, _46,
	ldr	x2, [sp, 24]	// tmp182, out
	add	x0, x2, x0	// _48, tmp182, _47
// eval/problem38//code.c:26:             out[i] = even[i / 2];
	ldr	s0, [x1]	// _49, *_45
// eval/problem38//code.c:26:             out[i] = even[i / 2];
	str	s0, [x0]	// _49, *_48
	b	.L12		//
.L11:
// eval/problem38//code.c:28:             out[i] = l[i];
	ldrsw	x0, [sp, 56]	// _50, i
	lsl	x0, x0, 2	// _51, _50,
	ldr	x1, [sp, 40]	// tmp183, l
	add	x1, x1, x0	// _52, tmp183, _51
// eval/problem38//code.c:28:             out[i] = l[i];
	ldrsw	x0, [sp, 56]	// _53, i
	lsl	x0, x0, 2	// _54, _53,
	ldr	x2, [sp, 24]	// tmp184, out
	add	x0, x2, x0	// _55, tmp184, _54
// eval/problem38//code.c:28:             out[i] = l[i];
	ldr	s0, [x1]	// _56, *_52
// eval/problem38//code.c:28:             out[i] = l[i];
	str	s0, [x0]	// _56, *_55
.L12:
// eval/problem38//code.c:24:     for (i = 0; i < size; i++) {
	ldr	w0, [sp, 56]	// tmp186, i
	add	w0, w0, 1	// tmp185, tmp186,
	str	w0, [sp, 56]	// tmp185, i
.L10:
// eval/problem38//code.c:24:     for (i = 0; i < size; i++) {
	ldr	w1, [sp, 56]	// tmp187, i
	ldr	w0, [sp, 36]	// tmp188, size
	cmp	w1, w0	// tmp187, tmp188
	blt	.L13		//,
// eval/problem38//code.c:32:     free(even);
	ldr	x0, [sp, 72]	//, even
	bl	free		//
// eval/problem38//code.c:33: }
	nop	
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
