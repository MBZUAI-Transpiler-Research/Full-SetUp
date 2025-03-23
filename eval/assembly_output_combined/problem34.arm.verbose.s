	.arch armv8-a
	.file	"problem34.c"
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
	str	x0, [sp, 40]	// l, l
	str	w1, [sp, 36]	// size, size
	str	x2, [sp, 24]	// out, out
// problem34.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	ldr	w0, [sp, 36]	// tmp143, size
	mov	w1, 21846	// tmp145,
	movk	w1, 0x5555, lsl 16	// tmp145,,
	smull	x1, w0, w1	// tmp144, tmp143, tmp145
	lsr	x1, x1, 32	// tmp146, tmp144,
	asr	w0, w0, 31	// tmp147, tmp143,
	sub	w0, w1, w0	// _1, tmp146, tmp147
// problem34.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	add	w0, w0, 1	// _2, _1,
	sxtw	x0, w0	// _3, _2
// problem34.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	lsl	x0, x0, 2	// _4, _3,
	bl	malloc		//
	str	x0, [sp, 72]	// tmp148, third
// problem34.c:6:     int i, k = 0, third_size = 0;
	str	wzr, [sp, 56]	//, k
// problem34.c:6:     int i, k = 0, third_size = 0;
	str	wzr, [sp, 60]	//, third_size
// problem34.c:8:     for (i = 0; i * 3 < size; i++) {
	str	wzr, [sp, 52]	//, i
// problem34.c:8:     for (i = 0; i * 3 < size; i++) {
	b	.L2		//
.L3:
// problem34.c:9:         third[i] = l[i * 3];
	ldr	w1, [sp, 52]	// tmp149, i
	mov	w0, w1	// tmp150, tmp149
	lsl	w0, w0, 1	// tmp151, tmp150,
	add	w0, w0, w1	// _5, tmp150, tmp149
	sxtw	x0, w0	// _6, _5
// problem34.c:9:         third[i] = l[i * 3];
	lsl	x0, x0, 2	// _7, _6,
	ldr	x1, [sp, 40]	// tmp152, l
	add	x1, x1, x0	// _8, tmp152, _7
// problem34.c:9:         third[i] = l[i * 3];
	ldrsw	x0, [sp, 52]	// _9, i
	lsl	x0, x0, 2	// _10, _9,
	ldr	x2, [sp, 72]	// tmp153, third
	add	x0, x2, x0	// _11, tmp153, _10
// problem34.c:9:         third[i] = l[i * 3];
	ldr	w1, [x1]	// _12, *_8
// problem34.c:9:         third[i] = l[i * 3];
	str	w1, [x0]	// _12, *_11
// problem34.c:10:         third_size++;
	ldr	w0, [sp, 60]	// tmp155, third_size
	add	w0, w0, 1	// tmp154, tmp155,
	str	w0, [sp, 60]	// tmp154, third_size
// problem34.c:8:     for (i = 0; i * 3 < size; i++) {
	ldr	w0, [sp, 52]	// tmp157, i
	add	w0, w0, 1	// tmp156, tmp157,
	str	w0, [sp, 52]	// tmp156, i
.L2:
// problem34.c:8:     for (i = 0; i * 3 < size; i++) {
	ldr	w1, [sp, 52]	// tmp158, i
	mov	w0, w1	// tmp159, tmp158
	lsl	w0, w0, 1	// tmp160, tmp159,
	add	w0, w0, w1	// _13, tmp159, tmp158
// problem34.c:8:     for (i = 0; i * 3 < size; i++) {
	ldr	w1, [sp, 36]	// tmp161, size
	cmp	w1, w0	// tmp161, _13
	bgt	.L3		//,
// problem34.c:13:     for (i = 0; i < third_size - 1; i++) {
	str	wzr, [sp, 52]	//, i
// problem34.c:13:     for (i = 0; i < third_size - 1; i++) {
	b	.L4		//
.L9:
// problem34.c:14:         int min_idx = i;
	ldr	w0, [sp, 52]	// tmp162, i
	str	w0, [sp, 64]	// tmp162, min_idx
// problem34.c:15:         for (k = i + 1; k < third_size; k++) {
	ldr	w0, [sp, 52]	// tmp164, i
	add	w0, w0, 1	// tmp163, tmp164,
	str	w0, [sp, 56]	// tmp163, k
// problem34.c:15:         for (k = i + 1; k < third_size; k++) {
	b	.L5		//
.L7:
// problem34.c:16:             if (third[k] < third[min_idx])
	ldrsw	x0, [sp, 56]	// _14, k
	lsl	x0, x0, 2	// _15, _14,
	ldr	x1, [sp, 72]	// tmp165, third
	add	x0, x1, x0	// _16, tmp165, _15
	ldr	w1, [x0]	// _17, *_16
// problem34.c:16:             if (third[k] < third[min_idx])
	ldrsw	x0, [sp, 64]	// _18, min_idx
	lsl	x0, x0, 2	// _19, _18,
	ldr	x2, [sp, 72]	// tmp166, third
	add	x0, x2, x0	// _20, tmp166, _19
	ldr	w0, [x0]	// _21, *_20
// problem34.c:16:             if (third[k] < third[min_idx])
	cmp	w1, w0	// _17, _21
	bge	.L6		//,
// problem34.c:17:                 min_idx = k;
	ldr	w0, [sp, 56]	// tmp167, k
	str	w0, [sp, 64]	// tmp167, min_idx
.L6:
// problem34.c:15:         for (k = i + 1; k < third_size; k++) {
	ldr	w0, [sp, 56]	// tmp169, k
	add	w0, w0, 1	// tmp168, tmp169,
	str	w0, [sp, 56]	// tmp168, k
.L5:
// problem34.c:15:         for (k = i + 1; k < third_size; k++) {
	ldr	w1, [sp, 56]	// tmp170, k
	ldr	w0, [sp, 60]	// tmp171, third_size
	cmp	w1, w0	// tmp170, tmp171
	blt	.L7		//,
// problem34.c:19:         if (min_idx != i) {
	ldr	w1, [sp, 64]	// tmp172, min_idx
	ldr	w0, [sp, 52]	// tmp173, i
	cmp	w1, w0	// tmp172, tmp173
	beq	.L8		//,
// problem34.c:20:             int temp = third[i];
	ldrsw	x0, [sp, 52]	// _22, i
	lsl	x0, x0, 2	// _23, _22,
	ldr	x1, [sp, 72]	// tmp174, third
	add	x0, x1, x0	// _24, tmp174, _23
// problem34.c:20:             int temp = third[i];
	ldr	w0, [x0]	// tmp175, *_24
	str	w0, [sp, 68]	// tmp175, temp
// problem34.c:21:             third[i] = third[min_idx];
	ldrsw	x0, [sp, 64]	// _25, min_idx
	lsl	x0, x0, 2	// _26, _25,
	ldr	x1, [sp, 72]	// tmp176, third
	add	x1, x1, x0	// _27, tmp176, _26
// problem34.c:21:             third[i] = third[min_idx];
	ldrsw	x0, [sp, 52]	// _28, i
	lsl	x0, x0, 2	// _29, _28,
	ldr	x2, [sp, 72]	// tmp177, third
	add	x0, x2, x0	// _30, tmp177, _29
// problem34.c:21:             third[i] = third[min_idx];
	ldr	w1, [x1]	// _31, *_27
// problem34.c:21:             third[i] = third[min_idx];
	str	w1, [x0]	// _31, *_30
// problem34.c:22:             third[min_idx] = temp;
	ldrsw	x0, [sp, 64]	// _32, min_idx
	lsl	x0, x0, 2	// _33, _32,
	ldr	x1, [sp, 72]	// tmp178, third
	add	x0, x1, x0	// _34, tmp178, _33
// problem34.c:22:             third[min_idx] = temp;
	ldr	w1, [sp, 68]	// tmp179, temp
	str	w1, [x0]	// tmp179, *_34
.L8:
// problem34.c:13:     for (i = 0; i < third_size - 1; i++) {
	ldr	w0, [sp, 52]	// tmp181, i
	add	w0, w0, 1	// tmp180, tmp181,
	str	w0, [sp, 52]	// tmp180, i
.L4:
// problem34.c:13:     for (i = 0; i < third_size - 1; i++) {
	ldr	w0, [sp, 60]	// tmp182, third_size
	sub	w0, w0, #1	// _35, tmp182,
// problem34.c:13:     for (i = 0; i < third_size - 1; i++) {
	ldr	w1, [sp, 52]	// tmp183, i
	cmp	w1, w0	// tmp183, _35
	blt	.L9		//,
// problem34.c:26:     for (i = 0; i < size; i++) {
	str	wzr, [sp, 52]	//, i
// problem34.c:26:     for (i = 0; i < size; i++) {
	b	.L10		//
.L13:
// problem34.c:27:         if (i % 3 == 0) {
	ldr	w2, [sp, 52]	// tmp184, i
	mov	w0, 21846	// tmp186,
	movk	w0, 0x5555, lsl 16	// tmp186,,
	smull	x0, w2, w0	// tmp185, tmp184, tmp186
	lsr	x1, x0, 32	// tmp187, tmp185,
	asr	w0, w2, 31	// tmp188, tmp184,
	sub	w1, w1, w0	// _36, tmp187, tmp188
	mov	w0, w1	// tmp189, _36
	lsl	w0, w0, 1	// tmp190, tmp189,
	add	w0, w0, w1	// tmp189, tmp189, _36
	sub	w1, w2, w0	// _36, tmp184, tmp189
// problem34.c:27:         if (i % 3 == 0) {
	cmp	w1, 0	// _36,
	bne	.L11		//,
// problem34.c:28:             out[i] = third[i / 3];
	ldr	w0, [sp, 52]	// tmp191, i
	mov	w1, 21846	// tmp193,
	movk	w1, 0x5555, lsl 16	// tmp193,,
	smull	x1, w0, w1	// tmp192, tmp191, tmp193
	lsr	x1, x1, 32	// tmp194, tmp192,
	asr	w0, w0, 31	// tmp195, tmp191,
	sub	w0, w1, w0	// _37, tmp194, tmp195
	sxtw	x0, w0	// _38, _37
// problem34.c:28:             out[i] = third[i / 3];
	lsl	x0, x0, 2	// _39, _38,
	ldr	x1, [sp, 72]	// tmp196, third
	add	x1, x1, x0	// _40, tmp196, _39
// problem34.c:28:             out[i] = third[i / 3];
	ldrsw	x0, [sp, 52]	// _41, i
	lsl	x0, x0, 2	// _42, _41,
	ldr	x2, [sp, 24]	// tmp197, out
	add	x0, x2, x0	// _43, tmp197, _42
// problem34.c:28:             out[i] = third[i / 3];
	ldr	w1, [x1]	// _44, *_40
// problem34.c:28:             out[i] = third[i / 3];
	str	w1, [x0]	// _44, *_43
	b	.L12		//
.L11:
// problem34.c:30:             out[i] = l[i];
	ldrsw	x0, [sp, 52]	// _45, i
	lsl	x0, x0, 2	// _46, _45,
	ldr	x1, [sp, 40]	// tmp198, l
	add	x1, x1, x0	// _47, tmp198, _46
// problem34.c:30:             out[i] = l[i];
	ldrsw	x0, [sp, 52]	// _48, i
	lsl	x0, x0, 2	// _49, _48,
	ldr	x2, [sp, 24]	// tmp199, out
	add	x0, x2, x0	// _50, tmp199, _49
// problem34.c:30:             out[i] = l[i];
	ldr	w1, [x1]	// _51, *_47
// problem34.c:30:             out[i] = l[i];
	str	w1, [x0]	// _51, *_50
.L12:
// problem34.c:26:     for (i = 0; i < size; i++) {
	ldr	w0, [sp, 52]	// tmp201, i
	add	w0, w0, 1	// tmp200, tmp201,
	str	w0, [sp, 52]	// tmp200, i
.L10:
// problem34.c:26:     for (i = 0; i < size; i++) {
	ldr	w1, [sp, 52]	// tmp202, i
	ldr	w0, [sp, 36]	// tmp203, size
	cmp	w1, w0	// tmp202, tmp203
	blt	.L13		//,
// problem34.c:34:     free(third);
	ldr	x0, [sp, 72]	//, third
	bl	free		//
// problem34.c:35: }
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
// problem34.c:43:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 44]	//, i
// problem34.c:43:     for (int i = 0; i < size; i++) {
	b	.L15		//
.L18:
// problem34.c:44:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp102, a
	add	x0, x1, x0	// _3, tmp102, _2
	ldr	w1, [x0]	// _4, *_3
// problem34.c:44:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 16]	// tmp103, b
	add	x0, x2, x0	// _7, tmp103, _6
	ldr	w0, [x0]	// _8, *_7
// problem34.c:44:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L16		//,
// problem34.c:44:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
	b	.L17		//
.L16:
// problem34.c:43:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 44]	// tmp105, i
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [sp, 44]	// tmp104, i
.L15:
// problem34.c:43:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 44]	// tmp106, i
	ldr	w0, [sp, 12]	// tmp107, size
	cmp	w1, w0	// tmp106, tmp107
	blt	.L18		//,
// problem34.c:46:     return 1;
	mov	w0, 1	// _10,
.L17:
// problem34.c:47: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC11:
	.string	"problem34.c"
	.align	3
.LC12:
	.string	"issame(result1, result1, 3)"
	.align	3
.LC13:
	.string	"issame(result2, result2, 11)"
	.align	3
.LC14:
	.string	"issame(result3, result3, 10)"
	.align	3
.LC15:
	.string	"issame(result4, correct4, 7)"
	.align	3
.LC16:
	.string	"issame(result5, correct5, 7)"
	.align	3
.LC17:
	.string	"issame(result6, correct6, 7)"
	.align	3
.LC18:
	.string	"issame(result7, correct7, 8)"
	.align	3
.LC19:
	.string	"All tests passed!"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #624	//,,
	.cfi_def_cfa_offset 624
	stp	x29, x30, [sp]	//,,
	.cfi_offset 29, -624
	.cfi_offset 30, -616
	mov	x29, sp	//,
// problem34.c:49: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp102,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp101, tmp102,
	ldr	x1, [x0]	// tmp224,
	str	x1, [sp, 616]	// tmp224, D.4890
	mov	x1, 0	// tmp224
// problem34.c:50:     int test1[] = {1, 2, 3};
	adrp	x0, .LC0	// tmp104,
	add	x1, x0, :lo12:.LC0	// tmp103, tmp104,
	add	x0, sp, 24	// tmp105,,
	ldr	x2, [x1]	// tmp107,
	str	x2, [x0]	// tmp107, test1
	ldr	w1, [x1, 8]	// tmp108,
	str	w1, [x0, 8]	// tmp108, test1
// problem34.c:52:     func0(test1, 3, result1);
	add	x1, sp, 40	// tmp109,,
	add	x0, sp, 24	// tmp110,,
	mov	x2, x1	//, tmp109
	mov	w1, 3	//,
	bl	func0		//
// problem34.c:53:     assert(issame(result1, result1, 3));
	add	x1, sp, 40	// tmp111,,
	add	x0, sp, 40	// tmp112,,
	mov	w2, 3	//,
	bl	issame		//
	cmp	w0, 0	// _1,
	bne	.L20		//,
// problem34.c:53:     assert(issame(result1, result1, 3));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp113,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp113,
	mov	w2, 53	//,
	adrp	x0, .LC11	// tmp114,
	add	x1, x0, :lo12:.LC11	//, tmp114,
	adrp	x0, .LC12	// tmp115,
	add	x0, x0, :lo12:.LC12	//, tmp115,
	bl	__assert_fail		//
.L20:
// problem34.c:55:     int test2[] = {5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10};
	adrp	x0, .LC1	// tmp117,
	add	x1, x0, :lo12:.LC1	// tmp116, tmp117,
	add	x0, sp, 520	// tmp118,,
	ldp	q0, q1, [x1]	// tmp120, tmp121,
	stp	q0, q1, [x0]	// tmp120, tmp121, test2
	ldr	q0, [x1, 28]	// tmp122,
	str	q0, [x0, 28]	// tmp122, test2
// problem34.c:57:     func0(test2, 11, result2);
	add	x1, sp, 568	// tmp123,,
	add	x0, sp, 520	// tmp124,,
	mov	x2, x1	//, tmp123
	mov	w1, 11	//,
	bl	func0		//
// problem34.c:58:     assert(issame(result2, result2, 11));
	add	x1, sp, 568	// tmp125,,
	add	x0, sp, 568	// tmp126,,
	mov	w2, 11	//,
	bl	issame		//
	cmp	w0, 0	// _2,
	bne	.L21		//,
// problem34.c:58:     assert(issame(result2, result2, 11));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp127,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp127,
	mov	w2, 58	//,
	adrp	x0, .LC11	// tmp128,
	add	x1, x0, :lo12:.LC11	//, tmp128,
	adrp	x0, .LC13	// tmp129,
	add	x0, x0, :lo12:.LC13	//, tmp129,
	bl	__assert_fail		//
.L21:
// problem34.c:60:     int test3[] = {5, 8, -12, 4, 23, 2, 3, 11, 12, -10};
	adrp	x0, .LC2	// tmp131,
	add	x1, x0, :lo12:.LC2	// tmp130, tmp131,
	add	x0, sp, 440	// tmp132,,
	ldp	q0, q1, [x1]	// tmp134, tmp135,
	stp	q0, q1, [x0]	// tmp134, tmp135, test3
	ldr	x1, [x1, 32]	// tmp136,
	str	x1, [x0, 32]	// tmp136, test3
// problem34.c:62:     func0(test3, 10, result3);
	add	x1, sp, 480	// tmp137,,
	add	x0, sp, 440	// tmp138,,
	mov	x2, x1	//, tmp137
	mov	w1, 10	//,
	bl	func0		//
// problem34.c:63:     assert(issame(result3, result3, 10));
	add	x1, sp, 480	// tmp139,,
	add	x0, sp, 480	// tmp140,,
	mov	w2, 10	//,
	bl	issame		//
	cmp	w0, 0	// _3,
	bne	.L22		//,
// problem34.c:63:     assert(issame(result3, result3, 10));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp141,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp141,
	mov	w2, 63	//,
	adrp	x0, .LC11	// tmp142,
	add	x1, x0, :lo12:.LC11	//, tmp142,
	adrp	x0, .LC14	// tmp143,
	add	x0, x0, :lo12:.LC14	//, tmp143,
	bl	__assert_fail		//
.L22:
// problem34.c:65:     int test4[] = {5, 6, 3, 4, 8, 9, 2};
	adrp	x0, .LC3	// tmp145,
	add	x1, x0, :lo12:.LC3	// tmp144, tmp145,
	add	x0, sp, 56	// tmp146,,
	ldr	q0, [x1]	// tmp148,
	str	q0, [x0]	// tmp148, test4
	ldr	q0, [x1, 12]	// tmp149,
	str	q0, [x0, 12]	// tmp149, test4
// problem34.c:66:     int correct4[] = {2, 6, 3, 4, 8, 9, 5};
	adrp	x0, .LC4	// tmp151,
	add	x1, x0, :lo12:.LC4	// tmp150, tmp151,
	add	x0, sp, 88	// tmp152,,
	ldr	q0, [x1]	// tmp154,
	str	q0, [x0]	// tmp154, correct4
	ldr	q0, [x1, 12]	// tmp155,
	str	q0, [x0, 12]	// tmp155, correct4
// problem34.c:68:     func0(test4, 7, result4);
	add	x1, sp, 120	// tmp156,,
	add	x0, sp, 56	// tmp157,,
	mov	x2, x1	//, tmp156
	mov	w1, 7	//,
	bl	func0		//
// problem34.c:69:     assert(issame(result4, correct4, 7));
	add	x1, sp, 88	// tmp158,,
	add	x0, sp, 120	// tmp159,,
	mov	w2, 7	//,
	bl	issame		//
	cmp	w0, 0	// _4,
	bne	.L23		//,
// problem34.c:69:     assert(issame(result4, correct4, 7));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp160,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp160,
	mov	w2, 69	//,
	adrp	x0, .LC11	// tmp161,
	add	x1, x0, :lo12:.LC11	//, tmp161,
	adrp	x0, .LC15	// tmp162,
	add	x0, x0, :lo12:.LC15	//, tmp162,
	bl	__assert_fail		//
.L23:
// problem34.c:71:     int test5[] = {5, 8, 3, 4, 6, 9, 2};
	adrp	x0, .LC5	// tmp164,
	add	x1, x0, :lo12:.LC5	// tmp163, tmp164,
	add	x0, sp, 152	// tmp165,,
	ldr	q0, [x1]	// tmp167,
	str	q0, [x0]	// tmp167, test5
	ldr	q0, [x1, 12]	// tmp168,
	str	q0, [x0, 12]	// tmp168, test5
// problem34.c:72:     int correct5[] = {2, 8, 3, 4, 6, 9, 5};
	adrp	x0, .LC6	// tmp170,
	add	x1, x0, :lo12:.LC6	// tmp169, tmp170,
	add	x0, sp, 184	// tmp171,,
	ldr	q0, [x1]	// tmp173,
	str	q0, [x0]	// tmp173, correct5
	ldr	q0, [x1, 12]	// tmp174,
	str	q0, [x0, 12]	// tmp174, correct5
// problem34.c:74:     func0(test5, 7, result5);
	add	x1, sp, 216	// tmp175,,
	add	x0, sp, 152	// tmp176,,
	mov	x2, x1	//, tmp175
	mov	w1, 7	//,
	bl	func0		//
// problem34.c:75:     assert(issame(result5, correct5, 7));
	add	x1, sp, 184	// tmp177,,
	add	x0, sp, 216	// tmp178,,
	mov	w2, 7	//,
	bl	issame		//
	cmp	w0, 0	// _5,
	bne	.L24		//,
// problem34.c:75:     assert(issame(result5, correct5, 7));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp179,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp179,
	mov	w2, 75	//,
	adrp	x0, .LC11	// tmp180,
	add	x1, x0, :lo12:.LC11	//, tmp180,
	adrp	x0, .LC16	// tmp181,
	add	x0, x0, :lo12:.LC16	//, tmp181,
	bl	__assert_fail		//
.L24:
// problem34.c:77:     int test6[] = {5, 6, 9, 4, 8, 3, 2};
	adrp	x0, .LC7	// tmp183,
	add	x1, x0, :lo12:.LC7	// tmp182, tmp183,
	add	x0, sp, 248	// tmp184,,
	ldr	q0, [x1]	// tmp186,
	str	q0, [x0]	// tmp186, test6
	ldr	q0, [x1, 12]	// tmp187,
	str	q0, [x0, 12]	// tmp187, test6
// problem34.c:78:     int correct6[] = {2, 6, 9, 4, 8, 3, 5};
	adrp	x0, .LC8	// tmp189,
	add	x1, x0, :lo12:.LC8	// tmp188, tmp189,
	add	x0, sp, 280	// tmp190,,
	ldr	q0, [x1]	// tmp192,
	str	q0, [x0]	// tmp192, correct6
	ldr	q0, [x1, 12]	// tmp193,
	str	q0, [x0, 12]	// tmp193, correct6
// problem34.c:80:     func0(test6, 7, result6);
	add	x1, sp, 312	// tmp194,,
	add	x0, sp, 248	// tmp195,,
	mov	x2, x1	//, tmp194
	mov	w1, 7	//,
	bl	func0		//
// problem34.c:81:     assert(issame(result6, correct6, 7));
	add	x1, sp, 280	// tmp196,,
	add	x0, sp, 312	// tmp197,,
	mov	w2, 7	//,
	bl	issame		//
	cmp	w0, 0	// _6,
	bne	.L25		//,
// problem34.c:81:     assert(issame(result6, correct6, 7));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp198,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp198,
	mov	w2, 81	//,
	adrp	x0, .LC11	// tmp199,
	add	x1, x0, :lo12:.LC11	//, tmp199,
	adrp	x0, .LC17	// tmp200,
	add	x0, x0, :lo12:.LC17	//, tmp200,
	bl	__assert_fail		//
.L25:
// problem34.c:83:     int test7[] = {5, 6, 3, 4, 8, 9, 2, 1};
	adrp	x0, .LC9	// tmp202,
	add	x1, x0, :lo12:.LC9	// tmp201, tmp202,
	add	x0, sp, 344	// tmp203,,
	ldp	q0, q1, [x1]	// tmp205, tmp206,
	stp	q0, q1, [x0]	// tmp205, tmp206, test7
// problem34.c:84:     int correct7[] = {2, 6, 3, 4, 8, 9, 5, 1};
	adrp	x0, .LC10	// tmp208,
	add	x1, x0, :lo12:.LC10	// tmp207, tmp208,
	add	x0, sp, 376	// tmp209,,
	ldp	q0, q1, [x1]	// tmp211, tmp212,
	stp	q0, q1, [x0]	// tmp211, tmp212, correct7
// problem34.c:86:     func0(test7, 8, result7);
	add	x1, sp, 408	// tmp213,,
	add	x0, sp, 344	// tmp214,,
	mov	x2, x1	//, tmp213
	mov	w1, 8	//,
	bl	func0		//
// problem34.c:87:     assert(issame(result7, correct7, 8));
	add	x1, sp, 376	// tmp215,,
	add	x0, sp, 408	// tmp216,,
	mov	w2, 8	//,
	bl	issame		//
	cmp	w0, 0	// _7,
	bne	.L26		//,
// problem34.c:87:     assert(issame(result7, correct7, 8));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp217,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp217,
	mov	w2, 87	//,
	adrp	x0, .LC11	// tmp218,
	add	x1, x0, :lo12:.LC11	//, tmp218,
	adrp	x0, .LC18	// tmp219,
	add	x0, x0, :lo12:.LC18	//, tmp219,
	bl	__assert_fail		//
.L26:
// problem34.c:89:     printf("All tests passed!\n");
	adrp	x0, .LC19	// tmp220,
	add	x0, x0, :lo12:.LC19	//, tmp220,
	bl	puts		//
// problem34.c:90:     return 0;
	mov	w0, 0	// _42,
// problem34.c:91: }
	mov	w1, w0	// <retval>, _42
	adrp	x0, :got:__stack_chk_guard	// tmp223,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp222, tmp223,
	ldr	x3, [sp, 616]	// tmp225, D.4890
	ldr	x2, [x0]	// tmp226,
	subs	x3, x3, x2	// tmp225, tmp226
	mov	x2, 0	// tmp226
	beq	.L28		//,
	bl	__stack_chk_fail		//
.L28:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp]	//,,
	add	sp, sp, 624	//,,
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
	.word	2
	.word	3
	.align	3
.LC1:
	.word	5
	.word	3
	.word	-5
	.word	2
	.word	-3
	.word	3
	.word	9
	.word	0
	.word	123
	.word	1
	.word	-10
	.align	3
.LC2:
	.word	5
	.word	8
	.word	-12
	.word	4
	.word	23
	.word	2
	.word	3
	.word	11
	.word	12
	.word	-10
	.align	3
.LC3:
	.word	5
	.word	6
	.word	3
	.word	4
	.word	8
	.word	9
	.word	2
	.align	3
.LC4:
	.word	2
	.word	6
	.word	3
	.word	4
	.word	8
	.word	9
	.word	5
	.align	3
.LC5:
	.word	5
	.word	8
	.word	3
	.word	4
	.word	6
	.word	9
	.word	2
	.align	3
.LC6:
	.word	2
	.word	8
	.word	3
	.word	4
	.word	6
	.word	9
	.word	5
	.align	3
.LC7:
	.word	5
	.word	6
	.word	9
	.word	4
	.word	8
	.word	3
	.word	2
	.align	3
.LC8:
	.word	2
	.word	6
	.word	9
	.word	4
	.word	8
	.word	3
	.word	5
	.align	3
.LC9:
	.word	5
	.word	6
	.word	3
	.word	4
	.word	8
	.word	9
	.word	2
	.word	1
	.align	3
.LC10:
	.word	2
	.word	6
	.word	3
	.word	4
	.word	8
	.word	9
	.word	5
	.word	1
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
