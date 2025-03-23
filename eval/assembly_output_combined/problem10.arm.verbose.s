	.arch armv8-a
	.file	"problem10.c"
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
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// numbers, numbers
	str	w1, [sp, 20]	// size, size
// problem10.c:5:     if (size <= 0) {
	ldr	w0, [sp, 20]	// tmp106, size
	cmp	w0, 0	// tmp106,
	bgt	.L2		//,
// problem10.c:6:         return NULL;
	mov	x0, 0	// _16,
	b	.L3		//
.L2:
// problem10.c:9:     int *out = malloc(size * sizeof(int));
	ldrsw	x0, [sp, 20]	// _1, size
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 40]	// tmp107, out
// problem10.c:10:     if (!out) {
	ldr	x0, [sp, 40]	// tmp108, out
	cmp	x0, 0	// tmp108,
	bne	.L4		//,
// problem10.c:11:         return NULL;
	mov	x0, 0	// _16,
	b	.L3		//
.L4:
// problem10.c:14:     int max = numbers[0];
	ldr	x0, [sp, 24]	// tmp109, numbers
	ldr	w0, [x0]	// tmp110, *numbers_23(D)
	str	w0, [sp, 32]	// tmp110, max
// problem10.c:15:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 36]	//, i
// problem10.c:15:     for (int i = 0; i < size; i++) {
	b	.L5		//
.L7:
// problem10.c:16:         if (numbers[i] > max) max = numbers[i];
	ldrsw	x0, [sp, 36]	// _3, i
	lsl	x0, x0, 2	// _4, _3,
	ldr	x1, [sp, 24]	// tmp111, numbers
	add	x0, x1, x0	// _5, tmp111, _4
	ldr	w0, [x0]	// _6, *_5
// problem10.c:16:         if (numbers[i] > max) max = numbers[i];
	ldr	w1, [sp, 32]	// tmp112, max
	cmp	w1, w0	// tmp112, _6
	bge	.L6		//,
// problem10.c:16:         if (numbers[i] > max) max = numbers[i];
	ldrsw	x0, [sp, 36]	// _7, i
	lsl	x0, x0, 2	// _8, _7,
	ldr	x1, [sp, 24]	// tmp113, numbers
	add	x0, x1, x0	// _9, tmp113, _8
// problem10.c:16:         if (numbers[i] > max) max = numbers[i];
	ldr	w0, [x0]	// tmp114, *_9
	str	w0, [sp, 32]	// tmp114, max
.L6:
// problem10.c:17:         out[i] = max;
	ldrsw	x0, [sp, 36]	// _10, i
	lsl	x0, x0, 2	// _11, _10,
	ldr	x1, [sp, 40]	// tmp115, out
	add	x0, x1, x0	// _12, tmp115, _11
// problem10.c:17:         out[i] = max;
	ldr	w1, [sp, 32]	// tmp116, max
	str	w1, [x0]	// tmp116, *_12
// problem10.c:15:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 36]	// tmp118, i
	add	w0, w0, 1	// tmp117, tmp118,
	str	w0, [sp, 36]	// tmp117, i
.L5:
// problem10.c:15:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 36]	// tmp119, i
	ldr	w0, [sp, 20]	// tmp120, size
	cmp	w1, w0	// tmp119, tmp120
	blt	.L7		//,
// problem10.c:19:     return out;
	ldr	x0, [sp, 40]	// _16, out
.L3:
// problem10.c:20: }
	ldp	x29, x30, [sp], 48	//,,,
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
// problem10.c:29:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 44]	//, i
// problem10.c:29:     for (int i = 0; i < size; i++) {
	b	.L9		//
.L12:
// problem10.c:30:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp102, a
	add	x0, x1, x0	// _3, tmp102, _2
	ldr	w1, [x0]	// _4, *_3
// problem10.c:30:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 16]	// tmp103, b
	add	x0, x2, x0	// _7, tmp103, _6
	ldr	w0, [x0]	// _8, *_7
// problem10.c:30:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L10		//,
// problem10.c:30:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
	b	.L11		//
.L10:
// problem10.c:29:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 44]	// tmp105, i
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [sp, 44]	// tmp104, i
.L9:
// problem10.c:29:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 44]	// tmp106, i
	ldr	w0, [sp, 12]	// tmp107, size
	cmp	w1, w0	// tmp106, tmp107
	blt	.L12		//,
// problem10.c:32:     return 1;
	mov	w0, 1	// _10,
.L11:
// problem10.c:33: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC2:
	.string	"problem10.c"
	.align	3
.LC3:
	.string	"result == NULL"
	.align	3
.LC4:
	.string	"issame(result, (int[]){1, 2, 3, 4}, 4)"
	.align	3
.LC5:
	.string	"issame(result, (int[]){4, 4, 4, 4}, 4)"
	.align	3
.LC6:
	.string	"issame(result, (int[]){3, 3, 3, 100, 100}, 5)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!	//,,,
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp	//,
// problem10.c:35: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp98,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp97, tmp98,
	ldr	x1, [x0]	// tmp150,
	str	x1, [sp, 120]	// tmp150, D.4849
	mov	x1, 0	// tmp150
// problem10.c:39:     result = func0((int[]){}, 0);
	add	x0, sp, 32	// tmp99,,
	mov	w1, 0	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem10.c:40:     assert(result == NULL);
	ldr	x0, [sp, 24]	// tmp100, result
	cmp	x0, 0	// tmp100,
	beq	.L14		//,
// problem10.c:40:     assert(result == NULL);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp101,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp101,
	mov	w2, 40	//,
	adrp	x0, .LC2	// tmp102,
	add	x1, x0, :lo12:.LC2	//, tmp102,
	adrp	x0, .LC3	// tmp103,
	add	x0, x0, :lo12:.LC3	//, tmp103,
	bl	__assert_fail		//
.L14:
// problem10.c:41:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem10.c:44:     int test1[] = {1, 2, 3, 4};
	mov	w0, 1	// tmp104,
	str	w0, [sp, 40]	// tmp104, test1[0]
	mov	w0, 2	// tmp105,
	str	w0, [sp, 44]	// tmp105, test1[1]
	mov	w0, 3	// tmp106,
	str	w0, [sp, 48]	// tmp106, test1[2]
	mov	w0, 4	// tmp107,
	str	w0, [sp, 52]	// tmp107, test1[3]
// problem10.c:45:     result = func0(test1, 4);
	add	x0, sp, 40	// tmp108,,
	mov	w1, 4	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem10.c:46:     assert(issame(result, (int[]){1, 2, 3, 4}, 4));
	mov	w0, 1	// tmp109,
	str	w0, [sp, 96]	// tmp109, MEM[(int[4] *)_55][0]
	mov	w0, 2	// tmp110,
	str	w0, [sp, 100]	// tmp110, MEM[(int[4] *)_55][1]
	mov	w0, 3	// tmp111,
	str	w0, [sp, 104]	// tmp111, MEM[(int[4] *)_55][2]
	mov	w0, 4	// tmp112,
	str	w0, [sp, 108]	// tmp112, MEM[(int[4] *)_55][3]
	add	x0, sp, 96	// tmp113,,
	mov	w2, 4	//,
	mov	x1, x0	//, tmp113
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _1,
	bne	.L15		//,
// problem10.c:46:     assert(issame(result, (int[]){1, 2, 3, 4}, 4));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp114,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp114,
	mov	w2, 46	//,
	adrp	x0, .LC2	// tmp115,
	add	x1, x0, :lo12:.LC2	//, tmp115,
	adrp	x0, .LC4	// tmp116,
	add	x0, x0, :lo12:.LC4	//, tmp116,
	bl	__assert_fail		//
.L15:
// problem10.c:47:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem10.c:50:     int test2[] = {4, 3, 2, 1};
	mov	w0, 4	// tmp117,
	str	w0, [sp, 56]	// tmp117, test2[0]
	mov	w0, 3	// tmp118,
	str	w0, [sp, 60]	// tmp118, test2[1]
	mov	w0, 2	// tmp119,
	str	w0, [sp, 64]	// tmp119, test2[2]
	mov	w0, 1	// tmp120,
	str	w0, [sp, 68]	// tmp120, test2[3]
// problem10.c:51:     result = func0(test2, 4);
	add	x0, sp, 56	// tmp121,,
	mov	w1, 4	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem10.c:52:     assert(issame(result, (int[]){4, 4, 4, 4}, 4));
	mov	w0, 4	// tmp122,
	str	w0, [sp, 96]	// tmp122, MEM[(int[4] *)_55][0]
	mov	w0, 4	// tmp123,
	str	w0, [sp, 100]	// tmp123, MEM[(int[4] *)_55][1]
	mov	w0, 4	// tmp124,
	str	w0, [sp, 104]	// tmp124, MEM[(int[4] *)_55][2]
	mov	w0, 4	// tmp125,
	str	w0, [sp, 108]	// tmp125, MEM[(int[4] *)_55][3]
	add	x0, sp, 96	// tmp126,,
	mov	w2, 4	//,
	mov	x1, x0	//, tmp126
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _2,
	bne	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp127,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp127,
	mov	w2, 52	//,
	adrp	x0, .LC2	// tmp128,
	add	x1, x0, :lo12:.LC2	//, tmp128,
	adrp	x0, .LC5	// tmp129,
	add	x0, x0, :lo12:.LC5	//, tmp129,
	bl	__assert_fail		//
.L16:
// problem10.c:53:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem10.c:56:     int test3[] = {3, 2, 3, 100, 3};
	adrp	x0, .LC0	// tmp131,
	add	x0, x0, :lo12:.LC0	// tmp130, tmp131,
	add	x2, sp, 72	// tmp132,,
	mov	x3, x0	// tmp133, tmp130
	ldp	x0, x1, [x3]	// tmp134,
	stp	x0, x1, [x2]	// tmp134, test3
	ldr	w0, [x3, 16]	// tmp135,
	str	w0, [x2, 16]	// tmp135, test3
// problem10.c:57:     result = func0(test3, 5);
	add	x0, sp, 72	// tmp136,,
	mov	w1, 5	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem10.c:58:     assert(issame(result, (int[]){3, 3, 3, 100, 100}, 5));
	adrp	x0, .LC1	// tmp138,
	add	x0, x0, :lo12:.LC1	// tmp137, tmp138,
	add	x2, sp, 96	// tmp139,,
	mov	x3, x0	// tmp140, tmp137
	ldp	x0, x1, [x3]	// tmp141,
	stp	x0, x1, [x2]	// tmp141, MEM[(int[5] *)_55]
	ldr	w0, [x3, 16]	// tmp142,
	str	w0, [x2, 16]	// tmp142, MEM[(int[5] *)_55]
	add	x0, sp, 96	// tmp143,,
	mov	w2, 5	//,
	mov	x1, x0	//, tmp143
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _3,
	bne	.L17		//,
// problem10.c:58:     assert(issame(result, (int[]){3, 3, 3, 100, 100}, 5));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp144,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp144,
	mov	w2, 58	//,
	adrp	x0, .LC2	// tmp145,
	add	x1, x0, :lo12:.LC2	//, tmp145,
	adrp	x0, .LC6	// tmp146,
	add	x0, x0, :lo12:.LC6	//, tmp146,
	bl	__assert_fail		//
.L17:
// problem10.c:59:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem10.c:61:     return 0;
	mov	w0, 0	// _46,
// problem10.c:62: }
	mov	w1, w0	// <retval>, _46
	adrp	x0, :got:__stack_chk_guard	// tmp149,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp148, tmp149,
	ldr	x3, [sp, 120]	// tmp151, D.4849
	ldr	x2, [x0]	// tmp152,
	subs	x3, x3, x2	// tmp151, tmp152
	mov	x2, 0	// tmp152
	beq	.L19		//,
// problem10.c:62: }
	bl	__stack_chk_fail		//
.L19:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 128	//,,,
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
	.word	3
	.word	2
	.word	3
	.word	100
	.word	3
	.align	3
.LC1:
	.word	3
	.word	3
	.word	3
	.word	100
	.word	100
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
