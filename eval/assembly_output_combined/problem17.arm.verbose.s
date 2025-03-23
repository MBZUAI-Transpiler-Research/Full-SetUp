	.arch armv8-a
	.file	"problem17.c"
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
	sub	sp, sp, #1088	//,,
	.cfi_def_cfa_offset 1088
	stp	x29, x30, [sp]	//,,
	.cfi_offset 29, -1088
	.cfi_offset 30, -1080
	mov	x29, sp	//,
	str	x0, [sp, 24]	// str, str
// problem17.c:5: int func0(const char *str) {
	adrp	x0, :got:__stack_chk_guard	// tmp114,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp113, tmp114,
	ldr	x1, [x0]	// tmp135,
	str	x1, [sp, 1080]	// tmp135, D.4589
	mov	x1, 0	// tmp135
// problem17.c:6:     int count = 0;
	str	wzr, [sp, 48]	//, count
// problem17.c:7:     int char_map[256] = {0};
	add	x0, sp, 56	// tmp115,,
	mov	x1, 1024	// tmp116,
	mov	x2, x1	//, tmp116
	mov	w1, 0	//,
	bl	memset		//
// problem17.c:10:     for (index = 0; str[index]; index++) {
	str	wzr, [sp, 52]	//, index
// problem17.c:10:     for (index = 0; str[index]; index++) {
	b	.L2		//
.L4:
// problem17.c:11:         char ch = tolower((unsigned char)str[index]);
	ldrsw	x0, [sp, 52]	// _1, index
	ldr	x1, [sp, 24]	// tmp118, str
	add	x0, x1, x0	// _2, tmp118, _1
	ldrb	w0, [x0]	// _3, *_2
// problem17.c:11:         char ch = tolower((unsigned char)str[index]);
	bl	tolower		//
// problem17.c:11:         char ch = tolower((unsigned char)str[index]);
	strb	w0, [sp, 47]	// tmp119, ch
// problem17.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	ldrb	w0, [sp, 47]	// _6, ch
	sxtw	x0, w0	// tmp120, _6
	lsl	x0, x0, 2	// tmp121, tmp120,
	add	x1, sp, 56	// tmp122,,
	ldr	w0, [x1, x0]	// _7, char_map[_6]
// problem17.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	cmp	w0, 0	// _7,
	bne	.L3		//,
// problem17.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	bl	__ctype_b_loc		//
	ldr	x1, [x0]	// _9, *_8
	ldrb	w0, [sp, 47]	// _10, ch
	lsl	x0, x0, 1	// _11, _10,
	add	x0, x1, x0	// _12, _9, _11
	ldrh	w0, [x0]	// _13, *_12
	and	w0, w0, 1024	// _15, _14,
// problem17.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	cmp	w0, 0	// _15,
	beq	.L3		//,
// problem17.c:13:             char_map[ch] = 1;
	ldrb	w0, [sp, 47]	// _16, ch
// problem17.c:13:             char_map[ch] = 1;
	sxtw	x0, w0	// tmp123, _16
	lsl	x0, x0, 2	// tmp124, tmp123,
	add	x1, sp, 56	// tmp125,,
	mov	w2, 1	// tmp126,
	str	w2, [x1, x0]	// tmp126, char_map[_16]
// problem17.c:14:             count++;
	ldr	w0, [sp, 48]	// tmp128, count
	add	w0, w0, 1	// tmp127, tmp128,
	str	w0, [sp, 48]	// tmp127, count
.L3:
// problem17.c:10:     for (index = 0; str[index]; index++) {
	ldr	w0, [sp, 52]	// tmp130, index
	add	w0, w0, 1	// tmp129, tmp130,
	str	w0, [sp, 52]	// tmp129, index
.L2:
// problem17.c:10:     for (index = 0; str[index]; index++) {
	ldrsw	x0, [sp, 52]	// _17, index
	ldr	x1, [sp, 24]	// tmp131, str
	add	x0, x1, x0	// _18, tmp131, _17
	ldrb	w0, [x0]	// _19, *_18
// problem17.c:10:     for (index = 0; str[index]; index++) {
	cmp	w0, 0	// _19,
	bne	.L4		//,
// problem17.c:18:     return count;
	ldr	w0, [sp, 48]	// _30, count
	mov	w1, w0	// <retval>, _30
// problem17.c:19: }
	adrp	x0, :got:__stack_chk_guard	// tmp134,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp133, tmp134,
	ldr	x3, [sp, 1080]	// tmp136, D.4589
	ldr	x2, [x0]	// tmp137,
	subs	x3, x3, x2	// tmp136, tmp137
	mov	x2, 0	// tmp137
	beq	.L6		//,
	bl	__stack_chk_fail		//
.L6:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp]	//,,
	add	sp, sp, 1088	//,,
	.cfi_restore 29
	.cfi_restore 30
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
	cmp	w0, 0	// _1,
	beq	.L8		//,
// problem17.c:26:     assert(func0("") == 0);
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
	cmp	w0, 5	// _2,
	beq	.L9		//,
// problem17.c:27:     assert(func0("abcde") == 5);
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
	cmp	w0, 5	// _3,
	beq	.L10		//,
// problem17.c:28:     assert(func0("abcdecadeCADE") == 5);
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
	cmp	w0, 1	// _4,
	beq	.L11		//,
// problem17.c:29:     assert(func0("aaaaAAAAaaaa") == 1);
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
	cmp	w0, 4	// _5,
	beq	.L12		//,
// problem17.c:30:     assert(func0("Jerry jERRY JeRRRY") == 4);
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
