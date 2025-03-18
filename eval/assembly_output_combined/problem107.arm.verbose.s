	.arch armv8-a
	.file	"problem107.c"
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
	str	w0, [sp, 28]	// n, n
// problem107.c:5:     int* out = (int*)malloc(n * sizeof(int));
	ldrsw	x0, [sp, 28]	// _1, n
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 56]	// tmp106, out
// problem107.c:6:     int sum = 0, prod = 1;
	str	wzr, [sp, 44]	//, sum
// problem107.c:6:     int sum = 0, prod = 1;
	mov	w0, 1	// tmp107,
	str	w0, [sp, 48]	// tmp107, prod
// problem107.c:7:     for (int i = 1; i <= n; i++) {
	mov	w0, 1	// tmp108,
	str	w0, [sp, 52]	// tmp108, i
// problem107.c:7:     for (int i = 1; i <= n; i++) {
	b	.L2		//
.L5:
// problem107.c:8:         sum += i;
	ldr	w1, [sp, 44]	// tmp110, sum
	ldr	w0, [sp, 52]	// tmp111, i
	add	w0, w1, w0	// tmp109, tmp110, tmp111
	str	w0, [sp, 44]	// tmp109, sum
// problem107.c:9:         prod *= i;
	ldr	w1, [sp, 48]	// tmp113, prod
	ldr	w0, [sp, 52]	// tmp114, i
	mul	w0, w1, w0	// tmp112, tmp113, tmp114
	str	w0, [sp, 48]	// tmp112, prod
// problem107.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	ldr	w0, [sp, 52]	// i.0_3, i
	and	w0, w0, 1	// _4, i.0_3,
// problem107.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	cmp	w0, 0	// _4,
	bne	.L3		//,
// problem107.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	ldrsw	x0, [sp, 52]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	sub	x0, x0, #4	// _7, _6,
	ldr	x1, [sp, 56]	// tmp115, out
	add	x0, x1, x0	// _8, tmp115, _7
// problem107.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	ldr	w1, [sp, 48]	// tmp116, prod
	str	w1, [x0]	// tmp116, *_8
	b	.L4		//
.L3:
// problem107.c:11:         else out[i - 1] = sum;
	ldrsw	x0, [sp, 52]	// _9, i
	lsl	x0, x0, 2	// _10, _9,
	sub	x0, x0, #4	// _11, _10,
	ldr	x1, [sp, 56]	// tmp117, out
	add	x0, x1, x0	// _12, tmp117, _11
// problem107.c:11:         else out[i - 1] = sum;
	ldr	w1, [sp, 44]	// tmp118, sum
	str	w1, [x0]	// tmp118, *_12
.L4:
// problem107.c:7:     for (int i = 1; i <= n; i++) {
	ldr	w0, [sp, 52]	// tmp120, i
	add	w0, w0, 1	// tmp119, tmp120,
	str	w0, [sp, 52]	// tmp119, i
.L2:
// problem107.c:7:     for (int i = 1; i <= n; i++) {
	ldr	w1, [sp, 52]	// tmp121, i
	ldr	w0, [sp, 28]	// tmp122, n
	cmp	w1, w0	// tmp121, tmp122
	ble	.L5		//,
// problem107.c:13:     return out;
	ldr	x0, [sp, 56]	// _25, out
// problem107.c:14: }
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
	str	w1, [sp, 20]	// a_size, a_size
	str	x2, [sp, 8]	// b, b
	str	w3, [sp, 16]	// b_size, b_size
// problem107.c:23:     if (a_size != b_size) return 0;
	ldr	w1, [sp, 20]	// tmp102, a_size
	ldr	w0, [sp, 16]	// tmp103, b_size
	cmp	w1, w0	// tmp102, tmp103
	beq	.L8		//,
// problem107.c:23:     if (a_size != b_size) return 0;
	mov	w0, 0	// _10,
// problem107.c:23:     if (a_size != b_size) return 0;
	b	.L9		//
.L8:
// problem107.c:24:     for (int i = 0; i < a_size; i++) {
	str	wzr, [sp, 44]	//, i
// problem107.c:24:     for (int i = 0; i < a_size; i++) {
	b	.L10		//
.L12:
// problem107.c:25:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp104, a
	add	x0, x1, x0	// _3, tmp104, _2
	ldr	w1, [x0]	// _4, *_3
// problem107.c:25:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 8]	// tmp105, b
	add	x0, x2, x0	// _7, tmp105, _6
	ldr	w0, [x0]	// _8, *_7
// problem107.c:25:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L11		//,
// problem107.c:25:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
// problem107.c:25:         if (a[i] != b[i]) return 0;
	b	.L9		//
.L11:
// problem107.c:24:     for (int i = 0; i < a_size; i++) {
	ldr	w0, [sp, 44]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 44]	// tmp106, i
.L10:
// problem107.c:24:     for (int i = 0; i < a_size; i++) {
	ldr	w1, [sp, 44]	// tmp108, i
	ldr	w0, [sp, 20]	// tmp109, a_size
	cmp	w1, w0	// tmp108, tmp109
	blt	.L12		//,
// problem107.c:27:     return 1;
	mov	w0, 1	// _10,
.L9:
// problem107.c:28: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC3:
	.string	"problem107.c"
	.align	3
.LC4:
	.string	"issame(result, 5, expected1, 5)"
	.align	3
.LC5:
	.string	"issame(result, 7, expected2, 7)"
	.align	3
.LC6:
	.string	"issame(result, 1, expected3, 1)"
	.align	3
.LC7:
	.string	"issame(result, 3, expected4, 3)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #112	//,,
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 96]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 96	//,,
// problem107.c:30: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp98,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp98,
	ldr	x1, [x0]	// tmp136,
	str	x1, [sp, 88]	// tmp136, D.5430
	mov	x1, 0	// tmp136
// problem107.c:32:     int expected1[] = {1, 2, 6, 24, 15};
	adrp	x0, .LC0	// tmp100,
	add	x0, x0, :lo12:.LC0	// tmp99, tmp100,
	add	x2, sp, 32	// tmp101,,
	mov	x3, x0	// tmp102, tmp99
	ldp	x0, x1, [x3]	// tmp103,
	stp	x0, x1, [x2]	// tmp103, expected1
	ldr	w0, [x3, 16]	// tmp104,
	str	w0, [x2, 16]	// tmp104, expected1
// problem107.c:33:     result = func0(5);
	mov	w0, 5	//,
	bl	func0		//
	str	x0, [sp]	//, result
// problem107.c:34:     assert(issame(result, 5, expected1, 5));
	add	x0, sp, 32	// tmp105,,
	mov	w3, 5	//,
	mov	x2, x0	//, tmp105
	mov	w1, 5	//,
	ldr	x0, [sp]	//, result
	bl	issame		//
// problem107.c:34:     assert(issame(result, 5, expected1, 5));
	cmp	w0, 0	// _1,
	bne	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp106,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp106,
	mov	w2, 34	//,
	adrp	x0, .LC3	// tmp107,
	add	x1, x0, :lo12:.LC3	//, tmp107,
	adrp	x0, .LC4	// tmp108,
	add	x0, x0, :lo12:.LC4	//, tmp108,
	bl	__assert_fail		//
.L14:
// problem107.c:35:     free(result);
	ldr	x0, [sp]	//, result
	bl	free		//
// problem107.c:37:     int expected2[] = {1, 2, 6, 24, 15, 720, 28};
	adrp	x0, .LC1	// tmp110,
	add	x1, x0, :lo12:.LC1	// tmp109, tmp110,
	add	x0, sp, 56	// tmp111,,
	ldr	q0, [x1]	// tmp113,
	str	q0, [x0]	// tmp113, expected2
	ldr	q0, [x1, 12]	// tmp114,
	str	q0, [x0, 12]	// tmp114, expected2
// problem107.c:38:     result = func0(7);
	mov	w0, 7	//,
	bl	func0		//
	str	x0, [sp]	//, result
// problem107.c:39:     assert(issame(result, 7, expected2, 7));
	add	x0, sp, 56	// tmp115,,
	mov	w3, 7	//,
	mov	x2, x0	//, tmp115
	mov	w1, 7	//,
	ldr	x0, [sp]	//, result
	bl	issame		//
// problem107.c:39:     assert(issame(result, 7, expected2, 7));
	cmp	w0, 0	// _2,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 39	//,
	adrp	x0, .LC3	// tmp117,
	add	x1, x0, :lo12:.LC3	//, tmp117,
	adrp	x0, .LC5	// tmp118,
	add	x0, x0, :lo12:.LC5	//, tmp118,
	bl	__assert_fail		//
.L15:
// problem107.c:40:     free(result);
	ldr	x0, [sp]	//, result
	bl	free		//
// problem107.c:42:     int expected3[] = {1};
	mov	w0, 1	// tmp119,
	str	w0, [sp, 8]	// tmp119, expected3[0]
// problem107.c:43:     result = func0(1);
	mov	w0, 1	//,
	bl	func0		//
	str	x0, [sp]	//, result
// problem107.c:44:     assert(issame(result, 1, expected3, 1));
	add	x0, sp, 8	// tmp120,,
	mov	w3, 1	//,
	mov	x2, x0	//, tmp120
	mov	w1, 1	//,
	ldr	x0, [sp]	//, result
	bl	issame		//
// problem107.c:44:     assert(issame(result, 1, expected3, 1));
	cmp	w0, 0	// _3,
	bne	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp121,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp121,
	mov	w2, 44	//,
	adrp	x0, .LC3	// tmp122,
	add	x1, x0, :lo12:.LC3	//, tmp122,
	adrp	x0, .LC6	// tmp123,
	add	x0, x0, :lo12:.LC6	//, tmp123,
	bl	__assert_fail		//
.L16:
// problem107.c:45:     free(result);
	ldr	x0, [sp]	//, result
	bl	free		//
// problem107.c:47:     int expected4[] = {1, 2, 6};
	adrp	x0, .LC2	// tmp125,
	add	x1, x0, :lo12:.LC2	// tmp124, tmp125,
	add	x0, sp, 16	// tmp126,,
	ldr	x2, [x1]	// tmp128,
	str	x2, [x0]	// tmp128, expected4
	ldr	w1, [x1, 8]	// tmp129,
	str	w1, [x0, 8]	// tmp129, expected4
// problem107.c:48:     result = func0(3);
	mov	w0, 3	//,
	bl	func0		//
	str	x0, [sp]	//, result
// problem107.c:49:     assert(issame(result, 3, expected4, 3));
	add	x0, sp, 16	// tmp130,,
	mov	w3, 3	//,
	mov	x2, x0	//, tmp130
	mov	w1, 3	//,
	ldr	x0, [sp]	//, result
	bl	issame		//
// problem107.c:49:     assert(issame(result, 3, expected4, 3));
	cmp	w0, 0	// _4,
	bne	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 49	//,
	adrp	x0, .LC3	// tmp132,
	add	x1, x0, :lo12:.LC3	//, tmp132,
	adrp	x0, .LC7	// tmp133,
	add	x0, x0, :lo12:.LC7	//, tmp133,
	bl	__assert_fail		//
.L17:
// problem107.c:50:     free(result);
	ldr	x0, [sp]	//, result
	bl	free		//
// problem107.c:52:     return 0;
	mov	w0, 0	// _30,
// problem107.c:53: }
	mov	w1, w0	// <retval>, _30
	adrp	x0, :got:__stack_chk_guard	// tmp135,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp135,
	ldr	x3, [sp, 88]	// tmp137, D.5430
	ldr	x2, [x0]	// tmp138,
	subs	x3, x3, x2	// tmp137, tmp138
	mov	x2, 0	// tmp138
	beq	.L19		//,
	bl	__stack_chk_fail		//
.L19:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 96]	//,,
	add	sp, sp, 112	//,,
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
	.word	6
	.word	24
	.word	15
	.align	3
.LC1:
	.word	1
	.word	2
	.word	6
	.word	24
	.word	15
	.word	720
	.word	28
	.align	3
.LC2:
	.word	1
	.word	2
	.word	6
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
