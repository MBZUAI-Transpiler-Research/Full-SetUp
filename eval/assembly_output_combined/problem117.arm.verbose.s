	.arch armv8-a
	.file	"problem117.c"
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
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]	// arr, arr
	str	w1, [sp, 4]	// size, size
// problem117.c:6:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 36]	//, i
// problem117.c:6:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L11:
// problem117.c:7:         for (int j = i + 1; j < size; j++) {
	ldr	w0, [sp, 36]	// tmp122, i
	add	w0, w0, 1	// tmp121, tmp122,
	str	w0, [sp, 40]	// tmp121, j
// problem117.c:7:         for (int j = i + 1; j < size; j++) {
	b	.L3		//
.L10:
// problem117.c:8:             count_ones = 0;
	str	wzr, [sp, 24]	//, count_ones
// problem117.c:9:             x = arr[i];
	ldrsw	x0, [sp, 36]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp123, arr
	add	x0, x1, x0	// _3, tmp123, _2
// problem117.c:9:             x = arr[i];
	ldr	w0, [x0]	// tmp124, *_3
	str	w0, [sp, 28]	// tmp124, x
// problem117.c:10:             y = arr[j];
	ldrsw	x0, [sp, 40]	// _4, j
	lsl	x0, x0, 2	// _5, _4,
	ldr	x1, [sp, 8]	// tmp125, arr
	add	x0, x1, x0	// _6, tmp125, _5
// problem117.c:10:             y = arr[j];
	ldr	w0, [x0]	// tmp126, *_6
	str	w0, [sp, 32]	// tmp126, y
// problem117.c:11:             while (x > 0) {
	b	.L4		//
.L5:
// problem117.c:12:                 count_ones += x & 1;
	ldr	w0, [sp, 28]	// tmp127, x
	and	w0, w0, 1	// _7, tmp127,
// problem117.c:12:                 count_ones += x & 1;
	ldr	w1, [sp, 24]	// tmp129, count_ones
	add	w0, w1, w0	// tmp128, tmp129, _7
	str	w0, [sp, 24]	// tmp128, count_ones
// problem117.c:13:                 x >>= 1;
	ldr	w0, [sp, 28]	// tmp131, x
	asr	w0, w0, 1	// tmp130, tmp131,
	str	w0, [sp, 28]	// tmp130, x
.L4:
// problem117.c:11:             while (x > 0) {
	ldr	w0, [sp, 28]	// tmp132, x
	cmp	w0, 0	// tmp132,
	bgt	.L5		//,
// problem117.c:15:             x = count_ones;
	ldr	w0, [sp, 24]	// tmp133, count_ones
	str	w0, [sp, 28]	// tmp133, x
// problem117.c:16:             count_ones = 0;
	str	wzr, [sp, 24]	//, count_ones
// problem117.c:17:             while (y > 0) {
	b	.L6		//
.L7:
// problem117.c:18:                 count_ones += y & 1;
	ldr	w0, [sp, 32]	// tmp134, y
	and	w0, w0, 1	// _8, tmp134,
// problem117.c:18:                 count_ones += y & 1;
	ldr	w1, [sp, 24]	// tmp136, count_ones
	add	w0, w1, w0	// tmp135, tmp136, _8
	str	w0, [sp, 24]	// tmp135, count_ones
// problem117.c:19:                 y >>= 1;
	ldr	w0, [sp, 32]	// tmp138, y
	asr	w0, w0, 1	// tmp137, tmp138,
	str	w0, [sp, 32]	// tmp137, y
.L6:
// problem117.c:17:             while (y > 0) {
	ldr	w0, [sp, 32]	// tmp139, y
	cmp	w0, 0	// tmp139,
	bgt	.L7		//,
// problem117.c:21:             y = count_ones;
	ldr	w0, [sp, 24]	// tmp140, count_ones
	str	w0, [sp, 32]	// tmp140, y
// problem117.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	ldr	w1, [sp, 32]	// tmp141, y
	ldr	w0, [sp, 28]	// tmp142, x
	cmp	w1, w0	// tmp141, tmp142
	blt	.L8		//,
// problem117.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	ldr	w1, [sp, 32]	// tmp143, y
	ldr	w0, [sp, 28]	// tmp144, x
	cmp	w1, w0	// tmp143, tmp144
	bne	.L9		//,
// problem117.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	ldrsw	x0, [sp, 40]	// _9, j
	lsl	x0, x0, 2	// _10, _9,
	ldr	x1, [sp, 8]	// tmp145, arr
	add	x0, x1, x0	// _11, tmp145, _10
	ldr	w1, [x0]	// _12, *_11
// problem117.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	ldrsw	x0, [sp, 36]	// _13, i
	lsl	x0, x0, 2	// _14, _13,
	ldr	x2, [sp, 8]	// tmp146, arr
	add	x0, x2, x0	// _15, tmp146, _14
	ldr	w0, [x0]	// _16, *_15
// problem117.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	cmp	w1, w0	// _12, _16
	bge	.L9		//,
.L8:
// problem117.c:23:                 temp = arr[i];
	ldrsw	x0, [sp, 36]	// _17, i
	lsl	x0, x0, 2	// _18, _17,
	ldr	x1, [sp, 8]	// tmp147, arr
	add	x0, x1, x0	// _19, tmp147, _18
// problem117.c:23:                 temp = arr[i];
	ldr	w0, [x0]	// tmp148, *_19
	str	w0, [sp, 44]	// tmp148, temp
// problem117.c:24:                 arr[i] = arr[j];
	ldrsw	x0, [sp, 40]	// _20, j
	lsl	x0, x0, 2	// _21, _20,
	ldr	x1, [sp, 8]	// tmp149, arr
	add	x1, x1, x0	// _22, tmp149, _21
// problem117.c:24:                 arr[i] = arr[j];
	ldrsw	x0, [sp, 36]	// _23, i
	lsl	x0, x0, 2	// _24, _23,
	ldr	x2, [sp, 8]	// tmp150, arr
	add	x0, x2, x0	// _25, tmp150, _24
// problem117.c:24:                 arr[i] = arr[j];
	ldr	w1, [x1]	// _26, *_22
// problem117.c:24:                 arr[i] = arr[j];
	str	w1, [x0]	// _26, *_25
// problem117.c:25:                 arr[j] = temp;
	ldrsw	x0, [sp, 40]	// _27, j
	lsl	x0, x0, 2	// _28, _27,
	ldr	x1, [sp, 8]	// tmp151, arr
	add	x0, x1, x0	// _29, tmp151, _28
// problem117.c:25:                 arr[j] = temp;
	ldr	w1, [sp, 44]	// tmp152, temp
	str	w1, [x0]	// tmp152, *_29
.L9:
// problem117.c:7:         for (int j = i + 1; j < size; j++) {
	ldr	w0, [sp, 40]	// tmp154, j
	add	w0, w0, 1	// tmp153, tmp154,
	str	w0, [sp, 40]	// tmp153, j
.L3:
// problem117.c:7:         for (int j = i + 1; j < size; j++) {
	ldr	w1, [sp, 40]	// tmp155, j
	ldr	w0, [sp, 4]	// tmp156, size
	cmp	w1, w0	// tmp155, tmp156
	blt	.L10		//,
// problem117.c:6:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 36]	// tmp158, i
	add	w0, w0, 1	// tmp157, tmp158,
	str	w0, [sp, 36]	// tmp157, i
.L2:
// problem117.c:6:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 36]	// tmp159, i
	ldr	w0, [sp, 4]	// tmp160, size
	cmp	w1, w0	// tmp159, tmp160
	blt	.L11		//,
// problem117.c:29: }
	nop	
	nop	
	add	sp, sp, 48	//,,
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
	str	w1, [sp, 20]	// size_a, size_a
	str	x2, [sp, 8]	// b, b
	str	w3, [sp, 16]	// size_b, size_b
// problem117.c:37:     if (size_a != size_b) return 0;
	ldr	w1, [sp, 20]	// tmp102, size_a
	ldr	w0, [sp, 16]	// tmp103, size_b
	cmp	w1, w0	// tmp102, tmp103
	beq	.L13		//,
// problem117.c:37:     if (size_a != size_b) return 0;
	mov	w0, 0	// _10,
	b	.L14		//
.L13:
// problem117.c:38:     for (int i = 0; i < size_a; i++) {
	str	wzr, [sp, 44]	//, i
// problem117.c:38:     for (int i = 0; i < size_a; i++) {
	b	.L15		//
.L17:
// problem117.c:39:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp104, a
	add	x0, x1, x0	// _3, tmp104, _2
	ldr	w1, [x0]	// _4, *_3
// problem117.c:39:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 8]	// tmp105, b
	add	x0, x2, x0	// _7, tmp105, _6
	ldr	w0, [x0]	// _8, *_7
// problem117.c:39:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L16		//,
// problem117.c:39:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
	b	.L14		//
.L16:
// problem117.c:38:     for (int i = 0; i < size_a; i++) {
	ldr	w0, [sp, 44]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 44]	// tmp106, i
.L15:
// problem117.c:38:     for (int i = 0; i < size_a; i++) {
	ldr	w1, [sp, 44]	// tmp108, i
	ldr	w0, [sp, 20]	// tmp109, size_a
	cmp	w1, w0	// tmp108, tmp109
	blt	.L17		//,
// problem117.c:41:     return 1;
	mov	w0, 1	// _10,
.L14:
// problem117.c:42: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC9:
	.string	"problem117.c"
	.align	3
.LC10:
	.string	"issame(test1, 5, expected1, 5)"
	.align	3
.LC11:
	.string	"issame(test3, 5, expected3, 5)"
	.align	3
.LC12:
	.string	"issame(test4, 11, expected4, 11)"
	.align	3
.LC13:
	.string	"issame(test5, 6, expected5, 6)"
	.align	3
.LC14:
	.string	"issame(test6, 5, expected6, 5)"
	.align	3
.LC15:
	.string	"All tests passed!"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -320]!	//,,,
	.cfi_def_cfa_offset 320
	.cfi_offset 29, -320
	.cfi_offset 30, -312
	mov	x29, sp	//,
// problem117.c:44: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp100,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp99, tmp100,
	ldr	x1, [x0]	// tmp197,
	str	x1, [sp, 312]	// tmp197, D.4869
	mov	x1, 0	// tmp197
// problem117.c:45:     int test1[] = {1, 5, 2, 3, 4};
	adrp	x0, .LC0	// tmp102,
	add	x0, x0, :lo12:.LC0	// tmp101, tmp102,
	add	x2, sp, 24	// tmp103,,
	mov	x3, x0	// tmp104, tmp101
	ldp	x0, x1, [x3]	// tmp105,
	stp	x0, x1, [x2]	// tmp105, test1
	ldr	w0, [x3, 16]	// tmp106,
	str	w0, [x2, 16]	// tmp106, test1
// problem117.c:46:     int expected1[] = {1, 2, 4, 3, 5};
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	// tmp107, tmp108,
	add	x2, sp, 48	// tmp109,,
	mov	x3, x0	// tmp110, tmp107
	ldp	x0, x1, [x3]	// tmp111,
	stp	x0, x1, [x2]	// tmp111, expected1
	ldr	w0, [x3, 16]	// tmp112,
	str	w0, [x2, 16]	// tmp112, expected1
// problem117.c:47:     func0(test1, 5);
	add	x0, sp, 24	// tmp113,,
	mov	w1, 5	//,
	bl	func0		//
// problem117.c:48:     assert(issame(test1, 5, expected1, 5));
	add	x1, sp, 48	// tmp114,,
	add	x0, sp, 24	// tmp115,,
	mov	w3, 5	//,
	mov	x2, x1	//, tmp114
	mov	w1, 5	//,
	bl	issame		//
	cmp	w0, 0	// _1,
	bne	.L19		//,
// problem117.c:48:     assert(issame(test1, 5, expected1, 5));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 48	//,
	adrp	x0, .LC9	// tmp117,
	add	x1, x0, :lo12:.LC9	//, tmp117,
	adrp	x0, .LC10	// tmp118,
	add	x0, x0, :lo12:.LC10	//, tmp118,
	bl	__assert_fail		//
.L19:
// problem117.c:50:     int test3[] = {1, 0, 2, 3, 4};
	adrp	x0, .LC2	// tmp120,
	add	x0, x0, :lo12:.LC2	// tmp119, tmp120,
	add	x2, sp, 72	// tmp121,,
	mov	x3, x0	// tmp122, tmp119
	ldp	x0, x1, [x3]	// tmp123,
	stp	x0, x1, [x2]	// tmp123, test3
	ldr	w0, [x3, 16]	// tmp124,
	str	w0, [x2, 16]	// tmp124, test3
// problem117.c:51:     int expected3[] = {0, 1, 2, 4, 3};
	adrp	x0, .LC3	// tmp126,
	add	x0, x0, :lo12:.LC3	// tmp125, tmp126,
	add	x2, sp, 96	// tmp127,,
	mov	x3, x0	// tmp128, tmp125
	ldp	x0, x1, [x3]	// tmp129,
	stp	x0, x1, [x2]	// tmp129, expected3
	ldr	w0, [x3, 16]	// tmp130,
	str	w0, [x2, 16]	// tmp130, expected3
// problem117.c:52:     func0(test3, 5);
	add	x0, sp, 72	// tmp131,,
	mov	w1, 5	//,
	bl	func0		//
// problem117.c:53:     assert(issame(test3, 5, expected3, 5));
	add	x1, sp, 96	// tmp132,,
	add	x0, sp, 72	// tmp133,,
	mov	w3, 5	//,
	mov	x2, x1	//, tmp132
	mov	w1, 5	//,
	bl	issame		//
	cmp	w0, 0	// _2,
	bne	.L20		//,
// problem117.c:53:     assert(issame(test3, 5, expected3, 5));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp134,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp134,
	mov	w2, 53	//,
	adrp	x0, .LC9	// tmp135,
	add	x1, x0, :lo12:.LC9	//, tmp135,
	adrp	x0, .LC11	// tmp136,
	add	x0, x0, :lo12:.LC11	//, tmp136,
	bl	__assert_fail		//
.L20:
// problem117.c:55:     int test4[] = {2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4};
	adrp	x0, .LC4	// tmp138,
	add	x1, x0, :lo12:.LC4	// tmp137, tmp138,
	add	x0, sp, 216	// tmp139,,
	ldp	q0, q1, [x1]	// tmp141, tmp142,
	stp	q0, q1, [x0]	// tmp141, tmp142, test4
	ldr	q0, [x1, 28]	// tmp143,
	str	q0, [x0, 28]	// tmp143, test4
// problem117.c:56:     int expected4[] = {2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77};
	adrp	x0, .LC5	// tmp145,
	add	x1, x0, :lo12:.LC5	// tmp144, tmp145,
	add	x0, sp, 264	// tmp146,,
	ldp	q0, q1, [x1]	// tmp148, tmp149,
	stp	q0, q1, [x0]	// tmp148, tmp149, expected4
	ldr	q0, [x1, 28]	// tmp150,
	str	q0, [x0, 28]	// tmp150, expected4
// problem117.c:57:     func0(test4, 11);
	add	x0, sp, 216	// tmp151,,
	mov	w1, 11	//,
	bl	func0		//
// problem117.c:58:     assert(issame(test4, 11, expected4, 11));
	add	x1, sp, 264	// tmp152,,
	add	x0, sp, 216	// tmp153,,
	mov	w3, 11	//,
	mov	x2, x1	//, tmp152
	mov	w1, 11	//,
	bl	issame		//
	cmp	w0, 0	// _3,
	bne	.L21		//,
// problem117.c:58:     assert(issame(test4, 11, expected4, 11));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp154,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp154,
	mov	w2, 58	//,
	adrp	x0, .LC9	// tmp155,
	add	x1, x0, :lo12:.LC9	//, tmp155,
	adrp	x0, .LC12	// tmp156,
	add	x0, x0, :lo12:.LC12	//, tmp156,
	bl	__assert_fail		//
.L21:
// problem117.c:60:     int test5[] = {3, 6, 44, 12, 32, 5};
	adrp	x0, .LC6	// tmp158,
	add	x0, x0, :lo12:.LC6	// tmp157, tmp158,
	add	x2, sp, 168	// tmp159,,
	mov	x3, x0	// tmp160, tmp157
	ldp	x0, x1, [x3]	// tmp161,
	stp	x0, x1, [x2]	// tmp161, test5
	ldr	x0, [x3, 16]	// tmp162,
	str	x0, [x2, 16]	// tmp162, test5
// problem117.c:61:     int expected5[] = {32, 3, 5, 6, 12, 44};
	adrp	x0, .LC7	// tmp164,
	add	x0, x0, :lo12:.LC7	// tmp163, tmp164,
	add	x2, sp, 192	// tmp165,,
	mov	x3, x0	// tmp166, tmp163
	ldp	x0, x1, [x3]	// tmp167,
	stp	x0, x1, [x2]	// tmp167, expected5
	ldr	x0, [x3, 16]	// tmp168,
	str	x0, [x2, 16]	// tmp168, expected5
// problem117.c:62:     func0(test5, 6);
	add	x0, sp, 168	// tmp169,,
	mov	w1, 6	//,
	bl	func0		//
// problem117.c:63:     assert(issame(test5, 6, expected5, 6));
	add	x1, sp, 192	// tmp170,,
	add	x0, sp, 168	// tmp171,,
	mov	w3, 6	//,
	mov	x2, x1	//, tmp170
	mov	w1, 6	//,
	bl	issame		//
	cmp	w0, 0	// _4,
	bne	.L22		//,
// problem117.c:63:     assert(issame(test5, 6, expected5, 6));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp172,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp172,
	mov	w2, 63	//,
	adrp	x0, .LC9	// tmp173,
	add	x1, x0, :lo12:.LC9	//, tmp173,
	adrp	x0, .LC13	// tmp174,
	add	x0, x0, :lo12:.LC13	//, tmp174,
	bl	__assert_fail		//
.L22:
// problem117.c:65:     int test6[] = {2, 4, 8, 16, 32};
	adrp	x0, .LC8	// tmp176,
	add	x0, x0, :lo12:.LC8	// tmp175, tmp176,
	add	x2, sp, 120	// tmp177,,
	mov	x3, x0	// tmp178, tmp175
	ldp	x0, x1, [x3]	// tmp179,
	stp	x0, x1, [x2]	// tmp179, test6
	ldr	w0, [x3, 16]	// tmp180,
	str	w0, [x2, 16]	// tmp180, test6
// problem117.c:66:     int expected6[] = {2, 4, 8, 16, 32};
	adrp	x0, .LC8	// tmp182,
	add	x0, x0, :lo12:.LC8	// tmp181, tmp182,
	add	x2, sp, 144	// tmp183,,
	mov	x3, x0	// tmp184, tmp181
	ldp	x0, x1, [x3]	// tmp185,
	stp	x0, x1, [x2]	// tmp185, expected6
	ldr	w0, [x3, 16]	// tmp186,
	str	w0, [x2, 16]	// tmp186, expected6
// problem117.c:67:     func0(test6, 5);
	add	x0, sp, 120	// tmp187,,
	mov	w1, 5	//,
	bl	func0		//
// problem117.c:68:     assert(issame(test6, 5, expected6, 5));
	add	x1, sp, 144	// tmp188,,
	add	x0, sp, 120	// tmp189,,
	mov	w3, 5	//,
	mov	x2, x1	//, tmp188
	mov	w1, 5	//,
	bl	issame		//
	cmp	w0, 0	// _5,
	bne	.L23		//,
// problem117.c:68:     assert(issame(test6, 5, expected6, 5));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp190,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp190,
	mov	w2, 68	//,
	adrp	x0, .LC9	// tmp191,
	add	x1, x0, :lo12:.LC9	//, tmp191,
	adrp	x0, .LC14	// tmp192,
	add	x0, x0, :lo12:.LC14	//, tmp192,
	bl	__assert_fail		//
.L23:
// problem117.c:70:     printf("All tests passed!\n");
	adrp	x0, .LC15	// tmp193,
	add	x0, x0, :lo12:.LC15	//, tmp193,
	bl	puts		//
// problem117.c:71:     return 0;
	mov	w0, 0	// _33,
// problem117.c:72: }
	mov	w1, w0	// <retval>, _33
	adrp	x0, :got:__stack_chk_guard	// tmp196,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp195, tmp196,
	ldr	x3, [sp, 312]	// tmp198, D.4869
	ldr	x2, [x0]	// tmp199,
	subs	x3, x3, x2	// tmp198, tmp199
	mov	x2, 0	// tmp199
	beq	.L25		//,
	bl	__stack_chk_fail		//
.L25:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 320	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1
	.word	5
	.word	2
	.word	3
	.word	4
	.align	3
.LC1:
	.word	1
	.word	2
	.word	4
	.word	3
	.word	5
	.align	3
.LC2:
	.word	1
	.word	0
	.word	2
	.word	3
	.word	4
	.align	3
.LC3:
	.word	0
	.word	1
	.word	2
	.word	4
	.word	3
	.align	3
.LC4:
	.word	2
	.word	5
	.word	77
	.word	4
	.word	5
	.word	3
	.word	5
	.word	7
	.word	2
	.word	3
	.word	4
	.align	3
.LC5:
	.word	2
	.word	2
	.word	4
	.word	4
	.word	3
	.word	3
	.word	5
	.word	5
	.word	5
	.word	7
	.word	77
	.align	3
.LC6:
	.word	3
	.word	6
	.word	44
	.word	12
	.word	32
	.word	5
	.align	3
.LC7:
	.word	32
	.word	3
	.word	5
	.word	6
	.word	12
	.word	44
	.align	3
.LC8:
	.word	2
	.word	4
	.word	8
	.word	16
	.word	32
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
