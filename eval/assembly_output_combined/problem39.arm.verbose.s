	.arch armv8-a
	.file	"problem39.c"
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
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
	str	x0, [sp, 24]	// s, s
	str	w1, [sp, 20]	// encode, encode
// problem39.c:4: void func0(char *s, int encode) {
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x1, [x0]	// tmp155,
	str	x1, [sp, 72]	// tmp155, D.5123
	mov	x1, 0	// tmp155
// problem39.c:5:     int l = strlen(s);
	ldr	x0, [sp, 24]	//, s
	bl	strlen		//
// problem39.c:5:     int l = strlen(s);
	str	w0, [sp, 52]	// tmp112, l
// problem39.c:6:     int num = (l + 2) / 3;
	ldr	w0, [sp, 52]	// tmp113, l
	add	w0, w0, 2	// _2, tmp113,
// problem39.c:6:     int num = (l + 2) / 3;
	mov	w1, 21846	// tmp115,
	movk	w1, 0x5555, lsl 16	// tmp115,,
	smull	x1, w0, w1	// tmp114, _2, tmp115
	lsr	x1, x1, 32	// tmp116, tmp114,
	asr	w0, w0, 31	// tmp117, _2,
	sub	w0, w1, w0	// tmp118, tmp116, tmp117
	str	w0, [sp, 56]	// tmp118, num
// problem39.c:9:     for (int i = 0; i < num; ++i) {
	str	wzr, [sp, 48]	//, i
// problem39.c:9:     for (int i = 0; i < num; ++i) {
	b	.L2		//
.L7:
// problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	ldr	w0, [sp, 48]	// tmp119, i
	add	w1, w0, 1	// _3, tmp119,
	mov	w0, w1	// tmp120, _3
	lsl	w0, w0, 1	// tmp121, tmp120,
	add	w0, w0, w1	// _4, tmp120, _3
// problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	ldr	w1, [sp, 52]	// tmp122, l
	cmp	w1, w0	// tmp122, _4
	bge	.L3		//,
// problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	ldr	w0, [sp, 48]	// tmp123, i
	mov	w1, w0	// tmp124, tmp123
	lsl	w0, w0, 2	// tmp125, tmp123,
	sub	w1, w1, w0	// _5, tmp124, tmp125
// problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	ldr	w0, [sp, 52]	// tmp126, l
	add	w0, w1, w0	// iftmp.0_19, _5, tmp126
	b	.L4		//
.L3:
// problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	mov	w0, 3	// iftmp.0_19,
.L4:
// problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	str	w0, [sp, 60]	// iftmp.0_19, len
// problem39.c:11:         strncpy(x, s + i * 3, len);
	ldr	w1, [sp, 48]	// tmp127, i
	mov	w0, w1	// tmp128, tmp127
	lsl	w0, w0, 1	// tmp129, tmp128,
	add	w0, w0, w1	// _6, tmp128, tmp127
	sxtw	x0, w0	// _7, _6
// problem39.c:11:         strncpy(x, s + i * 3, len);
	ldr	x1, [sp, 24]	// tmp130, s
	add	x1, x1, x0	// _8, tmp130, _7
// problem39.c:11:         strncpy(x, s + i * 3, len);
	ldrsw	x2, [sp, 60]	// _9, len
	add	x0, sp, 64	// tmp131,,
	bl	strncpy		//
// problem39.c:12:         x[len] = '\0';
	ldrsw	x0, [sp, 60]	// tmp132, len
	add	x1, sp, 64	// tmp133,,
	strb	wzr, [x1, x0]	//, x[len_30]
// problem39.c:14:         if (len == 3) {
	ldr	w0, [sp, 60]	// tmp134, len
	cmp	w0, 3	// tmp134,
	bne	.L5		//,
// problem39.c:15:             if (encode) {
	ldr	w0, [sp, 20]	// tmp135, encode
	cmp	w0, 0	// tmp135,
	beq	.L6		//,
// problem39.c:16:                 char temp = x[2];
	ldrb	w0, [sp, 66]	// tmp136, x[2]
	strb	w0, [sp, 47]	// tmp136, temp
// problem39.c:17:                 x[2] = x[1];
	ldrb	w0, [sp, 65]	// _10, x[1]
// problem39.c:17:                 x[2] = x[1];
	strb	w0, [sp, 66]	// tmp137, x[2]
// problem39.c:18:                 x[1] = x[0];
	ldrb	w0, [sp, 64]	// _11, x[0]
// problem39.c:18:                 x[1] = x[0];
	strb	w0, [sp, 65]	// tmp138, x[1]
// problem39.c:19:                 x[0] = temp;
	ldrb	w0, [sp, 47]	// tmp139, temp
	strb	w0, [sp, 64]	// tmp139, x[0]
	b	.L5		//
.L6:
// problem39.c:21:                 char temp = x[0];
	ldrb	w0, [sp, 64]	// tmp140, x[0]
	strb	w0, [sp, 46]	// tmp140, temp
// problem39.c:22:                 x[0] = x[1];
	ldrb	w0, [sp, 65]	// _12, x[1]
// problem39.c:22:                 x[0] = x[1];
	strb	w0, [sp, 64]	// tmp141, x[0]
// problem39.c:23:                 x[1] = x[2];
	ldrb	w0, [sp, 66]	// _13, x[2]
// problem39.c:23:                 x[1] = x[2];
	strb	w0, [sp, 65]	// tmp142, x[1]
// problem39.c:24:                 x[2] = temp;
	ldrb	w0, [sp, 46]	// tmp143, temp
	strb	w0, [sp, 66]	// tmp143, x[2]
.L5:
// problem39.c:27:         strncpy(s + i * 3, x, len);
	ldr	w1, [sp, 48]	// tmp144, i
	mov	w0, w1	// tmp145, tmp144
	lsl	w0, w0, 1	// tmp146, tmp145,
	add	w0, w0, w1	// _14, tmp145, tmp144
	sxtw	x0, w0	// _15, _14
// problem39.c:27:         strncpy(s + i * 3, x, len);
	ldr	x1, [sp, 24]	// tmp147, s
	add	x0, x1, x0	// _16, tmp147, _15
	ldrsw	x2, [sp, 60]	// _17, len
	add	x1, sp, 64	// tmp148,,
	bl	strncpy		//
// problem39.c:9:     for (int i = 0; i < num; ++i) {
	ldr	w0, [sp, 48]	// tmp150, i
	add	w0, w0, 1	// tmp149, tmp150,
	str	w0, [sp, 48]	// tmp149, i
.L2:
// problem39.c:9:     for (int i = 0; i < num; ++i) {
	ldr	w1, [sp, 48]	// tmp151, i
	ldr	w0, [sp, 56]	// tmp152, num
	cmp	w1, w0	// tmp151, tmp152
	blt	.L7		//,
// problem39.c:29: }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp154,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp153, tmp154,
	ldr	x2, [sp, 72]	// tmp156, D.5123
	ldr	x1, [x0]	// tmp157,
	subs	x2, x2, x1	// tmp156, tmp157
	mov	x1, 0	// tmp157
	beq	.L8		//,
	bl	__stack_chk_fail		//
.L8:
	ldp	x29, x30, [sp], 80	//,,,
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
	.string	"problem39.c"
	.align	3
.LC1:
	.string	"strcmp(decoded_str, str) == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!	//,,,
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp	//,
// problem39.c:39: int main(){
	adrp	x0, :got:__stack_chk_guard	// tmp104,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp103, tmp104,
	ldr	x1, [x0]	// tmp147,
	str	x1, [sp, 104]	// tmp147, D.5126
	mov	x1, 0	// tmp147
// problem39.c:40:     srand((unsigned int)time(NULL));
	mov	x0, 0	//,
	bl	time		//
// problem39.c:40:     srand((unsigned int)time(NULL));
	bl	srand		//
// problem39.c:43:     for (int i = 0; i < 100; i++) {
	str	wzr, [sp, 20]	//, i
// problem39.c:43:     for (int i = 0; i < 100; i++) {
	b	.L10		//
.L14:
// problem39.c:44:         int l = 10 + rand() % 11;
	bl	rand		//
	mov	w1, w0	// _3,
// problem39.c:44:         int l = 10 + rand() % 11;
	mov	w0, 41705	// tmp106,
	movk	w0, 0x2e8b, lsl 16	// tmp106,,
	smull	x0, w1, w0	// tmp105, _3, tmp106
	lsr	x0, x0, 32	// tmp107, tmp105,
	asr	w2, w0, 1	// tmp108, tmp107,
	asr	w0, w1, 31	// tmp109, _3,
	sub	w0, w2, w0	// _4, tmp108, tmp109
	mov	w2, 11	// tmp111,
	mul	w0, w0, w2	// tmp110, _4, tmp111
	sub	w0, w1, w0	// _4, _3, tmp110
// problem39.c:44:         int l = 10 + rand() % 11;
	add	w0, w0, 10	// tmp112, _4,
	str	w0, [sp, 28]	// tmp112, l
// problem39.c:45:         for (int j = 0; j < l; j++) {
	str	wzr, [sp, 24]	//, j
// problem39.c:45:         for (int j = 0; j < l; j++) {
	b	.L11		//
.L12:
// problem39.c:46:             str[j] = 'a' + rand() % 26;
	bl	rand		//
// problem39.c:46:             str[j] = 'a' + rand() % 26;
	mov	w1, 60495	// tmp114,
	movk	w1, 0x4ec4, lsl 16	// tmp114,,
	smull	x1, w0, w1	// tmp113, _5, tmp114
	lsr	x1, x1, 32	// tmp115, tmp113,
	asr	w2, w1, 3	// tmp116, tmp115,
	asr	w1, w0, 31	// tmp117, _5,
	sub	w1, w2, w1	// _6, tmp116, tmp117
	mov	w2, 26	// tmp119,
	mul	w1, w1, w2	// tmp118, _6, tmp119
	sub	w1, w0, w1	// _6, _5, tmp118
// problem39.c:46:             str[j] = 'a' + rand() % 26;
	and	w0, w1, 255	// _7, _6
	add	w0, w0, 97	// tmp120, _7,
	and	w2, w0, 255	// _8, tmp120
// problem39.c:46:             str[j] = 'a' + rand() % 26;
	ldrsw	x0, [sp, 24]	// tmp121, j
	add	x1, sp, 32	// tmp122,,
	strb	w2, [x1, x0]	// tmp123, str[j_11]
// problem39.c:45:         for (int j = 0; j < l; j++) {
	ldr	w0, [sp, 24]	// tmp125, j
	add	w0, w0, 1	// tmp124, tmp125,
	str	w0, [sp, 24]	// tmp124, j
.L11:
// problem39.c:45:         for (int j = 0; j < l; j++) {
	ldr	w1, [sp, 24]	// tmp126, j
	ldr	w0, [sp, 28]	// tmp127, l
	cmp	w1, w0	// tmp126, tmp127
	blt	.L12		//,
// problem39.c:48:         str[l] = '\0';
	ldrsw	x0, [sp, 28]	// tmp128, l
	add	x1, sp, 32	// tmp129,,
	strb	wzr, [x1, x0]	//, str[l_23]
// problem39.c:49:         strcpy(temp, str);
	add	x1, sp, 32	// tmp130,,
	add	x0, sp, 56	// tmp131,,
	bl	strcpy		//
// problem39.c:51:         func0(temp, 1); // Encode
	add	x0, sp, 56	// tmp132,,
	mov	w1, 1	//,
	bl	func0		//
// problem39.c:52:         strcpy(decoded_str, temp);
	add	x1, sp, 56	// tmp133,,
	add	x0, sp, 80	// tmp134,,
	bl	strcpy		//
// problem39.c:53:         func0(decoded_str, 0); // Decode
	add	x0, sp, 80	// tmp135,,
	mov	w1, 0	//,
	bl	func0		//
// problem39.c:55:         assert(strcmp(decoded_str, str) == 0);
	add	x1, sp, 32	// tmp136,,
	add	x0, sp, 80	// tmp137,,
	bl	strcmp		//
	cmp	w0, 0	// _9,
	beq	.L13		//,
// problem39.c:55:         assert(strcmp(decoded_str, str) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp138,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp138,
	mov	w2, 55	//,
	adrp	x0, .LC0	// tmp139,
	add	x1, x0, :lo12:.LC0	//, tmp139,
	adrp	x0, .LC1	// tmp140,
	add	x0, x0, :lo12:.LC1	//, tmp140,
	bl	__assert_fail		//
.L13:
// problem39.c:43:     for (int i = 0; i < 100; i++) {
	ldr	w0, [sp, 20]	// tmp142, i
	add	w0, w0, 1	// tmp141, tmp142,
	str	w0, [sp, 20]	// tmp141, i
.L10:
// problem39.c:43:     for (int i = 0; i < 100; i++) {
	ldr	w0, [sp, 20]	// tmp143, i
	cmp	w0, 99	// tmp143,
	ble	.L14		//,
// problem39.c:58:     return 0;
	mov	w0, 0	// _18,
// problem39.c:59: }
	mov	w1, w0	// <retval>, _18
	adrp	x0, :got:__stack_chk_guard	// tmp146,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp145, tmp146,
	ldr	x3, [sp, 104]	// tmp148, D.5126
	ldr	x2, [x0]	// tmp149,
	subs	x3, x3, x2	// tmp148, tmp149
	mov	x2, 0	// tmp149
	beq	.L16		//,
	bl	__stack_chk_fail		//
.L16:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 112	//,,,
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
