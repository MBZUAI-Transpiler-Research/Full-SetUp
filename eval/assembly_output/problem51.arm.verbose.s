	.arch armv8-a
	.file	"problem51.c"
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
	str	x0, [sp, 24]	// s, s
	str	w1, [sp, 20]	// encode, encode
// problem51.c:6:     int shift = encode ? 5 : 21;
	ldr	w0, [sp, 20]	// tmp101, encode
	cmp	w0, 0	// tmp101,
	beq	.L2		//,
// problem51.c:6:     int shift = encode ? 5 : 21;
	mov	w0, 5	// iftmp.0_10,
	b	.L3		//
.L2:
// problem51.c:6:     int shift = encode ? 5 : 21;
	mov	w0, 21	// iftmp.0_10,
.L3:
// problem51.c:6:     int shift = encode ? 5 : 21;
	str	w0, [sp, 40]	// iftmp.0_10, shift
// problem51.c:7:     size_t len = strlen(s);
	ldr	x0, [sp, 24]	//, s
	bl	strlen		//
	str	x0, [sp, 56]	//, len
// problem51.c:8:     for (size_t i = 0; i < len; i++) {
	str	xzr, [sp, 48]	//, i
// problem51.c:8:     for (size_t i = 0; i < len; i++) {
	b	.L4		//
.L5:
// problem51.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	ldr	x1, [sp, 24]	// tmp102, s
	ldr	x0, [sp, 48]	// tmp103, i
	add	x0, x1, x0	// _1, tmp102, tmp103
	ldrb	w0, [x0]	// _2, *_1
// problem51.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	sub	w1, w0, #97	// _4, _3,
// problem51.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	ldr	w0, [sp, 40]	// tmp104, shift
	add	w1, w1, w0	// _5, _4, tmp104
// problem51.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	mov	w0, 60495	// tmp106,
	movk	w0, 0x4ec4, lsl 16	// tmp106,,
	smull	x0, w1, w0	// tmp105, _5, tmp106
	lsr	x0, x0, 32	// tmp107, tmp105,
	asr	w2, w0, 3	// tmp108, tmp107,
	asr	w0, w1, 31	// tmp109, _5,
	sub	w0, w2, w0	// _6, tmp108, tmp109
	mov	w2, 26	// tmp111,
	mul	w0, w0, w2	// tmp110, _6, tmp111
	sub	w0, w1, w0	// _6, _5, tmp110
// problem51.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	add	w0, w0, 97	// tmp112, _6,
	str	w0, [sp, 44]	// tmp112, w
// problem51.c:10:         s[i] = (char)w;
	ldr	x1, [sp, 24]	// tmp113, s
	ldr	x0, [sp, 48]	// tmp114, i
	add	x0, x1, x0	// _7, tmp113, tmp114
// problem51.c:10:         s[i] = (char)w;
	ldr	w1, [sp, 44]	// tmp115, w
	and	w1, w1, 255	// _8, tmp115
// problem51.c:10:         s[i] = (char)w;
	strb	w1, [x0]	// tmp116, *_7
// problem51.c:8:     for (size_t i = 0; i < len; i++) {
	ldr	x0, [sp, 48]	// tmp118, i
	add	x0, x0, 1	// tmp117, tmp118,
	str	x0, [sp, 48]	// tmp117, i
.L4:
// problem51.c:8:     for (size_t i = 0; i < len; i++) {
	ldr	x1, [sp, 48]	// tmp119, i
	ldr	x0, [sp, 56]	// tmp120, len
	cmp	x1, x0	// tmp119, tmp120
	bcc	.L5		//,
// problem51.c:12: }
	nop	
	nop	
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
.LC0:
	.string	"problem51.c"
	.align	3
.LC1:
	.string	"strcmp(encoded_str, str) == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
// problem51.c:23:     srand((unsigned int)time(NULL));
	mov	x0, 0	//,
	bl	time		//
// problem51.c:23:     srand((unsigned int)time(NULL));
	bl	srand		//
// problem51.c:25:     for (int i = 0; i < 100; i++) {
	str	wzr, [sp, 20]	//, i
// problem51.c:25:     for (int i = 0; i < 100; i++) {
	b	.L7		//
.L11:
// problem51.c:26:         int l = 10 + rand() % 11;
	bl	rand		//
	mov	w1, w0	// _3,
// problem51.c:26:         int l = 10 + rand() % 11;
	mov	w0, 41705	// tmp111,
	movk	w0, 0x2e8b, lsl 16	// tmp111,,
	smull	x0, w1, w0	// tmp110, _3, tmp111
	lsr	x0, x0, 32	// tmp112, tmp110,
	asr	w2, w0, 1	// tmp113, tmp112,
	asr	w0, w1, 31	// tmp114, _3,
	sub	w0, w2, w0	// _4, tmp113, tmp114
	mov	w2, 11	// tmp116,
	mul	w0, w0, w2	// tmp115, _4, tmp116
	sub	w0, w1, w0	// _4, _3, tmp115
// problem51.c:26:         int l = 10 + rand() % 11;
	add	w0, w0, 10	// tmp117, _4,
	str	w0, [sp, 28]	// tmp117, l
// problem51.c:27:         char *str = (char *)malloc(l + 1);
	ldr	w0, [sp, 28]	// tmp118, l
	add	w0, w0, 1	// _5, tmp118,
// problem51.c:27:         char *str = (char *)malloc(l + 1);
	sxtw	x0, w0	// _6, _5
	bl	malloc		//
	str	x0, [sp, 32]	// tmp119, str
// problem51.c:28:         for (int j = 0; j < l; j++) {
	str	wzr, [sp, 24]	//, j
// problem51.c:28:         for (int j = 0; j < l; j++) {
	b	.L8		//
.L9:
// problem51.c:29:             char chr = 'a' + rand() % 26;
	bl	rand		//
// problem51.c:29:             char chr = 'a' + rand() % 26;
	mov	w1, 60495	// tmp121,
	movk	w1, 0x4ec4, lsl 16	// tmp121,,
	smull	x1, w0, w1	// tmp120, _7, tmp121
	lsr	x1, x1, 32	// tmp122, tmp120,
	asr	w2, w1, 3	// tmp123, tmp122,
	asr	w1, w0, 31	// tmp124, _7,
	sub	w1, w2, w1	// _8, tmp123, tmp124
	mov	w2, 26	// tmp126,
	mul	w1, w1, w2	// tmp125, _8, tmp126
	sub	w1, w0, w1	// _8, _7, tmp125
// problem51.c:29:             char chr = 'a' + rand() % 26;
	and	w0, w1, 255	// _9, _8
// problem51.c:29:             char chr = 'a' + rand() % 26;
	add	w0, w0, 97	// tmp127, _9,
	strb	w0, [sp, 19]	// tmp128, chr
// problem51.c:30:             str[j] = chr;
	ldrsw	x0, [sp, 24]	// _10, j
	ldr	x1, [sp, 32]	// tmp129, str
	add	x0, x1, x0	// _11, tmp129, _10
// problem51.c:30:             str[j] = chr;
	ldrb	w1, [sp, 19]	// tmp130, chr
	strb	w1, [x0]	// tmp130, *_11
// problem51.c:28:         for (int j = 0; j < l; j++) {
	ldr	w0, [sp, 24]	// tmp132, j
	add	w0, w0, 1	// tmp131, tmp132,
	str	w0, [sp, 24]	// tmp131, j
.L8:
// problem51.c:28:         for (int j = 0; j < l; j++) {
	ldr	w1, [sp, 24]	// tmp133, j
	ldr	w0, [sp, 28]	// tmp134, l
	cmp	w1, w0	// tmp133, tmp134
	blt	.L9		//,
// problem51.c:32:         str[l] = '\0';
	ldrsw	x0, [sp, 28]	// _12, l
	ldr	x1, [sp, 32]	// tmp135, str
	add	x0, x1, x0	// _13, tmp135, _12
// problem51.c:32:         str[l] = '\0';
	strb	wzr, [x0]	//, *_13
// problem51.c:34:         char *encoded_str = (char *)malloc(l + 1);
	ldr	w0, [sp, 28]	// tmp136, l
	add	w0, w0, 1	// _14, tmp136,
// problem51.c:34:         char *encoded_str = (char *)malloc(l + 1);
	sxtw	x0, w0	// _15, _14
	bl	malloc		//
	str	x0, [sp, 40]	// tmp137, encoded_str
// problem51.c:35:         strcpy(encoded_str, str);
	ldr	x1, [sp, 32]	//, str
	ldr	x0, [sp, 40]	//, encoded_str
	bl	strcpy		//
// problem51.c:36:         func0(encoded_str, 1);
	mov	w1, 1	//,
	ldr	x0, [sp, 40]	//, encoded_str
	bl	func0		//
// problem51.c:37:         func0(encoded_str, 0);
	mov	w1, 0	//,
	ldr	x0, [sp, 40]	//, encoded_str
	bl	func0		//
// problem51.c:38:         assert(strcmp(encoded_str, str) == 0);
	ldr	x1, [sp, 32]	//, str
	ldr	x0, [sp, 40]	//, encoded_str
	bl	strcmp		//
// problem51.c:38:         assert(strcmp(encoded_str, str) == 0);
	cmp	w0, 0	// _16,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp138,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp138,
	mov	w2, 38	//,
	adrp	x0, .LC0	// tmp139,
	add	x1, x0, :lo12:.LC0	//, tmp139,
	adrp	x0, .LC1	// tmp140,
	add	x0, x0, :lo12:.LC1	//, tmp140,
	bl	__assert_fail		//
.L10:
// problem51.c:40:         free(str);
	ldr	x0, [sp, 32]	//, str
	bl	free		//
// problem51.c:41:         free(encoded_str);
	ldr	x0, [sp, 40]	//, encoded_str
	bl	free		//
// problem51.c:25:     for (int i = 0; i < 100; i++) {
	ldr	w0, [sp, 20]	// tmp142, i
	add	w0, w0, 1	// tmp141, tmp142,
	str	w0, [sp, 20]	// tmp141, i
.L7:
// problem51.c:25:     for (int i = 0; i < 100; i++) {
	ldr	w0, [sp, 20]	// tmp143, i
	cmp	w0, 99	// tmp143,
	ble	.L11		//,
// problem51.c:44:     return 0;
	mov	w0, 0	// _25,
// problem51.c:45: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
