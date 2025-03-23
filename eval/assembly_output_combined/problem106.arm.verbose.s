	.arch armv8-a
	.file	"problem106.c"
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
	stp	x29, x30, [sp, -160]!	//,,,
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp	//,
	str	x0, [sp, 40]	// arr, arr
	str	w1, [sp, 36]	// size, size
	str	x2, [sp, 24]	// out, out
	str	x3, [sp, 16]	// out_size, out_size
// problem106.c:5: void func0(int *arr, int size, char ***out, int *out_size) {
	adrp	x0, :got:__stack_chk_guard	// tmp153,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp152, tmp153,
	ldr	x1, [x0]	// tmp210,
	str	x1, [sp, 152]	// tmp210, D.5075
	mov	x1, 0	// tmp210
// problem106.c:6:     char *names[] = {"", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"};
	adrp	x0, .LC17	// tmp155,
	add	x1, x0, :lo12:.LC17	// tmp154, tmp155,
	add	x0, sp, 72	// tmp156,,
	ldp	q0, q1, [x1]	// tmp158, tmp159,
	stp	q0, q1, [x0]	// tmp158, tmp159, names
	ldp	q0, q1, [x1, 32]	// tmp160, tmp161,
	stp	q0, q1, [x0, 32]	// tmp160, tmp161, names
	ldr	q0, [x1, 64]	// tmp162,
	str	q0, [x0, 64]	// tmp162, names
// problem106.c:9:     for (i = 0; i < size - 1; i++) {
	str	wzr, [sp, 60]	//, i
// problem106.c:9:     for (i = 0; i < size - 1; i++) {
	b	.L2		//
.L6:
// problem106.c:10:         for (j = 0; j < size - i - 1; j++) {
	str	wzr, [sp, 64]	//, j
// problem106.c:10:         for (j = 0; j < size - i - 1; j++) {
	b	.L3		//
.L5:
// problem106.c:11:             if (arr[j] > arr[j + 1]) {
	ldrsw	x0, [sp, 64]	// _1, j
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 40]	// tmp163, arr
	add	x0, x1, x0	// _3, tmp163, _2
	ldr	w1, [x0]	// _4, *_3
// problem106.c:11:             if (arr[j] > arr[j + 1]) {
	ldrsw	x0, [sp, 64]	// _5, j
	add	x0, x0, 1	// _6, _5,
	lsl	x0, x0, 2	// _7, _6,
	ldr	x2, [sp, 40]	// tmp164, arr
	add	x0, x2, x0	// _8, tmp164, _7
	ldr	w0, [x0]	// _9, *_8
// problem106.c:11:             if (arr[j] > arr[j + 1]) {
	cmp	w1, w0	// _4, _9
	ble	.L4		//,
// problem106.c:12:                 int temp = arr[j];
	ldrsw	x0, [sp, 64]	// _10, j
	lsl	x0, x0, 2	// _11, _10,
	ldr	x1, [sp, 40]	// tmp165, arr
	add	x0, x1, x0	// _12, tmp165, _11
// problem106.c:12:                 int temp = arr[j];
	ldr	w0, [x0]	// tmp166, *_12
	str	w0, [sp, 68]	// tmp166, temp
// problem106.c:13:                 arr[j] = arr[j + 1];
	ldrsw	x0, [sp, 64]	// _13, j
	add	x0, x0, 1	// _14, _13,
	lsl	x0, x0, 2	// _15, _14,
	ldr	x1, [sp, 40]	// tmp167, arr
	add	x1, x1, x0	// _16, tmp167, _15
// problem106.c:13:                 arr[j] = arr[j + 1];
	ldrsw	x0, [sp, 64]	// _17, j
	lsl	x0, x0, 2	// _18, _17,
	ldr	x2, [sp, 40]	// tmp168, arr
	add	x0, x2, x0	// _19, tmp168, _18
// problem106.c:13:                 arr[j] = arr[j + 1];
	ldr	w1, [x1]	// _20, *_16
// problem106.c:13:                 arr[j] = arr[j + 1];
	str	w1, [x0]	// _20, *_19
// problem106.c:14:                 arr[j + 1] = temp;
	ldrsw	x0, [sp, 64]	// _21, j
	add	x0, x0, 1	// _22, _21,
	lsl	x0, x0, 2	// _23, _22,
	ldr	x1, [sp, 40]	// tmp169, arr
	add	x0, x1, x0	// _24, tmp169, _23
// problem106.c:14:                 arr[j + 1] = temp;
	ldr	w1, [sp, 68]	// tmp170, temp
	str	w1, [x0]	// tmp170, *_24
.L4:
// problem106.c:10:         for (j = 0; j < size - i - 1; j++) {
	ldr	w0, [sp, 64]	// tmp172, j
	add	w0, w0, 1	// tmp171, tmp172,
	str	w0, [sp, 64]	// tmp171, j
.L3:
// problem106.c:10:         for (j = 0; j < size - i - 1; j++) {
	ldr	w1, [sp, 36]	// tmp173, size
	ldr	w0, [sp, 60]	// tmp174, i
	sub	w0, w1, w0	// _25, tmp173, tmp174
// problem106.c:10:         for (j = 0; j < size - i - 1; j++) {
	sub	w0, w0, #1	// _26, _25,
// problem106.c:10:         for (j = 0; j < size - i - 1; j++) {
	ldr	w1, [sp, 64]	// tmp175, j
	cmp	w1, w0	// tmp175, _26
	blt	.L5		//,
// problem106.c:9:     for (i = 0; i < size - 1; i++) {
	ldr	w0, [sp, 60]	// tmp177, i
	add	w0, w0, 1	// tmp176, tmp177,
	str	w0, [sp, 60]	// tmp176, i
.L2:
// problem106.c:9:     for (i = 0; i < size - 1; i++) {
	ldr	w0, [sp, 36]	// tmp178, size
	sub	w0, w0, #1	// _27, tmp178,
// problem106.c:9:     for (i = 0; i < size - 1; i++) {
	ldr	w1, [sp, 60]	// tmp179, i
	cmp	w1, w0	// tmp179, _27
	blt	.L6		//,
// problem106.c:19:     *out_size = 0;
	ldr	x0, [sp, 16]	// tmp180, out_size
	str	wzr, [x0]	//, *out_size_78(D)
// problem106.c:20:     for (i = size - 1; i >= 0; i--) {
	ldr	w0, [sp, 36]	// tmp182, size
	sub	w0, w0, #1	// tmp181, tmp182,
	str	w0, [sp, 60]	// tmp181, i
// problem106.c:20:     for (i = size - 1; i >= 0; i--) {
	b	.L7		//
.L9:
// problem106.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	ldrsw	x0, [sp, 60]	// _28, i
	lsl	x0, x0, 2	// _29, _28,
	ldr	x1, [sp, 40]	// tmp183, arr
	add	x0, x1, x0	// _30, tmp183, _29
	ldr	w0, [x0]	// _31, *_30
// problem106.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	cmp	w0, 0	// _31,
	ble	.L8		//,
// problem106.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	ldrsw	x0, [sp, 60]	// _32, i
	lsl	x0, x0, 2	// _33, _32,
	ldr	x1, [sp, 40]	// tmp184, arr
	add	x0, x1, x0	// _34, tmp184, _33
	ldr	w0, [x0]	// _35, *_34
// problem106.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	cmp	w0, 9	// _35,
	bgt	.L8		//,
// problem106.c:22:             (*out_size)++;
	ldr	x0, [sp, 16]	// tmp185, out_size
	ldr	w0, [x0]	// _36, *out_size_78(D)
// problem106.c:22:             (*out_size)++;
	add	w1, w0, 1	// _37, _36,
	ldr	x0, [sp, 16]	// tmp186, out_size
	str	w1, [x0]	// _37, *out_size_78(D)
.L8:
// problem106.c:20:     for (i = size - 1; i >= 0; i--) {
	ldr	w0, [sp, 60]	// tmp188, i
	sub	w0, w0, #1	// tmp187, tmp188,
	str	w0, [sp, 60]	// tmp187, i
.L7:
// problem106.c:20:     for (i = size - 1; i >= 0; i--) {
	ldr	w0, [sp, 60]	// tmp189, i
	cmp	w0, 0	// tmp189,
	bge	.L9		//,
// problem106.c:26:     *out = malloc(*out_size * sizeof(char *));
	ldr	x0, [sp, 16]	// tmp190, out_size
	ldr	w0, [x0]	// _38, *out_size_78(D)
	sxtw	x0, w0	// _39, _38
// problem106.c:26:     *out = malloc(*out_size * sizeof(char *));
	lsl	x0, x0, 3	// _40, _39,
	bl	malloc		//
	mov	x1, x0	// _41, tmp191
// problem106.c:26:     *out = malloc(*out_size * sizeof(char *));
	ldr	x0, [sp, 24]	// tmp192, out
	str	x1, [x0]	// _41, *out_82(D)
// problem106.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	ldr	w0, [sp, 36]	// tmp194, size
	sub	w0, w0, #1	// tmp193, tmp194,
	str	w0, [sp, 60]	// tmp193, i
// problem106.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	str	wzr, [sp, 64]	//, j
// problem106.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	b	.L10		//
.L13:
// problem106.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	ldrsw	x0, [sp, 60]	// _42, i
	lsl	x0, x0, 2	// _43, _42,
	ldr	x1, [sp, 40]	// tmp195, arr
	add	x0, x1, x0	// _44, tmp195, _43
	ldr	w0, [x0]	// _45, *_44
// problem106.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	cmp	w0, 0	// _45,
	ble	.L11		//,
// problem106.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	ldrsw	x0, [sp, 60]	// _46, i
	lsl	x0, x0, 2	// _47, _46,
	ldr	x1, [sp, 40]	// tmp196, arr
	add	x0, x1, x0	// _48, tmp196, _47
	ldr	w0, [x0]	// _49, *_48
// problem106.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	cmp	w0, 9	// _49,
	bgt	.L11		//,
// problem106.c:30:             (*out)[j++] = names[arr[i]];
	ldrsw	x0, [sp, 60]	// _50, i
	lsl	x0, x0, 2	// _51, _50,
	ldr	x1, [sp, 40]	// tmp197, arr
	add	x0, x1, x0	// _52, tmp197, _51
	ldr	w3, [x0]	// _53, *_52
// problem106.c:30:             (*out)[j++] = names[arr[i]];
	ldr	x0, [sp, 24]	// tmp198, out
	ldr	x1, [x0]	// _54, *out_82(D)
// problem106.c:30:             (*out)[j++] = names[arr[i]];
	ldr	w0, [sp, 64]	// j.0_55, j
	add	w2, w0, 1	// tmp199, j.0_55,
	str	w2, [sp, 64]	// tmp199, j
	sxtw	x0, w0	// _56, j.0_55
// problem106.c:30:             (*out)[j++] = names[arr[i]];
	lsl	x0, x0, 3	// _57, _56,
	add	x0, x1, x0	// _58, _54, _57
// problem106.c:30:             (*out)[j++] = names[arr[i]];
	sxtw	x1, w3	// tmp200, _53
	lsl	x1, x1, 3	// tmp201, tmp200,
	add	x2, sp, 72	// tmp202,,
	ldr	x1, [x2, x1]	// _59, names[_53]
// problem106.c:30:             (*out)[j++] = names[arr[i]];
	str	x1, [x0]	// _59, *_58
.L11:
// problem106.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	ldr	w0, [sp, 60]	// tmp204, i
	sub	w0, w0, #1	// tmp203, tmp204,
	str	w0, [sp, 60]	// tmp203, i
.L10:
// problem106.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	ldr	w0, [sp, 60]	// tmp205, i
	cmp	w0, 0	// tmp205,
	blt	.L15		//,
// problem106.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	ldr	x0, [sp, 16]	// tmp206, out_size
	ldr	w0, [x0]	// _60, *out_size_78(D)
// problem106.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	ldr	w1, [sp, 64]	// tmp207, j
	cmp	w1, w0	// tmp207, _60
	blt	.L13		//,
.L15:
// problem106.c:33: }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp209,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp208, tmp209,
	ldr	x2, [sp, 152]	// tmp211, D.5075
	ldr	x1, [x0]	// tmp212,
	subs	x2, x2, x1	// tmp211, tmp212
	mov	x1, 0	// tmp212
	beq	.L14		//,
	bl	__stack_chk_fail		//
.L14:
	ldp	x29, x30, [sp], 160	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"One"
	.align	3
.LC2:
	.string	"Two"
	.align	3
.LC3:
	.string	"Three"
	.align	3
.LC4:
	.string	"Four"
	.align	3
.LC5:
	.string	"Five"
	.align	3
.LC6:
	.string	"Six"
	.align	3
.LC7:
	.string	"Seven"
	.align	3
.LC8:
	.string	"Eight"
	.align	3
.LC9:
	.string	"Nine"
	.data
	.align	3
.LC17:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.xword	.LC7
	.xword	.LC8
	.xword	.LC9
	.text
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
	str	w1, [sp, 36]	// a_size, a_size
	str	x2, [sp, 24]	// b, b
	str	w3, [sp, 32]	// b_size, b_size
// problem106.c:43:     if (a_size != b_size) return 0;
	ldr	w1, [sp, 36]	// tmp103, a_size
	ldr	w0, [sp, 32]	// tmp104, b_size
	cmp	w1, w0	// tmp103, tmp104
	beq	.L17		//,
// problem106.c:43:     if (a_size != b_size) return 0;
	mov	w0, 0	// _11,
	b	.L18		//
.L17:
// problem106.c:44:     for (int i = 0; i < a_size; i++) {
	str	wzr, [sp, 60]	//, i
// problem106.c:44:     for (int i = 0; i < a_size; i++) {
	b	.L19		//
.L21:
// problem106.c:45:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldrsw	x0, [sp, 60]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 40]	// tmp105, a
	add	x0, x1, x0	// _3, tmp105, _2
// problem106.c:45:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldr	x2, [x0]	// _4, *_3
// problem106.c:45:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldrsw	x0, [sp, 60]	// _5, i
	lsl	x0, x0, 3	// _6, _5,
	ldr	x1, [sp, 24]	// tmp106, b
	add	x0, x1, x0	// _7, tmp106, _6
// problem106.c:45:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldr	x0, [x0]	// _8, *_7
	mov	x1, x0	//, _8
	mov	x0, x2	//, _4
	bl	strcmp		//
// problem106.c:45:         if (strcmp(a[i], b[i]) != 0) return 0;
	cmp	w0, 0	// _9,
	beq	.L20		//,
// problem106.c:45:         if (strcmp(a[i], b[i]) != 0) return 0;
	mov	w0, 0	// _11,
	b	.L18		//
.L20:
// problem106.c:44:     for (int i = 0; i < a_size; i++) {
	ldr	w0, [sp, 60]	// tmp108, i
	add	w0, w0, 1	// tmp107, tmp108,
	str	w0, [sp, 60]	// tmp107, i
.L19:
// problem106.c:44:     for (int i = 0; i < a_size; i++) {
	ldr	w1, [sp, 60]	// tmp109, i
	ldr	w0, [sp, 36]	// tmp110, a_size
	cmp	w1, w0	// tmp109, tmp110
	blt	.L21		//,
// problem106.c:47:     return 1;
	mov	w0, 1	// _11,
.L18:
// problem106.c:48: }
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
.LC19:
	.string	"problem106.c"
	.align	3
.LC20:
	.string	"issame(out, out_size, expected1, 8)"
	.align	3
.LC21:
	.string	"issame(out, out_size, NULL, 0)"
	.align	3
.LC22:
	.string	"issame(out, out_size, expected3, 1)"
	.align	3
.LC24:
	.string	"issame(out, out_size, expected4, 3)"
	.align	3
.LC26:
	.string	"issame(out, out_size, expected5, 3)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -256]!	//,,,
	.cfi_def_cfa_offset 256
	.cfi_offset 29, -256
	.cfi_offset 30, -248
	mov	x29, sp	//,
// problem106.c:50: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp115,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp114, tmp115,
	ldr	x1, [x0]	// tmp197,
	str	x1, [sp, 248]	// tmp197, D.5079
	mov	x1, 0	// tmp197
// problem106.c:54:     int test1[] = {2, 1, 1, 4, 5, 8, 2, 3};
	adrp	x0, .LC11	// tmp117,
	add	x1, x0, :lo12:.LC11	// tmp116, tmp117,
	add	x0, sp, 152	// tmp118,,
	ldp	q0, q1, [x1]	// tmp120, tmp121,
	stp	q0, q1, [x0]	// tmp120, tmp121, test1
// problem106.c:55:     char *expected1[] = {"Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"};
	adrp	x0, .LC18	// tmp123,
	add	x1, x0, :lo12:.LC18	// tmp122, tmp123,
	add	x0, sp, 184	// tmp124,,
	ldp	q0, q1, [x1]	// tmp126, tmp127,
	stp	q0, q1, [x0]	// tmp126, tmp127, expected1
	ldp	q0, q1, [x1, 32]	// tmp128, tmp129,
	stp	q0, q1, [x0, 32]	// tmp128, tmp129, expected1
// problem106.c:56:     func0(test1, 8, &out, &out_size);
	add	x2, sp, 28	// tmp130,,
	add	x1, sp, 32	// tmp131,,
	add	x0, sp, 152	// tmp132,,
	mov	x3, x2	//, tmp130
	mov	x2, x1	//, tmp131
	mov	w1, 8	//,
	bl	func0		//
// problem106.c:57:     assert(issame(out, out_size, expected1, 8));
	ldr	x0, [sp, 32]	// out.1_1, out
	ldr	w1, [sp, 28]	// out_size.2_2, out_size
	add	x2, sp, 184	// tmp133,,
	mov	w3, 8	//,
	bl	issame		//
	cmp	w0, 0	// _3,
	bne	.L23		//,
// problem106.c:57:     assert(issame(out, out_size, expected1, 8));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp134,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp134,
	mov	w2, 57	//,
	adrp	x0, .LC19	// tmp135,
	add	x1, x0, :lo12:.LC19	//, tmp135,
	adrp	x0, .LC20	// tmp136,
	add	x0, x0, :lo12:.LC20	//, tmp136,
	bl	__assert_fail		//
.L23:
// problem106.c:58:     free(out);
	ldr	x0, [sp, 32]	// out.3_4, out
	bl	free		//
// problem106.c:61:     func0(test2, 0, &out, &out_size);
	add	x2, sp, 28	// tmp137,,
	add	x1, sp, 32	// tmp138,,
	add	x0, sp, 40	// tmp139,,
	mov	x3, x2	//, tmp137
	mov	x2, x1	//, tmp138
	mov	w1, 0	//,
	bl	func0		//
// problem106.c:62:     assert(issame(out, out_size, NULL, 0));
	ldr	x0, [sp, 32]	// out.4_5, out
	ldr	w1, [sp, 28]	// out_size.5_6, out_size
	mov	w3, 0	//,
	mov	x2, 0	//,
	bl	issame		//
	cmp	w0, 0	// _7,
	bne	.L24		//,
// problem106.c:62:     assert(issame(out, out_size, NULL, 0));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp140,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp140,
	mov	w2, 62	//,
	adrp	x0, .LC19	// tmp141,
	add	x1, x0, :lo12:.LC19	//, tmp141,
	adrp	x0, .LC21	// tmp142,
	add	x0, x0, :lo12:.LC21	//, tmp142,
	bl	__assert_fail		//
.L24:
// problem106.c:63:     free(out);
	ldr	x0, [sp, 32]	// out.6_8, out
	bl	free		//
// problem106.c:65:     int test3[] = {1, -1, 55};
	adrp	x0, .LC13	// tmp144,
	add	x1, x0, :lo12:.LC13	// tmp143, tmp144,
	add	x0, sp, 56	// tmp145,,
	ldr	x2, [x1]	// tmp147,
	str	x2, [x0]	// tmp147, test3
	ldr	w1, [x1, 8]	// tmp148,
	str	w1, [x0, 8]	// tmp148, test3
// problem106.c:66:     char *expected3[] = {"One"};
	adrp	x0, .LC1	// tmp150,
	add	x0, x0, :lo12:.LC1	// tmp149, tmp150,
	str	x0, [sp, 48]	// tmp149, expected3[0]
// problem106.c:67:     func0(test3, 3, &out, &out_size);
	add	x2, sp, 28	// tmp151,,
	add	x1, sp, 32	// tmp152,,
	add	x0, sp, 56	// tmp153,,
	mov	x3, x2	//, tmp151
	mov	x2, x1	//, tmp152
	mov	w1, 3	//,
	bl	func0		//
// problem106.c:68:     assert(issame(out, out_size, expected3, 1));
	ldr	x0, [sp, 32]	// out.7_9, out
	ldr	w1, [sp, 28]	// out_size.8_10, out_size
	add	x2, sp, 48	// tmp154,,
	mov	w3, 1	//,
	bl	issame		//
	cmp	w0, 0	// _11,
	bne	.L25		//,
// problem106.c:68:     assert(issame(out, out_size, expected3, 1));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp155,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp155,
	mov	w2, 68	//,
	adrp	x0, .LC19	// tmp156,
	add	x1, x0, :lo12:.LC19	//, tmp156,
	adrp	x0, .LC22	// tmp157,
	add	x0, x0, :lo12:.LC22	//, tmp157,
	bl	__assert_fail		//
.L25:
// problem106.c:69:     free(out);
	ldr	x0, [sp, 32]	// out.9_12, out
	bl	free		//
// problem106.c:71:     int test4[] = {1, -1, 3, 2};
	mov	w0, 1	// tmp158,
	str	w0, [sp, 88]	// tmp158, test4[0]
	mov	w0, -1	// tmp159,
	str	w0, [sp, 92]	// tmp159, test4[1]
	mov	w0, 3	// tmp160,
	str	w0, [sp, 96]	// tmp160, test4[2]
	mov	w0, 2	// tmp161,
	str	w0, [sp, 100]	// tmp161, test4[3]
// problem106.c:72:     char *expected4[] = {"Three", "Two", "One"};
	adrp	x0, .LC23	// tmp163,
	add	x0, x0, :lo12:.LC23	// tmp162, tmp163,
	add	x2, sp, 104	// tmp164,,
	mov	x3, x0	// tmp165, tmp162
	ldp	x0, x1, [x3]	// tmp166,
	stp	x0, x1, [x2]	// tmp166, expected4
	ldr	x0, [x3, 16]	// tmp167,
	str	x0, [x2, 16]	// tmp167, expected4
// problem106.c:73:     func0(test4, 4, &out, &out_size);
	add	x2, sp, 28	// tmp168,,
	add	x1, sp, 32	// tmp169,,
	add	x0, sp, 88	// tmp170,,
	mov	x3, x2	//, tmp168
	mov	x2, x1	//, tmp169
	mov	w1, 4	//,
	bl	func0		//
// problem106.c:74:     assert(issame(out, out_size, expected4, 3));
	ldr	x0, [sp, 32]	// out.10_13, out
	ldr	w1, [sp, 28]	// out_size.11_14, out_size
	add	x2, sp, 104	// tmp171,,
	mov	w3, 3	//,
	bl	issame		//
	cmp	w0, 0	// _15,
	bne	.L26		//,
// problem106.c:74:     assert(issame(out, out_size, expected4, 3));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp172,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp172,
	mov	w2, 74	//,
	adrp	x0, .LC19	// tmp173,
	add	x1, x0, :lo12:.LC19	//, tmp173,
	adrp	x0, .LC24	// tmp174,
	add	x0, x0, :lo12:.LC24	//, tmp174,
	bl	__assert_fail		//
.L26:
// problem106.c:75:     free(out);
	ldr	x0, [sp, 32]	// out.12_16, out
	bl	free		//
// problem106.c:77:     int test5[] = {9, 4, 8};
	adrp	x0, .LC15	// tmp176,
	add	x1, x0, :lo12:.LC15	// tmp175, tmp176,
	add	x0, sp, 72	// tmp177,,
	ldr	x2, [x1]	// tmp179,
	str	x2, [x0]	// tmp179, test5
	ldr	w1, [x1, 8]	// tmp180,
	str	w1, [x0, 8]	// tmp180, test5
// problem106.c:78:     char *expected5[] = {"Nine", "Eight", "Four"};
	adrp	x0, .LC25	// tmp182,
	add	x0, x0, :lo12:.LC25	// tmp181, tmp182,
	add	x2, sp, 128	// tmp183,,
	mov	x3, x0	// tmp184, tmp181
	ldp	x0, x1, [x3]	// tmp185,
	stp	x0, x1, [x2]	// tmp185, expected5
	ldr	x0, [x3, 16]	// tmp186,
	str	x0, [x2, 16]	// tmp186, expected5
// problem106.c:79:     func0(test5, 3, &out, &out_size);
	add	x2, sp, 28	// tmp187,,
	add	x1, sp, 32	// tmp188,,
	add	x0, sp, 72	// tmp189,,
	mov	x3, x2	//, tmp187
	mov	x2, x1	//, tmp188
	mov	w1, 3	//,
	bl	func0		//
// problem106.c:80:     assert(issame(out, out_size, expected5, 3));
	ldr	x0, [sp, 32]	// out.13_17, out
	ldr	w1, [sp, 28]	// out_size.14_18, out_size
	add	x2, sp, 128	// tmp190,,
	mov	w3, 3	//,
	bl	issame		//
	cmp	w0, 0	// _19,
	bne	.L27		//,
// problem106.c:80:     assert(issame(out, out_size, expected5, 3));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp191,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp191,
	mov	w2, 80	//,
	adrp	x0, .LC19	// tmp192,
	add	x1, x0, :lo12:.LC19	//, tmp192,
	adrp	x0, .LC26	// tmp193,
	add	x0, x0, :lo12:.LC26	//, tmp193,
	bl	__assert_fail		//
.L27:
// problem106.c:81:     free(out);
	ldr	x0, [sp, 32]	// out.15_20, out
	bl	free		//
// problem106.c:83:     return 0;
	mov	w0, 0	// _54,
// problem106.c:84: }
	mov	w1, w0	// <retval>, _54
	adrp	x0, :got:__stack_chk_guard	// tmp196,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp195, tmp196,
	ldr	x3, [sp, 248]	// tmp198, D.5079
	ldr	x2, [x0]	// tmp199,
	subs	x3, x3, x2	// tmp198, tmp199
	mov	x2, 0	// tmp199
	beq	.L29		//,
	bl	__stack_chk_fail		//
.L29:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 256	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC11:
	.word	2
	.word	1
	.word	1
	.word	4
	.word	5
	.word	8
	.word	2
	.word	3
	.data
	.align	3
.LC18:
	.xword	.LC8
	.xword	.LC5
	.xword	.LC4
	.xword	.LC3
	.xword	.LC2
	.xword	.LC2
	.xword	.LC1
	.xword	.LC1
	.section	.rodata
	.align	3
.LC13:
	.word	1
	.word	-1
	.word	55
	.data
	.align	3
.LC23:
	.xword	.LC3
	.xword	.LC2
	.xword	.LC1
	.section	.rodata
	.align	3
.LC15:
	.word	9
	.word	4
	.word	8
	.data
	.align	3
.LC25:
	.xword	.LC9
	.xword	.LC8
	.xword	.LC4
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
