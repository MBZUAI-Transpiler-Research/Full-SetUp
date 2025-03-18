	.arch armv8-a
	.file	"problem154.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC36:
	.string	"%s.%s"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x0, [sp, 40]	// class_name, class_name
	str	x1, [sp, 32]	// extensions, extensions
	str	w2, [sp, 28]	// ext_count, ext_count
	str	x3, [sp, 16]	// output, output
// problem154.c:5:     int max_strength = -1000;
	mov	w0, -1000	// tmp100,
	str	w0, [sp, 64]	// tmp100, max_strength
// problem154.c:6:     const char* strongest = NULL;
	str	xzr, [sp, 80]	//, strongest
// problem154.c:7:     for (int i = 0; i < ext_count; i++) {
	str	wzr, [sp, 68]	//, i
// problem154.c:7:     for (int i = 0; i < ext_count; i++) {
	b	.L2		//
.L8:
// problem154.c:8:         const char* extension = extensions[i];
	ldrsw	x0, [sp, 68]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 32]	// tmp101, extensions
	add	x0, x1, x0	// _3, tmp101, _2
// problem154.c:8:         const char* extension = extensions[i];
	ldr	x0, [x0]	// tmp102, *_3
	str	x0, [sp, 88]	// tmp102, extension
// problem154.c:9:         int strength = 0;
	str	wzr, [sp, 72]	//, strength
// problem154.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	str	wzr, [sp, 76]	//, j
// problem154.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	b	.L3		//
.L6:
// problem154.c:11:             char chr = extension[j];
	ldrsw	x0, [sp, 76]	// _4, j
	ldr	x1, [sp, 88]	// tmp103, extension
	add	x0, x1, x0	// _5, tmp103, _4
// problem154.c:11:             char chr = extension[j];
	ldrb	w0, [x0]	// tmp104, *_5
	strb	w0, [sp, 63]	// tmp104, chr
// problem154.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	ldrb	w0, [sp, 63]	// tmp105, chr
	cmp	w0, 64	// tmp105,
	bls	.L4		//,
// problem154.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	ldrb	w0, [sp, 63]	// tmp106, chr
	cmp	w0, 90	// tmp106,
	bhi	.L4		//,
// problem154.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	ldr	w0, [sp, 72]	// tmp108, strength
	add	w0, w0, 1	// tmp107, tmp108,
	str	w0, [sp, 72]	// tmp107, strength
.L4:
// problem154.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	ldrb	w0, [sp, 63]	// tmp109, chr
	cmp	w0, 96	// tmp109,
	bls	.L5		//,
// problem154.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	ldrb	w0, [sp, 63]	// tmp110, chr
	cmp	w0, 122	// tmp110,
	bhi	.L5		//,
// problem154.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	ldr	w0, [sp, 72]	// tmp112, strength
	sub	w0, w0, #1	// tmp111, tmp112,
	str	w0, [sp, 72]	// tmp111, strength
.L5:
// problem154.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	ldr	w0, [sp, 76]	// tmp114, j
	add	w0, w0, 1	// tmp113, tmp114,
	str	w0, [sp, 76]	// tmp113, j
.L3:
// problem154.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	ldrsw	x0, [sp, 76]	// _6, j
	ldr	x1, [sp, 88]	// tmp115, extension
	add	x0, x1, x0	// _7, tmp115, _6
	ldrb	w0, [x0]	// _8, *_7
// problem154.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	cmp	w0, 0	// _8,
	bne	.L6		//,
// problem154.c:15:         if (strength > max_strength) {
	ldr	w1, [sp, 72]	// tmp116, strength
	ldr	w0, [sp, 64]	// tmp117, max_strength
	cmp	w1, w0	// tmp116, tmp117
	ble	.L7		//,
// problem154.c:16:             max_strength = strength;
	ldr	w0, [sp, 72]	// tmp118, strength
	str	w0, [sp, 64]	// tmp118, max_strength
// problem154.c:17:             strongest = extension;
	ldr	x0, [sp, 88]	// tmp119, extension
	str	x0, [sp, 80]	// tmp119, strongest
.L7:
// problem154.c:7:     for (int i = 0; i < ext_count; i++) {
	ldr	w0, [sp, 68]	// tmp121, i
	add	w0, w0, 1	// tmp120, tmp121,
	str	w0, [sp, 68]	// tmp120, i
.L2:
// problem154.c:7:     for (int i = 0; i < ext_count; i++) {
	ldr	w1, [sp, 68]	// tmp122, i
	ldr	w0, [sp, 28]	// tmp123, ext_count
	cmp	w1, w0	// tmp122, tmp123
	blt	.L8		//,
// problem154.c:20:     sprintf(output, "%s.%s", class_name, strongest);
	ldr	x3, [sp, 80]	//, strongest
	ldr	x2, [sp, 40]	//, class_name
	adrp	x0, .LC36	// tmp124,
	add	x1, x0, :lo12:.LC36	//, tmp124,
	ldr	x0, [sp, 16]	//, output
	bl	sprintf		//
// problem154.c:21: }
	nop	
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC38:
	.string	"Watashi"
	.align	3
.LC39:
	.string	"Watashi.eIGHt8OKe"
	.align	3
.LC40:
	.string	"problem154.c"
	.align	3
.LC41:
	.string	"strcmp(result, \"Watashi.eIGHt8OKe\") == 0"
	.align	3
.LC43:
	.string	"Boku123"
	.align	3
.LC44:
	.string	"Boku123.YEs.WeCaNe"
	.align	3
.LC45:
	.string	"strcmp(result, \"Boku123.YEs.WeCaNe\") == 0"
	.align	3
.LC47:
	.string	"__YESIMHERE"
	.align	3
.LC48:
	.string	"__YESIMHERE.NuLl__"
	.align	3
.LC49:
	.string	"strcmp(result, \"__YESIMHERE.NuLl__\") == 0"
	.align	3
.LC51:
	.string	"K"
	.align	3
.LC52:
	.string	"K.TAR"
	.align	3
.LC53:
	.string	"strcmp(result, \"K.TAR\") == 0"
	.align	3
.LC55:
	.string	"__HAHA"
	.align	3
.LC56:
	.string	"__HAHA.123"
	.align	3
.LC57:
	.string	"strcmp(result, \"__HAHA.123\") == 0"
	.align	3
.LC59:
	.string	"YameRore"
	.align	3
.LC60:
	.string	"YameRore.okIWILL123"
	.align	3
.LC61:
	.string	"strcmp(result, \"YameRore.okIWILL123\") == 0"
	.align	3
.LC63:
	.string	"finNNalLLly"
	.align	3
.LC64:
	.string	"finNNalLLly.WoW"
	.align	3
.LC65:
	.string	"strcmp(result, \"finNNalLLly.WoW\") == 0"
	.align	3
.LC66:
	.string	"Bb"
	.align	3
.LC67:
	.string	"91245"
	.align	3
.LC68:
	.string	"_"
	.align	3
.LC69:
	.string	"_.Bb"
	.align	3
.LC70:
	.string	"strcmp(result, \"_.Bb\") == 0"
	.align	3
.LC71:
	.string	"671235"
	.align	3
.LC72:
	.string	"Sp"
	.align	3
.LC73:
	.string	"Sp.671235"
	.align	3
.LC74:
	.string	"strcmp(result, \"Sp.671235\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #352	//,,
	.cfi_def_cfa_offset 352
	stp	x29, x30, [sp, 336]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 336	//,,
// problem154.c:28: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp103,
	ldr	x1, [x0]	// tmp230,
	str	x1, [sp, 328]	// tmp230, D.5174
	mov	x1, 0	// tmp230
// problem154.c:31:     func0("Watashi", (const char* []){"tEN", "niNE", "eIGHt8OKe"}, 3, result);
	adrp	x0, .LC37	// tmp105,
	add	x0, x0, :lo12:.LC37	// tmp104, tmp105,
	add	x2, sp, 32	// tmp106,,
	mov	x3, x0	// tmp107, tmp104
	ldp	x0, x1, [x3]	// tmp108,
	stp	x0, x1, [x2]	// tmp108, D.5084
	ldr	x0, [x3, 16]	// tmp109,
	str	x0, [x2, 16]	// tmp109, D.5084
// problem154.c:31:     func0("Watashi", (const char* []){"tEN", "niNE", "eIGHt8OKe"}, 3, result);
	add	x1, sp, 272	// tmp110,,
	add	x0, sp, 32	// tmp111,,
	mov	x3, x1	//, tmp110
	mov	w2, 3	//,
	mov	x1, x0	//, tmp111
	adrp	x0, .LC38	// tmp112,
	add	x0, x0, :lo12:.LC38	//, tmp112,
	bl	func0		//
// problem154.c:32:     assert(strcmp(result, "Watashi.eIGHt8OKe") == 0);
	add	x2, sp, 272	// tmp113,,
	adrp	x0, .LC39	// tmp114,
	add	x1, x0, :lo12:.LC39	//, tmp114,
	mov	x0, x2	//, tmp113
	bl	strcmp		//
// problem154.c:32:     assert(strcmp(result, "Watashi.eIGHt8OKe") == 0);
	cmp	w0, 0	// _1,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp115,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp115,
	mov	w2, 32	//,
	adrp	x0, .LC40	// tmp116,
	add	x1, x0, :lo12:.LC40	//, tmp116,
	adrp	x0, .LC41	// tmp117,
	add	x0, x0, :lo12:.LC41	//, tmp117,
	bl	__assert_fail		//
.L10:
// problem154.c:34:     func0("Boku123", (const char* []){"nani", "NazeDa", "YEs.WeCaNe", "32145tggg"}, 4, result);
	add	x0, sp, 344	// tmp118,,
	sub	x0, x0, #288	// tmp120, tmp118,
	adrp	x1, .LC42	// tmp122,
	add	x1, x1, :lo12:.LC42	// tmp121, tmp122,
	ld1	{v0.16b - v1.16b}, [x1]	// tmp123,
	st1	{v0.16b - v1.16b}, [x0]	// tmp123, D.5086
// problem154.c:34:     func0("Boku123", (const char* []){"nani", "NazeDa", "YEs.WeCaNe", "32145tggg"}, 4, result);
	add	x1, sp, 272	// tmp124,,
	add	x0, sp, 56	// tmp125,,
	mov	x3, x1	//, tmp124
	mov	w2, 4	//,
	mov	x1, x0	//, tmp125
	adrp	x0, .LC43	// tmp126,
	add	x0, x0, :lo12:.LC43	//, tmp126,
	bl	func0		//
// problem154.c:35:     assert(strcmp(result, "Boku123.YEs.WeCaNe") == 0);
	add	x2, sp, 272	// tmp127,,
	adrp	x0, .LC44	// tmp128,
	add	x1, x0, :lo12:.LC44	//, tmp128,
	mov	x0, x2	//, tmp127
	bl	strcmp		//
// problem154.c:35:     assert(strcmp(result, "Boku123.YEs.WeCaNe") == 0);
	cmp	w0, 0	// _2,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp129,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp129,
	mov	w2, 35	//,
	adrp	x0, .LC40	// tmp130,
	add	x1, x0, :lo12:.LC40	//, tmp130,
	adrp	x0, .LC45	// tmp131,
	add	x0, x0, :lo12:.LC45	//, tmp131,
	bl	__assert_fail		//
.L11:
// problem154.c:37:     func0("__YESIMHERE", (const char* []){"t", "eMptY", "(nothing", "zeR00", "NuLl__", "123NoooneB321"}, 6, result);
	adrp	x0, .LC46	// tmp133,
	add	x1, x0, :lo12:.LC46	// tmp132, tmp133,
	add	x0, sp, 224	// tmp134,,
	ldp	q0, q1, [x1]	// tmp136, tmp137,
	stp	q0, q1, [x0]	// tmp136, tmp137, D.5087
	ldr	q0, [x1, 32]	// tmp138,
	str	q0, [x0, 32]	// tmp138, D.5087
// problem154.c:37:     func0("__YESIMHERE", (const char* []){"t", "eMptY", "(nothing", "zeR00", "NuLl__", "123NoooneB321"}, 6, result);
	add	x1, sp, 272	// tmp139,,
	add	x0, sp, 224	// tmp140,,
	mov	x3, x1	//, tmp139
	mov	w2, 6	//,
	mov	x1, x0	//, tmp140
	adrp	x0, .LC47	// tmp141,
	add	x0, x0, :lo12:.LC47	//, tmp141,
	bl	func0		//
// problem154.c:38:     assert(strcmp(result, "__YESIMHERE.NuLl__") == 0);
	add	x2, sp, 272	// tmp142,,
	adrp	x0, .LC48	// tmp143,
	add	x1, x0, :lo12:.LC48	//, tmp143,
	mov	x0, x2	//, tmp142
	bl	strcmp		//
// problem154.c:38:     assert(strcmp(result, "__YESIMHERE.NuLl__") == 0);
	cmp	w0, 0	// _3,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp144,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp144,
	mov	w2, 38	//,
	adrp	x0, .LC40	// tmp145,
	add	x1, x0, :lo12:.LC40	//, tmp145,
	adrp	x0, .LC49	// tmp146,
	add	x0, x0, :lo12:.LC49	//, tmp146,
	bl	__assert_fail		//
.L12:
// problem154.c:40:     func0("K", (const char* []){"Ta", "TAR", "t234An", "cosSo"}, 4, result);
	add	x0, sp, 344	// tmp147,,
	sub	x0, x0, #256	// tmp149, tmp147,
	adrp	x1, .LC50	// tmp151,
	add	x1, x1, :lo12:.LC50	// tmp150, tmp151,
	ld1	{v0.16b - v1.16b}, [x1]	// tmp152,
	st1	{v0.16b - v1.16b}, [x0]	// tmp152, D.5088
// problem154.c:40:     func0("K", (const char* []){"Ta", "TAR", "t234An", "cosSo"}, 4, result);
	add	x1, sp, 272	// tmp153,,
	add	x0, sp, 88	// tmp154,,
	mov	x3, x1	//, tmp153
	mov	w2, 4	//,
	mov	x1, x0	//, tmp154
	adrp	x0, .LC51	// tmp155,
	add	x0, x0, :lo12:.LC51	//, tmp155,
	bl	func0		//
// problem154.c:41:     assert(strcmp(result, "K.TAR") == 0);
	add	x2, sp, 272	// tmp156,,
	adrp	x0, .LC52	// tmp157,
	add	x1, x0, :lo12:.LC52	//, tmp157,
	mov	x0, x2	//, tmp156
	bl	strcmp		//
// problem154.c:41:     assert(strcmp(result, "K.TAR") == 0);
	cmp	w0, 0	// _4,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp158,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp158,
	mov	w2, 41	//,
	adrp	x0, .LC40	// tmp159,
	add	x1, x0, :lo12:.LC40	//, tmp159,
	adrp	x0, .LC53	// tmp160,
	add	x0, x0, :lo12:.LC53	//, tmp160,
	bl	__assert_fail		//
.L13:
// problem154.c:43:     func0("__HAHA", (const char* []){"Tab", "123", "781345", "-_-"}, 4, result);
	add	x0, sp, 344	// tmp161,,
	sub	x0, x0, #224	// tmp163, tmp161,
	adrp	x1, .LC54	// tmp165,
	add	x1, x1, :lo12:.LC54	// tmp164, tmp165,
	ld1	{v0.16b - v1.16b}, [x1]	// tmp166,
	st1	{v0.16b - v1.16b}, [x0]	// tmp166, D.5089
// problem154.c:43:     func0("__HAHA", (const char* []){"Tab", "123", "781345", "-_-"}, 4, result);
	add	x1, sp, 272	// tmp167,,
	add	x0, sp, 120	// tmp168,,
	mov	x3, x1	//, tmp167
	mov	w2, 4	//,
	mov	x1, x0	//, tmp168
	adrp	x0, .LC55	// tmp169,
	add	x0, x0, :lo12:.LC55	//, tmp169,
	bl	func0		//
// problem154.c:44:     assert(strcmp(result, "__HAHA.123") == 0);
	add	x2, sp, 272	// tmp170,,
	adrp	x0, .LC56	// tmp171,
	add	x1, x0, :lo12:.LC56	//, tmp171,
	mov	x0, x2	//, tmp170
	bl	strcmp		//
// problem154.c:44:     assert(strcmp(result, "__HAHA.123") == 0);
	cmp	w0, 0	// _5,
	beq	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp172,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp172,
	mov	w2, 44	//,
	adrp	x0, .LC40	// tmp173,
	add	x1, x0, :lo12:.LC40	//, tmp173,
	adrp	x0, .LC57	// tmp174,
	add	x0, x0, :lo12:.LC57	//, tmp174,
	bl	__assert_fail		//
.L14:
// problem154.c:46:     func0("YameRore", (const char* []){"HhAas", "okIWILL123", "WorkOut", "Fails", "-_-"}, 5, result);
	adrp	x0, .LC58	// tmp176,
	add	x1, x0, :lo12:.LC58	// tmp175, tmp176,
	add	x0, sp, 184	// tmp177,,
	ldp	q0, q1, [x1]	// tmp179, tmp180,
	stp	q0, q1, [x0]	// tmp179, tmp180, D.5090
	ldr	x1, [x1, 32]	// tmp181,
	str	x1, [x0, 32]	// tmp181, D.5090
// problem154.c:46:     func0("YameRore", (const char* []){"HhAas", "okIWILL123", "WorkOut", "Fails", "-_-"}, 5, result);
	add	x1, sp, 272	// tmp182,,
	add	x0, sp, 184	// tmp183,,
	mov	x3, x1	//, tmp182
	mov	w2, 5	//,
	mov	x1, x0	//, tmp183
	adrp	x0, .LC59	// tmp184,
	add	x0, x0, :lo12:.LC59	//, tmp184,
	bl	func0		//
// problem154.c:47:     assert(strcmp(result, "YameRore.okIWILL123") == 0);
	add	x2, sp, 272	// tmp185,,
	adrp	x0, .LC60	// tmp186,
	add	x1, x0, :lo12:.LC60	//, tmp186,
	mov	x0, x2	//, tmp185
	bl	strcmp		//
// problem154.c:47:     assert(strcmp(result, "YameRore.okIWILL123") == 0);
	cmp	w0, 0	// _6,
	beq	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp187,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp187,
	mov	w2, 47	//,
	adrp	x0, .LC40	// tmp188,
	add	x1, x0, :lo12:.LC40	//, tmp188,
	adrp	x0, .LC61	// tmp189,
	add	x0, x0, :lo12:.LC61	//, tmp189,
	bl	__assert_fail		//
.L15:
// problem154.c:49:     func0("finNNalLLly", (const char* []){"Die", "NowW", "Wow", "WoW"}, 4, result);
	add	x0, sp, 344	// tmp190,,
	sub	x0, x0, #192	// tmp192, tmp190,
	adrp	x1, .LC62	// tmp194,
	add	x1, x1, :lo12:.LC62	// tmp193, tmp194,
	ld1	{v0.16b - v1.16b}, [x1]	// tmp195,
	st1	{v0.16b - v1.16b}, [x0]	// tmp195, D.5091
// problem154.c:49:     func0("finNNalLLly", (const char* []){"Die", "NowW", "Wow", "WoW"}, 4, result);
	add	x1, sp, 272	// tmp196,,
	add	x0, sp, 152	// tmp197,,
	mov	x3, x1	//, tmp196
	mov	w2, 4	//,
	mov	x1, x0	//, tmp197
	adrp	x0, .LC63	// tmp198,
	add	x0, x0, :lo12:.LC63	//, tmp198,
	bl	func0		//
// problem154.c:50:     assert(strcmp(result, "finNNalLLly.WoW") == 0);
	add	x2, sp, 272	// tmp199,,
	adrp	x0, .LC64	// tmp200,
	add	x1, x0, :lo12:.LC64	//, tmp200,
	mov	x0, x2	//, tmp199
	bl	strcmp		//
// problem154.c:50:     assert(strcmp(result, "finNNalLLly.WoW") == 0);
	cmp	w0, 0	// _7,
	beq	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp201,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp201,
	mov	w2, 50	//,
	adrp	x0, .LC40	// tmp202,
	add	x1, x0, :lo12:.LC40	//, tmp202,
	adrp	x0, .LC65	// tmp203,
	add	x0, x0, :lo12:.LC65	//, tmp203,
	bl	__assert_fail		//
.L16:
// problem154.c:52:     func0("_", (const char* []){"Bb", "91245"}, 2, result);
	adrp	x0, .LC66	// tmp205,
	add	x0, x0, :lo12:.LC66	// tmp204, tmp205,
	str	x0, [sp]	// tmp204, D.5092[0]
	adrp	x0, .LC67	// tmp207,
	add	x0, x0, :lo12:.LC67	// tmp206, tmp207,
	str	x0, [sp, 8]	// tmp206, D.5092[1]
// problem154.c:52:     func0("_", (const char* []){"Bb", "91245"}, 2, result);
	add	x1, sp, 272	// tmp208,,
	mov	x0, sp	// tmp209,
	mov	x3, x1	//, tmp208
	mov	w2, 2	//,
	mov	x1, x0	//, tmp209
	adrp	x0, .LC68	// tmp210,
	add	x0, x0, :lo12:.LC68	//, tmp210,
	bl	func0		//
// problem154.c:53:     assert(strcmp(result, "_.Bb") == 0);
	add	x2, sp, 272	// tmp211,,
	adrp	x0, .LC69	// tmp212,
	add	x1, x0, :lo12:.LC69	//, tmp212,
	mov	x0, x2	//, tmp211
	bl	strcmp		//
// problem154.c:53:     assert(strcmp(result, "_.Bb") == 0);
	cmp	w0, 0	// _8,
	beq	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp213,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp213,
	mov	w2, 53	//,
	adrp	x0, .LC40	// tmp214,
	add	x1, x0, :lo12:.LC40	//, tmp214,
	adrp	x0, .LC70	// tmp215,
	add	x0, x0, :lo12:.LC70	//, tmp215,
	bl	__assert_fail		//
.L17:
// problem154.c:55:     func0("Sp", (const char* []){"671235", "Bb"}, 2, result);
	adrp	x0, .LC71	// tmp217,
	add	x0, x0, :lo12:.LC71	// tmp216, tmp217,
	str	x0, [sp, 16]	// tmp216, D.5093[0]
	adrp	x0, .LC66	// tmp219,
	add	x0, x0, :lo12:.LC66	// tmp218, tmp219,
	str	x0, [sp, 24]	// tmp218, D.5093[1]
// problem154.c:55:     func0("Sp", (const char* []){"671235", "Bb"}, 2, result);
	add	x1, sp, 272	// tmp220,,
	add	x0, sp, 16	// tmp221,,
	mov	x3, x1	//, tmp220
	mov	w2, 2	//,
	mov	x1, x0	//, tmp221
	adrp	x0, .LC72	// tmp222,
	add	x0, x0, :lo12:.LC72	//, tmp222,
	bl	func0		//
// problem154.c:56:     assert(strcmp(result, "Sp.671235") == 0);
	add	x2, sp, 272	// tmp223,,
	adrp	x0, .LC73	// tmp224,
	add	x1, x0, :lo12:.LC73	//, tmp224,
	mov	x0, x2	//, tmp223
	bl	strcmp		//
// problem154.c:56:     assert(strcmp(result, "Sp.671235") == 0);
	cmp	w0, 0	// _9,
	beq	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp225,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp225,
	mov	w2, 56	//,
	adrp	x0, .LC40	// tmp226,
	add	x1, x0, :lo12:.LC40	//, tmp226,
	adrp	x0, .LC74	// tmp227,
	add	x0, x0, :lo12:.LC74	//, tmp227,
	bl	__assert_fail		//
.L18:
// problem154.c:58:     return 0;
	mov	w0, 0	// _40,
// problem154.c:59: }
	mov	w1, w0	// <retval>, _40
	adrp	x0, :got:__stack_chk_guard	// tmp229,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp229,
	ldr	x3, [sp, 328]	// tmp231, D.5174
	ldr	x2, [x0]	// tmp232,
	subs	x3, x3, x2	// tmp231, tmp232
	mov	x2, 0	// tmp232
	beq	.L20		//,
	bl	__stack_chk_fail		//
.L20:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 336]	//,,
	add	sp, sp, 352	//,,
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
	.string	"tEN"
	.align	3
.LC1:
	.string	"niNE"
	.align	3
.LC2:
	.string	"eIGHt8OKe"
	.data
	.align	3
.LC37:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.section	.rodata
	.align	3
.LC4:
	.string	"nani"
	.align	3
.LC5:
	.string	"NazeDa"
	.align	3
.LC6:
	.string	"YEs.WeCaNe"
	.align	3
.LC7:
	.string	"32145tggg"
	.data
	.align	3
.LC42:
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.xword	.LC7
	.section	.rodata
	.align	3
.LC9:
	.string	"t"
	.align	3
.LC10:
	.string	"eMptY"
	.align	3
.LC11:
	.string	"(nothing"
	.align	3
.LC12:
	.string	"zeR00"
	.align	3
.LC13:
	.string	"NuLl__"
	.align	3
.LC14:
	.string	"123NoooneB321"
	.data
	.align	3
.LC46:
	.xword	.LC9
	.xword	.LC10
	.xword	.LC11
	.xword	.LC12
	.xword	.LC13
	.xword	.LC14
	.section	.rodata
	.align	3
.LC16:
	.string	"Ta"
	.align	3
.LC17:
	.string	"TAR"
	.align	3
.LC18:
	.string	"t234An"
	.align	3
.LC19:
	.string	"cosSo"
	.data
	.align	3
.LC50:
	.xword	.LC16
	.xword	.LC17
	.xword	.LC18
	.xword	.LC19
	.section	.rodata
	.align	3
.LC21:
	.string	"Tab"
	.align	3
.LC22:
	.string	"123"
	.align	3
.LC23:
	.string	"781345"
	.align	3
.LC24:
	.string	"-_-"
	.data
	.align	3
.LC54:
	.xword	.LC21
	.xword	.LC22
	.xword	.LC23
	.xword	.LC24
	.section	.rodata
	.align	3
.LC26:
	.string	"HhAas"
	.align	3
.LC27:
	.string	"okIWILL123"
	.align	3
.LC28:
	.string	"WorkOut"
	.align	3
.LC29:
	.string	"Fails"
	.data
	.align	3
.LC58:
	.xword	.LC26
	.xword	.LC27
	.xword	.LC28
	.xword	.LC29
	.xword	.LC24
	.section	.rodata
	.align	3
.LC31:
	.string	"Die"
	.align	3
.LC32:
	.string	"NowW"
	.align	3
.LC33:
	.string	"Wow"
	.align	3
.LC34:
	.string	"WoW"
	.data
	.align	3
.LC62:
	.xword	.LC31
	.xword	.LC32
	.xword	.LC33
	.xword	.LC34
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
