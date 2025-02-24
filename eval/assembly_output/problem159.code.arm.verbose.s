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
// code.c:4: char *func0(char *words[], int count) {
	adrp	x0, :got:__stack_chk_guard	// tmp127,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp127,
	ldr	x1, [x0]	// tmp162,
	str	x1, [sp, 312]	// tmp162, D.5066
	mov	x1, 0	// tmp162
// code.c:5:     char *max = "";
	adrp	x0, .LC0	// tmp129,
	add	x0, x0, :lo12:.LC0	// tmp128, tmp129,
	str	x0, [sp, 48]	// tmp128, max
// code.c:6:     int maxu = 0;
	str	wzr, [sp, 28]	//, maxu
// code.c:7:     for (int i = 0; i < count; i++) {
	str	wzr, [sp, 32]	//, i
// code.c:7:     for (int i = 0; i < count; i++) {
	b	.L2		//
.L8:
// code.c:8:         char unique[256] = {0};
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
// code.c:9:         int unique_count = 0;
	str	wzr, [sp, 36]	//, unique_count
// code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	str	wzr, [sp, 40]	//, j
// code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	b	.L3		//
.L5:
// code.c:11:             if (!strchr(unique, words[i][j])) {
	ldrsw	x0, [sp, 32]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 8]	// tmp132, words
	add	x0, x1, x0	// _3, tmp132, _2
	ldr	x1, [x0]	// _4, *_3
// code.c:11:             if (!strchr(unique, words[i][j])) {
	ldrsw	x0, [sp, 40]	// _5, j
	add	x0, x1, x0	// _6, _4, _5
	ldrb	w0, [x0]	// _7, *_6
// code.c:11:             if (!strchr(unique, words[i][j])) {
	mov	w1, w0	// _8, _7
	add	x0, sp, 56	// tmp133,,
	bl	strchr		//
// code.c:11:             if (!strchr(unique, words[i][j])) {
	cmp	x0, 0	// _9,
	bne	.L4		//,
// code.c:12:                 int len = strlen(unique);
	add	x0, sp, 56	// tmp134,,
	bl	strlen		//
// code.c:12:                 int len = strlen(unique);
	str	w0, [sp, 44]	// tmp135, len
// code.c:13:                 unique[len] = words[i][j];
	ldrsw	x0, [sp, 32]	// _11, i
	lsl	x0, x0, 3	// _12, _11,
	ldr	x1, [sp, 8]	// tmp136, words
	add	x0, x1, x0	// _13, tmp136, _12
	ldr	x1, [x0]	// _14, *_13
// code.c:13:                 unique[len] = words[i][j];
	ldrsw	x0, [sp, 40]	// _15, j
	add	x0, x1, x0	// _16, _14, _15
	ldrb	w2, [x0]	// _17, *_16
// code.c:13:                 unique[len] = words[i][j];
	ldrsw	x0, [sp, 44]	// tmp137, len
	add	x1, sp, 56	// tmp138,,
	strb	w2, [x1, x0]	// tmp139, unique[len_59]
// code.c:14:                 unique[len + 1] = '\0';
	ldr	w0, [sp, 44]	// tmp140, len
	add	w0, w0, 1	// _18, tmp140,
// code.c:14:                 unique[len + 1] = '\0';
	sxtw	x0, w0	// tmp141, _18
	add	x1, sp, 56	// tmp142,,
	strb	wzr, [x1, x0]	//, unique[_18]
// code.c:15:                 unique_count++;
	ldr	w0, [sp, 36]	// tmp144, unique_count
	add	w0, w0, 1	// tmp143, tmp144,
	str	w0, [sp, 36]	// tmp143, unique_count
.L4:
// code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	ldr	w0, [sp, 40]	// tmp146, j
	add	w0, w0, 1	// tmp145, tmp146,
	str	w0, [sp, 40]	// tmp145, j
.L3:
// code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	ldrsw	x0, [sp, 32]	// _19, i
	lsl	x0, x0, 3	// _20, _19,
	ldr	x1, [sp, 8]	// tmp147, words
	add	x0, x1, x0	// _21, tmp147, _20
	ldr	x1, [x0]	// _22, *_21
// code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	ldrsw	x0, [sp, 40]	// _23, j
	add	x0, x1, x0	// _24, _22, _23
	ldrb	w0, [x0]	// _25, *_24
// code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	cmp	w0, 0	// _25,
	bne	.L5		//,
// code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	ldr	w1, [sp, 36]	// tmp148, unique_count
	ldr	w0, [sp, 28]	// tmp149, maxu
	cmp	w1, w0	// tmp148, tmp149
	bgt	.L6		//,
// code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	ldr	w1, [sp, 36]	// tmp150, unique_count
	ldr	w0, [sp, 28]	// tmp151, maxu
	cmp	w1, w0	// tmp150, tmp151
	bne	.L7		//,
// code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	ldrsw	x0, [sp, 32]	// _26, i
	lsl	x0, x0, 3	// _27, _26,
	ldr	x1, [sp, 8]	// tmp152, words
	add	x0, x1, x0	// _28, tmp152, _27
// code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	ldr	x0, [x0]	// _29, *_28
	ldr	x1, [sp, 48]	//, max
	bl	strcmp		//
// code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	cmp	w0, 0	// _30,
	bge	.L7		//,
.L6:
// code.c:19:             max = words[i];
	ldrsw	x0, [sp, 32]	// _31, i
	lsl	x0, x0, 3	// _32, _31,
	ldr	x1, [sp, 8]	// tmp153, words
	add	x0, x1, x0	// _33, tmp153, _32
// code.c:19:             max = words[i];
	ldr	x0, [x0]	// tmp154, *_33
	str	x0, [sp, 48]	// tmp154, max
// code.c:20:             maxu = unique_count;
	ldr	w0, [sp, 36]	// tmp155, unique_count
	str	w0, [sp, 28]	// tmp155, maxu
.L7:
// code.c:7:     for (int i = 0; i < count; i++) {
	ldr	w0, [sp, 32]	// tmp157, i
	add	w0, w0, 1	// tmp156, tmp157,
	str	w0, [sp, 32]	// tmp156, i
.L2:
// code.c:7:     for (int i = 0; i < count; i++) {
	ldr	w1, [sp, 32]	// tmp158, i
	ldr	w0, [sp, 4]	// tmp159, count
	cmp	w1, w0	// tmp158, tmp159
	blt	.L8		//,
// code.c:23:     return max;
	ldr	x0, [sp, 48]	// _50, max
// code.c:23:     return max;
	mov	x1, x0	// <retval>, _50
// code.c:24: }
	adrp	x0, :got:__stack_chk_guard	// tmp161,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp161,
	ldr	x3, [sp, 312]	// tmp163, D.5066
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
