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
	sub	sp, sp, #64	//,,
	.cfi_def_cfa_offset 64
	str	x0, [sp, 24]	// lst, lst
	str	w1, [sp, 20]	// size, size
	str	x2, [sp, 8]	// out, out
// code.c:5:     for (int i = 0; i < size - 1; i++) {
	str	wzr, [sp, 40]	//, i
// code.c:5:     for (int i = 0; i < size - 1; i++) {
	b	.L2		//
.L6:
// code.c:6:         for (int j = i + 1; j < size; j++) {
	ldr	w0, [sp, 40]	// tmp142, i
	add	w0, w0, 1	// tmp141, tmp142,
	str	w0, [sp, 44]	// tmp141, j
// code.c:6:         for (int j = i + 1; j < size; j++) {
	b	.L3		//
.L5:
// code.c:7:             if (lst[i] > lst[j]) {
	ldrsw	x0, [sp, 40]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp143, lst
	add	x0, x1, x0	// _3, tmp143, _2
	ldr	w1, [x0]	// _4, *_3
// code.c:7:             if (lst[i] > lst[j]) {
	ldrsw	x0, [sp, 44]	// _5, j
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 24]	// tmp144, lst
	add	x0, x2, x0	// _7, tmp144, _6
	ldr	w0, [x0]	// _8, *_7
// code.c:7:             if (lst[i] > lst[j]) {
	cmp	w1, w0	// _4, _8
	ble	.L4		//,
// code.c:8:                 int temp = lst[i];
	ldrsw	x0, [sp, 40]	// _9, i
	lsl	x0, x0, 2	// _10, _9,
	ldr	x1, [sp, 24]	// tmp145, lst
	add	x0, x1, x0	// _11, tmp145, _10
// code.c:8:                 int temp = lst[i];
	ldr	w0, [x0]	// tmp146, *_11
	str	w0, [sp, 60]	// tmp146, temp
// code.c:9:                 lst[i] = lst[j];
	ldrsw	x0, [sp, 44]	// _12, j
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 24]	// tmp147, lst
	add	x1, x1, x0	// _14, tmp147, _13
// code.c:9:                 lst[i] = lst[j];
	ldrsw	x0, [sp, 40]	// _15, i
	lsl	x0, x0, 2	// _16, _15,
	ldr	x2, [sp, 24]	// tmp148, lst
	add	x0, x2, x0	// _17, tmp148, _16
// code.c:9:                 lst[i] = lst[j];
	ldr	w1, [x1]	// _18, *_14
// code.c:9:                 lst[i] = lst[j];
	str	w1, [x0]	// _18, *_17
// code.c:10:                 lst[j] = temp;
	ldrsw	x0, [sp, 44]	// _19, j
	lsl	x0, x0, 2	// _20, _19,
	ldr	x1, [sp, 24]	// tmp149, lst
	add	x0, x1, x0	// _21, tmp149, _20
// code.c:10:                 lst[j] = temp;
	ldr	w1, [sp, 60]	// tmp150, temp
	str	w1, [x0]	// tmp150, *_21
.L4:
// code.c:6:         for (int j = i + 1; j < size; j++) {
	ldr	w0, [sp, 44]	// tmp152, j
	add	w0, w0, 1	// tmp151, tmp152,
	str	w0, [sp, 44]	// tmp151, j
.L3:
// code.c:6:         for (int j = i + 1; j < size; j++) {
	ldr	w1, [sp, 44]	// tmp153, j
	ldr	w0, [sp, 20]	// tmp154, size
	cmp	w1, w0	// tmp153, tmp154
	blt	.L5		//,
// code.c:5:     for (int i = 0; i < size - 1; i++) {
	ldr	w0, [sp, 40]	// tmp156, i
	add	w0, w0, 1	// tmp155, tmp156,
	str	w0, [sp, 40]	// tmp155, i
.L2:
// code.c:5:     for (int i = 0; i < size - 1; i++) {
	ldr	w0, [sp, 20]	// tmp157, size
	sub	w0, w0, #1	// _22, tmp157,
// code.c:5:     for (int i = 0; i < size - 1; i++) {
	ldr	w1, [sp, 40]	// tmp158, i
	cmp	w1, w0	// tmp158, _22
	blt	.L6		//,
// code.c:15:     int l = 0, r = size - 1;
	str	wzr, [sp, 48]	//, l
// code.c:15:     int l = 0, r = size - 1;
	ldr	w0, [sp, 20]	// tmp160, size
	sub	w0, w0, #1	// tmp159, tmp160,
	str	w0, [sp, 52]	// tmp159, r
// code.c:16:     int index = 0;
	str	wzr, [sp, 56]	//, index
// code.c:18:     while (l <= r) {
	b	.L7		//
.L10:
// code.c:19:         if (l == r) {
	ldr	w1, [sp, 48]	// tmp161, l
	ldr	w0, [sp, 52]	// tmp162, r
	cmp	w1, w0	// tmp161, tmp162
	bne	.L8		//,
// code.c:20:             out[index++] = lst[l++];
	ldr	w0, [sp, 48]	// l.0_23, l
	add	w1, w0, 1	// tmp163, l.0_23,
	str	w1, [sp, 48]	// tmp163, l
	sxtw	x0, w0	// _24, l.0_23
// code.c:20:             out[index++] = lst[l++];
	lsl	x0, x0, 2	// _25, _24,
	ldr	x1, [sp, 24]	// tmp164, lst
	add	x1, x1, x0	// _26, tmp164, _25
// code.c:20:             out[index++] = lst[l++];
	ldr	w0, [sp, 56]	// index.1_27, index
	add	w2, w0, 1	// tmp165, index.1_27,
	str	w2, [sp, 56]	// tmp165, index
	sxtw	x0, w0	// _28, index.1_27
// code.c:20:             out[index++] = lst[l++];
	lsl	x0, x0, 2	// _29, _28,
	ldr	x2, [sp, 8]	// tmp166, out
	add	x0, x2, x0	// _30, tmp166, _29
// code.c:20:             out[index++] = lst[l++];
	ldr	w1, [x1]	// _31, *_26
// code.c:20:             out[index++] = lst[l++];
	str	w1, [x0]	// _31, *_30
	b	.L7		//
.L8:
// code.c:22:             out[index++] = lst[l++];
	ldr	w0, [sp, 48]	// l.2_32, l
	add	w1, w0, 1	// tmp167, l.2_32,
	str	w1, [sp, 48]	// tmp167, l
	sxtw	x0, w0	// _33, l.2_32
// code.c:22:             out[index++] = lst[l++];
	lsl	x0, x0, 2	// _34, _33,
	ldr	x1, [sp, 24]	// tmp168, lst
	add	x1, x1, x0	// _35, tmp168, _34
// code.c:22:             out[index++] = lst[l++];
	ldr	w0, [sp, 56]	// index.3_36, index
	add	w2, w0, 1	// tmp169, index.3_36,
	str	w2, [sp, 56]	// tmp169, index
	sxtw	x0, w0	// _37, index.3_36
// code.c:22:             out[index++] = lst[l++];
	lsl	x0, x0, 2	// _38, _37,
	ldr	x2, [sp, 8]	// tmp170, out
	add	x0, x2, x0	// _39, tmp170, _38
// code.c:22:             out[index++] = lst[l++];
	ldr	w1, [x1]	// _40, *_35
// code.c:22:             out[index++] = lst[l++];
	str	w1, [x0]	// _40, *_39
// code.c:23:             out[index++] = lst[r--];
	ldr	w0, [sp, 52]	// r.4_41, r
	sub	w1, w0, #1	// tmp171, r.4_41,
	str	w1, [sp, 52]	// tmp171, r
	sxtw	x0, w0	// _42, r.4_41
// code.c:23:             out[index++] = lst[r--];
	lsl	x0, x0, 2	// _43, _42,
	ldr	x1, [sp, 24]	// tmp172, lst
	add	x1, x1, x0	// _44, tmp172, _43
// code.c:23:             out[index++] = lst[r--];
	ldr	w0, [sp, 56]	// index.5_45, index
	add	w2, w0, 1	// tmp173, index.5_45,
	str	w2, [sp, 56]	// tmp173, index
	sxtw	x0, w0	// _46, index.5_45
// code.c:23:             out[index++] = lst[r--];
	lsl	x0, x0, 2	// _47, _46,
	ldr	x2, [sp, 8]	// tmp174, out
	add	x0, x2, x0	// _48, tmp174, _47
// code.c:23:             out[index++] = lst[r--];
	ldr	w1, [x1]	// _49, *_44
// code.c:23:             out[index++] = lst[r--];
	str	w1, [x0]	// _49, *_48
.L7:
// code.c:18:     while (l <= r) {
	ldr	w1, [sp, 48]	// tmp175, l
	ldr	w0, [sp, 52]	// tmp176, r
	cmp	w1, w0	// tmp175, tmp176
	ble	.L10		//,
// code.c:26: }
	nop	
	nop	
	add	sp, sp, 64	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
