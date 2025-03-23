	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
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
// eval/problem159//code.c:4: char *func0(char *words[], int count) {
	adrp	x0, :got:__stack_chk_guard	// tmp128,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp127, tmp128,
	ldr	x1, [x0]	// tmp164,
	str	x1, [sp, 328]	// tmp164, D.4457
	mov	x1, 0	// tmp164
// eval/problem159//code.c:5:     char *max = "";
	adrp	x0, .LC0	// tmp130,
	add	x0, x0, :lo12:.LC0	// tmp129, tmp130,
	str	x0, [sp, 64]	// tmp129, max
// eval/problem159//code.c:6:     int maxu = 0;
	str	wzr, [sp, 44]	//, maxu
// eval/problem159//code.c:7:     for (int i = 0; i < count; i++) {
	str	wzr, [sp, 48]	//, i
// eval/problem159//code.c:7:     for (int i = 0; i < count; i++) {
	b	.L2		//
.L8:
// eval/problem159//code.c:8:         char unique[256] = {0};
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
// eval/problem159//code.c:9:         int unique_count = 0;
	str	wzr, [sp, 52]	//, unique_count
// eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	str	wzr, [sp, 56]	//, j
// eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	b	.L3		//
.L5:
// eval/problem159//code.c:11:             if (!strchr(unique, words[i][j])) {
	ldrsw	x0, [sp, 48]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 24]	// tmp133, words
	add	x0, x1, x0	// _3, tmp133, _2
	ldr	x1, [x0]	// _4, *_3
// eval/problem159//code.c:11:             if (!strchr(unique, words[i][j])) {
	ldrsw	x0, [sp, 56]	// _5, j
	add	x0, x1, x0	// _6, _4, _5
	ldrb	w0, [x0]	// _7, *_6
// eval/problem159//code.c:11:             if (!strchr(unique, words[i][j])) {
	mov	w1, w0	// _8, _7
	add	x0, sp, 72	// tmp134,,
	bl	strchr		//
// eval/problem159//code.c:11:             if (!strchr(unique, words[i][j])) {
	cmp	x0, 0	// _9,
	bne	.L4		//,
// eval/problem159//code.c:12:                 int len = strlen(unique);
	add	x0, sp, 72	// tmp135,,
	bl	strlen		//
// eval/problem159//code.c:12:                 int len = strlen(unique);
	str	w0, [sp, 60]	// tmp136, len
// eval/problem159//code.c:13:                 unique[len] = words[i][j];
	ldrsw	x0, [sp, 48]	// _11, i
	lsl	x0, x0, 3	// _12, _11,
	ldr	x1, [sp, 24]	// tmp137, words
	add	x0, x1, x0	// _13, tmp137, _12
	ldr	x1, [x0]	// _14, *_13
// eval/problem159//code.c:13:                 unique[len] = words[i][j];
	ldrsw	x0, [sp, 56]	// _15, j
	add	x0, x1, x0	// _16, _14, _15
	ldrb	w2, [x0]	// _17, *_16
// eval/problem159//code.c:13:                 unique[len] = words[i][j];
	ldrsw	x0, [sp, 60]	// tmp138, len
	add	x1, sp, 72	// tmp139,,
	strb	w2, [x1, x0]	// tmp140, unique[len_59]
// eval/problem159//code.c:14:                 unique[len + 1] = '\0';
	ldr	w0, [sp, 60]	// tmp141, len
	add	w0, w0, 1	// _18, tmp141,
// eval/problem159//code.c:14:                 unique[len + 1] = '\0';
	sxtw	x0, w0	// tmp142, _18
	add	x1, sp, 72	// tmp143,,
	strb	wzr, [x1, x0]	//, unique[_18]
// eval/problem159//code.c:15:                 unique_count++;
	ldr	w0, [sp, 52]	// tmp145, unique_count
	add	w0, w0, 1	// tmp144, tmp145,
	str	w0, [sp, 52]	// tmp144, unique_count
.L4:
// eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	ldr	w0, [sp, 56]	// tmp147, j
	add	w0, w0, 1	// tmp146, tmp147,
	str	w0, [sp, 56]	// tmp146, j
.L3:
// eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	ldrsw	x0, [sp, 48]	// _19, i
	lsl	x0, x0, 3	// _20, _19,
	ldr	x1, [sp, 24]	// tmp148, words
	add	x0, x1, x0	// _21, tmp148, _20
	ldr	x1, [x0]	// _22, *_21
// eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	ldrsw	x0, [sp, 56]	// _23, j
	add	x0, x1, x0	// _24, _22, _23
	ldrb	w0, [x0]	// _25, *_24
// eval/problem159//code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	cmp	w0, 0	// _25,
	bne	.L5		//,
// eval/problem159//code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	ldr	w1, [sp, 52]	// tmp149, unique_count
	ldr	w0, [sp, 44]	// tmp150, maxu
	cmp	w1, w0	// tmp149, tmp150
	bgt	.L6		//,
// eval/problem159//code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	ldr	w1, [sp, 52]	// tmp151, unique_count
	ldr	w0, [sp, 44]	// tmp152, maxu
	cmp	w1, w0	// tmp151, tmp152
	bne	.L7		//,
// eval/problem159//code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	ldrsw	x0, [sp, 48]	// _26, i
	lsl	x0, x0, 3	// _27, _26,
	ldr	x1, [sp, 24]	// tmp153, words
	add	x0, x1, x0	// _28, tmp153, _27
// eval/problem159//code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	ldr	x0, [x0]	// _29, *_28
	ldr	x1, [sp, 64]	//, max
	bl	strcmp		//
// eval/problem159//code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	cmp	w0, 0	// _30,
	bge	.L7		//,
.L6:
// eval/problem159//code.c:19:             max = words[i];
	ldrsw	x0, [sp, 48]	// _31, i
	lsl	x0, x0, 3	// _32, _31,
	ldr	x1, [sp, 24]	// tmp154, words
	add	x0, x1, x0	// _33, tmp154, _32
// eval/problem159//code.c:19:             max = words[i];
	ldr	x0, [x0]	// tmp155, *_33
	str	x0, [sp, 64]	// tmp155, max
// eval/problem159//code.c:20:             maxu = unique_count;
	ldr	w0, [sp, 52]	// tmp156, unique_count
	str	w0, [sp, 44]	// tmp156, maxu
.L7:
// eval/problem159//code.c:7:     for (int i = 0; i < count; i++) {
	ldr	w0, [sp, 48]	// tmp158, i
	add	w0, w0, 1	// tmp157, tmp158,
	str	w0, [sp, 48]	// tmp157, i
.L2:
// eval/problem159//code.c:7:     for (int i = 0; i < count; i++) {
	ldr	w1, [sp, 48]	// tmp159, i
	ldr	w0, [sp, 20]	// tmp160, count
	cmp	w1, w0	// tmp159, tmp160
	blt	.L8		//,
// eval/problem159//code.c:23:     return max;
	ldr	x0, [sp, 64]	// _50, max
	mov	x1, x0	// <retval>, _50
// eval/problem159//code.c:24: }
	adrp	x0, :got:__stack_chk_guard	// tmp163,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp162, tmp163,
	ldr	x3, [sp, 328]	// tmp165, D.4457
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
