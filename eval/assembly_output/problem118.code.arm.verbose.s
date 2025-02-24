	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
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
// code.c:7:     const char *vowels = "aeiouAEIOU";
	adrp	x0, .LC0	// tmp149,
	add	x0, x0, :lo12:.LC0	// tmp148, tmp149,
	str	x0, [sp, 88]	// tmp148, vowels
// code.c:8:     char **out = NULL;
	str	xzr, [sp, 80]	//, out
// code.c:9:     int numc = 0, word_count = 0, begin = 0;
	str	wzr, [sp, 64]	//, numc
// code.c:9:     int numc = 0, word_count = 0, begin = 0;
	str	wzr, [sp, 68]	//, word_count
// code.c:9:     int numc = 0, word_count = 0, begin = 0;
	str	wzr, [sp, 72]	//, begin
// code.c:10:     size_t length = strlen(s);
	ldr	x0, [sp, 56]	//, s
	bl	strlen		//
	str	x0, [sp, 96]	//, length
// code.c:11:     char *current = (char *)malloc(length + 1);
	ldr	x0, [sp, 96]	// tmp150, length
	add	x0, x0, 1	// _1, tmp150,
	bl	malloc		//
	str	x0, [sp, 104]	// tmp151, current
// code.c:13:     for (int i = 0; i <= length; i++) {
	str	wzr, [sp, 76]	//, i
// code.c:13:     for (int i = 0; i <= length; i++) {
	b	.L2		//
.L7:
// code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	bl	__ctype_b_loc		//
// code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
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
// code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	cmp	w0, 0	// _12,
	bne	.L3		//,
// code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	ldrsw	x0, [sp, 76]	// _13, i
	ldr	x1, [sp, 56]	// tmp153, s
	add	x0, x1, x0	// _14, tmp153, _13
	ldrb	w0, [x0]	// _15, *_14
// code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	cmp	w0, 0	// _15,
	bne	.L4		//,
.L3:
// code.c:15:             if (numc == n) {
	ldr	w1, [sp, 64]	// tmp154, numc
	ldr	w0, [sp, 52]	// tmp155, n
	cmp	w1, w0	// tmp154, tmp155
	bne	.L5		//,
// code.c:16:                 current[i - begin] = '\0';
	ldr	w1, [sp, 76]	// tmp156, i
	ldr	w0, [sp, 72]	// tmp157, begin
	sub	w0, w1, w0	// _16, tmp156, tmp157
	sxtw	x0, w0	// _17, _16
// code.c:16:                 current[i - begin] = '\0';
	ldr	x1, [sp, 104]	// tmp158, current
	add	x0, x1, x0	// _18, tmp158, _17
// code.c:16:                 current[i - begin] = '\0';
	strb	wzr, [x0]	//, *_18
// code.c:17:                 out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
	ldr	w0, [sp, 68]	// tmp159, word_count
	add	w0, w0, 1	// _19, tmp159,
	sxtw	x0, w0	// _20, _19
// code.c:17:                 out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
	lsl	x0, x0, 3	// _21, _20,
	mov	x1, x0	//, _21
	ldr	x0, [sp, 80]	//, out
	bl	realloc		//
	str	x0, [sp, 80]	//, out
// code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	ldr	x0, [sp, 104]	//, current
	bl	strlen		//
// code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	add	x2, x0, 1	// _23, _22,
// code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	ldrsw	x0, [sp, 68]	// _24, word_count
	lsl	x0, x0, 3	// _25, _24,
	ldr	x1, [sp, 80]	// tmp160, out
	add	x19, x1, x0	// _26, tmp160, _25
// code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	mov	x0, x2	//, _23
	bl	malloc		//
// code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	str	x0, [x19]	// _27, *_26
// code.c:19:                 strcpy(out[word_count], current);
	ldrsw	x0, [sp, 68]	// _28, word_count
	lsl	x0, x0, 3	// _29, _28,
	ldr	x1, [sp, 80]	// tmp162, out
	add	x0, x1, x0	// _30, tmp162, _29
// code.c:19:                 strcpy(out[word_count], current);
	ldr	x0, [x0]	// _31, *_30
	ldr	x1, [sp, 104]	//, current
	bl	strcpy		//
// code.c:20:                 word_count++;
	ldr	w0, [sp, 68]	// tmp164, word_count
	add	w0, w0, 1	// tmp163, tmp164,
	str	w0, [sp, 68]	// tmp163, word_count
.L5:
// code.c:22:             begin = i + 1;
	ldr	w0, [sp, 76]	// tmp166, i
	add	w0, w0, 1	// tmp165, tmp166,
	str	w0, [sp, 72]	// tmp165, begin
// code.c:23:             numc = 0;
	str	wzr, [sp, 64]	//, numc
	b	.L6		//
.L4:
// code.c:25:             current[i - begin] = s[i];
	ldrsw	x0, [sp, 76]	// _32, i
	ldr	x1, [sp, 56]	// tmp167, s
	add	x1, x1, x0	// _33, tmp167, _32
// code.c:25:             current[i - begin] = s[i];
	ldr	w2, [sp, 76]	// tmp168, i
	ldr	w0, [sp, 72]	// tmp169, begin
	sub	w0, w2, w0	// _34, tmp168, tmp169
	sxtw	x0, w0	// _35, _34
// code.c:25:             current[i - begin] = s[i];
	ldr	x2, [sp, 104]	// tmp170, current
	add	x0, x2, x0	// _36, tmp170, _35
// code.c:25:             current[i - begin] = s[i];
	ldrb	w1, [x1]	// _37, *_33
// code.c:25:             current[i - begin] = s[i];
	strb	w1, [x0]	// tmp171, *_36
// code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	ldrsw	x0, [sp, 76]	// _38, i
	ldr	x1, [sp, 56]	// tmp172, s
	add	x0, x1, x0	// _39, tmp172, _38
	ldrb	w0, [x0]	// _40, *_39
// code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	mov	w1, w0	//, _41
	ldr	x0, [sp, 88]	//, vowels
	bl	strchr		//
// code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	cmp	x0, 0	// _42,
	bne	.L6		//,
// code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
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
// code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	cmp	w0, 0	// _53,
	beq	.L6		//,
// code.c:27:                 numc++;
	ldr	w0, [sp, 64]	// tmp175, numc
	add	w0, w0, 1	// tmp174, tmp175,
	str	w0, [sp, 64]	// tmp174, numc
.L6:
// code.c:13:     for (int i = 0; i <= length; i++) {
	ldr	w0, [sp, 76]	// tmp177, i
	add	w0, w0, 1	// tmp176, tmp177,
	str	w0, [sp, 76]	// tmp176, i
.L2:
// code.c:13:     for (int i = 0; i <= length; i++) {
	ldrsw	x0, [sp, 76]	// _54, i
	ldr	x1, [sp, 96]	// tmp178, length
	cmp	x1, x0	// tmp178, _54
	bcs	.L7		//,
// code.c:31:     free(current);
	ldr	x0, [sp, 104]	//, current
	bl	free		//
// code.c:33:     *returnSize = word_count;
	ldr	x0, [sp, 40]	// tmp179, returnSize
	ldr	w1, [sp, 68]	// tmp180, word_count
	str	w1, [x0]	// tmp180, *returnSize_81(D)
// code.c:34:     return out;
	ldr	x0, [sp, 80]	// _83, out
// code.c:35: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
