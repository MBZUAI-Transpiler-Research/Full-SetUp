	.arch armv8-a
	.file	"problem164.c"
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
	str	w0, [sp, 28]	// a, a
	str	w1, [sp, 24]	// b, b
	str	x2, [sp, 16]	// out, out
	str	x3, [sp, 8]	// size, size
// problem164.c:5:     *size = 0;
	ldr	x0, [sp, 8]	// tmp99, size
	str	wzr, [x0]	//, *size_15(D)
// problem164.c:7:     if (b < a) {
	ldr	w1, [sp, 24]	// tmp100, b
	ldr	w0, [sp, 28]	// tmp101, a
	cmp	w1, w0	// tmp100, tmp101
	bge	.L2		//,
// problem164.c:8:         m = a;
	ldr	w0, [sp, 28]	// tmp102, a
	str	w0, [sp, 44]	// tmp102, m
// problem164.c:9:         a = b;
	ldr	w0, [sp, 24]	// tmp103, b
	str	w0, [sp, 28]	// tmp103, a
// problem164.c:10:         b = m;
	ldr	w0, [sp, 44]	// tmp104, m
	str	w0, [sp, 24]	// tmp104, b
.L2:
// problem164.c:13:     for (int i = a; i <= b; i++) {
	ldr	w0, [sp, 28]	// tmp105, a
	str	w0, [sp, 40]	// tmp105, i
// problem164.c:13:     for (int i = a; i <= b; i++) {
	b	.L3		//
.L5:
// problem164.c:14:         if (i < 10 && i % 2 == 0) {
	ldr	w0, [sp, 40]	// tmp106, i
	cmp	w0, 9	// tmp106,
	bgt	.L4		//,
// problem164.c:14:         if (i < 10 && i % 2 == 0) {
	ldr	w0, [sp, 40]	// i.0_1, i
	and	w0, w0, 1	// _2, i.0_1,
// problem164.c:14:         if (i < 10 && i % 2 == 0) {
	cmp	w0, 0	// _2,
	bne	.L4		//,
// problem164.c:15:             out[(*size)++] = i;
	ldr	x0, [sp, 8]	// tmp107, size
	ldr	w0, [x0]	// _3, *size_15(D)
// problem164.c:15:             out[(*size)++] = i;
	add	w2, w0, 1	// _5, _3,
	ldr	x1, [sp, 8]	// tmp108, size
	str	w2, [x1]	// _5, *size_15(D)
	sxtw	x0, w0	// _6, _3
// problem164.c:15:             out[(*size)++] = i;
	lsl	x0, x0, 2	// _7, _6,
	ldr	x1, [sp, 16]	// tmp109, out
	add	x0, x1, x0	// _8, tmp109, _7
// problem164.c:15:             out[(*size)++] = i;
	ldr	w1, [sp, 40]	// tmp110, i
	str	w1, [x0]	// tmp110, *_8
.L4:
// problem164.c:13:     for (int i = a; i <= b; i++) {
	ldr	w0, [sp, 40]	// tmp112, i
	add	w0, w0, 1	// tmp111, tmp112,
	str	w0, [sp, 40]	// tmp111, i
.L3:
// problem164.c:13:     for (int i = a; i <= b; i++) {
	ldr	w1, [sp, 40]	// tmp113, i
	ldr	w0, [sp, 24]	// tmp114, b
	cmp	w1, w0	// tmp113, tmp114
	ble	.L5		//,
// problem164.c:18: }
	nop	
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
	str	w1, [sp, 20]	// a_size, a_size
	str	x2, [sp, 8]	// b, b
	str	w3, [sp, 16]	// b_size, b_size
// problem164.c:25:     if (a_size != b_size) return 0;
	ldr	w1, [sp, 20]	// tmp102, a_size
	ldr	w0, [sp, 16]	// tmp103, b_size
	cmp	w1, w0	// tmp102, tmp103
	beq	.L7		//,
// problem164.c:25:     if (a_size != b_size) return 0;
	mov	w0, 0	// _10,
// problem164.c:25:     if (a_size != b_size) return 0;
	b	.L8		//
.L7:
// problem164.c:26:     for (int i = 0; i < a_size; i++) {
	str	wzr, [sp, 44]	//, i
// problem164.c:26:     for (int i = 0; i < a_size; i++) {
	b	.L9		//
.L11:
// problem164.c:27:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp104, a
	add	x0, x1, x0	// _3, tmp104, _2
	ldr	w1, [x0]	// _4, *_3
// problem164.c:27:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 8]	// tmp105, b
	add	x0, x2, x0	// _7, tmp105, _6
	ldr	w0, [x0]	// _8, *_7
// problem164.c:27:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L10		//,
// problem164.c:27:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
// problem164.c:27:         if (a[i] != b[i]) return 0;
	b	.L8		//
.L10:
// problem164.c:26:     for (int i = 0; i < a_size; i++) {
	ldr	w0, [sp, 44]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 44]	// tmp106, i
.L9:
// problem164.c:26:     for (int i = 0; i < a_size; i++) {
	ldr	w1, [sp, 44]	// tmp108, i
	ldr	w0, [sp, 20]	// tmp109, a_size
	cmp	w1, w0	// tmp108, tmp109
	blt	.L11		//,
// problem164.c:29:     return 1;
	mov	w0, 1	// _10,
.L8:
// problem164.c:30: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"problem164.c"
	.align	3
.LC1:
	.string	"issame(result, size, expected1, 4)"
	.align	3
.LC2:
	.string	"issame(result, size, expected2, 4)"
	.align	3
.LC3:
	.string	"issame(result, size, expected3, 4)"
	.align	3
.LC4:
	.string	"issame(result, size, expected4, 0)"
	.align	3
.LC5:
	.string	"All tests passed."
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #128	//,,
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 112]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 112	//,,
// problem164.c:32: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp102,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp102,
	ldr	x1, [x0]	// tmp146,
	str	x1, [sp, 104]	// tmp146, D.4912
	mov	x1, 0	// tmp146
// problem164.c:35:     int expected1[] = {2, 4, 6, 8};
	mov	w0, 2	// tmp103,
	str	w0, [sp, 16]	// tmp103, expected1[0]
	mov	w0, 4	// tmp104,
	str	w0, [sp, 20]	// tmp104, expected1[1]
	mov	w0, 6	// tmp105,
	str	w0, [sp, 24]	// tmp105, expected1[2]
	mov	w0, 8	// tmp106,
	str	w0, [sp, 28]	// tmp106, expected1[3]
// problem164.c:36:     func0(2, 10, result, &size);
	add	x1, sp, 4	// tmp107,,
	add	x0, sp, 64	// tmp108,,
	mov	x3, x1	//, tmp107
	mov	x2, x0	//, tmp108
	mov	w1, 10	//,
	mov	w0, 2	//,
	bl	func0		//
// problem164.c:37:     assert(issame(result, size, expected1, 4));
	ldr	w1, [sp, 4]	// size.1_1, size
	add	x2, sp, 16	// tmp109,,
	add	x0, sp, 64	// tmp110,,
	mov	w3, 4	//,
	bl	issame		//
// problem164.c:37:     assert(issame(result, size, expected1, 4));
	cmp	w0, 0	// _2,
	bne	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp111,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp111,
	mov	w2, 37	//,
	adrp	x0, .LC0	// tmp112,
	add	x1, x0, :lo12:.LC0	//, tmp112,
	adrp	x0, .LC1	// tmp113,
	add	x0, x0, :lo12:.LC1	//, tmp113,
	bl	__assert_fail		//
.L13:
// problem164.c:39:     int expected2[] = {2, 4, 6, 8};
	mov	w0, 2	// tmp114,
	str	w0, [sp, 32]	// tmp114, expected2[0]
	mov	w0, 4	// tmp115,
	str	w0, [sp, 36]	// tmp115, expected2[1]
	mov	w0, 6	// tmp116,
	str	w0, [sp, 40]	// tmp116, expected2[2]
	mov	w0, 8	// tmp117,
	str	w0, [sp, 44]	// tmp117, expected2[3]
// problem164.c:40:     func0(10, 2, result, &size);
	add	x1, sp, 4	// tmp118,,
	add	x0, sp, 64	// tmp119,,
	mov	x3, x1	//, tmp118
	mov	x2, x0	//, tmp119
	mov	w1, 2	//,
	mov	w0, 10	//,
	bl	func0		//
// problem164.c:41:     assert(issame(result, size, expected2, 4));
	ldr	w1, [sp, 4]	// size.2_3, size
	add	x2, sp, 32	// tmp120,,
	add	x0, sp, 64	// tmp121,,
	mov	w3, 4	//,
	bl	issame		//
// problem164.c:41:     assert(issame(result, size, expected2, 4));
	cmp	w0, 0	// _4,
	bne	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp122,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp122,
	mov	w2, 41	//,
	adrp	x0, .LC0	// tmp123,
	add	x1, x0, :lo12:.LC0	//, tmp123,
	adrp	x0, .LC2	// tmp124,
	add	x0, x0, :lo12:.LC2	//, tmp124,
	bl	__assert_fail		//
.L14:
// problem164.c:43:     int expected3[] = {2, 4, 6, 8};
	mov	w0, 2	// tmp125,
	str	w0, [sp, 48]	// tmp125, expected3[0]
	mov	w0, 4	// tmp126,
	str	w0, [sp, 52]	// tmp126, expected3[1]
	mov	w0, 6	// tmp127,
	str	w0, [sp, 56]	// tmp127, expected3[2]
	mov	w0, 8	// tmp128,
	str	w0, [sp, 60]	// tmp128, expected3[3]
// problem164.c:44:     func0(132, 2, result, &size);
	add	x1, sp, 4	// tmp129,,
	add	x0, sp, 64	// tmp130,,
	mov	x3, x1	//, tmp129
	mov	x2, x0	//, tmp130
	mov	w1, 2	//,
	mov	w0, 132	//,
	bl	func0		//
// problem164.c:45:     assert(issame(result, size, expected3, 4));
	ldr	w1, [sp, 4]	// size.3_5, size
	add	x2, sp, 48	// tmp131,,
	add	x0, sp, 64	// tmp132,,
	mov	w3, 4	//,
	bl	issame		//
// problem164.c:45:     assert(issame(result, size, expected3, 4));
	cmp	w0, 0	// _6,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp133,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp133,
	mov	w2, 45	//,
	adrp	x0, .LC0	// tmp134,
	add	x1, x0, :lo12:.LC0	//, tmp134,
	adrp	x0, .LC3	// tmp135,
	add	x0, x0, :lo12:.LC3	//, tmp135,
	bl	__assert_fail		//
.L15:
// problem164.c:48:     func0(17, 89, result, &size);
	add	x1, sp, 4	// tmp136,,
	add	x0, sp, 64	// tmp137,,
	mov	x3, x1	//, tmp136
	mov	x2, x0	//, tmp137
	mov	w1, 89	//,
	mov	w0, 17	//,
	bl	func0		//
// problem164.c:49:     assert(issame(result, size, expected4, 0));
	ldr	w1, [sp, 4]	// size.4_7, size
	add	x2, sp, 8	// tmp138,,
	add	x0, sp, 64	// tmp139,,
	mov	w3, 0	//,
	bl	issame		//
// problem164.c:49:     assert(issame(result, size, expected4, 0));
	cmp	w0, 0	// _8,
	bne	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp140,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp140,
	mov	w2, 49	//,
	adrp	x0, .LC0	// tmp141,
	add	x1, x0, :lo12:.LC0	//, tmp141,
	adrp	x0, .LC4	// tmp142,
	add	x0, x0, :lo12:.LC4	//, tmp142,
	bl	__assert_fail		//
.L16:
// problem164.c:51:     printf("All tests passed.\n");
	adrp	x0, .LC5	// tmp143,
	add	x0, x0, :lo12:.LC5	//, tmp143,
	bl	puts		//
// problem164.c:53:     return 0;
	mov	w0, 0	// _35,
// problem164.c:54: }
	mov	w1, w0	// <retval>, _35
	adrp	x0, :got:__stack_chk_guard	// tmp145,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp145,
	ldr	x3, [sp, 104]	// tmp147, D.4912
	ldr	x2, [x0]	// tmp148,
	subs	x3, x3, x2	// tmp147, tmp148
	mov	x2, 0	// tmp148
	beq	.L18		//,
	bl	__stack_chk_fail		//
.L18:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 112]	//,,
	add	sp, sp, 128	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
