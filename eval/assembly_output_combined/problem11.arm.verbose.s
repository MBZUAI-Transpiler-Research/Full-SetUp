	.arch armv8-a
	.file	"problem11.c"
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
	str	x0, [sp, 24]	// str, str
// problem11.c:6:     int len = strlen(str), i, j;
	ldr	x0, [sp, 24]	//, str
	bl	strlen		//
// problem11.c:6:     int len = strlen(str), i, j;
	str	w0, [sp, 52]	// tmp133, len
// problem11.c:7:     char *result = (char *)malloc(2 * len + 1);
	ldr	w0, [sp, 52]	// tmp134, len
	lsl	w0, w0, 1	// _2, tmp134,
// problem11.c:7:     char *result = (char *)malloc(2 * len + 1);
	add	w0, w0, 1	// _3, _2,
// problem11.c:7:     char *result = (char *)malloc(2 * len + 1);
	sxtw	x0, w0	// _4, _3
	bl	malloc		//
	str	x0, [sp, 56]	// tmp135, result
// problem11.c:8:     if (!result) {
	ldr	x0, [sp, 56]	// tmp136, result
	cmp	x0, 0	// tmp136,
	bne	.L2		//,
// problem11.c:9:         return NULL; 
	mov	x0, 0	// _45,
	b	.L3		//
.L2:
// problem11.c:12:     for (i = 0; i < len; i++) {
	str	wzr, [sp, 40]	//, i
// problem11.c:12:     for (i = 0; i < len; i++) {
	b	.L4		//
.L12:
// problem11.c:13:         int is_palindrome = 1;
	mov	w0, 1	// tmp137,
	str	w0, [sp, 48]	// tmp137, is_palindrome
// problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	str	wzr, [sp, 44]	//, j
// problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	b	.L5		//
.L8:
// problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	ldr	w1, [sp, 40]	// tmp138, i
	ldr	w0, [sp, 44]	// tmp139, j
	add	w0, w1, w0	// _5, tmp138, tmp139
	sxtw	x0, w0	// _6, _5
// problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	ldr	x1, [sp, 24]	// tmp140, str
	add	x0, x1, x0	// _7, tmp140, _6
	ldrb	w1, [x0]	// _8, *_7
// problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	ldr	w0, [sp, 52]	// tmp141, len
	sub	w2, w0, #1	// _9, tmp141,
// problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	ldr	w0, [sp, 44]	// tmp142, j
	sub	w0, w2, w0	// _10, _9, tmp142
	sxtw	x0, w0	// _11, _10
// problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	ldr	x2, [sp, 24]	// tmp143, str
	add	x0, x2, x0	// _12, tmp143, _11
	ldrb	w0, [x0]	// _13, *_12
// problem11.c:15:             if (str[i + j] != str[len - 1 - j]) {
	cmp	w1, w0	// _8, _13
	beq	.L6		//,
// problem11.c:16:                 is_palindrome = 0;
	str	wzr, [sp, 48]	//, is_palindrome
// problem11.c:17:                 break;
	b	.L7		//
.L6:
// problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	ldr	w0, [sp, 44]	// tmp145, j
	add	w0, w0, 1	// tmp144, tmp145,
	str	w0, [sp, 44]	// tmp144, j
.L5:
// problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	ldr	w1, [sp, 52]	// tmp146, len
	ldr	w0, [sp, 40]	// tmp147, i
	sub	w0, w1, w0	// _14, tmp146, tmp147
// problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	lsr	w1, w0, 31	// tmp148, _14,
	add	w0, w1, w0	// tmp149, tmp148, _14
	asr	w0, w0, 1	// tmp150, tmp149,
	mov	w1, w0	// _15, tmp150
// problem11.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	ldr	w0, [sp, 44]	// tmp151, j
	cmp	w0, w1	// tmp151, _15
	blt	.L8		//,
.L7:
// problem11.c:20:         if (is_palindrome) {
	ldr	w0, [sp, 48]	// tmp152, is_palindrome
	cmp	w0, 0	// tmp152,
	beq	.L9		//,
// problem11.c:21:             strncpy(result, str, len);
	ldrsw	x0, [sp, 52]	// _16, len
	mov	x2, x0	//, _16
	ldr	x1, [sp, 24]	//, str
	ldr	x0, [sp, 56]	//, result
	bl	strncpy		//
// problem11.c:22:             for (j = 0; j < i; j++) {
	str	wzr, [sp, 44]	//, j
// problem11.c:22:             for (j = 0; j < i; j++) {
	b	.L10		//
.L11:
// problem11.c:23:                 result[len + j] = str[i - j - 1];
	ldr	w1, [sp, 40]	// tmp153, i
	ldr	w0, [sp, 44]	// tmp154, j
	sub	w0, w1, w0	// _17, tmp153, tmp154
	sxtw	x0, w0	// _18, _17
// problem11.c:23:                 result[len + j] = str[i - j - 1];
	sub	x0, x0, #1	// _19, _18,
	ldr	x1, [sp, 24]	// tmp155, str
	add	x1, x1, x0	// _20, tmp155, _19
// problem11.c:23:                 result[len + j] = str[i - j - 1];
	ldr	w2, [sp, 52]	// tmp156, len
	ldr	w0, [sp, 44]	// tmp157, j
	add	w0, w2, w0	// _21, tmp156, tmp157
	sxtw	x0, w0	// _22, _21
// problem11.c:23:                 result[len + j] = str[i - j - 1];
	ldr	x2, [sp, 56]	// tmp158, result
	add	x0, x2, x0	// _23, tmp158, _22
// problem11.c:23:                 result[len + j] = str[i - j - 1];
	ldrb	w1, [x1]	// _24, *_20
// problem11.c:23:                 result[len + j] = str[i - j - 1];
	strb	w1, [x0]	// tmp159, *_23
// problem11.c:22:             for (j = 0; j < i; j++) {
	ldr	w0, [sp, 44]	// tmp161, j
	add	w0, w0, 1	// tmp160, tmp161,
	str	w0, [sp, 44]	// tmp160, j
.L10:
// problem11.c:22:             for (j = 0; j < i; j++) {
	ldr	w1, [sp, 44]	// tmp162, j
	ldr	w0, [sp, 40]	// tmp163, i
	cmp	w1, w0	// tmp162, tmp163
	blt	.L11		//,
// problem11.c:25:             result[len + i] = '\0';
	ldr	w1, [sp, 52]	// tmp164, len
	ldr	w0, [sp, 40]	// tmp165, i
	add	w0, w1, w0	// _25, tmp164, tmp165
	sxtw	x0, w0	// _26, _25
// problem11.c:25:             result[len + i] = '\0';
	ldr	x1, [sp, 56]	// tmp166, result
	add	x0, x1, x0	// _27, tmp166, _26
// problem11.c:25:             result[len + i] = '\0';
	strb	wzr, [x0]	//, *_27
// problem11.c:26:             return result;
	ldr	x0, [sp, 56]	// _45, result
	b	.L3		//
.L9:
// problem11.c:12:     for (i = 0; i < len; i++) {
	ldr	w0, [sp, 40]	// tmp168, i
	add	w0, w0, 1	// tmp167, tmp168,
	str	w0, [sp, 40]	// tmp167, i
.L4:
// problem11.c:12:     for (i = 0; i < len; i++) {
	ldr	w1, [sp, 40]	// tmp169, i
	ldr	w0, [sp, 52]	// tmp170, len
	cmp	w1, w0	// tmp169, tmp170
	blt	.L12		//,
// problem11.c:30:     strncpy(result, str, len);
	ldrsw	x0, [sp, 52]	// _28, len
	mov	x2, x0	//, _28
	ldr	x1, [sp, 24]	//, str
	ldr	x0, [sp, 56]	//, result
	bl	strncpy		//
// problem11.c:31:     for (j = 0; j < len; j++) {
	str	wzr, [sp, 44]	//, j
// problem11.c:31:     for (j = 0; j < len; j++) {
	b	.L13		//
.L14:
// problem11.c:32:         result[len + j] = str[len - j - 1];
	ldr	w1, [sp, 52]	// tmp171, len
	ldr	w0, [sp, 44]	// tmp172, j
	sub	w0, w1, w0	// _29, tmp171, tmp172
	sxtw	x0, w0	// _30, _29
// problem11.c:32:         result[len + j] = str[len - j - 1];
	sub	x0, x0, #1	// _31, _30,
	ldr	x1, [sp, 24]	// tmp173, str
	add	x1, x1, x0	// _32, tmp173, _31
// problem11.c:32:         result[len + j] = str[len - j - 1];
	ldr	w2, [sp, 52]	// tmp174, len
	ldr	w0, [sp, 44]	// tmp175, j
	add	w0, w2, w0	// _33, tmp174, tmp175
	sxtw	x0, w0	// _34, _33
// problem11.c:32:         result[len + j] = str[len - j - 1];
	ldr	x2, [sp, 56]	// tmp176, result
	add	x0, x2, x0	// _35, tmp176, _34
// problem11.c:32:         result[len + j] = str[len - j - 1];
	ldrb	w1, [x1]	// _36, *_32
// problem11.c:32:         result[len + j] = str[len - j - 1];
	strb	w1, [x0]	// tmp177, *_35
// problem11.c:31:     for (j = 0; j < len; j++) {
	ldr	w0, [sp, 44]	// tmp179, j
	add	w0, w0, 1	// tmp178, tmp179,
	str	w0, [sp, 44]	// tmp178, j
.L13:
// problem11.c:31:     for (j = 0; j < len; j++) {
	ldr	w1, [sp, 44]	// tmp180, j
	ldr	w0, [sp, 52]	// tmp181, len
	cmp	w1, w0	// tmp180, tmp181
	blt	.L14		//,
// problem11.c:34:     result[2 * len] = '\0';
	ldr	w0, [sp, 52]	// tmp182, len
	lsl	w0, w0, 1	// _37, tmp182,
	sxtw	x0, w0	// _38, _37
// problem11.c:34:     result[2 * len] = '\0';
	ldr	x1, [sp, 56]	// tmp183, result
	add	x0, x1, x0	// _39, tmp183, _38
// problem11.c:34:     result[2 * len] = '\0';
	strb	wzr, [x0]	//, *_39
// problem11.c:35:     return result;
	ldr	x0, [sp, 56]	// _45, result
.L3:
// problem11.c:36: }
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
	.string	""
	.align	3
.LC1:
	.string	"problem11.c"
	.align	3
.LC2:
	.string	"strcmp(palindrome, \"\") == 0"
	.align	3
.LC3:
	.string	"x"
	.align	3
.LC4:
	.string	"strcmp(palindrome, \"x\") == 0"
	.align	3
.LC5:
	.string	"xyz"
	.align	3
.LC6:
	.string	"xyzyx"
	.align	3
.LC7:
	.string	"strcmp(palindrome, \"xyzyx\") == 0"
	.align	3
.LC8:
	.string	"xyx"
	.align	3
.LC9:
	.string	"strcmp(palindrome, \"xyx\") == 0"
	.align	3
.LC10:
	.string	"jerry"
	.align	3
.LC11:
	.string	"jerryrrej"
	.align	3
.LC12:
	.string	"strcmp(palindrome, \"jerryrrej\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
// problem11.c:48:     palindrome = func0("");
	adrp	x0, .LC0	// tmp100,
	add	x0, x0, :lo12:.LC0	//, tmp100,
	bl	func0		//
	str	x0, [sp, 24]	//, palindrome
// problem11.c:49:     assert(strcmp(palindrome, "") == 0);
	ldr	x0, [sp, 24]	// tmp101, palindrome
	ldrb	w0, [x0]	// _9, MEM[(const unsigned char * {ref-all})palindrome_8]
	cmp	w0, 0	// _1,
	beq	.L16		//,
// problem11.c:49:     assert(strcmp(palindrome, "") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp102,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp102,
	mov	w2, 49	//,
	adrp	x0, .LC1	// tmp103,
	add	x1, x0, :lo12:.LC1	//, tmp103,
	adrp	x0, .LC2	// tmp104,
	add	x0, x0, :lo12:.LC2	//, tmp104,
	bl	__assert_fail		//
.L16:
// problem11.c:50:     free(palindrome);
	ldr	x0, [sp, 24]	//, palindrome
	bl	free		//
// problem11.c:53:     palindrome = func0("x");
	adrp	x0, .LC3	// tmp105,
	add	x0, x0, :lo12:.LC3	//, tmp105,
	bl	func0		//
	str	x0, [sp, 24]	//, palindrome
// problem11.c:54:     assert(strcmp(palindrome, "x") == 0);
	adrp	x0, .LC3	// tmp106,
	add	x1, x0, :lo12:.LC3	//, tmp106,
	ldr	x0, [sp, 24]	//, palindrome
	bl	strcmp		//
// problem11.c:54:     assert(strcmp(palindrome, "x") == 0);
	cmp	w0, 0	// _2,
	beq	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp107,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp107,
	mov	w2, 54	//,
	adrp	x0, .LC1	// tmp108,
	add	x1, x0, :lo12:.LC1	//, tmp108,
	adrp	x0, .LC4	// tmp109,
	add	x0, x0, :lo12:.LC4	//, tmp109,
	bl	__assert_fail		//
.L17:
// problem11.c:55:     free(palindrome);
	ldr	x0, [sp, 24]	//, palindrome
	bl	free		//
// problem11.c:58:     palindrome = func0("xyz");
	adrp	x0, .LC5	// tmp110,
	add	x0, x0, :lo12:.LC5	//, tmp110,
	bl	func0		//
	str	x0, [sp, 24]	//, palindrome
// problem11.c:59:     assert(strcmp(palindrome, "xyzyx") == 0);
	adrp	x0, .LC6	// tmp111,
	add	x1, x0, :lo12:.LC6	//, tmp111,
	ldr	x0, [sp, 24]	//, palindrome
	bl	strcmp		//
// problem11.c:59:     assert(strcmp(palindrome, "xyzyx") == 0);
	cmp	w0, 0	// _3,
	beq	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp112,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp112,
	mov	w2, 59	//,
	adrp	x0, .LC1	// tmp113,
	add	x1, x0, :lo12:.LC1	//, tmp113,
	adrp	x0, .LC7	// tmp114,
	add	x0, x0, :lo12:.LC7	//, tmp114,
	bl	__assert_fail		//
.L18:
// problem11.c:60:     free(palindrome);
	ldr	x0, [sp, 24]	//, palindrome
	bl	free		//
// problem11.c:63:     palindrome = func0("xyx");
	adrp	x0, .LC8	// tmp115,
	add	x0, x0, :lo12:.LC8	//, tmp115,
	bl	func0		//
	str	x0, [sp, 24]	//, palindrome
// problem11.c:64:     assert(strcmp(palindrome, "xyx") == 0);
	adrp	x0, .LC8	// tmp116,
	add	x1, x0, :lo12:.LC8	//, tmp116,
	ldr	x0, [sp, 24]	//, palindrome
	bl	strcmp		//
// problem11.c:64:     assert(strcmp(palindrome, "xyx") == 0);
	cmp	w0, 0	// _4,
	beq	.L19		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp117,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp117,
	mov	w2, 64	//,
	adrp	x0, .LC1	// tmp118,
	add	x1, x0, :lo12:.LC1	//, tmp118,
	adrp	x0, .LC9	// tmp119,
	add	x0, x0, :lo12:.LC9	//, tmp119,
	bl	__assert_fail		//
.L19:
// problem11.c:65:     free(palindrome);
	ldr	x0, [sp, 24]	//, palindrome
	bl	free		//
// problem11.c:68:     palindrome = func0("jerry");
	adrp	x0, .LC10	// tmp120,
	add	x0, x0, :lo12:.LC10	//, tmp120,
	bl	func0		//
	str	x0, [sp, 24]	//, palindrome
// problem11.c:69:     assert(strcmp(palindrome, "jerryrrej") == 0);
	adrp	x0, .LC11	// tmp121,
	add	x1, x0, :lo12:.LC11	//, tmp121,
	ldr	x0, [sp, 24]	//, palindrome
	bl	strcmp		//
// problem11.c:69:     assert(strcmp(palindrome, "jerryrrej") == 0);
	cmp	w0, 0	// _5,
	beq	.L20		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp122,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp122,
	mov	w2, 69	//,
	adrp	x0, .LC1	// tmp123,
	add	x1, x0, :lo12:.LC1	//, tmp123,
	adrp	x0, .LC12	// tmp124,
	add	x0, x0, :lo12:.LC12	//, tmp124,
	bl	__assert_fail		//
.L20:
// problem11.c:70:     free(palindrome);
	ldr	x0, [sp, 24]	//, palindrome
	bl	free		//
// problem11.c:72:     return 0;
	mov	w0, 0	// _28,
// problem11.c:73: }
	ldp	x29, x30, [sp], 32	//,,,
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
