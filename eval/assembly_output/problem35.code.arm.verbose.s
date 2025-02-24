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
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
	str	x0, [sp, 40]	// l, l
	str	w1, [sp, 36]	// size, size
	str	x2, [sp, 24]	// out_size, out_size
// code.c:5:     int *out = malloc(size * sizeof(int));
	ldrsw	x0, [sp, 36]	// _1, size
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 72]	// tmp134, out
// code.c:6:     int found, out_count = 0, i, j;
	str	wzr, [sp, 56]	//, out_count
// code.c:7:     for (i = 0; i < size; i++) {
	str	wzr, [sp, 60]	//, i
// code.c:7:     for (i = 0; i < size; i++) {
	b	.L2		//
.L8:
// code.c:8:         found = 0;
	str	wzr, [sp, 52]	//, found
// code.c:9:         for (j = 0; j < out_count; j++) {
	str	wzr, [sp, 64]	//, j
// code.c:9:         for (j = 0; j < out_count; j++) {
	b	.L3		//
.L6:
// code.c:10:             if (l[i] == out[j]) {
	ldrsw	x0, [sp, 60]	// _3, i
	lsl	x0, x0, 2	// _4, _3,
	ldr	x1, [sp, 40]	// tmp135, l
	add	x0, x1, x0	// _5, tmp135, _4
	ldr	w1, [x0]	// _6, *_5
// code.c:10:             if (l[i] == out[j]) {
	ldrsw	x0, [sp, 64]	// _7, j
	lsl	x0, x0, 2	// _8, _7,
	ldr	x2, [sp, 72]	// tmp136, out
	add	x0, x2, x0	// _9, tmp136, _8
	ldr	w0, [x0]	// _10, *_9
// code.c:10:             if (l[i] == out[j]) {
	cmp	w1, w0	// _6, _10
	bne	.L4		//,
// code.c:11:                 found = 1;
	mov	w0, 1	// tmp137,
	str	w0, [sp, 52]	// tmp137, found
// code.c:12:                 break;
	b	.L5		//
.L4:
// code.c:9:         for (j = 0; j < out_count; j++) {
	ldr	w0, [sp, 64]	// tmp139, j
	add	w0, w0, 1	// tmp138, tmp139,
	str	w0, [sp, 64]	// tmp138, j
.L3:
// code.c:9:         for (j = 0; j < out_count; j++) {
	ldr	w1, [sp, 64]	// tmp140, j
	ldr	w0, [sp, 56]	// tmp141, out_count
	cmp	w1, w0	// tmp140, tmp141
	blt	.L6		//,
.L5:
// code.c:15:         if (!found) {
	ldr	w0, [sp, 52]	// tmp142, found
	cmp	w0, 0	// tmp142,
	bne	.L7		//,
// code.c:16:             out[out_count++] = l[i];
	ldrsw	x0, [sp, 60]	// _11, i
	lsl	x0, x0, 2	// _12, _11,
	ldr	x1, [sp, 40]	// tmp143, l
	add	x1, x1, x0	// _13, tmp143, _12
// code.c:16:             out[out_count++] = l[i];
	ldr	w0, [sp, 56]	// out_count.0_14, out_count
	add	w2, w0, 1	// tmp144, out_count.0_14,
	str	w2, [sp, 56]	// tmp144, out_count
	sxtw	x0, w0	// _15, out_count.0_14
// code.c:16:             out[out_count++] = l[i];
	lsl	x0, x0, 2	// _16, _15,
	ldr	x2, [sp, 72]	// tmp145, out
	add	x0, x2, x0	// _17, tmp145, _16
// code.c:16:             out[out_count++] = l[i];
	ldr	w1, [x1]	// _18, *_13
// code.c:16:             out[out_count++] = l[i];
	str	w1, [x0]	// _18, *_17
.L7:
// code.c:7:     for (i = 0; i < size; i++) {
	ldr	w0, [sp, 60]	// tmp147, i
	add	w0, w0, 1	// tmp146, tmp147,
	str	w0, [sp, 60]	// tmp146, i
.L2:
// code.c:7:     for (i = 0; i < size; i++) {
	ldr	w1, [sp, 60]	// tmp148, i
	ldr	w0, [sp, 36]	// tmp149, size
	cmp	w1, w0	// tmp148, tmp149
	blt	.L8		//,
// code.c:20:     for (i = 0; i < out_count - 1; i++) {
	str	wzr, [sp, 60]	//, i
// code.c:20:     for (i = 0; i < out_count - 1; i++) {
	b	.L9		//
.L13:
// code.c:21:         for (j = i + 1; j < out_count; j++) {
	ldr	w0, [sp, 60]	// tmp151, i
	add	w0, w0, 1	// tmp150, tmp151,
	str	w0, [sp, 64]	// tmp150, j
// code.c:21:         for (j = i + 1; j < out_count; j++) {
	b	.L10		//
.L12:
// code.c:22:             if (out[i] > out[j]) {
	ldrsw	x0, [sp, 60]	// _19, i
	lsl	x0, x0, 2	// _20, _19,
	ldr	x1, [sp, 72]	// tmp152, out
	add	x0, x1, x0	// _21, tmp152, _20
	ldr	w1, [x0]	// _22, *_21
// code.c:22:             if (out[i] > out[j]) {
	ldrsw	x0, [sp, 64]	// _23, j
	lsl	x0, x0, 2	// _24, _23,
	ldr	x2, [sp, 72]	// tmp153, out
	add	x0, x2, x0	// _25, tmp153, _24
	ldr	w0, [x0]	// _26, *_25
// code.c:22:             if (out[i] > out[j]) {
	cmp	w1, w0	// _22, _26
	ble	.L11		//,
// code.c:23:                 int temp = out[i];
	ldrsw	x0, [sp, 60]	// _27, i
	lsl	x0, x0, 2	// _28, _27,
	ldr	x1, [sp, 72]	// tmp154, out
	add	x0, x1, x0	// _29, tmp154, _28
// code.c:23:                 int temp = out[i];
	ldr	w0, [x0]	// tmp155, *_29
	str	w0, [sp, 68]	// tmp155, temp
// code.c:24:                 out[i] = out[j];
	ldrsw	x0, [sp, 64]	// _30, j
	lsl	x0, x0, 2	// _31, _30,
	ldr	x1, [sp, 72]	// tmp156, out
	add	x1, x1, x0	// _32, tmp156, _31
// code.c:24:                 out[i] = out[j];
	ldrsw	x0, [sp, 60]	// _33, i
	lsl	x0, x0, 2	// _34, _33,
	ldr	x2, [sp, 72]	// tmp157, out
	add	x0, x2, x0	// _35, tmp157, _34
// code.c:24:                 out[i] = out[j];
	ldr	w1, [x1]	// _36, *_32
// code.c:24:                 out[i] = out[j];
	str	w1, [x0]	// _36, *_35
// code.c:25:                 out[j] = temp;
	ldrsw	x0, [sp, 64]	// _37, j
	lsl	x0, x0, 2	// _38, _37,
	ldr	x1, [sp, 72]	// tmp158, out
	add	x0, x1, x0	// _39, tmp158, _38
// code.c:25:                 out[j] = temp;
	ldr	w1, [sp, 68]	// tmp159, temp
	str	w1, [x0]	// tmp159, *_39
.L11:
// code.c:21:         for (j = i + 1; j < out_count; j++) {
	ldr	w0, [sp, 64]	// tmp161, j
	add	w0, w0, 1	// tmp160, tmp161,
	str	w0, [sp, 64]	// tmp160, j
.L10:
// code.c:21:         for (j = i + 1; j < out_count; j++) {
	ldr	w1, [sp, 64]	// tmp162, j
	ldr	w0, [sp, 56]	// tmp163, out_count
	cmp	w1, w0	// tmp162, tmp163
	blt	.L12		//,
// code.c:20:     for (i = 0; i < out_count - 1; i++) {
	ldr	w0, [sp, 60]	// tmp165, i
	add	w0, w0, 1	// tmp164, tmp165,
	str	w0, [sp, 60]	// tmp164, i
.L9:
// code.c:20:     for (i = 0; i < out_count - 1; i++) {
	ldr	w0, [sp, 56]	// tmp166, out_count
	sub	w0, w0, #1	// _40, tmp166,
// code.c:20:     for (i = 0; i < out_count - 1; i++) {
	ldr	w1, [sp, 60]	// tmp167, i
	cmp	w1, w0	// tmp167, _40
	blt	.L13		//,
// code.c:30:     *out_size = out_count;
	ldr	x0, [sp, 24]	// tmp168, out_size
	ldr	w1, [sp, 56]	// tmp169, out_count
	str	w1, [x0]	// tmp169, *out_size_60(D)
// code.c:31:     return out;
	ldr	x0, [sp, 72]	// _62, out
// code.c:32: }
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
