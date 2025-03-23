	.arch armv8-a
	.file	"problem83.c"
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
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// str, str
// problem83.c:6:     int l = strlen(str);
	ldr	x0, [sp, 24]	//, str
	bl	strlen		//
// problem83.c:6:     int l = strlen(str);
	str	w0, [sp, 44]	// tmp97, l
// problem83.c:7:     if (l < 2) return false;
	ldr	w0, [sp, 44]	// tmp98, l
	cmp	w0, 1	// tmp98,
	bgt	.L2		//,
// problem83.c:7:     if (l < 2) return false;
	mov	w0, 0	// _5,
	b	.L3		//
.L2:
// problem83.c:8:     for (int i = 2; i * i <= l; i++) {
	mov	w0, 2	// tmp99,
	str	w0, [sp, 40]	// tmp99, i
// problem83.c:8:     for (int i = 2; i * i <= l; i++) {
	b	.L4		//
.L6:
// problem83.c:9:         if (l % i == 0) return false;
	ldr	w0, [sp, 44]	// tmp100, l
	ldr	w1, [sp, 40]	// tmp113, i
	sdiv	w2, w0, w1	// tmp112, tmp100, tmp113
	ldr	w1, [sp, 40]	// tmp115, i
	mul	w1, w2, w1	// tmp114, tmp112, tmp115
	sub	w0, w0, w1	// _2, tmp100, tmp114
// problem83.c:9:         if (l % i == 0) return false;
	cmp	w0, 0	// _2,
	bne	.L5		//,
// problem83.c:9:         if (l % i == 0) return false;
	mov	w0, 0	// _5,
	b	.L3		//
.L5:
// problem83.c:8:     for (int i = 2; i * i <= l; i++) {
	ldr	w0, [sp, 40]	// tmp117, i
	add	w0, w0, 1	// tmp116, tmp117,
	str	w0, [sp, 40]	// tmp116, i
.L4:
// problem83.c:8:     for (int i = 2; i * i <= l; i++) {
	ldr	w0, [sp, 40]	// tmp118, i
	mul	w0, w0, w0	// _3, tmp118, tmp118
// problem83.c:8:     for (int i = 2; i * i <= l; i++) {
	ldr	w1, [sp, 44]	// tmp119, l
	cmp	w1, w0	// tmp119, _3
	bge	.L6		//,
// problem83.c:11:     return true;
	mov	w0, 1	// _5,
.L3:
// problem83.c:12: }
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
	.string	"Hello"
	.align	3
.LC1:
	.string	"problem83.c"
	.align	3
.LC2:
	.string	"func0(\"Hello\") == true"
	.align	3
.LC3:
	.string	"abcdcba"
	.align	3
.LC4:
	.string	"func0(\"abcdcba\") == true"
	.align	3
.LC5:
	.string	"kittens"
	.align	3
.LC6:
	.string	"func0(\"kittens\") == true"
	.align	3
.LC7:
	.string	"orange"
	.align	3
.LC8:
	.string	"func0(\"orange\") == false"
	.align	3
.LC9:
	.string	"wow"
	.align	3
.LC10:
	.string	"func0(\"wow\") == true"
	.align	3
.LC11:
	.string	"world"
	.align	3
.LC12:
	.string	"func0(\"world\") == true"
	.align	3
.LC13:
	.string	"MadaM"
	.align	3
.LC14:
	.string	"func0(\"MadaM\") == true"
	.align	3
.LC15:
	.string	"Wow"
	.align	3
.LC16:
	.string	"func0(\"Wow\") == true"
	.align	3
.LC17:
	.string	""
	.align	3
.LC18:
	.string	"func0(\"\") == false"
	.align	3
.LC19:
	.string	"HI"
	.align	3
.LC20:
	.string	"func0(\"HI\") == true"
	.align	3
.LC21:
	.string	"go"
	.align	3
.LC22:
	.string	"func0(\"go\") == true"
	.align	3
.LC23:
	.string	"gogo"
	.align	3
.LC24:
	.string	"func0(\"gogo\") == false"
	.align	3
.LC25:
	.string	"aaaaaaaaaaaaaaa"
	.align	3
.LC26:
	.string	"func0(\"aaaaaaaaaaaaaaa\") == false"
	.align	3
.LC27:
	.string	"Madam"
	.align	3
.LC28:
	.string	"func0(\"Madam\") == true"
	.align	3
.LC29:
	.string	"M"
	.align	3
.LC30:
	.string	"func0(\"M\") == false"
	.align	3
.LC31:
	.string	"0"
	.align	3
.LC32:
	.string	"func0(\"0\") == false"
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
// problem83.c:20:     assert(func0("Hello") == true);
	adrp	x0, .LC0	// tmp116,
	add	x0, x0, :lo12:.LC0	//, tmp116,
	bl	func0		//
	and	w0, w0, 255	// _1, tmp117
	cmp	w0, 0	// _1,
	bne	.L8		//,
// problem83.c:20:     assert(func0("Hello") == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp118,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp118,
	mov	w2, 20	//,
	adrp	x0, .LC1	// tmp119,
	add	x1, x0, :lo12:.LC1	//, tmp119,
	adrp	x0, .LC2	// tmp120,
	add	x0, x0, :lo12:.LC2	//, tmp120,
	bl	__assert_fail		//
.L8:
// problem83.c:21:     assert(func0("abcdcba") == true);
	adrp	x0, .LC3	// tmp121,
	add	x0, x0, :lo12:.LC3	//, tmp121,
	bl	func0		//
	and	w0, w0, 255	// _2, tmp122
	cmp	w0, 0	// _2,
	bne	.L9		//,
// problem83.c:21:     assert(func0("abcdcba") == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp123,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp123,
	mov	w2, 21	//,
	adrp	x0, .LC1	// tmp124,
	add	x1, x0, :lo12:.LC1	//, tmp124,
	adrp	x0, .LC4	// tmp125,
	add	x0, x0, :lo12:.LC4	//, tmp125,
	bl	__assert_fail		//
.L9:
// problem83.c:22:     assert(func0("kittens") == true);
	adrp	x0, .LC5	// tmp126,
	add	x0, x0, :lo12:.LC5	//, tmp126,
	bl	func0		//
	and	w0, w0, 255	// _3, tmp127
	cmp	w0, 0	// _3,
	bne	.L10		//,
// problem83.c:22:     assert(func0("kittens") == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp128,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp128,
	mov	w2, 22	//,
	adrp	x0, .LC1	// tmp129,
	add	x1, x0, :lo12:.LC1	//, tmp129,
	adrp	x0, .LC6	// tmp130,
	add	x0, x0, :lo12:.LC6	//, tmp130,
	bl	__assert_fail		//
.L10:
// problem83.c:23:     assert(func0("orange") == false);
	adrp	x0, .LC7	// tmp131,
	add	x0, x0, :lo12:.LC7	//, tmp131,
	bl	func0		//
	and	w0, w0, 255	// _4, tmp132
	eor	w0, w0, 1	// tmp133, _4,
	and	w0, w0, 255	// _5, tmp133
	cmp	w0, 0	// _5,
	bne	.L11		//,
// problem83.c:23:     assert(func0("orange") == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp134,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp134,
	mov	w2, 23	//,
	adrp	x0, .LC1	// tmp135,
	add	x1, x0, :lo12:.LC1	//, tmp135,
	adrp	x0, .LC8	// tmp136,
	add	x0, x0, :lo12:.LC8	//, tmp136,
	bl	__assert_fail		//
.L11:
// problem83.c:24:     assert(func0("wow") == true);
	adrp	x0, .LC9	// tmp137,
	add	x0, x0, :lo12:.LC9	//, tmp137,
	bl	func0		//
	and	w0, w0, 255	// _6, tmp138
	cmp	w0, 0	// _6,
	bne	.L12		//,
// problem83.c:24:     assert(func0("wow") == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp139,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp139,
	mov	w2, 24	//,
	adrp	x0, .LC1	// tmp140,
	add	x1, x0, :lo12:.LC1	//, tmp140,
	adrp	x0, .LC10	// tmp141,
	add	x0, x0, :lo12:.LC10	//, tmp141,
	bl	__assert_fail		//
.L12:
// problem83.c:25:     assert(func0("world") == true);
	adrp	x0, .LC11	// tmp142,
	add	x0, x0, :lo12:.LC11	//, tmp142,
	bl	func0		//
	and	w0, w0, 255	// _7, tmp143
	cmp	w0, 0	// _7,
	bne	.L13		//,
// problem83.c:25:     assert(func0("world") == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp144,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp144,
	mov	w2, 25	//,
	adrp	x0, .LC1	// tmp145,
	add	x1, x0, :lo12:.LC1	//, tmp145,
	adrp	x0, .LC12	// tmp146,
	add	x0, x0, :lo12:.LC12	//, tmp146,
	bl	__assert_fail		//
.L13:
// problem83.c:26:     assert(func0("MadaM") == true);
	adrp	x0, .LC13	// tmp147,
	add	x0, x0, :lo12:.LC13	//, tmp147,
	bl	func0		//
	and	w0, w0, 255	// _8, tmp148
	cmp	w0, 0	// _8,
	bne	.L14		//,
// problem83.c:26:     assert(func0("MadaM") == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp149,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp149,
	mov	w2, 26	//,
	adrp	x0, .LC1	// tmp150,
	add	x1, x0, :lo12:.LC1	//, tmp150,
	adrp	x0, .LC14	// tmp151,
	add	x0, x0, :lo12:.LC14	//, tmp151,
	bl	__assert_fail		//
.L14:
// problem83.c:27:     assert(func0("Wow") == true);
	adrp	x0, .LC15	// tmp152,
	add	x0, x0, :lo12:.LC15	//, tmp152,
	bl	func0		//
	and	w0, w0, 255	// _9, tmp153
	cmp	w0, 0	// _9,
	bne	.L15		//,
// problem83.c:27:     assert(func0("Wow") == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp154,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp154,
	mov	w2, 27	//,
	adrp	x0, .LC1	// tmp155,
	add	x1, x0, :lo12:.LC1	//, tmp155,
	adrp	x0, .LC16	// tmp156,
	add	x0, x0, :lo12:.LC16	//, tmp156,
	bl	__assert_fail		//
.L15:
// problem83.c:28:     assert(func0("") == false);
	adrp	x0, .LC17	// tmp157,
	add	x0, x0, :lo12:.LC17	//, tmp157,
	bl	func0		//
	and	w0, w0, 255	// _10, tmp158
	eor	w0, w0, 1	// tmp159, _10,
	and	w0, w0, 255	// _11, tmp159
	cmp	w0, 0	// _11,
	bne	.L16		//,
// problem83.c:28:     assert(func0("") == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp160,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp160,
	mov	w2, 28	//,
	adrp	x0, .LC1	// tmp161,
	add	x1, x0, :lo12:.LC1	//, tmp161,
	adrp	x0, .LC18	// tmp162,
	add	x0, x0, :lo12:.LC18	//, tmp162,
	bl	__assert_fail		//
.L16:
// problem83.c:29:     assert(func0("HI") == true);
	adrp	x0, .LC19	// tmp163,
	add	x0, x0, :lo12:.LC19	//, tmp163,
	bl	func0		//
	and	w0, w0, 255	// _12, tmp164
	cmp	w0, 0	// _12,
	bne	.L17		//,
// problem83.c:29:     assert(func0("HI") == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp165,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp165,
	mov	w2, 29	//,
	adrp	x0, .LC1	// tmp166,
	add	x1, x0, :lo12:.LC1	//, tmp166,
	adrp	x0, .LC20	// tmp167,
	add	x0, x0, :lo12:.LC20	//, tmp167,
	bl	__assert_fail		//
.L17:
// problem83.c:30:     assert(func0("go") == true);
	adrp	x0, .LC21	// tmp168,
	add	x0, x0, :lo12:.LC21	//, tmp168,
	bl	func0		//
	and	w0, w0, 255	// _13, tmp169
	cmp	w0, 0	// _13,
	bne	.L18		//,
// problem83.c:30:     assert(func0("go") == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp170,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp170,
	mov	w2, 30	//,
	adrp	x0, .LC1	// tmp171,
	add	x1, x0, :lo12:.LC1	//, tmp171,
	adrp	x0, .LC22	// tmp172,
	add	x0, x0, :lo12:.LC22	//, tmp172,
	bl	__assert_fail		//
.L18:
// problem83.c:31:     assert(func0("gogo") == false);
	adrp	x0, .LC23	// tmp173,
	add	x0, x0, :lo12:.LC23	//, tmp173,
	bl	func0		//
	and	w0, w0, 255	// _14, tmp174
	eor	w0, w0, 1	// tmp175, _14,
	and	w0, w0, 255	// _15, tmp175
	cmp	w0, 0	// _15,
	bne	.L19		//,
// problem83.c:31:     assert(func0("gogo") == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp176,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp176,
	mov	w2, 31	//,
	adrp	x0, .LC1	// tmp177,
	add	x1, x0, :lo12:.LC1	//, tmp177,
	adrp	x0, .LC24	// tmp178,
	add	x0, x0, :lo12:.LC24	//, tmp178,
	bl	__assert_fail		//
.L19:
// problem83.c:32:     assert(func0("aaaaaaaaaaaaaaa") == false);
	adrp	x0, .LC25	// tmp179,
	add	x0, x0, :lo12:.LC25	//, tmp179,
	bl	func0		//
	and	w0, w0, 255	// _16, tmp180
	eor	w0, w0, 1	// tmp181, _16,
	and	w0, w0, 255	// _17, tmp181
	cmp	w0, 0	// _17,
	bne	.L20		//,
// problem83.c:32:     assert(func0("aaaaaaaaaaaaaaa") == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp182,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp182,
	mov	w2, 32	//,
	adrp	x0, .LC1	// tmp183,
	add	x1, x0, :lo12:.LC1	//, tmp183,
	adrp	x0, .LC26	// tmp184,
	add	x0, x0, :lo12:.LC26	//, tmp184,
	bl	__assert_fail		//
.L20:
// problem83.c:33:     assert(func0("Madam") == true);
	adrp	x0, .LC27	// tmp185,
	add	x0, x0, :lo12:.LC27	//, tmp185,
	bl	func0		//
	and	w0, w0, 255	// _18, tmp186
	cmp	w0, 0	// _18,
	bne	.L21		//,
// problem83.c:33:     assert(func0("Madam") == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp187,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp187,
	mov	w2, 33	//,
	adrp	x0, .LC1	// tmp188,
	add	x1, x0, :lo12:.LC1	//, tmp188,
	adrp	x0, .LC28	// tmp189,
	add	x0, x0, :lo12:.LC28	//, tmp189,
	bl	__assert_fail		//
.L21:
// problem83.c:34:     assert(func0("M") == false);
	adrp	x0, .LC29	// tmp190,
	add	x0, x0, :lo12:.LC29	//, tmp190,
	bl	func0		//
	and	w0, w0, 255	// _19, tmp191
	eor	w0, w0, 1	// tmp192, _19,
	and	w0, w0, 255	// _20, tmp192
	cmp	w0, 0	// _20,
	bne	.L22		//,
// problem83.c:34:     assert(func0("M") == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp193,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp193,
	mov	w2, 34	//,
	adrp	x0, .LC1	// tmp194,
	add	x1, x0, :lo12:.LC1	//, tmp194,
	adrp	x0, .LC30	// tmp195,
	add	x0, x0, :lo12:.LC30	//, tmp195,
	bl	__assert_fail		//
.L22:
// problem83.c:35:     assert(func0("0") == false);
	adrp	x0, .LC31	// tmp196,
	add	x0, x0, :lo12:.LC31	//, tmp196,
	bl	func0		//
	and	w0, w0, 255	// _21, tmp197
	eor	w0, w0, 1	// tmp198, _21,
	and	w0, w0, 255	// _22, tmp198
	cmp	w0, 0	// _22,
	bne	.L23		//,
// problem83.c:35:     assert(func0("0") == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp199,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp199,
	mov	w2, 35	//,
	adrp	x0, .LC1	// tmp200,
	add	x1, x0, :lo12:.LC1	//, tmp200,
	adrp	x0, .LC32	// tmp201,
	add	x0, x0, :lo12:.LC32	//, tmp201,
	bl	__assert_fail		//
.L23:
// problem83.c:37:     return 0;
	mov	w0, 0	// _56,
// problem83.c:38: }
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
