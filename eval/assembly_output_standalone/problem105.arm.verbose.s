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
	str	x0, [sp, 40]	// x, x
	str	w1, [sp, 36]	// size, size
	str	x2, [sp, 24]	// out, out
	str	x3, [sp, 16]	// out_size, out_size
// eval/problem105//code.c:6:     *out = malloc(size * sizeof(int));
	ldrsw	x0, [sp, 36]	// _1, size
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	mov	x1, x0	// _3, tmp148
// eval/problem105//code.c:6:     *out = malloc(size * sizeof(int));
	ldr	x0, [sp, 24]	// tmp149, out
	str	x1, [x0]	// _3, *out_72(D)
// eval/problem105//code.c:7:     *out_size = 0;
	ldr	x0, [sp, 16]	// tmp150, out_size
	str	wzr, [x0]	//, *out_size_74(D)
// eval/problem105//code.c:9:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 60]	//, i
// eval/problem105//code.c:9:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L9:
// eval/problem105//code.c:10:         int num = x[i];
	ldrsw	x0, [sp, 60]	// _4, i
	lsl	x0, x0, 2	// _5, _4,
	ldr	x1, [sp, 40]	// tmp151, x
	add	x0, x1, x0	// _6, tmp151, _5
// eval/problem105//code.c:10:         int num = x[i];
	ldr	w0, [x0]	// tmp152, *_6
	str	w0, [sp, 64]	// tmp152, num
// eval/problem105//code.c:11:         bool has_even_digit = false;
	strb	wzr, [sp, 59]	//, has_even_digit
// eval/problem105//code.c:12:         if (num == 0) has_even_digit = true;
	ldr	w0, [sp, 64]	// tmp153, num
	cmp	w0, 0	// tmp153,
	bne	.L4		//,
// eval/problem105//code.c:12:         if (num == 0) has_even_digit = true;
	mov	w0, 1	// tmp154,
	strb	w0, [sp, 59]	// tmp154, has_even_digit
// eval/problem105//code.c:14:         while (num > 0 && !has_even_digit) {
	b	.L4		//
.L7:
// eval/problem105//code.c:15:             if (num % 2 == 0) has_even_digit = true;
	ldr	w0, [sp, 64]	// num.0_7, num
	and	w0, w0, 1	// _8, num.0_7,
// eval/problem105//code.c:15:             if (num % 2 == 0) has_even_digit = true;
	cmp	w0, 0	// _8,
	bne	.L5		//,
// eval/problem105//code.c:15:             if (num % 2 == 0) has_even_digit = true;
	mov	w0, 1	// tmp155,
	strb	w0, [sp, 59]	// tmp155, has_even_digit
.L5:
// eval/problem105//code.c:16:             num = num / 10;
	ldr	w0, [sp, 64]	// tmp157, num
	mov	w1, 26215	// tmp159,
	movk	w1, 0x6666, lsl 16	// tmp159,,
	smull	x1, w0, w1	// tmp158, tmp157, tmp159
	lsr	x1, x1, 32	// tmp160, tmp158,
	asr	w1, w1, 2	// tmp161, tmp160,
	asr	w0, w0, 31	// tmp162, tmp157,
	sub	w0, w1, w0	// tmp156, tmp161, tmp162
	str	w0, [sp, 64]	// tmp156, num
.L4:
// eval/problem105//code.c:14:         while (num > 0 && !has_even_digit) {
	ldr	w0, [sp, 64]	// tmp163, num
	cmp	w0, 0	// tmp163,
	ble	.L6		//,
// eval/problem105//code.c:14:         while (num > 0 && !has_even_digit) {
	ldrb	w0, [sp, 59]	// tmp164, has_even_digit
	eor	w0, w0, 1	// tmp165, tmp164,
	and	w0, w0, 255	// _9, tmp165
// eval/problem105//code.c:14:         while (num > 0 && !has_even_digit) {
	and	w0, w0, 1	// tmp166, _9,
	cmp	w0, 0	// tmp166,
	bne	.L7		//,
.L6:
// eval/problem105//code.c:19:         if (!has_even_digit) {
	ldrb	w0, [sp, 59]	// tmp167, has_even_digit
	eor	w0, w0, 1	// tmp168, tmp167,
	and	w0, w0, 255	// _10, tmp168
// eval/problem105//code.c:19:         if (!has_even_digit) {
	and	w0, w0, 1	// tmp169, _10,
	cmp	w0, 0	// tmp169,
	beq	.L8		//,
// eval/problem105//code.c:20:             (*out)[*out_size] = x[i];
	ldrsw	x0, [sp, 60]	// _11, i
	lsl	x0, x0, 2	// _12, _11,
	ldr	x1, [sp, 40]	// tmp170, x
	add	x1, x1, x0	// _13, tmp170, _12
// eval/problem105//code.c:20:             (*out)[*out_size] = x[i];
	ldr	x0, [sp, 24]	// tmp171, out
	ldr	x2, [x0]	// _14, *out_72(D)
// eval/problem105//code.c:20:             (*out)[*out_size] = x[i];
	ldr	x0, [sp, 16]	// tmp172, out_size
	ldr	w0, [x0]	// _15, *out_size_74(D)
	sxtw	x0, w0	// _16, _15
// eval/problem105//code.c:20:             (*out)[*out_size] = x[i];
	lsl	x0, x0, 2	// _17, _16,
	add	x0, x2, x0	// _18, _14, _17
// eval/problem105//code.c:20:             (*out)[*out_size] = x[i];
	ldr	w1, [x1]	// _19, *_13
// eval/problem105//code.c:20:             (*out)[*out_size] = x[i];
	str	w1, [x0]	// _19, *_18
// eval/problem105//code.c:21:             (*out_size)++;
	ldr	x0, [sp, 16]	// tmp173, out_size
	ldr	w0, [x0]	// _20, *out_size_74(D)
// eval/problem105//code.c:21:             (*out_size)++;
	add	w1, w0, 1	// _21, _20,
	ldr	x0, [sp, 16]	// tmp174, out_size
	str	w1, [x0]	// _21, *out_size_74(D)
.L8:
// eval/problem105//code.c:9:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 60]	// tmp176, i
	add	w0, w0, 1	// tmp175, tmp176,
	str	w0, [sp, 60]	// tmp175, i
.L2:
// eval/problem105//code.c:9:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 60]	// tmp177, i
	ldr	w0, [sp, 36]	// tmp178, size
	cmp	w1, w0	// tmp177, tmp178
	blt	.L9		//,
// eval/problem105//code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	str	wzr, [sp, 68]	//, i
// eval/problem105//code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	b	.L10		//
.L14:
// eval/problem105//code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	str	wzr, [sp, 72]	//, j
// eval/problem105//code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	b	.L11		//
.L13:
// eval/problem105//code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	ldr	x0, [sp, 24]	// tmp179, out
	ldr	x1, [x0]	// _22, *out_72(D)
// eval/problem105//code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	ldrsw	x0, [sp, 72]	// _23, j
	lsl	x0, x0, 2	// _24, _23,
	add	x0, x1, x0	// _25, _22, _24
	ldr	w1, [x0]	// _26, *_25
// eval/problem105//code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	ldr	x0, [sp, 24]	// tmp180, out
	ldr	x2, [x0]	// _27, *out_72(D)
// eval/problem105//code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	ldrsw	x0, [sp, 72]	// _28, j
	add	x0, x0, 1	// _29, _28,
	lsl	x0, x0, 2	// _30, _29,
	add	x0, x2, x0	// _31, _27, _30
	ldr	w0, [x0]	// _32, *_31
// eval/problem105//code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	cmp	w1, w0	// _26, _32
	ble	.L12		//,
// eval/problem105//code.c:28:                 int temp = (*out)[j];
	ldr	x0, [sp, 24]	// tmp181, out
	ldr	x1, [x0]	// _33, *out_72(D)
// eval/problem105//code.c:28:                 int temp = (*out)[j];
	ldrsw	x0, [sp, 72]	// _34, j
	lsl	x0, x0, 2	// _35, _34,
	add	x0, x1, x0	// _36, _33, _35
// eval/problem105//code.c:28:                 int temp = (*out)[j];
	ldr	w0, [x0]	// tmp182, *_36
	str	w0, [sp, 76]	// tmp182, temp
// eval/problem105//code.c:29:                 (*out)[j] = (*out)[j + 1];
	ldr	x0, [sp, 24]	// tmp183, out
	ldr	x1, [x0]	// _37, *out_72(D)
// eval/problem105//code.c:29:                 (*out)[j] = (*out)[j + 1];
	ldrsw	x0, [sp, 72]	// _38, j
	add	x0, x0, 1	// _39, _38,
	lsl	x0, x0, 2	// _40, _39,
	add	x1, x1, x0	// _41, _37, _40
// eval/problem105//code.c:29:                 (*out)[j] = (*out)[j + 1];
	ldr	x0, [sp, 24]	// tmp184, out
	ldr	x2, [x0]	// _42, *out_72(D)
// eval/problem105//code.c:29:                 (*out)[j] = (*out)[j + 1];
	ldrsw	x0, [sp, 72]	// _43, j
	lsl	x0, x0, 2	// _44, _43,
	add	x0, x2, x0	// _45, _42, _44
// eval/problem105//code.c:29:                 (*out)[j] = (*out)[j + 1];
	ldr	w1, [x1]	// _46, *_41
// eval/problem105//code.c:29:                 (*out)[j] = (*out)[j + 1];
	str	w1, [x0]	// _46, *_45
// eval/problem105//code.c:30:                 (*out)[j + 1] = temp;
	ldr	x0, [sp, 24]	// tmp185, out
	ldr	x1, [x0]	// _47, *out_72(D)
// eval/problem105//code.c:30:                 (*out)[j + 1] = temp;
	ldrsw	x0, [sp, 72]	// _48, j
	add	x0, x0, 1	// _49, _48,
	lsl	x0, x0, 2	// _50, _49,
	add	x0, x1, x0	// _51, _47, _50
// eval/problem105//code.c:30:                 (*out)[j + 1] = temp;
	ldr	w1, [sp, 76]	// tmp186, temp
	str	w1, [x0]	// tmp186, *_51
.L12:
// eval/problem105//code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	ldr	w0, [sp, 72]	// tmp188, j
	add	w0, w0, 1	// tmp187, tmp188,
	str	w0, [sp, 72]	// tmp187, j
.L11:
// eval/problem105//code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	ldr	x0, [sp, 16]	// tmp189, out_size
	ldr	w1, [x0]	// _52, *out_size_74(D)
// eval/problem105//code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	ldr	w0, [sp, 68]	// tmp190, i
	sub	w0, w1, w0	// _53, _52, tmp190
// eval/problem105//code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	sub	w0, w0, #1	// _54, _53,
// eval/problem105//code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	ldr	w1, [sp, 72]	// tmp191, j
	cmp	w1, w0	// tmp191, _54
	blt	.L13		//,
// eval/problem105//code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	ldr	w0, [sp, 68]	// tmp193, i
	add	w0, w0, 1	// tmp192, tmp193,
	str	w0, [sp, 68]	// tmp192, i
.L10:
// eval/problem105//code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	ldr	x0, [sp, 16]	// tmp194, out_size
	ldr	w0, [x0]	// _55, *out_size_74(D)
// eval/problem105//code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	sub	w0, w0, #1	// _56, _55,
// eval/problem105//code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	ldr	w1, [sp, 68]	// tmp195, i
	cmp	w1, w0	// tmp195, _56
	blt	.L14		//,
// eval/problem105//code.c:34: }
	nop	
	nop	
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
