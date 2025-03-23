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
	str	x0, [sp, 40]	// l1, l1
	str	w1, [sp, 36]	// size1, size1
	str	x2, [sp, 24]	// l2, l2
	str	w3, [sp, 32]	// size2, size2
	str	x4, [sp, 16]	// out_size, out_size
// eval/problem59//code.c:5:     int *out = malloc(size1 * sizeof(int));
	ldrsw	x0, [sp, 36]	// _1, size1
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 72]	// tmp147, out
// eval/problem59//code.c:6:     int k = 0, i, j, m;
	str	wzr, [sp, 48]	//, k
// eval/problem59//code.c:8:     for (i = 0; i < size1; i++) {
	str	wzr, [sp, 52]	//, i
// eval/problem59//code.c:8:     for (i = 0; i < size1; i++) {
	b	.L2		//
.L11:
// eval/problem59//code.c:9:         int exists_in_out = 0;
	str	wzr, [sp, 64]	//, exists_in_out
// eval/problem59//code.c:10:         for (m = 0; m < k; m++) {
	str	wzr, [sp, 60]	//, m
// eval/problem59//code.c:10:         for (m = 0; m < k; m++) {
	b	.L3		//
.L6:
// eval/problem59//code.c:11:             if (out[m] == l1[i]) {
	ldrsw	x0, [sp, 60]	// _3, m
	lsl	x0, x0, 2	// _4, _3,
	ldr	x1, [sp, 72]	// tmp148, out
	add	x0, x1, x0	// _5, tmp148, _4
	ldr	w1, [x0]	// _6, *_5
// eval/problem59//code.c:11:             if (out[m] == l1[i]) {
	ldrsw	x0, [sp, 52]	// _7, i
	lsl	x0, x0, 2	// _8, _7,
	ldr	x2, [sp, 40]	// tmp149, l1
	add	x0, x2, x0	// _9, tmp149, _8
	ldr	w0, [x0]	// _10, *_9
// eval/problem59//code.c:11:             if (out[m] == l1[i]) {
	cmp	w1, w0	// _6, _10
	bne	.L4		//,
// eval/problem59//code.c:12:                 exists_in_out = 1;
	mov	w0, 1	// tmp150,
	str	w0, [sp, 64]	// tmp150, exists_in_out
// eval/problem59//code.c:13:                 break;
	b	.L5		//
.L4:
// eval/problem59//code.c:10:         for (m = 0; m < k; m++) {
	ldr	w0, [sp, 60]	// tmp152, m
	add	w0, w0, 1	// tmp151, tmp152,
	str	w0, [sp, 60]	// tmp151, m
.L3:
// eval/problem59//code.c:10:         for (m = 0; m < k; m++) {
	ldr	w1, [sp, 60]	// tmp153, m
	ldr	w0, [sp, 48]	// tmp154, k
	cmp	w1, w0	// tmp153, tmp154
	blt	.L6		//,
.L5:
// eval/problem59//code.c:16:         if (!exists_in_out) {
	ldr	w0, [sp, 64]	// tmp155, exists_in_out
	cmp	w0, 0	// tmp155,
	bne	.L7		//,
// eval/problem59//code.c:17:             for (j = 0; j < size2; j++) {
	str	wzr, [sp, 56]	//, j
// eval/problem59//code.c:17:             for (j = 0; j < size2; j++) {
	b	.L8		//
.L10:
// eval/problem59//code.c:18:                 if (l1[i] == l2[j]) {
	ldrsw	x0, [sp, 52]	// _11, i
	lsl	x0, x0, 2	// _12, _11,
	ldr	x1, [sp, 40]	// tmp156, l1
	add	x0, x1, x0	// _13, tmp156, _12
	ldr	w1, [x0]	// _14, *_13
// eval/problem59//code.c:18:                 if (l1[i] == l2[j]) {
	ldrsw	x0, [sp, 56]	// _15, j
	lsl	x0, x0, 2	// _16, _15,
	ldr	x2, [sp, 24]	// tmp157, l2
	add	x0, x2, x0	// _17, tmp157, _16
	ldr	w0, [x0]	// _18, *_17
// eval/problem59//code.c:18:                 if (l1[i] == l2[j]) {
	cmp	w1, w0	// _14, _18
	bne	.L9		//,
// eval/problem59//code.c:19:                     out[k++] = l1[i];
	ldrsw	x0, [sp, 52]	// _19, i
	lsl	x0, x0, 2	// _20, _19,
	ldr	x1, [sp, 40]	// tmp158, l1
	add	x1, x1, x0	// _21, tmp158, _20
// eval/problem59//code.c:19:                     out[k++] = l1[i];
	ldr	w0, [sp, 48]	// k.0_22, k
	add	w2, w0, 1	// tmp159, k.0_22,
	str	w2, [sp, 48]	// tmp159, k
	sxtw	x0, w0	// _23, k.0_22
// eval/problem59//code.c:19:                     out[k++] = l1[i];
	lsl	x0, x0, 2	// _24, _23,
	ldr	x2, [sp, 72]	// tmp160, out
	add	x0, x2, x0	// _25, tmp160, _24
// eval/problem59//code.c:19:                     out[k++] = l1[i];
	ldr	w1, [x1]	// _26, *_21
// eval/problem59//code.c:19:                     out[k++] = l1[i];
	str	w1, [x0]	// _26, *_25
// eval/problem59//code.c:20:                     break;
	b	.L7		//
.L9:
// eval/problem59//code.c:17:             for (j = 0; j < size2; j++) {
	ldr	w0, [sp, 56]	// tmp162, j
	add	w0, w0, 1	// tmp161, tmp162,
	str	w0, [sp, 56]	// tmp161, j
.L8:
// eval/problem59//code.c:17:             for (j = 0; j < size2; j++) {
	ldr	w1, [sp, 56]	// tmp163, j
	ldr	w0, [sp, 32]	// tmp164, size2
	cmp	w1, w0	// tmp163, tmp164
	blt	.L10		//,
.L7:
// eval/problem59//code.c:8:     for (i = 0; i < size1; i++) {
	ldr	w0, [sp, 52]	// tmp166, i
	add	w0, w0, 1	// tmp165, tmp166,
	str	w0, [sp, 52]	// tmp165, i
.L2:
// eval/problem59//code.c:8:     for (i = 0; i < size1; i++) {
	ldr	w1, [sp, 52]	// tmp167, i
	ldr	w0, [sp, 36]	// tmp168, size1
	cmp	w1, w0	// tmp167, tmp168
	blt	.L11		//,
// eval/problem59//code.c:26:     for (i = 0; i < k - 1; i++) {
	str	wzr, [sp, 52]	//, i
// eval/problem59//code.c:26:     for (i = 0; i < k - 1; i++) {
	b	.L12		//
.L16:
// eval/problem59//code.c:27:         for (j = 0; j < k - i - 1; j++) {
	str	wzr, [sp, 56]	//, j
// eval/problem59//code.c:27:         for (j = 0; j < k - i - 1; j++) {
	b	.L13		//
.L15:
// eval/problem59//code.c:28:             if (out[j] > out[j + 1]) {
	ldrsw	x0, [sp, 56]	// _27, j
	lsl	x0, x0, 2	// _28, _27,
	ldr	x1, [sp, 72]	// tmp169, out
	add	x0, x1, x0	// _29, tmp169, _28
	ldr	w1, [x0]	// _30, *_29
// eval/problem59//code.c:28:             if (out[j] > out[j + 1]) {
	ldrsw	x0, [sp, 56]	// _31, j
	add	x0, x0, 1	// _32, _31,
	lsl	x0, x0, 2	// _33, _32,
	ldr	x2, [sp, 72]	// tmp170, out
	add	x0, x2, x0	// _34, tmp170, _33
	ldr	w0, [x0]	// _35, *_34
// eval/problem59//code.c:28:             if (out[j] > out[j + 1]) {
	cmp	w1, w0	// _30, _35
	ble	.L14		//,
// eval/problem59//code.c:29:                 int temp = out[j];
	ldrsw	x0, [sp, 56]	// _36, j
	lsl	x0, x0, 2	// _37, _36,
	ldr	x1, [sp, 72]	// tmp171, out
	add	x0, x1, x0	// _38, tmp171, _37
// eval/problem59//code.c:29:                 int temp = out[j];
	ldr	w0, [x0]	// tmp172, *_38
	str	w0, [sp, 68]	// tmp172, temp
// eval/problem59//code.c:30:                 out[j] = out[j + 1];
	ldrsw	x0, [sp, 56]	// _39, j
	add	x0, x0, 1	// _40, _39,
	lsl	x0, x0, 2	// _41, _40,
	ldr	x1, [sp, 72]	// tmp173, out
	add	x1, x1, x0	// _42, tmp173, _41
// eval/problem59//code.c:30:                 out[j] = out[j + 1];
	ldrsw	x0, [sp, 56]	// _43, j
	lsl	x0, x0, 2	// _44, _43,
	ldr	x2, [sp, 72]	// tmp174, out
	add	x0, x2, x0	// _45, tmp174, _44
// eval/problem59//code.c:30:                 out[j] = out[j + 1];
	ldr	w1, [x1]	// _46, *_42
// eval/problem59//code.c:30:                 out[j] = out[j + 1];
	str	w1, [x0]	// _46, *_45
// eval/problem59//code.c:31:                 out[j + 1] = temp;
	ldrsw	x0, [sp, 56]	// _47, j
	add	x0, x0, 1	// _48, _47,
	lsl	x0, x0, 2	// _49, _48,
	ldr	x1, [sp, 72]	// tmp175, out
	add	x0, x1, x0	// _50, tmp175, _49
// eval/problem59//code.c:31:                 out[j + 1] = temp;
	ldr	w1, [sp, 68]	// tmp176, temp
	str	w1, [x0]	// tmp176, *_50
.L14:
// eval/problem59//code.c:27:         for (j = 0; j < k - i - 1; j++) {
	ldr	w0, [sp, 56]	// tmp178, j
	add	w0, w0, 1	// tmp177, tmp178,
	str	w0, [sp, 56]	// tmp177, j
.L13:
// eval/problem59//code.c:27:         for (j = 0; j < k - i - 1; j++) {
	ldr	w1, [sp, 48]	// tmp179, k
	ldr	w0, [sp, 52]	// tmp180, i
	sub	w0, w1, w0	// _51, tmp179, tmp180
// eval/problem59//code.c:27:         for (j = 0; j < k - i - 1; j++) {
	sub	w0, w0, #1	// _52, _51,
// eval/problem59//code.c:27:         for (j = 0; j < k - i - 1; j++) {
	ldr	w1, [sp, 56]	// tmp181, j
	cmp	w1, w0	// tmp181, _52
	blt	.L15		//,
// eval/problem59//code.c:26:     for (i = 0; i < k - 1; i++) {
	ldr	w0, [sp, 52]	// tmp183, i
	add	w0, w0, 1	// tmp182, tmp183,
	str	w0, [sp, 52]	// tmp182, i
.L12:
// eval/problem59//code.c:26:     for (i = 0; i < k - 1; i++) {
	ldr	w0, [sp, 48]	// tmp184, k
	sub	w0, w0, #1	// _53, tmp184,
// eval/problem59//code.c:26:     for (i = 0; i < k - 1; i++) {
	ldr	w1, [sp, 52]	// tmp185, i
	cmp	w1, w0	// tmp185, _53
	blt	.L16		//,
// eval/problem59//code.c:36:     *out_size = k;
	ldr	x0, [sp, 16]	// tmp186, out_size
	ldr	w1, [sp, 48]	// tmp187, k
	str	w1, [x0]	// tmp187, *out_size_74(D)
// eval/problem59//code.c:37:     return out;
	ldr	x0, [sp, 72]	// _76, out
// eval/problem59//code.c:38: }
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
