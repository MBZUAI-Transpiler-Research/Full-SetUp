	.arch armv8-a
	.file	"problem159.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC28:
	.string	""
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #336	//,,
	.cfi_def_cfa_offset 336
	stp	x29, x30, [sp, 320]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 320	//,,
	str	x0, [sp, 8]	// words, words
	str	w1, [sp, 4]	// count, count
// problem159.c:4: char *func0(char *words[], int count) {
	adrp	x0, :got:__stack_chk_guard	// tmp127,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp127,
	ldr	x1, [x0]	// tmp162,
	str	x1, [sp, 312]	// tmp162, D.5160
	mov	x1, 0	// tmp162
// problem159.c:5:     char *max = "";
	adrp	x0, .LC28	// tmp129,
	add	x0, x0, :lo12:.LC28	// tmp128, tmp129,
	str	x0, [sp, 48]	// tmp128, max
// problem159.c:6:     int maxu = 0;
	str	wzr, [sp, 28]	//, maxu
// problem159.c:7:     for (int i = 0; i < count; i++) {
	str	wzr, [sp, 32]	//, i
// problem159.c:7:     for (int i = 0; i < count; i++) {
	b	.L2		//
.L8:
// problem159.c:8:         char unique[256] = {0};
	add	x0, sp, 56	// tmp130,,
	movi	v0.4s, 0	// tmp131
	stp	q0, q0, [x0]	// tmp131, tmp131, unique
	stp	q0, q0, [x0, 32]	// tmp131, tmp131, unique
	stp	q0, q0, [x0, 64]	// tmp131, tmp131, unique
	stp	q0, q0, [x0, 96]	// tmp131, tmp131, unique
	stp	q0, q0, [x0, 128]	// tmp131, tmp131, unique
	stp	q0, q0, [x0, 160]	// tmp131, tmp131, unique
	stp	q0, q0, [x0, 192]	// tmp131, tmp131, unique
	stp	q0, q0, [x0, 224]	// tmp131, tmp131, unique
// problem159.c:9:         int unique_count = 0;
	str	wzr, [sp, 36]	//, unique_count
// problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	str	wzr, [sp, 40]	//, j
// problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	b	.L3		//
.L5:
// problem159.c:11:             if (!strchr(unique, words[i][j])) {
	ldrsw	x0, [sp, 32]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 8]	// tmp132, words
	add	x0, x1, x0	// _3, tmp132, _2
	ldr	x1, [x0]	// _4, *_3
// problem159.c:11:             if (!strchr(unique, words[i][j])) {
	ldrsw	x0, [sp, 40]	// _5, j
	add	x0, x1, x0	// _6, _4, _5
	ldrb	w0, [x0]	// _7, *_6
// problem159.c:11:             if (!strchr(unique, words[i][j])) {
	mov	w1, w0	// _8, _7
	add	x0, sp, 56	// tmp133,,
	bl	strchr		//
// problem159.c:11:             if (!strchr(unique, words[i][j])) {
	cmp	x0, 0	// _9,
	bne	.L4		//,
// problem159.c:12:                 int len = strlen(unique);
	add	x0, sp, 56	// tmp134,,
	bl	strlen		//
// problem159.c:12:                 int len = strlen(unique);
	str	w0, [sp, 44]	// tmp135, len
// problem159.c:13:                 unique[len] = words[i][j];
	ldrsw	x0, [sp, 32]	// _11, i
	lsl	x0, x0, 3	// _12, _11,
	ldr	x1, [sp, 8]	// tmp136, words
	add	x0, x1, x0	// _13, tmp136, _12
	ldr	x1, [x0]	// _14, *_13
// problem159.c:13:                 unique[len] = words[i][j];
	ldrsw	x0, [sp, 40]	// _15, j
	add	x0, x1, x0	// _16, _14, _15
	ldrb	w2, [x0]	// _17, *_16
// problem159.c:13:                 unique[len] = words[i][j];
	ldrsw	x0, [sp, 44]	// tmp137, len
	add	x1, sp, 56	// tmp138,,
	strb	w2, [x1, x0]	// tmp139, unique[len_59]
// problem159.c:14:                 unique[len + 1] = '\0';
	ldr	w0, [sp, 44]	// tmp140, len
	add	w0, w0, 1	// _18, tmp140,
// problem159.c:14:                 unique[len + 1] = '\0';
	sxtw	x0, w0	// tmp141, _18
	add	x1, sp, 56	// tmp142,,
	strb	wzr, [x1, x0]	//, unique[_18]
// problem159.c:15:                 unique_count++;
	ldr	w0, [sp, 36]	// tmp144, unique_count
	add	w0, w0, 1	// tmp143, tmp144,
	str	w0, [sp, 36]	// tmp143, unique_count
.L4:
// problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	ldr	w0, [sp, 40]	// tmp146, j
	add	w0, w0, 1	// tmp145, tmp146,
	str	w0, [sp, 40]	// tmp145, j
.L3:
// problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	ldrsw	x0, [sp, 32]	// _19, i
	lsl	x0, x0, 3	// _20, _19,
	ldr	x1, [sp, 8]	// tmp147, words
	add	x0, x1, x0	// _21, tmp147, _20
	ldr	x1, [x0]	// _22, *_21
// problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	ldrsw	x0, [sp, 40]	// _23, j
	add	x0, x1, x0	// _24, _22, _23
	ldrb	w0, [x0]	// _25, *_24
// problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	cmp	w0, 0	// _25,
	bne	.L5		//,
// problem159.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	ldr	w1, [sp, 36]	// tmp148, unique_count
	ldr	w0, [sp, 28]	// tmp149, maxu
	cmp	w1, w0	// tmp148, tmp149
	bgt	.L6		//,
// problem159.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	ldr	w1, [sp, 36]	// tmp150, unique_count
	ldr	w0, [sp, 28]	// tmp151, maxu
	cmp	w1, w0	// tmp150, tmp151
	bne	.L7		//,
// problem159.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	ldrsw	x0, [sp, 32]	// _26, i
	lsl	x0, x0, 3	// _27, _26,
	ldr	x1, [sp, 8]	// tmp152, words
	add	x0, x1, x0	// _28, tmp152, _27
// problem159.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	ldr	x0, [x0]	// _29, *_28
	ldr	x1, [sp, 48]	//, max
	bl	strcmp		//
// problem159.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	cmp	w0, 0	// _30,
	bge	.L7		//,
.L6:
// problem159.c:19:             max = words[i];
	ldrsw	x0, [sp, 32]	// _31, i
	lsl	x0, x0, 3	// _32, _31,
	ldr	x1, [sp, 8]	// tmp153, words
	add	x0, x1, x0	// _33, tmp153, _32
// problem159.c:19:             max = words[i];
	ldr	x0, [x0]	// tmp154, *_33
	str	x0, [sp, 48]	// tmp154, max
// problem159.c:20:             maxu = unique_count;
	ldr	w0, [sp, 36]	// tmp155, unique_count
	str	w0, [sp, 28]	// tmp155, maxu
.L7:
// problem159.c:7:     for (int i = 0; i < count; i++) {
	ldr	w0, [sp, 32]	// tmp157, i
	add	w0, w0, 1	// tmp156, tmp157,
	str	w0, [sp, 32]	// tmp156, i
.L2:
// problem159.c:7:     for (int i = 0; i < count; i++) {
	ldr	w1, [sp, 32]	// tmp158, i
	ldr	w0, [sp, 4]	// tmp159, count
	cmp	w1, w0	// tmp158, tmp159
	blt	.L8		//,
// problem159.c:23:     return max;
	ldr	x0, [sp, 48]	// _50, max
// problem159.c:23:     return max;
	mov	x1, x0	// <retval>, _50
// problem159.c:24: }
	adrp	x0, :got:__stack_chk_guard	// tmp161,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp161,
	ldr	x3, [sp, 312]	// tmp163, D.5160
	ldr	x2, [x0]	// tmp164,
	subs	x3, x3, x2	// tmp163, tmp164
	mov	x2, 0	// tmp164
	beq	.L10		//,
	bl	__stack_chk_fail		//
.L10:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp, 320]	//,,
	add	sp, sp, 336	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	"string"
	.align	3
.LC30:
	.string	"problem159.c"
	.align	3
.LC31:
	.string	"strcmp(func0(words1, 3), \"string\") == 0"
	.align	3
.LC4:
	.string	"enam"
	.align	3
.LC33:
	.string	"strcmp(func0(words2, 3), \"enam\") == 0"
	.align	3
.LC7:
	.string	"aaaaaaa"
	.align	3
.LC35:
	.string	"strcmp(func0(words3, 3), \"aaaaaaa\") == 0"
	.align	3
.LC36:
	.string	"abc"
	.align	3
.LC37:
	.string	"cba"
	.align	3
.LC38:
	.string	"strcmp(func0(words4, 2), \"abc\") == 0"
	.align	3
.LC13:
	.string	"footbott"
	.align	3
.LC40:
	.string	"strcmp(func0(words5, 5), \"footbott\") == 0"
	.align	3
.LC17:
	.string	"gonna"
	.align	3
.LC42:
	.string	"strcmp(func0(words6, 4), \"gonna\") == 0"
	.align	3
.LC22:
	.string	"nation"
	.align	3
.LC44:
	.string	"strcmp(func0(words7, 5), \"nation\") == 0"
	.align	3
.LC12:
	.string	"this"
	.align	3
.LC46:
	.string	"strcmp(func0(words8, 4), \"this\") == 0"
	.align	3
.LC47:
	.string	"b"
	.align	3
.LC48:
	.string	"strcmp(func0(words9, 1), \"b\") == 0"
	.align	3
.LC11:
	.string	"play"
	.align	3
.LC50:
	.string	"strcmp(func0(words10, 3), \"play\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #288	//,,
	.cfi_def_cfa_offset 288
	stp	x29, x30, [sp, 272]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 272	//,,
// problem159.c:31: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp114,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp114,
	ldr	x1, [x0]	// tmp223,
	str	x1, [sp, 264]	// tmp223, D.5164
	mov	x1, 0	// tmp223
// problem159.c:32:     char *words1[] = {"name", "of", "string"};
	adrp	x0, .LC29	// tmp116,
	add	x0, x0, :lo12:.LC29	// tmp115, tmp116,
	add	x2, sp, 24	// tmp117,,
	mov	x3, x0	// tmp118, tmp115
	ldp	x0, x1, [x3]	// tmp119,
	stp	x0, x1, [x2]	// tmp119, words1
	ldr	x0, [x3, 16]	// tmp120,
	str	x0, [x2, 16]	// tmp120, words1
// problem159.c:33:     assert(strcmp(func0(words1, 3), "string") == 0);
	add	x0, sp, 24	// tmp121,,
	mov	w1, 3	//,
	bl	func0		//
	mov	x2, x0	// _1,
// problem159.c:33:     assert(strcmp(func0(words1, 3), "string") == 0);
	adrp	x0, .LC2	// tmp122,
	add	x1, x0, :lo12:.LC2	//, tmp122,
	mov	x0, x2	//, _1
	bl	strcmp		//
// problem159.c:33:     assert(strcmp(func0(words1, 3), "string") == 0);
	cmp	w0, 0	// _2,
	beq	.L12		//,
// problem159.c:33:     assert(strcmp(func0(words1, 3), "string") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp123,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp123,
	mov	w2, 33	//,
	adrp	x0, .LC30	// tmp124,
	add	x1, x0, :lo12:.LC30	//, tmp124,
	adrp	x0, .LC31	// tmp125,
	add	x0, x0, :lo12:.LC31	//, tmp125,
	bl	__assert_fail		//
.L12:
// problem159.c:35:     char *words2[] = {"name", "enam", "game"};
	adrp	x0, .LC32	// tmp127,
	add	x0, x0, :lo12:.LC32	// tmp126, tmp127,
	add	x2, sp, 48	// tmp128,,
	mov	x3, x0	// tmp129, tmp126
	ldp	x0, x1, [x3]	// tmp130,
	stp	x0, x1, [x2]	// tmp130, words2
	ldr	x0, [x3, 16]	// tmp131,
	str	x0, [x2, 16]	// tmp131, words2
// problem159.c:36:     assert(strcmp(func0(words2, 3), "enam") == 0);
	add	x0, sp, 48	// tmp132,,
	mov	w1, 3	//,
	bl	func0		//
	mov	x2, x0	// _3,
// problem159.c:36:     assert(strcmp(func0(words2, 3), "enam") == 0);
	adrp	x0, .LC4	// tmp133,
	add	x1, x0, :lo12:.LC4	//, tmp133,
	mov	x0, x2	//, _3
	bl	strcmp		//
// problem159.c:36:     assert(strcmp(func0(words2, 3), "enam") == 0);
	cmp	w0, 0	// _4,
	beq	.L13		//,
// problem159.c:36:     assert(strcmp(func0(words2, 3), "enam") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp134,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp134,
	mov	w2, 36	//,
	adrp	x0, .LC30	// tmp135,
	add	x1, x0, :lo12:.LC30	//, tmp135,
	adrp	x0, .LC33	// tmp136,
	add	x0, x0, :lo12:.LC33	//, tmp136,
	bl	__assert_fail		//
.L13:
// problem159.c:38:     char *words3[] = {"aaaaaaa", "bb", "cc"};
	adrp	x0, .LC34	// tmp138,
	add	x0, x0, :lo12:.LC34	// tmp137, tmp138,
	add	x2, sp, 72	// tmp139,,
	mov	x3, x0	// tmp140, tmp137
	ldp	x0, x1, [x3]	// tmp141,
	stp	x0, x1, [x2]	// tmp141, words3
	ldr	x0, [x3, 16]	// tmp142,
	str	x0, [x2, 16]	// tmp142, words3
// problem159.c:39:     assert(strcmp(func0(words3, 3), "aaaaaaa") == 0);
	add	x0, sp, 72	// tmp143,,
	mov	w1, 3	//,
	bl	func0		//
	mov	x2, x0	// _5,
// problem159.c:39:     assert(strcmp(func0(words3, 3), "aaaaaaa") == 0);
	adrp	x0, .LC7	// tmp144,
	add	x1, x0, :lo12:.LC7	//, tmp144,
	mov	x0, x2	//, _5
	bl	strcmp		//
// problem159.c:39:     assert(strcmp(func0(words3, 3), "aaaaaaa") == 0);
	cmp	w0, 0	// _6,
	beq	.L14		//,
// problem159.c:39:     assert(strcmp(func0(words3, 3), "aaaaaaa") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp145,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp145,
	mov	w2, 39	//,
	adrp	x0, .LC30	// tmp146,
	add	x1, x0, :lo12:.LC30	//, tmp146,
	adrp	x0, .LC35	// tmp147,
	add	x0, x0, :lo12:.LC35	//, tmp147,
	bl	__assert_fail		//
.L14:
// problem159.c:41:     char *words4[] = {"abc", "cba"};
	adrp	x0, .LC36	// tmp149,
	add	x0, x0, :lo12:.LC36	// tmp148, tmp149,
	str	x0, [sp, 8]	// tmp148, words4[0]
	adrp	x0, .LC37	// tmp151,
	add	x0, x0, :lo12:.LC37	// tmp150, tmp151,
	str	x0, [sp, 16]	// tmp150, words4[1]
// problem159.c:42:     assert(strcmp(func0(words4, 2), "abc") == 0);
	add	x0, sp, 8	// tmp152,,
	mov	w1, 2	//,
	bl	func0		//
	mov	x2, x0	// _7,
// problem159.c:42:     assert(strcmp(func0(words4, 2), "abc") == 0);
	adrp	x0, .LC36	// tmp153,
	add	x1, x0, :lo12:.LC36	//, tmp153,
	mov	x0, x2	//, _7
	bl	strcmp		//
// problem159.c:42:     assert(strcmp(func0(words4, 2), "abc") == 0);
	cmp	w0, 0	// _8,
	beq	.L15		//,
// problem159.c:42:     assert(strcmp(func0(words4, 2), "abc") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp154,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp154,
	mov	w2, 42	//,
	adrp	x0, .LC30	// tmp155,
	add	x1, x0, :lo12:.LC30	//, tmp155,
	adrp	x0, .LC38	// tmp156,
	add	x0, x0, :lo12:.LC38	//, tmp156,
	bl	__assert_fail		//
.L15:
// problem159.c:44:     char *words5[] = {"play", "this", "game", "of", "footbott"};
	adrp	x0, .LC39	// tmp158,
	add	x1, x0, :lo12:.LC39	// tmp157, tmp158,
	add	x0, sp, 184	// tmp159,,
	ldp	q0, q1, [x1]	// tmp161, tmp162,
	stp	q0, q1, [x0]	// tmp161, tmp162, words5
	ldr	x1, [x1, 32]	// tmp163,
	str	x1, [x0, 32]	// tmp163, words5
// problem159.c:45:     assert(strcmp(func0(words5, 5), "footbott") == 0);
	add	x0, sp, 184	// tmp164,,
	mov	w1, 5	//,
	bl	func0		//
	mov	x2, x0	// _9,
// problem159.c:45:     assert(strcmp(func0(words5, 5), "footbott") == 0);
	adrp	x0, .LC13	// tmp165,
	add	x1, x0, :lo12:.LC13	//, tmp165,
	mov	x0, x2	//, _9
	bl	strcmp		//
// problem159.c:45:     assert(strcmp(func0(words5, 5), "footbott") == 0);
	cmp	w0, 0	// _10,
	beq	.L16		//,
// problem159.c:45:     assert(strcmp(func0(words5, 5), "footbott") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp166,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp166,
	mov	w2, 45	//,
	adrp	x0, .LC30	// tmp167,
	add	x1, x0, :lo12:.LC30	//, tmp167,
	adrp	x0, .LC40	// tmp168,
	add	x0, x0, :lo12:.LC40	//, tmp168,
	bl	__assert_fail		//
.L16:
// problem159.c:47:     char *words6[] = {"we", "are", "gonna", "rock"};
	add	x0, sp, 280	// tmp169,,
	sub	x0, x0, #160	// tmp171, tmp169,
	adrp	x1, .LC41	// tmp173,
	add	x1, x1, :lo12:.LC41	// tmp172, tmp173,
	ld1	{v0.16b - v1.16b}, [x1]	// tmp174,
	st1	{v0.16b - v1.16b}, [x0]	// tmp174, words6
// problem159.c:48:     assert(strcmp(func0(words6, 4), "gonna") == 0);
	add	x0, sp, 120	// tmp175,,
	mov	w1, 4	//,
	bl	func0		//
	mov	x2, x0	// _11,
// problem159.c:48:     assert(strcmp(func0(words6, 4), "gonna") == 0);
	adrp	x0, .LC17	// tmp176,
	add	x1, x0, :lo12:.LC17	//, tmp176,
	mov	x0, x2	//, _11
	bl	strcmp		//
// problem159.c:48:     assert(strcmp(func0(words6, 4), "gonna") == 0);
	cmp	w0, 0	// _12,
	beq	.L17		//,
// problem159.c:48:     assert(strcmp(func0(words6, 4), "gonna") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp177,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp177,
	mov	w2, 48	//,
	adrp	x0, .LC30	// tmp178,
	add	x1, x0, :lo12:.LC30	//, tmp178,
	adrp	x0, .LC42	// tmp179,
	add	x0, x0, :lo12:.LC42	//, tmp179,
	bl	__assert_fail		//
.L17:
// problem159.c:50:     char *words7[] = {"we", "are", "a", "mad", "nation"};
	adrp	x0, .LC43	// tmp181,
	add	x1, x0, :lo12:.LC43	// tmp180, tmp181,
	add	x0, sp, 224	// tmp182,,
	ldp	q0, q1, [x1]	// tmp184, tmp185,
	stp	q0, q1, [x0]	// tmp184, tmp185, words7
	ldr	x1, [x1, 32]	// tmp186,
	str	x1, [x0, 32]	// tmp186, words7
// problem159.c:51:     assert(strcmp(func0(words7, 5), "nation") == 0);
	add	x0, sp, 224	// tmp187,,
	mov	w1, 5	//,
	bl	func0		//
	mov	x2, x0	// _13,
// problem159.c:51:     assert(strcmp(func0(words7, 5), "nation") == 0);
	adrp	x0, .LC22	// tmp188,
	add	x1, x0, :lo12:.LC22	//, tmp188,
	mov	x0, x2	//, _13
	bl	strcmp		//
// problem159.c:51:     assert(strcmp(func0(words7, 5), "nation") == 0);
	cmp	w0, 0	// _14,
	beq	.L18		//,
// problem159.c:51:     assert(strcmp(func0(words7, 5), "nation") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp189,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp189,
	mov	w2, 51	//,
	adrp	x0, .LC30	// tmp190,
	add	x1, x0, :lo12:.LC30	//, tmp190,
	adrp	x0, .LC44	// tmp191,
	add	x0, x0, :lo12:.LC44	//, tmp191,
	bl	__assert_fail		//
.L18:
// problem159.c:53:     char *words8[] = {"this", "is", "a", "prrk"};
	add	x0, sp, 280	// tmp192,,
	sub	x0, x0, #128	// tmp194, tmp192,
	adrp	x1, .LC45	// tmp196,
	add	x1, x1, :lo12:.LC45	// tmp195, tmp196,
	ld1	{v0.16b - v1.16b}, [x1]	// tmp197,
	st1	{v0.16b - v1.16b}, [x0]	// tmp197, words8
// problem159.c:54:     assert(strcmp(func0(words8, 4), "this") == 0);
	add	x0, sp, 152	// tmp198,,
	mov	w1, 4	//,
	bl	func0		//
	mov	x2, x0	// _15,
// problem159.c:54:     assert(strcmp(func0(words8, 4), "this") == 0);
	adrp	x0, .LC12	// tmp199,
	add	x1, x0, :lo12:.LC12	//, tmp199,
	mov	x0, x2	//, _15
	bl	strcmp		//
// problem159.c:54:     assert(strcmp(func0(words8, 4), "this") == 0);
	cmp	w0, 0	// _16,
	beq	.L19		//,
// problem159.c:54:     assert(strcmp(func0(words8, 4), "this") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp200,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp200,
	mov	w2, 54	//,
	adrp	x0, .LC30	// tmp201,
	add	x1, x0, :lo12:.LC30	//, tmp201,
	adrp	x0, .LC46	// tmp202,
	add	x0, x0, :lo12:.LC46	//, tmp202,
	bl	__assert_fail		//
.L19:
// problem159.c:56:     char *words9[] = {"b"};
	adrp	x0, .LC47	// tmp204,
	add	x0, x0, :lo12:.LC47	// tmp203, tmp204,
	str	x0, [sp]	// tmp203, words9[0]
// problem159.c:57:     assert(strcmp(func0(words9, 1), "b") == 0);
	mov	x0, sp	// tmp205,
	mov	w1, 1	//,
	bl	func0		//
	mov	x2, x0	// _17,
// problem159.c:57:     assert(strcmp(func0(words9, 1), "b") == 0);
	adrp	x0, .LC47	// tmp206,
	add	x1, x0, :lo12:.LC47	//, tmp206,
	mov	x0, x2	//, _17
	bl	strcmp		//
// problem159.c:57:     assert(strcmp(func0(words9, 1), "b") == 0);
	cmp	w0, 0	// _18,
	beq	.L20		//,
// problem159.c:57:     assert(strcmp(func0(words9, 1), "b") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp207,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp207,
	mov	w2, 57	//,
	adrp	x0, .LC30	// tmp208,
	add	x1, x0, :lo12:.LC30	//, tmp208,
	adrp	x0, .LC48	// tmp209,
	add	x0, x0, :lo12:.LC48	//, tmp209,
	bl	__assert_fail		//
.L20:
// problem159.c:59:     char *words10[] = {"play", "play", "play"};
	adrp	x0, .LC49	// tmp211,
	add	x0, x0, :lo12:.LC49	// tmp210, tmp211,
	add	x2, sp, 96	// tmp212,,
	mov	x3, x0	// tmp213, tmp210
	ldp	x0, x1, [x3]	// tmp214,
	stp	x0, x1, [x2]	// tmp214, words10
	ldr	x0, [x3, 16]	// tmp215,
	str	x0, [x2, 16]	// tmp215, words10
// problem159.c:60:     assert(strcmp(func0(words10, 3), "play") == 0);
	add	x0, sp, 96	// tmp216,,
	mov	w1, 3	//,
	bl	func0		//
	mov	x2, x0	// _19,
// problem159.c:60:     assert(strcmp(func0(words10, 3), "play") == 0);
	adrp	x0, .LC11	// tmp217,
	add	x1, x0, :lo12:.LC11	//, tmp217,
	mov	x0, x2	//, _19
	bl	strcmp		//
// problem159.c:60:     assert(strcmp(func0(words10, 3), "play") == 0);
	cmp	w0, 0	// _20,
	beq	.L21		//,
// problem159.c:60:     assert(strcmp(func0(words10, 3), "play") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp218,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp218,
	mov	w2, 60	//,
	adrp	x0, .LC30	// tmp219,
	add	x1, x0, :lo12:.LC30	//, tmp219,
	adrp	x0, .LC50	// tmp220,
	add	x0, x0, :lo12:.LC50	//, tmp220,
	bl	__assert_fail		//
.L21:
// problem159.c:62:     return 0;
	mov	w0, 0	// _53,
// problem159.c:63: }
	mov	w1, w0	// <retval>, _53
	adrp	x0, :got:__stack_chk_guard	// tmp222,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp222,
	ldr	x3, [sp, 264]	// tmp224, D.5164
	ldr	x2, [x0]	// tmp225,
	subs	x3, x3, x2	// tmp224, tmp225
	mov	x2, 0	// tmp225
	beq	.L23		//,
	bl	__stack_chk_fail		//
.L23:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 272]	//,,
	add	sp, sp, 288	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"name"
	.align	3
.LC1:
	.string	"of"
	.data
	.align	3
.LC29:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.section	.rodata
	.align	3
.LC5:
	.string	"game"
	.data
	.align	3
.LC32:
	.xword	.LC0
	.xword	.LC4
	.xword	.LC5
	.section	.rodata
	.align	3
.LC8:
	.string	"bb"
	.align	3
.LC9:
	.string	"cc"
	.data
	.align	3
.LC34:
	.xword	.LC7
	.xword	.LC8
	.xword	.LC9
	.align	3
.LC39:
	.xword	.LC11
	.xword	.LC12
	.xword	.LC5
	.xword	.LC1
	.xword	.LC13
	.section	.rodata
	.align	3
.LC15:
	.string	"we"
	.align	3
.LC16:
	.string	"are"
	.align	3
.LC18:
	.string	"rock"
	.data
	.align	3
.LC41:
	.xword	.LC15
	.xword	.LC16
	.xword	.LC17
	.xword	.LC18
	.section	.rodata
	.align	3
.LC20:
	.string	"a"
	.align	3
.LC21:
	.string	"mad"
	.data
	.align	3
.LC43:
	.xword	.LC15
	.xword	.LC16
	.xword	.LC20
	.xword	.LC21
	.xword	.LC22
	.section	.rodata
	.align	3
.LC24:
	.string	"is"
	.align	3
.LC25:
	.string	"prrk"
	.data
	.align	3
.LC45:
	.xword	.LC12
	.xword	.LC24
	.xword	.LC20
	.xword	.LC25
	.align	3
.LC49:
	.xword	.LC11
	.xword	.LC11
	.xword	.LC11
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
