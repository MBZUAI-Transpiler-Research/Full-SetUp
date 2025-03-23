	.arch armv8-a
	.file	"problem38.c"
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
	str	x0, [sp, 40]	// l, l
	str	w1, [sp, 36]	// size, size
	str	x2, [sp, 24]	// out, out
// problem38.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	ldr	w0, [sp, 36]	// tmp148, size
	lsr	w1, w0, 31	// tmp149, tmp148,
	add	w0, w1, w0	// tmp150, tmp149, tmp148
	asr	w0, w0, 1	// tmp151, tmp150,
// problem38.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	add	w0, w0, 1	// _2, _1,
	sxtw	x0, w0	// _3, _2
// problem38.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	lsl	x0, x0, 2	// _4, _3,
	bl	malloc		//
	str	x0, [sp, 72]	// tmp152, even
// problem38.c:7:     int i, j, even_count = 0;
	str	wzr, [sp, 64]	//, even_count
// problem38.c:9:     for (i = 0; i < size; i += 2) {
	str	wzr, [sp, 56]	//, i
// problem38.c:9:     for (i = 0; i < size; i += 2) {
	b	.L2		//
.L3:
// problem38.c:10:         even[even_count++] = l[i];
	ldrsw	x0, [sp, 56]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 40]	// tmp153, l
	add	x1, x1, x0	// _7, tmp153, _6
// problem38.c:10:         even[even_count++] = l[i];
	ldr	w0, [sp, 64]	// even_count.0_8, even_count
	add	w2, w0, 1	// tmp154, even_count.0_8,
	str	w2, [sp, 64]	// tmp154, even_count
	sxtw	x0, w0	// _9, even_count.0_8
// problem38.c:10:         even[even_count++] = l[i];
	lsl	x0, x0, 2	// _10, _9,
	ldr	x2, [sp, 72]	// tmp155, even
	add	x0, x2, x0	// _11, tmp155, _10
// problem38.c:10:         even[even_count++] = l[i];
	ldr	s0, [x1]	// _12, *_7
// problem38.c:10:         even[even_count++] = l[i];
	str	s0, [x0]	// _12, *_11
// problem38.c:9:     for (i = 0; i < size; i += 2) {
	ldr	w0, [sp, 56]	// tmp157, i
	add	w0, w0, 2	// tmp156, tmp157,
	str	w0, [sp, 56]	// tmp156, i
.L2:
// problem38.c:9:     for (i = 0; i < size; i += 2) {
	ldr	w1, [sp, 56]	// tmp158, i
	ldr	w0, [sp, 36]	// tmp159, size
	cmp	w1, w0	// tmp158, tmp159
	blt	.L3		//,
// problem38.c:13:     for (i = 0; i < even_count - 1; i++) {
	str	wzr, [sp, 56]	//, i
// problem38.c:13:     for (i = 0; i < even_count - 1; i++) {
	b	.L4		//
.L9:
// problem38.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	str	wzr, [sp, 60]	//, j
// problem38.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	b	.L5		//
.L8:
// problem38.c:15:             if (even[j] > even[j + 1]) {
	ldrsw	x0, [sp, 60]	// _13, j
	lsl	x0, x0, 2	// _14, _13,
	ldr	x1, [sp, 72]	// tmp160, even
	add	x0, x1, x0	// _15, tmp160, _14
	ldr	s1, [x0]	// _16, *_15
// problem38.c:15:             if (even[j] > even[j + 1]) {
	ldrsw	x0, [sp, 60]	// _17, j
	add	x0, x0, 1	// _18, _17,
	lsl	x0, x0, 2	// _19, _18,
	ldr	x1, [sp, 72]	// tmp161, even
	add	x0, x1, x0	// _20, tmp161, _19
	ldr	s0, [x0]	// _21, *_20
// problem38.c:15:             if (even[j] > even[j + 1]) {
	fcmpe	s1, s0	// _16, _21
	bgt	.L14		//,
	b	.L6		//
.L14:
// problem38.c:16:                 float temp = even[j];
	ldrsw	x0, [sp, 60]	// _22, j
	lsl	x0, x0, 2	// _23, _22,
	ldr	x1, [sp, 72]	// tmp162, even
	add	x0, x1, x0	// _24, tmp162, _23
// problem38.c:16:                 float temp = even[j];
	ldr	s0, [x0]	// tmp163, *_24
	str	s0, [sp, 68]	// tmp163, temp
// problem38.c:17:                 even[j] = even[j + 1];
	ldrsw	x0, [sp, 60]	// _25, j
	add	x0, x0, 1	// _26, _25,
	lsl	x0, x0, 2	// _27, _26,
	ldr	x1, [sp, 72]	// tmp164, even
	add	x1, x1, x0	// _28, tmp164, _27
// problem38.c:17:                 even[j] = even[j + 1];
	ldrsw	x0, [sp, 60]	// _29, j
	lsl	x0, x0, 2	// _30, _29,
	ldr	x2, [sp, 72]	// tmp165, even
	add	x0, x2, x0	// _31, tmp165, _30
// problem38.c:17:                 even[j] = even[j + 1];
	ldr	s0, [x1]	// _32, *_28
// problem38.c:17:                 even[j] = even[j + 1];
	str	s0, [x0]	// _32, *_31
// problem38.c:18:                 even[j + 1] = temp;
	ldrsw	x0, [sp, 60]	// _33, j
	add	x0, x0, 1	// _34, _33,
	lsl	x0, x0, 2	// _35, _34,
	ldr	x1, [sp, 72]	// tmp166, even
	add	x0, x1, x0	// _36, tmp166, _35
// problem38.c:18:                 even[j + 1] = temp;
	ldr	s0, [sp, 68]	// tmp167, temp
	str	s0, [x0]	// tmp167, *_36
.L6:
// problem38.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	ldr	w0, [sp, 60]	// tmp169, j
	add	w0, w0, 1	// tmp168, tmp169,
	str	w0, [sp, 60]	// tmp168, j
.L5:
// problem38.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	ldr	w1, [sp, 64]	// tmp170, even_count
	ldr	w0, [sp, 56]	// tmp171, i
	sub	w0, w1, w0	// _37, tmp170, tmp171
// problem38.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	sub	w0, w0, #1	// _38, _37,
// problem38.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	ldr	w1, [sp, 60]	// tmp172, j
	cmp	w1, w0	// tmp172, _38
	blt	.L8		//,
// problem38.c:13:     for (i = 0; i < even_count - 1; i++) {
	ldr	w0, [sp, 56]	// tmp174, i
	add	w0, w0, 1	// tmp173, tmp174,
	str	w0, [sp, 56]	// tmp173, i
.L4:
// problem38.c:13:     for (i = 0; i < even_count - 1; i++) {
	ldr	w0, [sp, 64]	// tmp175, even_count
	sub	w0, w0, #1	// _39, tmp175,
// problem38.c:13:     for (i = 0; i < even_count - 1; i++) {
	ldr	w1, [sp, 56]	// tmp176, i
	cmp	w1, w0	// tmp176, _39
	blt	.L9		//,
// problem38.c:24:     for (i = 0; i < size; i++) {
	str	wzr, [sp, 56]	//, i
// problem38.c:24:     for (i = 0; i < size; i++) {
	b	.L10		//
.L13:
// problem38.c:25:         if (i % 2 == 0) {
	ldr	w0, [sp, 56]	// i.1_40, i
	and	w0, w0, 1	// _41, i.1_40,
// problem38.c:25:         if (i % 2 == 0) {
	cmp	w0, 0	// _41,
	bne	.L11		//,
// problem38.c:26:             out[i] = even[i / 2];
	ldr	w0, [sp, 56]	// tmp177, i
	lsr	w1, w0, 31	// tmp178, tmp177,
	add	w0, w1, w0	// tmp179, tmp178, tmp177
	asr	w0, w0, 1	// tmp180, tmp179,
	sxtw	x0, w0	// _43, _42
// problem38.c:26:             out[i] = even[i / 2];
	lsl	x0, x0, 2	// _44, _43,
	ldr	x1, [sp, 72]	// tmp181, even
	add	x1, x1, x0	// _45, tmp181, _44
// problem38.c:26:             out[i] = even[i / 2];
	ldrsw	x0, [sp, 56]	// _46, i
	lsl	x0, x0, 2	// _47, _46,
	ldr	x2, [sp, 24]	// tmp182, out
	add	x0, x2, x0	// _48, tmp182, _47
// problem38.c:26:             out[i] = even[i / 2];
	ldr	s0, [x1]	// _49, *_45
// problem38.c:26:             out[i] = even[i / 2];
	str	s0, [x0]	// _49, *_48
	b	.L12		//
.L11:
// problem38.c:28:             out[i] = l[i];
	ldrsw	x0, [sp, 56]	// _50, i
	lsl	x0, x0, 2	// _51, _50,
	ldr	x1, [sp, 40]	// tmp183, l
	add	x1, x1, x0	// _52, tmp183, _51
// problem38.c:28:             out[i] = l[i];
	ldrsw	x0, [sp, 56]	// _53, i
	lsl	x0, x0, 2	// _54, _53,
	ldr	x2, [sp, 24]	// tmp184, out
	add	x0, x2, x0	// _55, tmp184, _54
// problem38.c:28:             out[i] = l[i];
	ldr	s0, [x1]	// _56, *_52
// problem38.c:28:             out[i] = l[i];
	str	s0, [x0]	// _56, *_55
.L12:
// problem38.c:24:     for (i = 0; i < size; i++) {
	ldr	w0, [sp, 56]	// tmp186, i
	add	w0, w0, 1	// tmp185, tmp186,
	str	w0, [sp, 56]	// tmp185, i
.L10:
// problem38.c:24:     for (i = 0; i < size; i++) {
	ldr	w1, [sp, 56]	// tmp187, i
	ldr	w0, [sp, 36]	// tmp188, size
	cmp	w1, w0	// tmp187, tmp188
	blt	.L13		//,
// problem38.c:32:     free(even);
	ldr	x0, [sp, 72]	//, even
	bl	free		//
// problem38.c:33: }
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
	str	x1, [sp, 16]	// b, b
	str	w2, [sp, 12]	// size, size
// problem38.c:42:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 44]	//, i
// problem38.c:42:     for (int i = 0; i < size; i++) {
	b	.L16		//
.L20:
// problem38.c:43:         if (fabs(a[i] - b[i]) > 1e-4) {
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp105, a
	add	x0, x1, x0	// _3, tmp105, _2
	ldr	s1, [x0]	// _4, *_3
// problem38.c:43:         if (fabs(a[i] - b[i]) > 1e-4) {
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 16]	// tmp106, b
	add	x0, x1, x0	// _7, tmp106, _6
	ldr	s0, [x0]	// _8, *_7
// problem38.c:43:         if (fabs(a[i] - b[i]) > 1e-4) {
	fsub	s0, s1, s0	// _9, _4, _8
// problem38.c:43:         if (fabs(a[i] - b[i]) > 1e-4) {
	fabs	s0, s0	// _10, _9
	fcvt	d0, s0	// _11, _10
// problem38.c:43:         if (fabs(a[i] - b[i]) > 1e-4) {
	adrp	x0, .LC5	// tmp114,
	ldr	d1, [x0, #:lo12:.LC5]	// tmp107,
	fcmpe	d0, d1	// _11, tmp107
	bgt	.L21		//,
	b	.L22		//
.L21:
// problem38.c:44:             return 0;
	mov	w0, 0	// _13,
	b	.L19		//
.L22:
// problem38.c:42:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 44]	// tmp109, i
	add	w0, w0, 1	// tmp108, tmp109,
	str	w0, [sp, 44]	// tmp108, i
.L16:
// problem38.c:42:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 44]	// tmp110, i
	ldr	w0, [sp, 12]	// tmp111, size
	cmp	w1, w0	// tmp110, tmp111
	blt	.L20		//,
// problem38.c:47:     return 1;
	mov	w0, 1	// _13,
.L19:
// problem38.c:48: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC6:
	.string	"problem38.c"
	.align	3
.LC7:
	.string	"issame(result1, expected1, 3)"
	.align	3
.LC8:
	.string	"issame(result2, expected2, 11)"
	.align	3
.LC9:
	.string	"issame(result3, expected3, 10)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #336	//,,
	.cfi_def_cfa_offset 336
	stp	x29, x30, [sp, 320]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 320	//,,
// problem38.c:50: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp97,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp97,
	ldr	x1, [x0]	// tmp161,
	str	x1, [sp, 312]	// tmp161, D.6646
	mov	x1, 0	// tmp161
// problem38.c:51:     float test1[] = {1, 2, 3};
	adrp	x0, .LC0	// tmp99,
	add	x1, x0, :lo12:.LC0	// tmp98, tmp99,
	mov	x0, sp	// tmp100,
	ldr	x2, [x1]	// tmp102,
	str	x2, [x0]	// tmp102, test1
	ldr	w1, [x1, 8]	// tmp103,
	str	w1, [x0, 8]	// tmp103, test1
// problem38.c:53:     func0(test1, 3, result1);
	add	x1, sp, 16	// tmp104,,
	mov	x0, sp	// tmp105,
	mov	x2, x1	//, tmp104
	mov	w1, 3	//,
	bl	func0		//
// problem38.c:54:     float expected1[] = {1, 2, 3};
	adrp	x0, .LC0	// tmp107,
	add	x1, x0, :lo12:.LC0	// tmp106, tmp107,
	add	x0, sp, 32	// tmp108,,
	ldr	x2, [x1]	// tmp110,
	str	x2, [x0]	// tmp110, expected1
	ldr	w1, [x1, 8]	// tmp111,
	str	w1, [x0, 8]	// tmp111, expected1
// problem38.c:55:     assert(issame(result1, expected1, 3));
	add	x1, sp, 32	// tmp112,,
	add	x0, sp, 16	// tmp113,,
	mov	w2, 3	//,
	bl	issame		//
// problem38.c:55:     assert(issame(result1, expected1, 3));
	cmp	w0, 0	// _1,
	bne	.L24		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp114,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp114,
	mov	w2, 55	//,
	adrp	x0, .LC6	// tmp115,
	add	x1, x0, :lo12:.LC6	//, tmp115,
	adrp	x0, .LC7	// tmp116,
	add	x0, x0, :lo12:.LC7	//, tmp116,
	bl	__assert_fail		//
.L24:
// problem38.c:57:     float test2[] = {5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10};
	adrp	x0, .LC1	// tmp118,
	add	x1, x0, :lo12:.LC1	// tmp117, tmp118,
	add	x0, sp, 168	// tmp119,,
	ldp	q0, q1, [x1]	// tmp121, tmp122,
	stp	q0, q1, [x0]	// tmp121, tmp122, test2
	ldr	q0, [x1, 28]	// tmp123,
	str	q0, [x0, 28]	// tmp123, test2
// problem38.c:59:     func0(test2, 11, result2);
	add	x1, sp, 216	// tmp124,,
	add	x0, sp, 168	// tmp125,,
	mov	x2, x1	//, tmp124
	mov	w1, 11	//,
	bl	func0		//
// problem38.c:60:     float expected2[] = {-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123};
	adrp	x0, .LC2	// tmp127,
	add	x1, x0, :lo12:.LC2	// tmp126, tmp127,
	add	x0, sp, 264	// tmp128,,
	ldp	q0, q1, [x1]	// tmp130, tmp131,
	stp	q0, q1, [x0]	// tmp130, tmp131, expected2
	ldr	q0, [x1, 28]	// tmp132,
	str	q0, [x0, 28]	// tmp132, expected2
// problem38.c:61:     assert(issame(result2, expected2, 11));
	add	x1, sp, 264	// tmp133,,
	add	x0, sp, 216	// tmp134,,
	mov	w2, 11	//,
	bl	issame		//
// problem38.c:61:     assert(issame(result2, expected2, 11));
	cmp	w0, 0	// _2,
	bne	.L25		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp135,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp135,
	mov	w2, 61	//,
	adrp	x0, .LC6	// tmp136,
	add	x1, x0, :lo12:.LC6	//, tmp136,
	adrp	x0, .LC8	// tmp137,
	add	x0, x0, :lo12:.LC8	//, tmp137,
	bl	__assert_fail		//
.L25:
// problem38.c:63:     float test3[] = {5, 8, -12, 4, 23, 2, 3, 11, 12, -10};
	adrp	x0, .LC3	// tmp139,
	add	x1, x0, :lo12:.LC3	// tmp138, tmp139,
	add	x0, sp, 48	// tmp140,,
	ldp	q0, q1, [x1]	// tmp142, tmp143,
	stp	q0, q1, [x0]	// tmp142, tmp143, test3
	ldr	x1, [x1, 32]	// tmp144,
	str	x1, [x0, 32]	// tmp144, test3
// problem38.c:65:     func0(test3, 10, result3);
	add	x1, sp, 88	// tmp145,,
	add	x0, sp, 48	// tmp146,,
	mov	x2, x1	//, tmp145
	mov	w1, 10	//,
	bl	func0		//
// problem38.c:66:     float expected3[] = {-12, 8, 3, 4, 5, 2, 12, 11, 23, -10};
	adrp	x0, .LC4	// tmp148,
	add	x1, x0, :lo12:.LC4	// tmp147, tmp148,
	add	x0, sp, 128	// tmp149,,
	ldp	q0, q1, [x1]	// tmp151, tmp152,
	stp	q0, q1, [x0]	// tmp151, tmp152, expected3
	ldr	x1, [x1, 32]	// tmp153,
	str	x1, [x0, 32]	// tmp153, expected3
// problem38.c:67:     assert(issame(result3, expected3, 10));
	add	x1, sp, 128	// tmp154,,
	add	x0, sp, 88	// tmp155,,
	mov	w2, 10	//,
	bl	issame		//
// problem38.c:67:     assert(issame(result3, expected3, 10));
	cmp	w0, 0	// _3,
	bne	.L26		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp156,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp156,
	mov	w2, 67	//,
	adrp	x0, .LC6	// tmp157,
	add	x1, x0, :lo12:.LC6	//, tmp157,
	adrp	x0, .LC9	// tmp158,
	add	x0, x0, :lo12:.LC9	//, tmp158,
	bl	__assert_fail		//
.L26:
// problem38.c:69:     return 0;
	mov	w0, 0	// _20,
// problem38.c:70: }
	mov	w1, w0	// <retval>, _20
	adrp	x0, :got:__stack_chk_guard	// tmp160,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp160,
	ldr	x3, [sp, 312]	// tmp162, D.6646
	ldr	x2, [x0]	// tmp163,
	subs	x3, x3, x2	// tmp162, tmp163
	mov	x2, 0	// tmp163
	beq	.L28		//,
	bl	__stack_chk_fail		//
.L28:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 320]	//,,
	add	sp, sp, 336	//,,
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
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.align	3
.LC1:
	.word	1084227584
	.word	1077936128
	.word	-1063256064
	.word	1073741824
	.word	-1069547520
	.word	1077936128
	.word	1091567616
	.word	0
	.word	1123418112
	.word	1065353216
	.word	-1054867456
	.align	3
.LC2:
	.word	-1054867456
	.word	1077936128
	.word	-1063256064
	.word	1073741824
	.word	-1069547520
	.word	1077936128
	.word	1084227584
	.word	0
	.word	1091567616
	.word	1065353216
	.word	1123418112
	.align	3
.LC3:
	.word	1084227584
	.word	1090519040
	.word	-1052770304
	.word	1082130432
	.word	1102577664
	.word	1073741824
	.word	1077936128
	.word	1093664768
	.word	1094713344
	.word	-1054867456
	.align	3
.LC4:
	.word	-1052770304
	.word	1090519040
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.word	1073741824
	.word	1094713344
	.word	1093664768
	.word	1102577664
	.word	-1054867456
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC5:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
