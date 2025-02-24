	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
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
// code.c:6:     int len = strlen(str), i, j;
	ldr	x0, [sp, 24]	//, str
	bl	strlen		//
// code.c:6:     int len = strlen(str), i, j;
	str	w0, [sp, 52]	// tmp133, len
// code.c:7:     char *result = (char *)malloc(2 * len + 1);
	ldr	w0, [sp, 52]	// tmp134, len
	lsl	w0, w0, 1	// _2, tmp134,
// code.c:7:     char *result = (char *)malloc(2 * len + 1);
	add	w0, w0, 1	// _3, _2,
// code.c:7:     char *result = (char *)malloc(2 * len + 1);
	sxtw	x0, w0	// _4, _3
	bl	malloc		//
	str	x0, [sp, 56]	// tmp135, result
// code.c:8:     if (!result) {
	ldr	x0, [sp, 56]	// tmp136, result
	cmp	x0, 0	// tmp136,
	bne	.L2		//,
// code.c:9:         return NULL; 
	mov	x0, 0	// _45,
	b	.L3		//
.L2:
// code.c:12:     for (i = 0; i < len; i++) {
	str	wzr, [sp, 40]	//, i
// code.c:12:     for (i = 0; i < len; i++) {
	b	.L4		//
.L12:
// code.c:13:         int is_palindrome = 1;
	mov	w0, 1	// tmp137,
	str	w0, [sp, 48]	// tmp137, is_palindrome
// code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	str	wzr, [sp, 44]	//, j
// code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	b	.L5		//
.L8:
// code.c:15:             if (str[i + j] != str[len - 1 - j]) {
	ldr	w1, [sp, 40]	// tmp138, i
	ldr	w0, [sp, 44]	// tmp139, j
	add	w0, w1, w0	// _5, tmp138, tmp139
	sxtw	x0, w0	// _6, _5
// code.c:15:             if (str[i + j] != str[len - 1 - j]) {
	ldr	x1, [sp, 24]	// tmp140, str
	add	x0, x1, x0	// _7, tmp140, _6
	ldrb	w1, [x0]	// _8, *_7
// code.c:15:             if (str[i + j] != str[len - 1 - j]) {
	ldr	w0, [sp, 52]	// tmp141, len
	sub	w2, w0, #1	// _9, tmp141,
// code.c:15:             if (str[i + j] != str[len - 1 - j]) {
	ldr	w0, [sp, 44]	// tmp142, j
	sub	w0, w2, w0	// _10, _9, tmp142
	sxtw	x0, w0	// _11, _10
// code.c:15:             if (str[i + j] != str[len - 1 - j]) {
	ldr	x2, [sp, 24]	// tmp143, str
	add	x0, x2, x0	// _12, tmp143, _11
	ldrb	w0, [x0]	// _13, *_12
// code.c:15:             if (str[i + j] != str[len - 1 - j]) {
	cmp	w1, w0	// _8, _13
	beq	.L6		//,
// code.c:16:                 is_palindrome = 0;
	str	wzr, [sp, 48]	//, is_palindrome
// code.c:17:                 break;
	b	.L7		//
.L6:
// code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	ldr	w0, [sp, 44]	// tmp145, j
	add	w0, w0, 1	// tmp144, tmp145,
	str	w0, [sp, 44]	// tmp144, j
.L5:
// code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	ldr	w1, [sp, 52]	// tmp146, len
	ldr	w0, [sp, 40]	// tmp147, i
	sub	w0, w1, w0	// _14, tmp146, tmp147
// code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	lsr	w1, w0, 31	// tmp148, _14,
	add	w0, w1, w0	// tmp149, tmp148, _14
	asr	w0, w0, 1	// tmp150, tmp149,
	mov	w1, w0	// _15, tmp150
// code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	ldr	w0, [sp, 44]	// tmp151, j
	cmp	w0, w1	// tmp151, _15
	blt	.L8		//,
.L7:
// code.c:20:         if (is_palindrome) {
	ldr	w0, [sp, 48]	// tmp152, is_palindrome
	cmp	w0, 0	// tmp152,
	beq	.L9		//,
// code.c:21:             strncpy(result, str, len);
	ldrsw	x0, [sp, 52]	// _16, len
	mov	x2, x0	//, _16
	ldr	x1, [sp, 24]	//, str
	ldr	x0, [sp, 56]	//, result
	bl	strncpy		//
// code.c:22:             for (j = 0; j < i; j++) {
	str	wzr, [sp, 44]	//, j
// code.c:22:             for (j = 0; j < i; j++) {
	b	.L10		//
.L11:
// code.c:23:                 result[len + j] = str[i - j - 1];
	ldr	w1, [sp, 40]	// tmp153, i
	ldr	w0, [sp, 44]	// tmp154, j
	sub	w0, w1, w0	// _17, tmp153, tmp154
	sxtw	x0, w0	// _18, _17
// code.c:23:                 result[len + j] = str[i - j - 1];
	sub	x0, x0, #1	// _19, _18,
	ldr	x1, [sp, 24]	// tmp155, str
	add	x1, x1, x0	// _20, tmp155, _19
// code.c:23:                 result[len + j] = str[i - j - 1];
	ldr	w2, [sp, 52]	// tmp156, len
	ldr	w0, [sp, 44]	// tmp157, j
	add	w0, w2, w0	// _21, tmp156, tmp157
	sxtw	x0, w0	// _22, _21
// code.c:23:                 result[len + j] = str[i - j - 1];
	ldr	x2, [sp, 56]	// tmp158, result
	add	x0, x2, x0	// _23, tmp158, _22
// code.c:23:                 result[len + j] = str[i - j - 1];
	ldrb	w1, [x1]	// _24, *_20
// code.c:23:                 result[len + j] = str[i - j - 1];
	strb	w1, [x0]	// tmp159, *_23
// code.c:22:             for (j = 0; j < i; j++) {
	ldr	w0, [sp, 44]	// tmp161, j
	add	w0, w0, 1	// tmp160, tmp161,
	str	w0, [sp, 44]	// tmp160, j
.L10:
// code.c:22:             for (j = 0; j < i; j++) {
	ldr	w1, [sp, 44]	// tmp162, j
	ldr	w0, [sp, 40]	// tmp163, i
	cmp	w1, w0	// tmp162, tmp163
	blt	.L11		//,
// code.c:25:             result[len + i] = '\0';
	ldr	w1, [sp, 52]	// tmp164, len
	ldr	w0, [sp, 40]	// tmp165, i
	add	w0, w1, w0	// _25, tmp164, tmp165
	sxtw	x0, w0	// _26, _25
// code.c:25:             result[len + i] = '\0';
	ldr	x1, [sp, 56]	// tmp166, result
	add	x0, x1, x0	// _27, tmp166, _26
// code.c:25:             result[len + i] = '\0';
	strb	wzr, [x0]	//, *_27
// code.c:26:             return result;
	ldr	x0, [sp, 56]	// _45, result
	b	.L3		//
.L9:
// code.c:12:     for (i = 0; i < len; i++) {
	ldr	w0, [sp, 40]	// tmp168, i
	add	w0, w0, 1	// tmp167, tmp168,
	str	w0, [sp, 40]	// tmp167, i
.L4:
// code.c:12:     for (i = 0; i < len; i++) {
	ldr	w1, [sp, 40]	// tmp169, i
	ldr	w0, [sp, 52]	// tmp170, len
	cmp	w1, w0	// tmp169, tmp170
	blt	.L12		//,
// code.c:30:     strncpy(result, str, len);
	ldrsw	x0, [sp, 52]	// _28, len
	mov	x2, x0	//, _28
	ldr	x1, [sp, 24]	//, str
	ldr	x0, [sp, 56]	//, result
	bl	strncpy		//
// code.c:31:     for (j = 0; j < len; j++) {
	str	wzr, [sp, 44]	//, j
// code.c:31:     for (j = 0; j < len; j++) {
	b	.L13		//
.L14:
// code.c:32:         result[len + j] = str[len - j - 1];
	ldr	w1, [sp, 52]	// tmp171, len
	ldr	w0, [sp, 44]	// tmp172, j
	sub	w0, w1, w0	// _29, tmp171, tmp172
	sxtw	x0, w0	// _30, _29
// code.c:32:         result[len + j] = str[len - j - 1];
	sub	x0, x0, #1	// _31, _30,
	ldr	x1, [sp, 24]	// tmp173, str
	add	x1, x1, x0	// _32, tmp173, _31
// code.c:32:         result[len + j] = str[len - j - 1];
	ldr	w2, [sp, 52]	// tmp174, len
	ldr	w0, [sp, 44]	// tmp175, j
	add	w0, w2, w0	// _33, tmp174, tmp175
	sxtw	x0, w0	// _34, _33
// code.c:32:         result[len + j] = str[len - j - 1];
	ldr	x2, [sp, 56]	// tmp176, result
	add	x0, x2, x0	// _35, tmp176, _34
// code.c:32:         result[len + j] = str[len - j - 1];
	ldrb	w1, [x1]	// _36, *_32
// code.c:32:         result[len + j] = str[len - j - 1];
	strb	w1, [x0]	// tmp177, *_35
// code.c:31:     for (j = 0; j < len; j++) {
	ldr	w0, [sp, 44]	// tmp179, j
	add	w0, w0, 1	// tmp178, tmp179,
	str	w0, [sp, 44]	// tmp178, j
.L13:
// code.c:31:     for (j = 0; j < len; j++) {
	ldr	w1, [sp, 44]	// tmp180, j
	ldr	w0, [sp, 52]	// tmp181, len
	cmp	w1, w0	// tmp180, tmp181
	blt	.L14		//,
// code.c:34:     result[2 * len] = '\0';
	ldr	w0, [sp, 52]	// tmp182, len
	lsl	w0, w0, 1	// _37, tmp182,
	sxtw	x0, w0	// _38, _37
// code.c:34:     result[2 * len] = '\0';
	ldr	x1, [sp, 56]	// tmp183, result
	add	x0, x1, x0	// _39, tmp183, _38
// code.c:34:     result[2 * len] = '\0';
	strb	wzr, [x0]	//, *_39
// code.c:35:     return result;
	ldr	x0, [sp, 56]	// _45, result
.L3:
// code.c:36: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
