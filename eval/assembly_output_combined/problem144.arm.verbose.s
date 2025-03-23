	.arch armv8-a
	.file	"problem144.c"
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
	cmp	w0, 0	// tmp150,
	beq	.L11		//,
// problem144.c:28:                 if (out_index > 0) {
	ldr	w0, [sp, 48]	// tmp151, out_index
	cmp	w0, 0	// tmp151,
	ble	.L12		//,
// problem144.c:29:                     out[out_index++] = ' ';
	ldr	w0, [sp, 48]	// out_index.0_6, out_index
	add	w1, w0, 1	// tmp152, out_index.0_6,
	str	w1, [sp, 48]	// tmp152, out_index
	sxtw	x0, w0	// _7, out_index.0_6
// problem144.c:29:                     out[out_index++] = ' ';
	ldr	x1, [sp, 16]	// tmp153, out
	add	x0, x1, x0	// _8, tmp153, _7
// problem144.c:29:                     out[out_index++] = ' ';
	mov	w1, 32	// tmp154,
	strb	w1, [x0]	// tmp154, *_8
.L12:
// problem144.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	ldrsw	x0, [sp, 48]	// _9, out_index
// problem144.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	ldr	x1, [sp, 16]	// tmp155, out
	add	x3, x1, x0	// _10, tmp155, _9
// problem144.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	ldrsw	x1, [sp, 52]	// _11, i
	ldrsw	x0, [sp, 44]	// _12, word_len
	sub	x0, x1, x0	// _13, _11, _12
	ldr	x1, [sp, 24]	// tmp156, sentence
	add	x0, x1, x0	// _14, tmp156, _13
// problem144.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	ldrsw	x1, [sp, 44]	// _15, word_len
	mov	x2, x1	//, _15
	mov	x1, x0	//, _14
	mov	x0, x3	//, _10
	bl	memcpy		//
// problem144.c:32:                 out_index += word_len;
	ldr	w1, [sp, 48]	// tmp158, out_index
	ldr	w0, [sp, 44]	// tmp159, word_len
	add	w0, w1, w0	// tmp157, tmp158, tmp159
	str	w0, [sp, 48]	// tmp157, out_index
.L11:
// problem144.c:34:             word_len = 0;
	str	wzr, [sp, 44]	//, word_len
.L4:
// problem144.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	ldr	w0, [sp, 52]	// tmp161, i
	add	w0, w0, 1	// tmp160, tmp161,
	str	w0, [sp, 52]	// tmp160, i
.L2:
// problem144.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	ldrsw	x0, [sp, 52]	// _16, i
	ldr	x1, [sp, 24]	// tmp162, sentence
	add	x0, x1, x0	// _17, tmp162, _16
	ldrb	w0, [x0]	// _18, *_17
// problem144.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	cmp	w0, 0	// _18,
	bne	.L13		//,
// problem144.c:38:     if (word_len > 1) {
	ldr	w0, [sp, 44]	// tmp163, word_len
	cmp	w0, 1	// tmp163,
	ble	.L14		//,
// problem144.c:39:         is_prime = true;
	mov	w0, 1	// tmp164,
	strb	w0, [sp, 43]	// tmp164, is_prime
// problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	mov	w0, 2	// tmp165,
	str	w0, [sp, 56]	// tmp165, j
// problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	b	.L15		//
.L18:
// problem144.c:41:             if (word_len % j == 0) {
	ldr	w0, [sp, 44]	// tmp166, word_len
	ldr	w1, [sp, 56]	// tmp179, j
	sdiv	w2, w0, w1	// tmp178, tmp166, tmp179
	ldr	w1, [sp, 56]	// tmp181, j
	mul	w1, w2, w1	// tmp180, tmp178, tmp181
	sub	w0, w0, w1	// _19, tmp166, tmp180
// problem144.c:41:             if (word_len % j == 0) {
	cmp	w0, 0	// _19,
	bne	.L16		//,
// problem144.c:42:                 is_prime = false;
	strb	wzr, [sp, 43]	//, is_prime
// problem144.c:43:                 break;
	b	.L19		//
.L16:
// problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	ldr	w0, [sp, 56]	// tmp183, j
	add	w0, w0, 1	// tmp182, tmp183,
	str	w0, [sp, 56]	// tmp182, j
.L15:
// problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	ldr	w0, [sp, 56]	// tmp184, j
	mul	w0, w0, w0	// _20, tmp184, tmp184
// problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	ldr	w1, [sp, 44]	// tmp185, word_len
	cmp	w1, w0	// tmp185, _20
	bge	.L18		//,
	b	.L19		//
.L14:
// problem144.c:47:         is_prime = false;
	strb	wzr, [sp, 43]	//, is_prime
.L19:
// problem144.c:50:     if (is_prime) {
	ldrb	w0, [sp, 43]	// tmp186, is_prime
	cmp	w0, 0	// tmp186,
	beq	.L20		//,
// problem144.c:51:         if (out_index > 0) {
	ldr	w0, [sp, 48]	// tmp187, out_index
	cmp	w0, 0	// tmp187,
	ble	.L21		//,
// problem144.c:52:             out[out_index++] = ' ';
	ldr	w0, [sp, 48]	// out_index.1_21, out_index
	add	w1, w0, 1	// tmp188, out_index.1_21,
	str	w1, [sp, 48]	// tmp188, out_index
	sxtw	x0, w0	// _22, out_index.1_21
// problem144.c:52:             out[out_index++] = ' ';
	ldr	x1, [sp, 16]	// tmp189, out
	add	x0, x1, x0	// _23, tmp189, _22
// problem144.c:52:             out[out_index++] = ' ';
	mov	w1, 32	// tmp190,
	strb	w1, [x0]	// tmp190, *_23
.L21:
// problem144.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	ldrsw	x0, [sp, 48]	// _24, out_index
// problem144.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	ldr	x1, [sp, 16]	// tmp191, out
	add	x3, x1, x0	// _25, tmp191, _24
// problem144.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	ldrsw	x1, [sp, 52]	// _26, i
	ldrsw	x0, [sp, 44]	// _27, word_len
	sub	x0, x1, x0	// _28, _26, _27
	ldr	x1, [sp, 24]	// tmp192, sentence
	add	x0, x1, x0	// _29, tmp192, _28
// problem144.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	ldrsw	x1, [sp, 44]	// _30, word_len
	mov	x2, x1	//, _30
	mov	x1, x0	//, _29
	mov	x0, x3	//, _25
	bl	memcpy		//
// problem144.c:55:         out_index += word_len;
	ldr	w1, [sp, 48]	// tmp194, out_index
	ldr	w0, [sp, 44]	// tmp195, word_len
	add	w0, w1, w0	// tmp193, tmp194, tmp195
	str	w0, [sp, 48]	// tmp193, out_index
.L20:
// problem144.c:58:     out[out_index] = '\0';
	ldrsw	x0, [sp, 48]	// _31, out_index
	ldr	x1, [sp, 16]	// tmp196, out
	add	x0, x1, x0	// _32, tmp196, _31
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
	stp	x29, x30, [sp, -128]!	//,,,
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp	//,
// problem144.c:66: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp102, tmp103,
	ldr	x1, [x0]	// tmp154,
	str	x1, [sp, 120]	// tmp154, D.4523
	mov	x1, 0	// tmp154
// problem144.c:69:     func0("This is a test", output);
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	adrp	x0, .LC0	// tmp105,
	add	x0, x0, :lo12:.LC0	//, tmp105,
	bl	func0		//
// problem144.c:70:     assert(strcmp(output, "is") == 0);
	add	x2, sp, 16	// tmp106,,
	adrp	x0, .LC1	// tmp107,
	add	x1, x0, :lo12:.LC1	//, tmp107,
	mov	x0, x2	//, tmp106
	bl	strcmp		//
	cmp	w0, 0	// _1,
	beq	.L23		//,
// problem144.c:70:     assert(strcmp(output, "is") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp108,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp108,
	mov	w2, 70	//,
	adrp	x0, .LC2	// tmp109,
	add	x1, x0, :lo12:.LC2	//, tmp109,
	adrp	x0, .LC3	// tmp110,
	add	x0, x0, :lo12:.LC3	//, tmp110,
	bl	__assert_fail		//
.L23:
// problem144.c:72:     func0("lets go for swimming", output);
	add	x0, sp, 16	// tmp111,,
	mov	x1, x0	//, tmp111
	adrp	x0, .LC4	// tmp112,
	add	x0, x0, :lo12:.LC4	//, tmp112,
	bl	func0		//
// problem144.c:73:     assert(strcmp(output, "go for") == 0);
	add	x2, sp, 16	// tmp113,,
	adrp	x0, .LC5	// tmp114,
	add	x1, x0, :lo12:.LC5	//, tmp114,
	mov	x0, x2	//, tmp113
	bl	strcmp		//
	cmp	w0, 0	// _2,
	beq	.L24		//,
// problem144.c:73:     assert(strcmp(output, "go for") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp115,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp115,
	mov	w2, 73	//,
	adrp	x0, .LC2	// tmp116,
	add	x1, x0, :lo12:.LC2	//, tmp116,
	adrp	x0, .LC6	// tmp117,
	add	x0, x0, :lo12:.LC6	//, tmp117,
	bl	__assert_fail		//
.L24:
// problem144.c:75:     func0("there is no place available here", output);
	add	x0, sp, 16	// tmp118,,
	mov	x1, x0	//, tmp118
	adrp	x0, .LC7	// tmp119,
	add	x0, x0, :lo12:.LC7	//, tmp119,
	bl	func0		//
// problem144.c:76:     assert(strcmp(output, "there is no place") == 0);
	add	x2, sp, 16	// tmp120,,
	adrp	x0, .LC8	// tmp121,
	add	x1, x0, :lo12:.LC8	//, tmp121,
	mov	x0, x2	//, tmp120
	bl	strcmp		//
	cmp	w0, 0	// _3,
	beq	.L25		//,
// problem144.c:76:     assert(strcmp(output, "there is no place") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp122,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp122,
	mov	w2, 76	//,
	adrp	x0, .LC2	// tmp123,
	add	x1, x0, :lo12:.LC2	//, tmp123,
	adrp	x0, .LC9	// tmp124,
	add	x0, x0, :lo12:.LC9	//, tmp124,
	bl	__assert_fail		//
.L25:
// problem144.c:78:     func0("Hi I am Hussein", output);
	add	x0, sp, 16	// tmp125,,
	mov	x1, x0	//, tmp125
	adrp	x0, .LC10	// tmp126,
	add	x0, x0, :lo12:.LC10	//, tmp126,
	bl	func0		//
// problem144.c:79:     assert(strcmp(output, "Hi am Hussein") == 0);
	add	x2, sp, 16	// tmp127,,
	adrp	x0, .LC11	// tmp128,
	add	x1, x0, :lo12:.LC11	//, tmp128,
	mov	x0, x2	//, tmp127
	bl	strcmp		//
	cmp	w0, 0	// _4,
	beq	.L26		//,
// problem144.c:79:     assert(strcmp(output, "Hi am Hussein") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp129,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp129,
	mov	w2, 79	//,
	adrp	x0, .LC2	// tmp130,
	add	x1, x0, :lo12:.LC2	//, tmp130,
	adrp	x0, .LC12	// tmp131,
	add	x0, x0, :lo12:.LC12	//, tmp131,
	bl	__assert_fail		//
.L26:
// problem144.c:81:     func0("go for it", output);
	add	x0, sp, 16	// tmp132,,
	mov	x1, x0	//, tmp132
	adrp	x0, .LC13	// tmp133,
	add	x0, x0, :lo12:.LC13	//, tmp133,
	bl	func0		//
// problem144.c:82:     assert(strcmp(output, "go for it") == 0);
	add	x2, sp, 16	// tmp134,,
	adrp	x0, .LC13	// tmp135,
	add	x1, x0, :lo12:.LC13	//, tmp135,
	mov	x0, x2	//, tmp134
	bl	strcmp		//
	cmp	w0, 0	// _5,
	beq	.L27		//,
// problem144.c:82:     assert(strcmp(output, "go for it") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp136,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp136,
	mov	w2, 82	//,
	adrp	x0, .LC2	// tmp137,
	add	x1, x0, :lo12:.LC2	//, tmp137,
	adrp	x0, .LC14	// tmp138,
	add	x0, x0, :lo12:.LC14	//, tmp138,
	bl	__assert_fail		//
.L27:
// problem144.c:84:     func0("here", output);
	add	x0, sp, 16	// tmp139,,
	mov	x1, x0	//, tmp139
	adrp	x0, .LC15	// tmp140,
	add	x0, x0, :lo12:.LC15	//, tmp140,
	bl	func0		//
// problem144.c:85:     assert(strcmp(output, "") == 0);
	ldrb	w0, [sp, 16]	// _20, MEM[(const unsigned char * {ref-all})&output]
	cmp	w0, 0	// _6,
	beq	.L28		//,
// problem144.c:85:     assert(strcmp(output, "") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp141,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp141,
	mov	w2, 85	//,
	adrp	x0, .LC2	// tmp142,
	add	x1, x0, :lo12:.LC2	//, tmp142,
	adrp	x0, .LC16	// tmp143,
	add	x0, x0, :lo12:.LC16	//, tmp143,
	bl	__assert_fail		//
.L28:
// problem144.c:87:     func0("here is", output);
	add	x0, sp, 16	// tmp144,,
	mov	x1, x0	//, tmp144
	adrp	x0, .LC17	// tmp145,
	add	x0, x0, :lo12:.LC17	//, tmp145,
	bl	func0		//
// problem144.c:88:     assert(strcmp(output, "is") == 0);
	add	x2, sp, 16	// tmp146,,
	adrp	x0, .LC1	// tmp147,
	add	x1, x0, :lo12:.LC1	//, tmp147,
	mov	x0, x2	//, tmp146
	bl	strcmp		//
	cmp	w0, 0	// _7,
	beq	.L29		//,
// problem144.c:88:     assert(strcmp(output, "is") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp148,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp148,
	mov	w2, 88	//,
	adrp	x0, .LC2	// tmp149,
	add	x1, x0, :lo12:.LC2	//, tmp149,
	adrp	x0, .LC3	// tmp150,
	add	x0, x0, :lo12:.LC3	//, tmp150,
	bl	__assert_fail		//
.L29:
// problem144.c:90:     return 0;
	mov	w0, 0	// _24,
// problem144.c:91: }
	mov	w1, w0	// <retval>, _24
	adrp	x0, :got:__stack_chk_guard	// tmp153,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp152, tmp153,
	ldr	x3, [sp, 120]	// tmp155, D.4523
	ldr	x2, [x0]	// tmp156,
	subs	x3, x3, x2	// tmp155, tmp156
	mov	x2, 0	// tmp156
	beq	.L31		//,
	bl	__stack_chk_fail		//
.L31:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 128	//,,,
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
