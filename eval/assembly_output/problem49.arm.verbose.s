	.arch armv8-a
	.file	"problem49.c"
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
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// text, text
// problem49.c:6:     int len = strlen(text);
	ldr	x0, [sp, 24]	//, text
	bl	strlen		//
// problem49.c:6:     int len = strlen(text);
	str	w0, [sp, 44]	// tmp104, len
// problem49.c:7:     for (int i = 0; i < len / 2; i++) {
	str	wzr, [sp, 40]	//, i
// problem49.c:7:     for (int i = 0; i < len / 2; i++) {
	b	.L2		//
.L5:
// problem49.c:8:         if (text[i] != text[len - 1 - i]) {
	ldrsw	x0, [sp, 40]	// _2, i
	ldr	x1, [sp, 24]	// tmp105, text
	add	x0, x1, x0	// _3, tmp105, _2
	ldrb	w1, [x0]	// _4, *_3
// problem49.c:8:         if (text[i] != text[len - 1 - i]) {
	ldr	w0, [sp, 44]	// tmp106, len
	sub	w2, w0, #1	// _5, tmp106,
// problem49.c:8:         if (text[i] != text[len - 1 - i]) {
	ldr	w0, [sp, 40]	// tmp107, i
	sub	w0, w2, w0	// _6, _5, tmp107
	sxtw	x0, w0	// _7, _6
// problem49.c:8:         if (text[i] != text[len - 1 - i]) {
	ldr	x2, [sp, 24]	// tmp108, text
	add	x0, x2, x0	// _8, tmp108, _7
	ldrb	w0, [x0]	// _9, *_8
// problem49.c:8:         if (text[i] != text[len - 1 - i]) {
	cmp	w1, w0	// _4, _9
	beq	.L3		//,
// problem49.c:9:             return false;
	mov	w0, 0	// _12,
	b	.L4		//
.L3:
// problem49.c:7:     for (int i = 0; i < len / 2; i++) {
	ldr	w0, [sp, 40]	// tmp110, i
	add	w0, w0, 1	// tmp109, tmp110,
	str	w0, [sp, 40]	// tmp109, i
.L2:
// problem49.c:7:     for (int i = 0; i < len / 2; i++) {
	ldr	w0, [sp, 44]	// tmp111, len
	lsr	w1, w0, 31	// tmp112, tmp111,
	add	w0, w1, w0	// tmp113, tmp112, tmp111
	asr	w0, w0, 1	// tmp114, tmp113,
	mov	w1, w0	// _10, tmp114
// problem49.c:7:     for (int i = 0; i < len / 2; i++) {
	ldr	w0, [sp, 40]	// tmp115, i
	cmp	w0, w1	// tmp115, _10
	blt	.L5		//,
// problem49.c:12:     return true;
	mov	w0, 1	// _12,
.L4:
// problem49.c:13: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"problem49.c"
	.align	3
.LC2:
	.string	"func0(\"\") == true"
	.align	3
.LC3:
	.string	"aba"
	.align	3
.LC4:
	.string	"func0(\"aba\") == true"
	.align	3
.LC5:
	.string	"aaaaa"
	.align	3
.LC6:
	.string	"func0(\"aaaaa\") == true"
	.align	3
.LC7:
	.string	"zbcd"
	.align	3
.LC8:
	.string	"func0(\"zbcd\") == false"
	.align	3
.LC9:
	.string	"xywyx"
	.align	3
.LC10:
	.string	"func0(\"xywyx\") == true"
	.align	3
.LC11:
	.string	"xywyz"
	.align	3
.LC12:
	.string	"func0(\"xywyz\") == false"
	.align	3
.LC13:
	.string	"xywzx"
	.align	3
.LC14:
	.string	"func0(\"xywzx\") == false"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
// problem49.c:22:     assert(func0("") == true);
	adrp	x0, .LC0	// tmp104,
	add	x0, x0, :lo12:.LC0	//, tmp104,
	bl	func0		//
	and	w0, w0, 255	// _1, tmp105
// problem49.c:22:     assert(func0("") == true);
	and	w0, w0, 1	// tmp106, _1,
	cmp	w0, 0	// tmp106,
	bne	.L7		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp107,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp107,
	mov	w2, 22	//,
	adrp	x0, .LC1	// tmp108,
	add	x1, x0, :lo12:.LC1	//, tmp108,
	adrp	x0, .LC2	// tmp109,
	add	x0, x0, :lo12:.LC2	//, tmp109,
	bl	__assert_fail		//
.L7:
// problem49.c:23:     assert(func0("aba") == true);
	adrp	x0, .LC3	// tmp110,
	add	x0, x0, :lo12:.LC3	//, tmp110,
	bl	func0		//
	and	w0, w0, 255	// _2, tmp111
// problem49.c:23:     assert(func0("aba") == true);
	and	w0, w0, 1	// tmp112, _2,
	cmp	w0, 0	// tmp112,
	bne	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp113,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp113,
	mov	w2, 23	//,
	adrp	x0, .LC1	// tmp114,
	add	x1, x0, :lo12:.LC1	//, tmp114,
	adrp	x0, .LC4	// tmp115,
	add	x0, x0, :lo12:.LC4	//, tmp115,
	bl	__assert_fail		//
.L8:
// problem49.c:24:     assert(func0("aaaaa") == true);
	adrp	x0, .LC5	// tmp116,
	add	x0, x0, :lo12:.LC5	//, tmp116,
	bl	func0		//
	and	w0, w0, 255	// _3, tmp117
// problem49.c:24:     assert(func0("aaaaa") == true);
	and	w0, w0, 1	// tmp118, _3,
	cmp	w0, 0	// tmp118,
	bne	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 24	//,
	adrp	x0, .LC1	// tmp120,
	add	x1, x0, :lo12:.LC1	//, tmp120,
	adrp	x0, .LC6	// tmp121,
	add	x0, x0, :lo12:.LC6	//, tmp121,
	bl	__assert_fail		//
.L9:
// problem49.c:25:     assert(func0("zbcd") == false);
	adrp	x0, .LC7	// tmp122,
	add	x0, x0, :lo12:.LC7	//, tmp122,
	bl	func0		//
	and	w0, w0, 255	// _4, tmp123
// problem49.c:25:     assert(func0("zbcd") == false);
	eor	w0, w0, 1	// tmp124, _4,
	and	w0, w0, 255	// _5, tmp124
	and	w0, w0, 1	// tmp125, _5,
	cmp	w0, 0	// tmp125,
	bne	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp126,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp126,
	mov	w2, 25	//,
	adrp	x0, .LC1	// tmp127,
	add	x1, x0, :lo12:.LC1	//, tmp127,
	adrp	x0, .LC8	// tmp128,
	add	x0, x0, :lo12:.LC8	//, tmp128,
	bl	__assert_fail		//
.L10:
// problem49.c:26:     assert(func0("xywyx") == true);
	adrp	x0, .LC9	// tmp129,
	add	x0, x0, :lo12:.LC9	//, tmp129,
	bl	func0		//
	and	w0, w0, 255	// _6, tmp130
// problem49.c:26:     assert(func0("xywyx") == true);
	and	w0, w0, 1	// tmp131, _6,
	cmp	w0, 0	// tmp131,
	bne	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp132,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp132,
	mov	w2, 26	//,
	adrp	x0, .LC1	// tmp133,
	add	x1, x0, :lo12:.LC1	//, tmp133,
	adrp	x0, .LC10	// tmp134,
	add	x0, x0, :lo12:.LC10	//, tmp134,
	bl	__assert_fail		//
.L11:
// problem49.c:27:     assert(func0("xywyz") == false);
	adrp	x0, .LC11	// tmp135,
	add	x0, x0, :lo12:.LC11	//, tmp135,
	bl	func0		//
	and	w0, w0, 255	// _7, tmp136
// problem49.c:27:     assert(func0("xywyz") == false);
	eor	w0, w0, 1	// tmp137, _7,
	and	w0, w0, 255	// _8, tmp137
	and	w0, w0, 1	// tmp138, _8,
	cmp	w0, 0	// tmp138,
	bne	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp139,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp139,
	mov	w2, 27	//,
	adrp	x0, .LC1	// tmp140,
	add	x1, x0, :lo12:.LC1	//, tmp140,
	adrp	x0, .LC12	// tmp141,
	add	x0, x0, :lo12:.LC12	//, tmp141,
	bl	__assert_fail		//
.L12:
// problem49.c:28:     assert(func0("xywzx") == false);
	adrp	x0, .LC13	// tmp142,
	add	x0, x0, :lo12:.LC13	//, tmp142,
	bl	func0		//
	and	w0, w0, 255	// _9, tmp143
// problem49.c:28:     assert(func0("xywzx") == false);
	eor	w0, w0, 1	// tmp144, _9,
	and	w0, w0, 255	// _10, tmp144
	and	w0, w0, 1	// tmp145, _10,
	cmp	w0, 0	// tmp145,
	bne	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp146,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp146,
	mov	w2, 28	//,
	adrp	x0, .LC1	// tmp147,
	add	x1, x0, :lo12:.LC1	//, tmp147,
	adrp	x0, .LC14	// tmp148,
	add	x0, x0, :lo12:.LC14	//, tmp148,
	bl	__assert_fail		//
.L13:
// problem49.c:30:     return 0;
	mov	w0, 0	// _26,
// problem49.c:31: }
	ldp	x29, x30, [sp], 16	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
