	.arch armv8-a
	.file	"problem9.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
// problem9.c:19:         if (a[i] != b[i]) return 0;
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
	sub	sp, sp, #96	//,,
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80	//,,
// problem9.c:24: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp99,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp99,
	ldr	x1, [x0]	// tmp159,
	str	x1, [sp, 72]	// tmp159, D.4917
	mov	x1, 0	// tmp159
// problem9.c:28:     func0((int[]){}, 0, result);
	add	x1, sp, 16	// tmp100,,
	mov	x0, sp	// tmp101,
	mov	x2, x1	//, tmp100
	mov	w1, 0	//,
	bl	func0		//
// problem9.c:29:     assert(issame(result, (const int[]){0, 1}, 2));
	str	wzr, [sp, 56]	//, MEM[(int[2] *)_55][0]
	mov	w0, 1	// tmp102,
	str	w0, [sp, 60]	// tmp102, MEM[(int[2] *)_55][1]
	add	x1, sp, 56	// tmp103,,
	add	x0, sp, 16	// tmp104,,
	mov	w2, 2	//,
	bl	issame		//
// problem9.c:29:     assert(issame(result, (const int[]){0, 1}, 2));
	cmp	w0, 0	// _1,
	bne	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp105,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp105,
	mov	w2, 29	//,
	adrp	x0, .LC2	// tmp106,
	add	x1, x0, :lo12:.LC2	//, tmp106,
	adrp	x0, .LC3	// tmp107,
	add	x0, x0, :lo12:.LC3	//, tmp107,
	bl	__assert_fail		//
.L10:
// problem9.c:32:     func0((int[]){1, 1, 1}, 3, result);
	adrp	x0, .LC0	// tmp109,
	add	x1, x0, :lo12:.LC0	// tmp108, tmp109,
	add	x0, sp, 40	// tmp110,,
	ldr	x2, [x1]	// tmp112,
	str	x2, [x0]	// tmp112, D.4876
	ldr	w1, [x1, 8]	// tmp113,
	str	w1, [x0, 8]	// tmp113, D.4876
// problem9.c:32:     func0((int[]){1, 1, 1}, 3, result);
	add	x1, sp, 16	// tmp114,,
	add	x0, sp, 40	// tmp115,,
	mov	x2, x1	//, tmp114
	mov	w1, 3	//,
	bl	func0		//
// problem9.c:33:     assert(issame(result, (const int[]){3, 1}, 2));
	mov	w0, 3	// tmp116,
	str	w0, [sp, 56]	// tmp116, MEM[(int[2] *)_55][0]
	mov	w0, 1	// tmp117,
	str	w0, [sp, 60]	// tmp117, MEM[(int[2] *)_55][1]
	add	x1, sp, 56	// tmp118,,
	add	x0, sp, 16	// tmp119,,
	mov	w2, 2	//,
	bl	issame		//
// problem9.c:33:     assert(issame(result, (const int[]){3, 1}, 2));
	cmp	w0, 0	// _2,
	bne	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp120,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp120,
	mov	w2, 33	//,
	adrp	x0, .LC2	// tmp121,
	add	x1, x0, :lo12:.LC2	//, tmp121,
	adrp	x0, .LC4	// tmp122,
	add	x0, x0, :lo12:.LC4	//, tmp122,
	bl	__assert_fail		//
.L11:
// problem9.c:36:     func0((int[]){100, 0}, 2, result);
	mov	w0, 100	// tmp123,
	str	w0, [sp, 24]	// tmp123, D.4879[0]
	str	wzr, [sp, 28]	//, D.4879[1]
// problem9.c:36:     func0((int[]){100, 0}, 2, result);
	add	x1, sp, 16	// tmp124,,
	add	x0, sp, 24	// tmp125,,
	mov	x2, x1	//, tmp124
	mov	w1, 2	//,
	bl	func0		//
// problem9.c:37:     assert(issame(result, (const int[]){100, 0}, 2));
	mov	w0, 100	// tmp126,
	str	w0, [sp, 56]	// tmp126, MEM[(int[2] *)_55][0]
	str	wzr, [sp, 60]	//, MEM[(int[2] *)_55][1]
	add	x1, sp, 56	// tmp127,,
	add	x0, sp, 16	// tmp128,,
	mov	w2, 2	//,
	bl	issame		//
// problem9.c:37:     assert(issame(result, (const int[]){100, 0}, 2));
	cmp	w0, 0	// _3,
	bne	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp129,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp129,
	mov	w2, 37	//,
	adrp	x0, .LC2	// tmp130,
	add	x1, x0, :lo12:.LC2	//, tmp130,
	adrp	x0, .LC5	// tmp131,
	add	x0, x0, :lo12:.LC5	//, tmp131,
	bl	__assert_fail		//
.L12:
// problem9.c:40:     func0((int[]){3, 5, 7}, 3, result);
	adrp	x0, .LC1	// tmp133,
	add	x1, x0, :lo12:.LC1	// tmp132, tmp133,
	add	x0, sp, 56	// tmp134,,
	ldr	x2, [x1]	// tmp136,
	str	x2, [x0]	// tmp136, MEM[(int[3] *)_55]
	ldr	w1, [x1, 8]	// tmp137,
	str	w1, [x0, 8]	// tmp137, MEM[(int[3] *)_55]
// problem9.c:40:     func0((int[]){3, 5, 7}, 3, result);
	add	x1, sp, 16	// tmp138,,
	add	x0, sp, 56	// tmp139,,
	mov	x2, x1	//, tmp138
	mov	w1, 3	//,
	bl	func0		//
// problem9.c:41:     assert(issame(result, (const int[]){3 + 5 + 7, 3 * 5 * 7}, 2));
	mov	w0, 15	// tmp140,
	str	w0, [sp, 32]	// tmp140, MEM[(int[2] *)_56][0]
	mov	w0, 105	// tmp141,
	str	w0, [sp, 36]	// tmp141, MEM[(int[2] *)_56][1]
	add	x1, sp, 32	// tmp142,,
	add	x0, sp, 16	// tmp143,,
	mov	w2, 2	//,
	bl	issame		//
// problem9.c:41:     assert(issame(result, (const int[]){3 + 5 + 7, 3 * 5 * 7}, 2));
	cmp	w0, 0	// _4,
	bne	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp144,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp144,
	mov	w2, 41	//,
	adrp	x0, .LC2	// tmp145,
	add	x1, x0, :lo12:.LC2	//, tmp145,
	adrp	x0, .LC6	// tmp146,
	add	x0, x0, :lo12:.LC6	//, tmp146,
	bl	__assert_fail		//
.L13:
// problem9.c:44:     func0((int[]){10}, 1, result);
	mov	w0, 10	// tmp147,
	str	w0, [sp, 8]	// tmp147, D.4885[0]
// problem9.c:44:     func0((int[]){10}, 1, result);
	add	x1, sp, 16	// tmp148,,
	add	x0, sp, 8	// tmp149,,
	mov	x2, x1	//, tmp148
	mov	w1, 1	//,
	bl	func0		//
// problem9.c:45:     assert(issame(result, (const int[]){10, 10}, 2));
	mov	w0, 10	// tmp150,
	str	w0, [sp, 32]	// tmp150, MEM[(int[2] *)_56][0]
	mov	w0, 10	// tmp151,
	str	w0, [sp, 36]	// tmp151, MEM[(int[2] *)_56][1]
	add	x1, sp, 32	// tmp152,,
	add	x0, sp, 16	// tmp153,,
	mov	w2, 2	//,
	bl	issame		//
// problem9.c:45:     assert(issame(result, (const int[]){10, 10}, 2));
	cmp	w0, 0	// _5,
	bne	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp154,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp154,
	mov	w2, 45	//,
	adrp	x0, .LC2	// tmp155,
	add	x1, x0, :lo12:.LC2	//, tmp155,
	adrp	x0, .LC7	// tmp156,
	add	x0, x0, :lo12:.LC7	//, tmp156,
	bl	__assert_fail		//
.L14:
// problem9.c:47:     return 0;
	mov	w0, 0	// _42,
// problem9.c:48: }
	mov	w1, w0	// <retval>, _42
	adrp	x0, :got:__stack_chk_guard	// tmp158,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp158,
	ldr	x3, [sp, 72]	// tmp160, D.4917
	ldr	x2, [x0]	// tmp161,
	subs	x3, x3, x2	// tmp160, tmp161
	mov	x2, 0	// tmp161
	beq	.L16		//,
	bl	__stack_chk_fail		//
.L16:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 80]	//,,
	add	sp, sp, 96	//,,
	.cfi_restore 29
	.cfi_restore 30
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
