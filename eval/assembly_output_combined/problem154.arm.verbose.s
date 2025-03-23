	.arch armv8-a
	.file	"problem154.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	stp	x29, x30, [sp, -352]!	//,,,
	.cfi_def_cfa_offset 352
	.cfi_offset 29, -352
	.cfi_offset 30, -344
	mov	x29, sp	//,
// problem154.c:28: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp104,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp103, tmp104,
	ldr	x1, [x0]	// tmp232,
	str	x1, [sp, 344]	// tmp232, D.4565
	mov	x1, 0	// tmp232
// problem154.c:31:     func0("Watashi", (const char* []){"tEN", "niNE", "eIGHt8OKe"}, 3, result);
	adrp	x0, .LC37	// tmp106,
	add	x0, x0, :lo12:.LC37	// tmp105, tmp106,
	add	x2, sp, 48	// tmp107,,
	mov	x3, x0	// tmp108, tmp105
	ldp	x0, x1, [x3]	// tmp109,
	stp	x0, x1, [x2]	// tmp109, D.4475
	ldr	x0, [x3, 16]	// tmp110,
	str	x0, [x2, 16]	// tmp110, D.4475
// problem154.c:31:     func0("Watashi", (const char* []){"tEN", "niNE", "eIGHt8OKe"}, 3, result);
	add	x1, sp, 288	// tmp111,,
	add	x0, sp, 48	// tmp112,,
	mov	x3, x1	//, tmp111
	mov	w2, 3	//,
	mov	x1, x0	//, tmp112
	adrp	x0, .LC38	// tmp113,
	add	x0, x0, :lo12:.LC38	//, tmp113,
	bl	func0		//
// problem154.c:32:     assert(strcmp(result, "Watashi.eIGHt8OKe") == 0);
	add	x2, sp, 288	// tmp114,,
	adrp	x0, .LC39	// tmp115,
	add	x1, x0, :lo12:.LC39	//, tmp115,
	mov	x0, x2	//, tmp114
	bl	strcmp		//
	cmp	w0, 0	// _1,
	beq	.L10		//,
// problem154.c:32:     assert(strcmp(result, "Watashi.eIGHt8OKe") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 32	//,
	adrp	x0, .LC40	// tmp117,
	add	x1, x0, :lo12:.LC40	//, tmp117,
	adrp	x0, .LC41	// tmp118,
	add	x0, x0, :lo12:.LC41	//, tmp118,
	bl	__assert_fail		//
.L10:
// problem154.c:34:     func0("Boku123", (const char* []){"nani", "NazeDa", "YEs.WeCaNe", "32145tggg"}, 4, result);
	add	x0, sp, 360	// tmp119,,
	sub	x0, x0, #288	// tmp121, tmp119,
	adrp	x1, .LC42	// tmp123,
	add	x1, x1, :lo12:.LC42	// tmp122, tmp123,
	ld1	{v0.16b - v1.16b}, [x1]	// tmp124,
	st1	{v0.16b - v1.16b}, [x0]	// tmp124, D.4477
// problem154.c:34:     func0("Boku123", (const char* []){"nani", "NazeDa", "YEs.WeCaNe", "32145tggg"}, 4, result);
	add	x1, sp, 288	// tmp125,,
	add	x0, sp, 72	// tmp126,,
	mov	x3, x1	//, tmp125
	mov	w2, 4	//,
	mov	x1, x0	//, tmp126
	adrp	x0, .LC43	// tmp127,
	add	x0, x0, :lo12:.LC43	//, tmp127,
	bl	func0		//
// problem154.c:35:     assert(strcmp(result, "Boku123.YEs.WeCaNe") == 0);
	add	x2, sp, 288	// tmp128,,
	adrp	x0, .LC44	// tmp129,
	add	x1, x0, :lo12:.LC44	//, tmp129,
	mov	x0, x2	//, tmp128
	bl	strcmp		//
	cmp	w0, 0	// _2,
	beq	.L11		//,
// problem154.c:35:     assert(strcmp(result, "Boku123.YEs.WeCaNe") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp130,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp130,
	mov	w2, 35	//,
	adrp	x0, .LC40	// tmp131,
	add	x1, x0, :lo12:.LC40	//, tmp131,
	adrp	x0, .LC45	// tmp132,
	add	x0, x0, :lo12:.LC45	//, tmp132,
	bl	__assert_fail		//
.L11:
// problem154.c:37:     func0("__YESIMHERE", (const char* []){"t", "eMptY", "(nothing", "zeR00", "NuLl__", "123NoooneB321"}, 6, result);
	adrp	x0, .LC46	// tmp134,
	add	x1, x0, :lo12:.LC46	// tmp133, tmp134,
	add	x0, sp, 240	// tmp135,,
	ldp	q0, q1, [x1]	// tmp137, tmp138,
	stp	q0, q1, [x0]	// tmp137, tmp138, D.4478
	ldr	q0, [x1, 32]	// tmp139,
	str	q0, [x0, 32]	// tmp139, D.4478
// problem154.c:37:     func0("__YESIMHERE", (const char* []){"t", "eMptY", "(nothing", "zeR00", "NuLl__", "123NoooneB321"}, 6, result);
	add	x1, sp, 288	// tmp140,,
	add	x0, sp, 240	// tmp141,,
	mov	x3, x1	//, tmp140
	mov	w2, 6	//,
	mov	x1, x0	//, tmp141
	adrp	x0, .LC47	// tmp142,
	add	x0, x0, :lo12:.LC47	//, tmp142,
	bl	func0		//
// problem154.c:38:     assert(strcmp(result, "__YESIMHERE.NuLl__") == 0);
	add	x2, sp, 288	// tmp143,,
	adrp	x0, .LC48	// tmp144,
	add	x1, x0, :lo12:.LC48	//, tmp144,
	mov	x0, x2	//, tmp143
	bl	strcmp		//
	cmp	w0, 0	// _3,
	beq	.L12		//,
// problem154.c:38:     assert(strcmp(result, "__YESIMHERE.NuLl__") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp145,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp145,
	mov	w2, 38	//,
	adrp	x0, .LC40	// tmp146,
	add	x1, x0, :lo12:.LC40	//, tmp146,
	adrp	x0, .LC49	// tmp147,
	add	x0, x0, :lo12:.LC49	//, tmp147,
	bl	__assert_fail		//
.L12:
// problem154.c:40:     func0("K", (const char* []){"Ta", "TAR", "t234An", "cosSo"}, 4, result);
	add	x0, sp, 360	// tmp148,,
	sub	x0, x0, #256	// tmp150, tmp148,
	adrp	x1, .LC50	// tmp152,
	add	x1, x1, :lo12:.LC50	// tmp151, tmp152,
	ld1	{v0.16b - v1.16b}, [x1]	// tmp153,
	st1	{v0.16b - v1.16b}, [x0]	// tmp153, D.4479
// problem154.c:40:     func0("K", (const char* []){"Ta", "TAR", "t234An", "cosSo"}, 4, result);
	add	x1, sp, 288	// tmp154,,
	add	x0, sp, 104	// tmp155,,
	mov	x3, x1	//, tmp154
	mov	w2, 4	//,
	mov	x1, x0	//, tmp155
	adrp	x0, .LC51	// tmp156,
	add	x0, x0, :lo12:.LC51	//, tmp156,
	bl	func0		//
// problem154.c:41:     assert(strcmp(result, "K.TAR") == 0);
	add	x2, sp, 288	// tmp157,,
	adrp	x0, .LC52	// tmp158,
	add	x1, x0, :lo12:.LC52	//, tmp158,
	mov	x0, x2	//, tmp157
	bl	strcmp		//
	cmp	w0, 0	// _4,
	beq	.L13		//,
// problem154.c:41:     assert(strcmp(result, "K.TAR") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp159,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp159,
	mov	w2, 41	//,
	adrp	x0, .LC40	// tmp160,
	add	x1, x0, :lo12:.LC40	//, tmp160,
	adrp	x0, .LC53	// tmp161,
	add	x0, x0, :lo12:.LC53	//, tmp161,
	bl	__assert_fail		//
.L13:
// problem154.c:43:     func0("__HAHA", (const char* []){"Tab", "123", "781345", "-_-"}, 4, result);
	add	x0, sp, 360	// tmp162,,
	sub	x0, x0, #224	// tmp164, tmp162,
	adrp	x1, .LC54	// tmp166,
	add	x1, x1, :lo12:.LC54	// tmp165, tmp166,
	ld1	{v0.16b - v1.16b}, [x1]	// tmp167,
	st1	{v0.16b - v1.16b}, [x0]	// tmp167, D.4480
// problem154.c:43:     func0("__HAHA", (const char* []){"Tab", "123", "781345", "-_-"}, 4, result);
	add	x1, sp, 288	// tmp168,,
	add	x0, sp, 136	// tmp169,,
	mov	x3, x1	//, tmp168
	mov	w2, 4	//,
	mov	x1, x0	//, tmp169
	adrp	x0, .LC55	// tmp170,
	add	x0, x0, :lo12:.LC55	//, tmp170,
	bl	func0		//
// problem154.c:44:     assert(strcmp(result, "__HAHA.123") == 0);
	add	x2, sp, 288	// tmp171,,
	adrp	x0, .LC56	// tmp172,
	add	x1, x0, :lo12:.LC56	//, tmp172,
	mov	x0, x2	//, tmp171
	bl	strcmp		//
	cmp	w0, 0	// _5,
	beq	.L14		//,
// problem154.c:44:     assert(strcmp(result, "__HAHA.123") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp173,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp173,
	mov	w2, 44	//,
	adrp	x0, .LC40	// tmp174,
	add	x1, x0, :lo12:.LC40	//, tmp174,
	adrp	x0, .LC57	// tmp175,
	add	x0, x0, :lo12:.LC57	//, tmp175,
	bl	__assert_fail		//
.L14:
// problem154.c:46:     func0("YameRore", (const char* []){"HhAas", "okIWILL123", "WorkOut", "Fails", "-_-"}, 5, result);
	adrp	x0, .LC58	// tmp177,
	add	x1, x0, :lo12:.LC58	// tmp176, tmp177,
	add	x0, sp, 200	// tmp178,,
	ldp	q0, q1, [x1]	// tmp180, tmp181,
	stp	q0, q1, [x0]	// tmp180, tmp181, D.4481
	ldr	x1, [x1, 32]	// tmp182,
	str	x1, [x0, 32]	// tmp182, D.4481
// problem154.c:46:     func0("YameRore", (const char* []){"HhAas", "okIWILL123", "WorkOut", "Fails", "-_-"}, 5, result);
	add	x1, sp, 288	// tmp183,,
	add	x0, sp, 200	// tmp184,,
	mov	x3, x1	//, tmp183
	mov	w2, 5	//,
	mov	x1, x0	//, tmp184
	adrp	x0, .LC59	// tmp185,
	add	x0, x0, :lo12:.LC59	//, tmp185,
	bl	func0		//
// problem154.c:47:     assert(strcmp(result, "YameRore.okIWILL123") == 0);
	add	x2, sp, 288	// tmp186,,
	adrp	x0, .LC60	// tmp187,
	add	x1, x0, :lo12:.LC60	//, tmp187,
	mov	x0, x2	//, tmp186
	bl	strcmp		//
	cmp	w0, 0	// _6,
	beq	.L15		//,
// problem154.c:47:     assert(strcmp(result, "YameRore.okIWILL123") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp188,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp188,
	mov	w2, 47	//,
	adrp	x0, .LC40	// tmp189,
	add	x1, x0, :lo12:.LC40	//, tmp189,
	adrp	x0, .LC61	// tmp190,
	add	x0, x0, :lo12:.LC61	//, tmp190,
	bl	__assert_fail		//
.L15:
// problem154.c:49:     func0("finNNalLLly", (const char* []){"Die", "NowW", "Wow", "WoW"}, 4, result);
	add	x0, sp, 360	// tmp191,,
	sub	x0, x0, #192	// tmp193, tmp191,
	adrp	x1, .LC62	// tmp195,
	add	x1, x1, :lo12:.LC62	// tmp194, tmp195,
	ld1	{v0.16b - v1.16b}, [x1]	// tmp196,
	st1	{v0.16b - v1.16b}, [x0]	// tmp196, D.4482
// problem154.c:49:     func0("finNNalLLly", (const char* []){"Die", "NowW", "Wow", "WoW"}, 4, result);
	add	x1, sp, 288	// tmp197,,
	add	x0, sp, 168	// tmp198,,
	mov	x3, x1	//, tmp197
	mov	w2, 4	//,
	mov	x1, x0	//, tmp198
	adrp	x0, .LC63	// tmp199,
	add	x0, x0, :lo12:.LC63	//, tmp199,
	bl	func0		//
// problem154.c:50:     assert(strcmp(result, "finNNalLLly.WoW") == 0);
	add	x2, sp, 288	// tmp200,,
	adrp	x0, .LC64	// tmp201,
	add	x1, x0, :lo12:.LC64	//, tmp201,
	mov	x0, x2	//, tmp200
	bl	strcmp		//
	cmp	w0, 0	// _7,
	beq	.L16		//,
// problem154.c:50:     assert(strcmp(result, "finNNalLLly.WoW") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp202,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp202,
	mov	w2, 50	//,
	adrp	x0, .LC40	// tmp203,
	add	x1, x0, :lo12:.LC40	//, tmp203,
	adrp	x0, .LC65	// tmp204,
	add	x0, x0, :lo12:.LC65	//, tmp204,
	bl	__assert_fail		//
.L16:
// problem154.c:52:     func0("_", (const char* []){"Bb", "91245"}, 2, result);
	adrp	x0, .LC66	// tmp206,
	add	x0, x0, :lo12:.LC66	// tmp205, tmp206,
	str	x0, [sp, 16]	// tmp205, D.4483[0]
	adrp	x0, .LC67	// tmp208,
	add	x0, x0, :lo12:.LC67	// tmp207, tmp208,
	str	x0, [sp, 24]	// tmp207, D.4483[1]
// problem154.c:52:     func0("_", (const char* []){"Bb", "91245"}, 2, result);
	add	x1, sp, 288	// tmp209,,
	add	x0, sp, 16	// tmp210,,
	mov	x3, x1	//, tmp209
	mov	w2, 2	//,
	mov	x1, x0	//, tmp210
	adrp	x0, .LC68	// tmp211,
	add	x0, x0, :lo12:.LC68	//, tmp211,
	bl	func0		//
// problem154.c:53:     assert(strcmp(result, "_.Bb") == 0);
	add	x2, sp, 288	// tmp212,,
	adrp	x0, .LC69	// tmp213,
	add	x1, x0, :lo12:.LC69	//, tmp213,
	mov	x0, x2	//, tmp212
	bl	strcmp		//
	cmp	w0, 0	// _8,
	beq	.L17		//,
// problem154.c:53:     assert(strcmp(result, "_.Bb") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp214,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp214,
	mov	w2, 53	//,
	adrp	x0, .LC40	// tmp215,
	add	x1, x0, :lo12:.LC40	//, tmp215,
	adrp	x0, .LC70	// tmp216,
	add	x0, x0, :lo12:.LC70	//, tmp216,
	bl	__assert_fail		//
.L17:
// problem154.c:55:     func0("Sp", (const char* []){"671235", "Bb"}, 2, result);
	adrp	x0, .LC71	// tmp218,
	add	x0, x0, :lo12:.LC71	// tmp217, tmp218,
	str	x0, [sp, 32]	// tmp217, D.4484[0]
	adrp	x0, .LC66	// tmp220,
	add	x0, x0, :lo12:.LC66	// tmp219, tmp220,
	str	x0, [sp, 40]	// tmp219, D.4484[1]
// problem154.c:55:     func0("Sp", (const char* []){"671235", "Bb"}, 2, result);
	add	x1, sp, 288	// tmp221,,
	add	x0, sp, 32	// tmp222,,
	mov	x3, x1	//, tmp221
	mov	w2, 2	//,
	mov	x1, x0	//, tmp222
	adrp	x0, .LC72	// tmp223,
	add	x0, x0, :lo12:.LC72	//, tmp223,
	bl	func0		//
// problem154.c:56:     assert(strcmp(result, "Sp.671235") == 0);
	add	x2, sp, 288	// tmp224,,
	adrp	x0, .LC73	// tmp225,
	add	x1, x0, :lo12:.LC73	//, tmp225,
	mov	x0, x2	//, tmp224
	bl	strcmp		//
	cmp	w0, 0	// _9,
	beq	.L18		//,
// problem154.c:56:     assert(strcmp(result, "Sp.671235") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp226,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp226,
	mov	w2, 56	//,
	adrp	x0, .LC40	// tmp227,
	add	x1, x0, :lo12:.LC40	//, tmp227,
	adrp	x0, .LC74	// tmp228,
	add	x0, x0, :lo12:.LC74	//, tmp228,
	bl	__assert_fail		//
.L18:
// problem154.c:58:     return 0;
	mov	w0, 0	// _40,
// problem154.c:59: }
	mov	w1, w0	// <retval>, _40
	adrp	x0, :got:__stack_chk_guard	// tmp231,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp230, tmp231,
	ldr	x3, [sp, 344]	// tmp233, D.4565
	ldr	x2, [x0]	// tmp234,
	subs	x3, x3, x2	// tmp233, tmp234
	mov	x2, 0	// tmp234
	beq	.L20		//,
	bl	__stack_chk_fail		//
.L20:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 352	//,,,
	.cfi_restore 30
	.cfi_restore 29
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
