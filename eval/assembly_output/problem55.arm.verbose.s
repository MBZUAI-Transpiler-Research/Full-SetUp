	.arch armv8-a
	.file	"problem55.c"
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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 24]	// s0, s0
	str	x1, [sp, 16]	// s1, s1
// problem55.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	ldr	x0, [sp, 24]	//, s0
	bl	strlen		//
// problem55.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	str	w0, [sp, 56]	// tmp110, len0
// problem55.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	ldr	x0, [sp, 16]	//, s1
	bl	strlen		//
// problem55.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	str	w0, [sp, 60]	// tmp111, len1
// problem55.c:7:     for (int i = 0; i < len0; i++) {
	str	wzr, [sp, 40]	//, i
// problem55.c:7:     for (int i = 0; i < len0; i++) {
	b	.L2		//
.L9:
// problem55.c:8:         bool found = false;
	strb	wzr, [sp, 38]	//, found
// problem55.c:9:         for (int j = 0; j < len1; j++) {
	str	wzr, [sp, 44]	//, j
// problem55.c:9:         for (int j = 0; j < len1; j++) {
	b	.L3		//
.L6:
// problem55.c:10:             if (s0[i] == s1[j]) {
	ldrsw	x0, [sp, 40]	// _3, i
	ldr	x1, [sp, 24]	// tmp112, s0
	add	x0, x1, x0	// _4, tmp112, _3
	ldrb	w1, [x0]	// _5, *_4
// problem55.c:10:             if (s0[i] == s1[j]) {
	ldrsw	x0, [sp, 44]	// _6, j
	ldr	x2, [sp, 16]	// tmp113, s1
	add	x0, x2, x0	// _7, tmp113, _6
	ldrb	w0, [x0]	// _8, *_7
// problem55.c:10:             if (s0[i] == s1[j]) {
	cmp	w1, w0	// _5, _8
	bne	.L4		//,
// problem55.c:11:                 found = true;
	mov	w0, 1	// tmp114,
	strb	w0, [sp, 38]	// tmp114, found
// problem55.c:12:                 break;
	b	.L5		//
.L4:
// problem55.c:9:         for (int j = 0; j < len1; j++) {
	ldr	w0, [sp, 44]	// tmp116, j
	add	w0, w0, 1	// tmp115, tmp116,
	str	w0, [sp, 44]	// tmp115, j
.L3:
// problem55.c:9:         for (int j = 0; j < len1; j++) {
	ldr	w1, [sp, 44]	// tmp117, j
	ldr	w0, [sp, 60]	// tmp118, len1
	cmp	w1, w0	// tmp117, tmp118
	blt	.L6		//,
.L5:
// problem55.c:15:         if (!found) return false;
	ldrb	w0, [sp, 38]	// tmp119, found
	eor	w0, w0, 1	// tmp120, tmp119,
	and	w0, w0, 255	// _9, tmp120
// problem55.c:15:         if (!found) return false;
	and	w0, w0, 1	// tmp121, _9,
	cmp	w0, 0	// tmp121,
	beq	.L7		//,
// problem55.c:15:         if (!found) return false;
	mov	w0, 0	// _23,
// problem55.c:15:         if (!found) return false;
	b	.L8		//
.L7:
// problem55.c:7:     for (int i = 0; i < len0; i++) {
	ldr	w0, [sp, 40]	// tmp123, i
	add	w0, w0, 1	// tmp122, tmp123,
	str	w0, [sp, 40]	// tmp122, i
.L2:
// problem55.c:7:     for (int i = 0; i < len0; i++) {
	ldr	w1, [sp, 40]	// tmp124, i
	ldr	w0, [sp, 56]	// tmp125, len0
	cmp	w1, w0	// tmp124, tmp125
	blt	.L9		//,
// problem55.c:17:     for (int i = 0; i < len1; i++) {
	str	wzr, [sp, 48]	//, i
// problem55.c:17:     for (int i = 0; i < len1; i++) {
	b	.L10		//
.L16:
// problem55.c:18:         bool found = false;
	strb	wzr, [sp, 39]	//, found
// problem55.c:19:         for (int j = 0; j < len0; j++) {
	str	wzr, [sp, 52]	//, j
// problem55.c:19:         for (int j = 0; j < len0; j++) {
	b	.L11		//
.L14:
// problem55.c:20:             if (s1[i] == s0[j]) {
	ldrsw	x0, [sp, 48]	// _10, i
	ldr	x1, [sp, 16]	// tmp126, s1
	add	x0, x1, x0	// _11, tmp126, _10
	ldrb	w1, [x0]	// _12, *_11
// problem55.c:20:             if (s1[i] == s0[j]) {
	ldrsw	x0, [sp, 52]	// _13, j
	ldr	x2, [sp, 24]	// tmp127, s0
	add	x0, x2, x0	// _14, tmp127, _13
	ldrb	w0, [x0]	// _15, *_14
// problem55.c:20:             if (s1[i] == s0[j]) {
	cmp	w1, w0	// _12, _15
	bne	.L12		//,
// problem55.c:21:                 found = true;
	mov	w0, 1	// tmp128,
	strb	w0, [sp, 39]	// tmp128, found
// problem55.c:22:                 break;
	b	.L13		//
.L12:
// problem55.c:19:         for (int j = 0; j < len0; j++) {
	ldr	w0, [sp, 52]	// tmp130, j
	add	w0, w0, 1	// tmp129, tmp130,
	str	w0, [sp, 52]	// tmp129, j
.L11:
// problem55.c:19:         for (int j = 0; j < len0; j++) {
	ldr	w1, [sp, 52]	// tmp131, j
	ldr	w0, [sp, 56]	// tmp132, len0
	cmp	w1, w0	// tmp131, tmp132
	blt	.L14		//,
.L13:
// problem55.c:25:         if (!found) return false;
	ldrb	w0, [sp, 39]	// tmp133, found
	eor	w0, w0, 1	// tmp134, tmp133,
	and	w0, w0, 255	// _16, tmp134
// problem55.c:25:         if (!found) return false;
	and	w0, w0, 1	// tmp135, _16,
	cmp	w0, 0	// tmp135,
	beq	.L15		//,
// problem55.c:25:         if (!found) return false;
	mov	w0, 0	// _23,
// problem55.c:25:         if (!found) return false;
	b	.L8		//
.L15:
// problem55.c:17:     for (int i = 0; i < len1; i++) {
	ldr	w0, [sp, 48]	// tmp137, i
	add	w0, w0, 1	// tmp136, tmp137,
	str	w0, [sp, 48]	// tmp136, i
.L10:
// problem55.c:17:     for (int i = 0; i < len1; i++) {
	ldr	w1, [sp, 48]	// tmp138, i
	ldr	w0, [sp, 60]	// tmp139, len1
	cmp	w1, w0	// tmp138, tmp139
	blt	.L16		//,
// problem55.c:27:     return true;
	mov	w0, 1	// _23,
.L8:
// problem55.c:28: }
	ldp	x29, x30, [sp], 64	//,,,
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
	.string	"dddzzzzzzzddeddabc"
	.align	3
.LC1:
	.string	"eabcdzzzz"
	.align	3
.LC2:
	.string	"problem55.c"
	.align	3
.LC3:
	.string	"func0(\"eabcdzzzz\", \"dddzzzzzzzddeddabc\") == true"
	.align	3
.LC4:
	.string	"dddddddabc"
	.align	3
.LC5:
	.string	"abcd"
	.align	3
.LC6:
	.string	"func0(\"abcd\", \"dddddddabc\") == true"
	.align	3
.LC7:
	.string	"func0(\"dddddddabc\", \"abcd\") == true"
	.align	3
.LC8:
	.string	"eabcd"
	.align	3
.LC9:
	.string	"func0(\"eabcd\", \"dddddddabc\") == false"
	.align	3
.LC10:
	.string	"dddddddabce"
	.align	3
.LC11:
	.string	"func0(\"abcd\", \"dddddddabce\") == false"
	.align	3
.LC12:
	.string	"dddzzzzzzzddddabc"
	.align	3
.LC13:
	.string	"func0(\"eabcdzzzz\", \"dddzzzzzzzddddabc\") == false"
	.align	3
.LC14:
	.string	"aaccc"
	.align	3
.LC15:
	.string	"aabb"
	.align	3
.LC16:
	.string	"func0(\"aabb\", \"aaccc\") == false"
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
// problem55.c:36:     assert(func0("eabcdzzzz", "dddzzzzzzzddeddabc") == true);
	adrp	x0, .LC0	// tmp105,
	add	x1, x0, :lo12:.LC0	//, tmp105,
	adrp	x0, .LC1	// tmp106,
	add	x0, x0, :lo12:.LC1	//, tmp106,
	bl	func0		//
	and	w0, w0, 255	// _1, tmp107
// problem55.c:36:     assert(func0("eabcdzzzz", "dddzzzzzzzddeddabc") == true);
	and	w0, w0, 1	// tmp108, _1,
	cmp	w0, 0	// tmp108,
	bne	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp109,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp109,
	mov	w2, 36	//,
	adrp	x0, .LC2	// tmp110,
	add	x1, x0, :lo12:.LC2	//, tmp110,
	adrp	x0, .LC3	// tmp111,
	add	x0, x0, :lo12:.LC3	//, tmp111,
	bl	__assert_fail		//
.L18:
// problem55.c:37:     assert(func0("abcd", "dddddddabc") == true);
	adrp	x0, .LC4	// tmp112,
	add	x1, x0, :lo12:.LC4	//, tmp112,
	adrp	x0, .LC5	// tmp113,
	add	x0, x0, :lo12:.LC5	//, tmp113,
	bl	func0		//
	and	w0, w0, 255	// _2, tmp114
// problem55.c:37:     assert(func0("abcd", "dddddddabc") == true);
	and	w0, w0, 1	// tmp115, _2,
	cmp	w0, 0	// tmp115,
	bne	.L19		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 37	//,
	adrp	x0, .LC2	// tmp117,
	add	x1, x0, :lo12:.LC2	//, tmp117,
	adrp	x0, .LC6	// tmp118,
	add	x0, x0, :lo12:.LC6	//, tmp118,
	bl	__assert_fail		//
.L19:
// problem55.c:38:     assert(func0("dddddddabc", "abcd") == true);
	adrp	x0, .LC5	// tmp119,
	add	x1, x0, :lo12:.LC5	//, tmp119,
	adrp	x0, .LC4	// tmp120,
	add	x0, x0, :lo12:.LC4	//, tmp120,
	bl	func0		//
	and	w0, w0, 255	// _3, tmp121
// problem55.c:38:     assert(func0("dddddddabc", "abcd") == true);
	and	w0, w0, 1	// tmp122, _3,
	cmp	w0, 0	// tmp122,
	bne	.L20		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp123,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp123,
	mov	w2, 38	//,
	adrp	x0, .LC2	// tmp124,
	add	x1, x0, :lo12:.LC2	//, tmp124,
	adrp	x0, .LC7	// tmp125,
	add	x0, x0, :lo12:.LC7	//, tmp125,
	bl	__assert_fail		//
.L20:
// problem55.c:39:     assert(func0("eabcd", "dddddddabc") == false);
	adrp	x0, .LC4	// tmp126,
	add	x1, x0, :lo12:.LC4	//, tmp126,
	adrp	x0, .LC8	// tmp127,
	add	x0, x0, :lo12:.LC8	//, tmp127,
	bl	func0		//
	and	w0, w0, 255	// _4, tmp128
// problem55.c:39:     assert(func0("eabcd", "dddddddabc") == false);
	eor	w0, w0, 1	// tmp129, _4,
	and	w0, w0, 255	// _5, tmp129
	and	w0, w0, 1	// tmp130, _5,
	cmp	w0, 0	// tmp130,
	bne	.L21		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 39	//,
	adrp	x0, .LC2	// tmp132,
	add	x1, x0, :lo12:.LC2	//, tmp132,
	adrp	x0, .LC9	// tmp133,
	add	x0, x0, :lo12:.LC9	//, tmp133,
	bl	__assert_fail		//
.L21:
// problem55.c:40:     assert(func0("abcd", "dddddddabce") == false);
	adrp	x0, .LC10	// tmp134,
	add	x1, x0, :lo12:.LC10	//, tmp134,
	adrp	x0, .LC5	// tmp135,
	add	x0, x0, :lo12:.LC5	//, tmp135,
	bl	func0		//
	and	w0, w0, 255	// _6, tmp136
// problem55.c:40:     assert(func0("abcd", "dddddddabce") == false);
	eor	w0, w0, 1	// tmp137, _6,
	and	w0, w0, 255	// _7, tmp137
	and	w0, w0, 1	// tmp138, _7,
	cmp	w0, 0	// tmp138,
	bne	.L22		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp139,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp139,
	mov	w2, 40	//,
	adrp	x0, .LC2	// tmp140,
	add	x1, x0, :lo12:.LC2	//, tmp140,
	adrp	x0, .LC11	// tmp141,
	add	x0, x0, :lo12:.LC11	//, tmp141,
	bl	__assert_fail		//
.L22:
// problem55.c:41:     assert(func0("eabcdzzzz", "dddzzzzzzzddddabc") == false);
	adrp	x0, .LC12	// tmp142,
	add	x1, x0, :lo12:.LC12	//, tmp142,
	adrp	x0, .LC1	// tmp143,
	add	x0, x0, :lo12:.LC1	//, tmp143,
	bl	func0		//
	and	w0, w0, 255	// _8, tmp144
// problem55.c:41:     assert(func0("eabcdzzzz", "dddzzzzzzzddddabc") == false);
	eor	w0, w0, 1	// tmp145, _8,
	and	w0, w0, 255	// _9, tmp145
	and	w0, w0, 1	// tmp146, _9,
	cmp	w0, 0	// tmp146,
	bne	.L23		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp147,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp147,
	mov	w2, 41	//,
	adrp	x0, .LC2	// tmp148,
	add	x1, x0, :lo12:.LC2	//, tmp148,
	adrp	x0, .LC13	// tmp149,
	add	x0, x0, :lo12:.LC13	//, tmp149,
	bl	__assert_fail		//
.L23:
// problem55.c:42:     assert(func0("aabb", "aaccc") == false);
	adrp	x0, .LC14	// tmp150,
	add	x1, x0, :lo12:.LC14	//, tmp150,
	adrp	x0, .LC15	// tmp151,
	add	x0, x0, :lo12:.LC15	//, tmp151,
	bl	func0		//
	and	w0, w0, 255	// _10, tmp152
// problem55.c:42:     assert(func0("aabb", "aaccc") == false);
	eor	w0, w0, 1	// tmp153, _10,
	and	w0, w0, 255	// _11, tmp153
	and	w0, w0, 1	// tmp154, _11,
	cmp	w0, 0	// tmp154,
	bne	.L24		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp155,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp155,
	mov	w2, 42	//,
	adrp	x0, .LC2	// tmp156,
	add	x1, x0, :lo12:.LC2	//, tmp156,
	adrp	x0, .LC16	// tmp157,
	add	x0, x0, :lo12:.LC16	//, tmp157,
	bl	__assert_fail		//
.L24:
// problem55.c:44:     return 0;
	mov	w0, 0	// _27,
// problem55.c:45: }
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
