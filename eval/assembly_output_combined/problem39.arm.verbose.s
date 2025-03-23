	.arch armv8-a
	.file	"problem39.c"
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
	sub	sp, sp, #80	//,,
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64	//,,
	str	x0, [sp, 8]	// s, s
	str	w1, [sp, 4]	// encode, encode
// problem39.c:4: void func0(char *s, int encode) {
	adrp	x0, :got:__stack_chk_guard	// tmp110,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp110,
	ldr	x1, [x0]	// tmp153,
	str	x1, [sp, 56]	// tmp153, D.5739
	mov	x1, 0	// tmp153
// problem39.c:5:     int l = strlen(s);
	ldr	x0, [sp, 8]	//, s
	bl	strlen		//
// problem39.c:5:     int l = strlen(s);
	str	w0, [sp, 36]	// tmp111, l
// problem39.c:6:     int num = (l + 2) / 3;
	ldr	w0, [sp, 36]	// tmp112, l
	add	w0, w0, 2	// _2, tmp112,
// problem39.c:6:     int num = (l + 2) / 3;
	mov	w1, 21846	// tmp114,
	movk	w1, 0x5555, lsl 16	// tmp114,,
	smull	x1, w0, w1	// tmp113, _2, tmp114
	lsr	x1, x1, 32	// tmp115, tmp113,
	asr	w0, w0, 31	// tmp116, _2,
	sub	w0, w1, w0	// tmp117, tmp115, tmp116
	str	w0, [sp, 40]	// tmp117, num
// problem39.c:9:     for (int i = 0; i < num; ++i) {
	str	wzr, [sp, 32]	//, i
// problem39.c:9:     for (int i = 0; i < num; ++i) {
	b	.L2		//
.L7:
// problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	ldr	w0, [sp, 32]	// tmp118, i
	add	w1, w0, 1	// _3, tmp118,
	mov	w0, w1	// tmp119, _3
	lsl	w0, w0, 1	// tmp120, tmp119,
	add	w0, w0, w1	// _4, tmp119, _3
// problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	ldr	w1, [sp, 36]	// tmp121, l
	cmp	w1, w0	// tmp121, _4
	bge	.L3		//,
// problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	ldr	w0, [sp, 32]	// tmp122, i
	mov	w1, w0	// tmp123, tmp122
	lsl	w0, w0, 2	// tmp124, tmp122,
	sub	w1, w1, w0	// _5, tmp123, tmp124
// problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	ldr	w0, [sp, 36]	// tmp125, l
	add	w0, w1, w0	// iftmp.0_19, _5, tmp125
	b	.L4		//
.L3:
// problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	mov	w0, 3	// iftmp.0_19,
.L4:
// problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	str	w0, [sp, 44]	// iftmp.0_19, len
// problem39.c:11:         strncpy(x, s + i * 3, len);
	ldr	w1, [sp, 32]	// tmp126, i
	mov	w0, w1	// tmp127, tmp126
	lsl	w0, w0, 1	// tmp128, tmp127,
	add	w0, w0, w1	// _6, tmp127, tmp126
	sxtw	x0, w0	// _7, _6
// problem39.c:11:         strncpy(x, s + i * 3, len);
	ldr	x1, [sp, 8]	// tmp129, s
	add	x1, x1, x0	// _8, tmp129, _7
// problem39.c:11:         strncpy(x, s + i * 3, len);
	ldrsw	x2, [sp, 44]	// _9, len
	add	x0, sp, 48	// tmp130,,
	bl	strncpy		//
// problem39.c:12:         x[len] = '\0';
	ldrsw	x0, [sp, 44]	// tmp131, len
	add	x1, sp, 48	// tmp132,,
	strb	wzr, [x1, x0]	//, x[len_30]
// problem39.c:14:         if (len == 3) {
	ldr	w0, [sp, 44]	// tmp133, len
	cmp	w0, 3	// tmp133,
	bne	.L5		//,
// problem39.c:15:             if (encode) {
	ldr	w0, [sp, 4]	// tmp134, encode
	cmp	w0, 0	// tmp134,
	beq	.L6		//,
// problem39.c:16:                 char temp = x[2];
	ldrb	w0, [sp, 50]	// tmp135, x[2]
	strb	w0, [sp, 31]	// tmp135, temp
// problem39.c:17:                 x[2] = x[1];
	ldrb	w0, [sp, 49]	// _10, x[1]
// problem39.c:17:                 x[2] = x[1];
	strb	w0, [sp, 50]	// tmp136, x[2]
// problem39.c:18:                 x[1] = x[0];
	ldrb	w0, [sp, 48]	// _11, x[0]
// problem39.c:18:                 x[1] = x[0];
	strb	w0, [sp, 49]	// tmp137, x[1]
// problem39.c:19:                 x[0] = temp;
	ldrb	w0, [sp, 31]	// tmp138, temp
	strb	w0, [sp, 48]	// tmp138, x[0]
	b	.L5		//
.L6:
// problem39.c:21:                 char temp = x[0];
	ldrb	w0, [sp, 48]	// tmp139, x[0]
	strb	w0, [sp, 30]	// tmp139, temp
// problem39.c:22:                 x[0] = x[1];
	ldrb	w0, [sp, 49]	// _12, x[1]
// problem39.c:22:                 x[0] = x[1];
	strb	w0, [sp, 48]	// tmp140, x[0]
// problem39.c:23:                 x[1] = x[2];
	ldrb	w0, [sp, 50]	// _13, x[2]
// problem39.c:23:                 x[1] = x[2];
	strb	w0, [sp, 49]	// tmp141, x[1]
// problem39.c:24:                 x[2] = temp;
	ldrb	w0, [sp, 30]	// tmp142, temp
	strb	w0, [sp, 50]	// tmp142, x[2]
.L5:
// problem39.c:27:         strncpy(s + i * 3, x, len);
	ldr	w1, [sp, 32]	// tmp143, i
	mov	w0, w1	// tmp144, tmp143
	lsl	w0, w0, 1	// tmp145, tmp144,
	add	w0, w0, w1	// _14, tmp144, tmp143
	sxtw	x0, w0	// _15, _14
// problem39.c:27:         strncpy(s + i * 3, x, len);
	ldr	x1, [sp, 8]	// tmp146, s
	add	x0, x1, x0	// _16, tmp146, _15
	ldrsw	x2, [sp, 44]	// _17, len
	add	x1, sp, 48	// tmp147,,
	bl	strncpy		//
// problem39.c:9:     for (int i = 0; i < num; ++i) {
	ldr	w0, [sp, 32]	// tmp149, i
	add	w0, w0, 1	// tmp148, tmp149,
	str	w0, [sp, 32]	// tmp148, i
.L2:
// problem39.c:9:     for (int i = 0; i < num; ++i) {
	ldr	w1, [sp, 32]	// tmp150, i
	ldr	w0, [sp, 40]	// tmp151, num
	cmp	w1, w0	// tmp150, tmp151
	blt	.L7		//,
// problem39.c:29: }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp152,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp152,
	ldr	x2, [sp, 56]	// tmp154, D.5739
	ldr	x1, [x0]	// tmp155,
	subs	x2, x2, x1	// tmp154, tmp155
	mov	x1, 0	// tmp155
	beq	.L8		//,
	bl	__stack_chk_fail		//
.L8:
	ldp	x29, x30, [sp, 64]	//,,
	add	sp, sp, 80	//,,
	.cfi_restore 29
	.cfi_restore 30
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
	sub	sp, sp, #112	//,,
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 96]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 96	//,,
// problem39.c:39: int main(){
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp103,
	ldr	x1, [x0]	// tmp145,
	str	x1, [sp, 88]	// tmp145, D.5742
	mov	x1, 0	// tmp145
// problem39.c:40:     srand((unsigned int)time(NULL));
	mov	x0, 0	//,
	bl	time		//
// problem39.c:40:     srand((unsigned int)time(NULL));
	bl	srand		//
// problem39.c:43:     for (int i = 0; i < 100; i++) {
	str	wzr, [sp, 4]	//, i
// problem39.c:43:     for (int i = 0; i < 100; i++) {
	b	.L10		//
.L14:
// problem39.c:44:         int l = 10 + rand() % 11;
	bl	rand		//
	mov	w1, w0	// _3,
// problem39.c:44:         int l = 10 + rand() % 11;
	mov	w0, 41705	// tmp105,
	movk	w0, 0x2e8b, lsl 16	// tmp105,,
	smull	x0, w1, w0	// tmp104, _3, tmp105
	lsr	x0, x0, 32	// tmp106, tmp104,
	asr	w2, w0, 1	// tmp107, tmp106,
	asr	w0, w1, 31	// tmp108, _3,
	sub	w0, w2, w0	// _4, tmp107, tmp108
	mov	w2, 11	// tmp110,
	mul	w0, w0, w2	// tmp109, _4, tmp110
	sub	w0, w1, w0	// _4, _3, tmp109
// problem39.c:44:         int l = 10 + rand() % 11;
	add	w0, w0, 10	// tmp111, _4,
	str	w0, [sp, 12]	// tmp111, l
// problem39.c:45:         for (int j = 0; j < l; j++) {
	str	wzr, [sp, 8]	//, j
// problem39.c:45:         for (int j = 0; j < l; j++) {
	b	.L11		//
.L12:
// problem39.c:46:             str[j] = 'a' + rand() % 26;
	bl	rand		//
// problem39.c:46:             str[j] = 'a' + rand() % 26;
	mov	w1, 60495	// tmp113,
	movk	w1, 0x4ec4, lsl 16	// tmp113,,
	smull	x1, w0, w1	// tmp112, _5, tmp113
	lsr	x1, x1, 32	// tmp114, tmp112,
	asr	w2, w1, 3	// tmp115, tmp114,
	asr	w1, w0, 31	// tmp116, _5,
	sub	w1, w2, w1	// _6, tmp115, tmp116
	mov	w2, 26	// tmp118,
	mul	w1, w1, w2	// tmp117, _6, tmp118
	sub	w1, w0, w1	// _6, _5, tmp117
// problem39.c:46:             str[j] = 'a' + rand() % 26;
	and	w0, w1, 255	// _7, _6
	add	w0, w0, 97	// tmp119, _7,
	and	w2, w0, 255	// _8, tmp119
// problem39.c:46:             str[j] = 'a' + rand() % 26;
	ldrsw	x0, [sp, 8]	// tmp120, j
	add	x1, sp, 16	// tmp121,,
	strb	w2, [x1, x0]	// tmp122, str[j_11]
// problem39.c:45:         for (int j = 0; j < l; j++) {
	ldr	w0, [sp, 8]	// tmp124, j
	add	w0, w0, 1	// tmp123, tmp124,
	str	w0, [sp, 8]	// tmp123, j
.L11:
// problem39.c:45:         for (int j = 0; j < l; j++) {
	ldr	w1, [sp, 8]	// tmp125, j
	ldr	w0, [sp, 12]	// tmp126, l
	cmp	w1, w0	// tmp125, tmp126
	blt	.L12		//,
// problem39.c:48:         str[l] = '\0';
	ldrsw	x0, [sp, 12]	// tmp127, l
	add	x1, sp, 16	// tmp128,,
	strb	wzr, [x1, x0]	//, str[l_23]
// problem39.c:49:         strcpy(temp, str);
	add	x1, sp, 16	// tmp129,,
	add	x0, sp, 40	// tmp130,,
	bl	strcpy		//
// problem39.c:51:         func0(temp, 1); // Encode
	add	x0, sp, 40	// tmp131,,
	mov	w1, 1	//,
	bl	func0		//
// problem39.c:52:         strcpy(decoded_str, temp);
	add	x1, sp, 40	// tmp132,,
	add	x0, sp, 64	// tmp133,,
	bl	strcpy		//
// problem39.c:53:         func0(decoded_str, 0); // Decode
	add	x0, sp, 64	// tmp134,,
	mov	w1, 0	//,
	bl	func0		//
// problem39.c:55:         assert(strcmp(decoded_str, str) == 0);
	add	x1, sp, 16	// tmp135,,
	add	x0, sp, 64	// tmp136,,
	bl	strcmp		//
// problem39.c:55:         assert(strcmp(decoded_str, str) == 0);
	cmp	w0, 0	// _9,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp137,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp137,
	mov	w2, 55	//,
	adrp	x0, .LC0	// tmp138,
	add	x1, x0, :lo12:.LC0	//, tmp138,
	adrp	x0, .LC1	// tmp139,
	add	x0, x0, :lo12:.LC1	//, tmp139,
	bl	__assert_fail		//
.L13:
// problem39.c:43:     for (int i = 0; i < 100; i++) {
	ldr	w0, [sp, 4]	// tmp141, i
	add	w0, w0, 1	// tmp140, tmp141,
	str	w0, [sp, 4]	// tmp140, i
.L10:
// problem39.c:43:     for (int i = 0; i < 100; i++) {
	ldr	w0, [sp, 4]	// tmp142, i
	cmp	w0, 99	// tmp142,
	ble	.L14		//,
// problem39.c:58:     return 0;
	mov	w0, 0	// _18,
// problem39.c:59: }
	mov	w1, w0	// <retval>, _18
	adrp	x0, :got:__stack_chk_guard	// tmp144,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp144,
	ldr	x3, [sp, 88]	// tmp146, D.5742
	ldr	x2, [x0]	// tmp147,
	subs	x3, x3, x2	// tmp146, tmp147
	mov	x2, 0	// tmp147
	beq	.L16		//,
	bl	__stack_chk_fail		//
.L16:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 96]	//,,
	add	sp, sp, 112	//,,
	.cfi_restore 29
	.cfi_restore 30
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
