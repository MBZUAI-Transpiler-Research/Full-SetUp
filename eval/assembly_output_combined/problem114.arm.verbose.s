	.arch armv8-a
	.file	"problem114.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC7:
	.string	"the number of odd elements %d in the string %d of the %d input."
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -64
	str	x0, [sp, 40]	// lst, lst
	str	w1, [sp, 36]	// size, size
// problem114.c:6:     char **out = malloc(size * sizeof(char *));
	ldrsw	x0, [sp, 36]	// _1, size
	lsl	x0, x0, 3	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 72]	// tmp135, out
// problem114.c:7:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 60]	//, i
// problem114.c:7:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L6:
// problem114.c:8:         int sum = 0;
	str	wzr, [sp, 64]	//, sum
// problem114.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	str	wzr, [sp, 68]	//, j
// problem114.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	b	.L3		//
.L5:
// problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	ldrsw	x0, [sp, 60]	// _3, i
	lsl	x0, x0, 3	// _4, _3,
	ldr	x1, [sp, 40]	// tmp136, lst
	add	x0, x1, x0	// _5, tmp136, _4
	ldr	x1, [x0]	// _6, *_5
// problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	ldrsw	x0, [sp, 68]	// _7, j
	add	x0, x1, x0	// _8, _6, _7
	ldrb	w0, [x0]	// _9, *_8
// problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	cmp	w0, 47	// _9,
	bls	.L4		//,
// problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	ldrsw	x0, [sp, 60]	// _10, i
	lsl	x0, x0, 3	// _11, _10,
	ldr	x1, [sp, 40]	// tmp137, lst
	add	x0, x1, x0	// _12, tmp137, _11
	ldr	x1, [x0]	// _13, *_12
// problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	ldrsw	x0, [sp, 68]	// _14, j
	add	x0, x1, x0	// _15, _13, _14
	ldrb	w0, [x0]	// _16, *_15
// problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	cmp	w0, 57	// _16,
	bhi	.L4		//,
// problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	ldrsw	x0, [sp, 60]	// _17, i
	lsl	x0, x0, 3	// _18, _17,
	ldr	x1, [sp, 40]	// tmp138, lst
	add	x0, x1, x0	// _19, tmp138, _18
	ldr	x1, [x0]	// _20, *_19
// problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	ldrsw	x0, [sp, 68]	// _21, j
	add	x0, x1, x0	// _22, _20, _21
	ldrb	w0, [x0]	// _23, *_22
// problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	sub	w0, w0, #48	// _25, _24,
// problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	cmp	w0, 0	// _25,
	and	w0, w0, 1	// tmp139, _25,
	csneg	w0, w0, w0, ge	// _26, tmp139, tmp139,
// problem114.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	cmp	w0, 1	// _26,
	bne	.L4		//,
// problem114.c:11:                 sum += 1;
	ldr	w0, [sp, 64]	// tmp141, sum
	add	w0, w0, 1	// tmp140, tmp141,
	str	w0, [sp, 64]	// tmp140, sum
.L4:
// problem114.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	ldr	w0, [sp, 68]	// tmp143, j
	add	w0, w0, 1	// tmp142, tmp143,
	str	w0, [sp, 68]	// tmp142, j
.L3:
// problem114.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	ldrsw	x0, [sp, 60]	// _27, i
	lsl	x0, x0, 3	// _28, _27,
	ldr	x1, [sp, 40]	// tmp144, lst
	add	x0, x1, x0	// _29, tmp144, _28
	ldr	x1, [x0]	// _30, *_29
// problem114.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	ldrsw	x0, [sp, 68]	// _31, j
	add	x0, x1, x0	// _32, _30, _31
	ldrb	w0, [x0]	// _33, *_32
// problem114.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	cmp	w0, 0	// _33,
	bne	.L5		//,
// problem114.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	ldrsw	x0, [sp, 60]	// _34, i
	lsl	x0, x0, 3	// _35, _34,
	ldr	x1, [sp, 72]	// tmp145, out
	add	x19, x1, x0	// _36, tmp145, _35
// problem114.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	mov	x0, 100	//,
	bl	malloc		//
// problem114.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	str	x0, [x19]	// _37, *_36
// problem114.c:14:         sprintf(out[i], "the number of odd elements %d in the string %d of the %d input.", sum, sum, sum);
	ldrsw	x0, [sp, 60]	// _38, i
	lsl	x0, x0, 3	// _39, _38,
	ldr	x1, [sp, 72]	// tmp147, out
	add	x0, x1, x0	// _40, tmp147, _39
// problem114.c:14:         sprintf(out[i], "the number of odd elements %d in the string %d of the %d input.", sum, sum, sum);
	ldr	x5, [x0]	// _41, *_40
	ldr	w4, [sp, 64]	//, sum
	ldr	w3, [sp, 64]	//, sum
	ldr	w2, [sp, 64]	//, sum
	adrp	x0, .LC7	// tmp148,
	add	x1, x0, :lo12:.LC7	//, tmp148,
	mov	x0, x5	//, _41
	bl	sprintf		//
// problem114.c:7:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 60]	// tmp150, i
	add	w0, w0, 1	// tmp149, tmp150,
	str	w0, [sp, 60]	// tmp149, i
.L2:
// problem114.c:7:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 60]	// tmp151, i
	ldr	w0, [sp, 36]	// tmp152, size
	cmp	w1, w0	// tmp151, tmp152
	blt	.L6		//,
// problem114.c:16:     return out;
	ldr	x0, [sp, 72]	// _52, out
// problem114.c:17: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 40]	// a, a
	str	x1, [sp, 32]	// b, b
	str	w2, [sp, 28]	// size, size
// problem114.c:26:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 60]	//, i
// problem114.c:26:     for (int i = 0; i < size; i++) {
	b	.L9		//
.L12:
// problem114.c:27:         if (strcmp(a[i], b[i]) != 0) {
	ldrsw	x0, [sp, 60]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 40]	// tmp103, a
	add	x0, x1, x0	// _3, tmp103, _2
// problem114.c:27:         if (strcmp(a[i], b[i]) != 0) {
	ldr	x2, [x0]	// _4, *_3
// problem114.c:27:         if (strcmp(a[i], b[i]) != 0) {
	ldrsw	x0, [sp, 60]	// _5, i
	lsl	x0, x0, 3	// _6, _5,
	ldr	x1, [sp, 32]	// tmp104, b
	add	x0, x1, x0	// _7, tmp104, _6
// problem114.c:27:         if (strcmp(a[i], b[i]) != 0) {
	ldr	x0, [x0]	// _8, *_7
	mov	x1, x0	//, _8
	mov	x0, x2	//, _4
	bl	strcmp		//
// problem114.c:27:         if (strcmp(a[i], b[i]) != 0) {
	cmp	w0, 0	// _9,
	beq	.L10		//,
// problem114.c:28:             return 0;
	mov	w0, 0	// _11,
	b	.L11		//
.L10:
// problem114.c:26:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 60]	// tmp106, i
	add	w0, w0, 1	// tmp105, tmp106,
	str	w0, [sp, 60]	// tmp105, i
.L9:
// problem114.c:26:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 60]	// tmp107, i
	ldr	w0, [sp, 28]	// tmp108, size
	cmp	w1, w0	// tmp107, tmp108
	blt	.L12		//,
// problem114.c:31:     return 1;
	mov	w0, 1	// _11,
.L11:
// problem114.c:32: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC8:
	.string	"1234567"
	.align	3
.LC9:
	.string	"the number of odd elements 4 in the string 4 of the 4 input."
	.align	3
.LC10:
	.string	"problem114.c"
	.align	3
.LC11:
	.string	"issame(result1, expected1, 1)"
	.align	3
.LC12:
	.string	"3"
	.align	3
.LC13:
	.string	"11111111"
	.align	3
.LC14:
	.string	"the number of odd elements 1 in the string 1 of the 1 input."
	.align	3
.LC15:
	.string	"the number of odd elements 8 in the string 8 of the 8 input."
	.align	3
.LC16:
	.string	"issame(result2, expected2, 2)"
	.align	3
.LC19:
	.string	"issame(result3, expected3, 3)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #160	//,,
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, 144]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 144	//,,
// problem114.c:34: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp109,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp109,
	ldr	x1, [x0]	// tmp163,
	str	x1, [sp, 136]	// tmp163, D.5669
	mov	x1, 0	// tmp163
// problem114.c:35:     char *input1[] = {"1234567"};
	adrp	x0, .LC8	// tmp111,
	add	x0, x0, :lo12:.LC8	// tmp110, tmp111,
	str	x0, [sp, 40]	// tmp110, input1[0]
// problem114.c:36:     char *expected1[] = {"the number of odd elements 4 in the string 4 of the 4 input."};
	adrp	x0, .LC9	// tmp113,
	add	x0, x0, :lo12:.LC9	// tmp112, tmp113,
	str	x0, [sp, 48]	// tmp112, expected1[0]
// problem114.c:37:     char **result1 = func0(input1, 1);
	add	x0, sp, 40	// tmp114,,
	mov	w1, 1	//,
	bl	func0		//
	str	x0, [sp, 16]	//, result1
// problem114.c:38:     assert(issame(result1, expected1, 1));
	add	x0, sp, 48	// tmp115,,
	mov	w2, 1	//,
	mov	x1, x0	//, tmp115
	ldr	x0, [sp, 16]	//, result1
	bl	issame		//
// problem114.c:38:     assert(issame(result1, expected1, 1));
	cmp	w0, 0	// _1,
	bne	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 38	//,
	adrp	x0, .LC10	// tmp117,
	add	x1, x0, :lo12:.LC10	//, tmp117,
	adrp	x0, .LC11	// tmp118,
	add	x0, x0, :lo12:.LC11	//, tmp118,
	bl	__assert_fail		//
.L14:
// problem114.c:40:     char *input2[] = {"3", "11111111"};
	adrp	x0, .LC12	// tmp120,
	add	x0, x0, :lo12:.LC12	// tmp119, tmp120,
	str	x0, [sp, 56]	// tmp119, input2[0]
	adrp	x0, .LC13	// tmp122,
	add	x0, x0, :lo12:.LC13	// tmp121, tmp122,
	str	x0, [sp, 64]	// tmp121, input2[1]
// problem114.c:41:     char *expected2[] = {
	adrp	x0, .LC14	// tmp124,
	add	x0, x0, :lo12:.LC14	// tmp123, tmp124,
	str	x0, [sp, 72]	// tmp123, expected2[0]
	adrp	x0, .LC15	// tmp126,
	add	x0, x0, :lo12:.LC15	// tmp125, tmp126,
	str	x0, [sp, 80]	// tmp125, expected2[1]
// problem114.c:45:     char **result2 = func0(input2, 2);
	add	x0, sp, 56	// tmp127,,
	mov	w1, 2	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result2
// problem114.c:46:     assert(issame(result2, expected2, 2));
	add	x0, sp, 72	// tmp128,,
	mov	w2, 2	//,
	mov	x1, x0	//, tmp128
	ldr	x0, [sp, 24]	//, result2
	bl	issame		//
// problem114.c:46:     assert(issame(result2, expected2, 2));
	cmp	w0, 0	// _2,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp129,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp129,
	mov	w2, 46	//,
	adrp	x0, .LC10	// tmp130,
	add	x1, x0, :lo12:.LC10	//, tmp130,
	adrp	x0, .LC16	// tmp131,
	add	x0, x0, :lo12:.LC16	//, tmp131,
	bl	__assert_fail		//
.L15:
// problem114.c:48:     char *input3[] = {"271", "137", "314"};
	adrp	x0, .LC17	// tmp133,
	add	x0, x0, :lo12:.LC17	// tmp132, tmp133,
	add	x2, sp, 88	// tmp134,,
	mov	x3, x0	// tmp135, tmp132
	ldp	x0, x1, [x3]	// tmp136,
	stp	x0, x1, [x2]	// tmp136, input3
	ldr	x0, [x3, 16]	// tmp137,
	str	x0, [x2, 16]	// tmp137, input3
// problem114.c:49:     char *expected3[] = {
	adrp	x0, .LC18	// tmp139,
	add	x0, x0, :lo12:.LC18	// tmp138, tmp139,
	add	x2, sp, 112	// tmp140,,
	mov	x3, x0	// tmp141, tmp138
	ldp	x0, x1, [x3]	// tmp142,
	stp	x0, x1, [x2]	// tmp142, expected3
	ldr	x0, [x3, 16]	// tmp143,
	str	x0, [x2, 16]	// tmp143, expected3
// problem114.c:54:     char **result3 = func0(input3, 3);
	add	x0, sp, 88	// tmp144,,
	mov	w1, 3	//,
	bl	func0		//
	str	x0, [sp, 32]	//, result3
// problem114.c:55:     assert(issame(result3, expected3, 3));
	add	x0, sp, 112	// tmp145,,
	mov	w2, 3	//,
	mov	x1, x0	//, tmp145
	ldr	x0, [sp, 32]	//, result3
	bl	issame		//
// problem114.c:55:     assert(issame(result3, expected3, 3));
	cmp	w0, 0	// _3,
	bne	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp146,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp146,
	mov	w2, 55	//,
	adrp	x0, .LC10	// tmp147,
	add	x1, x0, :lo12:.LC10	//, tmp147,
	adrp	x0, .LC19	// tmp148,
	add	x0, x0, :lo12:.LC19	//, tmp148,
	bl	__assert_fail		//
.L16:
// problem114.c:58:     for (int i = 0; i < 1; i++) free(result1[i]);
	str	wzr, [sp, 4]	//, i
// problem114.c:58:     for (int i = 0; i < 1; i++) free(result1[i]);
	b	.L17		//
.L18:
// problem114.c:58:     for (int i = 0; i < 1; i++) free(result1[i]);
	ldrsw	x0, [sp, 4]	// _4, i
	lsl	x0, x0, 3	// _5, _4,
	ldr	x1, [sp, 16]	// tmp149, result1
	add	x0, x1, x0	// _6, tmp149, _5
// problem114.c:58:     for (int i = 0; i < 1; i++) free(result1[i]);
	ldr	x0, [x0]	// _7, *_6
	bl	free		//
// problem114.c:58:     for (int i = 0; i < 1; i++) free(result1[i]);
	ldr	w0, [sp, 4]	// tmp151, i
	add	w0, w0, 1	// tmp150, tmp151,
	str	w0, [sp, 4]	// tmp150, i
.L17:
// problem114.c:58:     for (int i = 0; i < 1; i++) free(result1[i]);
	ldr	w0, [sp, 4]	// tmp152, i
	cmp	w0, 0	// tmp152,
	ble	.L18		//,
// problem114.c:59:     free(result1);
	ldr	x0, [sp, 16]	//, result1
	bl	free		//
// problem114.c:60:     for (int i = 0; i < 2; i++) free(result2[i]);
	str	wzr, [sp, 8]	//, i
// problem114.c:60:     for (int i = 0; i < 2; i++) free(result2[i]);
	b	.L19		//
.L20:
// problem114.c:60:     for (int i = 0; i < 2; i++) free(result2[i]);
	ldrsw	x0, [sp, 8]	// _8, i
	lsl	x0, x0, 3	// _9, _8,
	ldr	x1, [sp, 24]	// tmp153, result2
	add	x0, x1, x0	// _10, tmp153, _9
// problem114.c:60:     for (int i = 0; i < 2; i++) free(result2[i]);
	ldr	x0, [x0]	// _11, *_10
	bl	free		//
// problem114.c:60:     for (int i = 0; i < 2; i++) free(result2[i]);
	ldr	w0, [sp, 8]	// tmp155, i
	add	w0, w0, 1	// tmp154, tmp155,
	str	w0, [sp, 8]	// tmp154, i
.L19:
// problem114.c:60:     for (int i = 0; i < 2; i++) free(result2[i]);
	ldr	w0, [sp, 8]	// tmp156, i
	cmp	w0, 1	// tmp156,
	ble	.L20		//,
// problem114.c:61:     free(result2);
	ldr	x0, [sp, 24]	//, result2
	bl	free		//
// problem114.c:62:     for (int i = 0; i < 3; i++) free(result3[i]);
	str	wzr, [sp, 12]	//, i
// problem114.c:62:     for (int i = 0; i < 3; i++) free(result3[i]);
	b	.L21		//
.L22:
// problem114.c:62:     for (int i = 0; i < 3; i++) free(result3[i]);
	ldrsw	x0, [sp, 12]	// _12, i
	lsl	x0, x0, 3	// _13, _12,
	ldr	x1, [sp, 32]	// tmp157, result3
	add	x0, x1, x0	// _14, tmp157, _13
// problem114.c:62:     for (int i = 0; i < 3; i++) free(result3[i]);
	ldr	x0, [x0]	// _15, *_14
	bl	free		//
// problem114.c:62:     for (int i = 0; i < 3; i++) free(result3[i]);
	ldr	w0, [sp, 12]	// tmp159, i
	add	w0, w0, 1	// tmp158, tmp159,
	str	w0, [sp, 12]	// tmp158, i
.L21:
// problem114.c:62:     for (int i = 0; i < 3; i++) free(result3[i]);
	ldr	w0, [sp, 12]	// tmp160, i
	cmp	w0, 2	// tmp160,
	ble	.L22		//,
// problem114.c:63:     free(result3);
	ldr	x0, [sp, 32]	//, result3
	bl	free		//
// problem114.c:65:     return 0;
	mov	w0, 0	// _49,
// problem114.c:66: }
	mov	w1, w0	// <retval>, _49
	adrp	x0, :got:__stack_chk_guard	// tmp162,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp162,
	ldr	x3, [sp, 136]	// tmp164, D.5669
	ldr	x2, [x0]	// tmp165,
	subs	x3, x3, x2	// tmp164, tmp165
	mov	x2, 0	// tmp165
	beq	.L24		//,
	bl	__stack_chk_fail		//
.L24:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 144]	//,,
	add	sp, sp, 160	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"271"
	.align	3
.LC1:
	.string	"137"
	.align	3
.LC2:
	.string	"314"
	.data
	.align	3
.LC17:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.section	.rodata
	.align	3
.LC4:
	.string	"the number of odd elements 2 in the string 2 of the 2 input."
	.align	3
.LC5:
	.string	"the number of odd elements 3 in the string 3 of the 3 input."
	.data
	.align	3
.LC18:
	.xword	.LC4
	.xword	.LC5
	.xword	.LC4
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
