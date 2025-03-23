	.arch armv8-a
	.file	"problem113.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"True"
	.align	3
.LC1:
	.string	"False"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x0, [sp, 40]	// s, s
	str	x1, [sp, 32]	// c, c
	str	x2, [sp, 24]	// result, result
	str	x3, [sp, 16]	// palindrome, palindrome
// problem113.c:7:     int len = strlen(s);
	ldr	x0, [sp, 40]	//, s
	bl	strlen		//
// problem113.c:7:     int len = strlen(s);
	str	w0, [sp, 72]	// tmp123, len
// problem113.c:8:     char *n = malloc((len + 1) * sizeof(char));
	ldr	w0, [sp, 72]	// tmp124, len
	add	w0, w0, 1	// _2, tmp124,
// problem113.c:8:     char *n = malloc((len + 1) * sizeof(char));
	sxtw	x0, w0	// _3, _2
	bl	malloc		//
	str	x0, [sp, 88]	// tmp125, n
// problem113.c:9:     int ni = 0;
	str	wzr, [sp, 60]	//, ni
// problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	str	wzr, [sp, 64]	//, i
// problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	b	.L2		//
.L8:
// problem113.c:11:         const char *temp = c;
	ldr	x0, [sp, 32]	// tmp126, c
	str	x0, [sp, 80]	// tmp126, temp
// problem113.c:12:         bool found = false;
	strb	wzr, [sp, 58]	//, found
// problem113.c:13:         while (*temp != '\0') {
	b	.L3		//
.L6:
// problem113.c:14:             if (s[i] == *temp) {
	ldrsw	x0, [sp, 64]	// _4, i
	ldr	x1, [sp, 40]	// tmp127, s
	add	x0, x1, x0	// _5, tmp127, _4
	ldrb	w1, [x0]	// _6, *_5
// problem113.c:14:             if (s[i] == *temp) {
	ldr	x0, [sp, 80]	// tmp128, temp
	ldrb	w0, [x0]	// _7, *temp_34
// problem113.c:14:             if (s[i] == *temp) {
	cmp	w1, w0	// _6, _7
	bne	.L4		//,
// problem113.c:15:                 found = true;
	mov	w0, 1	// tmp129,
	strb	w0, [sp, 58]	// tmp129, found
// problem113.c:16:                 break;
	b	.L5		//
.L4:
// problem113.c:18:             temp++;
	ldr	x0, [sp, 80]	// tmp131, temp
	add	x0, x0, 1	// tmp130, tmp131,
	str	x0, [sp, 80]	// tmp130, temp
.L3:
// problem113.c:13:         while (*temp != '\0') {
	ldr	x0, [sp, 80]	// tmp132, temp
	ldrb	w0, [x0]	// _8, *temp_34
// problem113.c:13:         while (*temp != '\0') {
	cmp	w0, 0	// _8,
	bne	.L6		//,
.L5:
// problem113.c:20:         if (!found) {
	ldrb	w0, [sp, 58]	// tmp133, found
	eor	w0, w0, 1	// tmp134, tmp133,
	and	w0, w0, 255	// _9, tmp134
// problem113.c:20:         if (!found) {
	and	w0, w0, 1	// tmp135, _9,
	cmp	w0, 0	// tmp135,
	beq	.L7		//,
// problem113.c:21:             n[ni++] = s[i];
	ldrsw	x0, [sp, 64]	// _10, i
	ldr	x1, [sp, 40]	// tmp136, s
	add	x1, x1, x0	// _11, tmp136, _10
// problem113.c:21:             n[ni++] = s[i];
	ldr	w0, [sp, 60]	// ni.0_12, ni
	add	w2, w0, 1	// tmp137, ni.0_12,
	str	w2, [sp, 60]	// tmp137, ni
	sxtw	x0, w0	// _13, ni.0_12
// problem113.c:21:             n[ni++] = s[i];
	ldr	x2, [sp, 88]	// tmp138, n
	add	x0, x2, x0	// _14, tmp138, _13
// problem113.c:21:             n[ni++] = s[i];
	ldrb	w1, [x1]	// _15, *_11
// problem113.c:21:             n[ni++] = s[i];
	strb	w1, [x0]	// tmp139, *_14
.L7:
// problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	ldr	w0, [sp, 64]	// tmp141, i
	add	w0, w0, 1	// tmp140, tmp141,
	str	w0, [sp, 64]	// tmp140, i
.L2:
// problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	ldrsw	x0, [sp, 64]	// _16, i
	ldr	x1, [sp, 40]	// tmp142, s
	add	x0, x1, x0	// _17, tmp142, _16
	ldrb	w0, [x0]	// _18, *_17
// problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	cmp	w0, 0	// _18,
	bne	.L8		//,
// problem113.c:24:     n[ni] = '\0';
	ldrsw	x0, [sp, 60]	// _19, ni
	ldr	x1, [sp, 88]	// tmp143, n
	add	x0, x1, x0	// _20, tmp143, _19
// problem113.c:24:     n[ni] = '\0';
	strb	wzr, [x0]	//, *_20
// problem113.c:26:     int n_len = strlen(n);
	ldr	x0, [sp, 88]	//, n
	bl	strlen		//
// problem113.c:26:     int n_len = strlen(n);
	str	w0, [sp, 76]	// tmp144, n_len
// problem113.c:27:     bool is_palindrome = true;
	mov	w0, 1	// tmp145,
	strb	w0, [sp, 59]	// tmp145, is_palindrome
// problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	str	wzr, [sp, 68]	//, i
// problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	b	.L9		//
.L12:
// problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	ldrsw	x0, [sp, 68]	// _22, i
	ldr	x1, [sp, 88]	// tmp146, n
	add	x0, x1, x0	// _23, tmp146, _22
	ldrb	w1, [x0]	// _24, *_23
// problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	ldr	w0, [sp, 76]	// tmp147, n_len
	sub	w2, w0, #1	// _25, tmp147,
// problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	ldr	w0, [sp, 68]	// tmp148, i
	sub	w0, w2, w0	// _26, _25, tmp148
	sxtw	x0, w0	// _27, _26
// problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	ldr	x2, [sp, 88]	// tmp149, n
	add	x0, x2, x0	// _28, tmp149, _27
	ldrb	w0, [x0]	// _29, *_28
// problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	cmp	w1, w0	// _24, _29
	beq	.L10		//,
// problem113.c:30:             is_palindrome = false;
	strb	wzr, [sp, 59]	//, is_palindrome
// problem113.c:31:             break;
	b	.L11		//
.L10:
// problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	ldr	w0, [sp, 68]	// tmp151, i
	add	w0, w0, 1	// tmp150, tmp151,
	str	w0, [sp, 68]	// tmp150, i
.L9:
// problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	ldr	w0, [sp, 76]	// tmp152, n_len
	lsr	w1, w0, 31	// tmp153, tmp152,
	add	w0, w1, w0	// tmp154, tmp153, tmp152
	asr	w0, w0, 1	// tmp155, tmp154,
	mov	w1, w0	// _30, tmp155
// problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	ldr	w0, [sp, 68]	// tmp156, i
	cmp	w0, w1	// tmp156, _30
	blt	.L12		//,
.L11:
// problem113.c:35:     strcpy(result, n);
	ldr	x1, [sp, 88]	//, n
	ldr	x0, [sp, 24]	//, result
	bl	strcpy		//
// problem113.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	ldrb	w0, [sp, 59]	// tmp157, is_palindrome
	and	w0, w0, 1	// tmp158, tmp157,
	cmp	w0, 0	// tmp158,
	beq	.L13		//,
// problem113.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	adrp	x0, .LC0	// tmp159,
	add	x0, x0, :lo12:.LC0	// iftmp.1_38, tmp159,
	b	.L14		//
.L13:
// problem113.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	adrp	x0, .LC1	// tmp160,
	add	x0, x0, :lo12:.LC1	// iftmp.1_38, tmp160,
.L14:
// problem113.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	mov	x1, x0	//, iftmp.1_38
	ldr	x0, [sp, 16]	//, palindrome
	bl	strcpy		//
// problem113.c:38:     free(n);
	ldr	x0, [sp, 88]	//, n
	bl	free		//
// problem113.c:39: }
	nop	
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	"ae"
	.align	3
.LC3:
	.string	"abcde"
	.align	3
.LC4:
	.string	"bcd"
	.align	3
.LC5:
	.string	"problem113.c"
	.align	3
.LC6:
	.string	"strcmp(result, \"bcd\") == 0 && strcmp(palindrome, \"False\") == 0"
	.align	3
.LC7:
	.string	"b"
	.align	3
.LC8:
	.string	"abcdef"
	.align	3
.LC9:
	.string	"acdef"
	.align	3
.LC10:
	.string	"strcmp(result, \"acdef\") == 0 && strcmp(palindrome, \"False\") == 0"
	.align	3
.LC11:
	.string	"ab"
	.align	3
.LC12:
	.string	"abcdedcba"
	.align	3
.LC13:
	.string	"cdedc"
	.align	3
.LC14:
	.string	"strcmp(result, \"cdedc\") == 0 && strcmp(palindrome, \"True\") == 0"
	.align	3
.LC15:
	.string	"w"
	.align	3
.LC16:
	.string	"dwik"
	.align	3
.LC17:
	.string	"dik"
	.align	3
.LC18:
	.string	"strcmp(result, \"dik\") == 0 && strcmp(palindrome, \"False\") == 0"
	.align	3
.LC19:
	.string	"a"
	.align	3
.LC20:
	.string	"strcmp(result, \"\") == 0 && strcmp(palindrome, \"True\") == 0"
	.align	3
.LC21:
	.string	""
	.align	3
.LC22:
	.string	"strcmp(result, \"abcdedcba\") == 0 && strcmp(palindrome, \"True\") == 0"
	.align	3
.LC23:
	.string	"v"
	.align	3
.LC24:
	.string	"vabba"
	.align	3
.LC25:
	.string	"abba"
	.align	3
.LC26:
	.string	"strcmp(result, \"abba\") == 0 && strcmp(palindrome, \"True\") == 0"
	.align	3
.LC27:
	.string	"mia"
	.align	3
.LC28:
	.string	"mamma"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #144	//,,
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, 128]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 128	//,,
// problem113.c:46: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp114,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp114,
	ldr	x1, [x0]	// tmp212,
	str	x1, [sp, 120]	// tmp212, D.5671
	mov	x1, 0	// tmp212
// problem113.c:50:     func0("abcde", "ae", result, palindrome);
	add	x1, sp, 8	// tmp115,,
	add	x0, sp, 16	// tmp116,,
	mov	x3, x1	//, tmp115
	mov	x2, x0	//, tmp116
	adrp	x0, .LC2	// tmp117,
	add	x1, x0, :lo12:.LC2	//, tmp117,
	adrp	x0, .LC3	// tmp118,
	add	x0, x0, :lo12:.LC3	//, tmp118,
	bl	func0		//
// problem113.c:51:     assert(strcmp(result, "bcd") == 0 && strcmp(palindrome, "False") == 0);
	add	x2, sp, 16	// tmp119,,
	adrp	x0, .LC4	// tmp120,
	add	x1, x0, :lo12:.LC4	//, tmp120,
	mov	x0, x2	//, tmp119
	bl	strcmp		//
// problem113.c:51:     assert(strcmp(result, "bcd") == 0 && strcmp(palindrome, "False") == 0);
	cmp	w0, 0	// _1,
	bne	.L16		//,
	add	x2, sp, 8	// tmp121,,
	adrp	x0, .LC1	// tmp122,
	add	x1, x0, :lo12:.LC1	//, tmp122,
	mov	x0, x2	//, tmp121
	bl	strcmp		//
	cmp	w0, 0	// _2,
	beq	.L36		//,
.L16:
// problem113.c:51:     assert(strcmp(result, "bcd") == 0 && strcmp(palindrome, "False") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp123,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp123,
	mov	w2, 51	//,
	adrp	x0, .LC5	// tmp124,
	add	x1, x0, :lo12:.LC5	//, tmp124,
	adrp	x0, .LC6	// tmp125,
	add	x0, x0, :lo12:.LC6	//, tmp125,
	bl	__assert_fail		//
.L36:
// problem113.c:53:     func0("abcdef", "b", result, palindrome);
	add	x1, sp, 8	// tmp126,,
	add	x0, sp, 16	// tmp127,,
	mov	x3, x1	//, tmp126
	mov	x2, x0	//, tmp127
	adrp	x0, .LC7	// tmp128,
	add	x1, x0, :lo12:.LC7	//, tmp128,
	adrp	x0, .LC8	// tmp129,
	add	x0, x0, :lo12:.LC8	//, tmp129,
	bl	func0		//
// problem113.c:54:     assert(strcmp(result, "acdef") == 0 && strcmp(palindrome, "False") == 0);
	add	x2, sp, 16	// tmp130,,
	adrp	x0, .LC9	// tmp131,
	add	x1, x0, :lo12:.LC9	//, tmp131,
	mov	x0, x2	//, tmp130
	bl	strcmp		//
// problem113.c:54:     assert(strcmp(result, "acdef") == 0 && strcmp(palindrome, "False") == 0);
	cmp	w0, 0	// _3,
	bne	.L18		//,
	add	x2, sp, 8	// tmp132,,
	adrp	x0, .LC1	// tmp133,
	add	x1, x0, :lo12:.LC1	//, tmp133,
	mov	x0, x2	//, tmp132
	bl	strcmp		//
	cmp	w0, 0	// _4,
	beq	.L37		//,
.L18:
// problem113.c:54:     assert(strcmp(result, "acdef") == 0 && strcmp(palindrome, "False") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp134,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp134,
	mov	w2, 54	//,
	adrp	x0, .LC5	// tmp135,
	add	x1, x0, :lo12:.LC5	//, tmp135,
	adrp	x0, .LC10	// tmp136,
	add	x0, x0, :lo12:.LC10	//, tmp136,
	bl	__assert_fail		//
.L37:
// problem113.c:56:     func0("abcdedcba", "ab", result, palindrome);
	add	x1, sp, 8	// tmp137,,
	add	x0, sp, 16	// tmp138,,
	mov	x3, x1	//, tmp137
	mov	x2, x0	//, tmp138
	adrp	x0, .LC11	// tmp139,
	add	x1, x0, :lo12:.LC11	//, tmp139,
	adrp	x0, .LC12	// tmp140,
	add	x0, x0, :lo12:.LC12	//, tmp140,
	bl	func0		//
// problem113.c:57:     assert(strcmp(result, "cdedc") == 0 && strcmp(palindrome, "True") == 0);
	add	x2, sp, 16	// tmp141,,
	adrp	x0, .LC13	// tmp142,
	add	x1, x0, :lo12:.LC13	//, tmp142,
	mov	x0, x2	//, tmp141
	bl	strcmp		//
// problem113.c:57:     assert(strcmp(result, "cdedc") == 0 && strcmp(palindrome, "True") == 0);
	cmp	w0, 0	// _5,
	bne	.L20		//,
	add	x2, sp, 8	// tmp143,,
	adrp	x0, .LC0	// tmp144,
	add	x1, x0, :lo12:.LC0	//, tmp144,
	mov	x0, x2	//, tmp143
	bl	strcmp		//
	cmp	w0, 0	// _6,
	beq	.L38		//,
.L20:
// problem113.c:57:     assert(strcmp(result, "cdedc") == 0 && strcmp(palindrome, "True") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp145,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp145,
	mov	w2, 57	//,
	adrp	x0, .LC5	// tmp146,
	add	x1, x0, :lo12:.LC5	//, tmp146,
	adrp	x0, .LC14	// tmp147,
	add	x0, x0, :lo12:.LC14	//, tmp147,
	bl	__assert_fail		//
.L38:
// problem113.c:59:     func0("dwik", "w", result, palindrome);
	add	x1, sp, 8	// tmp148,,
	add	x0, sp, 16	// tmp149,,
	mov	x3, x1	//, tmp148
	mov	x2, x0	//, tmp149
	adrp	x0, .LC15	// tmp150,
	add	x1, x0, :lo12:.LC15	//, tmp150,
	adrp	x0, .LC16	// tmp151,
	add	x0, x0, :lo12:.LC16	//, tmp151,
	bl	func0		//
// problem113.c:60:     assert(strcmp(result, "dik") == 0 && strcmp(palindrome, "False") == 0);
	add	x2, sp, 16	// tmp152,,
	adrp	x0, .LC17	// tmp153,
	add	x1, x0, :lo12:.LC17	//, tmp153,
	mov	x0, x2	//, tmp152
	bl	strcmp		//
// problem113.c:60:     assert(strcmp(result, "dik") == 0 && strcmp(palindrome, "False") == 0);
	cmp	w0, 0	// _7,
	bne	.L22		//,
	add	x2, sp, 8	// tmp154,,
	adrp	x0, .LC1	// tmp155,
	add	x1, x0, :lo12:.LC1	//, tmp155,
	mov	x0, x2	//, tmp154
	bl	strcmp		//
	cmp	w0, 0	// _8,
	beq	.L39		//,
.L22:
// problem113.c:60:     assert(strcmp(result, "dik") == 0 && strcmp(palindrome, "False") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp156,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp156,
	mov	w2, 60	//,
	adrp	x0, .LC5	// tmp157,
	add	x1, x0, :lo12:.LC5	//, tmp157,
	adrp	x0, .LC18	// tmp158,
	add	x0, x0, :lo12:.LC18	//, tmp158,
	bl	__assert_fail		//
.L39:
// problem113.c:62:     func0("a", "a", result, palindrome);
	add	x1, sp, 8	// tmp159,,
	add	x0, sp, 16	// tmp160,,
	mov	x3, x1	//, tmp159
	mov	x2, x0	//, tmp160
	adrp	x0, .LC19	// tmp161,
	add	x1, x0, :lo12:.LC19	//, tmp161,
	adrp	x0, .LC19	// tmp162,
	add	x0, x0, :lo12:.LC19	//, tmp162,
	bl	func0		//
// problem113.c:63:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	ldrb	w0, [sp, 16]	// _25, MEM[(const unsigned char * {ref-all})&result]
	cmp	w0, 0	// _9,
	bne	.L24		//,
// problem113.c:63:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	add	x2, sp, 8	// tmp163,,
	adrp	x0, .LC0	// tmp164,
	add	x1, x0, :lo12:.LC0	//, tmp164,
	mov	x0, x2	//, tmp163
	bl	strcmp		//
	cmp	w0, 0	// _10,
	beq	.L40		//,
.L24:
// problem113.c:63:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp165,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp165,
	mov	w2, 63	//,
	adrp	x0, .LC5	// tmp166,
	add	x1, x0, :lo12:.LC5	//, tmp166,
	adrp	x0, .LC20	// tmp167,
	add	x0, x0, :lo12:.LC20	//, tmp167,
	bl	__assert_fail		//
.L40:
// problem113.c:65:     func0("abcdedcba", "", result, palindrome);
	add	x1, sp, 8	// tmp168,,
	add	x0, sp, 16	// tmp169,,
	mov	x3, x1	//, tmp168
	mov	x2, x0	//, tmp169
	adrp	x0, .LC21	// tmp170,
	add	x1, x0, :lo12:.LC21	//, tmp170,
	adrp	x0, .LC12	// tmp171,
	add	x0, x0, :lo12:.LC12	//, tmp171,
	bl	func0		//
// problem113.c:66:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	add	x2, sp, 16	// tmp172,,
	adrp	x0, .LC12	// tmp173,
	add	x1, x0, :lo12:.LC12	//, tmp173,
	mov	x0, x2	//, tmp172
	bl	strcmp		//
// problem113.c:66:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	cmp	w0, 0	// _11,
	bne	.L26		//,
	add	x2, sp, 8	// tmp174,,
	adrp	x0, .LC0	// tmp175,
	add	x1, x0, :lo12:.LC0	//, tmp175,
	mov	x0, x2	//, tmp174
	bl	strcmp		//
	cmp	w0, 0	// _12,
	beq	.L41		//,
.L26:
// problem113.c:66:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp176,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp176,
	mov	w2, 66	//,
	adrp	x0, .LC5	// tmp177,
	add	x1, x0, :lo12:.LC5	//, tmp177,
	adrp	x0, .LC22	// tmp178,
	add	x0, x0, :lo12:.LC22	//, tmp178,
	bl	__assert_fail		//
.L41:
// problem113.c:68:     func0("abcdedcba", "v", result, palindrome);
	add	x1, sp, 8	// tmp179,,
	add	x0, sp, 16	// tmp180,,
	mov	x3, x1	//, tmp179
	mov	x2, x0	//, tmp180
	adrp	x0, .LC23	// tmp181,
	add	x1, x0, :lo12:.LC23	//, tmp181,
	adrp	x0, .LC12	// tmp182,
	add	x0, x0, :lo12:.LC12	//, tmp182,
	bl	func0		//
// problem113.c:69:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	add	x2, sp, 16	// tmp183,,
	adrp	x0, .LC12	// tmp184,
	add	x1, x0, :lo12:.LC12	//, tmp184,
	mov	x0, x2	//, tmp183
	bl	strcmp		//
// problem113.c:69:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	cmp	w0, 0	// _13,
	bne	.L28		//,
	add	x2, sp, 8	// tmp185,,
	adrp	x0, .LC0	// tmp186,
	add	x1, x0, :lo12:.LC0	//, tmp186,
	mov	x0, x2	//, tmp185
	bl	strcmp		//
	cmp	w0, 0	// _14,
	beq	.L42		//,
.L28:
// problem113.c:69:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp187,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp187,
	mov	w2, 69	//,
	adrp	x0, .LC5	// tmp188,
	add	x1, x0, :lo12:.LC5	//, tmp188,
	adrp	x0, .LC22	// tmp189,
	add	x0, x0, :lo12:.LC22	//, tmp189,
	bl	__assert_fail		//
.L42:
// problem113.c:71:     func0("vabba", "v", result, palindrome);
	add	x1, sp, 8	// tmp190,,
	add	x0, sp, 16	// tmp191,,
	mov	x3, x1	//, tmp190
	mov	x2, x0	//, tmp191
	adrp	x0, .LC23	// tmp192,
	add	x1, x0, :lo12:.LC23	//, tmp192,
	adrp	x0, .LC24	// tmp193,
	add	x0, x0, :lo12:.LC24	//, tmp193,
	bl	func0		//
// problem113.c:72:     assert(strcmp(result, "abba") == 0 && strcmp(palindrome, "True") == 0);
	add	x2, sp, 16	// tmp194,,
	adrp	x0, .LC25	// tmp195,
	add	x1, x0, :lo12:.LC25	//, tmp195,
	mov	x0, x2	//, tmp194
	bl	strcmp		//
// problem113.c:72:     assert(strcmp(result, "abba") == 0 && strcmp(palindrome, "True") == 0);
	cmp	w0, 0	// _15,
	bne	.L30		//,
	add	x2, sp, 8	// tmp196,,
	adrp	x0, .LC0	// tmp197,
	add	x1, x0, :lo12:.LC0	//, tmp197,
	mov	x0, x2	//, tmp196
	bl	strcmp		//
	cmp	w0, 0	// _16,
	beq	.L43		//,
.L30:
// problem113.c:72:     assert(strcmp(result, "abba") == 0 && strcmp(palindrome, "True") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp198,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp198,
	mov	w2, 72	//,
	adrp	x0, .LC5	// tmp199,
	add	x1, x0, :lo12:.LC5	//, tmp199,
	adrp	x0, .LC26	// tmp200,
	add	x0, x0, :lo12:.LC26	//, tmp200,
	bl	__assert_fail		//
.L43:
// problem113.c:74:     func0("mamma", "mia", result, palindrome);
	add	x1, sp, 8	// tmp201,,
	add	x0, sp, 16	// tmp202,,
	mov	x3, x1	//, tmp201
	mov	x2, x0	//, tmp202
	adrp	x0, .LC27	// tmp203,
	add	x1, x0, :lo12:.LC27	//, tmp203,
	adrp	x0, .LC28	// tmp204,
	add	x0, x0, :lo12:.LC28	//, tmp204,
	bl	func0		//
// problem113.c:75:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	ldrb	w0, [sp, 16]	// _30, MEM[(const unsigned char * {ref-all})&result]
	cmp	w0, 0	// _17,
	bne	.L32		//,
// problem113.c:75:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	add	x2, sp, 8	// tmp205,,
	adrp	x0, .LC0	// tmp206,
	add	x1, x0, :lo12:.LC0	//, tmp206,
	mov	x0, x2	//, tmp205
	bl	strcmp		//
	cmp	w0, 0	// _18,
	beq	.L44		//,
.L32:
// problem113.c:75:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp207,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp207,
	mov	w2, 75	//,
	adrp	x0, .LC5	// tmp208,
	add	x1, x0, :lo12:.LC5	//, tmp208,
	adrp	x0, .LC20	// tmp209,
	add	x0, x0, :lo12:.LC20	//, tmp209,
	bl	__assert_fail		//
.L44:
// problem113.c:77:     return 0;
	mov	w0, 0	// _31,
// problem113.c:78: }
	mov	w1, w0	// <retval>, _31
	adrp	x0, :got:__stack_chk_guard	// tmp211,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp211,
	ldr	x3, [sp, 120]	// tmp213, D.5671
	ldr	x2, [x0]	// tmp214,
	subs	x3, x3, x2	// tmp213, tmp214
	mov	x2, 0	// tmp214
	beq	.L35		//,
	bl	__stack_chk_fail		//
.L35:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 128]	//,,
	add	sp, sp, 144	//,,
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
