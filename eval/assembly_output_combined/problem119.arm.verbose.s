	.arch armv8-a
	.file	"problem119.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"AEIOUaeiou"
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
	str	x0, [sp, 24]	// word, word
// problem119.c:6:     const char *vowels = "AEIOUaeiou";
	adrp	x0, .LC0	// tmp117,
	add	x0, x0, :lo12:.LC0	// tmp116, tmp117,
	str	x0, [sp, 48]	// tmp116, vowels
// problem119.c:7:     size_t len = strlen(word);
	ldr	x0, [sp, 24]	//, word
	bl	strlen		//
	str	x0, [sp, 56]	//, len
// problem119.c:9:     for (int i = len - 2; i >= 1; i--) {
	ldr	x0, [sp, 56]	// tmp118, len
	sub	w0, w0, #2	// _2, _1,
// problem119.c:9:     for (int i = len - 2; i >= 1; i--) {
	str	w0, [sp, 44]	// _2, i
// problem119.c:9:     for (int i = len - 2; i >= 1; i--) {
	b	.L2		//
.L5:
// problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	ldrsw	x0, [sp, 44]	// _3, i
	ldr	x1, [sp, 24]	// tmp119, word
	add	x0, x1, x0	// _4, tmp119, _3
	ldrb	w0, [x0]	// _5, *_4
// problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	mov	w1, w0	//, _6
	ldr	x0, [sp, 48]	//, vowels
	bl	strchr		//
// problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	cmp	x0, 0	// _7,
	beq	.L3		//,
// problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	ldrsw	x0, [sp, 44]	// _8, i
	add	x0, x0, 1	// _9, _8,
	ldr	x1, [sp, 24]	// tmp120, word
	add	x0, x1, x0	// _10, tmp120, _9
	ldrb	w0, [x0]	// _11, *_10
// problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	mov	w1, w0	//, _12
	ldr	x0, [sp, 48]	//, vowels
	bl	strchr		//
// problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	cmp	x0, 0	// _13,
	bne	.L3		//,
// problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	ldrsw	x0, [sp, 44]	// _14, i
	sub	x0, x0, #1	// _15, _14,
	ldr	x1, [sp, 24]	// tmp121, word
	add	x0, x1, x0	// _16, tmp121, _15
	ldrb	w0, [x0]	// _17, *_16
// problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	mov	w1, w0	//, _18
	ldr	x0, [sp, 48]	//, vowels
	bl	strchr		//
// problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	cmp	x0, 0	// _19,
	bne	.L3		//,
// problem119.c:11:             out[0] = word[i];
	ldrsw	x0, [sp, 44]	// _20, i
	ldr	x1, [sp, 24]	// tmp122, word
	add	x0, x1, x0	// _21, tmp122, _20
	ldrb	w1, [x0]	// _22, *_21
// problem119.c:11:             out[0] = word[i];
	adrp	x0, out.1	// tmp124,
	add	x0, x0, :lo12:out.1	// tmp123, tmp124,
	strb	w1, [x0]	// tmp125, out[0]
// problem119.c:12:             return out;
	adrp	x0, out.1	// tmp126,
	add	x0, x0, :lo12:out.1	// _24, tmp126,
	b	.L4		//
.L3:
// problem119.c:9:     for (int i = len - 2; i >= 1; i--) {
	ldr	w0, [sp, 44]	// tmp128, i
	sub	w0, w0, #1	// tmp127, tmp128,
	str	w0, [sp, 44]	// tmp127, i
.L2:
// problem119.c:9:     for (int i = len - 2; i >= 1; i--) {
	ldr	w0, [sp, 44]	// tmp129, i
	cmp	w0, 0	// tmp129,
	bgt	.L5		//,
// problem119.c:15:     out[0] = '\0';
	adrp	x0, out.1	// tmp131,
	add	x0, x0, :lo12:out.1	// tmp130, tmp131,
	strb	wzr, [x0]	//, out[0]
// problem119.c:16:     return out;
	adrp	x0, out.1	// tmp132,
	add	x0, x0, :lo12:out.1	// _24, tmp132,
.L4:
// problem119.c:17: }
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
	.string	"yogurt"
	.align	3
.LC2:
	.string	"u"
	.align	3
.LC3:
	.string	"problem119.c"
	.align	3
.LC4:
	.string	"strcmp(func0(\"yogurt\"), \"u\") == 0"
	.align	3
.LC5:
	.string	"full"
	.align	3
.LC6:
	.string	"strcmp(func0(\"full\"), \"u\") == 0"
	.align	3
.LC7:
	.string	"easy"
	.align	3
.LC8:
	.string	"strcmp(func0(\"easy\"), \"\") == 0"
	.align	3
.LC9:
	.string	"eAsy"
	.align	3
.LC10:
	.string	"strcmp(func0(\"eAsy\"), \"\") == 0"
	.align	3
.LC11:
	.string	"ali"
	.align	3
.LC12:
	.string	"strcmp(func0(\"ali\"), \"\") == 0"
	.align	3
.LC13:
	.string	"bad"
	.align	3
.LC14:
	.string	"a"
	.align	3
.LC15:
	.string	"strcmp(func0(\"bad\"), \"a\") == 0"
	.align	3
.LC16:
	.string	"most"
	.align	3
.LC17:
	.string	"o"
	.align	3
.LC18:
	.string	"strcmp(func0(\"most\"), \"o\") == 0"
	.align	3
.LC19:
	.string	"ab"
	.align	3
.LC20:
	.string	"strcmp(func0(\"ab\"), \"\") == 0"
	.align	3
.LC21:
	.string	"ba"
	.align	3
.LC22:
	.string	"strcmp(func0(\"ba\"), \"\") == 0"
	.align	3
.LC23:
	.string	"quick"
	.align	3
.LC24:
	.string	"strcmp(func0(\"quick\"), \"\") == 0"
	.align	3
.LC25:
	.string	"anime"
	.align	3
.LC26:
	.string	"i"
	.align	3
.LC27:
	.string	"strcmp(func0(\"anime\"), \"i\") == 0"
	.align	3
.LC28:
	.string	"Asia"
	.align	3
.LC29:
	.string	"strcmp(func0(\"Asia\"), \"\") == 0"
	.align	3
.LC30:
	.string	"Above"
	.align	3
.LC31:
	.string	"strcmp(func0(\"Above\"), \"o\") == 0"
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
// problem119.c:26:     assert(strcmp(func0("yogurt"), "u") == 0);
	adrp	x0, .LC1	// tmp127,
	add	x0, x0, :lo12:.LC1	//, tmp127,
	bl	func0		//
	mov	x2, x0	// _1,
	adrp	x0, .LC2	// tmp128,
	add	x1, x0, :lo12:.LC2	//, tmp128,
	mov	x0, x2	//, _1
	bl	strcmp		//
	cmp	w0, 0	// _2,
	beq	.L7		//,
// problem119.c:26:     assert(strcmp(func0("yogurt"), "u") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp129,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp129,
	mov	w2, 26	//,
	adrp	x0, .LC3	// tmp130,
	add	x1, x0, :lo12:.LC3	//, tmp130,
	adrp	x0, .LC4	// tmp131,
	add	x0, x0, :lo12:.LC4	//, tmp131,
	bl	__assert_fail		//
.L7:
// problem119.c:27:     assert(strcmp(func0("full"), "u") == 0);
	adrp	x0, .LC5	// tmp132,
	add	x0, x0, :lo12:.LC5	//, tmp132,
	bl	func0		//
	mov	x2, x0	// _3,
	adrp	x0, .LC2	// tmp133,
	add	x1, x0, :lo12:.LC2	//, tmp133,
	mov	x0, x2	//, _3
	bl	strcmp		//
	cmp	w0, 0	// _4,
	beq	.L8		//,
// problem119.c:27:     assert(strcmp(func0("full"), "u") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp134,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp134,
	mov	w2, 27	//,
	adrp	x0, .LC3	// tmp135,
	add	x1, x0, :lo12:.LC3	//, tmp135,
	adrp	x0, .LC6	// tmp136,
	add	x0, x0, :lo12:.LC6	//, tmp136,
	bl	__assert_fail		//
.L8:
// problem119.c:28:     assert(strcmp(func0("easy"), "") == 0);
	adrp	x0, .LC7	// tmp137,
	add	x0, x0, :lo12:.LC7	//, tmp137,
	bl	func0		//
	ldrb	w0, [x0]	// _33, MEM[(const unsigned char * {ref-all})_5]
	cmp	w0, 0	// _6,
	beq	.L9		//,
// problem119.c:28:     assert(strcmp(func0("easy"), "") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp138,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp138,
	mov	w2, 28	//,
	adrp	x0, .LC3	// tmp139,
	add	x1, x0, :lo12:.LC3	//, tmp139,
	adrp	x0, .LC8	// tmp140,
	add	x0, x0, :lo12:.LC8	//, tmp140,
	bl	__assert_fail		//
.L9:
// problem119.c:29:     assert(strcmp(func0("eAsy"), "") == 0);
	adrp	x0, .LC9	// tmp141,
	add	x0, x0, :lo12:.LC9	//, tmp141,
	bl	func0		//
	ldrb	w0, [x0]	// _36, MEM[(const unsigned char * {ref-all})_7]
	cmp	w0, 0	// _8,
	beq	.L10		//,
// problem119.c:29:     assert(strcmp(func0("eAsy"), "") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp142,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp142,
	mov	w2, 29	//,
	adrp	x0, .LC3	// tmp143,
	add	x1, x0, :lo12:.LC3	//, tmp143,
	adrp	x0, .LC10	// tmp144,
	add	x0, x0, :lo12:.LC10	//, tmp144,
	bl	__assert_fail		//
.L10:
// problem119.c:30:     assert(strcmp(func0("ali"), "") == 0);
	adrp	x0, .LC11	// tmp145,
	add	x0, x0, :lo12:.LC11	//, tmp145,
	bl	func0		//
	ldrb	w0, [x0]	// _39, MEM[(const unsigned char * {ref-all})_9]
	cmp	w0, 0	// _10,
	beq	.L11		//,
// problem119.c:30:     assert(strcmp(func0("ali"), "") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp146,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp146,
	mov	w2, 30	//,
	adrp	x0, .LC3	// tmp147,
	add	x1, x0, :lo12:.LC3	//, tmp147,
	adrp	x0, .LC12	// tmp148,
	add	x0, x0, :lo12:.LC12	//, tmp148,
	bl	__assert_fail		//
.L11:
// problem119.c:31:     assert(strcmp(func0("bad"), "a") == 0);
	adrp	x0, .LC13	// tmp149,
	add	x0, x0, :lo12:.LC13	//, tmp149,
	bl	func0		//
	mov	x2, x0	// _11,
	adrp	x0, .LC14	// tmp150,
	add	x1, x0, :lo12:.LC14	//, tmp150,
	mov	x0, x2	//, _11
	bl	strcmp		//
	cmp	w0, 0	// _12,
	beq	.L12		//,
// problem119.c:31:     assert(strcmp(func0("bad"), "a") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp151,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp151,
	mov	w2, 31	//,
	adrp	x0, .LC3	// tmp152,
	add	x1, x0, :lo12:.LC3	//, tmp152,
	adrp	x0, .LC15	// tmp153,
	add	x0, x0, :lo12:.LC15	//, tmp153,
	bl	__assert_fail		//
.L12:
// problem119.c:32:     assert(strcmp(func0("most"), "o") == 0);
	adrp	x0, .LC16	// tmp154,
	add	x0, x0, :lo12:.LC16	//, tmp154,
	bl	func0		//
	mov	x2, x0	// _13,
	adrp	x0, .LC17	// tmp155,
	add	x1, x0, :lo12:.LC17	//, tmp155,
	mov	x0, x2	//, _13
	bl	strcmp		//
	cmp	w0, 0	// _14,
	beq	.L13		//,
// problem119.c:32:     assert(strcmp(func0("most"), "o") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp156,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp156,
	mov	w2, 32	//,
	adrp	x0, .LC3	// tmp157,
	add	x1, x0, :lo12:.LC3	//, tmp157,
	adrp	x0, .LC18	// tmp158,
	add	x0, x0, :lo12:.LC18	//, tmp158,
	bl	__assert_fail		//
.L13:
// problem119.c:33:     assert(strcmp(func0("ab"), "") == 0);
	adrp	x0, .LC19	// tmp159,
	add	x0, x0, :lo12:.LC19	//, tmp159,
	bl	func0		//
	ldrb	w0, [x0]	// _46, MEM[(const unsigned char * {ref-all})_15]
	cmp	w0, 0	// _16,
	beq	.L14		//,
// problem119.c:33:     assert(strcmp(func0("ab"), "") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp160,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp160,
	mov	w2, 33	//,
	adrp	x0, .LC3	// tmp161,
	add	x1, x0, :lo12:.LC3	//, tmp161,
	adrp	x0, .LC20	// tmp162,
	add	x0, x0, :lo12:.LC20	//, tmp162,
	bl	__assert_fail		//
.L14:
// problem119.c:34:     assert(strcmp(func0("ba"), "") == 0);
	adrp	x0, .LC21	// tmp163,
	add	x0, x0, :lo12:.LC21	//, tmp163,
	bl	func0		//
	ldrb	w0, [x0]	// _49, MEM[(const unsigned char * {ref-all})_17]
	cmp	w0, 0	// _18,
	beq	.L15		//,
// problem119.c:34:     assert(strcmp(func0("ba"), "") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp164,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp164,
	mov	w2, 34	//,
	adrp	x0, .LC3	// tmp165,
	add	x1, x0, :lo12:.LC3	//, tmp165,
	adrp	x0, .LC22	// tmp166,
	add	x0, x0, :lo12:.LC22	//, tmp166,
	bl	__assert_fail		//
.L15:
// problem119.c:35:     assert(strcmp(func0("quick"), "") == 0);
	adrp	x0, .LC23	// tmp167,
	add	x0, x0, :lo12:.LC23	//, tmp167,
	bl	func0		//
	ldrb	w0, [x0]	// _52, MEM[(const unsigned char * {ref-all})_19]
	cmp	w0, 0	// _20,
	beq	.L16		//,
// problem119.c:35:     assert(strcmp(func0("quick"), "") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp168,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp168,
	mov	w2, 35	//,
	adrp	x0, .LC3	// tmp169,
	add	x1, x0, :lo12:.LC3	//, tmp169,
	adrp	x0, .LC24	// tmp170,
	add	x0, x0, :lo12:.LC24	//, tmp170,
	bl	__assert_fail		//
.L16:
// problem119.c:36:     assert(strcmp(func0("anime"), "i") == 0);
	adrp	x0, .LC25	// tmp171,
	add	x0, x0, :lo12:.LC25	//, tmp171,
	bl	func0		//
	mov	x2, x0	// _21,
	adrp	x0, .LC26	// tmp172,
	add	x1, x0, :lo12:.LC26	//, tmp172,
	mov	x0, x2	//, _21
	bl	strcmp		//
	cmp	w0, 0	// _22,
	beq	.L17		//,
// problem119.c:36:     assert(strcmp(func0("anime"), "i") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp173,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp173,
	mov	w2, 36	//,
	adrp	x0, .LC3	// tmp174,
	add	x1, x0, :lo12:.LC3	//, tmp174,
	adrp	x0, .LC27	// tmp175,
	add	x0, x0, :lo12:.LC27	//, tmp175,
	bl	__assert_fail		//
.L17:
// problem119.c:37:     assert(strcmp(func0("Asia"), "") == 0);
	adrp	x0, .LC28	// tmp176,
	add	x0, x0, :lo12:.LC28	//, tmp176,
	bl	func0		//
	ldrb	w0, [x0]	// _57, MEM[(const unsigned char * {ref-all})_23]
	cmp	w0, 0	// _24,
	beq	.L18		//,
// problem119.c:37:     assert(strcmp(func0("Asia"), "") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp177,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp177,
	mov	w2, 37	//,
	adrp	x0, .LC3	// tmp178,
	add	x1, x0, :lo12:.LC3	//, tmp178,
	adrp	x0, .LC29	// tmp179,
	add	x0, x0, :lo12:.LC29	//, tmp179,
	bl	__assert_fail		//
.L18:
// problem119.c:38:     assert(strcmp(func0("Above"), "o") == 0);
	adrp	x0, .LC30	// tmp180,
	add	x0, x0, :lo12:.LC30	//, tmp180,
	bl	func0		//
	mov	x2, x0	// _25,
	adrp	x0, .LC17	// tmp181,
	add	x1, x0, :lo12:.LC17	//, tmp181,
	mov	x0, x2	//, _25
	bl	strcmp		//
	cmp	w0, 0	// _26,
	beq	.L19		//,
// problem119.c:38:     assert(strcmp(func0("Above"), "o") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp182,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp182,
	mov	w2, 38	//,
	adrp	x0, .LC3	// tmp183,
	add	x1, x0, :lo12:.LC3	//, tmp183,
	adrp	x0, .LC31	// tmp184,
	add	x0, x0, :lo12:.LC31	//, tmp184,
	bl	__assert_fail		//
.L19:
// problem119.c:40:     return 0;
	mov	w0, 0	// _61,
// problem119.c:41: }
	ldp	x29, x30, [sp], 16	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.local	out.1
	.comm	out.1,2,8
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
