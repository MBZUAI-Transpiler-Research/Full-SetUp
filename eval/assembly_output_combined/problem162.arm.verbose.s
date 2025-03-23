	.arch armv8-a
	.file	"problem162.c"
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
	str	x0, [sp, 24]	// s, s
// problem162.c:6:     int nletter = 0;
	str	wzr, [sp, 48]	//, nletter
// problem162.c:7:     int length = strlen(s);
	ldr	x0, [sp, 24]	//, s
	bl	strlen		//
// problem162.c:7:     int length = strlen(s);
	str	w0, [sp, 60]	// tmp158, length
// problem162.c:8:     for (int i = 0; i < length; i++) {
	str	wzr, [sp, 52]	//, i
// problem162.c:8:     for (int i = 0; i < length; i++) {
	b	.L2		//
.L6:
// problem162.c:9:         if (isalpha((unsigned char)s[i])) {
	bl	__ctype_b_loc		//
// problem162.c:9:         if (isalpha((unsigned char)s[i])) {
	ldr	x1, [x0]	// _3, *_2
	ldrsw	x0, [sp, 52]	// _4, i
	ldr	x2, [sp, 24]	// tmp159, s
	add	x0, x2, x0	// _5, tmp159, _4
	ldrb	w0, [x0]	// _6, *_5
	and	x0, x0, 255	// _7, _6
	lsl	x0, x0, 1	// _8, _7,
	add	x0, x1, x0	// _9, _3, _8
	ldrh	w0, [x0]	// _10, *_9
	and	w0, w0, 1024	// _12, _11,
// problem162.c:9:         if (isalpha((unsigned char)s[i])) {
	cmp	w0, 0	// _12,
	beq	.L3		//,
// problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	bl	__ctype_b_loc		//
// problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	ldr	x1, [x0]	// _14, *_13
	ldrsw	x0, [sp, 52]	// _15, i
	ldr	x2, [sp, 24]	// tmp160, s
	add	x0, x2, x0	// _16, tmp160, _15
	ldrb	w0, [x0]	// _17, *_16
	and	x0, x0, 255	// _18, _17
	lsl	x0, x0, 1	// _19, _18,
	add	x0, x1, x0	// _20, _14, _19
	ldrh	w0, [x0]	// _21, *_20
	and	w0, w0, 256	// _23, _22,
// problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	cmp	w0, 0	// _23,
	beq	.L4		//,
// problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	ldrsw	x0, [sp, 52]	// _24, i
	ldr	x1, [sp, 24]	// tmp161, s
	add	x0, x1, x0	// _25, tmp161, _24
	ldrb	w0, [x0]	// _26, *_25
// problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	bl	tolower		//
	mov	w2, w0	// _28,
// problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	ldrsw	x0, [sp, 52]	// _29, i
	ldr	x1, [sp, 24]	// tmp162, s
	add	x0, x1, x0	// _30, tmp162, _29
// problem162.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	and	w1, w2, 255	// _31, _28
	strb	w1, [x0]	// tmp163, *_30
	b	.L5		//
.L4:
// problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	bl	__ctype_b_loc		//
// problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	ldr	x1, [x0]	// _33, *_32
	ldrsw	x0, [sp, 52]	// _34, i
	ldr	x2, [sp, 24]	// tmp164, s
	add	x0, x2, x0	// _35, tmp164, _34
	ldrb	w0, [x0]	// _36, *_35
	and	x0, x0, 255	// _37, _36
	lsl	x0, x0, 1	// _38, _37,
	add	x0, x1, x0	// _39, _33, _38
	ldrh	w0, [x0]	// _40, *_39
	and	w0, w0, 512	// _42, _41,
// problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	cmp	w0, 0	// _42,
	beq	.L5		//,
// problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	ldrsw	x0, [sp, 52]	// _43, i
	ldr	x1, [sp, 24]	// tmp165, s
	add	x0, x1, x0	// _44, tmp165, _43
	ldrb	w0, [x0]	// _45, *_44
// problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	bl	toupper		//
	mov	w2, w0	// _47,
// problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	ldrsw	x0, [sp, 52]	// _48, i
	ldr	x1, [sp, 24]	// tmp166, s
	add	x0, x1, x0	// _49, tmp166, _48
// problem162.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	and	w1, w2, 255	// _50, _47
	strb	w1, [x0]	// tmp167, *_49
	b	.L5		//
.L3:
// problem162.c:13:             nletter += 1;
	ldr	w0, [sp, 48]	// tmp169, nletter
	add	w0, w0, 1	// tmp168, tmp169,
	str	w0, [sp, 48]	// tmp168, nletter
.L5:
// problem162.c:8:     for (int i = 0; i < length; i++) {
	ldr	w0, [sp, 52]	// tmp171, i
	add	w0, w0, 1	// tmp170, tmp171,
	str	w0, [sp, 52]	// tmp170, i
.L2:
// problem162.c:8:     for (int i = 0; i < length; i++) {
	ldr	w1, [sp, 52]	// tmp172, i
	ldr	w0, [sp, 60]	// tmp173, length
	cmp	w1, w0	// tmp172, tmp173
	blt	.L6		//,
// problem162.c:16:     if (nletter == length) {
	ldr	w1, [sp, 48]	// tmp174, nletter
	ldr	w0, [sp, 60]	// tmp175, length
	cmp	w1, w0	// tmp174, tmp175
	bne	.L7		//,
// problem162.c:17:         for (int i = 0; i < length / 2; i++) {
	str	wzr, [sp, 56]	//, i
// problem162.c:17:         for (int i = 0; i < length / 2; i++) {
	b	.L8		//
.L9:
// problem162.c:18:             char temp = s[i];
	ldrsw	x0, [sp, 56]	// _51, i
	ldr	x1, [sp, 24]	// tmp176, s
	add	x0, x1, x0	// _52, tmp176, _51
// problem162.c:18:             char temp = s[i];
	ldrb	w0, [x0]	// tmp177, *_52
	strb	w0, [sp, 47]	// tmp177, temp
// problem162.c:19:             s[i] = s[length - i - 1];
	ldr	w1, [sp, 60]	// tmp178, length
	ldr	w0, [sp, 56]	// tmp179, i
	sub	w0, w1, w0	// _53, tmp178, tmp179
	sxtw	x0, w0	// _54, _53
// problem162.c:19:             s[i] = s[length - i - 1];
	sub	x0, x0, #1	// _55, _54,
	ldr	x1, [sp, 24]	// tmp180, s
	add	x1, x1, x0	// _56, tmp180, _55
// problem162.c:19:             s[i] = s[length - i - 1];
	ldrsw	x0, [sp, 56]	// _57, i
	ldr	x2, [sp, 24]	// tmp181, s
	add	x0, x2, x0	// _58, tmp181, _57
// problem162.c:19:             s[i] = s[length - i - 1];
	ldrb	w1, [x1]	// _59, *_56
// problem162.c:19:             s[i] = s[length - i - 1];
	strb	w1, [x0]	// tmp182, *_58
// problem162.c:20:             s[length - i - 1] = temp;
	ldr	w1, [sp, 60]	// tmp183, length
	ldr	w0, [sp, 56]	// tmp184, i
	sub	w0, w1, w0	// _60, tmp183, tmp184
	sxtw	x0, w0	// _61, _60
// problem162.c:20:             s[length - i - 1] = temp;
	sub	x0, x0, #1	// _62, _61,
	ldr	x1, [sp, 24]	// tmp185, s
	add	x0, x1, x0	// _63, tmp185, _62
// problem162.c:20:             s[length - i - 1] = temp;
	ldrb	w1, [sp, 47]	// tmp186, temp
	strb	w1, [x0]	// tmp186, *_63
// problem162.c:17:         for (int i = 0; i < length / 2; i++) {
	ldr	w0, [sp, 56]	// tmp188, i
	add	w0, w0, 1	// tmp187, tmp188,
	str	w0, [sp, 56]	// tmp187, i
.L8:
// problem162.c:17:         for (int i = 0; i < length / 2; i++) {
	ldr	w0, [sp, 60]	// tmp189, length
	lsr	w1, w0, 31	// tmp190, tmp189,
	add	w0, w1, w0	// tmp191, tmp190, tmp189
	asr	w0, w0, 1	// tmp192, tmp191,
	mov	w1, w0	// _64, tmp192
// problem162.c:17:         for (int i = 0; i < length / 2; i++) {
	ldr	w0, [sp, 56]	// tmp193, i
	cmp	w0, w1	// tmp193, _64
	blt	.L9		//,
.L7:
// problem162.c:23:     return s;
	ldr	x0, [sp, 24]	// _83, s
// problem162.c:24: }
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
	.string	"aSdF"
	.align	3
.LC2:
	.string	"problem162.c"
	.align	3
.LC3:
	.string	"strcmp(func0(test1), \"aSdF\") == 0"
	.align	3
.LC5:
	.string	"4321"
	.align	3
.LC6:
	.string	"strcmp(func0(test2), \"4321\") == 0"
	.align	3
.LC8:
	.string	"AB"
	.align	3
.LC9:
	.string	"strcmp(func0(test3), \"AB\") == 0"
	.align	3
.LC11:
	.string	"#A@c"
	.align	3
.LC12:
	.string	"strcmp(func0(test4), \"#A@c\") == 0"
	.align	3
.LC14:
	.string	"#aSDFw^45"
	.align	3
.LC15:
	.string	"strcmp(func0(test5), \"#aSDFw^45\") == 0"
	.align	3
.LC17:
	.string	"2@6#"
	.align	3
.LC18:
	.string	"strcmp(func0(test6), \"2@6#\") == 0"
	.align	3
.LC20:
	.string	"#$A^d"
	.align	3
.LC21:
	.string	"strcmp(func0(test7), \"#$A^d\") == 0"
	.align	3
.LC23:
	.string	"#CCC"
	.align	3
.LC24:
	.string	"strcmp(func0(test8), \"#CCC\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #96	//,,
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80	//,,
// problem162.c:31: int main(){
	adrp	x0, :got:__stack_chk_guard	// tmp110,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp110,
	ldr	x1, [x0]	// tmp201,
	str	x1, [sp, 72]	// tmp201, D.5226
	mov	x1, 0	// tmp201
// problem162.c:32:     char test1[] = "AsDf";
	adrp	x0, .LC0	// tmp112,
	add	x1, x0, :lo12:.LC0	// tmp111, tmp112,
	add	x0, sp, 8	// tmp113,,
	ldr	w2, [x1]	// tmp115,
	str	w2, [x0]	// tmp115, test1
	ldrb	w1, [x1, 4]	// tmp116,
	strb	w1, [x0, 4]	// tmp116, test1
// problem162.c:33:     assert(strcmp(func0(test1), "aSdF") == 0);
	add	x0, sp, 8	// tmp117,,
	bl	func0		//
	mov	x2, x0	// _1,
// problem162.c:33:     assert(strcmp(func0(test1), "aSdF") == 0);
	adrp	x0, .LC1	// tmp118,
	add	x1, x0, :lo12:.LC1	//, tmp118,
	mov	x0, x2	//, _1
	bl	strcmp		//
// problem162.c:33:     assert(strcmp(func0(test1), "aSdF") == 0);
	cmp	w0, 0	// _2,
	beq	.L12		//,
// problem162.c:33:     assert(strcmp(func0(test1), "aSdF") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 33	//,
	adrp	x0, .LC2	// tmp120,
	add	x1, x0, :lo12:.LC2	//, tmp120,
	adrp	x0, .LC3	// tmp121,
	add	x0, x0, :lo12:.LC3	//, tmp121,
	bl	__assert_fail		//
.L12:
// problem162.c:35:     char test2[] = "1234";
	adrp	x0, .LC4	// tmp123,
	add	x1, x0, :lo12:.LC4	// tmp122, tmp123,
	add	x0, sp, 16	// tmp124,,
	ldr	w2, [x1]	// tmp126,
	str	w2, [x0]	// tmp126, test2
	ldrb	w1, [x1, 4]	// tmp127,
	strb	w1, [x0, 4]	// tmp127, test2
// problem162.c:36:     assert(strcmp(func0(test2), "4321") == 0);
	add	x0, sp, 16	// tmp128,,
	bl	func0		//
	mov	x2, x0	// _3,
// problem162.c:36:     assert(strcmp(func0(test2), "4321") == 0);
	adrp	x0, .LC5	// tmp129,
	add	x1, x0, :lo12:.LC5	//, tmp129,
	mov	x0, x2	//, _3
	bl	strcmp		//
// problem162.c:36:     assert(strcmp(func0(test2), "4321") == 0);
	cmp	w0, 0	// _4,
	beq	.L13		//,
// problem162.c:36:     assert(strcmp(func0(test2), "4321") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp130,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp130,
	mov	w2, 36	//,
	adrp	x0, .LC2	// tmp131,
	add	x1, x0, :lo12:.LC2	//, tmp131,
	adrp	x0, .LC6	// tmp132,
	add	x0, x0, :lo12:.LC6	//, tmp132,
	bl	__assert_fail		//
.L13:
// problem162.c:38:     char test3[] = "ab";
	adrp	x0, .LC7	// tmp134,
	add	x1, x0, :lo12:.LC7	// tmp133, tmp134,
	mov	x0, sp	// tmp135,
	ldrh	w2, [x1]	// tmp137,
	strh	w2, [x0]	// tmp137, test3
	ldrb	w1, [x1, 2]	// tmp138,
	strb	w1, [x0, 2]	// tmp138, test3
// problem162.c:39:     assert(strcmp(func0(test3), "AB") == 0);
	mov	x0, sp	// tmp139,
	bl	func0		//
	mov	x2, x0	// _5,
// problem162.c:39:     assert(strcmp(func0(test3), "AB") == 0);
	adrp	x0, .LC8	// tmp140,
	add	x1, x0, :lo12:.LC8	//, tmp140,
	mov	x0, x2	//, _5
	bl	strcmp		//
// problem162.c:39:     assert(strcmp(func0(test3), "AB") == 0);
	cmp	w0, 0	// _6,
	beq	.L14		//,
// problem162.c:39:     assert(strcmp(func0(test3), "AB") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp141,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp141,
	mov	w2, 39	//,
	adrp	x0, .LC2	// tmp142,
	add	x1, x0, :lo12:.LC2	//, tmp142,
	adrp	x0, .LC9	// tmp143,
	add	x0, x0, :lo12:.LC9	//, tmp143,
	bl	__assert_fail		//
.L14:
// problem162.c:41:     char test4[] = "#a@C";
	adrp	x0, .LC10	// tmp145,
	add	x1, x0, :lo12:.LC10	// tmp144, tmp145,
	add	x0, sp, 24	// tmp146,,
	ldr	w2, [x1]	// tmp148,
	str	w2, [x0]	// tmp148, test4
	ldrb	w1, [x1, 4]	// tmp149,
	strb	w1, [x0, 4]	// tmp149, test4
// problem162.c:42:     assert(strcmp(func0(test4), "#A@c") == 0);
	add	x0, sp, 24	// tmp150,,
	bl	func0		//
	mov	x2, x0	// _7,
// problem162.c:42:     assert(strcmp(func0(test4), "#A@c") == 0);
	adrp	x0, .LC11	// tmp151,
	add	x1, x0, :lo12:.LC11	//, tmp151,
	mov	x0, x2	//, _7
	bl	strcmp		//
// problem162.c:42:     assert(strcmp(func0(test4), "#A@c") == 0);
	cmp	w0, 0	// _8,
	beq	.L15		//,
// problem162.c:42:     assert(strcmp(func0(test4), "#A@c") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp152,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp152,
	mov	w2, 42	//,
	adrp	x0, .LC2	// tmp153,
	add	x1, x0, :lo12:.LC2	//, tmp153,
	adrp	x0, .LC12	// tmp154,
	add	x0, x0, :lo12:.LC12	//, tmp154,
	bl	__assert_fail		//
.L15:
// problem162.c:44:     char test5[] = "#AsdfW^45";
	adrp	x0, .LC13	// tmp156,
	add	x1, x0, :lo12:.LC13	// tmp155, tmp156,
	add	x0, sp, 56	// tmp157,,
	ldr	x2, [x1]	// tmp159,
	str	x2, [x0]	// tmp159, test5
	ldrh	w1, [x1, 8]	// tmp160,
	strh	w1, [x0, 8]	// tmp160, test5
// problem162.c:45:     assert(strcmp(func0(test5), "#aSDFw^45") == 0);
	add	x0, sp, 56	// tmp161,,
	bl	func0		//
	mov	x2, x0	// _9,
// problem162.c:45:     assert(strcmp(func0(test5), "#aSDFw^45") == 0);
	adrp	x0, .LC14	// tmp162,
	add	x1, x0, :lo12:.LC14	//, tmp162,
	mov	x0, x2	//, _9
	bl	strcmp		//
// problem162.c:45:     assert(strcmp(func0(test5), "#aSDFw^45") == 0);
	cmp	w0, 0	// _10,
	beq	.L16		//,
// problem162.c:45:     assert(strcmp(func0(test5), "#aSDFw^45") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp163,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp163,
	mov	w2, 45	//,
	adrp	x0, .LC2	// tmp164,
	add	x1, x0, :lo12:.LC2	//, tmp164,
	adrp	x0, .LC15	// tmp165,
	add	x0, x0, :lo12:.LC15	//, tmp165,
	bl	__assert_fail		//
.L16:
// problem162.c:47:     char test6[] = "#6@2";
	adrp	x0, .LC16	// tmp167,
	add	x1, x0, :lo12:.LC16	// tmp166, tmp167,
	add	x0, sp, 32	// tmp168,,
	ldr	w2, [x1]	// tmp170,
	str	w2, [x0]	// tmp170, test6
	ldrb	w1, [x1, 4]	// tmp171,
	strb	w1, [x0, 4]	// tmp171, test6
// problem162.c:48:     assert(strcmp(func0(test6), "2@6#") == 0);
	add	x0, sp, 32	// tmp172,,
	bl	func0		//
	mov	x2, x0	// _11,
// problem162.c:48:     assert(strcmp(func0(test6), "2@6#") == 0);
	adrp	x0, .LC17	// tmp173,
	add	x1, x0, :lo12:.LC17	//, tmp173,
	mov	x0, x2	//, _11
	bl	strcmp		//
// problem162.c:48:     assert(strcmp(func0(test6), "2@6#") == 0);
	cmp	w0, 0	// _12,
	beq	.L17		//,
// problem162.c:48:     assert(strcmp(func0(test6), "2@6#") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp174,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp174,
	mov	w2, 48	//,
	adrp	x0, .LC2	// tmp175,
	add	x1, x0, :lo12:.LC2	//, tmp175,
	adrp	x0, .LC18	// tmp176,
	add	x0, x0, :lo12:.LC18	//, tmp176,
	bl	__assert_fail		//
.L17:
// problem162.c:50:     char test7[] = "#$a^D";
	adrp	x0, .LC19	// tmp178,
	add	x1, x0, :lo12:.LC19	// tmp177, tmp178,
	add	x0, sp, 48	// tmp179,,
	ldr	w2, [x1]	// tmp181,
	str	w2, [x0]	// tmp181, test7
	ldrh	w1, [x1, 4]	// tmp182,
	strh	w1, [x0, 4]	// tmp182, test7
// problem162.c:51:     assert(strcmp(func0(test7), "#$A^d") == 0);
	add	x0, sp, 48	// tmp183,,
	bl	func0		//
	mov	x2, x0	// _13,
// problem162.c:51:     assert(strcmp(func0(test7), "#$A^d") == 0);
	adrp	x0, .LC20	// tmp184,
	add	x1, x0, :lo12:.LC20	//, tmp184,
	mov	x0, x2	//, _13
	bl	strcmp		//
// problem162.c:51:     assert(strcmp(func0(test7), "#$A^d") == 0);
	cmp	w0, 0	// _14,
	beq	.L18		//,
// problem162.c:51:     assert(strcmp(func0(test7), "#$A^d") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp185,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp185,
	mov	w2, 51	//,
	adrp	x0, .LC2	// tmp186,
	add	x1, x0, :lo12:.LC2	//, tmp186,
	adrp	x0, .LC21	// tmp187,
	add	x0, x0, :lo12:.LC21	//, tmp187,
	bl	__assert_fail		//
.L18:
// problem162.c:53:     char test8[] = "#ccc";
	adrp	x0, .LC22	// tmp189,
	add	x1, x0, :lo12:.LC22	// tmp188, tmp189,
	add	x0, sp, 40	// tmp190,,
	ldr	w2, [x1]	// tmp192,
	str	w2, [x0]	// tmp192, test8
	ldrb	w1, [x1, 4]	// tmp193,
	strb	w1, [x0, 4]	// tmp193, test8
// problem162.c:54:     assert(strcmp(func0(test8), "#CCC") == 0);
	add	x0, sp, 40	// tmp194,,
	bl	func0		//
	mov	x2, x0	// _15,
// problem162.c:54:     assert(strcmp(func0(test8), "#CCC") == 0);
	adrp	x0, .LC23	// tmp195,
	add	x1, x0, :lo12:.LC23	//, tmp195,
	mov	x0, x2	//, _15
	bl	strcmp		//
// problem162.c:54:     assert(strcmp(func0(test8), "#CCC") == 0);
	cmp	w0, 0	// _16,
	beq	.L19		//,
// problem162.c:54:     assert(strcmp(func0(test8), "#CCC") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp196,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp196,
	mov	w2, 54	//,
	adrp	x0, .LC2	// tmp197,
	add	x1, x0, :lo12:.LC2	//, tmp197,
	adrp	x0, .LC24	// tmp198,
	add	x0, x0, :lo12:.LC24	//, tmp198,
	bl	__assert_fail		//
.L19:
// problem162.c:56:     return 0;
	mov	w0, 0	// _42,
// problem162.c:57: }
	mov	w1, w0	// <retval>, _42
	adrp	x0, :got:__stack_chk_guard	// tmp200,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp200,
	ldr	x3, [sp, 72]	// tmp202, D.5226
	ldr	x2, [x0]	// tmp203,
	subs	x3, x3, x2	// tmp202, tmp203
	mov	x2, 0	// tmp203
	beq	.L21		//,
	bl	__stack_chk_fail		//
.L21:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 80]	//,,
	add	sp, sp, 96	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"AsDf"
	.align	3
.LC4:
	.string	"1234"
	.align	3
.LC7:
	.string	"ab"
	.align	3
.LC10:
	.string	"#a@C"
	.align	3
.LC13:
	.string	"#AsdfW^45"
	.align	3
.LC16:
	.string	"#6@2"
	.align	3
.LC19:
	.string	"#$a^D"
	.align	3
.LC22:
	.string	"#ccc"
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
