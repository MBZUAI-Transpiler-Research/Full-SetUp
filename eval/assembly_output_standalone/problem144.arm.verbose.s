	.arch armv8-a
	.file	"code.c"
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
// eval/problem144//code.c:6:     int index = 0, word_len = 0;
	str	wzr, [sp, 60]	//, index
// eval/problem144//code.c:6:     int index = 0, word_len = 0;
	str	wzr, [sp, 44]	//, word_len
// eval/problem144//code.c:7:     int out_index = 0;
	str	wzr, [sp, 48]	//, out_index
// eval/problem144//code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	str	wzr, [sp, 52]	//, i
// eval/problem144//code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	b	.L2		//
.L13:
// eval/problem144//code.c:12:         if (sentence[i] != ' ') {
	ldrsw	x0, [sp, 52]	// _1, i
	ldr	x1, [sp, 24]	// tmp124, sentence
	add	x0, x1, x0	// _2, tmp124, _1
	ldrb	w0, [x0]	// _3, *_2
// eval/problem144//code.c:12:         if (sentence[i] != ' ') {
	cmp	w0, 32	// _3,
	beq	.L3		//,
// eval/problem144//code.c:13:             word_len++;
	ldr	w0, [sp, 44]	// tmp126, word_len
	add	w0, w0, 1	// tmp125, tmp126,
	str	w0, [sp, 44]	// tmp125, word_len
	b	.L4		//
.L3:
// eval/problem144//code.c:15:             if (word_len > 1) {
	ldr	w0, [sp, 44]	// tmp127, word_len
	cmp	w0, 1	// tmp127,
	ble	.L5		//,
// eval/problem144//code.c:16:                 is_prime = true;
	mov	w0, 1	// tmp128,
	strb	w0, [sp, 43]	// tmp128, is_prime
// eval/problem144//code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	mov	w0, 2	// tmp129,
	str	w0, [sp, 56]	// tmp129, j
// eval/problem144//code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	b	.L6		//
.L9:
// eval/problem144//code.c:18:                     if (word_len % j == 0) {
	ldr	w0, [sp, 44]	// tmp130, word_len
	ldr	w1, [sp, 56]	// tmp143, j
	sdiv	w2, w0, w1	// tmp142, tmp130, tmp143
	ldr	w1, [sp, 56]	// tmp145, j
	mul	w1, w2, w1	// tmp144, tmp142, tmp145
	sub	w0, w0, w1	// _4, tmp130, tmp144
// eval/problem144//code.c:18:                     if (word_len % j == 0) {
	cmp	w0, 0	// _4,
	bne	.L7		//,
// eval/problem144//code.c:19:                         is_prime = false;
	strb	wzr, [sp, 43]	//, is_prime
// eval/problem144//code.c:20:                         break;
	b	.L10		//
.L7:
// eval/problem144//code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	ldr	w0, [sp, 56]	// tmp147, j
	add	w0, w0, 1	// tmp146, tmp147,
	str	w0, [sp, 56]	// tmp146, j
.L6:
// eval/problem144//code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	ldr	w0, [sp, 56]	// tmp148, j
	mul	w0, w0, w0	// _5, tmp148, tmp148
// eval/problem144//code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	ldr	w1, [sp, 44]	// tmp149, word_len
	cmp	w1, w0	// tmp149, _5
	bge	.L9		//,
	b	.L10		//
.L5:
// eval/problem144//code.c:24:                 is_prime = false;
	strb	wzr, [sp, 43]	//, is_prime
.L10:
// eval/problem144//code.c:27:             if (is_prime) {
	ldrb	w0, [sp, 43]	// tmp150, is_prime
	cmp	w0, 0	// tmp150,
	beq	.L11		//,
// eval/problem144//code.c:28:                 if (out_index > 0) {
	ldr	w0, [sp, 48]	// tmp151, out_index
	cmp	w0, 0	// tmp151,
	ble	.L12		//,
// eval/problem144//code.c:29:                     out[out_index++] = ' ';
	ldr	w0, [sp, 48]	// out_index.0_6, out_index
	add	w1, w0, 1	// tmp152, out_index.0_6,
	str	w1, [sp, 48]	// tmp152, out_index
	sxtw	x0, w0	// _7, out_index.0_6
// eval/problem144//code.c:29:                     out[out_index++] = ' ';
	ldr	x1, [sp, 16]	// tmp153, out
	add	x0, x1, x0	// _8, tmp153, _7
// eval/problem144//code.c:29:                     out[out_index++] = ' ';
	mov	w1, 32	// tmp154,
	strb	w1, [x0]	// tmp154, *_8
.L12:
// eval/problem144//code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	ldrsw	x0, [sp, 48]	// _9, out_index
// eval/problem144//code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	ldr	x1, [sp, 16]	// tmp155, out
	add	x3, x1, x0	// _10, tmp155, _9
// eval/problem144//code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	ldrsw	x1, [sp, 52]	// _11, i
	ldrsw	x0, [sp, 44]	// _12, word_len
	sub	x0, x1, x0	// _13, _11, _12
	ldr	x1, [sp, 24]	// tmp156, sentence
	add	x0, x1, x0	// _14, tmp156, _13
// eval/problem144//code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	ldrsw	x1, [sp, 44]	// _15, word_len
	mov	x2, x1	//, _15
	mov	x1, x0	//, _14
	mov	x0, x3	//, _10
	bl	memcpy		//
// eval/problem144//code.c:32:                 out_index += word_len;
	ldr	w1, [sp, 48]	// tmp158, out_index
	ldr	w0, [sp, 44]	// tmp159, word_len
	add	w0, w1, w0	// tmp157, tmp158, tmp159
	str	w0, [sp, 48]	// tmp157, out_index
.L11:
// eval/problem144//code.c:34:             word_len = 0;
	str	wzr, [sp, 44]	//, word_len
.L4:
// eval/problem144//code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	ldr	w0, [sp, 52]	// tmp161, i
	add	w0, w0, 1	// tmp160, tmp161,
	str	w0, [sp, 52]	// tmp160, i
.L2:
// eval/problem144//code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	ldrsw	x0, [sp, 52]	// _16, i
	ldr	x1, [sp, 24]	// tmp162, sentence
	add	x0, x1, x0	// _17, tmp162, _16
	ldrb	w0, [x0]	// _18, *_17
// eval/problem144//code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	cmp	w0, 0	// _18,
	bne	.L13		//,
// eval/problem144//code.c:38:     if (word_len > 1) {
	ldr	w0, [sp, 44]	// tmp163, word_len
	cmp	w0, 1	// tmp163,
	ble	.L14		//,
// eval/problem144//code.c:39:         is_prime = true;
	mov	w0, 1	// tmp164,
	strb	w0, [sp, 43]	// tmp164, is_prime
// eval/problem144//code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	mov	w0, 2	// tmp165,
	str	w0, [sp, 56]	// tmp165, j
// eval/problem144//code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	b	.L15		//
.L18:
// eval/problem144//code.c:41:             if (word_len % j == 0) {
	ldr	w0, [sp, 44]	// tmp166, word_len
	ldr	w1, [sp, 56]	// tmp179, j
	sdiv	w2, w0, w1	// tmp178, tmp166, tmp179
	ldr	w1, [sp, 56]	// tmp181, j
	mul	w1, w2, w1	// tmp180, tmp178, tmp181
	sub	w0, w0, w1	// _19, tmp166, tmp180
// eval/problem144//code.c:41:             if (word_len % j == 0) {
	cmp	w0, 0	// _19,
	bne	.L16		//,
// eval/problem144//code.c:42:                 is_prime = false;
	strb	wzr, [sp, 43]	//, is_prime
// eval/problem144//code.c:43:                 break;
	b	.L19		//
.L16:
// eval/problem144//code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	ldr	w0, [sp, 56]	// tmp183, j
	add	w0, w0, 1	// tmp182, tmp183,
	str	w0, [sp, 56]	// tmp182, j
.L15:
// eval/problem144//code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	ldr	w0, [sp, 56]	// tmp184, j
	mul	w0, w0, w0	// _20, tmp184, tmp184
// eval/problem144//code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	ldr	w1, [sp, 44]	// tmp185, word_len
	cmp	w1, w0	// tmp185, _20
	bge	.L18		//,
	b	.L19		//
.L14:
// eval/problem144//code.c:47:         is_prime = false;
	strb	wzr, [sp, 43]	//, is_prime
.L19:
// eval/problem144//code.c:50:     if (is_prime) {
	ldrb	w0, [sp, 43]	// tmp186, is_prime
	cmp	w0, 0	// tmp186,
	beq	.L20		//,
// eval/problem144//code.c:51:         if (out_index > 0) {
	ldr	w0, [sp, 48]	// tmp187, out_index
	cmp	w0, 0	// tmp187,
	ble	.L21		//,
// eval/problem144//code.c:52:             out[out_index++] = ' ';
	ldr	w0, [sp, 48]	// out_index.1_21, out_index
	add	w1, w0, 1	// tmp188, out_index.1_21,
	str	w1, [sp, 48]	// tmp188, out_index
	sxtw	x0, w0	// _22, out_index.1_21
// eval/problem144//code.c:52:             out[out_index++] = ' ';
	ldr	x1, [sp, 16]	// tmp189, out
	add	x0, x1, x0	// _23, tmp189, _22
// eval/problem144//code.c:52:             out[out_index++] = ' ';
	mov	w1, 32	// tmp190,
	strb	w1, [x0]	// tmp190, *_23
.L21:
// eval/problem144//code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	ldrsw	x0, [sp, 48]	// _24, out_index
// eval/problem144//code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	ldr	x1, [sp, 16]	// tmp191, out
	add	x3, x1, x0	// _25, tmp191, _24
// eval/problem144//code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	ldrsw	x1, [sp, 52]	// _26, i
	ldrsw	x0, [sp, 44]	// _27, word_len
	sub	x0, x1, x0	// _28, _26, _27
	ldr	x1, [sp, 24]	// tmp192, sentence
	add	x0, x1, x0	// _29, tmp192, _28
// eval/problem144//code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	ldrsw	x1, [sp, 44]	// _30, word_len
	mov	x2, x1	//, _30
	mov	x1, x0	//, _29
	mov	x0, x3	//, _25
	bl	memcpy		//
// eval/problem144//code.c:55:         out_index += word_len;
	ldr	w1, [sp, 48]	// tmp194, out_index
	ldr	w0, [sp, 44]	// tmp195, word_len
	add	w0, w1, w0	// tmp193, tmp194, tmp195
	str	w0, [sp, 48]	// tmp193, out_index
.L20:
// eval/problem144//code.c:58:     out[out_index] = '\0';
	ldrsw	x0, [sp, 48]	// _31, out_index
	ldr	x1, [sp, 16]	// tmp196, out
	add	x0, x1, x0	// _32, tmp196, _31
// eval/problem144//code.c:58:     out[out_index] = '\0';
	strb	wzr, [x0]	//, *_32
// eval/problem144//code.c:59: }
	nop	
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
