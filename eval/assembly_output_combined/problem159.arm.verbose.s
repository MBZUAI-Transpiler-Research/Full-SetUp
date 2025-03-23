	.arch armv8-a
	.file	"problem159.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	stp	x29, x30, [sp, -336]!	//,,,
	.cfi_def_cfa_offset 336
	.cfi_offset 29, -336
	.cfi_offset 30, -328
	mov	x29, sp	//,
	str	x0, [sp, 24]	// words, words
	str	w1, [sp, 20]	// count, count
// problem159.c:4: char *func0(char *words[], int count) {
	adrp	x0, :got:__stack_chk_guard	// tmp128,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp127, tmp128,
	ldr	x1, [x0]	// tmp164,
	str	x1, [sp, 328]	// tmp164, D.4551
	mov	x1, 0	// tmp164
// problem159.c:5:     char *max = "";
	adrp	x0, .LC28	// tmp130,
	add	x0, x0, :lo12:.LC28	// tmp129, tmp130,
	str	x0, [sp, 64]	// tmp129, max
// problem159.c:6:     int maxu = 0;
	str	wzr, [sp, 44]	//, maxu
// problem159.c:7:     for (int i = 0; i < count; i++) {
	str	wzr, [sp, 48]	//, i
// problem159.c:7:     for (int i = 0; i < count; i++) {
	b	.L2		//
.L8:
// problem159.c:8:         char unique[256] = {0};
	stp	xzr, xzr, [sp, 72]	// unique
	add	x0, sp, 88	// tmp131,,
	movi	v0.4s, 0	// tmp132
	stp	q0, q0, [x0]	// tmp132, tmp132, unique
	stp	q0, q0, [x0, 32]	// tmp132, tmp132, unique
	stp	q0, q0, [x0, 64]	// tmp132, tmp132, unique
	stp	q0, q0, [x0, 96]	// tmp132, tmp132, unique
	stp	q0, q0, [x0, 128]	// tmp132, tmp132, unique
	stp	q0, q0, [x0, 160]	// tmp132, tmp132, unique
	stp	q0, q0, [x0, 192]	// tmp132, tmp132, unique
	str	q0, [x0, 224]	// tmp132, unique
// problem159.c:9:         int unique_count = 0;
	str	wzr, [sp, 52]	//, unique_count
// problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	str	wzr, [sp, 56]	//, j
// problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	b	.L3		//
.L5:
// problem159.c:11:             if (!strchr(unique, words[i][j])) {
	ldrsw	x0, [sp, 48]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 24]	// tmp133, words
	add	x0, x1, x0	// _3, tmp133, _2
	ldr	x1, [x0]	// _4, *_3
// problem159.c:11:             if (!strchr(unique, words[i][j])) {
	ldrsw	x0, [sp, 56]	// _5, j
	add	x0, x1, x0	// _6, _4, _5
	ldrb	w0, [x0]	// _7, *_6
// problem159.c:11:             if (!strchr(unique, words[i][j])) {
	mov	w1, w0	// _8, _7
	add	x0, sp, 72	// tmp134,,
	bl	strchr		//
// problem159.c:11:             if (!strchr(unique, words[i][j])) {
	cmp	x0, 0	// _9,
	bne	.L4		//,
// problem159.c:12:                 int len = strlen(unique);
	add	x0, sp, 72	// tmp135,,
	bl	strlen		//
// problem159.c:12:                 int len = strlen(unique);
	str	w0, [sp, 60]	// tmp136, len
// problem159.c:13:                 unique[len] = words[i][j];
	ldrsw	x0, [sp, 48]	// _11, i
	lsl	x0, x0, 3	// _12, _11,
	ldr	x1, [sp, 24]	// tmp137, words
	add	x0, x1, x0	// _13, tmp137, _12
	ldr	x1, [x0]	// _14, *_13
// problem159.c:13:                 unique[len] = words[i][j];
	ldrsw	x0, [sp, 56]	// _15, j
	add	x0, x1, x0	// _16, _14, _15
	ldrb	w2, [x0]	// _17, *_16
// problem159.c:13:                 unique[len] = words[i][j];
	ldrsw	x0, [sp, 60]	// tmp138, len
	add	x1, sp, 72	// tmp139,,
	strb	w2, [x1, x0]	// tmp140, unique[len_59]
// problem159.c:14:                 unique[len + 1] = '\0';
	ldr	w0, [sp, 60]	// tmp141, len
	add	w0, w0, 1	// _18, tmp141,
// problem159.c:14:                 unique[len + 1] = '\0';
	sxtw	x0, w0	// tmp142, _18
	add	x1, sp, 72	// tmp143,,
	strb	wzr, [x1, x0]	//, unique[_18]
// problem159.c:15:                 unique_count++;
	ldr	w0, [sp, 52]	// tmp145, unique_count
	add	w0, w0, 1	// tmp144, tmp145,
	str	w0, [sp, 52]	// tmp144, unique_count
.L4:
// problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	ldr	w0, [sp, 56]	// tmp147, j
	add	w0, w0, 1	// tmp146, tmp147,
	str	w0, [sp, 56]	// tmp146, j
.L3:
// problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	ldrsw	x0, [sp, 48]	// _19, i
	lsl	x0, x0, 3	// _20, _19,
	ldr	x1, [sp, 24]	// tmp148, words
	add	x0, x1, x0	// _21, tmp148, _20
	ldr	x1, [x0]	// _22, *_21
// problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	ldrsw	x0, [sp, 56]	// _23, j
	add	x0, x1, x0	// _24, _22, _23
	ldrb	w0, [x0]	// _25, *_24
// problem159.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	cmp	w0, 0	// _25,
	bne	.L5		//,
// problem159.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	ldr	w1, [sp, 52]	// tmp149, unique_count
	ldr	w0, [sp, 44]	// tmp150, maxu
	cmp	w1, w0	// tmp149, tmp150
	bgt	.L6		//,
// problem159.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	ldr	w1, [sp, 52]	// tmp151, unique_count
	ldr	w0, [sp, 44]	// tmp152, maxu
	cmp	w1, w0	// tmp151, tmp152
	bne	.L7		//,
// problem159.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	ldrsw	x0, [sp, 48]	// _26, i
	lsl	x0, x0, 3	// _27, _26,
	ldr	x1, [sp, 24]	// tmp153, words
	add	x0, x1, x0	// _28, tmp153, _27
// problem159.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	ldr	x0, [x0]	// _29, *_28
	ldr	x1, [sp, 64]	//, max
	bl	strcmp		//
// problem159.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	cmp	w0, 0	// _30,
	bge	.L7		//,
.L6:
// problem159.c:19:             max = words[i];
	ldrsw	x0, [sp, 48]	// _31, i
	lsl	x0, x0, 3	// _32, _31,
	ldr	x1, [sp, 24]	// tmp154, words
	add	x0, x1, x0	// _33, tmp154, _32
// problem159.c:19:             max = words[i];
	ldr	x0, [x0]	// tmp155, *_33
	str	x0, [sp, 64]	// tmp155, max
// problem159.c:20:             maxu = unique_count;
	ldr	w0, [sp, 52]	// tmp156, unique_count
	str	w0, [sp, 44]	// tmp156, maxu
.L7:
// problem159.c:7:     for (int i = 0; i < count; i++) {
	ldr	w0, [sp, 48]	// tmp158, i
	add	w0, w0, 1	// tmp157, tmp158,
	str	w0, [sp, 48]	// tmp157, i
.L2:
// problem159.c:7:     for (int i = 0; i < count; i++) {
	ldr	w1, [sp, 48]	// tmp159, i
	ldr	w0, [sp, 20]	// tmp160, count
	cmp	w1, w0	// tmp159, tmp160
	blt	.L8		//,
// problem159.c:23:     return max;
	ldr	x0, [sp, 64]	// _50, max
	mov	x1, x0	// <retval>, _50
// problem159.c:24: }
	adrp	x0, :got:__stack_chk_guard	// tmp163,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp162, tmp163,
	ldr	x3, [sp, 328]	// tmp165, D.4551
	ldr	x2, [x0]	// tmp166,
	subs	x3, x3, x2	// tmp165, tmp166
	mov	x2, 0	// tmp166
	beq	.L10		//,
	bl	__stack_chk_fail		//
.L10:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp], 336	//,,,
	.cfi_restore 30
	.cfi_restore 29
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
	stp	x29, x30, [sp, -288]!	//,,,
	.cfi_def_cfa_offset 288
	.cfi_offset 29, -288
	.cfi_offset 30, -280
	mov	x29, sp	//,
// problem159.c:31: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp115,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp114, tmp115,
	ldr	x1, [x0]	// tmp225,
	str	x1, [sp, 280]	// tmp225, D.4555
	mov	x1, 0	// tmp225
// problem159.c:32:     char *words1[] = {"name", "of", "string"};
	adrp	x0, .LC29	// tmp117,
	add	x0, x0, :lo12:.LC29	// tmp116, tmp117,
	add	x2, sp, 40	// tmp118,,
	mov	x3, x0	// tmp119, tmp116
	ldp	x0, x1, [x3]	// tmp120,
	stp	x0, x1, [x2]	// tmp120, words1
	ldr	x0, [x3, 16]	// tmp121,
	str	x0, [x2, 16]	// tmp121, words1
// problem159.c:33:     assert(strcmp(func0(words1, 3), "string") == 0);
	add	x0, sp, 40	// tmp122,,
	mov	w1, 3	//,
	bl	func0		//
	mov	x2, x0	// _1,
	adrp	x0, .LC2	// tmp123,
	add	x1, x0, :lo12:.LC2	//, tmp123,
	mov	x0, x2	//, _1
	bl	strcmp		//
	cmp	w0, 0	// _2,
	beq	.L12		//,
// problem159.c:33:     assert(strcmp(func0(words1, 3), "string") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp124,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp124,
	mov	w2, 33	//,
	adrp	x0, .LC30	// tmp125,
	add	x1, x0, :lo12:.LC30	//, tmp125,
	adrp	x0, .LC31	// tmp126,
	add	x0, x0, :lo12:.LC31	//, tmp126,
	bl	__assert_fail		//
.L12:
// problem159.c:35:     char *words2[] = {"name", "enam", "game"};
	adrp	x0, .LC32	// tmp128,
	add	x0, x0, :lo12:.LC32	// tmp127, tmp128,
	add	x2, sp, 64	// tmp129,,
	mov	x3, x0	// tmp130, tmp127
	ldp	x0, x1, [x3]	// tmp131,
	stp	x0, x1, [x2]	// tmp131, words2
	ldr	x0, [x3, 16]	// tmp132,
	str	x0, [x2, 16]	// tmp132, words2
// problem159.c:36:     assert(strcmp(func0(words2, 3), "enam") == 0);
	add	x0, sp, 64	// tmp133,,
	mov	w1, 3	//,
	bl	func0		//
	mov	x2, x0	// _3,
	adrp	x0, .LC4	// tmp134,
	add	x1, x0, :lo12:.LC4	//, tmp134,
	mov	x0, x2	//, _3
	bl	strcmp		//
	cmp	w0, 0	// _4,
	beq	.L13		//,
// problem159.c:36:     assert(strcmp(func0(words2, 3), "enam") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp135,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp135,
	mov	w2, 36	//,
	adrp	x0, .LC30	// tmp136,
	add	x1, x0, :lo12:.LC30	//, tmp136,
	adrp	x0, .LC33	// tmp137,
	add	x0, x0, :lo12:.LC33	//, tmp137,
	bl	__assert_fail		//
.L13:
// problem159.c:38:     char *words3[] = {"aaaaaaa", "bb", "cc"};
	adrp	x0, .LC34	// tmp139,
	add	x0, x0, :lo12:.LC34	// tmp138, tmp139,
	add	x2, sp, 88	// tmp140,,
	mov	x3, x0	// tmp141, tmp138
	ldp	x0, x1, [x3]	// tmp142,
	stp	x0, x1, [x2]	// tmp142, words3
	ldr	x0, [x3, 16]	// tmp143,
	str	x0, [x2, 16]	// tmp143, words3
// problem159.c:39:     assert(strcmp(func0(words3, 3), "aaaaaaa") == 0);
	add	x0, sp, 88	// tmp144,,
	mov	w1, 3	//,
	bl	func0		//
	mov	x2, x0	// _5,
	adrp	x0, .LC7	// tmp145,
	add	x1, x0, :lo12:.LC7	//, tmp145,
	mov	x0, x2	//, _5
	bl	strcmp		//
	cmp	w0, 0	// _6,
	beq	.L14		//,
// problem159.c:39:     assert(strcmp(func0(words3, 3), "aaaaaaa") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp146,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp146,
	mov	w2, 39	//,
	adrp	x0, .LC30	// tmp147,
	add	x1, x0, :lo12:.LC30	//, tmp147,
	adrp	x0, .LC35	// tmp148,
	add	x0, x0, :lo12:.LC35	//, tmp148,
	bl	__assert_fail		//
.L14:
// problem159.c:41:     char *words4[] = {"abc", "cba"};
	adrp	x0, .LC36	// tmp150,
	add	x0, x0, :lo12:.LC36	// tmp149, tmp150,
	str	x0, [sp, 24]	// tmp149, words4[0]
	adrp	x0, .LC37	// tmp152,
	add	x0, x0, :lo12:.LC37	// tmp151, tmp152,
	str	x0, [sp, 32]	// tmp151, words4[1]
// problem159.c:42:     assert(strcmp(func0(words4, 2), "abc") == 0);
	add	x0, sp, 24	// tmp153,,
	mov	w1, 2	//,
	bl	func0		//
	mov	x2, x0	// _7,
	adrp	x0, .LC36	// tmp154,
	add	x1, x0, :lo12:.LC36	//, tmp154,
	mov	x0, x2	//, _7
	bl	strcmp		//
	cmp	w0, 0	// _8,
	beq	.L15		//,
// problem159.c:42:     assert(strcmp(func0(words4, 2), "abc") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp155,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp155,
	mov	w2, 42	//,
	adrp	x0, .LC30	// tmp156,
	add	x1, x0, :lo12:.LC30	//, tmp156,
	adrp	x0, .LC38	// tmp157,
	add	x0, x0, :lo12:.LC38	//, tmp157,
	bl	__assert_fail		//
.L15:
// problem159.c:44:     char *words5[] = {"play", "this", "game", "of", "footbott"};
	adrp	x0, .LC39	// tmp159,
	add	x1, x0, :lo12:.LC39	// tmp158, tmp159,
	add	x0, sp, 200	// tmp160,,
	ldp	q0, q1, [x1]	// tmp162, tmp163,
	stp	q0, q1, [x0]	// tmp162, tmp163, words5
	ldr	x1, [x1, 32]	// tmp164,
	str	x1, [x0, 32]	// tmp164, words5
// problem159.c:45:     assert(strcmp(func0(words5, 5), "footbott") == 0);
	add	x0, sp, 200	// tmp165,,
	mov	w1, 5	//,
	bl	func0		//
	mov	x2, x0	// _9,
	adrp	x0, .LC13	// tmp166,
	add	x1, x0, :lo12:.LC13	//, tmp166,
	mov	x0, x2	//, _9
	bl	strcmp		//
	cmp	w0, 0	// _10,
	beq	.L16		//,
// problem159.c:45:     assert(strcmp(func0(words5, 5), "footbott") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp167,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp167,
	mov	w2, 45	//,
	adrp	x0, .LC30	// tmp168,
	add	x1, x0, :lo12:.LC30	//, tmp168,
	adrp	x0, .LC40	// tmp169,
	add	x0, x0, :lo12:.LC40	//, tmp169,
	bl	__assert_fail		//
.L16:
// problem159.c:47:     char *words6[] = {"we", "are", "gonna", "rock"};
	add	x0, sp, 296	// tmp170,,
	sub	x0, x0, #160	// tmp172, tmp170,
	adrp	x1, .LC41	// tmp174,
	add	x1, x1, :lo12:.LC41	// tmp173, tmp174,
	ld1	{v0.16b - v1.16b}, [x1]	// tmp175,
	st1	{v0.16b - v1.16b}, [x0]	// tmp175, words6
// problem159.c:48:     assert(strcmp(func0(words6, 4), "gonna") == 0);
	add	x0, sp, 136	// tmp176,,
	mov	w1, 4	//,
	bl	func0		//
	mov	x2, x0	// _11,
	adrp	x0, .LC17	// tmp177,
	add	x1, x0, :lo12:.LC17	//, tmp177,
	mov	x0, x2	//, _11
	bl	strcmp		//
	cmp	w0, 0	// _12,
	beq	.L17		//,
// problem159.c:48:     assert(strcmp(func0(words6, 4), "gonna") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp178,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp178,
	mov	w2, 48	//,
	adrp	x0, .LC30	// tmp179,
	add	x1, x0, :lo12:.LC30	//, tmp179,
	adrp	x0, .LC42	// tmp180,
	add	x0, x0, :lo12:.LC42	//, tmp180,
	bl	__assert_fail		//
.L17:
// problem159.c:50:     char *words7[] = {"we", "are", "a", "mad", "nation"};
	adrp	x0, .LC43	// tmp182,
	add	x1, x0, :lo12:.LC43	// tmp181, tmp182,
	add	x0, sp, 240	// tmp183,,
	ldp	q0, q1, [x1]	// tmp185, tmp186,
	stp	q0, q1, [x0]	// tmp185, tmp186, words7
	ldr	x1, [x1, 32]	// tmp187,
	str	x1, [x0, 32]	// tmp187, words7
// problem159.c:51:     assert(strcmp(func0(words7, 5), "nation") == 0);
	add	x0, sp, 240	// tmp188,,
	mov	w1, 5	//,
	bl	func0		//
	mov	x2, x0	// _13,
	adrp	x0, .LC22	// tmp189,
	add	x1, x0, :lo12:.LC22	//, tmp189,
	mov	x0, x2	//, _13
	bl	strcmp		//
	cmp	w0, 0	// _14,
	beq	.L18		//,
// problem159.c:51:     assert(strcmp(func0(words7, 5), "nation") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp190,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp190,
	mov	w2, 51	//,
	adrp	x0, .LC30	// tmp191,
	add	x1, x0, :lo12:.LC30	//, tmp191,
	adrp	x0, .LC44	// tmp192,
	add	x0, x0, :lo12:.LC44	//, tmp192,
	bl	__assert_fail		//
.L18:
// problem159.c:53:     char *words8[] = {"this", "is", "a", "prrk"};
	add	x0, sp, 296	// tmp193,,
	sub	x0, x0, #128	// tmp195, tmp193,
	adrp	x1, .LC45	// tmp197,
	add	x1, x1, :lo12:.LC45	// tmp196, tmp197,
	ld1	{v0.16b - v1.16b}, [x1]	// tmp198,
	st1	{v0.16b - v1.16b}, [x0]	// tmp198, words8
// problem159.c:54:     assert(strcmp(func0(words8, 4), "this") == 0);
	add	x0, sp, 168	// tmp199,,
	mov	w1, 4	//,
	bl	func0		//
	mov	x2, x0	// _15,
	adrp	x0, .LC12	// tmp200,
	add	x1, x0, :lo12:.LC12	//, tmp200,
	mov	x0, x2	//, _15
	bl	strcmp		//
	cmp	w0, 0	// _16,
	beq	.L19		//,
// problem159.c:54:     assert(strcmp(func0(words8, 4), "this") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp201,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp201,
	mov	w2, 54	//,
	adrp	x0, .LC30	// tmp202,
	add	x1, x0, :lo12:.LC30	//, tmp202,
	adrp	x0, .LC46	// tmp203,
	add	x0, x0, :lo12:.LC46	//, tmp203,
	bl	__assert_fail		//
.L19:
// problem159.c:56:     char *words9[] = {"b"};
	adrp	x0, .LC47	// tmp205,
	add	x0, x0, :lo12:.LC47	// tmp204, tmp205,
	str	x0, [sp, 16]	// tmp204, words9[0]
// problem159.c:57:     assert(strcmp(func0(words9, 1), "b") == 0);
	add	x0, sp, 16	// tmp206,,
	mov	w1, 1	//,
	bl	func0		//
	mov	x2, x0	// _17,
	adrp	x0, .LC47	// tmp207,
	add	x1, x0, :lo12:.LC47	//, tmp207,
	mov	x0, x2	//, _17
	bl	strcmp		//
	cmp	w0, 0	// _18,
	beq	.L20		//,
// problem159.c:57:     assert(strcmp(func0(words9, 1), "b") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp208,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp208,
	mov	w2, 57	//,
	adrp	x0, .LC30	// tmp209,
	add	x1, x0, :lo12:.LC30	//, tmp209,
	adrp	x0, .LC48	// tmp210,
	add	x0, x0, :lo12:.LC48	//, tmp210,
	bl	__assert_fail		//
.L20:
// problem159.c:59:     char *words10[] = {"play", "play", "play"};
	adrp	x0, .LC49	// tmp212,
	add	x0, x0, :lo12:.LC49	// tmp211, tmp212,
	add	x2, sp, 112	// tmp213,,
	mov	x3, x0	// tmp214, tmp211
	ldp	x0, x1, [x3]	// tmp215,
	stp	x0, x1, [x2]	// tmp215, words10
	ldr	x0, [x3, 16]	// tmp216,
	str	x0, [x2, 16]	// tmp216, words10
// problem159.c:60:     assert(strcmp(func0(words10, 3), "play") == 0);
	add	x0, sp, 112	// tmp217,,
	mov	w1, 3	//,
	bl	func0		//
	mov	x2, x0	// _19,
	adrp	x0, .LC11	// tmp218,
	add	x1, x0, :lo12:.LC11	//, tmp218,
	mov	x0, x2	//, _19
	bl	strcmp		//
	cmp	w0, 0	// _20,
	beq	.L21		//,
// problem159.c:60:     assert(strcmp(func0(words10, 3), "play") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp219,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp219,
	mov	w2, 60	//,
	adrp	x0, .LC30	// tmp220,
	add	x1, x0, :lo12:.LC30	//, tmp220,
	adrp	x0, .LC50	// tmp221,
	add	x0, x0, :lo12:.LC50	//, tmp221,
	bl	__assert_fail		//
.L21:
// problem159.c:62:     return 0;
	mov	w0, 0	// _53,
// problem159.c:63: }
	mov	w1, w0	// <retval>, _53
	adrp	x0, :got:__stack_chk_guard	// tmp224,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp223, tmp224,
	ldr	x3, [sp, 280]	// tmp226, D.4555
	ldr	x2, [x0]	// tmp227,
	subs	x3, x3, x2	// tmp226, tmp227
	mov	x2, 0	// tmp227
	beq	.L23		//,
	bl	__stack_chk_fail		//
.L23:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 288	//,,,
	.cfi_restore 30
	.cfi_restore 29
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
