	.arch armv8-a
	.file	"problem6.c"
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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 40]	// numbers, numbers
	str	w1, [sp, 36]	// size, size
	str	w2, [sp, 32]	// delimiter, delimiter
	str	x3, [sp, 24]	// out_size, out_size
// problem6.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	ldr	w0, [sp, 36]	// tmp112, size
	cmp	w0, 0	// tmp112,
	ble	.L2		//,
// problem6.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	ldr	w0, [sp, 36]	// tmp113, size
	lsl	w0, w0, 1	// _1, tmp113,
// problem6.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	sub	w0, w0, #1	// iftmp.0_20, _1,
	b	.L3		//
.L2:
// problem6.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	mov	w0, 0	// iftmp.0_20,
.L3:
// problem6.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	ldr	x1, [sp, 24]	// tmp114, out_size
	str	w0, [x1]	// iftmp.0_20, *out_size_27(D)
// problem6.c:6:     int *out = (int *)malloc(*out_size * sizeof(int));
	ldr	x0, [sp, 24]	// tmp115, out_size
	ldr	w0, [x0]	// _2, *out_size_27(D)
	sxtw	x0, w0	// _3, _2
// problem6.c:6:     int *out = (int *)malloc(*out_size * sizeof(int));
	lsl	x0, x0, 2	// _4, _3,
	bl	malloc		//
	str	x0, [sp, 56]	// tmp116, out
// problem6.c:7:     if (size > 0) out[0] = numbers[0];
	ldr	w0, [sp, 36]	// tmp117, size
	cmp	w0, 0	// tmp117,
	ble	.L4		//,
// problem6.c:7:     if (size > 0) out[0] = numbers[0];
	ldr	x0, [sp, 40]	// tmp118, numbers
	ldr	w1, [x0]	// _5, *numbers_31(D)
// problem6.c:7:     if (size > 0) out[0] = numbers[0];
	ldr	x0, [sp, 56]	// tmp119, out
	str	w1, [x0]	// _5, *out_30
.L4:
// problem6.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	mov	w0, 1	// tmp120,
	str	w0, [sp, 48]	// tmp120, i
// problem6.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	mov	w0, 1	// tmp121,
	str	w0, [sp, 52]	// tmp121, j
// problem6.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	b	.L5		//
.L6:
// problem6.c:9:         out[j++] = delimiter;
	ldr	w0, [sp, 52]	// j.1_6, j
	add	w1, w0, 1	// tmp122, j.1_6,
	str	w1, [sp, 52]	// tmp122, j
	sxtw	x0, w0	// _7, j.1_6
// problem6.c:9:         out[j++] = delimiter;
	lsl	x0, x0, 2	// _8, _7,
	ldr	x1, [sp, 56]	// tmp123, out
	add	x0, x1, x0	// _9, tmp123, _8
// problem6.c:9:         out[j++] = delimiter;
	ldr	w1, [sp, 32]	// tmp124, delimiter
	str	w1, [x0]	// tmp124, *_9
// problem6.c:10:         out[j++] = numbers[i];
	ldrsw	x0, [sp, 48]	// _10, i
	lsl	x0, x0, 2	// _11, _10,
	ldr	x1, [sp, 40]	// tmp125, numbers
	add	x1, x1, x0	// _12, tmp125, _11
// problem6.c:10:         out[j++] = numbers[i];
	ldr	w0, [sp, 52]	// j.2_13, j
	add	w2, w0, 1	// tmp126, j.2_13,
	str	w2, [sp, 52]	// tmp126, j
	sxtw	x0, w0	// _14, j.2_13
// problem6.c:10:         out[j++] = numbers[i];
	lsl	x0, x0, 2	// _15, _14,
	ldr	x2, [sp, 56]	// tmp127, out
	add	x0, x2, x0	// _16, tmp127, _15
// problem6.c:10:         out[j++] = numbers[i];
	ldr	w1, [x1]	// _17, *_12
// problem6.c:10:         out[j++] = numbers[i];
	str	w1, [x0]	// _17, *_16
// problem6.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	ldr	w0, [sp, 48]	// tmp129, i
	add	w0, w0, 1	// tmp128, tmp129,
	str	w0, [sp, 48]	// tmp128, i
.L5:
// problem6.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	ldr	w1, [sp, 48]	// tmp130, i
	ldr	w0, [sp, 36]	// tmp131, size
	cmp	w1, w0	// tmp130, tmp131
	blt	.L6		//,
// problem6.c:12:     return out;
	ldr	x0, [sp, 56]	// _35, out
// problem6.c:13: }
	ldp	x29, x30, [sp], 64	//,,,
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
	str	w2, [sp, 12]	// size_a, size_a
	str	w3, [sp, 8]	// size_b, size_b
// problem6.c:22:     if (size_a != size_b) return 0;
	ldr	w1, [sp, 12]	// tmp102, size_a
	ldr	w0, [sp, 8]	// tmp103, size_b
	cmp	w1, w0	// tmp102, tmp103
	beq	.L9		//,
// problem6.c:22:     if (size_a != size_b) return 0;
	mov	w0, 0	// _10,
// problem6.c:22:     if (size_a != size_b) return 0;
	b	.L10		//
.L9:
// problem6.c:23:     for (int i = 0; i < size_a; i++) {
	str	wzr, [sp, 44]	//, i
// problem6.c:23:     for (int i = 0; i < size_a; i++) {
	b	.L11		//
.L13:
// problem6.c:24:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp104, a
	add	x0, x1, x0	// _3, tmp104, _2
	ldr	w1, [x0]	// _4, *_3
// problem6.c:24:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 16]	// tmp105, b
	add	x0, x2, x0	// _7, tmp105, _6
	ldr	w0, [x0]	// _8, *_7
// problem6.c:24:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L12		//,
// problem6.c:24:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
// problem6.c:24:         if (a[i] != b[i]) return 0;
	b	.L10		//
.L12:
// problem6.c:23:     for (int i = 0; i < size_a; i++) {
	ldr	w0, [sp, 44]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 44]	// tmp106, i
.L11:
// problem6.c:23:     for (int i = 0; i < size_a; i++) {
	ldr	w1, [sp, 44]	// tmp108, i
	ldr	w0, [sp, 12]	// tmp109, size_a
	cmp	w1, w0	// tmp108, tmp109
	blt	.L13		//,
// problem6.c:26:     return 1;
	mov	w0, 1	// _10,
.L10:
// problem6.c:27: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC3:
	.string	"problem6.c"
	.align	3
.LC4:
	.string	"issame(result_empty, (const int[]){}, out_size, 0)"
	.align	3
.LC5:
	.string	"issame(result1, result_expected1, out_size, 7)"
	.align	3
.LC6:
	.string	"issame(result2, result_expected2, out_size, 5)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #160	//,,
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, 144]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 144	//,,
// problem6.c:29: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp100,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp100,
	ldr	x1, [x0]	// tmp143,
	str	x1, [sp, 136]	// tmp143, D.5656
	mov	x1, 0	// tmp143
// problem6.c:33:     int *result_empty = func0((const int[]){}, 0, 7, &out_size);
	add	x1, sp, 12	// tmp101,,
	add	x0, sp, 40	// tmp102,,
	mov	x3, x1	//, tmp101
	mov	w2, 7	//,
	mov	w1, 0	//,
	bl	func0		//
	str	x0, [sp, 16]	//, result_empty
// problem6.c:34:     assert(issame(result_empty, (const int[]){}, out_size, 0));
	ldr	w1, [sp, 12]	// out_size.3_1, out_size
	add	x0, sp, 104	// tmp103,,
	mov	w3, 0	//,
	mov	w2, w1	//, out_size.3_1
	mov	x1, x0	//, tmp103
	ldr	x0, [sp, 16]	//, result_empty
	bl	issame		//
// problem6.c:34:     assert(issame(result_empty, (const int[]){}, out_size, 0));
	cmp	w0, 0	// _2,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp104,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp104,
	mov	w2, 34	//,
	adrp	x0, .LC3	// tmp105,
	add	x1, x0, :lo12:.LC3	//, tmp105,
	adrp	x0, .LC4	// tmp106,
	add	x0, x0, :lo12:.LC4	//, tmp106,
	bl	__assert_fail		//
.L15:
// problem6.c:35:     free(result_empty);
	ldr	x0, [sp, 16]	//, result_empty
	bl	free		//
// problem6.c:38:     int result_expected1[] = {5, 8, 6, 8, 3, 8, 2};
	adrp	x0, .LC0	// tmp108,
	add	x1, x0, :lo12:.LC0	// tmp107, tmp108,
	add	x0, sp, 104	// tmp109,,
	ldr	q0, [x1]	// tmp111,
	str	q0, [x0]	// tmp111, MEM[(int[7] *)_40]
	ldr	q0, [x1, 12]	// tmp112,
	str	q0, [x0, 12]	// tmp112, MEM[(int[7] *)_40]
// problem6.c:39:     int *result1 = func0((const int[]){5, 6, 3, 2}, 4, 8, &out_size);
	mov	w0, 5	// tmp113,
	str	w0, [sp, 64]	// tmp113, D.5618[0]
	mov	w0, 6	// tmp114,
	str	w0, [sp, 68]	// tmp114, D.5618[1]
	mov	w0, 3	// tmp115,
	str	w0, [sp, 72]	// tmp115, D.5618[2]
	mov	w0, 2	// tmp116,
	str	w0, [sp, 76]	// tmp116, D.5618[3]
// problem6.c:39:     int *result1 = func0((const int[]){5, 6, 3, 2}, 4, 8, &out_size);
	add	x1, sp, 12	// tmp117,,
	add	x0, sp, 64	// tmp118,,
	mov	x3, x1	//, tmp117
	mov	w2, 8	//,
	mov	w1, 4	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result1
// problem6.c:40:     assert(issame(result1, result_expected1, out_size, 7));
	ldr	w1, [sp, 12]	// out_size.4_3, out_size
	add	x0, sp, 104	// tmp119,,
	mov	w3, 7	//,
	mov	w2, w1	//, out_size.4_3
	mov	x1, x0	//, tmp119
	ldr	x0, [sp, 24]	//, result1
	bl	issame		//
// problem6.c:40:     assert(issame(result1, result_expected1, out_size, 7));
	cmp	w0, 0	// _4,
	bne	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp120,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp120,
	mov	w2, 40	//,
	adrp	x0, .LC3	// tmp121,
	add	x1, x0, :lo12:.LC3	//, tmp121,
	adrp	x0, .LC5	// tmp122,
	add	x0, x0, :lo12:.LC5	//, tmp122,
	bl	__assert_fail		//
.L16:
// problem6.c:41:     free(result1);
	ldr	x0, [sp, 24]	//, result1
	bl	free		//
// problem6.c:44:     int result_expected2[] = {2, 2, 2, 2, 2};
	adrp	x0, .LC1	// tmp124,
	add	x0, x0, :lo12:.LC1	// tmp123, tmp124,
	add	x2, sp, 80	// tmp125,,
	mov	x3, x0	// tmp126, tmp123
	ldp	x0, x1, [x3]	// tmp127,
	stp	x0, x1, [x2]	// tmp127, result_expected2
	ldr	w0, [x3, 16]	// tmp128,
	str	w0, [x2, 16]	// tmp128, result_expected2
// problem6.c:45:     int *result2 = func0((const int[]){2, 2, 2}, 3, 2, &out_size);
	adrp	x0, .LC2	// tmp130,
	add	x1, x0, :lo12:.LC2	// tmp129, tmp130,
	add	x0, sp, 48	// tmp131,,
	ldr	x2, [x1]	// tmp133,
	str	x2, [x0]	// tmp133, D.5621
	ldr	w1, [x1, 8]	// tmp134,
	str	w1, [x0, 8]	// tmp134, D.5621
// problem6.c:45:     int *result2 = func0((const int[]){2, 2, 2}, 3, 2, &out_size);
	add	x1, sp, 12	// tmp135,,
	add	x0, sp, 48	// tmp136,,
	mov	x3, x1	//, tmp135
	mov	w2, 2	//,
	mov	w1, 3	//,
	bl	func0		//
	str	x0, [sp, 32]	//, result2
// problem6.c:46:     assert(issame(result2, result_expected2, out_size, 5));
	ldr	w1, [sp, 12]	// out_size.5_5, out_size
	add	x0, sp, 80	// tmp137,,
	mov	w3, 5	//,
	mov	w2, w1	//, out_size.5_5
	mov	x1, x0	//, tmp137
	ldr	x0, [sp, 32]	//, result2
	bl	issame		//
// problem6.c:46:     assert(issame(result2, result_expected2, out_size, 5));
	cmp	w0, 0	// _6,
	bne	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp138,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp138,
	mov	w2, 46	//,
	adrp	x0, .LC3	// tmp139,
	add	x1, x0, :lo12:.LC3	//, tmp139,
	adrp	x0, .LC6	// tmp140,
	add	x0, x0, :lo12:.LC6	//, tmp140,
	bl	__assert_fail		//
.L17:
// problem6.c:47:     free(result2);
	ldr	x0, [sp, 32]	//, result2
	bl	free		//
// problem6.c:49:     return 0;
	mov	w0, 0	// _31,
// problem6.c:50: }
	mov	w1, w0	// <retval>, _31
	adrp	x0, :got:__stack_chk_guard	// tmp142,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp142,
	ldr	x3, [sp, 136]	// tmp144, D.5656
	ldr	x2, [x0]	// tmp145,
	subs	x3, x3, x2	// tmp144, tmp145
	mov	x2, 0	// tmp145
	beq	.L19		//,
	bl	__stack_chk_fail		//
.L19:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 144]	//,,
	add	sp, sp, 160	//,,
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
	.word	5
	.word	8
	.word	6
	.word	8
	.word	3
	.word	8
	.word	2
	.align	3
.LC1:
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.align	3
.LC2:
	.word	2
	.word	2
	.word	2
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
