	.arch armv8-a
	.file	"problem96.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 24]	// dict, dict
	str	w1, [sp, 20]	// size, size
// problem96.c:7:     if (size == 0) return 0;
	ldr	w0, [sp, 20]	// tmp134, size
	cmp	w0, 0	// tmp134,
	bne	.L2		//,
// problem96.c:7:     if (size == 0) return 0;
	mov	w0, 0	// _49,
// problem96.c:7:     if (size == 0) return 0;
	b	.L3		//
.L2:
// problem96.c:8:     int has_lower = 0, has_upper = 0;
	str	wzr, [sp, 40]	//, has_lower
// problem96.c:8:     int has_lower = 0, has_upper = 0;
	str	wzr, [sp, 44]	//, has_upper
// problem96.c:9:     for (int i = 0; i < size; ++i) {
	str	wzr, [sp, 48]	//, i
// problem96.c:9:     for (int i = 0; i < size; ++i) {
	b	.L4		//
.L11:
// problem96.c:10:         char* key = dict[i][0];
	ldrsw	x0, [sp, 48]	// _1, i
	lsl	x0, x0, 4	// _2, _1,
	ldr	x1, [sp, 24]	// tmp135, dict
	add	x0, x1, x0	// _3, tmp135, _2
// problem96.c:10:         char* key = dict[i][0];
	ldr	x0, [x0]	// tmp136, (*_3)[0]
	str	x0, [sp, 56]	// tmp136, key
// problem96.c:11:         for (int j = 0; key[j]; ++j) {
	str	wzr, [sp, 52]	//, j
// problem96.c:11:         for (int j = 0; key[j]; ++j) {
	b	.L5		//
.L10:
// problem96.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	bl	__ctype_b_loc		//
// problem96.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	ldr	x1, [x0]	// _5, *_4
	ldrsw	x0, [sp, 52]	// _6, j
	ldr	x2, [sp, 56]	// tmp137, key
	add	x0, x2, x0	// _7, tmp137, _6
	ldrb	w0, [x0]	// _8, *_7
	and	x0, x0, 255	// _9, _8
	lsl	x0, x0, 1	// _10, _9,
	add	x0, x1, x0	// _11, _5, _10
	ldrh	w0, [x0]	// _12, *_11
	and	w0, w0, 1024	// _14, _13,
// problem96.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	cmp	w0, 0	// _14,
	bne	.L6		//,
// problem96.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	mov	w0, 0	// _49,
// problem96.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	b	.L3		//
.L6:
// problem96.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	bl	__ctype_b_loc		//
// problem96.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	ldr	x1, [x0]	// _16, *_15
	ldrsw	x0, [sp, 52]	// _17, j
	ldr	x2, [sp, 56]	// tmp138, key
	add	x0, x2, x0	// _18, tmp138, _17
	ldrb	w0, [x0]	// _19, *_18
	and	x0, x0, 255	// _20, _19
	lsl	x0, x0, 1	// _21, _20,
	add	x0, x1, x0	// _22, _16, _21
	ldrh	w0, [x0]	// _23, *_22
	and	w0, w0, 256	// _25, _24,
// problem96.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	cmp	w0, 0	// _25,
	beq	.L7		//,
// problem96.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	mov	w0, 1	// tmp139,
	str	w0, [sp, 44]	// tmp139, has_upper
.L7:
// problem96.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	bl	__ctype_b_loc		//
// problem96.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	ldr	x1, [x0]	// _27, *_26
	ldrsw	x0, [sp, 52]	// _28, j
	ldr	x2, [sp, 56]	// tmp140, key
	add	x0, x2, x0	// _29, tmp140, _28
	ldrb	w0, [x0]	// _30, *_29
	and	x0, x0, 255	// _31, _30
	lsl	x0, x0, 1	// _32, _31,
	add	x0, x1, x0	// _33, _27, _32
	ldrh	w0, [x0]	// _34, *_33
	and	w0, w0, 512	// _36, _35,
// problem96.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	cmp	w0, 0	// _36,
	beq	.L8		//,
// problem96.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	mov	w0, 1	// tmp141,
	str	w0, [sp, 40]	// tmp141, has_lower
.L8:
// problem96.c:15:             if (has_upper + has_lower == 2) return 0;
	ldr	w1, [sp, 44]	// tmp142, has_upper
	ldr	w0, [sp, 40]	// tmp143, has_lower
	add	w0, w1, w0	// _37, tmp142, tmp143
// problem96.c:15:             if (has_upper + has_lower == 2) return 0;
	cmp	w0, 2	// _37,
	bne	.L9		//,
// problem96.c:15:             if (has_upper + has_lower == 2) return 0;
	mov	w0, 0	// _49,
// problem96.c:15:             if (has_upper + has_lower == 2) return 0;
	b	.L3		//
.L9:
// problem96.c:11:         for (int j = 0; key[j]; ++j) {
	ldr	w0, [sp, 52]	// tmp145, j
	add	w0, w0, 1	// tmp144, tmp145,
	str	w0, [sp, 52]	// tmp144, j
.L5:
// problem96.c:11:         for (int j = 0; key[j]; ++j) {
	ldrsw	x0, [sp, 52]	// _38, j
	ldr	x1, [sp, 56]	// tmp146, key
	add	x0, x1, x0	// _39, tmp146, _38
	ldrb	w0, [x0]	// _40, *_39
// problem96.c:11:         for (int j = 0; key[j]; ++j) {
	cmp	w0, 0	// _40,
	bne	.L10		//,
// problem96.c:9:     for (int i = 0; i < size; ++i) {
	ldr	w0, [sp, 48]	// tmp148, i
	add	w0, w0, 1	// tmp147, tmp148,
	str	w0, [sp, 48]	// tmp147, i
.L4:
// problem96.c:9:     for (int i = 0; i < size; ++i) {
	ldr	w1, [sp, 48]	// tmp149, i
	ldr	w0, [sp, 20]	// tmp150, size
	cmp	w1, w0	// tmp149, tmp150
	blt	.L11		//,
// problem96.c:18:     return 1;
	mov	w0, 1	// _49,
.L3:
// problem96.c:19: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC30:
	.string	"problem96.c"
	.align	3
.LC31:
	.string	"func0(test1, 2) == 1"
	.align	3
.LC33:
	.string	"func0(test2, 3) == 0"
	.align	3
.LC35:
	.string	"func0(test3, 3) == 0"
	.align	3
.LC37:
	.string	"func0(test4, 3) == 0"
	.align	3
.LC39:
	.string	"func0(test5, 2) == 1"
	.align	3
.LC41:
	.string	"func0(test6, 2) == 1"
	.align	3
.LC42:
	.string	"func0(NULL, 0) == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #272	//,,
	.cfi_def_cfa_offset 272
	stp	x29, x30, [sp, 256]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 256	//,,
// problem96.c:26: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp101,
	ldr	x1, [x0]	// tmp170,
	str	x1, [sp, 248]	// tmp170, D.5782
	mov	x1, 0	// tmp170
// problem96.c:27:     char* test1[][2] = {{"p","pineapple"}, {"b","banana"}};
	adrp	x0, .LC29	// tmp103,
	add	x1, x0, :lo12:.LC29	// tmp102, tmp103,
	add	x0, sp, 8	// tmp104,,
	ldp	q0, q1, [x1]	// tmp106, tmp107,
	stp	q0, q1, [x0]	// tmp106, tmp107, test1
// problem96.c:28:     assert(func0(test1, 2) == 1);
	add	x0, sp, 8	// tmp108,,
	mov	w1, 2	//,
	bl	func0		//
// problem96.c:28:     assert(func0(test1, 2) == 1);
	cmp	w0, 1	// _1,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp109,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp109,
	mov	w2, 28	//,
	adrp	x0, .LC30	// tmp110,
	add	x1, x0, :lo12:.LC30	//, tmp110,
	adrp	x0, .LC31	// tmp111,
	add	x0, x0, :lo12:.LC31	//, tmp111,
	bl	__assert_fail		//
.L13:
// problem96.c:30:     char* test2[][2] = {{"p","pineapple"}, {"A","banana"}, {"B","banana"}};
	adrp	x0, .LC32	// tmp113,
	add	x1, x0, :lo12:.LC32	// tmp112, tmp113,
	add	x0, sp, 104	// tmp114,,
	ldp	q0, q1, [x1]	// tmp116, tmp117,
	stp	q0, q1, [x0]	// tmp116, tmp117, test2
	ldr	q0, [x1, 32]	// tmp118,
	str	q0, [x0, 32]	// tmp118, test2
// problem96.c:31:     assert(func0(test2, 3) == 0);
	add	x0, sp, 104	// tmp119,,
	mov	w1, 3	//,
	bl	func0		//
// problem96.c:31:     assert(func0(test2, 3) == 0);
	cmp	w0, 0	// _2,
	beq	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp120,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp120,
	mov	w2, 31	//,
	adrp	x0, .LC30	// tmp121,
	add	x1, x0, :lo12:.LC30	//, tmp121,
	adrp	x0, .LC33	// tmp122,
	add	x0, x0, :lo12:.LC33	//, tmp122,
	bl	__assert_fail		//
.L14:
// problem96.c:33:     char* test3[][2] = {{"p","pineapple"}, {"5","banana"}, {"a","apple"}};
	adrp	x0, .LC34	// tmp124,
	add	x1, x0, :lo12:.LC34	// tmp123, tmp124,
	add	x0, sp, 152	// tmp125,,
	ldp	q0, q1, [x1]	// tmp127, tmp128,
	stp	q0, q1, [x0]	// tmp127, tmp128, test3
	ldr	q0, [x1, 32]	// tmp129,
	str	q0, [x0, 32]	// tmp129, test3
// problem96.c:34:     assert(func0(test3, 3) == 0);
	add	x0, sp, 152	// tmp130,,
	mov	w1, 3	//,
	bl	func0		//
// problem96.c:34:     assert(func0(test3, 3) == 0);
	cmp	w0, 0	// _3,
	beq	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 34	//,
	adrp	x0, .LC30	// tmp132,
	add	x1, x0, :lo12:.LC30	//, tmp132,
	adrp	x0, .LC35	// tmp133,
	add	x0, x0, :lo12:.LC35	//, tmp133,
	bl	__assert_fail		//
.L15:
// problem96.c:36:     char* test4[][2] = {{"Name","John"}, {"Age","36"}, {"City","Houston"}};
	adrp	x0, .LC36	// tmp135,
	add	x1, x0, :lo12:.LC36	// tmp134, tmp135,
	add	x0, sp, 200	// tmp136,,
	ldp	q0, q1, [x1]	// tmp138, tmp139,
	stp	q0, q1, [x0]	// tmp138, tmp139, test4
	ldr	q0, [x1, 32]	// tmp140,
	str	q0, [x0, 32]	// tmp140, test4
// problem96.c:37:     assert(func0(test4, 3) == 0);
	add	x0, sp, 200	// tmp141,,
	mov	w1, 3	//,
	bl	func0		//
// problem96.c:37:     assert(func0(test4, 3) == 0);
	cmp	w0, 0	// _4,
	beq	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp142,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp142,
	mov	w2, 37	//,
	adrp	x0, .LC30	// tmp143,
	add	x1, x0, :lo12:.LC30	//, tmp143,
	adrp	x0, .LC37	// tmp144,
	add	x0, x0, :lo12:.LC37	//, tmp144,
	bl	__assert_fail		//
.L16:
// problem96.c:39:     char* test5[][2] = {{"STATE","NC"}, {"ZIP","12345"}};
	adrp	x0, .LC38	// tmp146,
	add	x1, x0, :lo12:.LC38	// tmp145, tmp146,
	add	x0, sp, 40	// tmp147,,
	ldp	q0, q1, [x1]	// tmp149, tmp150,
	stp	q0, q1, [x0]	// tmp149, tmp150, test5
// problem96.c:40:     assert(func0(test5, 2) == 1);
	add	x0, sp, 40	// tmp151,,
	mov	w1, 2	//,
	bl	func0		//
// problem96.c:40:     assert(func0(test5, 2) == 1);
	cmp	w0, 1	// _5,
	beq	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp152,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp152,
	mov	w2, 40	//,
	adrp	x0, .LC30	// tmp153,
	add	x1, x0, :lo12:.LC30	//, tmp153,
	adrp	x0, .LC39	// tmp154,
	add	x0, x0, :lo12:.LC39	//, tmp154,
	bl	__assert_fail		//
.L17:
// problem96.c:42:     char* test6[][2] = {{"fruit","Orange"}, {"taste","Sweet"}};
	adrp	x0, .LC40	// tmp156,
	add	x1, x0, :lo12:.LC40	// tmp155, tmp156,
	add	x0, sp, 72	// tmp157,,
	ldp	q0, q1, [x1]	// tmp159, tmp160,
	stp	q0, q1, [x0]	// tmp159, tmp160, test6
// problem96.c:43:     assert(func0(test6, 2) == 1);
	add	x0, sp, 72	// tmp161,,
	mov	w1, 2	//,
	bl	func0		//
// problem96.c:43:     assert(func0(test6, 2) == 1);
	cmp	w0, 1	// _6,
	beq	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp162,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp162,
	mov	w2, 43	//,
	adrp	x0, .LC30	// tmp163,
	add	x1, x0, :lo12:.LC30	//, tmp163,
	adrp	x0, .LC41	// tmp164,
	add	x0, x0, :lo12:.LC41	//, tmp164,
	bl	__assert_fail		//
.L18:
// problem96.c:45:     assert(func0(NULL, 0) == 0);
	mov	w1, 0	//,
	mov	x0, 0	//,
	bl	func0		//
// problem96.c:45:     assert(func0(NULL, 0) == 0);
	cmp	w0, 0	// _7,
	beq	.L19		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp165,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp165,
	mov	w2, 45	//,
	adrp	x0, .LC30	// tmp166,
	add	x1, x0, :lo12:.LC30	//, tmp166,
	adrp	x0, .LC42	// tmp167,
	add	x0, x0, :lo12:.LC42	//, tmp167,
	bl	__assert_fail		//
.L19:
// problem96.c:47:     return 0;
	mov	w0, 0	// _29,
// problem96.c:48: }
	mov	w1, w0	// <retval>, _29
	adrp	x0, :got:__stack_chk_guard	// tmp169,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp169,
	ldr	x3, [sp, 248]	// tmp171, D.5782
	ldr	x2, [x0]	// tmp172,
	subs	x3, x3, x2	// tmp171, tmp172
	mov	x2, 0	// tmp172
	beq	.L21		//,
	bl	__stack_chk_fail		//
.L21:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 256]	//,,
	add	sp, sp, 272	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"p"
	.align	3
.LC1:
	.string	"pineapple"
	.align	3
.LC2:
	.string	"b"
	.align	3
.LC3:
	.string	"banana"
	.data
	.align	3
.LC29:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.section	.rodata
	.align	3
.LC5:
	.string	"A"
	.align	3
.LC6:
	.string	"B"
	.data
	.align	3
.LC32:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC5
	.xword	.LC3
	.xword	.LC6
	.xword	.LC3
	.section	.rodata
	.align	3
.LC8:
	.string	"5"
	.align	3
.LC9:
	.string	"a"
	.align	3
.LC10:
	.string	"apple"
	.data
	.align	3
.LC34:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC8
	.xword	.LC3
	.xword	.LC9
	.xword	.LC10
	.section	.rodata
	.align	3
.LC12:
	.string	"Name"
	.align	3
.LC13:
	.string	"John"
	.align	3
.LC14:
	.string	"Age"
	.align	3
.LC15:
	.string	"36"
	.align	3
.LC16:
	.string	"City"
	.align	3
.LC17:
	.string	"Houston"
	.data
	.align	3
.LC36:
	.xword	.LC12
	.xword	.LC13
	.xword	.LC14
	.xword	.LC15
	.xword	.LC16
	.xword	.LC17
	.section	.rodata
	.align	3
.LC19:
	.string	"STATE"
	.align	3
.LC20:
	.string	"NC"
	.align	3
.LC21:
	.string	"ZIP"
	.align	3
.LC22:
	.string	"12345"
	.data
	.align	3
.LC38:
	.xword	.LC19
	.xword	.LC20
	.xword	.LC21
	.xword	.LC22
	.section	.rodata
	.align	3
.LC24:
	.string	"fruit"
	.align	3
.LC25:
	.string	"Orange"
	.align	3
.LC26:
	.string	"taste"
	.align	3
.LC27:
	.string	"Sweet"
	.data
	.align	3
.LC40:
	.xword	.LC24
	.xword	.LC25
	.xword	.LC26
	.xword	.LC27
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
