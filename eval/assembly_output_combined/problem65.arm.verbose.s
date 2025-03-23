	.arch armv8-a
	.file	"problem65.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"aeiouAEIOU"
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
	str	x0, [sp, 24]	// s, s
// problem65.c:6:     const char *vowels = "aeiouAEIOU";
	adrp	x0, .LC0	// tmp109,
	add	x0, x0, :lo12:.LC0	// tmp108, tmp109,
	str	x0, [sp, 56]	// tmp108, vowels
// problem65.c:7:     int count = 0;
	str	wzr, [sp, 44]	//, count
// problem65.c:8:     int length = strlen(s);
	ldr	x0, [sp, 24]	//, s
	bl	strlen		//
// problem65.c:8:     int length = strlen(s);
	str	w0, [sp, 52]	// tmp110, length
// problem65.c:10:     for (int i = 0; i < length; i++) {
	str	wzr, [sp, 48]	//, i
// problem65.c:10:     for (int i = 0; i < length; i++) {
	b	.L2		//
.L4:
// problem65.c:11:         if (strchr(vowels, s[i])) {
	ldrsw	x0, [sp, 48]	// _2, i
	ldr	x1, [sp, 24]	// tmp111, s
	add	x0, x1, x0	// _3, tmp111, _2
	ldrb	w0, [x0]	// _4, *_3
// problem65.c:11:         if (strchr(vowels, s[i])) {
	mov	w1, w0	//, _5
	ldr	x0, [sp, 56]	//, vowels
	bl	strchr		//
// problem65.c:11:         if (strchr(vowels, s[i])) {
	cmp	x0, 0	// _6,
	beq	.L3		//,
// problem65.c:12:             count++;
	ldr	w0, [sp, 44]	// tmp113, count
	add	w0, w0, 1	// tmp112, tmp113,
	str	w0, [sp, 44]	// tmp112, count
.L3:
// problem65.c:10:     for (int i = 0; i < length; i++) {
	ldr	w0, [sp, 48]	// tmp115, i
	add	w0, w0, 1	// tmp114, tmp115,
	str	w0, [sp, 48]	// tmp114, i
.L2:
// problem65.c:10:     for (int i = 0; i < length; i++) {
	ldr	w1, [sp, 48]	// tmp116, i
	ldr	w0, [sp, 52]	// tmp117, length
	cmp	w1, w0	// tmp116, tmp117
	blt	.L4		//,
// problem65.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	ldr	w0, [sp, 52]	// tmp118, length
	cmp	w0, 0	// tmp118,
	ble	.L5		//,
// problem65.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	ldrsw	x0, [sp, 52]	// _7, length
	sub	x0, x0, #1	// _8, _7,
	ldr	x1, [sp, 24]	// tmp119, s
	add	x0, x1, x0	// _9, tmp119, _8
	ldrb	w0, [x0]	// _10, *_9
// problem65.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	cmp	w0, 121	// _10,
	beq	.L6		//,
// problem65.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	ldrsw	x0, [sp, 52]	// _11, length
	sub	x0, x0, #1	// _12, _11,
	ldr	x1, [sp, 24]	// tmp120, s
	add	x0, x1, x0	// _13, tmp120, _12
	ldrb	w0, [x0]	// _14, *_13
// problem65.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	cmp	w0, 89	// _14,
	bne	.L5		//,
.L6:
// problem65.c:17:         count++;
	ldr	w0, [sp, 44]	// tmp122, count
	add	w0, w0, 1	// tmp121, tmp122,
	str	w0, [sp, 44]	// tmp121, count
.L5:
// problem65.c:20:     return count;
	ldr	w0, [sp, 44]	// _26, count
// problem65.c:21: }
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
.LC1:
	.string	"abcde"
	.align	3
.LC2:
	.string	"problem65.c"
	.align	3
.LC3:
	.string	"func0(\"abcde\") == 2"
	.align	3
.LC4:
	.string	"Alone"
	.align	3
.LC5:
	.string	"func0(\"Alone\") == 3"
	.align	3
.LC6:
	.string	"key"
	.align	3
.LC7:
	.string	"func0(\"key\") == 2"
	.align	3
.LC8:
	.string	"bye"
	.align	3
.LC9:
	.string	"func0(\"bye\") == 1"
	.align	3
.LC10:
	.string	"keY"
	.align	3
.LC11:
	.string	"func0(\"keY\") == 2"
	.align	3
.LC12:
	.string	"bYe"
	.align	3
.LC13:
	.string	"func0(\"bYe\") == 1"
	.align	3
.LC14:
	.string	"ACEDY"
	.align	3
.LC15:
	.string	"func0(\"ACEDY\") == 3"
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
// problem65.c:28:     assert(func0("abcde") == 2);
	adrp	x0, .LC1	// tmp101,
	add	x0, x0, :lo12:.LC1	//, tmp101,
	bl	func0		//
// problem65.c:28:     assert(func0("abcde") == 2);
	cmp	w0, 2	// _1,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp102,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp102,
	mov	w2, 28	//,
	adrp	x0, .LC2	// tmp103,
	add	x1, x0, :lo12:.LC2	//, tmp103,
	adrp	x0, .LC3	// tmp104,
	add	x0, x0, :lo12:.LC3	//, tmp104,
	bl	__assert_fail		//
.L9:
// problem65.c:29:     assert(func0("Alone") == 3);
	adrp	x0, .LC4	// tmp105,
	add	x0, x0, :lo12:.LC4	//, tmp105,
	bl	func0		//
// problem65.c:29:     assert(func0("Alone") == 3);
	cmp	w0, 3	// _2,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp106,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp106,
	mov	w2, 29	//,
	adrp	x0, .LC2	// tmp107,
	add	x1, x0, :lo12:.LC2	//, tmp107,
	adrp	x0, .LC5	// tmp108,
	add	x0, x0, :lo12:.LC5	//, tmp108,
	bl	__assert_fail		//
.L10:
// problem65.c:30:     assert(func0("key") == 2);
	adrp	x0, .LC6	// tmp109,
	add	x0, x0, :lo12:.LC6	//, tmp109,
	bl	func0		//
// problem65.c:30:     assert(func0("key") == 2);
	cmp	w0, 2	// _3,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp110,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp110,
	mov	w2, 30	//,
	adrp	x0, .LC2	// tmp111,
	add	x1, x0, :lo12:.LC2	//, tmp111,
	adrp	x0, .LC7	// tmp112,
	add	x0, x0, :lo12:.LC7	//, tmp112,
	bl	__assert_fail		//
.L11:
// problem65.c:31:     assert(func0("bye") == 1);
	adrp	x0, .LC8	// tmp113,
	add	x0, x0, :lo12:.LC8	//, tmp113,
	bl	func0		//
// problem65.c:31:     assert(func0("bye") == 1);
	cmp	w0, 1	// _4,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp114,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp114,
	mov	w2, 31	//,
	adrp	x0, .LC2	// tmp115,
	add	x1, x0, :lo12:.LC2	//, tmp115,
	adrp	x0, .LC9	// tmp116,
	add	x0, x0, :lo12:.LC9	//, tmp116,
	bl	__assert_fail		//
.L12:
// problem65.c:32:     assert(func0("keY") == 2);
	adrp	x0, .LC10	// tmp117,
	add	x0, x0, :lo12:.LC10	//, tmp117,
	bl	func0		//
// problem65.c:32:     assert(func0("keY") == 2);
	cmp	w0, 2	// _5,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp118,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp118,
	mov	w2, 32	//,
	adrp	x0, .LC2	// tmp119,
	add	x1, x0, :lo12:.LC2	//, tmp119,
	adrp	x0, .LC11	// tmp120,
	add	x0, x0, :lo12:.LC11	//, tmp120,
	bl	__assert_fail		//
.L13:
// problem65.c:33:     assert(func0("bYe") == 1);
	adrp	x0, .LC12	// tmp121,
	add	x0, x0, :lo12:.LC12	//, tmp121,
	bl	func0		//
// problem65.c:33:     assert(func0("bYe") == 1);
	cmp	w0, 1	// _6,
	beq	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp122,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp122,
	mov	w2, 33	//,
	adrp	x0, .LC2	// tmp123,
	add	x1, x0, :lo12:.LC2	//, tmp123,
	adrp	x0, .LC13	// tmp124,
	add	x0, x0, :lo12:.LC13	//, tmp124,
	bl	__assert_fail		//
.L14:
// problem65.c:34:     assert(func0("ACEDY") == 3);
	adrp	x0, .LC14	// tmp125,
	add	x0, x0, :lo12:.LC14	//, tmp125,
	bl	func0		//
// problem65.c:34:     assert(func0("ACEDY") == 3);
	cmp	w0, 3	// _7,
	beq	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp126,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp126,
	mov	w2, 34	//,
	adrp	x0, .LC2	// tmp127,
	add	x1, x0, :lo12:.LC2	//, tmp127,
	adrp	x0, .LC15	// tmp128,
	add	x0, x0, :lo12:.LC15	//, tmp128,
	bl	__assert_fail		//
.L15:
// problem65.c:36:     return 0;
	mov	w0, 0	// _23,
// problem65.c:37: }
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
