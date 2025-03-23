	.arch armv8-a
	.file	"problem105.c"
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
// problem105.c:6:     *out = malloc(size * sizeof(int));
	ldrsw	x0, [sp, 36]	// _1, size
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	mov	x1, x0	// _3, tmp148
// problem105.c:6:     *out = malloc(size * sizeof(int));
	ldr	x0, [sp, 24]	// tmp149, out
	str	x1, [x0]	// _3, *out_72(D)
// problem105.c:7:     *out_size = 0;
	ldr	x0, [sp, 16]	// tmp150, out_size
	str	wzr, [x0]	//, *out_size_74(D)
// problem105.c:9:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 60]	//, i
// problem105.c:9:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L9:
// problem105.c:10:         int num = x[i];
	ldrsw	x0, [sp, 60]	// _4, i
	lsl	x0, x0, 2	// _5, _4,
	ldr	x1, [sp, 40]	// tmp151, x
	add	x0, x1, x0	// _6, tmp151, _5
// problem105.c:10:         int num = x[i];
	ldr	w0, [x0]	// tmp152, *_6
	str	w0, [sp, 64]	// tmp152, num
// problem105.c:11:         bool has_even_digit = false;
	strb	wzr, [sp, 59]	//, has_even_digit
// problem105.c:12:         if (num == 0) has_even_digit = true;
	ldr	w0, [sp, 64]	// tmp153, num
	cmp	w0, 0	// tmp153,
	bne	.L4		//,
// problem105.c:12:         if (num == 0) has_even_digit = true;
	mov	w0, 1	// tmp154,
	strb	w0, [sp, 59]	// tmp154, has_even_digit
// problem105.c:14:         while (num > 0 && !has_even_digit) {
	b	.L4		//
.L7:
// problem105.c:15:             if (num % 2 == 0) has_even_digit = true;
	ldr	w0, [sp, 64]	// num.0_7, num
	and	w0, w0, 1	// _8, num.0_7,
// problem105.c:15:             if (num % 2 == 0) has_even_digit = true;
	cmp	w0, 0	// _8,
	bne	.L5		//,
// problem105.c:15:             if (num % 2 == 0) has_even_digit = true;
	mov	w0, 1	// tmp155,
	strb	w0, [sp, 59]	// tmp155, has_even_digit
.L5:
// problem105.c:16:             num = num / 10;
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
// problem105.c:14:         while (num > 0 && !has_even_digit) {
	ldr	w0, [sp, 64]	// tmp163, num
	cmp	w0, 0	// tmp163,
	ble	.L6		//,
// problem105.c:14:         while (num > 0 && !has_even_digit) {
	ldrb	w0, [sp, 59]	// tmp164, has_even_digit
	eor	w0, w0, 1	// tmp165, tmp164,
	and	w0, w0, 255	// _9, tmp165
// problem105.c:14:         while (num > 0 && !has_even_digit) {
	and	w0, w0, 1	// tmp166, _9,
	cmp	w0, 0	// tmp166,
	bne	.L7		//,
.L6:
// problem105.c:19:         if (!has_even_digit) {
	ldrb	w0, [sp, 59]	// tmp167, has_even_digit
	eor	w0, w0, 1	// tmp168, tmp167,
	and	w0, w0, 255	// _10, tmp168
// problem105.c:19:         if (!has_even_digit) {
	and	w0, w0, 1	// tmp169, _10,
	cmp	w0, 0	// tmp169,
	beq	.L8		//,
// problem105.c:20:             (*out)[*out_size] = x[i];
	ldrsw	x0, [sp, 60]	// _11, i
	lsl	x0, x0, 2	// _12, _11,
	ldr	x1, [sp, 40]	// tmp170, x
	add	x1, x1, x0	// _13, tmp170, _12
// problem105.c:20:             (*out)[*out_size] = x[i];
	ldr	x0, [sp, 24]	// tmp171, out
	ldr	x2, [x0]	// _14, *out_72(D)
// problem105.c:20:             (*out)[*out_size] = x[i];
	ldr	x0, [sp, 16]	// tmp172, out_size
	ldr	w0, [x0]	// _15, *out_size_74(D)
	sxtw	x0, w0	// _16, _15
// problem105.c:20:             (*out)[*out_size] = x[i];
	lsl	x0, x0, 2	// _17, _16,
	add	x0, x2, x0	// _18, _14, _17
// problem105.c:20:             (*out)[*out_size] = x[i];
	ldr	w1, [x1]	// _19, *_13
// problem105.c:20:             (*out)[*out_size] = x[i];
	str	w1, [x0]	// _19, *_18
// problem105.c:21:             (*out_size)++;
	ldr	x0, [sp, 16]	// tmp173, out_size
	ldr	w0, [x0]	// _20, *out_size_74(D)
// problem105.c:21:             (*out_size)++;
	add	w1, w0, 1	// _21, _20,
	ldr	x0, [sp, 16]	// tmp174, out_size
	str	w1, [x0]	// _21, *out_size_74(D)
.L8:
// problem105.c:9:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 60]	// tmp176, i
	add	w0, w0, 1	// tmp175, tmp176,
	str	w0, [sp, 60]	// tmp175, i
.L2:
// problem105.c:9:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 60]	// tmp177, i
	ldr	w0, [sp, 36]	// tmp178, size
	cmp	w1, w0	// tmp177, tmp178
	blt	.L9		//,
// problem105.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	str	wzr, [sp, 68]	//, i
// problem105.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	b	.L10		//
.L14:
// problem105.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	str	wzr, [sp, 72]	//, j
// problem105.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	b	.L11		//
.L13:
// problem105.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	ldr	x0, [sp, 24]	// tmp179, out
	ldr	x1, [x0]	// _22, *out_72(D)
// problem105.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	ldrsw	x0, [sp, 72]	// _23, j
	lsl	x0, x0, 2	// _24, _23,
	add	x0, x1, x0	// _25, _22, _24
	ldr	w1, [x0]	// _26, *_25
// problem105.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	ldr	x0, [sp, 24]	// tmp180, out
	ldr	x2, [x0]	// _27, *out_72(D)
// problem105.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	ldrsw	x0, [sp, 72]	// _28, j
	add	x0, x0, 1	// _29, _28,
	lsl	x0, x0, 2	// _30, _29,
	add	x0, x2, x0	// _31, _27, _30
	ldr	w0, [x0]	// _32, *_31
// problem105.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	cmp	w1, w0	// _26, _32
	ble	.L12		//,
// problem105.c:28:                 int temp = (*out)[j];
	ldr	x0, [sp, 24]	// tmp181, out
	ldr	x1, [x0]	// _33, *out_72(D)
// problem105.c:28:                 int temp = (*out)[j];
	ldrsw	x0, [sp, 72]	// _34, j
	lsl	x0, x0, 2	// _35, _34,
	add	x0, x1, x0	// _36, _33, _35
// problem105.c:28:                 int temp = (*out)[j];
	ldr	w0, [x0]	// tmp182, *_36
	str	w0, [sp, 76]	// tmp182, temp
// problem105.c:29:                 (*out)[j] = (*out)[j + 1];
	ldr	x0, [sp, 24]	// tmp183, out
	ldr	x1, [x0]	// _37, *out_72(D)
// problem105.c:29:                 (*out)[j] = (*out)[j + 1];
	ldrsw	x0, [sp, 72]	// _38, j
	add	x0, x0, 1	// _39, _38,
	lsl	x0, x0, 2	// _40, _39,
	add	x1, x1, x0	// _41, _37, _40
// problem105.c:29:                 (*out)[j] = (*out)[j + 1];
	ldr	x0, [sp, 24]	// tmp184, out
	ldr	x2, [x0]	// _42, *out_72(D)
// problem105.c:29:                 (*out)[j] = (*out)[j + 1];
	ldrsw	x0, [sp, 72]	// _43, j
	lsl	x0, x0, 2	// _44, _43,
	add	x0, x2, x0	// _45, _42, _44
// problem105.c:29:                 (*out)[j] = (*out)[j + 1];
	ldr	w1, [x1]	// _46, *_41
// problem105.c:29:                 (*out)[j] = (*out)[j + 1];
	str	w1, [x0]	// _46, *_45
// problem105.c:30:                 (*out)[j + 1] = temp;
	ldr	x0, [sp, 24]	// tmp185, out
	ldr	x1, [x0]	// _47, *out_72(D)
// problem105.c:30:                 (*out)[j + 1] = temp;
	ldrsw	x0, [sp, 72]	// _48, j
	add	x0, x0, 1	// _49, _48,
	lsl	x0, x0, 2	// _50, _49,
	add	x0, x1, x0	// _51, _47, _50
// problem105.c:30:                 (*out)[j + 1] = temp;
	ldr	w1, [sp, 76]	// tmp186, temp
	str	w1, [x0]	// tmp186, *_51
.L12:
// problem105.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	ldr	w0, [sp, 72]	// tmp188, j
	add	w0, w0, 1	// tmp187, tmp188,
	str	w0, [sp, 72]	// tmp187, j
.L11:
// problem105.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	ldr	x0, [sp, 16]	// tmp189, out_size
	ldr	w1, [x0]	// _52, *out_size_74(D)
// problem105.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	ldr	w0, [sp, 68]	// tmp190, i
	sub	w0, w1, w0	// _53, _52, tmp190
// problem105.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	sub	w0, w0, #1	// _54, _53,
// problem105.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	ldr	w1, [sp, 72]	// tmp191, j
	cmp	w1, w0	// tmp191, _54
	blt	.L13		//,
// problem105.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	ldr	w0, [sp, 68]	// tmp193, i
	add	w0, w0, 1	// tmp192, tmp193,
	str	w0, [sp, 68]	// tmp192, i
.L10:
// problem105.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	ldr	x0, [sp, 16]	// tmp194, out_size
	ldr	w0, [x0]	// _55, *out_size_74(D)
// problem105.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	sub	w0, w0, #1	// _56, _55,
// problem105.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	ldr	w1, [sp, 68]	// tmp195, i
	cmp	w1, w0	// tmp195, _56
	blt	.L14		//,
// problem105.c:34: }
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
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// a, a
	str	w1, [sp, 20]	// a_size, a_size
	str	x2, [sp, 8]	// b, b
	str	w3, [sp, 16]	// b_size, b_size
// problem105.c:44:     if (a_size != b_size) return false;
	ldr	w1, [sp, 20]	// tmp102, a_size
	ldr	w0, [sp, 16]	// tmp103, b_size
	cmp	w1, w0	// tmp102, tmp103
	beq	.L16		//,
// problem105.c:44:     if (a_size != b_size) return false;
	mov	w0, 0	// _10,
// problem105.c:44:     if (a_size != b_size) return false;
	b	.L17		//
.L16:
// problem105.c:45:     for (int i = 0; i < a_size; i++) {
	str	wzr, [sp, 44]	//, i
// problem105.c:45:     for (int i = 0; i < a_size; i++) {
	b	.L18		//
.L20:
// problem105.c:46:         if (a[i] != b[i]) return false;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp104, a
	add	x0, x1, x0	// _3, tmp104, _2
	ldr	w1, [x0]	// _4, *_3
// problem105.c:46:         if (a[i] != b[i]) return false;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 8]	// tmp105, b
	add	x0, x2, x0	// _7, tmp105, _6
	ldr	w0, [x0]	// _8, *_7
// problem105.c:46:         if (a[i] != b[i]) return false;
	cmp	w1, w0	// _4, _8
	beq	.L19		//,
// problem105.c:46:         if (a[i] != b[i]) return false;
	mov	w0, 0	// _10,
// problem105.c:46:         if (a[i] != b[i]) return false;
	b	.L17		//
.L19:
// problem105.c:45:     for (int i = 0; i < a_size; i++) {
	ldr	w0, [sp, 44]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 44]	// tmp106, i
.L18:
// problem105.c:45:     for (int i = 0; i < a_size; i++) {
	ldr	w1, [sp, 44]	// tmp108, i
	ldr	w0, [sp, 20]	// tmp109, a_size
	cmp	w1, w0	// tmp108, tmp109
	blt	.L20		//,
// problem105.c:48:     return true;
	mov	w0, 1	// _10,
.L17:
// problem105.c:49: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC2:
	.string	"problem105.c"
	.align	3
.LC3:
	.string	"issame(out1, out1_size, expected1, 3)"
	.align	3
.LC4:
	.string	"issame(out2, out2_size, NULL, 0)"
	.align	3
.LC5:
	.string	"issame(out3, out3_size, expected3, 2)"
	.align	3
.LC6:
	.string	"issame(out4, out4_size, expected4, 2)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #176	//,,
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, 160]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 160	//,,
// problem105.c:51: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp110,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp110,
	ldr	x1, [x0]	// tmp176,
	str	x1, [sp, 152]	// tmp176, D.5465
	mov	x1, 0	// tmp176
// problem105.c:53:     int test1[] = {15, 33, 1422, 1};
	mov	w0, 15	// tmp111,
	str	w0, [sp, 104]	// tmp111, test1[0]
	mov	w0, 33	// tmp112,
	str	w0, [sp, 108]	// tmp112, test1[1]
	mov	w0, 1422	// tmp113,
	str	w0, [sp, 112]	// tmp113, test1[2]
	mov	w0, 1	// tmp114,
	str	w0, [sp, 116]	// tmp114, test1[3]
// problem105.c:54:     int expected1[] = {1, 15, 33};
	adrp	x0, .LC0	// tmp116,
	add	x1, x0, :lo12:.LC0	// tmp115, tmp116,
	add	x0, sp, 72	// tmp117,,
	ldr	x2, [x1]	// tmp119,
	str	x2, [x0]	// tmp119, expected1
	ldr	w1, [x1, 8]	// tmp120,
	str	w1, [x0, 8]	// tmp120, expected1
// problem105.c:57:     func0(test1, 4, &out1, &out1_size);
	add	x2, sp, 8	// tmp121,,
	add	x1, sp, 24	// tmp122,,
	add	x0, sp, 104	// tmp123,,
	mov	x3, x2	//, tmp121
	mov	x2, x1	//, tmp122
	mov	w1, 4	//,
	bl	func0		//
// problem105.c:58:     assert(issame(out1, out1_size, expected1, 3));
	ldr	x0, [sp, 24]	// out1.1_1, out1
	ldr	w1, [sp, 8]	// out1_size.2_2, out1_size
	add	x2, sp, 72	// tmp124,,
	mov	w3, 3	//,
	bl	issame		//
	and	w0, w0, 255	// _3, tmp125
// problem105.c:58:     assert(issame(out1, out1_size, expected1, 3));
	and	w0, w0, 1	// tmp126, _3,
	cmp	w0, 0	// tmp126,
	bne	.L22		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp127,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp127,
	mov	w2, 58	//,
	adrp	x0, .LC2	// tmp128,
	add	x1, x0, :lo12:.LC2	//, tmp128,
	adrp	x0, .LC3	// tmp129,
	add	x0, x0, :lo12:.LC3	//, tmp129,
	bl	__assert_fail		//
.L22:
// problem105.c:59:     free(out1);
	ldr	x0, [sp, 24]	// out1.3_4, out1
	bl	free		//
// problem105.c:61:     int test2[] = {152, 323, 1422, 10};
	mov	w0, 152	// tmp130,
	str	w0, [sp, 120]	// tmp130, test2[0]
	mov	w0, 323	// tmp131,
	str	w0, [sp, 124]	// tmp131, test2[1]
	mov	w0, 1422	// tmp132,
	str	w0, [sp, 128]	// tmp132, test2[2]
	mov	w0, 10	// tmp133,
	str	w0, [sp, 132]	// tmp133, test2[3]
// problem105.c:64:     func0(test2, 4, &out2, &out2_size);
	add	x2, sp, 12	// tmp134,,
	add	x1, sp, 32	// tmp135,,
	add	x0, sp, 120	// tmp136,,
	mov	x3, x2	//, tmp134
	mov	x2, x1	//, tmp135
	mov	w1, 4	//,
	bl	func0		//
// problem105.c:65:     assert(issame(out2, out2_size, NULL, 0));
	ldr	x0, [sp, 32]	// out2.4_5, out2
	ldr	w1, [sp, 12]	// out2_size.5_6, out2_size
	mov	w3, 0	//,
	mov	x2, 0	//,
	bl	issame		//
	and	w0, w0, 255	// _7, tmp137
// problem105.c:65:     assert(issame(out2, out2_size, NULL, 0));
	and	w0, w0, 1	// tmp138, _7,
	cmp	w0, 0	// tmp138,
	bne	.L23		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp139,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp139,
	mov	w2, 65	//,
	adrp	x0, .LC2	// tmp140,
	add	x1, x0, :lo12:.LC2	//, tmp140,
	adrp	x0, .LC4	// tmp141,
	add	x0, x0, :lo12:.LC4	//, tmp141,
	bl	__assert_fail		//
.L23:
// problem105.c:66:     free(out2);
	ldr	x0, [sp, 32]	// out2.6_8, out2
	bl	free		//
// problem105.c:68:     int test3[] = {12345, 2033, 111, 151};
	mov	w0, 12345	// tmp142,
	str	w0, [sp, 136]	// tmp142, test3[0]
	mov	w0, 2033	// tmp143,
	str	w0, [sp, 140]	// tmp143, test3[1]
	mov	w0, 111	// tmp144,
	str	w0, [sp, 144]	// tmp144, test3[2]
	mov	w0, 151	// tmp145,
	str	w0, [sp, 148]	// tmp145, test3[3]
// problem105.c:69:     int expected3[] = {111, 151};
	mov	w0, 111	// tmp146,
	str	w0, [sp, 56]	// tmp146, expected3[0]
	mov	w0, 151	// tmp147,
	str	w0, [sp, 60]	// tmp147, expected3[1]
// problem105.c:72:     func0(test3, 4, &out3, &out3_size);
	add	x2, sp, 16	// tmp148,,
	add	x1, sp, 40	// tmp149,,
	add	x0, sp, 136	// tmp150,,
	mov	x3, x2	//, tmp148
	mov	x2, x1	//, tmp149
	mov	w1, 4	//,
	bl	func0		//
// problem105.c:73:     assert(issame(out3, out3_size, expected3, 2));
	ldr	x0, [sp, 40]	// out3.7_9, out3
	ldr	w1, [sp, 16]	// out3_size.8_10, out3_size
	add	x2, sp, 56	// tmp151,,
	mov	w3, 2	//,
	bl	issame		//
	and	w0, w0, 255	// _11, tmp152
// problem105.c:73:     assert(issame(out3, out3_size, expected3, 2));
	and	w0, w0, 1	// tmp153, _11,
	cmp	w0, 0	// tmp153,
	bne	.L24		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp154,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp154,
	mov	w2, 73	//,
	adrp	x0, .LC2	// tmp155,
	add	x1, x0, :lo12:.LC2	//, tmp155,
	adrp	x0, .LC5	// tmp156,
	add	x0, x0, :lo12:.LC5	//, tmp156,
	bl	__assert_fail		//
.L24:
// problem105.c:74:     free(out3);
	ldr	x0, [sp, 40]	// out3.9_12, out3
	bl	free		//
// problem105.c:76:     int test4[] = {135, 103, 31};
	adrp	x0, .LC1	// tmp158,
	add	x1, x0, :lo12:.LC1	// tmp157, tmp158,
	add	x0, sp, 88	// tmp159,,
	ldr	x2, [x1]	// tmp161,
	str	x2, [x0]	// tmp161, test4
	ldr	w1, [x1, 8]	// tmp162,
	str	w1, [x0, 8]	// tmp162, test4
// problem105.c:77:     int expected4[] = {31, 135};
	mov	w0, 31	// tmp163,
	str	w0, [sp, 64]	// tmp163, expected4[0]
	mov	w0, 135	// tmp164,
	str	w0, [sp, 68]	// tmp164, expected4[1]
// problem105.c:80:     func0(test4, 3, &out4, &out4_size);
	add	x2, sp, 20	// tmp165,,
	add	x1, sp, 48	// tmp166,,
	add	x0, sp, 88	// tmp167,,
	mov	x3, x2	//, tmp165
	mov	x2, x1	//, tmp166
	mov	w1, 3	//,
	bl	func0		//
// problem105.c:81:     assert(issame(out4, out4_size, expected4, 2));
	ldr	x0, [sp, 48]	// out4.10_13, out4
	ldr	w1, [sp, 20]	// out4_size.11_14, out4_size
	add	x2, sp, 64	// tmp168,,
	mov	w3, 2	//,
	bl	issame		//
	and	w0, w0, 255	// _15, tmp169
// problem105.c:81:     assert(issame(out4, out4_size, expected4, 2));
	and	w0, w0, 1	// tmp170, _15,
	cmp	w0, 0	// tmp170,
	bne	.L25		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp171,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp171,
	mov	w2, 81	//,
	adrp	x0, .LC2	// tmp172,
	add	x1, x0, :lo12:.LC2	//, tmp172,
	adrp	x0, .LC6	// tmp173,
	add	x0, x0, :lo12:.LC6	//, tmp173,
	bl	__assert_fail		//
.L25:
// problem105.c:82:     free(out4);
	ldr	x0, [sp, 48]	// out4.12_16, out4
	bl	free		//
// problem105.c:84:     return 0;
	mov	w0, 0	// _52,
// problem105.c:85: }
	mov	w1, w0	// <retval>, _52
	adrp	x0, :got:__stack_chk_guard	// tmp175,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp175,
	ldr	x3, [sp, 152]	// tmp177, D.5465
	ldr	x2, [x0]	// tmp178,
	subs	x3, x3, x2	// tmp177, tmp178
	mov	x2, 0	// tmp178
	beq	.L27		//,
	bl	__stack_chk_fail		//
.L27:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 160]	//,,
	add	sp, sp, 176	//,,
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
	.word	1
	.word	15
	.word	33
	.align	3
.LC1:
	.word	135
	.word	103
	.word	31
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
