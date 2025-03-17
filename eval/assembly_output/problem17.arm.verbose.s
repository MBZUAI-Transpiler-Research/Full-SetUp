	.arch armv8-a
	.file	"problem17.c"
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
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
	sub	sp, sp, #1072	//,,
	.cfi_def_cfa_offset 1088
	str	xzr, [sp, 1024]	//,
	str	x0, [sp, 8]	// str, str
// problem17.c:5: int func0(const char *str) {
	adrp	x0, :got:__stack_chk_guard	// tmp113,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp113,
	ldr	x1, [x0]	// tmp133,
	str	x1, [sp, 1064]	// tmp133, D.5198
	mov	x1, 0	// tmp133
// problem17.c:6:     int count = 0;
	str	wzr, [sp, 32]	//, count
// problem17.c:7:     int char_map[256] = {0};
	add	x0, sp, 40	// tmp114,,
	mov	x1, 1024	// tmp115,
	mov	x2, x1	//, tmp115
	mov	w1, 0	//,
	bl	memset		//
// problem17.c:10:     for (index = 0; str[index]; index++) {
	str	wzr, [sp, 36]	//, index
// problem17.c:10:     for (index = 0; str[index]; index++) {
	b	.L2		//
.L4:
// problem17.c:11:         char ch = tolower((unsigned char)str[index]);
	ldrsw	x0, [sp, 36]	// _1, index
	ldr	x1, [sp, 8]	// tmp117, str
	add	x0, x1, x0	// _2, tmp117, _1
	ldrb	w0, [x0]	// _3, *_2
// problem17.c:11:         char ch = tolower((unsigned char)str[index]);
	bl	tolower		//
// problem17.c:11:         char ch = tolower((unsigned char)str[index]);
	strb	w0, [sp, 31]	// tmp118, ch
// problem17.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	ldrb	w0, [sp, 31]	// _6, ch
	sxtw	x0, w0	// tmp119, _6
	lsl	x0, x0, 2	// tmp120, tmp119,
	add	x1, sp, 40	// tmp121,,
	ldr	w0, [x1, x0]	// _7, char_map[_6]
// problem17.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	cmp	w0, 0	// _7,
	bne	.L3		//,
// problem17.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	bl	__ctype_b_loc		//
	ldr	x1, [x0]	// _9, *_8
	ldrb	w0, [sp, 31]	// _10, ch
	lsl	x0, x0, 1	// _11, _10,
	add	x0, x1, x0	// _12, _9, _11
	ldrh	w0, [x0]	// _13, *_12
	and	w0, w0, 1024	// _15, _14,
// problem17.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	cmp	w0, 0	// _15,
	beq	.L3		//,
// problem17.c:13:             char_map[ch] = 1;
	ldrb	w0, [sp, 31]	// _16, ch
// problem17.c:13:             char_map[ch] = 1;
	sxtw	x0, w0	// tmp122, _16
	lsl	x0, x0, 2	// tmp123, tmp122,
	add	x1, sp, 40	// tmp124,,
	mov	w2, 1	// tmp125,
	str	w2, [x1, x0]	// tmp125, char_map[_16]
// problem17.c:14:             count++;
	ldr	w0, [sp, 32]	// tmp127, count
	add	w0, w0, 1	// tmp126, tmp127,
	str	w0, [sp, 32]	// tmp126, count
.L3:
// problem17.c:10:     for (index = 0; str[index]; index++) {
	ldr	w0, [sp, 36]	// tmp129, index
	add	w0, w0, 1	// tmp128, tmp129,
	str	w0, [sp, 36]	// tmp128, index
.L2:
// problem17.c:10:     for (index = 0; str[index]; index++) {
	ldrsw	x0, [sp, 36]	// _17, index
	ldr	x1, [sp, 8]	// tmp130, str
	add	x0, x1, x0	// _18, tmp130, _17
	ldrb	w0, [x0]	// _19, *_18
// problem17.c:10:     for (index = 0; str[index]; index++) {
	cmp	w0, 0	// _19,
	bne	.L4		//,
// problem17.c:18:     return count;
	ldr	w0, [sp, 32]	// _30, count
	mov	w1, w0	// <retval>, _30
// problem17.c:19: }
	adrp	x0, :got:__stack_chk_guard	// tmp132,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp132,
	ldr	x3, [sp, 1064]	// tmp134, D.5198
	ldr	x2, [x0]	// tmp135,
	subs	x3, x3, x2	// tmp134, tmp135
	mov	x2, 0	// tmp135
	beq	.L6		//,
	bl	__stack_chk_fail		//
.L6:
	mov	w0, w1	//, <retval>
	add	sp, sp, 1072	//,,
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16	//,,,
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
	.string	"problem17.c"
	.align	3
.LC2:
	.string	"func0(\"\") == 0"
	.align	3
.LC3:
	.string	"abcde"
	.align	3
.LC4:
	.string	"func0(\"abcde\") == 5"
	.align	3
.LC5:
	.string	"abcdecadeCADE"
	.align	3
.LC6:
	.string	"func0(\"abcdecadeCADE\") == 5"
	.align	3
.LC7:
	.string	"aaaaAAAAaaaa"
	.align	3
.LC8:
	.string	"func0(\"aaaaAAAAaaaa\") == 1"
	.align	3
.LC9:
	.string	"Jerry jERRY JeRRRY"
	.align	3
.LC10:
	.string	"func0(\"Jerry jERRY JeRRRY\") == 4"
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
// problem17.c:26:     assert(func0("") == 0);
	adrp	x0, .LC0	// tmp99,
	add	x0, x0, :lo12:.LC0	//, tmp99,
	bl	func0		//
// problem17.c:26:     assert(func0("") == 0);
	cmp	w0, 0	// _1,
	beq	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp100,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp100,
	mov	w2, 26	//,
	adrp	x0, .LC1	// tmp101,
	add	x1, x0, :lo12:.LC1	//, tmp101,
	adrp	x0, .LC2	// tmp102,
	add	x0, x0, :lo12:.LC2	//, tmp102,
	bl	__assert_fail		//
.L8:
// problem17.c:27:     assert(func0("abcde") == 5);
	adrp	x0, .LC3	// tmp103,
	add	x0, x0, :lo12:.LC3	//, tmp103,
	bl	func0		//
// problem17.c:27:     assert(func0("abcde") == 5);
	cmp	w0, 5	// _2,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp104,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp104,
	mov	w2, 27	//,
	adrp	x0, .LC1	// tmp105,
	add	x1, x0, :lo12:.LC1	//, tmp105,
	adrp	x0, .LC4	// tmp106,
	add	x0, x0, :lo12:.LC4	//, tmp106,
	bl	__assert_fail		//
.L9:
// problem17.c:28:     assert(func0("abcdecadeCADE") == 5);
	adrp	x0, .LC5	// tmp107,
	add	x0, x0, :lo12:.LC5	//, tmp107,
	bl	func0		//
// problem17.c:28:     assert(func0("abcdecadeCADE") == 5);
	cmp	w0, 5	// _3,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp108,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp108,
	mov	w2, 28	//,
	adrp	x0, .LC1	// tmp109,
	add	x1, x0, :lo12:.LC1	//, tmp109,
	adrp	x0, .LC6	// tmp110,
	add	x0, x0, :lo12:.LC6	//, tmp110,
	bl	__assert_fail		//
.L10:
// problem17.c:29:     assert(func0("aaaaAAAAaaaa") == 1);
	adrp	x0, .LC7	// tmp111,
	add	x0, x0, :lo12:.LC7	//, tmp111,
	bl	func0		//
// problem17.c:29:     assert(func0("aaaaAAAAaaaa") == 1);
	cmp	w0, 1	// _4,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp112,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp112,
	mov	w2, 29	//,
	adrp	x0, .LC1	// tmp113,
	add	x1, x0, :lo12:.LC1	//, tmp113,
	adrp	x0, .LC8	// tmp114,
	add	x0, x0, :lo12:.LC8	//, tmp114,
	bl	__assert_fail		//
.L11:
// problem17.c:30:     assert(func0("Jerry jERRY JeRRRY") == 4);
	adrp	x0, .LC9	// tmp115,
	add	x0, x0, :lo12:.LC9	//, tmp115,
	bl	func0		//
// problem17.c:30:     assert(func0("Jerry jERRY JeRRRY") == 4);
	cmp	w0, 4	// _5,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 30	//,
	adrp	x0, .LC1	// tmp117,
	add	x1, x0, :lo12:.LC1	//, tmp117,
	adrp	x0, .LC10	// tmp118,
	add	x0, x0, :lo12:.LC10	//, tmp118,
	bl	__assert_fail		//
.L12:
// problem17.c:32:     return 0;
	mov	w0, 0	// _17,
// problem17.c:33: }
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
