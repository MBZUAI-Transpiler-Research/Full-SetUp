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
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x0, [sp, 40]	// lst, lst
	str	w1, [sp, 36]	// lst_size, lst_size
	str	x2, [sp, 24]	// return_size, return_size
// code.c:9:     *return_size = 0;
	ldr	x0, [sp, 24]	// tmp160, return_size
	str	wzr, [x0]	//, *return_size_78(D)
// code.c:10:     for (i = 0; i < lst_size; ++i) {
	str	wzr, [sp, 56]	//, i
// code.c:10:     for (i = 0; i < lst_size; ++i) {
	b	.L2		//
.L4:
// code.c:11:         if (strlen(lst[i]) % 2 == 0) {
	ldrsw	x0, [sp, 56]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 40]	// tmp161, lst
	add	x0, x1, x0	// _3, tmp161, _2
// code.c:11:         if (strlen(lst[i]) % 2 == 0) {
	ldr	x0, [x0]	// _4, *_3
	bl	strlen		//
// code.c:11:         if (strlen(lst[i]) % 2 == 0) {
	and	x0, x0, 1	// _6, _5,
// code.c:11:         if (strlen(lst[i]) % 2 == 0) {
	cmp	x0, 0	// _6,
	bne	.L3		//,
// code.c:12:             lst[*return_size] = lst[i];
	ldrsw	x0, [sp, 56]	// _7, i
	lsl	x0, x0, 3	// _8, _7,
	ldr	x1, [sp, 40]	// tmp162, lst
	add	x1, x1, x0	// _9, tmp162, _8
// code.c:12:             lst[*return_size] = lst[i];
	ldr	x0, [sp, 24]	// tmp163, return_size
	ldr	w0, [x0]	// _10, *return_size_78(D)
	sxtw	x0, w0	// _11, _10
// code.c:12:             lst[*return_size] = lst[i];
	lsl	x0, x0, 3	// _12, _11,
	ldr	x2, [sp, 40]	// tmp164, lst
	add	x0, x2, x0	// _13, tmp164, _12
// code.c:12:             lst[*return_size] = lst[i];
	ldr	x1, [x1]	// _14, *_9
// code.c:12:             lst[*return_size] = lst[i];
	str	x1, [x0]	// _14, *_13
// code.c:13:             (*return_size)++;
	ldr	x0, [sp, 24]	// tmp165, return_size
	ldr	w0, [x0]	// _15, *return_size_78(D)
// code.c:13:             (*return_size)++;
	add	w1, w0, 1	// _16, _15,
	ldr	x0, [sp, 24]	// tmp166, return_size
	str	w1, [x0]	// _16, *return_size_78(D)
.L3:
// code.c:10:     for (i = 0; i < lst_size; ++i) {
	ldr	w0, [sp, 56]	// tmp168, i
	add	w0, w0, 1	// tmp167, tmp168,
	str	w0, [sp, 56]	// tmp167, i
.L2:
// code.c:10:     for (i = 0; i < lst_size; ++i) {
	ldr	w1, [sp, 56]	// tmp169, i
	ldr	w0, [sp, 36]	// tmp170, lst_size
	cmp	w1, w0	// tmp169, tmp170
	blt	.L4		//,
// code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	str	wzr, [sp, 56]	//, i
// code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	b	.L5		//
.L10:
// code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	str	wzr, [sp, 60]	//, j
// code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	b	.L6		//
.L9:
// code.c:19:             size_t len_j = strlen(lst[j]);
	ldrsw	x0, [sp, 60]	// _17, j
	lsl	x0, x0, 3	// _18, _17,
	ldr	x1, [sp, 40]	// tmp171, lst
	add	x0, x1, x0	// _19, tmp171, _18
// code.c:19:             size_t len_j = strlen(lst[j]);
	ldr	x0, [x0]	// _20, *_19
	bl	strlen		//
	str	x0, [sp, 72]	//, len_j
// code.c:20:             size_t len_j1 = strlen(lst[j + 1]);
	ldrsw	x0, [sp, 60]	// _21, j
	add	x0, x0, 1	// _22, _21,
	lsl	x0, x0, 3	// _23, _22,
	ldr	x1, [sp, 40]	// tmp172, lst
	add	x0, x1, x0	// _24, tmp172, _23
// code.c:20:             size_t len_j1 = strlen(lst[j + 1]);
	ldr	x0, [x0]	// _25, *_24
	bl	strlen		//
	str	x0, [sp, 80]	//, len_j1
// code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ldr	x1, [sp, 72]	// tmp173, len_j
	ldr	x0, [sp, 80]	// tmp174, len_j1
	cmp	x1, x0	// tmp173, tmp174
	bhi	.L7		//,
// code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ldr	x1, [sp, 72]	// tmp175, len_j
	ldr	x0, [sp, 80]	// tmp176, len_j1
	cmp	x1, x0	// tmp175, tmp176
	bne	.L8		//,
// code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ldrsw	x0, [sp, 60]	// _26, j
	lsl	x0, x0, 3	// _27, _26,
	ldr	x1, [sp, 40]	// tmp177, lst
	add	x0, x1, x0	// _28, tmp177, _27
// code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ldr	x2, [x0]	// _29, *_28
// code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ldrsw	x0, [sp, 60]	// _30, j
	add	x0, x0, 1	// _31, _30,
	lsl	x0, x0, 3	// _32, _31,
	ldr	x1, [sp, 40]	// tmp178, lst
	add	x0, x1, x0	// _33, tmp178, _32
// code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	ldr	x0, [x0]	// _34, *_33
	mov	x1, x0	//, _34
	mov	x0, x2	//, _29
	bl	strcmp		//
// code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	cmp	w0, 0	// _35,
	ble	.L8		//,
.L7:
// code.c:22:                 temp = lst[j];
	ldrsw	x0, [sp, 60]	// _36, j
	lsl	x0, x0, 3	// _37, _36,
	ldr	x1, [sp, 40]	// tmp179, lst
	add	x0, x1, x0	// _38, tmp179, _37
// code.c:22:                 temp = lst[j];
	ldr	x0, [x0]	// tmp180, *_38
	str	x0, [sp, 88]	// tmp180, temp
// code.c:23:                 lst[j] = lst[j + 1];
	ldrsw	x0, [sp, 60]	// _39, j
	add	x0, x0, 1	// _40, _39,
	lsl	x0, x0, 3	// _41, _40,
	ldr	x1, [sp, 40]	// tmp181, lst
	add	x1, x1, x0	// _42, tmp181, _41
// code.c:23:                 lst[j] = lst[j + 1];
	ldrsw	x0, [sp, 60]	// _43, j
	lsl	x0, x0, 3	// _44, _43,
	ldr	x2, [sp, 40]	// tmp182, lst
	add	x0, x2, x0	// _45, tmp182, _44
// code.c:23:                 lst[j] = lst[j + 1];
	ldr	x1, [x1]	// _46, *_42
// code.c:23:                 lst[j] = lst[j + 1];
	str	x1, [x0]	// _46, *_45
// code.c:24:                 lst[j + 1] = temp;
	ldrsw	x0, [sp, 60]	// _47, j
	add	x0, x0, 1	// _48, _47,
	lsl	x0, x0, 3	// _49, _48,
	ldr	x1, [sp, 40]	// tmp183, lst
	add	x0, x1, x0	// _50, tmp183, _49
// code.c:24:                 lst[j + 1] = temp;
	ldr	x1, [sp, 88]	// tmp184, temp
	str	x1, [x0]	// tmp184, *_50
.L8:
// code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	ldr	w0, [sp, 60]	// tmp186, j
	add	w0, w0, 1	// tmp185, tmp186,
	str	w0, [sp, 60]	// tmp185, j
.L6:
// code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	ldr	x0, [sp, 24]	// tmp187, return_size
	ldr	w1, [x0]	// _51, *return_size_78(D)
// code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	ldr	w0, [sp, 56]	// tmp188, i
	sub	w0, w1, w0	// _52, _51, tmp188
// code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	sub	w0, w0, #1	// _53, _52,
// code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	ldr	w1, [sp, 60]	// tmp189, j
	cmp	w1, w0	// tmp189, _53
	blt	.L9		//,
// code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	ldr	w0, [sp, 56]	// tmp191, i
	add	w0, w0, 1	// tmp190, tmp191,
	str	w0, [sp, 56]	// tmp190, i
.L5:
// code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	ldr	x0, [sp, 24]	// tmp192, return_size
	ldr	w0, [x0]	// _54, *return_size_78(D)
// code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	sub	w0, w0, #1	// _55, _54,
// code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	ldr	w1, [sp, 56]	// tmp193, i
	cmp	w1, w0	// tmp193, _55
	blt	.L10		//,
// code.c:29:     char **out = malloc(*return_size * sizeof(char *));
	ldr	x0, [sp, 24]	// tmp194, return_size
	ldr	w0, [x0]	// _56, *return_size_78(D)
	sxtw	x0, w0	// _57, _56
// code.c:29:     char **out = malloc(*return_size * sizeof(char *));
	lsl	x0, x0, 3	// _58, _57,
	bl	malloc		//
	str	x0, [sp, 64]	// tmp195, out
// code.c:30:     for (i = 0; i < *return_size; ++i) {
	str	wzr, [sp, 56]	//, i
// code.c:30:     for (i = 0; i < *return_size; ++i) {
	b	.L11		//
.L12:
// code.c:31:         out[i] = lst[i];
	ldrsw	x0, [sp, 56]	// _59, i
	lsl	x0, x0, 3	// _60, _59,
	ldr	x1, [sp, 40]	// tmp196, lst
	add	x1, x1, x0	// _61, tmp196, _60
// code.c:31:         out[i] = lst[i];
	ldrsw	x0, [sp, 56]	// _62, i
	lsl	x0, x0, 3	// _63, _62,
	ldr	x2, [sp, 64]	// tmp197, out
	add	x0, x2, x0	// _64, tmp197, _63
// code.c:31:         out[i] = lst[i];
	ldr	x1, [x1]	// _65, *_61
// code.c:31:         out[i] = lst[i];
	str	x1, [x0]	// _65, *_64
// code.c:30:     for (i = 0; i < *return_size; ++i) {
	ldr	w0, [sp, 56]	// tmp199, i
	add	w0, w0, 1	// tmp198, tmp199,
	str	w0, [sp, 56]	// tmp198, i
.L11:
// code.c:30:     for (i = 0; i < *return_size; ++i) {
	ldr	x0, [sp, 24]	// tmp200, return_size
	ldr	w0, [x0]	// _66, *return_size_78(D)
// code.c:30:     for (i = 0; i < *return_size; ++i) {
	ldr	w1, [sp, 56]	// tmp201, i
	cmp	w1, w0	// tmp201, _66
	blt	.L12		//,
// code.c:34:     return out;
	ldr	x0, [sp, 64]	// _86, out
// code.c:35: }
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
