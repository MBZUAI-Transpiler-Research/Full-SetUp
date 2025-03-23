	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 24]	// s0, s0
	str	x1, [sp, 16]	// s1, s1
// eval/problem55//code.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	ldr	x0, [sp, 24]	//, s0
	bl	strlen		//
// eval/problem55//code.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	str	w0, [sp, 56]	// tmp110, len0
// eval/problem55//code.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	ldr	x0, [sp, 16]	//, s1
	bl	strlen		//
// eval/problem55//code.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	str	w0, [sp, 60]	// tmp111, len1
// eval/problem55//code.c:7:     for (int i = 0; i < len0; i++) {
	str	wzr, [sp, 40]	//, i
// eval/problem55//code.c:7:     for (int i = 0; i < len0; i++) {
	b	.L2		//
.L9:
// eval/problem55//code.c:8:         bool found = false;
	strb	wzr, [sp, 38]	//, found
// eval/problem55//code.c:9:         for (int j = 0; j < len1; j++) {
	str	wzr, [sp, 44]	//, j
// eval/problem55//code.c:9:         for (int j = 0; j < len1; j++) {
	b	.L3		//
.L6:
// eval/problem55//code.c:10:             if (s0[i] == s1[j]) {
	ldrsw	x0, [sp, 40]	// _3, i
	ldr	x1, [sp, 24]	// tmp112, s0
	add	x0, x1, x0	// _4, tmp112, _3
	ldrb	w1, [x0]	// _5, *_4
// eval/problem55//code.c:10:             if (s0[i] == s1[j]) {
	ldrsw	x0, [sp, 44]	// _6, j
	ldr	x2, [sp, 16]	// tmp113, s1
	add	x0, x2, x0	// _7, tmp113, _6
	ldrb	w0, [x0]	// _8, *_7
// eval/problem55//code.c:10:             if (s0[i] == s1[j]) {
	cmp	w1, w0	// _5, _8
	bne	.L4		//,
// eval/problem55//code.c:11:                 found = true;
	mov	w0, 1	// tmp114,
	strb	w0, [sp, 38]	// tmp114, found
// eval/problem55//code.c:12:                 break;
	b	.L5		//
.L4:
// eval/problem55//code.c:9:         for (int j = 0; j < len1; j++) {
	ldr	w0, [sp, 44]	// tmp116, j
	add	w0, w0, 1	// tmp115, tmp116,
	str	w0, [sp, 44]	// tmp115, j
.L3:
// eval/problem55//code.c:9:         for (int j = 0; j < len1; j++) {
	ldr	w1, [sp, 44]	// tmp117, j
	ldr	w0, [sp, 60]	// tmp118, len1
	cmp	w1, w0	// tmp117, tmp118
	blt	.L6		//,
.L5:
// eval/problem55//code.c:15:         if (!found) return false;
	ldrb	w0, [sp, 38]	// tmp119, found
	eor	w0, w0, 1	// tmp120, tmp119,
	and	w0, w0, 255	// _9, tmp120
// eval/problem55//code.c:15:         if (!found) return false;
	cmp	w0, 0	// _9,
	beq	.L7		//,
// eval/problem55//code.c:15:         if (!found) return false;
	mov	w0, 0	// _23,
	b	.L8		//
.L7:
// eval/problem55//code.c:7:     for (int i = 0; i < len0; i++) {
	ldr	w0, [sp, 40]	// tmp122, i
	add	w0, w0, 1	// tmp121, tmp122,
	str	w0, [sp, 40]	// tmp121, i
.L2:
// eval/problem55//code.c:7:     for (int i = 0; i < len0; i++) {
	ldr	w1, [sp, 40]	// tmp123, i
	ldr	w0, [sp, 56]	// tmp124, len0
	cmp	w1, w0	// tmp123, tmp124
	blt	.L9		//,
// eval/problem55//code.c:17:     for (int i = 0; i < len1; i++) {
	str	wzr, [sp, 48]	//, i
// eval/problem55//code.c:17:     for (int i = 0; i < len1; i++) {
	b	.L10		//
.L16:
// eval/problem55//code.c:18:         bool found = false;
	strb	wzr, [sp, 39]	//, found
// eval/problem55//code.c:19:         for (int j = 0; j < len0; j++) {
	str	wzr, [sp, 52]	//, j
// eval/problem55//code.c:19:         for (int j = 0; j < len0; j++) {
	b	.L11		//
.L14:
// eval/problem55//code.c:20:             if (s1[i] == s0[j]) {
	ldrsw	x0, [sp, 48]	// _10, i
	ldr	x1, [sp, 16]	// tmp125, s1
	add	x0, x1, x0	// _11, tmp125, _10
	ldrb	w1, [x0]	// _12, *_11
// eval/problem55//code.c:20:             if (s1[i] == s0[j]) {
	ldrsw	x0, [sp, 52]	// _13, j
	ldr	x2, [sp, 24]	// tmp126, s0
	add	x0, x2, x0	// _14, tmp126, _13
	ldrb	w0, [x0]	// _15, *_14
// eval/problem55//code.c:20:             if (s1[i] == s0[j]) {
	cmp	w1, w0	// _12, _15
	bne	.L12		//,
// eval/problem55//code.c:21:                 found = true;
	mov	w0, 1	// tmp127,
	strb	w0, [sp, 39]	// tmp127, found
// eval/problem55//code.c:22:                 break;
	b	.L13		//
.L12:
// eval/problem55//code.c:19:         for (int j = 0; j < len0; j++) {
	ldr	w0, [sp, 52]	// tmp129, j
	add	w0, w0, 1	// tmp128, tmp129,
	str	w0, [sp, 52]	// tmp128, j
.L11:
// eval/problem55//code.c:19:         for (int j = 0; j < len0; j++) {
	ldr	w1, [sp, 52]	// tmp130, j
	ldr	w0, [sp, 56]	// tmp131, len0
	cmp	w1, w0	// tmp130, tmp131
	blt	.L14		//,
.L13:
// eval/problem55//code.c:25:         if (!found) return false;
	ldrb	w0, [sp, 39]	// tmp132, found
	eor	w0, w0, 1	// tmp133, tmp132,
	and	w0, w0, 255	// _16, tmp133
// eval/problem55//code.c:25:         if (!found) return false;
	cmp	w0, 0	// _16,
	beq	.L15		//,
// eval/problem55//code.c:25:         if (!found) return false;
	mov	w0, 0	// _23,
	b	.L8		//
.L15:
// eval/problem55//code.c:17:     for (int i = 0; i < len1; i++) {
	ldr	w0, [sp, 48]	// tmp135, i
	add	w0, w0, 1	// tmp134, tmp135,
	str	w0, [sp, 48]	// tmp134, i
.L10:
// eval/problem55//code.c:17:     for (int i = 0; i < len1; i++) {
	ldr	w1, [sp, 48]	// tmp136, i
	ldr	w0, [sp, 60]	// tmp137, len1
	cmp	w1, w0	// tmp136, tmp137
	blt	.L16		//,
// eval/problem55//code.c:27:     return true;
	mov	w0, 1	// _23,
.L8:
// eval/problem55//code.c:28: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
