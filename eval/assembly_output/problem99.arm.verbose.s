	.arch armv8-a
	.file	"problem99.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"AEIOU"
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
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -48
	str	x0, [sp, 40]	// s, s
// problem99.c:5:     const char *uvowel = "AEIOU";
	adrp	x0, .LC0	// tmp107,
	add	x0, x0, :lo12:.LC0	// tmp106, tmp107,
	str	x0, [sp, 56]	// tmp106, uvowel
// problem99.c:6:     int count = 0;
	str	wzr, [sp, 48]	//, count
// problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	str	wzr, [sp, 52]	//, i
// problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	b	.L2		//
.L5:
// problem99.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	ldr	w0, [sp, 52]	// tmp108, i
	lsl	w0, w0, 1	// _1, tmp108,
	sxtw	x0, w0	// _2, _1
// problem99.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	ldr	x1, [sp, 40]	// tmp109, s
	add	x0, x1, x0	// _3, tmp109, _2
	ldrb	w0, [x0]	// _4, *_3
// problem99.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	mov	w1, w0	//, _5
	ldr	x0, [sp, 56]	//, uvowel
	bl	strchr		//
// problem99.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	cmp	x0, 0	// _6,
	beq	.L3		//,
// problem99.c:9:             count += 1;
	ldr	w0, [sp, 48]	// tmp111, count
	add	w0, w0, 1	// tmp110, tmp111,
	str	w0, [sp, 48]	// tmp110, count
.L3:
// problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	ldr	w0, [sp, 52]	// tmp113, i
	add	w0, w0, 1	// tmp112, tmp113,
	str	w0, [sp, 52]	// tmp112, i
.L2:
// problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	ldrsw	x0, [sp, 52]	// _7, i
	ldr	x1, [sp, 40]	// tmp114, s
	add	x0, x1, x0	// _8, tmp114, _7
	ldrb	w0, [x0]	// _9, *_8
// problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	cmp	w0, 0	// _9,
	beq	.L4		//,
// problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	ldr	w0, [sp, 52]	// tmp115, i
	lsl	w0, w0, 1	// _10, tmp115,
	sxtw	x19, w0	// _11, _10
// problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	ldr	x0, [sp, 40]	//, s
	bl	strlen		//
// problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	cmp	x19, x0	// _11, _12
	bcc	.L5		//,
.L4:
// problem99.c:12:     return count;
	ldr	w0, [sp, 48]	// _23, count
// problem99.c:13: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"aBCdEf"
	.align	3
.LC2:
	.string	"problem99.c"
	.align	3
.LC3:
	.string	"func0(\"aBCdEf\") == 1"
	.align	3
.LC4:
	.string	"abcdefg"
	.align	3
.LC5:
	.string	"func0(\"abcdefg\") == 0"
	.align	3
.LC6:
	.string	"dBBE"
	.align	3
.LC7:
	.string	"func0(\"dBBE\") == 0"
	.align	3
.LC8:
	.string	"B"
	.align	3
.LC9:
	.string	"func0(\"B\") == 0"
	.align	3
.LC10:
	.string	"U"
	.align	3
.LC11:
	.string	"func0(\"U\") == 1"
	.align	3
.LC12:
	.string	""
	.align	3
.LC13:
	.string	"func0(\"\") == 0"
	.align	3
.LC14:
	.string	"EEEE"
	.align	3
.LC15:
	.string	"func0(\"EEEE\") == 2"
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
// problem99.c:20:     assert(func0("aBCdEf") == 1);
	adrp	x0, .LC1	// tmp101,
	add	x0, x0, :lo12:.LC1	//, tmp101,
	bl	func0		//
// problem99.c:20:     assert(func0("aBCdEf") == 1);
	cmp	w0, 1	// _1,
	beq	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp102,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp102,
	mov	w2, 20	//,
	adrp	x0, .LC2	// tmp103,
	add	x1, x0, :lo12:.LC2	//, tmp103,
	adrp	x0, .LC3	// tmp104,
	add	x0, x0, :lo12:.LC3	//, tmp104,
	bl	__assert_fail		//
.L8:
// problem99.c:21:     assert(func0("abcdefg") == 0);
	adrp	x0, .LC4	// tmp105,
	add	x0, x0, :lo12:.LC4	//, tmp105,
	bl	func0		//
// problem99.c:21:     assert(func0("abcdefg") == 0);
	cmp	w0, 0	// _2,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp106,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp106,
	mov	w2, 21	//,
	adrp	x0, .LC2	// tmp107,
	add	x1, x0, :lo12:.LC2	//, tmp107,
	adrp	x0, .LC5	// tmp108,
	add	x0, x0, :lo12:.LC5	//, tmp108,
	bl	__assert_fail		//
.L9:
// problem99.c:22:     assert(func0("dBBE") == 0);
	adrp	x0, .LC6	// tmp109,
	add	x0, x0, :lo12:.LC6	//, tmp109,
	bl	func0		//
// problem99.c:22:     assert(func0("dBBE") == 0);
	cmp	w0, 0	// _3,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp110,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp110,
	mov	w2, 22	//,
	adrp	x0, .LC2	// tmp111,
	add	x1, x0, :lo12:.LC2	//, tmp111,
	adrp	x0, .LC7	// tmp112,
	add	x0, x0, :lo12:.LC7	//, tmp112,
	bl	__assert_fail		//
.L10:
// problem99.c:23:     assert(func0("B") == 0);
	adrp	x0, .LC8	// tmp113,
	add	x0, x0, :lo12:.LC8	//, tmp113,
	bl	func0		//
// problem99.c:23:     assert(func0("B") == 0);
	cmp	w0, 0	// _4,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp114,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp114,
	mov	w2, 23	//,
	adrp	x0, .LC2	// tmp115,
	add	x1, x0, :lo12:.LC2	//, tmp115,
	adrp	x0, .LC9	// tmp116,
	add	x0, x0, :lo12:.LC9	//, tmp116,
	bl	__assert_fail		//
.L11:
// problem99.c:24:     assert(func0("U") == 1);
	adrp	x0, .LC10	// tmp117,
	add	x0, x0, :lo12:.LC10	//, tmp117,
	bl	func0		//
// problem99.c:24:     assert(func0("U") == 1);
	cmp	w0, 1	// _5,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp118,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp118,
	mov	w2, 24	//,
	adrp	x0, .LC2	// tmp119,
	add	x1, x0, :lo12:.LC2	//, tmp119,
	adrp	x0, .LC11	// tmp120,
	add	x0, x0, :lo12:.LC11	//, tmp120,
	bl	__assert_fail		//
.L12:
// problem99.c:25:     assert(func0("") == 0);
	adrp	x0, .LC12	// tmp121,
	add	x0, x0, :lo12:.LC12	//, tmp121,
	bl	func0		//
// problem99.c:25:     assert(func0("") == 0);
	cmp	w0, 0	// _6,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp122,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp122,
	mov	w2, 25	//,
	adrp	x0, .LC2	// tmp123,
	add	x1, x0, :lo12:.LC2	//, tmp123,
	adrp	x0, .LC13	// tmp124,
	add	x0, x0, :lo12:.LC13	//, tmp124,
	bl	__assert_fail		//
.L13:
// problem99.c:26:     assert(func0("EEEE") == 2);
	adrp	x0, .LC14	// tmp125,
	add	x0, x0, :lo12:.LC14	//, tmp125,
	bl	func0		//
// problem99.c:26:     assert(func0("EEEE") == 2);
	cmp	w0, 2	// _7,
	beq	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp126,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp126,
	mov	w2, 26	//,
	adrp	x0, .LC2	// tmp127,
	add	x1, x0, :lo12:.LC2	//, tmp127,
	adrp	x0, .LC15	// tmp128,
	add	x0, x0, :lo12:.LC15	//, tmp128,
	bl	__assert_fail		//
.L14:
// problem99.c:28:     return 0;
	mov	w0, 0	// _23,
// problem99.c:29: }
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
