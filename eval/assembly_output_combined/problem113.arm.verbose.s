	.arch armv8-a
	.file	"problem113.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	cmp	w0, 0	// _9,
	beq	.L7		//,
// problem113.c:21:             n[ni++] = s[i];
	ldrsw	x0, [sp, 64]	// _10, i
	ldr	x1, [sp, 40]	// tmp135, s
	add	x1, x1, x0	// _11, tmp135, _10
// problem113.c:21:             n[ni++] = s[i];
	ldr	w0, [sp, 60]	// ni.0_12, ni
	add	w2, w0, 1	// tmp136, ni.0_12,
	str	w2, [sp, 60]	// tmp136, ni
	sxtw	x0, w0	// _13, ni.0_12
// problem113.c:21:             n[ni++] = s[i];
	ldr	x2, [sp, 88]	// tmp137, n
	add	x0, x2, x0	// _14, tmp137, _13
// problem113.c:21:             n[ni++] = s[i];
	ldrb	w1, [x1]	// _15, *_11
// problem113.c:21:             n[ni++] = s[i];
	strb	w1, [x0]	// tmp138, *_14
.L7:
// problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	ldr	w0, [sp, 64]	// tmp140, i
	add	w0, w0, 1	// tmp139, tmp140,
	str	w0, [sp, 64]	// tmp139, i
.L2:
// problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	ldrsw	x0, [sp, 64]	// _16, i
	ldr	x1, [sp, 40]	// tmp141, s
	add	x0, x1, x0	// _17, tmp141, _16
	ldrb	w0, [x0]	// _18, *_17
// problem113.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	cmp	w0, 0	// _18,
	bne	.L8		//,
// problem113.c:24:     n[ni] = '\0';
	ldrsw	x0, [sp, 60]	// _19, ni
	ldr	x1, [sp, 88]	// tmp142, n
	add	x0, x1, x0	// _20, tmp142, _19
// problem113.c:24:     n[ni] = '\0';
	strb	wzr, [x0]	//, *_20
// problem113.c:26:     int n_len = strlen(n);
	ldr	x0, [sp, 88]	//, n
	bl	strlen		//
// problem113.c:26:     int n_len = strlen(n);
	str	w0, [sp, 76]	// tmp143, n_len
// problem113.c:27:     bool is_palindrome = true;
	mov	w0, 1	// tmp144,
	strb	w0, [sp, 59]	// tmp144, is_palindrome
// problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	str	wzr, [sp, 68]	//, i
// problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	b	.L9		//
.L12:
// problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	ldrsw	x0, [sp, 68]	// _22, i
	ldr	x1, [sp, 88]	// tmp145, n
	add	x0, x1, x0	// _23, tmp145, _22
	ldrb	w1, [x0]	// _24, *_23
// problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	ldr	w0, [sp, 76]	// tmp146, n_len
	sub	w2, w0, #1	// _25, tmp146,
// problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	ldr	w0, [sp, 68]	// tmp147, i
	sub	w0, w2, w0	// _26, _25, tmp147
	sxtw	x0, w0	// _27, _26
// problem113.c:29:         if (n[i] != n[n_len - 1 - i]) {
	ldr	x2, [sp, 88]	// tmp148, n
	add	x0, x2, x0	// _28, tmp148, _27
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
	ldr	w0, [sp, 68]	// tmp150, i
	add	w0, w0, 1	// tmp149, tmp150,
	str	w0, [sp, 68]	// tmp149, i
.L9:
// problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	ldr	w0, [sp, 76]	// tmp151, n_len
	lsr	w1, w0, 31	// tmp152, tmp151,
	add	w0, w1, w0	// tmp153, tmp152, tmp151
	asr	w0, w0, 1	// tmp154, tmp153,
	mov	w1, w0	// _30, tmp154
// problem113.c:28:     for (int i = 0; i < n_len / 2; i++) {
	ldr	w0, [sp, 68]	// tmp155, i
	cmp	w0, w1	// tmp155, _30
	blt	.L12		//,
.L11:
// problem113.c:35:     strcpy(result, n);
	ldr	x1, [sp, 88]	//, n
	ldr	x0, [sp, 24]	//, result
	bl	strcpy		//
// problem113.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	ldrb	w0, [sp, 59]	// tmp156, is_palindrome
	cmp	w0, 0	// tmp156,
	beq	.L13		//,
// problem113.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	adrp	x0, .LC0	// tmp157,
	add	x0, x0, :lo12:.LC0	// iftmp.1_38, tmp157,
	b	.L14		//
.L13:
// problem113.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	adrp	x0, .LC1	// tmp158,
	add	x0, x0, :lo12:.LC1	// iftmp.1_38, tmp158,
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
	stp	x29, x30, [sp, -144]!	//,,,
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp	//,
// problem113.c:46: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp115,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp114, tmp115,
	ldr	x1, [x0]	// tmp214,
	str	x1, [sp, 136]	// tmp214, D.5055
	mov	x1, 0	// tmp214
// problem113.c:50:     func0("abcde", "ae", result, palindrome);
	add	x1, sp, 24	// tmp116,,
	add	x0, sp, 32	// tmp117,,
	mov	x3, x1	//, tmp116
	mov	x2, x0	//, tmp117
	adrp	x0, .LC2	// tmp118,
	add	x1, x0, :lo12:.LC2	//, tmp118,
	adrp	x0, .LC3	// tmp119,
	add	x0, x0, :lo12:.LC3	//, tmp119,
	bl	func0		//
// problem113.c:51:     assert(strcmp(result, "bcd") == 0 && strcmp(palindrome, "False") == 0);
	add	x2, sp, 32	// tmp120,,
	adrp	x0, .LC4	// tmp121,
	add	x1, x0, :lo12:.LC4	//, tmp121,
	mov	x0, x2	//, tmp120
	bl	strcmp		//
	cmp	w0, 0	// _1,
	bne	.L16		//,
// problem113.c:51:     assert(strcmp(result, "bcd") == 0 && strcmp(palindrome, "False") == 0);
	add	x2, sp, 24	// tmp122,,
	adrp	x0, .LC1	// tmp123,
	add	x1, x0, :lo12:.LC1	//, tmp123,
	mov	x0, x2	//, tmp122
	bl	strcmp		//
	cmp	w0, 0	// _2,
	beq	.L36		//,
.L16:
// problem113.c:51:     assert(strcmp(result, "bcd") == 0 && strcmp(palindrome, "False") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp124,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp124,
	mov	w2, 51	//,
	adrp	x0, .LC5	// tmp125,
	add	x1, x0, :lo12:.LC5	//, tmp125,
	adrp	x0, .LC6	// tmp126,
	add	x0, x0, :lo12:.LC6	//, tmp126,
	bl	__assert_fail		//
.L36:
// problem113.c:53:     func0("abcdef", "b", result, palindrome);
	add	x1, sp, 24	// tmp127,,
	add	x0, sp, 32	// tmp128,,
	mov	x3, x1	//, tmp127
	mov	x2, x0	//, tmp128
	adrp	x0, .LC7	// tmp129,
	add	x1, x0, :lo12:.LC7	//, tmp129,
	adrp	x0, .LC8	// tmp130,
	add	x0, x0, :lo12:.LC8	//, tmp130,
	bl	func0		//
// problem113.c:54:     assert(strcmp(result, "acdef") == 0 && strcmp(palindrome, "False") == 0);
	add	x2, sp, 32	// tmp131,,
	adrp	x0, .LC9	// tmp132,
	add	x1, x0, :lo12:.LC9	//, tmp132,
	mov	x0, x2	//, tmp131
	bl	strcmp		//
	cmp	w0, 0	// _3,
	bne	.L18		//,
// problem113.c:54:     assert(strcmp(result, "acdef") == 0 && strcmp(palindrome, "False") == 0);
	add	x2, sp, 24	// tmp133,,
	adrp	x0, .LC1	// tmp134,
	add	x1, x0, :lo12:.LC1	//, tmp134,
	mov	x0, x2	//, tmp133
	bl	strcmp		//
	cmp	w0, 0	// _4,
	beq	.L37		//,
.L18:
// problem113.c:54:     assert(strcmp(result, "acdef") == 0 && strcmp(palindrome, "False") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp135,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp135,
	mov	w2, 54	//,
	adrp	x0, .LC5	// tmp136,
	add	x1, x0, :lo12:.LC5	//, tmp136,
	adrp	x0, .LC10	// tmp137,
	add	x0, x0, :lo12:.LC10	//, tmp137,
	bl	__assert_fail		//
.L37:
// problem113.c:56:     func0("abcdedcba", "ab", result, palindrome);
	add	x1, sp, 24	// tmp138,,
	add	x0, sp, 32	// tmp139,,
	mov	x3, x1	//, tmp138
	mov	x2, x0	//, tmp139
	adrp	x0, .LC11	// tmp140,
	add	x1, x0, :lo12:.LC11	//, tmp140,
	adrp	x0, .LC12	// tmp141,
	add	x0, x0, :lo12:.LC12	//, tmp141,
	bl	func0		//
// problem113.c:57:     assert(strcmp(result, "cdedc") == 0 && strcmp(palindrome, "True") == 0);
	add	x2, sp, 32	// tmp142,,
	adrp	x0, .LC13	// tmp143,
	add	x1, x0, :lo12:.LC13	//, tmp143,
	mov	x0, x2	//, tmp142
	bl	strcmp		//
	cmp	w0, 0	// _5,
	bne	.L20		//,
// problem113.c:57:     assert(strcmp(result, "cdedc") == 0 && strcmp(palindrome, "True") == 0);
	add	x2, sp, 24	// tmp144,,
	adrp	x0, .LC0	// tmp145,
	add	x1, x0, :lo12:.LC0	//, tmp145,
	mov	x0, x2	//, tmp144
	bl	strcmp		//
	cmp	w0, 0	// _6,
	beq	.L38		//,
.L20:
// problem113.c:57:     assert(strcmp(result, "cdedc") == 0 && strcmp(palindrome, "True") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp146,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp146,
	mov	w2, 57	//,
	adrp	x0, .LC5	// tmp147,
	add	x1, x0, :lo12:.LC5	//, tmp147,
	adrp	x0, .LC14	// tmp148,
	add	x0, x0, :lo12:.LC14	//, tmp148,
	bl	__assert_fail		//
.L38:
// problem113.c:59:     func0("dwik", "w", result, palindrome);
	add	x1, sp, 24	// tmp149,,
	add	x0, sp, 32	// tmp150,,
	mov	x3, x1	//, tmp149
	mov	x2, x0	//, tmp150
	adrp	x0, .LC15	// tmp151,
	add	x1, x0, :lo12:.LC15	//, tmp151,
	adrp	x0, .LC16	// tmp152,
	add	x0, x0, :lo12:.LC16	//, tmp152,
	bl	func0		//
// problem113.c:60:     assert(strcmp(result, "dik") == 0 && strcmp(palindrome, "False") == 0);
	add	x2, sp, 32	// tmp153,,
	adrp	x0, .LC17	// tmp154,
	add	x1, x0, :lo12:.LC17	//, tmp154,
	mov	x0, x2	//, tmp153
	bl	strcmp		//
	cmp	w0, 0	// _7,
	bne	.L22		//,
// problem113.c:60:     assert(strcmp(result, "dik") == 0 && strcmp(palindrome, "False") == 0);
	add	x2, sp, 24	// tmp155,,
	adrp	x0, .LC1	// tmp156,
	add	x1, x0, :lo12:.LC1	//, tmp156,
	mov	x0, x2	//, tmp155
	bl	strcmp		//
	cmp	w0, 0	// _8,
	beq	.L39		//,
.L22:
// problem113.c:60:     assert(strcmp(result, "dik") == 0 && strcmp(palindrome, "False") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp157,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp157,
	mov	w2, 60	//,
	adrp	x0, .LC5	// tmp158,
	add	x1, x0, :lo12:.LC5	//, tmp158,
	adrp	x0, .LC18	// tmp159,
	add	x0, x0, :lo12:.LC18	//, tmp159,
	bl	__assert_fail		//
.L39:
// problem113.c:62:     func0("a", "a", result, palindrome);
	add	x1, sp, 24	// tmp160,,
	add	x0, sp, 32	// tmp161,,
	mov	x3, x1	//, tmp160
	mov	x2, x0	//, tmp161
	adrp	x0, .LC19	// tmp162,
	add	x1, x0, :lo12:.LC19	//, tmp162,
	adrp	x0, .LC19	// tmp163,
	add	x0, x0, :lo12:.LC19	//, tmp163,
	bl	func0		//
// problem113.c:63:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	ldrb	w0, [sp, 32]	// _25, MEM[(const unsigned char * {ref-all})&result]
	cmp	w0, 0	// _9,
	bne	.L24		//,
// problem113.c:63:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	add	x2, sp, 24	// tmp164,,
	adrp	x0, .LC0	// tmp165,
	add	x1, x0, :lo12:.LC0	//, tmp165,
	mov	x0, x2	//, tmp164
	bl	strcmp		//
	cmp	w0, 0	// _10,
	beq	.L40		//,
.L24:
// problem113.c:63:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp166,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp166,
	mov	w2, 63	//,
	adrp	x0, .LC5	// tmp167,
	add	x1, x0, :lo12:.LC5	//, tmp167,
	adrp	x0, .LC20	// tmp168,
	add	x0, x0, :lo12:.LC20	//, tmp168,
	bl	__assert_fail		//
.L40:
// problem113.c:65:     func0("abcdedcba", "", result, palindrome);
	add	x1, sp, 24	// tmp169,,
	add	x0, sp, 32	// tmp170,,
	mov	x3, x1	//, tmp169
	mov	x2, x0	//, tmp170
	adrp	x0, .LC21	// tmp171,
	add	x1, x0, :lo12:.LC21	//, tmp171,
	adrp	x0, .LC12	// tmp172,
	add	x0, x0, :lo12:.LC12	//, tmp172,
	bl	func0		//
// problem113.c:66:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	add	x2, sp, 32	// tmp173,,
	adrp	x0, .LC12	// tmp174,
	add	x1, x0, :lo12:.LC12	//, tmp174,
	mov	x0, x2	//, tmp173
	bl	strcmp		//
	cmp	w0, 0	// _11,
	bne	.L26		//,
// problem113.c:66:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	add	x2, sp, 24	// tmp175,,
	adrp	x0, .LC0	// tmp176,
	add	x1, x0, :lo12:.LC0	//, tmp176,
	mov	x0, x2	//, tmp175
	bl	strcmp		//
	cmp	w0, 0	// _12,
	beq	.L41		//,
.L26:
// problem113.c:66:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp177,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp177,
	mov	w2, 66	//,
	adrp	x0, .LC5	// tmp178,
	add	x1, x0, :lo12:.LC5	//, tmp178,
	adrp	x0, .LC22	// tmp179,
	add	x0, x0, :lo12:.LC22	//, tmp179,
	bl	__assert_fail		//
.L41:
// problem113.c:68:     func0("abcdedcba", "v", result, palindrome);
	add	x1, sp, 24	// tmp180,,
	add	x0, sp, 32	// tmp181,,
	mov	x3, x1	//, tmp180
	mov	x2, x0	//, tmp181
	adrp	x0, .LC23	// tmp182,
	add	x1, x0, :lo12:.LC23	//, tmp182,
	adrp	x0, .LC12	// tmp183,
	add	x0, x0, :lo12:.LC12	//, tmp183,
	bl	func0		//
// problem113.c:69:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	add	x2, sp, 32	// tmp184,,
	adrp	x0, .LC12	// tmp185,
	add	x1, x0, :lo12:.LC12	//, tmp185,
	mov	x0, x2	//, tmp184
	bl	strcmp		//
	cmp	w0, 0	// _13,
	bne	.L28		//,
// problem113.c:69:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	add	x2, sp, 24	// tmp186,,
	adrp	x0, .LC0	// tmp187,
	add	x1, x0, :lo12:.LC0	//, tmp187,
	mov	x0, x2	//, tmp186
	bl	strcmp		//
	cmp	w0, 0	// _14,
	beq	.L42		//,
.L28:
// problem113.c:69:     assert(strcmp(result, "abcdedcba") == 0 && strcmp(palindrome, "True") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp188,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp188,
	mov	w2, 69	//,
	adrp	x0, .LC5	// tmp189,
	add	x1, x0, :lo12:.LC5	//, tmp189,
	adrp	x0, .LC22	// tmp190,
	add	x0, x0, :lo12:.LC22	//, tmp190,
	bl	__assert_fail		//
.L42:
// problem113.c:71:     func0("vabba", "v", result, palindrome);
	add	x1, sp, 24	// tmp191,,
	add	x0, sp, 32	// tmp192,,
	mov	x3, x1	//, tmp191
	mov	x2, x0	//, tmp192
	adrp	x0, .LC23	// tmp193,
	add	x1, x0, :lo12:.LC23	//, tmp193,
	adrp	x0, .LC24	// tmp194,
	add	x0, x0, :lo12:.LC24	//, tmp194,
	bl	func0		//
// problem113.c:72:     assert(strcmp(result, "abba") == 0 && strcmp(palindrome, "True") == 0);
	add	x2, sp, 32	// tmp195,,
	adrp	x0, .LC25	// tmp196,
	add	x1, x0, :lo12:.LC25	//, tmp196,
	mov	x0, x2	//, tmp195
	bl	strcmp		//
	cmp	w0, 0	// _15,
	bne	.L30		//,
// problem113.c:72:     assert(strcmp(result, "abba") == 0 && strcmp(palindrome, "True") == 0);
	add	x2, sp, 24	// tmp197,,
	adrp	x0, .LC0	// tmp198,
	add	x1, x0, :lo12:.LC0	//, tmp198,
	mov	x0, x2	//, tmp197
	bl	strcmp		//
	cmp	w0, 0	// _16,
	beq	.L43		//,
.L30:
// problem113.c:72:     assert(strcmp(result, "abba") == 0 && strcmp(palindrome, "True") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp199,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp199,
	mov	w2, 72	//,
	adrp	x0, .LC5	// tmp200,
	add	x1, x0, :lo12:.LC5	//, tmp200,
	adrp	x0, .LC26	// tmp201,
	add	x0, x0, :lo12:.LC26	//, tmp201,
	bl	__assert_fail		//
.L43:
// problem113.c:74:     func0("mamma", "mia", result, palindrome);
	add	x1, sp, 24	// tmp202,,
	add	x0, sp, 32	// tmp203,,
	mov	x3, x1	//, tmp202
	mov	x2, x0	//, tmp203
	adrp	x0, .LC27	// tmp204,
	add	x1, x0, :lo12:.LC27	//, tmp204,
	adrp	x0, .LC28	// tmp205,
	add	x0, x0, :lo12:.LC28	//, tmp205,
	bl	func0		//
// problem113.c:75:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	ldrb	w0, [sp, 32]	// _30, MEM[(const unsigned char * {ref-all})&result]
	cmp	w0, 0	// _17,
	bne	.L32		//,
// problem113.c:75:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	add	x2, sp, 24	// tmp206,,
	adrp	x0, .LC0	// tmp207,
	add	x1, x0, :lo12:.LC0	//, tmp207,
	mov	x0, x2	//, tmp206
	bl	strcmp		//
	cmp	w0, 0	// _18,
	beq	.L44		//,
.L32:
// problem113.c:75:     assert(strcmp(result, "") == 0 && strcmp(palindrome, "True") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp208,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp208,
	mov	w2, 75	//,
	adrp	x0, .LC5	// tmp209,
	add	x1, x0, :lo12:.LC5	//, tmp209,
	adrp	x0, .LC20	// tmp210,
	add	x0, x0, :lo12:.LC20	//, tmp210,
	bl	__assert_fail		//
.L44:
// problem113.c:77:     return 0;
	mov	w0, 0	// _31,
// problem113.c:78: }
	mov	w1, w0	// <retval>, _31
	adrp	x0, :got:__stack_chk_guard	// tmp213,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp212, tmp213,
	ldr	x3, [sp, 136]	// tmp215, D.5055
	ldr	x2, [x0]	// tmp216,
	subs	x3, x3, x2	// tmp215, tmp216
	mov	x2, 0	// tmp216
	beq	.L35		//,
	bl	__stack_chk_fail		//
.L35:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 144	//,,,
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
