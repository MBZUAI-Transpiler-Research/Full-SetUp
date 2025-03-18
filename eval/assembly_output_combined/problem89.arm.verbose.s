	.arch armv8-a
	.file	"problem89.c"
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
// problem89.c:5:     *out_size = size;
	ldr	x0, [sp, 16]	// tmp168, out_size
	ldr	w1, [sp, 36]	// tmp169, size
	str	w1, [x0]	// tmp169, *out_size_86(D)
// problem89.c:6:     if (size == 0) {
	ldr	w0, [sp, 36]	// tmp170, size
	cmp	w0, 0	// tmp170,
	bne	.L2		//,
// problem89.c:7:         *out_array = NULL;
	ldr	x0, [sp, 24]	// tmp171, out_array
	str	xzr, [x0]	//, *out_array_90(D)
// problem89.c:8:         return;
	b	.L1		//
.L2:
// problem89.c:11:     *out_array = (int *)malloc(sizeof(int) * size);
	ldrsw	x0, [sp, 36]	// _1, size
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	mov	x1, x0	// _3, tmp172
// problem89.c:11:     *out_array = (int *)malloc(sizeof(int) * size);
	ldr	x0, [sp, 24]	// tmp173, out_array
	str	x1, [x0]	// _3, *out_array_90(D)
// problem89.c:12:     if (*out_array == NULL) {
	ldr	x0, [sp, 24]	// tmp174, out_array
	ldr	x0, [x0]	// _4, *out_array_90(D)
// problem89.c:12:     if (*out_array == NULL) {
	cmp	x0, 0	// _4,
	bne	.L4		//,
// problem89.c:13:         exit(1);
	mov	w0, 1	//,
	bl	exit		//
.L4:
// problem89.c:16:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 56]	//, i
// problem89.c:16:     for (int i = 0; i < size; i++) {
	b	.L5		//
.L6:
// problem89.c:17:         (*out_array)[i] = array[i];
	ldrsw	x0, [sp, 56]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 40]	// tmp175, array
	add	x1, x1, x0	// _7, tmp175, _6
// problem89.c:17:         (*out_array)[i] = array[i];
	ldr	x0, [sp, 24]	// tmp176, out_array
	ldr	x2, [x0]	// _8, *out_array_90(D)
// problem89.c:17:         (*out_array)[i] = array[i];
	ldrsw	x0, [sp, 56]	// _9, i
	lsl	x0, x0, 2	// _10, _9,
	add	x0, x2, x0	// _11, _8, _10
// problem89.c:17:         (*out_array)[i] = array[i];
	ldr	w1, [x1]	// _12, *_7
// problem89.c:17:         (*out_array)[i] = array[i];
	str	w1, [x0]	// _12, *_11
// problem89.c:16:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 56]	// tmp178, i
	add	w0, w0, 1	// tmp177, tmp178,
	str	w0, [sp, 56]	// tmp177, i
.L5:
// problem89.c:16:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 56]	// tmp179, i
	ldr	w0, [sp, 36]	// tmp180, size
	cmp	w1, w0	// tmp179, tmp180
	blt	.L6		//,
// problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	ldr	x0, [sp, 40]	// tmp181, array
	ldr	w1, [x0]	// _13, *array_93(D)
// problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	ldrsw	x0, [sp, 36]	// _14, size
	lsl	x0, x0, 2	// _15, _14,
	sub	x0, x0, #4	// _16, _15,
	ldr	x2, [sp, 40]	// tmp182, array
	add	x0, x2, x0	// _17, tmp182, _16
	ldr	w0, [x0]	// _18, *_17
// problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	add	w0, w1, w0	// _19, _13, _18
// problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	cmp	w0, 0	// _19,
	and	w0, w0, 1	// tmp183, _19,
	csneg	w0, w0, w0, ge	// _20, tmp183, tmp183,
// problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	cmp	w0, 1	// _20,
	cset	w0, eq	// tmp185,
	and	w0, w0, 255	// _21, tmp184
// problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	str	w0, [sp, 68]	// _21, shouldSortAscending
// problem89.c:22:     for (int i = 0; i < size - 1; i++) {
	str	wzr, [sp, 60]	//, i
// problem89.c:22:     for (int i = 0; i < size - 1; i++) {
	b	.L7		//
.L12:
// problem89.c:23:         for (int j = i + 1; j < size; j++) {
	ldr	w0, [sp, 60]	// tmp187, i
	add	w0, w0, 1	// tmp186, tmp187,
	str	w0, [sp, 64]	// tmp186, j
// problem89.c:23:         for (int j = i + 1; j < size; j++) {
	b	.L8		//
.L11:
// problem89.c:24:             if (shouldSortAscending) {
	ldr	w0, [sp, 68]	// tmp188, shouldSortAscending
	cmp	w0, 0	// tmp188,
	beq	.L9		//,
// problem89.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	ldr	x0, [sp, 24]	// tmp189, out_array
	ldr	x1, [x0]	// _22, *out_array_90(D)
// problem89.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	ldrsw	x0, [sp, 60]	// _23, i
	lsl	x0, x0, 2	// _24, _23,
	add	x0, x1, x0	// _25, _22, _24
	ldr	w1, [x0]	// _26, *_25
// problem89.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	ldr	x0, [sp, 24]	// tmp190, out_array
	ldr	x2, [x0]	// _27, *out_array_90(D)
// problem89.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	ldrsw	x0, [sp, 64]	// _28, j
	lsl	x0, x0, 2	// _29, _28,
	add	x0, x2, x0	// _30, _27, _29
	ldr	w0, [x0]	// _31, *_30
// problem89.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	cmp	w1, w0	// _26, _31
	ble	.L10		//,
// problem89.c:26:                     int temp = (*out_array)[i];
	ldr	x0, [sp, 24]	// tmp191, out_array
	ldr	x1, [x0]	// _32, *out_array_90(D)
// problem89.c:26:                     int temp = (*out_array)[i];
	ldrsw	x0, [sp, 60]	// _33, i
	lsl	x0, x0, 2	// _34, _33,
	add	x0, x1, x0	// _35, _32, _34
// problem89.c:26:                     int temp = (*out_array)[i];
	ldr	w0, [x0]	// tmp192, *_35
	str	w0, [sp, 76]	// tmp192, temp
// problem89.c:27:                     (*out_array)[i] = (*out_array)[j];
	ldr	x0, [sp, 24]	// tmp193, out_array
	ldr	x1, [x0]	// _36, *out_array_90(D)
// problem89.c:27:                     (*out_array)[i] = (*out_array)[j];
	ldrsw	x0, [sp, 64]	// _37, j
	lsl	x0, x0, 2	// _38, _37,
	add	x1, x1, x0	// _39, _36, _38
// problem89.c:27:                     (*out_array)[i] = (*out_array)[j];
	ldr	x0, [sp, 24]	// tmp194, out_array
	ldr	x2, [x0]	// _40, *out_array_90(D)
// problem89.c:27:                     (*out_array)[i] = (*out_array)[j];
	ldrsw	x0, [sp, 60]	// _41, i
	lsl	x0, x0, 2	// _42, _41,
	add	x0, x2, x0	// _43, _40, _42
// problem89.c:27:                     (*out_array)[i] = (*out_array)[j];
	ldr	w1, [x1]	// _44, *_39
// problem89.c:27:                     (*out_array)[i] = (*out_array)[j];
	str	w1, [x0]	// _44, *_43
// problem89.c:28:                     (*out_array)[j] = temp;
	ldr	x0, [sp, 24]	// tmp195, out_array
	ldr	x1, [x0]	// _45, *out_array_90(D)
// problem89.c:28:                     (*out_array)[j] = temp;
	ldrsw	x0, [sp, 64]	// _46, j
	lsl	x0, x0, 2	// _47, _46,
	add	x0, x1, x0	// _48, _45, _47
// problem89.c:28:                     (*out_array)[j] = temp;
	ldr	w1, [sp, 76]	// tmp196, temp
	str	w1, [x0]	// tmp196, *_48
	b	.L10		//
.L9:
// problem89.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	ldr	x0, [sp, 24]	// tmp197, out_array
	ldr	x1, [x0]	// _49, *out_array_90(D)
// problem89.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	ldrsw	x0, [sp, 60]	// _50, i
	lsl	x0, x0, 2	// _51, _50,
	add	x0, x1, x0	// _52, _49, _51
	ldr	w1, [x0]	// _53, *_52
// problem89.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	ldr	x0, [sp, 24]	// tmp198, out_array
	ldr	x2, [x0]	// _54, *out_array_90(D)
// problem89.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	ldrsw	x0, [sp, 64]	// _55, j
	lsl	x0, x0, 2	// _56, _55,
	add	x0, x2, x0	// _57, _54, _56
	ldr	w0, [x0]	// _58, *_57
// problem89.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	cmp	w1, w0	// _53, _58
	bge	.L10		//,
// problem89.c:32:                     int temp = (*out_array)[i];
	ldr	x0, [sp, 24]	// tmp199, out_array
	ldr	x1, [x0]	// _59, *out_array_90(D)
// problem89.c:32:                     int temp = (*out_array)[i];
	ldrsw	x0, [sp, 60]	// _60, i
	lsl	x0, x0, 2	// _61, _60,
	add	x0, x1, x0	// _62, _59, _61
// problem89.c:32:                     int temp = (*out_array)[i];
	ldr	w0, [x0]	// tmp200, *_62
	str	w0, [sp, 72]	// tmp200, temp
// problem89.c:33:                     (*out_array)[i] = (*out_array)[j];
	ldr	x0, [sp, 24]	// tmp201, out_array
	ldr	x1, [x0]	// _63, *out_array_90(D)
// problem89.c:33:                     (*out_array)[i] = (*out_array)[j];
	ldrsw	x0, [sp, 64]	// _64, j
	lsl	x0, x0, 2	// _65, _64,
	add	x1, x1, x0	// _66, _63, _65
// problem89.c:33:                     (*out_array)[i] = (*out_array)[j];
	ldr	x0, [sp, 24]	// tmp202, out_array
	ldr	x2, [x0]	// _67, *out_array_90(D)
// problem89.c:33:                     (*out_array)[i] = (*out_array)[j];
	ldrsw	x0, [sp, 60]	// _68, i
	lsl	x0, x0, 2	// _69, _68,
	add	x0, x2, x0	// _70, _67, _69
// problem89.c:33:                     (*out_array)[i] = (*out_array)[j];
	ldr	w1, [x1]	// _71, *_66
// problem89.c:33:                     (*out_array)[i] = (*out_array)[j];
	str	w1, [x0]	// _71, *_70
// problem89.c:34:                     (*out_array)[j] = temp;
	ldr	x0, [sp, 24]	// tmp203, out_array
	ldr	x1, [x0]	// _72, *out_array_90(D)
// problem89.c:34:                     (*out_array)[j] = temp;
	ldrsw	x0, [sp, 64]	// _73, j
	lsl	x0, x0, 2	// _74, _73,
	add	x0, x1, x0	// _75, _72, _74
// problem89.c:34:                     (*out_array)[j] = temp;
	ldr	w1, [sp, 72]	// tmp204, temp
	str	w1, [x0]	// tmp204, *_75
.L10:
// problem89.c:23:         for (int j = i + 1; j < size; j++) {
	ldr	w0, [sp, 64]	// tmp206, j
	add	w0, w0, 1	// tmp205, tmp206,
	str	w0, [sp, 64]	// tmp205, j
.L8:
// problem89.c:23:         for (int j = i + 1; j < size; j++) {
	ldr	w1, [sp, 64]	// tmp207, j
	ldr	w0, [sp, 36]	// tmp208, size
	cmp	w1, w0	// tmp207, tmp208
	blt	.L11		//,
// problem89.c:22:     for (int i = 0; i < size - 1; i++) {
	ldr	w0, [sp, 60]	// tmp210, i
	add	w0, w0, 1	// tmp209, tmp210,
	str	w0, [sp, 60]	// tmp209, i
.L7:
// problem89.c:22:     for (int i = 0; i < size - 1; i++) {
	ldr	w0, [sp, 36]	// tmp211, size
	sub	w0, w0, #1	// _76, tmp211,
// problem89.c:22:     for (int i = 0; i < size - 1; i++) {
	ldr	w1, [sp, 60]	// tmp212, i
	cmp	w1, w0	// tmp212, _76
	blt	.L12		//,
.L1:
// problem89.c:39: }
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// a, a
	str	w1, [sp, 20]	// aSize, aSize
	str	x2, [sp, 8]	// b, b
	str	w3, [sp, 16]	// bSize, bSize
// problem89.c:48:     if (aSize != bSize) return 0;
	ldr	w1, [sp, 20]	// tmp102, aSize
	ldr	w0, [sp, 16]	// tmp103, bSize
	cmp	w1, w0	// tmp102, tmp103
	beq	.L14		//,
// problem89.c:48:     if (aSize != bSize) return 0;
	mov	w0, 0	// _10,
// problem89.c:48:     if (aSize != bSize) return 0;
	b	.L15		//
.L14:
// problem89.c:49:     for (int i = 0; i < aSize; i++) {
	str	wzr, [sp, 44]	//, i
// problem89.c:49:     for (int i = 0; i < aSize; i++) {
	b	.L16		//
.L18:
// problem89.c:50:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp104, a
	add	x0, x1, x0	// _3, tmp104, _2
	ldr	w1, [x0]	// _4, *_3
// problem89.c:50:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 8]	// tmp105, b
	add	x0, x2, x0	// _7, tmp105, _6
	ldr	w0, [x0]	// _8, *_7
// problem89.c:50:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L17		//,
// problem89.c:50:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
// problem89.c:50:         if (a[i] != b[i]) return 0;
	b	.L15		//
.L17:
// problem89.c:49:     for (int i = 0; i < aSize; i++) {
	ldr	w0, [sp, 44]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 44]	// tmp106, i
.L16:
// problem89.c:49:     for (int i = 0; i < aSize; i++) {
	ldr	w1, [sp, 44]	// tmp108, i
	ldr	w0, [sp, 20]	// tmp109, aSize
	cmp	w1, w0	// tmp108, tmp109
	blt	.L18		//,
// problem89.c:52:     return 1;
	mov	w0, 1	// _10,
.L15:
// problem89.c:53: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC6:
	.string	"problem89.c"
	.align	3
.LC7:
	.string	"issame(result, result_size, (int[]){}, 0)"
	.align	3
.LC8:
	.string	"issame(result, result_size, (int[]){5}, 1)"
	.align	3
.LC9:
	.string	"issame(result, result_size, (int[]){0, 1, 2, 3, 4, 5}, 6)"
	.align	3
.LC10:
	.string	"issame(result, result_size, (int[]){6, 5, 4, 3, 2, 1, 0}, 7)"
	.align	3
.LC11:
	.string	"issame(result, result_size, (int[]){1, 2}, 2)"
	.align	3
.LC12:
	.string	"issame(result, result_size, (int[]){0, 11, 15, 32, 42, 87}, 6)"
	.align	3
.LC13:
	.string	"issame(result, result_size, (int[]){23, 21, 14, 11}, 4)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #192	//,,
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, 176]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 176	//,,
// problem89.c:55: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp122,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp122,
	ldr	x1, [x0]	// tmp224,
	str	x1, [sp, 168]	// tmp224, D.5487
	mov	x1, 0	// tmp224
// problem89.c:58:     func0((int[]){}, 0, &result, &result_size);
	add	x2, sp, 4	// tmp123,,
	add	x1, sp, 8	// tmp124,,
	add	x0, sp, 16	// tmp125,,
	mov	x3, x2	//, tmp123
	mov	x2, x1	//, tmp124
	mov	w1, 0	//,
	bl	func0		//
// problem89.c:59:     assert(issame(result, result_size, (int[]){}, 0));
	ldr	x0, [sp, 8]	// result.0_1, result
	ldr	w1, [sp, 4]	// result_size.1_2, result_size
	add	x2, sp, 136	// tmp126,,
	mov	w3, 0	//,
	bl	issame		//
// problem89.c:59:     assert(issame(result, result_size, (int[]){}, 0));
	cmp	w0, 0	// _3,
	bne	.L20		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp127,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp127,
	mov	w2, 59	//,
	adrp	x0, .LC6	// tmp128,
	add	x1, x0, :lo12:.LC6	//, tmp128,
	adrp	x0, .LC7	// tmp129,
	add	x0, x0, :lo12:.LC7	//, tmp129,
	bl	__assert_fail		//
.L20:
// problem89.c:60:     free(result);
	ldr	x0, [sp, 8]	// result.2_4, result
	bl	free		//
// problem89.c:62:     func0((int[]){5}, 1, &result, &result_size);
	mov	w0, 5	// tmp130,
	str	w0, [sp, 24]	// tmp130, D.5416[0]
// problem89.c:62:     func0((int[]){5}, 1, &result, &result_size);
	add	x2, sp, 4	// tmp131,,
	add	x1, sp, 8	// tmp132,,
	add	x0, sp, 24	// tmp133,,
	mov	x3, x2	//, tmp131
	mov	x2, x1	//, tmp132
	mov	w1, 1	//,
	bl	func0		//
// problem89.c:63:     assert(issame(result, result_size, (int[]){5}, 1));
	ldr	x4, [sp, 8]	// result.3_5, result
	ldr	w1, [sp, 4]	// result_size.4_6, result_size
	mov	w0, 5	// tmp134,
	str	w0, [sp, 136]	// tmp134, MEM[(int[1] *)_103][0]
	add	x0, sp, 136	// tmp135,,
	mov	w3, 1	//,
	mov	x2, x0	//, tmp135
	mov	x0, x4	//, result.3_5
	bl	issame		//
// problem89.c:63:     assert(issame(result, result_size, (int[]){5}, 1));
	cmp	w0, 0	// _7,
	bne	.L21		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp136,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp136,
	mov	w2, 63	//,
	adrp	x0, .LC6	// tmp137,
	add	x1, x0, :lo12:.LC6	//, tmp137,
	adrp	x0, .LC8	// tmp138,
	add	x0, x0, :lo12:.LC8	//, tmp138,
	bl	__assert_fail		//
.L21:
// problem89.c:64:     free(result);
	ldr	x0, [sp, 8]	// result.5_8, result
	bl	free		//
// problem89.c:66:     func0((int[]){2, 4, 3, 0, 1, 5}, 6, &result, &result_size);
	adrp	x0, .LC0	// tmp140,
	add	x0, x0, :lo12:.LC0	// tmp139, tmp140,
	add	x2, sp, 56	// tmp141,,
	mov	x3, x0	// tmp142, tmp139
	ldp	x0, x1, [x3]	// tmp143,
	stp	x0, x1, [x2]	// tmp143, D.5419
	ldr	x0, [x3, 16]	// tmp144,
	str	x0, [x2, 16]	// tmp144, D.5419
// problem89.c:66:     func0((int[]){2, 4, 3, 0, 1, 5}, 6, &result, &result_size);
	add	x2, sp, 4	// tmp145,,
	add	x1, sp, 8	// tmp146,,
	add	x0, sp, 56	// tmp147,,
	mov	x3, x2	//, tmp145
	mov	x2, x1	//, tmp146
	mov	w1, 6	//,
	bl	func0		//
// problem89.c:67:     assert(issame(result, result_size, (int[]){0, 1, 2, 3, 4, 5}, 6));
	ldr	x4, [sp, 8]	// result.6_9, result
	ldr	w5, [sp, 4]	// result_size.7_10, result_size
	adrp	x0, .LC1	// tmp149,
	add	x0, x0, :lo12:.LC1	// tmp148, tmp149,
	add	x2, sp, 136	// tmp150,,
	mov	x3, x0	// tmp151, tmp148
	ldp	x0, x1, [x3]	// tmp152,
	stp	x0, x1, [x2]	// tmp152, MEM[(int[6] *)_103]
	ldr	x0, [x3, 16]	// tmp153,
	str	x0, [x2, 16]	// tmp153, MEM[(int[6] *)_103]
	add	x0, sp, 136	// tmp154,,
	mov	w3, 6	//,
	mov	x2, x0	//, tmp154
	mov	w1, w5	//, result_size.7_10
	mov	x0, x4	//, result.6_9
	bl	issame		//
// problem89.c:67:     assert(issame(result, result_size, (int[]){0, 1, 2, 3, 4, 5}, 6));
	cmp	w0, 0	// _11,
	bne	.L22		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp155,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp155,
	mov	w2, 67	//,
	adrp	x0, .LC6	// tmp156,
	add	x1, x0, :lo12:.LC6	//, tmp156,
	adrp	x0, .LC9	// tmp157,
	add	x0, x0, :lo12:.LC9	//, tmp157,
	bl	__assert_fail		//
.L22:
// problem89.c:68:     free(result);
	ldr	x0, [sp, 8]	// result.8_12, result
	bl	free		//
// problem89.c:70:     func0((int[]){2, 4, 3, 0, 1, 5, 6}, 7, &result, &result_size);
	adrp	x0, .LC2	// tmp159,
	add	x1, x0, :lo12:.LC2	// tmp158, tmp159,
	add	x0, sp, 104	// tmp160,,
	ldr	q0, [x1]	// tmp162,
	str	q0, [x0]	// tmp162, D.5422
	ldr	q0, [x1, 12]	// tmp163,
	str	q0, [x0, 12]	// tmp163, D.5422
// problem89.c:70:     func0((int[]){2, 4, 3, 0, 1, 5, 6}, 7, &result, &result_size);
	add	x2, sp, 4	// tmp164,,
	add	x1, sp, 8	// tmp165,,
	add	x0, sp, 104	// tmp166,,
	mov	x3, x2	//, tmp164
	mov	x2, x1	//, tmp165
	mov	w1, 7	//,
	bl	func0		//
// problem89.c:71:     assert(issame(result, result_size, (int[]){6, 5, 4, 3, 2, 1, 0}, 7));
	ldr	x4, [sp, 8]	// result.9_13, result
	ldr	w5, [sp, 4]	// result_size.10_14, result_size
	adrp	x0, .LC3	// tmp168,
	add	x1, x0, :lo12:.LC3	// tmp167, tmp168,
	add	x0, sp, 136	// tmp169,,
	ldr	q0, [x1]	// tmp171,
	str	q0, [x0]	// tmp171, MEM[(int[7] *)_103]
	ldr	q0, [x1, 12]	// tmp172,
	str	q0, [x0, 12]	// tmp172, MEM[(int[7] *)_103]
	add	x0, sp, 136	// tmp173,,
	mov	w3, 7	//,
	mov	x2, x0	//, tmp173
	mov	w1, w5	//, result_size.10_14
	mov	x0, x4	//, result.9_13
	bl	issame		//
// problem89.c:71:     assert(issame(result, result_size, (int[]){6, 5, 4, 3, 2, 1, 0}, 7));
	cmp	w0, 0	// _15,
	bne	.L23		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp174,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp174,
	mov	w2, 71	//,
	adrp	x0, .LC6	// tmp175,
	add	x1, x0, :lo12:.LC6	//, tmp175,
	adrp	x0, .LC10	// tmp176,
	add	x0, x0, :lo12:.LC10	//, tmp176,
	bl	__assert_fail		//
.L23:
// problem89.c:72:     free(result);
	ldr	x0, [sp, 8]	// result.11_16, result
	bl	free		//
// problem89.c:74:     func0((int[]){2, 1}, 2, &result, &result_size);
	mov	w0, 2	// tmp177,
	str	w0, [sp, 32]	// tmp177, D.5425[0]
	mov	w0, 1	// tmp178,
	str	w0, [sp, 36]	// tmp178, D.5425[1]
// problem89.c:74:     func0((int[]){2, 1}, 2, &result, &result_size);
	add	x2, sp, 4	// tmp179,,
	add	x1, sp, 8	// tmp180,,
	add	x0, sp, 32	// tmp181,,
	mov	x3, x2	//, tmp179
	mov	x2, x1	//, tmp180
	mov	w1, 2	//,
	bl	func0		//
// problem89.c:75:     assert(issame(result, result_size, (int[]){1, 2}, 2));
	ldr	x4, [sp, 8]	// result.12_17, result
	ldr	w1, [sp, 4]	// result_size.13_18, result_size
	mov	w0, 1	// tmp182,
	str	w0, [sp, 136]	// tmp182, MEM[(int[2] *)_103][0]
	mov	w0, 2	// tmp183,
	str	w0, [sp, 140]	// tmp183, MEM[(int[2] *)_103][1]
	add	x0, sp, 136	// tmp184,,
	mov	w3, 2	//,
	mov	x2, x0	//, tmp184
	mov	x0, x4	//, result.12_17
	bl	issame		//
// problem89.c:75:     assert(issame(result, result_size, (int[]){1, 2}, 2));
	cmp	w0, 0	// _19,
	bne	.L24		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp185,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp185,
	mov	w2, 75	//,
	adrp	x0, .LC6	// tmp186,
	add	x1, x0, :lo12:.LC6	//, tmp186,
	adrp	x0, .LC11	// tmp187,
	add	x0, x0, :lo12:.LC11	//, tmp187,
	bl	__assert_fail		//
.L24:
// problem89.c:76:     free(result);
	ldr	x0, [sp, 8]	// result.14_20, result
	bl	free		//
// problem89.c:78:     func0((int[]){15, 42, 87, 32, 11, 0}, 6, &result, &result_size);
	adrp	x0, .LC4	// tmp189,
	add	x0, x0, :lo12:.LC4	// tmp188, tmp189,
	add	x2, sp, 80	// tmp190,,
	mov	x3, x0	// tmp191, tmp188
	ldp	x0, x1, [x3]	// tmp192,
	stp	x0, x1, [x2]	// tmp192, D.5428
	ldr	x0, [x3, 16]	// tmp193,
	str	x0, [x2, 16]	// tmp193, D.5428
// problem89.c:78:     func0((int[]){15, 42, 87, 32, 11, 0}, 6, &result, &result_size);
	add	x2, sp, 4	// tmp194,,
	add	x1, sp, 8	// tmp195,,
	add	x0, sp, 80	// tmp196,,
	mov	x3, x2	//, tmp194
	mov	x2, x1	//, tmp195
	mov	w1, 6	//,
	bl	func0		//
// problem89.c:79:     assert(issame(result, result_size, (int[]){0, 11, 15, 32, 42, 87}, 6));
	ldr	x4, [sp, 8]	// result.15_21, result
	ldr	w5, [sp, 4]	// result_size.16_22, result_size
	adrp	x0, .LC5	// tmp198,
	add	x0, x0, :lo12:.LC5	// tmp197, tmp198,
	add	x2, sp, 136	// tmp199,,
	mov	x3, x0	// tmp200, tmp197
	ldp	x0, x1, [x3]	// tmp201,
	stp	x0, x1, [x2]	// tmp201, MEM[(int[6] *)_103]
	ldr	x0, [x3, 16]	// tmp202,
	str	x0, [x2, 16]	// tmp202, MEM[(int[6] *)_103]
	add	x0, sp, 136	// tmp203,,
	mov	w3, 6	//,
	mov	x2, x0	//, tmp203
	mov	w1, w5	//, result_size.16_22
	mov	x0, x4	//, result.15_21
	bl	issame		//
// problem89.c:79:     assert(issame(result, result_size, (int[]){0, 11, 15, 32, 42, 87}, 6));
	cmp	w0, 0	// _23,
	bne	.L25		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp204,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp204,
	mov	w2, 79	//,
	adrp	x0, .LC6	// tmp205,
	add	x1, x0, :lo12:.LC6	//, tmp205,
	adrp	x0, .LC12	// tmp206,
	add	x0, x0, :lo12:.LC12	//, tmp206,
	bl	__assert_fail		//
.L25:
// problem89.c:80:     free(result);
	ldr	x0, [sp, 8]	// result.17_24, result
	bl	free		//
// problem89.c:82:     func0((int[]){21, 14, 23, 11}, 4, &result, &result_size);
	mov	w0, 21	// tmp207,
	str	w0, [sp, 40]	// tmp207, D.5431[0]
	mov	w0, 14	// tmp208,
	str	w0, [sp, 44]	// tmp208, D.5431[1]
	mov	w0, 23	// tmp209,
	str	w0, [sp, 48]	// tmp209, D.5431[2]
	mov	w0, 11	// tmp210,
	str	w0, [sp, 52]	// tmp210, D.5431[3]
// problem89.c:82:     func0((int[]){21, 14, 23, 11}, 4, &result, &result_size);
	add	x2, sp, 4	// tmp211,,
	add	x1, sp, 8	// tmp212,,
	add	x0, sp, 40	// tmp213,,
	mov	x3, x2	//, tmp211
	mov	x2, x1	//, tmp212
	mov	w1, 4	//,
	bl	func0		//
// problem89.c:83:     assert(issame(result, result_size, (int[]){23, 21, 14, 11}, 4));
	ldr	x4, [sp, 8]	// result.18_25, result
	ldr	w1, [sp, 4]	// result_size.19_26, result_size
	mov	w0, 23	// tmp214,
	str	w0, [sp, 136]	// tmp214, MEM[(int[4] *)_103][0]
	mov	w0, 21	// tmp215,
	str	w0, [sp, 140]	// tmp215, MEM[(int[4] *)_103][1]
	mov	w0, 14	// tmp216,
	str	w0, [sp, 144]	// tmp216, MEM[(int[4] *)_103][2]
	mov	w0, 11	// tmp217,
	str	w0, [sp, 148]	// tmp217, MEM[(int[4] *)_103][3]
	add	x0, sp, 136	// tmp218,,
	mov	w3, 4	//,
	mov	x2, x0	//, tmp218
	mov	x0, x4	//, result.18_25
	bl	issame		//
// problem89.c:83:     assert(issame(result, result_size, (int[]){23, 21, 14, 11}, 4));
	cmp	w0, 0	// _27,
	bne	.L26		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp219,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp219,
	mov	w2, 83	//,
	adrp	x0, .LC6	// tmp220,
	add	x1, x0, :lo12:.LC6	//, tmp220,
	adrp	x0, .LC13	// tmp221,
	add	x0, x0, :lo12:.LC13	//, tmp221,
	bl	__assert_fail		//
.L26:
// problem89.c:84:     free(result);
	ldr	x0, [sp, 8]	// result.20_28, result
	bl	free		//
// problem89.c:86:     return 0;
	mov	w0, 0	// _85,
// problem89.c:87: }
	mov	w1, w0	// <retval>, _85
	adrp	x0, :got:__stack_chk_guard	// tmp223,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp223,
	ldr	x3, [sp, 168]	// tmp225, D.5487
	ldr	x2, [x0]	// tmp226,
	subs	x3, x3, x2	// tmp225, tmp226
	mov	x2, 0	// tmp226
	beq	.L28		//,
	bl	__stack_chk_fail		//
.L28:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 176]	//,,
	add	sp, sp, 192	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	2
	.word	4
	.word	3
	.word	0
	.word	1
	.word	5
	.align	3
.LC1:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.align	3
.LC2:
	.word	2
	.word	4
	.word	3
	.word	0
	.word	1
	.word	5
	.word	6
	.align	3
.LC3:
	.word	6
	.word	5
	.word	4
	.word	3
	.word	2
	.word	1
	.word	0
	.align	3
.LC4:
	.word	15
	.word	42
	.word	87
	.word	32
	.word	11
	.word	0
	.align	3
.LC5:
	.word	0
	.word	11
	.word	15
	.word	32
	.word	42
	.word	87
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
