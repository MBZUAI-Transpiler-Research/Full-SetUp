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
	.string	"Yes"
	.align	3
.LC1:
	.string	"No"
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
	str	x0, [sp, 24]	// s1, s1
	str	x1, [sp, 16]	// s2, s2
// code.c:5:     int count = 0;
	str	wzr, [sp, 44]	//, count
// code.c:6:     int len1 = strlen(s1);
	ldr	x0, [sp, 24]	//, s1
	bl	strlen		//
// code.c:6:     int len1 = strlen(s1);
	str	w0, [sp, 56]	// tmp120, len1
// code.c:7:     int len2 = strlen(s2);
	ldr	x0, [sp, 16]	//, s2
	bl	strlen		//
// code.c:7:     int len2 = strlen(s2);
	str	w0, [sp, 60]	// tmp121, len2
// code.c:9:     int can = 1;
	mov	w0, 1	// tmp122,
	str	w0, [sp, 52]	// tmp122, can
// code.c:11:     for (i = 0; i < len1; i++) {
	str	wzr, [sp, 48]	//, i
// code.c:11:     for (i = 0; i < len1; i++) {
	b	.L2		//
.L6:
// code.c:12:         if (s1[i] == '(') count++;
	ldrsw	x0, [sp, 48]	// _3, i
	ldr	x1, [sp, 24]	// tmp123, s1
	add	x0, x1, x0	// _4, tmp123, _3
	ldrb	w0, [x0]	// _5, *_4
// code.c:12:         if (s1[i] == '(') count++;
	cmp	w0, 40	// _5,
	bne	.L3		//,
// code.c:12:         if (s1[i] == '(') count++;
	ldr	w0, [sp, 44]	// tmp125, count
	add	w0, w0, 1	// tmp124, tmp125,
	str	w0, [sp, 44]	// tmp124, count
.L3:
// code.c:13:         if (s1[i] == ')') count--;
	ldrsw	x0, [sp, 48]	// _6, i
	ldr	x1, [sp, 24]	// tmp126, s1
	add	x0, x1, x0	// _7, tmp126, _6
	ldrb	w0, [x0]	// _8, *_7
// code.c:13:         if (s1[i] == ')') count--;
	cmp	w0, 41	// _8,
	bne	.L4		//,
// code.c:13:         if (s1[i] == ')') count--;
	ldr	w0, [sp, 44]	// tmp128, count
	sub	w0, w0, #1	// tmp127, tmp128,
	str	w0, [sp, 44]	// tmp127, count
.L4:
// code.c:14:         if (count < 0) can = 0;
	ldr	w0, [sp, 44]	// tmp129, count
	cmp	w0, 0	// tmp129,
	bge	.L5		//,
// code.c:14:         if (count < 0) can = 0;
	str	wzr, [sp, 52]	//, can
.L5:
// code.c:11:     for (i = 0; i < len1; i++) {
	ldr	w0, [sp, 48]	// tmp131, i
	add	w0, w0, 1	// tmp130, tmp131,
	str	w0, [sp, 48]	// tmp130, i
.L2:
// code.c:11:     for (i = 0; i < len1; i++) {
	ldr	w1, [sp, 48]	// tmp132, i
	ldr	w0, [sp, 56]	// tmp133, len1
	cmp	w1, w0	// tmp132, tmp133
	blt	.L6		//,
// code.c:16:     for (i = 0; i < len2; i++) {
	str	wzr, [sp, 48]	//, i
// code.c:16:     for (i = 0; i < len2; i++) {
	b	.L7		//
.L11:
// code.c:17:         if (s2[i] == '(') count++;
	ldrsw	x0, [sp, 48]	// _9, i
	ldr	x1, [sp, 16]	// tmp134, s2
	add	x0, x1, x0	// _10, tmp134, _9
	ldrb	w0, [x0]	// _11, *_10
// code.c:17:         if (s2[i] == '(') count++;
	cmp	w0, 40	// _11,
	bne	.L8		//,
// code.c:17:         if (s2[i] == '(') count++;
	ldr	w0, [sp, 44]	// tmp136, count
	add	w0, w0, 1	// tmp135, tmp136,
	str	w0, [sp, 44]	// tmp135, count
.L8:
// code.c:18:         if (s2[i] == ')') count--;
	ldrsw	x0, [sp, 48]	// _12, i
	ldr	x1, [sp, 16]	// tmp137, s2
	add	x0, x1, x0	// _13, tmp137, _12
	ldrb	w0, [x0]	// _14, *_13
// code.c:18:         if (s2[i] == ')') count--;
	cmp	w0, 41	// _14,
	bne	.L9		//,
// code.c:18:         if (s2[i] == ')') count--;
	ldr	w0, [sp, 44]	// tmp139, count
	sub	w0, w0, #1	// tmp138, tmp139,
	str	w0, [sp, 44]	// tmp138, count
.L9:
// code.c:19:         if (count < 0) can = 0;
	ldr	w0, [sp, 44]	// tmp140, count
	cmp	w0, 0	// tmp140,
	bge	.L10		//,
// code.c:19:         if (count < 0) can = 0;
	str	wzr, [sp, 52]	//, can
.L10:
// code.c:16:     for (i = 0; i < len2; i++) {
	ldr	w0, [sp, 48]	// tmp142, i
	add	w0, w0, 1	// tmp141, tmp142,
	str	w0, [sp, 48]	// tmp141, i
.L7:
// code.c:16:     for (i = 0; i < len2; i++) {
	ldr	w1, [sp, 48]	// tmp143, i
	ldr	w0, [sp, 60]	// tmp144, len2
	cmp	w1, w0	// tmp143, tmp144
	blt	.L11		//,
// code.c:21:     if (count == 0 && can) return "Yes";
	ldr	w0, [sp, 44]	// tmp145, count
	cmp	w0, 0	// tmp145,
	bne	.L12		//,
// code.c:21:     if (count == 0 && can) return "Yes";
	ldr	w0, [sp, 52]	// tmp146, can
	cmp	w0, 0	// tmp146,
	beq	.L12		//,
// code.c:21:     if (count == 0 && can) return "Yes";
	adrp	x0, .LC0	// tmp147,
	add	x0, x0, :lo12:.LC0	// _51, tmp147,
// code.c:21:     if (count == 0 && can) return "Yes";
	b	.L13		//
.L12:
// code.c:23:     count = 0;
	str	wzr, [sp, 44]	//, count
// code.c:24:     can = 1;
	mov	w0, 1	// tmp148,
	str	w0, [sp, 52]	// tmp148, can
// code.c:26:     for (i = 0; i < len2; i++) {
	str	wzr, [sp, 48]	//, i
// code.c:26:     for (i = 0; i < len2; i++) {
	b	.L14		//
.L18:
// code.c:27:         if (s2[i] == '(') count++;
	ldrsw	x0, [sp, 48]	// _15, i
	ldr	x1, [sp, 16]	// tmp149, s2
	add	x0, x1, x0	// _16, tmp149, _15
	ldrb	w0, [x0]	// _17, *_16
// code.c:27:         if (s2[i] == '(') count++;
	cmp	w0, 40	// _17,
	bne	.L15		//,
// code.c:27:         if (s2[i] == '(') count++;
	ldr	w0, [sp, 44]	// tmp151, count
	add	w0, w0, 1	// tmp150, tmp151,
	str	w0, [sp, 44]	// tmp150, count
.L15:
// code.c:28:         if (s2[i] == ')') count--;
	ldrsw	x0, [sp, 48]	// _18, i
	ldr	x1, [sp, 16]	// tmp152, s2
	add	x0, x1, x0	// _19, tmp152, _18
	ldrb	w0, [x0]	// _20, *_19
// code.c:28:         if (s2[i] == ')') count--;
	cmp	w0, 41	// _20,
	bne	.L16		//,
// code.c:28:         if (s2[i] == ')') count--;
	ldr	w0, [sp, 44]	// tmp154, count
	sub	w0, w0, #1	// tmp153, tmp154,
	str	w0, [sp, 44]	// tmp153, count
.L16:
// code.c:29:         if (count < 0) can = 0;
	ldr	w0, [sp, 44]	// tmp155, count
	cmp	w0, 0	// tmp155,
	bge	.L17		//,
// code.c:29:         if (count < 0) can = 0;
	str	wzr, [sp, 52]	//, can
.L17:
// code.c:26:     for (i = 0; i < len2; i++) {
	ldr	w0, [sp, 48]	// tmp157, i
	add	w0, w0, 1	// tmp156, tmp157,
	str	w0, [sp, 48]	// tmp156, i
.L14:
// code.c:26:     for (i = 0; i < len2; i++) {
	ldr	w1, [sp, 48]	// tmp158, i
	ldr	w0, [sp, 60]	// tmp159, len2
	cmp	w1, w0	// tmp158, tmp159
	blt	.L18		//,
// code.c:31:     for (i = 0; i < len1; i++) {
	str	wzr, [sp, 48]	//, i
// code.c:31:     for (i = 0; i < len1; i++) {
	b	.L19		//
.L23:
// code.c:32:         if (s1[i] == '(') count++;
	ldrsw	x0, [sp, 48]	// _21, i
	ldr	x1, [sp, 24]	// tmp160, s1
	add	x0, x1, x0	// _22, tmp160, _21
	ldrb	w0, [x0]	// _23, *_22
// code.c:32:         if (s1[i] == '(') count++;
	cmp	w0, 40	// _23,
	bne	.L20		//,
// code.c:32:         if (s1[i] == '(') count++;
	ldr	w0, [sp, 44]	// tmp162, count
	add	w0, w0, 1	// tmp161, tmp162,
	str	w0, [sp, 44]	// tmp161, count
.L20:
// code.c:33:         if (s1[i] == ')') count--;
	ldrsw	x0, [sp, 48]	// _24, i
	ldr	x1, [sp, 24]	// tmp163, s1
	add	x0, x1, x0	// _25, tmp163, _24
	ldrb	w0, [x0]	// _26, *_25
// code.c:33:         if (s1[i] == ')') count--;
	cmp	w0, 41	// _26,
	bne	.L21		//,
// code.c:33:         if (s1[i] == ')') count--;
	ldr	w0, [sp, 44]	// tmp165, count
	sub	w0, w0, #1	// tmp164, tmp165,
	str	w0, [sp, 44]	// tmp164, count
.L21:
// code.c:34:         if (count < 0) can = 0;
	ldr	w0, [sp, 44]	// tmp166, count
	cmp	w0, 0	// tmp166,
	bge	.L22		//,
// code.c:34:         if (count < 0) can = 0;
	str	wzr, [sp, 52]	//, can
.L22:
// code.c:31:     for (i = 0; i < len1; i++) {
	ldr	w0, [sp, 48]	// tmp168, i
	add	w0, w0, 1	// tmp167, tmp168,
	str	w0, [sp, 48]	// tmp167, i
.L19:
// code.c:31:     for (i = 0; i < len1; i++) {
	ldr	w1, [sp, 48]	// tmp169, i
	ldr	w0, [sp, 56]	// tmp170, len1
	cmp	w1, w0	// tmp169, tmp170
	blt	.L23		//,
// code.c:36:     if (count == 0 && can) return "Yes";
	ldr	w0, [sp, 44]	// tmp171, count
	cmp	w0, 0	// tmp171,
	bne	.L24		//,
// code.c:36:     if (count == 0 && can) return "Yes";
	ldr	w0, [sp, 52]	// tmp172, can
	cmp	w0, 0	// tmp172,
	beq	.L24		//,
// code.c:36:     if (count == 0 && can) return "Yes";
	adrp	x0, .LC0	// tmp173,
	add	x0, x0, :lo12:.LC0	// _51, tmp173,
// code.c:36:     if (count == 0 && can) return "Yes";
	b	.L13		//
.L24:
// code.c:38:     return "No";
	adrp	x0, .LC1	// tmp174,
	add	x0, x0, :lo12:.LC1	// _51, tmp174,
.L13:
// code.c:39: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
