	.arch armv8-a
	.file	"problem150.c"
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
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x0, [sp, 40]	// lst, lst
	str	w1, [sp, 36]	// lst_size, lst_size
	str	x2, [sp, 24]	// return_size, return_size
// problem150.c:9:     *return_size = 0;
	ldr	x0, [sp, 24]	// tmp160, return_size
	str	wzr, [x0]	//, *return_size_78(D)
// problem150.c:10:     for (i = 0; i < lst_size; ++i) {
	str	wzr, [sp, 56]	//, i
// problem150.c:10:     for (i = 0; i < lst_size; ++i) {
	b	.L2		//
.L4:
// problem150.c:11:         if (strlen(lst[i]) % 2 == 0) {
	ldrsw	x0, [sp, 56]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 40]	// tmp161, lst
	add	x0, x1, x0	// _3, tmp161, _2
// problem150.c:11:         if (strlen(lst[i]) % 2 == 0) {
	ldr	x0, [x0]	// _4, *_3
	bl	strlen		//
// problem150.c:11:         if (strlen(lst[i]) % 2 == 0) {
	and	x0, x0, 1	// _6, _5,
// problem150.c:11:         if (strlen(lst[i]) % 2 == 0) {
	cmp	x0, 0	// _6,
	bne	.L3		//,
// problem150.c:12:             lst[*return_size] = lst[i];
	ldrsw	x0, [sp, 56]	// _7, i
	lsl	x0, x0, 3	// _8, _7,
	ldr	x1, [sp, 40]	// tmp162, lst
	add	x1, x1, x0	// _9, tmp162, _8
// problem150.c:12:             lst[*return_size] = lst[i];
	ldr	x0, [sp, 24]	// tmp163, return_size
	ldr	w0, [x0]	// _10, *return_size_78(D)
	sxtw	x0, w0	// _11, _10
// problem150.c:12:             lst[*return_size] = lst[i];
	lsl	x0, x0, 3	// _12, _11,
	ldr	x2, [sp, 40]	// tmp164, lst
	add	x0, x2, x0	// _13, tmp164, _12
// problem150.c:12:             lst[*return_size] = lst[i];
	ldr	x1, [x1]	// _14, *_9
// problem150.c:12:             lst[*return_size] = lst[i];
	str	x1, [x0]	// _14, *_13
// problem150.c:13:             (*return_size)++;
	ldr	x0, [sp, 24]	// tmp165, return_size
	ldr	w0, [x0]	// _15, *return_size_78(D)
// problem150.c:13:             (*return_size)++;
	add	w1, w0, 1	// _16, _15,
	ldr	x0, [sp, 24]	// tmp166, return_size
	str	w1, [x0]	// _16, *return_size_78(D)
.L3:
// problem150.c:10:     for (i = 0; i < lst_size; ++i) {
	ldr	w0, [sp, 56]	// tmp168, i
	add	w0, w0, 1	// tmp167, tmp168,
	str	w0, [sp, 56]	// tmp167, i
.L2:
// problem150.c:10:     for (i = 0; i < lst_size; ++i) {
	ldr	w1, [sp, 56]	// tmp169, i
	ldr	w0, [sp, 36]	// tmp170, lst_size
	cmp	w1, w0	// tmp169, tmp170
	blt	.L4		//,
// problem150.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	str	wzr, [sp, 56]	//, i
// problem150.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	b	.L5		//
.L10:
// problem150.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	str	wzr, [sp, 60]	//, j
// problem150.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	b	.L6		//
.L9:
// problem150.c:19:             size_t len_j = strlen(lst[j]);
	ldrsw	x0, [sp, 60]	// _17, j
	lsl	x0, x0, 3	// _18, _17,
	ldr	x1, [sp, 40]	// tmp171, lst
	add	x0, x1, x0	// _19, tmp171, _18
// problem150.c:19:             size_t len_j = strlen(lst[j]);
	ldr	x0, [x0]	// _20, *_19
	bl	strlen		//
	str	x0, [sp, 72]	//, len_j
// problem150.c:20:             size_t len_j1 = strlen(lst[j + 1]);
	ldrsw	x0, [sp, 60]	// _21, j
	add	x0, x0, 1	// _22, _21,
	lsl	x0, x0, 3	// _23, _22,
	ldr	x1, [sp, 40]	// tmp172, lst
	add	x0, x1, x0	// _24, tmp172, _23
// problem150.c:20:             size_t len_j1 = strlen(lst[j + 1]);
	ldr	x0, [x0]	// _25, *_24
	bl	strlen		//
	str	x0, [sp, 80]	//, len_j1
// problem150.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ldr	x1, [sp, 72]	// tmp173, len_j
	ldr	x0, [sp, 80]	// tmp174, len_j1
	cmp	x1, x0	// tmp173, tmp174
	bhi	.L7		//,
// problem150.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ldr	x1, [sp, 72]	// tmp175, len_j
	ldr	x0, [sp, 80]	// tmp176, len_j1
	cmp	x1, x0	// tmp175, tmp176
	bne	.L8		//,
// problem150.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ldrsw	x0, [sp, 60]	// _26, j
	lsl	x0, x0, 3	// _27, _26,
	ldr	x1, [sp, 40]	// tmp177, lst
	add	x0, x1, x0	// _28, tmp177, _27
// problem150.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ldr	x2, [x0]	// _29, *_28
// problem150.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ldrsw	x0, [sp, 60]	// _30, j
	add	x0, x0, 1	// _31, _30,
	lsl	x0, x0, 3	// _32, _31,
	ldr	x1, [sp, 40]	// tmp178, lst
	add	x0, x1, x0	// _33, tmp178, _32
// problem150.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ldr	x0, [x0]	// _34, *_33
	mov	x1, x0	//, _34
	mov	x0, x2	//, _29
	bl	strcmp		//
// problem150.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	cmp	w0, 0	// _35,
	ble	.L8		//,
.L7:
// problem150.c:22:                 temp = lst[j];
	ldrsw	x0, [sp, 60]	// _36, j
	lsl	x0, x0, 3	// _37, _36,
	ldr	x1, [sp, 40]	// tmp179, lst
	add	x0, x1, x0	// _38, tmp179, _37
// problem150.c:22:                 temp = lst[j];
	ldr	x0, [x0]	// tmp180, *_38
	str	x0, [sp, 88]	// tmp180, temp
// problem150.c:23:                 lst[j] = lst[j + 1];
	ldrsw	x0, [sp, 60]	// _39, j
	add	x0, x0, 1	// _40, _39,
	lsl	x0, x0, 3	// _41, _40,
	ldr	x1, [sp, 40]	// tmp181, lst
	add	x1, x1, x0	// _42, tmp181, _41
// problem150.c:23:                 lst[j] = lst[j + 1];
	ldrsw	x0, [sp, 60]	// _43, j
	lsl	x0, x0, 3	// _44, _43,
	ldr	x2, [sp, 40]	// tmp182, lst
	add	x0, x2, x0	// _45, tmp182, _44
// problem150.c:23:                 lst[j] = lst[j + 1];
	ldr	x1, [x1]	// _46, *_42
// problem150.c:23:                 lst[j] = lst[j + 1];
	str	x1, [x0]	// _46, *_45
// problem150.c:24:                 lst[j + 1] = temp;
	ldrsw	x0, [sp, 60]	// _47, j
	add	x0, x0, 1	// _48, _47,
	lsl	x0, x0, 3	// _49, _48,
	ldr	x1, [sp, 40]	// tmp183, lst
	add	x0, x1, x0	// _50, tmp183, _49
// problem150.c:24:                 lst[j + 1] = temp;
	ldr	x1, [sp, 88]	// tmp184, temp
	str	x1, [x0]	// tmp184, *_50
.L8:
// problem150.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	ldr	w0, [sp, 60]	// tmp186, j
	add	w0, w0, 1	// tmp185, tmp186,
	str	w0, [sp, 60]	// tmp185, j
.L6:
// problem150.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	ldr	x0, [sp, 24]	// tmp187, return_size
	ldr	w1, [x0]	// _51, *return_size_78(D)
// problem150.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	ldr	w0, [sp, 56]	// tmp188, i
	sub	w0, w1, w0	// _52, _51, tmp188
// problem150.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	sub	w0, w0, #1	// _53, _52,
// problem150.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	ldr	w1, [sp, 60]	// tmp189, j
	cmp	w1, w0	// tmp189, _53
	blt	.L9		//,
// problem150.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	ldr	w0, [sp, 56]	// tmp191, i
	add	w0, w0, 1	// tmp190, tmp191,
	str	w0, [sp, 56]	// tmp190, i
.L5:
// problem150.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	ldr	x0, [sp, 24]	// tmp192, return_size
	ldr	w0, [x0]	// _54, *return_size_78(D)
// problem150.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	sub	w0, w0, #1	// _55, _54,
// problem150.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	ldr	w1, [sp, 56]	// tmp193, i
	cmp	w1, w0	// tmp193, _55
	blt	.L10		//,
// problem150.c:29:     char **out = malloc(*return_size * sizeof(char *));
	ldr	x0, [sp, 24]	// tmp194, return_size
	ldr	w0, [x0]	// _56, *return_size_78(D)
	sxtw	x0, w0	// _57, _56
// problem150.c:29:     char **out = malloc(*return_size * sizeof(char *));
	lsl	x0, x0, 3	// _58, _57,
	bl	malloc		//
	str	x0, [sp, 64]	// tmp195, out
// problem150.c:30:     for (i = 0; i < *return_size; ++i) {
	str	wzr, [sp, 56]	//, i
// problem150.c:30:     for (i = 0; i < *return_size; ++i) {
	b	.L11		//
.L12:
// problem150.c:31:         out[i] = lst[i];
	ldrsw	x0, [sp, 56]	// _59, i
	lsl	x0, x0, 3	// _60, _59,
	ldr	x1, [sp, 40]	// tmp196, lst
	add	x1, x1, x0	// _61, tmp196, _60
// problem150.c:31:         out[i] = lst[i];
	ldrsw	x0, [sp, 56]	// _62, i
	lsl	x0, x0, 3	// _63, _62,
	ldr	x2, [sp, 64]	// tmp197, out
	add	x0, x2, x0	// _64, tmp197, _63
// problem150.c:31:         out[i] = lst[i];
	ldr	x1, [x1]	// _65, *_61
// problem150.c:31:         out[i] = lst[i];
	str	x1, [x0]	// _65, *_64
// problem150.c:30:     for (i = 0; i < *return_size; ++i) {
	ldr	w0, [sp, 56]	// tmp199, i
	add	w0, w0, 1	// tmp198, tmp199,
	str	w0, [sp, 56]	// tmp198, i
.L11:
// problem150.c:30:     for (i = 0; i < *return_size; ++i) {
	ldr	x0, [sp, 24]	// tmp200, return_size
	ldr	w0, [x0]	// _66, *return_size_78(D)
// problem150.c:30:     for (i = 0; i < *return_size; ++i) {
	ldr	w1, [sp, 56]	// tmp201, i
	cmp	w1, w0	// tmp201, _66
	blt	.L12		//,
// problem150.c:34:     return out;
	ldr	x0, [sp, 64]	// _86, out
// problem150.c:35: }
	ldp	x29, x30, [sp], 96	//,,,
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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 40]	// a, a
	str	x1, [sp, 32]	// b, b
	str	w2, [sp, 28]	// a_size, a_size
	str	w3, [sp, 24]	// b_size, b_size
// problem150.c:45:     if (a_size != b_size) return 0;
	ldr	w1, [sp, 28]	// tmp103, a_size
	ldr	w0, [sp, 24]	// tmp104, b_size
	cmp	w1, w0	// tmp103, tmp104
	beq	.L15		//,
// problem150.c:45:     if (a_size != b_size) return 0;
	mov	w0, 0	// _11,
// problem150.c:45:     if (a_size != b_size) return 0;
	b	.L16		//
.L15:
// problem150.c:46:     for (int i = 0; i < a_size; i++) {
	str	wzr, [sp, 60]	//, i
// problem150.c:46:     for (int i = 0; i < a_size; i++) {
	b	.L17		//
.L19:
// problem150.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldrsw	x0, [sp, 60]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 40]	// tmp105, a
	add	x0, x1, x0	// _3, tmp105, _2
// problem150.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldr	x2, [x0]	// _4, *_3
// problem150.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldrsw	x0, [sp, 60]	// _5, i
	lsl	x0, x0, 3	// _6, _5,
	ldr	x1, [sp, 32]	// tmp106, b
	add	x0, x1, x0	// _7, tmp106, _6
// problem150.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldr	x0, [x0]	// _8, *_7
	mov	x1, x0	//, _8
	mov	x0, x2	//, _4
	bl	strcmp		//
// problem150.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	cmp	w0, 0	// _9,
	beq	.L18		//,
// problem150.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	mov	w0, 0	// _11,
// problem150.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	b	.L16		//
.L18:
// problem150.c:46:     for (int i = 0; i < a_size; i++) {
	ldr	w0, [sp, 60]	// tmp108, i
	add	w0, w0, 1	// tmp107, tmp108,
	str	w0, [sp, 60]	// tmp107, i
.L17:
// problem150.c:46:     for (int i = 0; i < a_size; i++) {
	ldr	w1, [sp, 60]	// tmp109, i
	ldr	w0, [sp, 28]	// tmp110, a_size
	cmp	w1, w0	// tmp109, tmp110
	blt	.L19		//,
// problem150.c:49:     return 1;
	mov	w0, 1	// _11,
.L16:
// problem150.c:50: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"aa"
	.align	3
.LC27:
	.string	"problem150.c"
	.align	3
.LC28:
	.string	"issame(result, expected1, size, 1)"
	.align	3
.LC31:
	.string	"issame(result, expected2, size, 3)"
	.align	3
.LC33:
	.string	"size == 0"
	.align	3
.LC14:
	.string	"abcd"
	.align	3
.LC13:
	.string	"dcba"
	.align	3
.LC35:
	.string	"issame(result, expected4, size, 2)"
	.align	3
.LC37:
	.string	"issame(result, expected5, size, 3)"
	.align	3
.LC41:
	.string	"issame(result, expected7, size, 4)"
	.align	3
.LC42:
	.string	"All tests passed!"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #368	//,,
	.cfi_def_cfa_offset 368
	stp	x29, x30, [sp, 352]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 352	//,,
// problem150.c:52: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp106,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp106,
	ldr	x1, [x0]	// tmp217,
	str	x1, [sp, 344]	// tmp217, D.5705
	mov	x1, 0	// tmp217
// problem150.c:56:     char *test1[] = {"aa", "a", "aaa"};
	adrp	x0, .LC26	// tmp108,
	add	x0, x0, :lo12:.LC26	// tmp107, tmp108,
	add	x2, sp, 40	// tmp109,,
	mov	x3, x0	// tmp110, tmp107
	ldp	x0, x1, [x3]	// tmp111,
	stp	x0, x1, [x2]	// tmp111, test1
	ldr	x0, [x3, 16]	// tmp112,
	str	x0, [x2, 16]	// tmp112, test1
// problem150.c:57:     char *expected1[] = {"aa"};
	adrp	x0, .LC0	// tmp114,
	add	x0, x0, :lo12:.LC0	// tmp113, tmp114,
	str	x0, [sp, 16]	// tmp113, expected1[0]
// problem150.c:58:     result = func0(test1, 3, &size);
	add	x1, sp, 4	// tmp115,,
	add	x0, sp, 40	// tmp116,,
	mov	x2, x1	//, tmp115
	mov	w1, 3	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem150.c:59:     assert(issame(result, expected1, size, 1));
	ldr	w1, [sp, 4]	// size.0_1, size
	add	x0, sp, 16	// tmp117,,
	mov	w3, 1	//,
	mov	w2, w1	//, size.0_1
	mov	x1, x0	//, tmp117
	ldr	x0, [sp, 8]	//, result
	bl	issame		//
// problem150.c:59:     assert(issame(result, expected1, size, 1));
	cmp	w0, 0	// _2,
	bne	.L21		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp118,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp118,
	mov	w2, 59	//,
	adrp	x0, .LC27	// tmp119,
	add	x1, x0, :lo12:.LC27	//, tmp119,
	adrp	x0, .LC28	// tmp120,
	add	x0, x0, :lo12:.LC28	//, tmp120,
	bl	__assert_fail		//
.L21:
// problem150.c:60:     free(result);
	ldr	x0, [sp, 8]	//, result
	bl	free		//
// problem150.c:62:     char *test2[] = {"school", "AI", "asdf", "b"};
	add	x0, sp, 360	// tmp121,,
	sub	x0, x0, #224	// tmp123, tmp121,
	adrp	x1, .LC29	// tmp125,
	add	x1, x1, :lo12:.LC29	// tmp124, tmp125,
	ld1	{v0.16b - v1.16b}, [x1]	// tmp126,
	st1	{v0.16b - v1.16b}, [x0]	// tmp126, test2
// problem150.c:63:     char *expected2[] = {"AI", "asdf", "school"};
	adrp	x0, .LC30	// tmp128,
	add	x0, x0, :lo12:.LC30	// tmp127, tmp128,
	add	x2, sp, 64	// tmp129,,
	mov	x3, x0	// tmp130, tmp127
	ldp	x0, x1, [x3]	// tmp131,
	stp	x0, x1, [x2]	// tmp131, expected2
	ldr	x0, [x3, 16]	// tmp132,
	str	x0, [x2, 16]	// tmp132, expected2
// problem150.c:64:     result = func0(test2, 4, &size);
	add	x1, sp, 4	// tmp133,,
	add	x0, sp, 136	// tmp134,,
	mov	x2, x1	//, tmp133
	mov	w1, 4	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem150.c:65:     assert(issame(result, expected2, size, 3));
	ldr	w1, [sp, 4]	// size.1_3, size
	add	x0, sp, 64	// tmp135,,
	mov	w3, 3	//,
	mov	w2, w1	//, size.1_3
	mov	x1, x0	//, tmp135
	ldr	x0, [sp, 8]	//, result
	bl	issame		//
// problem150.c:65:     assert(issame(result, expected2, size, 3));
	cmp	w0, 0	// _4,
	bne	.L22		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp136,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp136,
	mov	w2, 65	//,
	adrp	x0, .LC27	// tmp137,
	add	x1, x0, :lo12:.LC27	//, tmp137,
	adrp	x0, .LC31	// tmp138,
	add	x0, x0, :lo12:.LC31	//, tmp138,
	bl	__assert_fail		//
.L22:
// problem150.c:66:     free(result);
	ldr	x0, [sp, 8]	//, result
	bl	free		//
// problem150.c:68:     char *test3[] = {"d", "b", "c", "a"};
	add	x0, sp, 360	// tmp139,,
	sub	x0, x0, #192	// tmp141, tmp139,
	adrp	x1, .LC32	// tmp143,
	add	x1, x1, :lo12:.LC32	// tmp142, tmp143,
	ld1	{v0.16b - v1.16b}, [x1]	// tmp144,
	st1	{v0.16b - v1.16b}, [x0]	// tmp144, test3
// problem150.c:69:     result = func0(test3, 4, &size);
	add	x1, sp, 4	// tmp145,,
	add	x0, sp, 168	// tmp146,,
	mov	x2, x1	//, tmp145
	mov	w1, 4	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem150.c:70:     assert(size == 0);
	ldr	w0, [sp, 4]	// size.2_5, size
	cmp	w0, 0	// size.2_5,
	beq	.L23		//,
// problem150.c:70:     assert(size == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp147,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp147,
	mov	w2, 70	//,
	adrp	x0, .LC27	// tmp148,
	add	x1, x0, :lo12:.LC27	//, tmp148,
	adrp	x0, .LC33	// tmp149,
	add	x0, x0, :lo12:.LC33	//, tmp149,
	bl	__assert_fail		//
.L23:
// problem150.c:71:     free(result);
	ldr	x0, [sp, 8]	//, result
	bl	free		//
// problem150.c:73:     char *test4[] = {"d", "dcba", "abcd", "a"};
	add	x0, sp, 360	// tmp150,,
	sub	x0, x0, #160	// tmp152, tmp150,
	adrp	x1, .LC34	// tmp154,
	add	x1, x1, :lo12:.LC34	// tmp153, tmp154,
	ld1	{v0.16b - v1.16b}, [x1]	// tmp155,
	st1	{v0.16b - v1.16b}, [x0]	// tmp155, test4
// problem150.c:74:     char *expected4[] = {"abcd", "dcba"};
	adrp	x0, .LC14	// tmp157,
	add	x0, x0, :lo12:.LC14	// tmp156, tmp157,
	str	x0, [sp, 24]	// tmp156, expected4[0]
	adrp	x0, .LC13	// tmp159,
	add	x0, x0, :lo12:.LC13	// tmp158, tmp159,
	str	x0, [sp, 32]	// tmp158, expected4[1]
// problem150.c:75:     result = func0(test4, 4, &size);
	add	x1, sp, 4	// tmp160,,
	add	x0, sp, 200	// tmp161,,
	mov	x2, x1	//, tmp160
	mov	w1, 4	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem150.c:76:     assert(issame(result, expected4, size, 2));
	ldr	w1, [sp, 4]	// size.3_6, size
	add	x0, sp, 24	// tmp162,,
	mov	w3, 2	//,
	mov	w2, w1	//, size.3_6
	mov	x1, x0	//, tmp162
	ldr	x0, [sp, 8]	//, result
	bl	issame		//
// problem150.c:76:     assert(issame(result, expected4, size, 2));
	cmp	w0, 0	// _7,
	bne	.L24		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp163,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp163,
	mov	w2, 76	//,
	adrp	x0, .LC27	// tmp164,
	add	x1, x0, :lo12:.LC27	//, tmp164,
	adrp	x0, .LC35	// tmp165,
	add	x0, x0, :lo12:.LC35	//, tmp165,
	bl	__assert_fail		//
.L24:
// problem150.c:77:     free(result);
	ldr	x0, [sp, 8]	//, result
	bl	free		//
// problem150.c:79:     char *test5[] = {"AI", "ai", "au"};
	adrp	x0, .LC36	// tmp167,
	add	x0, x0, :lo12:.LC36	// tmp166, tmp167,
	add	x2, sp, 88	// tmp168,,
	mov	x3, x0	// tmp169, tmp166
	ldp	x0, x1, [x3]	// tmp170,
	stp	x0, x1, [x2]	// tmp170, test5
	ldr	x0, [x3, 16]	// tmp171,
	str	x0, [x2, 16]	// tmp171, test5
// problem150.c:80:     char *expected5[] = {"AI", "ai", "au"};
	adrp	x0, .LC36	// tmp173,
	add	x0, x0, :lo12:.LC36	// tmp172, tmp173,
	add	x2, sp, 112	// tmp174,,
	mov	x3, x0	// tmp175, tmp172
	ldp	x0, x1, [x3]	// tmp176,
	stp	x0, x1, [x2]	// tmp176, expected5
	ldr	x0, [x3, 16]	// tmp177,
	str	x0, [x2, 16]	// tmp177, expected5
// problem150.c:81:     result = func0(test5, 3, &size);
	add	x1, sp, 4	// tmp178,,
	add	x0, sp, 88	// tmp179,,
	mov	x2, x1	//, tmp178
	mov	w1, 3	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem150.c:82:     assert(issame(result, expected5, size, 3));
	ldr	w1, [sp, 4]	// size.4_8, size
	add	x0, sp, 112	// tmp180,,
	mov	w3, 3	//,
	mov	w2, w1	//, size.4_8
	mov	x1, x0	//, tmp180
	ldr	x0, [sp, 8]	//, result
	bl	issame		//
// problem150.c:82:     assert(issame(result, expected5, size, 3));
	cmp	w0, 0	// _9,
	bne	.L25		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp181,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp181,
	mov	w2, 82	//,
	adrp	x0, .LC27	// tmp182,
	add	x1, x0, :lo12:.LC27	//, tmp182,
	adrp	x0, .LC37	// tmp183,
	add	x0, x0, :lo12:.LC37	//, tmp183,
	bl	__assert_fail		//
.L25:
// problem150.c:83:     free(result);
	ldr	x0, [sp, 8]	//, result
	bl	free		//
// problem150.c:85:     char *test6[] = {"a", "b", "b", "c", "c", "a"};
	adrp	x0, .LC38	// tmp185,
	add	x1, x0, :lo12:.LC38	// tmp184, tmp185,
	add	x0, sp, 296	// tmp186,,
	ldp	q0, q1, [x1]	// tmp188, tmp189,
	stp	q0, q1, [x0]	// tmp188, tmp189, test6
	ldr	q0, [x1, 32]	// tmp190,
	str	q0, [x0, 32]	// tmp190, test6
// problem150.c:86:     result = func0(test6, 6, &size);
	add	x1, sp, 4	// tmp191,,
	add	x0, sp, 296	// tmp192,,
	mov	x2, x1	//, tmp191
	mov	w1, 6	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem150.c:87:     assert(size == 0);
	ldr	w0, [sp, 4]	// size.5_10, size
	cmp	w0, 0	// size.5_10,
	beq	.L26		//,
// problem150.c:87:     assert(size == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp193,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp193,
	mov	w2, 87	//,
	adrp	x0, .LC27	// tmp194,
	add	x1, x0, :lo12:.LC27	//, tmp194,
	adrp	x0, .LC33	// tmp195,
	add	x0, x0, :lo12:.LC33	//, tmp195,
	bl	__assert_fail		//
.L26:
// problem150.c:88:     free(result);
	ldr	x0, [sp, 8]	//, result
	bl	free		//
// problem150.c:90:     char *test7[] = {"aaaa", "bbbb", "dd", "cc"};
	add	x0, sp, 360	// tmp196,,
	sub	x0, x0, #128	// tmp198, tmp196,
	adrp	x1, .LC39	// tmp200,
	add	x1, x1, :lo12:.LC39	// tmp199, tmp200,
	ld1	{v0.16b - v1.16b}, [x1]	// tmp201,
	st1	{v0.16b - v1.16b}, [x0]	// tmp201, test7
// problem150.c:91:     char *expected7[] = {"cc", "dd", "aaaa", "bbbb"};
	add	x0, sp, 360	// tmp202,,
	sub	x0, x0, #96	// tmp204, tmp202,
	adrp	x1, .LC40	// tmp206,
	add	x1, x1, :lo12:.LC40	// tmp205, tmp206,
	ld1	{v0.16b - v1.16b}, [x1]	// tmp207,
	st1	{v0.16b - v1.16b}, [x0]	// tmp207, expected7
// problem150.c:92:     result = func0(test7, 4, &size);
	add	x1, sp, 4	// tmp208,,
	add	x0, sp, 232	// tmp209,,
	mov	x2, x1	//, tmp208
	mov	w1, 4	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem150.c:93:     assert(issame(result, expected7, size, 4));
	ldr	w1, [sp, 4]	// size.6_11, size
	add	x0, sp, 264	// tmp210,,
	mov	w3, 4	//,
	mov	w2, w1	//, size.6_11
	mov	x1, x0	//, tmp210
	ldr	x0, [sp, 8]	//, result
	bl	issame		//
// problem150.c:93:     assert(issame(result, expected7, size, 4));
	cmp	w0, 0	// _12,
	bne	.L27		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp211,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp211,
	mov	w2, 93	//,
	adrp	x0, .LC27	// tmp212,
	add	x1, x0, :lo12:.LC27	//, tmp212,
	adrp	x0, .LC41	// tmp213,
	add	x0, x0, :lo12:.LC41	//, tmp213,
	bl	__assert_fail		//
.L27:
// problem150.c:94:     free(result);
	ldr	x0, [sp, 8]	//, result
	bl	free		//
// problem150.c:96:     printf("All tests passed!\n");
	adrp	x0, .LC42	// tmp214,
	add	x0, x0, :lo12:.LC42	//, tmp214,
	bl	puts		//
// problem150.c:98:     return 0;
	mov	w0, 0	// _61,
// problem150.c:99: }
	mov	w1, w0	// <retval>, _61
	adrp	x0, :got:__stack_chk_guard	// tmp216,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp216,
	ldr	x3, [sp, 344]	// tmp218, D.5705
	ldr	x2, [x0]	// tmp219,
	subs	x3, x3, x2	// tmp218, tmp219
	mov	x2, 0	// tmp219
	beq	.L29		//,
	bl	__stack_chk_fail		//
.L29:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 352]	//,,
	add	sp, sp, 368	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC1:
	.string	"a"
	.align	3
.LC2:
	.string	"aaa"
	.data
	.align	3
.LC26:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.section	.rodata
	.align	3
.LC4:
	.string	"school"
	.align	3
.LC5:
	.string	"AI"
	.align	3
.LC6:
	.string	"asdf"
	.align	3
.LC7:
	.string	"b"
	.data
	.align	3
.LC29:
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.xword	.LC7
	.align	3
.LC30:
	.xword	.LC5
	.xword	.LC6
	.xword	.LC4
	.section	.rodata
	.align	3
.LC10:
	.string	"d"
	.align	3
.LC11:
	.string	"c"
	.data
	.align	3
.LC32:
	.xword	.LC10
	.xword	.LC7
	.xword	.LC11
	.xword	.LC1
	.align	3
.LC34:
	.xword	.LC10
	.xword	.LC13
	.xword	.LC14
	.xword	.LC1
	.section	.rodata
	.align	3
.LC16:
	.string	"ai"
	.align	3
.LC17:
	.string	"au"
	.data
	.align	3
.LC36:
	.xword	.LC5
	.xword	.LC16
	.xword	.LC17
	.align	3
.LC38:
	.xword	.LC1
	.xword	.LC7
	.xword	.LC7
	.xword	.LC11
	.xword	.LC11
	.xword	.LC1
	.section	.rodata
	.align	3
.LC20:
	.string	"aaaa"
	.align	3
.LC21:
	.string	"bbbb"
	.align	3
.LC22:
	.string	"dd"
	.align	3
.LC23:
	.string	"cc"
	.data
	.align	3
.LC39:
	.xword	.LC20
	.xword	.LC21
	.xword	.LC22
	.xword	.LC23
	.align	3
.LC40:
	.xword	.LC23
	.xword	.LC22
	.xword	.LC20
	.xword	.LC21
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
