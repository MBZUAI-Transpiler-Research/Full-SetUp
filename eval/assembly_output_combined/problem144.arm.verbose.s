	.arch armv8-a
	.file	"problem144.c"
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
	str	x0, [sp, 24]	// sentence, sentence
	str	x1, [sp, 16]	// out, out
// problem144.c:6:     int index = 0, word_len = 0;
	str	wzr, [sp, 60]	//, index
// problem144.c:6:     int index = 0, word_len = 0;
	str	wzr, [sp, 44]	//, word_len
// problem144.c:7:     int out_index = 0;
	str	wzr, [sp, 48]	//, out_index
// problem144.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	str	wzr, [sp, 52]	//, i
// problem144.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	b	.L2		//
.L13:
// problem144.c:12:         if (sentence[i] != ' ') {
	ldrsw	x0, [sp, 52]	// _1, i
	ldr	x1, [sp, 24]	// tmp124, sentence
	add	x0, x1, x0	// _2, tmp124, _1
	ldrb	w0, [x0]	// _3, *_2
// problem144.c:12:         if (sentence[i] != ' ') {
	cmp	w0, 32	// _3,
	beq	.L3		//,
// problem144.c:13:             word_len++;
	ldr	w0, [sp, 44]	// tmp126, word_len
	add	w0, w0, 1	// tmp125, tmp126,
	str	w0, [sp, 44]	// tmp125, word_len
	b	.L4		//
.L3:
// problem144.c:15:             if (word_len > 1) {
	ldr	w0, [sp, 44]	// tmp127, word_len
	cmp	w0, 1	// tmp127,
	ble	.L5		//,
// problem144.c:16:                 is_prime = true;
	mov	w0, 1	// tmp128,
	strb	w0, [sp, 43]	// tmp128, is_prime
// problem144.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	mov	w0, 2	// tmp129,
	str	w0, [sp, 56]	// tmp129, j
// problem144.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	b	.L6		//
.L9:
// problem144.c:18:                     if (word_len % j == 0) {
	ldr	w0, [sp, 44]	// tmp130, word_len
	ldr	w1, [sp, 56]	// tmp143, j
	sdiv	w2, w0, w1	// tmp142, tmp130, tmp143
	ldr	w1, [sp, 56]	// tmp145, j
	mul	w1, w2, w1	// tmp144, tmp142, tmp145
	sub	w0, w0, w1	// _4, tmp130, tmp144
// problem144.c:18:                     if (word_len % j == 0) {
	cmp	w0, 0	// _4,
	bne	.L7		//,
// problem144.c:19:                         is_prime = false;
	strb	wzr, [sp, 43]	//, is_prime
// problem144.c:20:                         break;
	b	.L10		//
.L7:
// problem144.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	ldr	w0, [sp, 56]	// tmp147, j
	add	w0, w0, 1	// tmp146, tmp147,
	str	w0, [sp, 56]	// tmp146, j
.L6:
// problem144.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	ldr	w0, [sp, 56]	// tmp148, j
	mul	w0, w0, w0	// _5, tmp148, tmp148
// problem144.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	ldr	w1, [sp, 44]	// tmp149, word_len
	cmp	w1, w0	// tmp149, _5
	bge	.L9		//,
	b	.L10		//
.L5:
// problem144.c:24:                 is_prime = false;
	strb	wzr, [sp, 43]	//, is_prime
.L10:
// problem144.c:27:             if (is_prime) {
	ldrb	w0, [sp, 43]	// tmp150, is_prime
	and	w0, w0, 1	// tmp151, tmp150,
	cmp	w0, 0	// tmp151,
	beq	.L11		//,
// problem144.c:28:                 if (out_index > 0) {
	ldr	w0, [sp, 48]	// tmp152, out_index
	cmp	w0, 0	// tmp152,
	ble	.L12		//,
// problem144.c:29:                     out[out_index++] = ' ';
	ldr	w0, [sp, 48]	// out_index.0_6, out_index
	add	w1, w0, 1	// tmp153, out_index.0_6,
	str	w1, [sp, 48]	// tmp153, out_index
	sxtw	x0, w0	// _7, out_index.0_6
// problem144.c:29:                     out[out_index++] = ' ';
	ldr	x1, [sp, 16]	// tmp154, out
	add	x0, x1, x0	// _8, tmp154, _7
// problem144.c:29:                     out[out_index++] = ' ';
	mov	w1, 32	// tmp155,
	strb	w1, [x0]	// tmp155, *_8
.L12:
// problem144.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	ldrsw	x0, [sp, 48]	// _9, out_index
// problem144.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	ldr	x1, [sp, 16]	// tmp156, out
	add	x3, x1, x0	// _10, tmp156, _9
// problem144.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	ldrsw	x1, [sp, 52]	// _11, i
	ldrsw	x0, [sp, 44]	// _12, word_len
	sub	x0, x1, x0	// _13, _11, _12
	ldr	x1, [sp, 24]	// tmp157, sentence
	add	x0, x1, x0	// _14, tmp157, _13
// problem144.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	ldrsw	x1, [sp, 44]	// _15, word_len
	mov	x2, x1	//, _15
	mov	x1, x0	//, _14
	mov	x0, x3	//, _10
	bl	memcpy		//
// problem144.c:32:                 out_index += word_len;
	ldr	w1, [sp, 48]	// tmp159, out_index
	ldr	w0, [sp, 44]	// tmp160, word_len
	add	w0, w1, w0	// tmp158, tmp159, tmp160
	str	w0, [sp, 48]	// tmp158, out_index
.L11:
// problem144.c:34:             word_len = 0;
	str	wzr, [sp, 44]	//, word_len
.L4:
// problem144.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	ldr	w0, [sp, 52]	// tmp162, i
	add	w0, w0, 1	// tmp161, tmp162,
	str	w0, [sp, 52]	// tmp161, i
.L2:
// problem144.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	ldrsw	x0, [sp, 52]	// _16, i
	ldr	x1, [sp, 24]	// tmp163, sentence
	add	x0, x1, x0	// _17, tmp163, _16
	ldrb	w0, [x0]	// _18, *_17
// problem144.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	cmp	w0, 0	// _18,
	bne	.L13		//,
// problem144.c:38:     if (word_len > 1) {
	ldr	w0, [sp, 44]	// tmp164, word_len
	cmp	w0, 1	// tmp164,
	ble	.L14		//,
// problem144.c:39:         is_prime = true;
	mov	w0, 1	// tmp165,
	strb	w0, [sp, 43]	// tmp165, is_prime
// problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	mov	w0, 2	// tmp166,
	str	w0, [sp, 56]	// tmp166, j
// problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	b	.L15		//
.L18:
// problem144.c:41:             if (word_len % j == 0) {
	ldr	w0, [sp, 44]	// tmp167, word_len
	ldr	w1, [sp, 56]	// tmp180, j
	sdiv	w2, w0, w1	// tmp179, tmp167, tmp180
	ldr	w1, [sp, 56]	// tmp182, j
	mul	w1, w2, w1	// tmp181, tmp179, tmp182
	sub	w0, w0, w1	// _19, tmp167, tmp181
// problem144.c:41:             if (word_len % j == 0) {
	cmp	w0, 0	// _19,
	bne	.L16		//,
// problem144.c:42:                 is_prime = false;
	strb	wzr, [sp, 43]	//, is_prime
// problem144.c:43:                 break;
	b	.L19		//
.L16:
// problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	ldr	w0, [sp, 56]	// tmp184, j
	add	w0, w0, 1	// tmp183, tmp184,
	str	w0, [sp, 56]	// tmp183, j
.L15:
// problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	ldr	w0, [sp, 56]	// tmp185, j
	mul	w0, w0, w0	// _20, tmp185, tmp185
// problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	ldr	w1, [sp, 44]	// tmp186, word_len
	cmp	w1, w0	// tmp186, _20
	bge	.L18		//,
	b	.L19		//
.L14:
// problem144.c:47:         is_prime = false;
	strb	wzr, [sp, 43]	//, is_prime
.L19:
// problem144.c:50:     if (is_prime) {
	ldrb	w0, [sp, 43]	// tmp187, is_prime
	and	w0, w0, 1	// tmp188, tmp187,
	cmp	w0, 0	// tmp188,
	beq	.L20		//,
// problem144.c:51:         if (out_index > 0) {
	ldr	w0, [sp, 48]	// tmp189, out_index
	cmp	w0, 0	// tmp189,
	ble	.L21		//,
// problem144.c:52:             out[out_index++] = ' ';
	ldr	w0, [sp, 48]	// out_index.1_21, out_index
	add	w1, w0, 1	// tmp190, out_index.1_21,
	str	w1, [sp, 48]	// tmp190, out_index
	sxtw	x0, w0	// _22, out_index.1_21
// problem144.c:52:             out[out_index++] = ' ';
	ldr	x1, [sp, 16]	// tmp191, out
	add	x0, x1, x0	// _23, tmp191, _22
// problem144.c:52:             out[out_index++] = ' ';
	mov	w1, 32	// tmp192,
	strb	w1, [x0]	// tmp192, *_23
.L21:
// problem144.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	ldrsw	x0, [sp, 48]	// _24, out_index
// problem144.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	ldr	x1, [sp, 16]	// tmp193, out
	add	x3, x1, x0	// _25, tmp193, _24
// problem144.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	ldrsw	x1, [sp, 52]	// _26, i
	ldrsw	x0, [sp, 44]	// _27, word_len
	sub	x0, x1, x0	// _28, _26, _27
	ldr	x1, [sp, 24]	// tmp194, sentence
	add	x0, x1, x0	// _29, tmp194, _28
// problem144.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	ldrsw	x1, [sp, 44]	// _30, word_len
	mov	x2, x1	//, _30
	mov	x1, x0	//, _29
	mov	x0, x3	//, _25
	bl	memcpy		//
// problem144.c:55:         out_index += word_len;
	ldr	w1, [sp, 48]	// tmp196, out_index
	ldr	w0, [sp, 44]	// tmp197, word_len
	add	w0, w1, w0	// tmp195, tmp196, tmp197
	str	w0, [sp, 48]	// tmp195, out_index
.L20:
// problem144.c:58:     out[out_index] = '\0';
	ldrsw	x0, [sp, 48]	// _31, out_index
	ldr	x1, [sp, 16]	// tmp198, out
	add	x0, x1, x0	// _32, tmp198, _31
// problem144.c:58:     out[out_index] = '\0';
	strb	wzr, [x0]	//, *_32
// problem144.c:59: }
	nop	
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
.LC0:
	.string	"This is a test"
	.align	3
.LC1:
	.string	"is"
	.align	3
.LC2:
	.string	"problem144.c"
	.align	3
.LC3:
	.string	"strcmp(output, \"is\") == 0"
	.align	3
.LC4:
	.string	"lets go for swimming"
	.align	3
.LC5:
	.string	"go for"
	.align	3
.LC6:
	.string	"strcmp(output, \"go for\") == 0"
	.align	3
.LC7:
	.string	"there is no place available here"
	.align	3
.LC8:
	.string	"there is no place"
	.align	3
.LC9:
	.string	"strcmp(output, \"there is no place\") == 0"
	.align	3
.LC10:
	.string	"Hi I am Hussein"
	.align	3
.LC11:
	.string	"Hi am Hussein"
	.align	3
.LC12:
	.string	"strcmp(output, \"Hi am Hussein\") == 0"
	.align	3
.LC13:
	.string	"go for it"
	.align	3
.LC14:
	.string	"strcmp(output, \"go for it\") == 0"
	.align	3
.LC15:
	.string	"here"
	.align	3
.LC16:
	.string	"strcmp(output, \"\") == 0"
	.align	3
.LC17:
	.string	"here is"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #128	//,,
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 112]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 112	//,,
// problem144.c:66: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp102,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp102,
	ldr	x1, [x0]	// tmp152,
	str	x1, [sp, 104]	// tmp152, D.5132
	mov	x1, 0	// tmp152
// problem144.c:69:     func0("This is a test", output);
	mov	x0, sp	// tmp103,
	mov	x1, x0	//, tmp103
	adrp	x0, .LC0	// tmp104,
	add	x0, x0, :lo12:.LC0	//, tmp104,
	bl	func0		//
// problem144.c:70:     assert(strcmp(output, "is") == 0);
	mov	x2, sp	// tmp105,
	adrp	x0, .LC1	// tmp106,
	add	x1, x0, :lo12:.LC1	//, tmp106,
	mov	x0, x2	//, tmp105
	bl	strcmp		//
// problem144.c:70:     assert(strcmp(output, "is") == 0);
	cmp	w0, 0	// _1,
	beq	.L23		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp107,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp107,
	mov	w2, 70	//,
	adrp	x0, .LC2	// tmp108,
	add	x1, x0, :lo12:.LC2	//, tmp108,
	adrp	x0, .LC3	// tmp109,
	add	x0, x0, :lo12:.LC3	//, tmp109,
	bl	__assert_fail		//
.L23:
// problem144.c:72:     func0("lets go for swimming", output);
	mov	x0, sp	// tmp110,
	mov	x1, x0	//, tmp110
	adrp	x0, .LC4	// tmp111,
	add	x0, x0, :lo12:.LC4	//, tmp111,
	bl	func0		//
// problem144.c:73:     assert(strcmp(output, "go for") == 0);
	mov	x2, sp	// tmp112,
	adrp	x0, .LC5	// tmp113,
	add	x1, x0, :lo12:.LC5	//, tmp113,
	mov	x0, x2	//, tmp112
	bl	strcmp		//
// problem144.c:73:     assert(strcmp(output, "go for") == 0);
	cmp	w0, 0	// _2,
	beq	.L24		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp114,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp114,
	mov	w2, 73	//,
	adrp	x0, .LC2	// tmp115,
	add	x1, x0, :lo12:.LC2	//, tmp115,
	adrp	x0, .LC6	// tmp116,
	add	x0, x0, :lo12:.LC6	//, tmp116,
	bl	__assert_fail		//
.L24:
// problem144.c:75:     func0("there is no place available here", output);
	mov	x0, sp	// tmp117,
	mov	x1, x0	//, tmp117
	adrp	x0, .LC7	// tmp118,
	add	x0, x0, :lo12:.LC7	//, tmp118,
	bl	func0		//
// problem144.c:76:     assert(strcmp(output, "there is no place") == 0);
	mov	x2, sp	// tmp119,
	adrp	x0, .LC8	// tmp120,
	add	x1, x0, :lo12:.LC8	//, tmp120,
	mov	x0, x2	//, tmp119
	bl	strcmp		//
// problem144.c:76:     assert(strcmp(output, "there is no place") == 0);
	cmp	w0, 0	// _3,
	beq	.L25		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp121,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp121,
	mov	w2, 76	//,
	adrp	x0, .LC2	// tmp122,
	add	x1, x0, :lo12:.LC2	//, tmp122,
	adrp	x0, .LC9	// tmp123,
	add	x0, x0, :lo12:.LC9	//, tmp123,
	bl	__assert_fail		//
.L25:
// problem144.c:78:     func0("Hi I am Hussein", output);
	mov	x0, sp	// tmp124,
	mov	x1, x0	//, tmp124
	adrp	x0, .LC10	// tmp125,
	add	x0, x0, :lo12:.LC10	//, tmp125,
	bl	func0		//
// problem144.c:79:     assert(strcmp(output, "Hi am Hussein") == 0);
	mov	x2, sp	// tmp126,
	adrp	x0, .LC11	// tmp127,
	add	x1, x0, :lo12:.LC11	//, tmp127,
	mov	x0, x2	//, tmp126
	bl	strcmp		//
// problem144.c:79:     assert(strcmp(output, "Hi am Hussein") == 0);
	cmp	w0, 0	// _4,
	beq	.L26		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp128,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp128,
	mov	w2, 79	//,
	adrp	x0, .LC2	// tmp129,
	add	x1, x0, :lo12:.LC2	//, tmp129,
	adrp	x0, .LC12	// tmp130,
	add	x0, x0, :lo12:.LC12	//, tmp130,
	bl	__assert_fail		//
.L26:
// problem144.c:81:     func0("go for it", output);
	mov	x0, sp	// tmp131,
	mov	x1, x0	//, tmp131
	adrp	x0, .LC13	// tmp132,
	add	x0, x0, :lo12:.LC13	//, tmp132,
	bl	func0		//
// problem144.c:82:     assert(strcmp(output, "go for it") == 0);
	mov	x2, sp	// tmp133,
	adrp	x0, .LC13	// tmp134,
	add	x1, x0, :lo12:.LC13	//, tmp134,
	mov	x0, x2	//, tmp133
	bl	strcmp		//
// problem144.c:82:     assert(strcmp(output, "go for it") == 0);
	cmp	w0, 0	// _5,
	beq	.L27		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp135,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp135,
	mov	w2, 82	//,
	adrp	x0, .LC2	// tmp136,
	add	x1, x0, :lo12:.LC2	//, tmp136,
	adrp	x0, .LC14	// tmp137,
	add	x0, x0, :lo12:.LC14	//, tmp137,
	bl	__assert_fail		//
.L27:
// problem144.c:84:     func0("here", output);
	mov	x0, sp	// tmp138,
	mov	x1, x0	//, tmp138
	adrp	x0, .LC15	// tmp139,
	add	x0, x0, :lo12:.LC15	//, tmp139,
	bl	func0		//
// problem144.c:85:     assert(strcmp(output, "") == 0);
	ldrb	w0, [sp]	// _20, MEM[(const unsigned char * {ref-all})&output]
	cmp	w0, 0	// _6,
	beq	.L28		//,
// problem144.c:85:     assert(strcmp(output, "") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp140,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp140,
	mov	w2, 85	//,
	adrp	x0, .LC2	// tmp141,
	add	x1, x0, :lo12:.LC2	//, tmp141,
	adrp	x0, .LC16	// tmp142,
	add	x0, x0, :lo12:.LC16	//, tmp142,
	bl	__assert_fail		//
.L28:
// problem144.c:87:     func0("here is", output);
	mov	x0, sp	// tmp143,
	mov	x1, x0	//, tmp143
	adrp	x0, .LC17	// tmp144,
	add	x0, x0, :lo12:.LC17	//, tmp144,
	bl	func0		//
// problem144.c:88:     assert(strcmp(output, "is") == 0);
	mov	x2, sp	// tmp145,
	adrp	x0, .LC1	// tmp146,
	add	x1, x0, :lo12:.LC1	//, tmp146,
	mov	x0, x2	//, tmp145
	bl	strcmp		//
// problem144.c:88:     assert(strcmp(output, "is") == 0);
	cmp	w0, 0	// _7,
	beq	.L29		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp147,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp147,
	mov	w2, 88	//,
	adrp	x0, .LC2	// tmp148,
	add	x1, x0, :lo12:.LC2	//, tmp148,
	adrp	x0, .LC3	// tmp149,
	add	x0, x0, :lo12:.LC3	//, tmp149,
	bl	__assert_fail		//
.L29:
// problem144.c:90:     return 0;
	mov	w0, 0	// _24,
// problem144.c:91: }
	mov	w1, w0	// <retval>, _24
	adrp	x0, :got:__stack_chk_guard	// tmp151,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp151,
	ldr	x3, [sp, 104]	// tmp153, D.5132
	ldr	x2, [x0]	// tmp154,
	subs	x3, x3, x2	// tmp153, tmp154
	mov	x2, 0	// tmp154
	beq	.L31		//,
	bl	__stack_chk_fail		//
.L31:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 112]	//,,
	add	sp, sp, 128	//,,
	.cfi_restore 29
	.cfi_restore 30
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
