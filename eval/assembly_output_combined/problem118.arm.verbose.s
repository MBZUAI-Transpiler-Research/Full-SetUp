	.arch armv8-a
	.file	"problem118.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC5:
	.string	"aeiouAEIOU"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!	//,,,
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -96
	str	x0, [sp, 56]	// s, s
	str	w1, [sp, 52]	// n, n
	str	x2, [sp, 40]	// returnSize, returnSize
// problem118.c:7:     const char *vowels = "aeiouAEIOU";
	adrp	x0, .LC5	// tmp149,
	add	x0, x0, :lo12:.LC5	// tmp148, tmp149,
	str	x0, [sp, 88]	// tmp148, vowels
// problem118.c:8:     char **out = NULL;
	str	xzr, [sp, 80]	//, out
// problem118.c:9:     int numc = 0, word_count = 0, begin = 0;
	str	wzr, [sp, 64]	//, numc
// problem118.c:9:     int numc = 0, word_count = 0, begin = 0;
	str	wzr, [sp, 68]	//, word_count
// problem118.c:9:     int numc = 0, word_count = 0, begin = 0;
	str	wzr, [sp, 72]	//, begin
// problem118.c:10:     size_t length = strlen(s);
	ldr	x0, [sp, 56]	//, s
	bl	strlen		//
	str	x0, [sp, 96]	//, length
// problem118.c:11:     char *current = (char *)malloc(length + 1);
	ldr	x0, [sp, 96]	// tmp150, length
	add	x0, x0, 1	// _1, tmp150,
	bl	malloc		//
	str	x0, [sp, 104]	// tmp151, current
// problem118.c:13:     for (int i = 0; i <= length; i++) {
	str	wzr, [sp, 76]	//, i
// problem118.c:13:     for (int i = 0; i <= length; i++) {
	b	.L2		//
.L7:
// problem118.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	bl	__ctype_b_loc		//
// problem118.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	ldr	x1, [x0]	// _3, *_2
	ldrsw	x0, [sp, 76]	// _4, i
	ldr	x2, [sp, 56]	// tmp152, s
	add	x0, x2, x0	// _5, tmp152, _4
	ldrb	w0, [x0]	// _6, *_5
	and	x0, x0, 255	// _7, _6
	lsl	x0, x0, 1	// _8, _7,
	add	x0, x1, x0	// _9, _3, _8
	ldrh	w0, [x0]	// _10, *_9
	and	w0, w0, 8192	// _12, _11,
// problem118.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	cmp	w0, 0	// _12,
	bne	.L3		//,
// problem118.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	ldrsw	x0, [sp, 76]	// _13, i
	ldr	x1, [sp, 56]	// tmp153, s
	add	x0, x1, x0	// _14, tmp153, _13
	ldrb	w0, [x0]	// _15, *_14
// problem118.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	cmp	w0, 0	// _15,
	bne	.L4		//,
.L3:
// problem118.c:15:             if (numc == n) {
	ldr	w1, [sp, 64]	// tmp154, numc
	ldr	w0, [sp, 52]	// tmp155, n
	cmp	w1, w0	// tmp154, tmp155
	bne	.L5		//,
// problem118.c:16:                 current[i - begin] = '\0';
	ldr	w1, [sp, 76]	// tmp156, i
	ldr	w0, [sp, 72]	// tmp157, begin
	sub	w0, w1, w0	// _16, tmp156, tmp157
	sxtw	x0, w0	// _17, _16
// problem118.c:16:                 current[i - begin] = '\0';
	ldr	x1, [sp, 104]	// tmp158, current
	add	x0, x1, x0	// _18, tmp158, _17
// problem118.c:16:                 current[i - begin] = '\0';
	strb	wzr, [x0]	//, *_18
// problem118.c:17:                 out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
	ldr	w0, [sp, 68]	// tmp159, word_count
	add	w0, w0, 1	// _19, tmp159,
	sxtw	x0, w0	// _20, _19
// problem118.c:17:                 out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
	lsl	x0, x0, 3	// _21, _20,
	mov	x1, x0	//, _21
	ldr	x0, [sp, 80]	//, out
	bl	realloc		//
	str	x0, [sp, 80]	//, out
// problem118.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	ldr	x0, [sp, 104]	//, current
	bl	strlen		//
// problem118.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	add	x2, x0, 1	// _23, _22,
// problem118.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	ldrsw	x0, [sp, 68]	// _24, word_count
	lsl	x0, x0, 3	// _25, _24,
	ldr	x1, [sp, 80]	// tmp160, out
	add	x19, x1, x0	// _26, tmp160, _25
// problem118.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	mov	x0, x2	//, _23
	bl	malloc		//
// problem118.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	str	x0, [x19]	// _27, *_26
// problem118.c:19:                 strcpy(out[word_count], current);
	ldrsw	x0, [sp, 68]	// _28, word_count
	lsl	x0, x0, 3	// _29, _28,
	ldr	x1, [sp, 80]	// tmp162, out
	add	x0, x1, x0	// _30, tmp162, _29
// problem118.c:19:                 strcpy(out[word_count], current);
	ldr	x0, [x0]	// _31, *_30
	ldr	x1, [sp, 104]	//, current
	bl	strcpy		//
// problem118.c:20:                 word_count++;
	ldr	w0, [sp, 68]	// tmp164, word_count
	add	w0, w0, 1	// tmp163, tmp164,
	str	w0, [sp, 68]	// tmp163, word_count
.L5:
// problem118.c:22:             begin = i + 1;
	ldr	w0, [sp, 76]	// tmp166, i
	add	w0, w0, 1	// tmp165, tmp166,
	str	w0, [sp, 72]	// tmp165, begin
// problem118.c:23:             numc = 0;
	str	wzr, [sp, 64]	//, numc
	b	.L6		//
.L4:
// problem118.c:25:             current[i - begin] = s[i];
	ldrsw	x0, [sp, 76]	// _32, i
	ldr	x1, [sp, 56]	// tmp167, s
	add	x1, x1, x0	// _33, tmp167, _32
// problem118.c:25:             current[i - begin] = s[i];
	ldr	w2, [sp, 76]	// tmp168, i
	ldr	w0, [sp, 72]	// tmp169, begin
	sub	w0, w2, w0	// _34, tmp168, tmp169
	sxtw	x0, w0	// _35, _34
// problem118.c:25:             current[i - begin] = s[i];
	ldr	x2, [sp, 104]	// tmp170, current
	add	x0, x2, x0	// _36, tmp170, _35
// problem118.c:25:             current[i - begin] = s[i];
	ldrb	w1, [x1]	// _37, *_33
// problem118.c:25:             current[i - begin] = s[i];
	strb	w1, [x0]	// tmp171, *_36
// problem118.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	ldrsw	x0, [sp, 76]	// _38, i
	ldr	x1, [sp, 56]	// tmp172, s
	add	x0, x1, x0	// _39, tmp172, _38
	ldrb	w0, [x0]	// _40, *_39
// problem118.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	mov	w1, w0	//, _41
	ldr	x0, [sp, 88]	//, vowels
	bl	strchr		//
// problem118.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	cmp	x0, 0	// _42,
	bne	.L6		//,
// problem118.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	bl	__ctype_b_loc		//
	ldr	x1, [x0]	// _44, *_43
	ldrsw	x0, [sp, 76]	// _45, i
	ldr	x2, [sp, 56]	// tmp173, s
	add	x0, x2, x0	// _46, tmp173, _45
	ldrb	w0, [x0]	// _47, *_46
	and	x0, x0, 255	// _48, _47
	lsl	x0, x0, 1	// _49, _48,
	add	x0, x1, x0	// _50, _44, _49
	ldrh	w0, [x0]	// _51, *_50
	and	w0, w0, 1024	// _53, _52,
// problem118.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	cmp	w0, 0	// _53,
	beq	.L6		//,
// problem118.c:27:                 numc++;
	ldr	w0, [sp, 64]	// tmp175, numc
	add	w0, w0, 1	// tmp174, tmp175,
	str	w0, [sp, 64]	// tmp174, numc
.L6:
// problem118.c:13:     for (int i = 0; i <= length; i++) {
	ldr	w0, [sp, 76]	// tmp177, i
	add	w0, w0, 1	// tmp176, tmp177,
	str	w0, [sp, 76]	// tmp176, i
.L2:
// problem118.c:13:     for (int i = 0; i <= length; i++) {
	ldrsw	x0, [sp, 76]	// _54, i
	ldr	x1, [sp, 96]	// tmp178, length
	cmp	x1, x0	// tmp178, _54
	bcs	.L7		//,
// problem118.c:31:     free(current);
	ldr	x0, [sp, 104]	//, current
	bl	free		//
// problem118.c:33:     *returnSize = word_count;
	ldr	x0, [sp, 40]	// tmp179, returnSize
	ldr	w1, [sp, 68]	// tmp180, word_count
	str	w1, [x0]	// tmp180, *returnSize_81(D)
// problem118.c:34:     return out;
	ldr	x0, [sp, 80]	// _83, out
// problem118.c:35: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 112	//,,,
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
	str	w1, [sp, 36]	// aSize, aSize
	str	x2, [sp, 24]	// b, b
	str	w3, [sp, 32]	// bSize, bSize
// problem118.c:45:     if (aSize != bSize) return 0;
	ldr	w1, [sp, 36]	// tmp103, aSize
	ldr	w0, [sp, 32]	// tmp104, bSize
	cmp	w1, w0	// tmp103, tmp104
	beq	.L10		//,
// problem118.c:45:     if (aSize != bSize) return 0;
	mov	w0, 0	// _11,
// problem118.c:45:     if (aSize != bSize) return 0;
	b	.L11		//
.L10:
// problem118.c:46:     for (int i = 0; i < aSize; i++) {
	str	wzr, [sp, 60]	//, i
// problem118.c:46:     for (int i = 0; i < aSize; i++) {
	b	.L12		//
.L14:
// problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldrsw	x0, [sp, 60]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 40]	// tmp105, a
	add	x0, x1, x0	// _3, tmp105, _2
// problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldr	x2, [x0]	// _4, *_3
// problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldrsw	x0, [sp, 60]	// _5, i
	lsl	x0, x0, 3	// _6, _5,
	ldr	x1, [sp, 24]	// tmp106, b
	add	x0, x1, x0	// _7, tmp106, _6
// problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	ldr	x0, [x0]	// _8, *_7
	mov	x1, x0	//, _8
	mov	x0, x2	//, _4
	bl	strcmp		//
// problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	cmp	w0, 0	// _9,
	beq	.L13		//,
// problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	mov	w0, 0	// _11,
// problem118.c:47:         if (strcmp(a[i], b[i]) != 0) return 0;
	b	.L11		//
.L13:
// problem118.c:46:     for (int i = 0; i < aSize; i++) {
	ldr	w0, [sp, 60]	// tmp108, i
	add	w0, w0, 1	// tmp107, tmp108,
	str	w0, [sp, 60]	// tmp107, i
.L12:
// problem118.c:46:     for (int i = 0; i < aSize; i++) {
	ldr	w1, [sp, 60]	// tmp109, i
	ldr	w0, [sp, 36]	// tmp110, aSize
	cmp	w1, w0	// tmp109, tmp110
	blt	.L14		//,
// problem118.c:49:     return 1;
	mov	w0, 1	// _11,
.L11:
// problem118.c:50: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.align	2
	.global	free_words
	.type	free_words, %function
free_words:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// words, words
	str	w1, [sp, 20]	// count, count
// problem118.c:53:     for (int i = 0; i < count; i++) {
	str	wzr, [sp, 44]	//, i
// problem118.c:53:     for (int i = 0; i < count; i++) {
	b	.L16		//
.L17:
// problem118.c:54:         free(words[i]);
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 24]	// tmp96, words
	add	x0, x1, x0	// _3, tmp96, _2
// problem118.c:54:         free(words[i]);
	ldr	x0, [x0]	// _4, *_3
	bl	free		//
// problem118.c:53:     for (int i = 0; i < count; i++) {
	ldr	w0, [sp, 44]	// tmp98, i
	add	w0, w0, 1	// tmp97, tmp98,
	str	w0, [sp, 44]	// tmp97, i
.L16:
// problem118.c:53:     for (int i = 0; i < count; i++) {
	ldr	w1, [sp, 44]	// tmp99, i
	ldr	w0, [sp, 20]	// tmp100, count
	cmp	w1, w0	// tmp99, tmp100
	blt	.L17		//,
// problem118.c:56:     free(words);
	ldr	x0, [sp, 24]	//, words
	bl	free		//
// problem118.c:57: }
	nop	
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	free_words, .-free_words
	.section	.rodata
	.align	3
.LC6:
	.string	"Mary had a little lamb"
	.align	3
.LC7:
	.string	"little"
	.align	3
.LC8:
	.string	"problem118.c"
	.align	3
.LC9:
	.string	"issame(words, size, expected1, 1)"
	.align	3
.LC10:
	.string	"Mary"
	.align	3
.LC11:
	.string	"lamb"
	.align	3
.LC12:
	.string	"issame(words, size, expected2, 2)"
	.align	3
.LC13:
	.string	"simple white space"
	.align	3
.LC14:
	.string	"size == 0"
	.align	3
.LC15:
	.string	"Hello world"
	.align	3
.LC16:
	.string	"world"
	.align	3
.LC17:
	.string	"issame(words, size, expected3, 1)"
	.align	3
.LC18:
	.string	"Uncle sam"
	.align	3
.LC19:
	.string	"Uncle"
	.align	3
.LC20:
	.string	"issame(words, size, expected4, 1)"
	.align	3
.LC21:
	.string	""
	.align	3
.LC22:
	.string	"a b c d e f"
	.align	3
.LC24:
	.string	"issame(words, size, expected5, 4)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9:
	.cfi_startproc
	sub	sp, sp, #112	//,,
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, 96]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 96	//,,
// problem118.c:59: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp113,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp113,
	ldr	x1, [x0]	// tmp172,
	str	x1, [sp, 88]	// tmp172, D.5785
	mov	x1, 0	// tmp172
// problem118.c:63:     words = func0("Mary had a little lamb", 4, &size);
	add	x0, sp, 4	// tmp114,,
	mov	x2, x0	//, tmp114
	mov	w1, 4	//,
	adrp	x0, .LC6	// tmp115,
	add	x0, x0, :lo12:.LC6	//, tmp115,
	bl	func0		//
	str	x0, [sp, 8]	//, words
// problem118.c:64:     char *expected1[] = {"little"};
	adrp	x0, .LC7	// tmp117,
	add	x0, x0, :lo12:.LC7	// tmp116, tmp117,
	str	x0, [sp, 16]	// tmp116, expected1[0]
// problem118.c:65:     assert(issame(words, size, expected1, 1));
	ldr	w0, [sp, 4]	// size.0_1, size
	add	x1, sp, 16	// tmp118,,
	mov	w3, 1	//,
	mov	x2, x1	//, tmp118
	mov	w1, w0	//, size.0_1
	ldr	x0, [sp, 8]	//, words
	bl	issame		//
// problem118.c:65:     assert(issame(words, size, expected1, 1));
	cmp	w0, 0	// _2,
	bne	.L19		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 65	//,
	adrp	x0, .LC8	// tmp120,
	add	x1, x0, :lo12:.LC8	//, tmp120,
	adrp	x0, .LC9	// tmp121,
	add	x0, x0, :lo12:.LC9	//, tmp121,
	bl	__assert_fail		//
.L19:
// problem118.c:66:     free_words(words, size);
	ldr	w0, [sp, 4]	// size.1_3, size
	mov	w1, w0	//, size.1_3
	ldr	x0, [sp, 8]	//, words
	bl	free_words		//
// problem118.c:68:     words = func0("Mary had a little lamb", 3, &size);
	add	x0, sp, 4	// tmp122,,
	mov	x2, x0	//, tmp122
	mov	w1, 3	//,
	adrp	x0, .LC6	// tmp123,
	add	x0, x0, :lo12:.LC6	//, tmp123,
	bl	func0		//
	str	x0, [sp, 8]	//, words
// problem118.c:69:     char *expected2[] = {"Mary", "lamb"};
	adrp	x0, .LC10	// tmp125,
	add	x0, x0, :lo12:.LC10	// tmp124, tmp125,
	str	x0, [sp, 40]	// tmp124, expected2[0]
	adrp	x0, .LC11	// tmp127,
	add	x0, x0, :lo12:.LC11	// tmp126, tmp127,
	str	x0, [sp, 48]	// tmp126, expected2[1]
// problem118.c:70:     assert(issame(words, size, expected2, 2));
	ldr	w0, [sp, 4]	// size.2_4, size
	add	x1, sp, 40	// tmp128,,
	mov	w3, 2	//,
	mov	x2, x1	//, tmp128
	mov	w1, w0	//, size.2_4
	ldr	x0, [sp, 8]	//, words
	bl	issame		//
// problem118.c:70:     assert(issame(words, size, expected2, 2));
	cmp	w0, 0	// _5,
	bne	.L20		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp129,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp129,
	mov	w2, 70	//,
	adrp	x0, .LC8	// tmp130,
	add	x1, x0, :lo12:.LC8	//, tmp130,
	adrp	x0, .LC12	// tmp131,
	add	x0, x0, :lo12:.LC12	//, tmp131,
	bl	__assert_fail		//
.L20:
// problem118.c:71:     free_words(words, size);
	ldr	w0, [sp, 4]	// size.3_6, size
	mov	w1, w0	//, size.3_6
	ldr	x0, [sp, 8]	//, words
	bl	free_words		//
// problem118.c:73:     words = func0("simple white space", 2, &size);
	add	x0, sp, 4	// tmp132,,
	mov	x2, x0	//, tmp132
	mov	w1, 2	//,
	adrp	x0, .LC13	// tmp133,
	add	x0, x0, :lo12:.LC13	//, tmp133,
	bl	func0		//
	str	x0, [sp, 8]	//, words
// problem118.c:74:     assert(size == 0);
	ldr	w0, [sp, 4]	// size.4_7, size
	cmp	w0, 0	// size.4_7,
	beq	.L21		//,
// problem118.c:74:     assert(size == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp134,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp134,
	mov	w2, 74	//,
	adrp	x0, .LC8	// tmp135,
	add	x1, x0, :lo12:.LC8	//, tmp135,
	adrp	x0, .LC14	// tmp136,
	add	x0, x0, :lo12:.LC14	//, tmp136,
	bl	__assert_fail		//
.L21:
// problem118.c:75:     free_words(words, size);
	ldr	w0, [sp, 4]	// size.5_8, size
	mov	w1, w0	//, size.5_8
	ldr	x0, [sp, 8]	//, words
	bl	free_words		//
// problem118.c:77:     words = func0("Hello world", 4, &size);
	add	x0, sp, 4	// tmp137,,
	mov	x2, x0	//, tmp137
	mov	w1, 4	//,
	adrp	x0, .LC15	// tmp138,
	add	x0, x0, :lo12:.LC15	//, tmp138,
	bl	func0		//
	str	x0, [sp, 8]	//, words
// problem118.c:78:     char *expected3[] = {"world"};
	adrp	x0, .LC16	// tmp140,
	add	x0, x0, :lo12:.LC16	// tmp139, tmp140,
	str	x0, [sp, 24]	// tmp139, expected3[0]
// problem118.c:79:     assert(issame(words, size, expected3, 1));
	ldr	w0, [sp, 4]	// size.6_9, size
	add	x1, sp, 24	// tmp141,,
	mov	w3, 1	//,
	mov	x2, x1	//, tmp141
	mov	w1, w0	//, size.6_9
	ldr	x0, [sp, 8]	//, words
	bl	issame		//
// problem118.c:79:     assert(issame(words, size, expected3, 1));
	cmp	w0, 0	// _10,
	bne	.L22		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp142,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp142,
	mov	w2, 79	//,
	adrp	x0, .LC8	// tmp143,
	add	x1, x0, :lo12:.LC8	//, tmp143,
	adrp	x0, .LC17	// tmp144,
	add	x0, x0, :lo12:.LC17	//, tmp144,
	bl	__assert_fail		//
.L22:
// problem118.c:80:     free_words(words, size);
	ldr	w0, [sp, 4]	// size.7_11, size
	mov	w1, w0	//, size.7_11
	ldr	x0, [sp, 8]	//, words
	bl	free_words		//
// problem118.c:82:     words = func0("Uncle sam", 3, &size);
	add	x0, sp, 4	// tmp145,,
	mov	x2, x0	//, tmp145
	mov	w1, 3	//,
	adrp	x0, .LC18	// tmp146,
	add	x0, x0, :lo12:.LC18	//, tmp146,
	bl	func0		//
	str	x0, [sp, 8]	//, words
// problem118.c:83:     char *expected4[] = {"Uncle"};
	adrp	x0, .LC19	// tmp148,
	add	x0, x0, :lo12:.LC19	// tmp147, tmp148,
	str	x0, [sp, 32]	// tmp147, expected4[0]
// problem118.c:84:     assert(issame(words, size, expected4, 1));
	ldr	w0, [sp, 4]	// size.8_12, size
	add	x1, sp, 32	// tmp149,,
	mov	w3, 1	//,
	mov	x2, x1	//, tmp149
	mov	w1, w0	//, size.8_12
	ldr	x0, [sp, 8]	//, words
	bl	issame		//
// problem118.c:84:     assert(issame(words, size, expected4, 1));
	cmp	w0, 0	// _13,
	bne	.L23		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp150,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp150,
	mov	w2, 84	//,
	adrp	x0, .LC8	// tmp151,
	add	x1, x0, :lo12:.LC8	//, tmp151,
	adrp	x0, .LC20	// tmp152,
	add	x0, x0, :lo12:.LC20	//, tmp152,
	bl	__assert_fail		//
.L23:
// problem118.c:85:     free_words(words, size);
	ldr	w0, [sp, 4]	// size.9_14, size
	mov	w1, w0	//, size.9_14
	ldr	x0, [sp, 8]	//, words
	bl	free_words		//
// problem118.c:87:     words = func0("", 4, &size);
	add	x0, sp, 4	// tmp153,,
	mov	x2, x0	//, tmp153
	mov	w1, 4	//,
	adrp	x0, .LC21	// tmp154,
	add	x0, x0, :lo12:.LC21	//, tmp154,
	bl	func0		//
	str	x0, [sp, 8]	//, words
// problem118.c:88:     assert(size == 0);
	ldr	w0, [sp, 4]	// size.10_15, size
	cmp	w0, 0	// size.10_15,
	beq	.L24		//,
// problem118.c:88:     assert(size == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp155,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp155,
	mov	w2, 88	//,
	adrp	x0, .LC8	// tmp156,
	add	x1, x0, :lo12:.LC8	//, tmp156,
	adrp	x0, .LC14	// tmp157,
	add	x0, x0, :lo12:.LC14	//, tmp157,
	bl	__assert_fail		//
.L24:
// problem118.c:89:     free_words(words, size);
	ldr	w0, [sp, 4]	// size.11_16, size
	mov	w1, w0	//, size.11_16
	ldr	x0, [sp, 8]	//, words
	bl	free_words		//
// problem118.c:91:     words = func0("a b c d e f", 1, &size);
	add	x0, sp, 4	// tmp158,,
	mov	x2, x0	//, tmp158
	mov	w1, 1	//,
	adrp	x0, .LC22	// tmp159,
	add	x0, x0, :lo12:.LC22	//, tmp159,
	bl	func0		//
	str	x0, [sp, 8]	//, words
// problem118.c:92:     char *expected5[] = {"b", "c", "d", "f"};
	add	x0, sp, 104	// tmp160,,
	sub	x0, x0, #48	// tmp162, tmp160,
	adrp	x1, .LC23	// tmp164,
	add	x1, x1, :lo12:.LC23	// tmp163, tmp164,
	ld1	{v0.16b - v1.16b}, [x1]	// tmp165,
	st1	{v0.16b - v1.16b}, [x0]	// tmp165, expected5
// problem118.c:93:     assert(issame(words, size, expected5, 4));
	ldr	w0, [sp, 4]	// size.12_17, size
	add	x1, sp, 56	// tmp166,,
	mov	w3, 4	//,
	mov	x2, x1	//, tmp166
	mov	w1, w0	//, size.12_17
	ldr	x0, [sp, 8]	//, words
	bl	issame		//
// problem118.c:93:     assert(issame(words, size, expected5, 4));
	cmp	w0, 0	// _18,
	bne	.L25		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp167,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp167,
	mov	w2, 93	//,
	adrp	x0, .LC8	// tmp168,
	add	x1, x0, :lo12:.LC8	//, tmp168,
	adrp	x0, .LC24	// tmp169,
	add	x0, x0, :lo12:.LC24	//, tmp169,
	bl	__assert_fail		//
.L25:
// problem118.c:94:     free_words(words, size);
	ldr	w0, [sp, 4]	// size.13_19, size
	mov	w1, w0	//, size.13_19
	ldr	x0, [sp, 8]	//, words
	bl	free_words		//
// problem118.c:96:     return 0;
	mov	w0, 0	// _60,
// problem118.c:97: }
	mov	w1, w0	// <retval>, _60
	adrp	x0, :got:__stack_chk_guard	// tmp171,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp171,
	ldr	x3, [sp, 88]	// tmp173, D.5785
	ldr	x2, [x0]	// tmp174,
	subs	x3, x3, x2	// tmp173, tmp174
	mov	x2, 0	// tmp174
	beq	.L27		//,
	bl	__stack_chk_fail		//
.L27:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 96]	//,,
	add	sp, sp, 112	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"b"
	.align	3
.LC1:
	.string	"c"
	.align	3
.LC2:
	.string	"d"
	.align	3
.LC3:
	.string	"f"
	.data
	.align	3
.LC23:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
