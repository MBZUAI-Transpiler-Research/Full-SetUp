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
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
	str	x0, [sp, 40]	// array, array
	str	w1, [sp, 36]	// size, size
	str	x2, [sp, 24]	// out_array, out_array
	str	x3, [sp, 16]	// out_size, out_size
// eval/problem89//code.c:5:     *out_size = size;
	ldr	x0, [sp, 16]	// tmp168, out_size
	ldr	w1, [sp, 36]	// tmp169, size
	str	w1, [x0]	// tmp169, *out_size_86(D)
// eval/problem89//code.c:6:     if (size == 0) {
	ldr	w0, [sp, 36]	// tmp170, size
	cmp	w0, 0	// tmp170,
	bne	.L2		//,
// eval/problem89//code.c:7:         *out_array = NULL;
	ldr	x0, [sp, 24]	// tmp171, out_array
	str	xzr, [x0]	//, *out_array_90(D)
// eval/problem89//code.c:8:         return;
	b	.L1		//
.L2:
// eval/problem89//code.c:11:     *out_array = (int *)malloc(sizeof(int) * size);
	ldrsw	x0, [sp, 36]	// _1, size
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	mov	x1, x0	// _3, tmp172
// eval/problem89//code.c:11:     *out_array = (int *)malloc(sizeof(int) * size);
	ldr	x0, [sp, 24]	// tmp173, out_array
	str	x1, [x0]	// _3, *out_array_90(D)
// eval/problem89//code.c:12:     if (*out_array == NULL) {
	ldr	x0, [sp, 24]	// tmp174, out_array
	ldr	x0, [x0]	// _4, *out_array_90(D)
// eval/problem89//code.c:12:     if (*out_array == NULL) {
	cmp	x0, 0	// _4,
	bne	.L4		//,
// eval/problem89//code.c:13:         exit(1);
	mov	w0, 1	//,
	bl	exit		//
.L4:
// eval/problem89//code.c:16:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 56]	//, i
// eval/problem89//code.c:16:     for (int i = 0; i < size; i++) {
	b	.L5		//
.L6:
// eval/problem89//code.c:17:         (*out_array)[i] = array[i];
	ldrsw	x0, [sp, 56]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 40]	// tmp175, array
	add	x1, x1, x0	// _7, tmp175, _6
// eval/problem89//code.c:17:         (*out_array)[i] = array[i];
	ldr	x0, [sp, 24]	// tmp176, out_array
	ldr	x2, [x0]	// _8, *out_array_90(D)
// eval/problem89//code.c:17:         (*out_array)[i] = array[i];
	ldrsw	x0, [sp, 56]	// _9, i
	lsl	x0, x0, 2	// _10, _9,
	add	x0, x2, x0	// _11, _8, _10
// eval/problem89//code.c:17:         (*out_array)[i] = array[i];
	ldr	w1, [x1]	// _12, *_7
// eval/problem89//code.c:17:         (*out_array)[i] = array[i];
	str	w1, [x0]	// _12, *_11
// eval/problem89//code.c:16:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 56]	// tmp178, i
	add	w0, w0, 1	// tmp177, tmp178,
	str	w0, [sp, 56]	// tmp177, i
.L5:
// eval/problem89//code.c:16:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 56]	// tmp179, i
	ldr	w0, [sp, 36]	// tmp180, size
	cmp	w1, w0	// tmp179, tmp180
	blt	.L6		//,
// eval/problem89//code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	ldr	x0, [sp, 40]	// tmp181, array
	ldr	w1, [x0]	// _13, *array_93(D)
// eval/problem89//code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	ldrsw	x0, [sp, 36]	// _14, size
	lsl	x0, x0, 2	// _15, _14,
	sub	x0, x0, #4	// _16, _15,
	ldr	x2, [sp, 40]	// tmp182, array
	add	x0, x2, x0	// _17, tmp182, _16
	ldr	w0, [x0]	// _18, *_17
// eval/problem89//code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	add	w0, w1, w0	// _19, _13, _18
// eval/problem89//code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	cmp	w0, 0	// _19,
	and	w0, w0, 1	// tmp183, _19,
	csneg	w0, w0, w0, ge	// _20, tmp183, tmp183,
// eval/problem89//code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	cmp	w0, 1	// _20,
	cset	w0, eq	// tmp185,
	and	w0, w0, 255	// _21, tmp184
// eval/problem89//code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	str	w0, [sp, 68]	// _21, shouldSortAscending
// eval/problem89//code.c:22:     for (int i = 0; i < size - 1; i++) {
	str	wzr, [sp, 60]	//, i
// eval/problem89//code.c:22:     for (int i = 0; i < size - 1; i++) {
	b	.L7		//
.L12:
// eval/problem89//code.c:23:         for (int j = i + 1; j < size; j++) {
	ldr	w0, [sp, 60]	// tmp187, i
	add	w0, w0, 1	// tmp186, tmp187,
	str	w0, [sp, 64]	// tmp186, j
// eval/problem89//code.c:23:         for (int j = i + 1; j < size; j++) {
	b	.L8		//
.L11:
// eval/problem89//code.c:24:             if (shouldSortAscending) {
	ldr	w0, [sp, 68]	// tmp188, shouldSortAscending
	cmp	w0, 0	// tmp188,
	beq	.L9		//,
// eval/problem89//code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	ldr	x0, [sp, 24]	// tmp189, out_array
	ldr	x1, [x0]	// _22, *out_array_90(D)
// eval/problem89//code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	ldrsw	x0, [sp, 60]	// _23, i
	lsl	x0, x0, 2	// _24, _23,
	add	x0, x1, x0	// _25, _22, _24
	ldr	w1, [x0]	// _26, *_25
// eval/problem89//code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	ldr	x0, [sp, 24]	// tmp190, out_array
	ldr	x2, [x0]	// _27, *out_array_90(D)
// eval/problem89//code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	ldrsw	x0, [sp, 64]	// _28, j
	lsl	x0, x0, 2	// _29, _28,
	add	x0, x2, x0	// _30, _27, _29
	ldr	w0, [x0]	// _31, *_30
// eval/problem89//code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	cmp	w1, w0	// _26, _31
	ble	.L10		//,
// eval/problem89//code.c:26:                     int temp = (*out_array)[i];
	ldr	x0, [sp, 24]	// tmp191, out_array
	ldr	x1, [x0]	// _32, *out_array_90(D)
// eval/problem89//code.c:26:                     int temp = (*out_array)[i];
	ldrsw	x0, [sp, 60]	// _33, i
	lsl	x0, x0, 2	// _34, _33,
	add	x0, x1, x0	// _35, _32, _34
// eval/problem89//code.c:26:                     int temp = (*out_array)[i];
	ldr	w0, [x0]	// tmp192, *_35
	str	w0, [sp, 76]	// tmp192, temp
// eval/problem89//code.c:27:                     (*out_array)[i] = (*out_array)[j];
	ldr	x0, [sp, 24]	// tmp193, out_array
	ldr	x1, [x0]	// _36, *out_array_90(D)
// eval/problem89//code.c:27:                     (*out_array)[i] = (*out_array)[j];
	ldrsw	x0, [sp, 64]	// _37, j
	lsl	x0, x0, 2	// _38, _37,
	add	x1, x1, x0	// _39, _36, _38
// eval/problem89//code.c:27:                     (*out_array)[i] = (*out_array)[j];
	ldr	x0, [sp, 24]	// tmp194, out_array
	ldr	x2, [x0]	// _40, *out_array_90(D)
// eval/problem89//code.c:27:                     (*out_array)[i] = (*out_array)[j];
	ldrsw	x0, [sp, 60]	// _41, i
	lsl	x0, x0, 2	// _42, _41,
	add	x0, x2, x0	// _43, _40, _42
// eval/problem89//code.c:27:                     (*out_array)[i] = (*out_array)[j];
	ldr	w1, [x1]	// _44, *_39
// eval/problem89//code.c:27:                     (*out_array)[i] = (*out_array)[j];
	str	w1, [x0]	// _44, *_43
// eval/problem89//code.c:28:                     (*out_array)[j] = temp;
	ldr	x0, [sp, 24]	// tmp195, out_array
	ldr	x1, [x0]	// _45, *out_array_90(D)
// eval/problem89//code.c:28:                     (*out_array)[j] = temp;
	ldrsw	x0, [sp, 64]	// _46, j
	lsl	x0, x0, 2	// _47, _46,
	add	x0, x1, x0	// _48, _45, _47
// eval/problem89//code.c:28:                     (*out_array)[j] = temp;
	ldr	w1, [sp, 76]	// tmp196, temp
	str	w1, [x0]	// tmp196, *_48
	b	.L10		//
.L9:
// eval/problem89//code.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	ldr	x0, [sp, 24]	// tmp197, out_array
	ldr	x1, [x0]	// _49, *out_array_90(D)
// eval/problem89//code.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	ldrsw	x0, [sp, 60]	// _50, i
	lsl	x0, x0, 2	// _51, _50,
	add	x0, x1, x0	// _52, _49, _51
	ldr	w1, [x0]	// _53, *_52
// eval/problem89//code.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	ldr	x0, [sp, 24]	// tmp198, out_array
	ldr	x2, [x0]	// _54, *out_array_90(D)
// eval/problem89//code.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	ldrsw	x0, [sp, 64]	// _55, j
	lsl	x0, x0, 2	// _56, _55,
	add	x0, x2, x0	// _57, _54, _56
	ldr	w0, [x0]	// _58, *_57
// eval/problem89//code.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	cmp	w1, w0	// _53, _58
	bge	.L10		//,
// eval/problem89//code.c:32:                     int temp = (*out_array)[i];
	ldr	x0, [sp, 24]	// tmp199, out_array
	ldr	x1, [x0]	// _59, *out_array_90(D)
// eval/problem89//code.c:32:                     int temp = (*out_array)[i];
	ldrsw	x0, [sp, 60]	// _60, i
	lsl	x0, x0, 2	// _61, _60,
	add	x0, x1, x0	// _62, _59, _61
// eval/problem89//code.c:32:                     int temp = (*out_array)[i];
	ldr	w0, [x0]	// tmp200, *_62
	str	w0, [sp, 72]	// tmp200, temp
// eval/problem89//code.c:33:                     (*out_array)[i] = (*out_array)[j];
	ldr	x0, [sp, 24]	// tmp201, out_array
	ldr	x1, [x0]	// _63, *out_array_90(D)
// eval/problem89//code.c:33:                     (*out_array)[i] = (*out_array)[j];
	ldrsw	x0, [sp, 64]	// _64, j
	lsl	x0, x0, 2	// _65, _64,
	add	x1, x1, x0	// _66, _63, _65
// eval/problem89//code.c:33:                     (*out_array)[i] = (*out_array)[j];
	ldr	x0, [sp, 24]	// tmp202, out_array
	ldr	x2, [x0]	// _67, *out_array_90(D)
// eval/problem89//code.c:33:                     (*out_array)[i] = (*out_array)[j];
	ldrsw	x0, [sp, 60]	// _68, i
	lsl	x0, x0, 2	// _69, _68,
	add	x0, x2, x0	// _70, _67, _69
// eval/problem89//code.c:33:                     (*out_array)[i] = (*out_array)[j];
	ldr	w1, [x1]	// _71, *_66
// eval/problem89//code.c:33:                     (*out_array)[i] = (*out_array)[j];
	str	w1, [x0]	// _71, *_70
// eval/problem89//code.c:34:                     (*out_array)[j] = temp;
	ldr	x0, [sp, 24]	// tmp203, out_array
	ldr	x1, [x0]	// _72, *out_array_90(D)
// eval/problem89//code.c:34:                     (*out_array)[j] = temp;
	ldrsw	x0, [sp, 64]	// _73, j
	lsl	x0, x0, 2	// _74, _73,
	add	x0, x1, x0	// _75, _72, _74
// eval/problem89//code.c:34:                     (*out_array)[j] = temp;
	ldr	w1, [sp, 72]	// tmp204, temp
	str	w1, [x0]	// tmp204, *_75
.L10:
// eval/problem89//code.c:23:         for (int j = i + 1; j < size; j++) {
	ldr	w0, [sp, 64]	// tmp206, j
	add	w0, w0, 1	// tmp205, tmp206,
	str	w0, [sp, 64]	// tmp205, j
.L8:
// eval/problem89//code.c:23:         for (int j = i + 1; j < size; j++) {
	ldr	w1, [sp, 64]	// tmp207, j
	ldr	w0, [sp, 36]	// tmp208, size
	cmp	w1, w0	// tmp207, tmp208
	blt	.L11		//,
// eval/problem89//code.c:22:     for (int i = 0; i < size - 1; i++) {
	ldr	w0, [sp, 60]	// tmp210, i
	add	w0, w0, 1	// tmp209, tmp210,
	str	w0, [sp, 60]	// tmp209, i
.L7:
// eval/problem89//code.c:22:     for (int i = 0; i < size - 1; i++) {
	ldr	w0, [sp, 36]	// tmp211, size
	sub	w0, w0, #1	// _76, tmp211,
// eval/problem89//code.c:22:     for (int i = 0; i < size - 1; i++) {
	ldr	w1, [sp, 60]	// tmp212, i
	cmp	w1, w0	// tmp212, _76
	blt	.L12		//,
.L1:
// eval/problem89//code.c:39: }
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
