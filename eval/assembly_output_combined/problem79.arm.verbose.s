	.arch armv8-a
	.file	"problem79.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"2357BD"
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
	str	x0, [sp, 40]	// num, num
// problem79.c:5:     const char* key = "2357BD";
	adrp	x0, .LC0	// tmp102,
	add	x0, x0, :lo12:.LC0	// tmp101, tmp102,
	str	x0, [sp, 56]	// tmp101, key
// problem79.c:6:     int out = 0;
	str	wzr, [sp, 48]	//, out
// problem79.c:7:     for (int i = 0; i < strlen(num); i++) {
	str	wzr, [sp, 52]	//, i
// problem79.c:7:     for (int i = 0; i < strlen(num); i++) {
	b	.L2		//
.L4:
// problem79.c:8:         if (strchr(key, num[i])) out += 1;
	ldrsw	x0, [sp, 52]	// _1, i
	ldr	x1, [sp, 40]	// tmp103, num
	add	x0, x1, x0	// _2, tmp103, _1
	ldrb	w0, [x0]	// _3, *_2
// problem79.c:8:         if (strchr(key, num[i])) out += 1;
	mov	w1, w0	//, _4
	ldr	x0, [sp, 56]	//, key
	bl	strchr		//
// problem79.c:8:         if (strchr(key, num[i])) out += 1;
	cmp	x0, 0	// _5,
	beq	.L3		//,
// problem79.c:8:         if (strchr(key, num[i])) out += 1;
	ldr	w0, [sp, 48]	// tmp105, out
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [sp, 48]	// tmp104, out
.L3:
// problem79.c:7:     for (int i = 0; i < strlen(num); i++) {
	ldr	w0, [sp, 52]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 52]	// tmp106, i
.L2:
// problem79.c:7:     for (int i = 0; i < strlen(num); i++) {
	ldrsw	x19, [sp, 52]	// _6, i
// problem79.c:7:     for (int i = 0; i < strlen(num); i++) {
	ldr	x0, [sp, 40]	//, num
	bl	strlen		//
// problem79.c:7:     for (int i = 0; i < strlen(num); i++) {
	cmp	x19, x0	// _6, _7
	bcc	.L4		//,
// problem79.c:10:     return out;
	ldr	w0, [sp, 48]	// _16, out
// problem79.c:11: }
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
	.string	"AB"
	.align	3
.LC2:
	.string	"problem79.c"
	.align	3
.LC3:
	.string	"func0(\"AB\") == 1"
	.align	3
.LC4:
	.string	"1077E"
	.align	3
.LC5:
	.string	"func0(\"1077E\") == 2"
	.align	3
.LC6:
	.string	"ABED1A33"
	.align	3
.LC7:
	.string	"func0(\"ABED1A33\") == 4"
	.align	3
.LC8:
	.string	"2020"
	.align	3
.LC9:
	.string	"func0(\"2020\") == 2"
	.align	3
.LC10:
	.string	"123456789ABCDEF0"
	.align	3
.LC11:
	.string	"func0(\"123456789ABCDEF0\") == 6"
	.align	3
.LC12:
	.string	"112233445566778899AABBCCDDEEFF00"
	.align	3
.LC13:
	.string	"func0(\"112233445566778899AABBCCDDEEFF00\") == 12"
	.align	3
.LC14:
	.string	""
	.align	3
.LC15:
	.string	"func0(\"\") == 0"
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
// problem79.c:18:     assert(func0("AB") == 1);
	adrp	x0, .LC1	// tmp101,
	add	x0, x0, :lo12:.LC1	//, tmp101,
	bl	func0		//
	cmp	w0, 1	// _1,
	beq	.L7		//,
// problem79.c:18:     assert(func0("AB") == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp102,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp102,
	mov	w2, 18	//,
	adrp	x0, .LC2	// tmp103,
	add	x1, x0, :lo12:.LC2	//, tmp103,
	adrp	x0, .LC3	// tmp104,
	add	x0, x0, :lo12:.LC3	//, tmp104,
	bl	__assert_fail		//
.L7:
// problem79.c:19:     assert(func0("1077E") == 2);
	adrp	x0, .LC4	// tmp105,
	add	x0, x0, :lo12:.LC4	//, tmp105,
	bl	func0		//
	cmp	w0, 2	// _2,
	beq	.L8		//,
// problem79.c:19:     assert(func0("1077E") == 2);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp106,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp106,
	mov	w2, 19	//,
	adrp	x0, .LC2	// tmp107,
	add	x1, x0, :lo12:.LC2	//, tmp107,
	adrp	x0, .LC5	// tmp108,
	add	x0, x0, :lo12:.LC5	//, tmp108,
	bl	__assert_fail		//
.L8:
// problem79.c:20:     assert(func0("ABED1A33") == 4);
	adrp	x0, .LC6	// tmp109,
	add	x0, x0, :lo12:.LC6	//, tmp109,
	bl	func0		//
	cmp	w0, 4	// _3,
	beq	.L9		//,
// problem79.c:20:     assert(func0("ABED1A33") == 4);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp110,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp110,
	mov	w2, 20	//,
	adrp	x0, .LC2	// tmp111,
	add	x1, x0, :lo12:.LC2	//, tmp111,
	adrp	x0, .LC7	// tmp112,
	add	x0, x0, :lo12:.LC7	//, tmp112,
	bl	__assert_fail		//
.L9:
// problem79.c:21:     assert(func0("2020") == 2);
	adrp	x0, .LC8	// tmp113,
	add	x0, x0, :lo12:.LC8	//, tmp113,
	bl	func0		//
	cmp	w0, 2	// _4,
	beq	.L10		//,
// problem79.c:21:     assert(func0("2020") == 2);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp114,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp114,
	mov	w2, 21	//,
	adrp	x0, .LC2	// tmp115,
	add	x1, x0, :lo12:.LC2	//, tmp115,
	adrp	x0, .LC9	// tmp116,
	add	x0, x0, :lo12:.LC9	//, tmp116,
	bl	__assert_fail		//
.L10:
// problem79.c:22:     assert(func0("123456789ABCDEF0") == 6);
	adrp	x0, .LC10	// tmp117,
	add	x0, x0, :lo12:.LC10	//, tmp117,
	bl	func0		//
	cmp	w0, 6	// _5,
	beq	.L11		//,
// problem79.c:22:     assert(func0("123456789ABCDEF0") == 6);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp118,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp118,
	mov	w2, 22	//,
	adrp	x0, .LC2	// tmp119,
	add	x1, x0, :lo12:.LC2	//, tmp119,
	adrp	x0, .LC11	// tmp120,
	add	x0, x0, :lo12:.LC11	//, tmp120,
	bl	__assert_fail		//
.L11:
// problem79.c:23:     assert(func0("112233445566778899AABBCCDDEEFF00") == 12);
	adrp	x0, .LC12	// tmp121,
	add	x0, x0, :lo12:.LC12	//, tmp121,
	bl	func0		//
	cmp	w0, 12	// _6,
	beq	.L12		//,
// problem79.c:23:     assert(func0("112233445566778899AABBCCDDEEFF00") == 12);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp122,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp122,
	mov	w2, 23	//,
	adrp	x0, .LC2	// tmp123,
	add	x1, x0, :lo12:.LC2	//, tmp123,
	adrp	x0, .LC13	// tmp124,
	add	x0, x0, :lo12:.LC13	//, tmp124,
	bl	__assert_fail		//
.L12:
// problem79.c:24:     assert(func0("") == 0);
	adrp	x0, .LC14	// tmp125,
	add	x0, x0, :lo12:.LC14	//, tmp125,
	bl	func0		//
	cmp	w0, 0	// _7,
	beq	.L13		//,
// problem79.c:24:     assert(func0("") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp126,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp126,
	mov	w2, 24	//,
	adrp	x0, .LC2	// tmp127,
	add	x1, x0, :lo12:.LC2	//, tmp127,
	adrp	x0, .LC15	// tmp128,
	add	x0, x0, :lo12:.LC15	//, tmp128,
	bl	__assert_fail		//
.L13:
// problem79.c:26:     return 0;
	mov	w0, 0	// _23,
// problem79.c:27: }
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
