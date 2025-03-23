	.arch armv8-a
	.file	"problem9.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// numbers, numbers
	str	w1, [sp, 20]	// size, size
	str	x2, [sp, 8]	// result, result
// problem9.c:4:     int sum = 0, product = 1;
	str	wzr, [sp, 36]	//, sum
// problem9.c:4:     int sum = 0, product = 1;
	mov	w0, 1	// tmp101,
	str	w0, [sp, 40]	// tmp101, product
// problem9.c:5:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 44]	//, i
// problem9.c:5:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L3:
// problem9.c:6:         sum += numbers[i];
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp102, numbers
	add	x0, x1, x0	// _3, tmp102, _2
	ldr	w0, [x0]	// _4, *_3
// problem9.c:6:         sum += numbers[i];
	ldr	w1, [sp, 36]	// tmp104, sum
	add	w0, w1, w0	// tmp103, tmp104, _4
	str	w0, [sp, 36]	// tmp103, sum
// problem9.c:7:         product *= numbers[i];
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 24]	// tmp105, numbers
	add	x0, x1, x0	// _7, tmp105, _6
	ldr	w0, [x0]	// _8, *_7
// problem9.c:7:         product *= numbers[i];
	ldr	w1, [sp, 40]	// tmp107, product
	mul	w0, w1, w0	// tmp106, tmp107, _8
	str	w0, [sp, 40]	// tmp106, product
// problem9.c:5:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 44]	// tmp109, i
	add	w0, w0, 1	// tmp108, tmp109,
	str	w0, [sp, 44]	// tmp108, i
.L2:
// problem9.c:5:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 44]	// tmp110, i
	ldr	w0, [sp, 20]	// tmp111, size
	cmp	w1, w0	// tmp110, tmp111
	blt	.L3		//,
// problem9.c:9:     result[0] = sum;
	ldr	x0, [sp, 8]	// tmp112, result
	ldr	w1, [sp, 36]	// tmp113, sum
	str	w1, [x0]	// tmp113, *result_18(D)
// problem9.c:10:     result[1] = product;
	ldr	x0, [sp, 8]	// tmp114, result
	add	x0, x0, 4	// _9, tmp114,
// problem9.c:10:     result[1] = product;
	ldr	w1, [sp, 40]	// tmp115, product
	str	w1, [x0]	// tmp115, *_9
// problem9.c:11: }
	nop	
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// a, a
	str	x1, [sp, 16]	// b, b
	str	w2, [sp, 12]	// size, size
// problem9.c:18:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 44]	//, i
// problem9.c:18:     for (int i = 0; i < size; i++) {
	b	.L5		//
.L8:
// problem9.c:19:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp102, a
	add	x0, x1, x0	// _3, tmp102, _2
	ldr	w1, [x0]	// _4, *_3
// problem9.c:19:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 16]	// tmp103, b
	add	x0, x2, x0	// _7, tmp103, _6
	ldr	w0, [x0]	// _8, *_7
// problem9.c:19:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L6		//,
// problem9.c:19:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
	b	.L7		//
.L6:
// problem9.c:18:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 44]	// tmp105, i
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [sp, 44]	// tmp104, i
.L5:
// problem9.c:18:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 44]	// tmp106, i
	ldr	w0, [sp, 12]	// tmp107, size
	cmp	w1, w0	// tmp106, tmp107
	blt	.L8		//,
// problem9.c:21:     return 1;
	mov	w0, 1	// _10,
.L7:
// problem9.c:22: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC2:
	.string	"problem9.c"
	.align	3
.LC3:
	.string	"issame(result, (const int[]){0, 1}, 2)"
	.align	3
.LC4:
	.string	"issame(result, (const int[]){3, 1}, 2)"
	.align	3
.LC5:
	.string	"issame(result, (const int[]){100, 0}, 2)"
	.align	3
.LC6:
	.string	"issame(result, (const int[]){3 + 5 + 7, 3 * 5 * 7}, 2)"
	.align	3
.LC7:
	.string	"issame(result, (const int[]){10, 10}, 2)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
// problem9.c:24: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp100,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp99, tmp100,
	ldr	x1, [x0]	// tmp161,
	str	x1, [sp, 88]	// tmp161, D.4335
	mov	x1, 0	// tmp161
// problem9.c:28:     func0((int[]){}, 0, result);
	add	x1, sp, 32	// tmp101,,
	add	x0, sp, 16	// tmp102,,
	mov	x2, x1	//, tmp101
	mov	w1, 0	//,
	bl	func0		//
// problem9.c:29:     assert(issame(result, (const int[]){0, 1}, 2));
	str	wzr, [sp, 72]	//, MEM[(int[2] *)_56][0]
	mov	w0, 1	// tmp103,
	str	w0, [sp, 76]	// tmp103, MEM[(int[2] *)_56][1]
	add	x1, sp, 72	// tmp104,,
	add	x0, sp, 32	// tmp105,,
	mov	w2, 2	//,
	bl	issame		//
	cmp	w0, 0	// _1,
	bne	.L10		//,
// problem9.c:29:     assert(issame(result, (const int[]){0, 1}, 2));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp106,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp106,
	mov	w2, 29	//,
	adrp	x0, .LC2	// tmp107,
	add	x1, x0, :lo12:.LC2	//, tmp107,
	adrp	x0, .LC3	// tmp108,
	add	x0, x0, :lo12:.LC3	//, tmp108,
	bl	__assert_fail		//
.L10:
// problem9.c:32:     func0((int[]){1, 1, 1}, 3, result);
	adrp	x0, .LC0	// tmp110,
	add	x1, x0, :lo12:.LC0	// tmp109, tmp110,
	add	x0, sp, 56	// tmp111,,
	ldr	x2, [x1]	// tmp113,
	str	x2, [x0]	// tmp113, D.4294
	ldr	w1, [x1, 8]	// tmp114,
	str	w1, [x0, 8]	// tmp114, D.4294
// problem9.c:32:     func0((int[]){1, 1, 1}, 3, result);
	add	x1, sp, 32	// tmp115,,
	add	x0, sp, 56	// tmp116,,
	mov	x2, x1	//, tmp115
	mov	w1, 3	//,
	bl	func0		//
// problem9.c:33:     assert(issame(result, (const int[]){3, 1}, 2));
	mov	w0, 3	// tmp117,
	str	w0, [sp, 72]	// tmp117, MEM[(int[2] *)_56][0]
	mov	w0, 1	// tmp118,
	str	w0, [sp, 76]	// tmp118, MEM[(int[2] *)_56][1]
	add	x1, sp, 72	// tmp119,,
	add	x0, sp, 32	// tmp120,,
	mov	w2, 2	//,
	bl	issame		//
	cmp	w0, 0	// _2,
	bne	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp121,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp121,
	mov	w2, 33	//,
	adrp	x0, .LC2	// tmp122,
	add	x1, x0, :lo12:.LC2	//, tmp122,
	adrp	x0, .LC4	// tmp123,
	add	x0, x0, :lo12:.LC4	//, tmp123,
	bl	__assert_fail		//
.L11:
// problem9.c:36:     func0((int[]){100, 0}, 2, result);
	mov	w0, 100	// tmp124,
	str	w0, [sp, 40]	// tmp124, D.4297[0]
	str	wzr, [sp, 44]	//, D.4297[1]
// problem9.c:36:     func0((int[]){100, 0}, 2, result);
	add	x1, sp, 32	// tmp125,,
	add	x0, sp, 40	// tmp126,,
	mov	x2, x1	//, tmp125
	mov	w1, 2	//,
	bl	func0		//
// problem9.c:37:     assert(issame(result, (const int[]){100, 0}, 2));
	mov	w0, 100	// tmp127,
	str	w0, [sp, 72]	// tmp127, MEM[(int[2] *)_56][0]
	str	wzr, [sp, 76]	//, MEM[(int[2] *)_56][1]
	add	x1, sp, 72	// tmp128,,
	add	x0, sp, 32	// tmp129,,
	mov	w2, 2	//,
	bl	issame		//
	cmp	w0, 0	// _3,
	bne	.L12		//,
// problem9.c:37:     assert(issame(result, (const int[]){100, 0}, 2));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp130,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp130,
	mov	w2, 37	//,
	adrp	x0, .LC2	// tmp131,
	add	x1, x0, :lo12:.LC2	//, tmp131,
	adrp	x0, .LC5	// tmp132,
	add	x0, x0, :lo12:.LC5	//, tmp132,
	bl	__assert_fail		//
.L12:
// problem9.c:40:     func0((int[]){3, 5, 7}, 3, result);
	adrp	x0, .LC1	// tmp134,
	add	x1, x0, :lo12:.LC1	// tmp133, tmp134,
	add	x0, sp, 72	// tmp135,,
	ldr	x2, [x1]	// tmp137,
	str	x2, [x0]	// tmp137, MEM[(int[3] *)_56]
	ldr	w1, [x1, 8]	// tmp138,
	str	w1, [x0, 8]	// tmp138, MEM[(int[3] *)_56]
// problem9.c:40:     func0((int[]){3, 5, 7}, 3, result);
	add	x1, sp, 32	// tmp139,,
	add	x0, sp, 72	// tmp140,,
	mov	x2, x1	//, tmp139
	mov	w1, 3	//,
	bl	func0		//
// problem9.c:41:     assert(issame(result, (const int[]){3 + 5 + 7, 3 * 5 * 7}, 2));
	mov	w0, 15	// tmp141,
	str	w0, [sp, 48]	// tmp141, MEM[(int[2] *)_57][0]
	mov	w0, 105	// tmp142,
	str	w0, [sp, 52]	// tmp142, MEM[(int[2] *)_57][1]
	add	x1, sp, 48	// tmp143,,
	add	x0, sp, 32	// tmp144,,
	mov	w2, 2	//,
	bl	issame		//
	cmp	w0, 0	// _4,
	bne	.L13		//,
// problem9.c:41:     assert(issame(result, (const int[]){3 + 5 + 7, 3 * 5 * 7}, 2));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp145,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp145,
	mov	w2, 41	//,
	adrp	x0, .LC2	// tmp146,
	add	x1, x0, :lo12:.LC2	//, tmp146,
	adrp	x0, .LC6	// tmp147,
	add	x0, x0, :lo12:.LC6	//, tmp147,
	bl	__assert_fail		//
.L13:
// problem9.c:44:     func0((int[]){10}, 1, result);
	mov	w0, 10	// tmp148,
	str	w0, [sp, 24]	// tmp148, D.4303[0]
// problem9.c:44:     func0((int[]){10}, 1, result);
	add	x1, sp, 32	// tmp149,,
	add	x0, sp, 24	// tmp150,,
	mov	x2, x1	//, tmp149
	mov	w1, 1	//,
	bl	func0		//
// problem9.c:45:     assert(issame(result, (const int[]){10, 10}, 2));
	mov	w0, 10	// tmp151,
	str	w0, [sp, 48]	// tmp151, MEM[(int[2] *)_57][0]
	mov	w0, 10	// tmp152,
	str	w0, [sp, 52]	// tmp152, MEM[(int[2] *)_57][1]
	add	x1, sp, 48	// tmp153,,
	add	x0, sp, 32	// tmp154,,
	mov	w2, 2	//,
	bl	issame		//
	cmp	w0, 0	// _5,
	bne	.L14		//,
// problem9.c:45:     assert(issame(result, (const int[]){10, 10}, 2));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp155,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp155,
	mov	w2, 45	//,
	adrp	x0, .LC2	// tmp156,
	add	x1, x0, :lo12:.LC2	//, tmp156,
	adrp	x0, .LC7	// tmp157,
	add	x0, x0, :lo12:.LC7	//, tmp157,
	bl	__assert_fail		//
.L14:
// problem9.c:47:     return 0;
	mov	w0, 0	// _43,
// problem9.c:48: }
	mov	w1, w0	// <retval>, _43
	adrp	x0, :got:__stack_chk_guard	// tmp160,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp159, tmp160,
	ldr	x3, [sp, 88]	// tmp162, D.4335
	ldr	x2, [x0]	// tmp163,
	subs	x3, x3, x2	// tmp162, tmp163
	mov	x2, 0	// tmp163
	beq	.L16		//,
// problem9.c:48: }
	bl	__stack_chk_fail		//
.L16:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1
	.word	1
	.word	1
	.align	3
.LC1:
	.word	3
	.word	5
	.word	7
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
