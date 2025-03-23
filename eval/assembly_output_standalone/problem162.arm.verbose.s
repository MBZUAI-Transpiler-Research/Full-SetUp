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
	str	x0, [sp, 24]	// s, s
// eval/problem162//code.c:6:     int nletter = 0;
	str	wzr, [sp, 48]	//, nletter
// eval/problem162//code.c:7:     int length = strlen(s);
	ldr	x0, [sp, 24]	//, s
	bl	strlen		//
// eval/problem162//code.c:7:     int length = strlen(s);
	str	w0, [sp, 60]	// tmp158, length
// eval/problem162//code.c:8:     for (int i = 0; i < length; i++) {
	str	wzr, [sp, 52]	//, i
// eval/problem162//code.c:8:     for (int i = 0; i < length; i++) {
	b	.L2		//
.L6:
// eval/problem162//code.c:9:         if (isalpha((unsigned char)s[i])) {
	bl	__ctype_b_loc		//
	ldr	x1, [x0]	// _3, *_2
	ldrsw	x0, [sp, 52]	// _4, i
	ldr	x2, [sp, 24]	// tmp159, s
	add	x0, x2, x0	// _5, tmp159, _4
	ldrb	w0, [x0]	// _6, *_5
	and	x0, x0, 255	// _7, _6
	lsl	x0, x0, 1	// _8, _7,
	add	x0, x1, x0	// _9, _3, _8
	ldrh	w0, [x0]	// _10, *_9
	and	w0, w0, 1024	// _12, _11,
// eval/problem162//code.c:9:         if (isalpha((unsigned char)s[i])) {
	cmp	w0, 0	// _12,
	beq	.L3		//,
// eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	bl	__ctype_b_loc		//
	ldr	x1, [x0]	// _14, *_13
	ldrsw	x0, [sp, 52]	// _15, i
	ldr	x2, [sp, 24]	// tmp160, s
	add	x0, x2, x0	// _16, tmp160, _15
	ldrb	w0, [x0]	// _17, *_16
	and	x0, x0, 255	// _18, _17
	lsl	x0, x0, 1	// _19, _18,
	add	x0, x1, x0	// _20, _14, _19
	ldrh	w0, [x0]	// _21, *_20
	and	w0, w0, 256	// _23, _22,
// eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	cmp	w0, 0	// _23,
	beq	.L4		//,
// eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	ldrsw	x0, [sp, 52]	// _24, i
	ldr	x1, [sp, 24]	// tmp161, s
	add	x0, x1, x0	// _25, tmp161, _24
	ldrb	w0, [x0]	// _26, *_25
// eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	bl	tolower		//
	mov	w2, w0	// _28,
// eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	ldrsw	x0, [sp, 52]	// _29, i
	ldr	x1, [sp, 24]	// tmp162, s
	add	x0, x1, x0	// _30, tmp162, _29
// eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	and	w1, w2, 255	// _31, _28
	strb	w1, [x0]	// tmp163, *_30
	b	.L5		//
.L4:
// eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	bl	__ctype_b_loc		//
	ldr	x1, [x0]	// _33, *_32
	ldrsw	x0, [sp, 52]	// _34, i
	ldr	x2, [sp, 24]	// tmp164, s
	add	x0, x2, x0	// _35, tmp164, _34
	ldrb	w0, [x0]	// _36, *_35
	and	x0, x0, 255	// _37, _36
	lsl	x0, x0, 1	// _38, _37,
	add	x0, x1, x0	// _39, _33, _38
	ldrh	w0, [x0]	// _40, *_39
	and	w0, w0, 512	// _42, _41,
// eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	cmp	w0, 0	// _42,
	beq	.L5		//,
// eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	ldrsw	x0, [sp, 52]	// _43, i
	ldr	x1, [sp, 24]	// tmp165, s
	add	x0, x1, x0	// _44, tmp165, _43
	ldrb	w0, [x0]	// _45, *_44
// eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	bl	toupper		//
	mov	w2, w0	// _47,
// eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	ldrsw	x0, [sp, 52]	// _48, i
	ldr	x1, [sp, 24]	// tmp166, s
	add	x0, x1, x0	// _49, tmp166, _48
// eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	and	w1, w2, 255	// _50, _47
	strb	w1, [x0]	// tmp167, *_49
	b	.L5		//
.L3:
// eval/problem162//code.c:13:             nletter += 1;
	ldr	w0, [sp, 48]	// tmp169, nletter
	add	w0, w0, 1	// tmp168, tmp169,
	str	w0, [sp, 48]	// tmp168, nletter
.L5:
// eval/problem162//code.c:8:     for (int i = 0; i < length; i++) {
	ldr	w0, [sp, 52]	// tmp171, i
	add	w0, w0, 1	// tmp170, tmp171,
	str	w0, [sp, 52]	// tmp170, i
.L2:
// eval/problem162//code.c:8:     for (int i = 0; i < length; i++) {
	ldr	w1, [sp, 52]	// tmp172, i
	ldr	w0, [sp, 60]	// tmp173, length
	cmp	w1, w0	// tmp172, tmp173
	blt	.L6		//,
// eval/problem162//code.c:16:     if (nletter == length) {
	ldr	w1, [sp, 48]	// tmp174, nletter
	ldr	w0, [sp, 60]	// tmp175, length
	cmp	w1, w0	// tmp174, tmp175
	bne	.L7		//,
// eval/problem162//code.c:17:         for (int i = 0; i < length / 2; i++) {
	str	wzr, [sp, 56]	//, i
// eval/problem162//code.c:17:         for (int i = 0; i < length / 2; i++) {
	b	.L8		//
.L9:
// eval/problem162//code.c:18:             char temp = s[i];
	ldrsw	x0, [sp, 56]	// _51, i
	ldr	x1, [sp, 24]	// tmp176, s
	add	x0, x1, x0	// _52, tmp176, _51
// eval/problem162//code.c:18:             char temp = s[i];
	ldrb	w0, [x0]	// tmp177, *_52
	strb	w0, [sp, 47]	// tmp177, temp
// eval/problem162//code.c:19:             s[i] = s[length - i - 1];
	ldr	w1, [sp, 60]	// tmp178, length
	ldr	w0, [sp, 56]	// tmp179, i
	sub	w0, w1, w0	// _53, tmp178, tmp179
	sxtw	x0, w0	// _54, _53
// eval/problem162//code.c:19:             s[i] = s[length - i - 1];
	sub	x0, x0, #1	// _55, _54,
	ldr	x1, [sp, 24]	// tmp180, s
	add	x1, x1, x0	// _56, tmp180, _55
// eval/problem162//code.c:19:             s[i] = s[length - i - 1];
	ldrsw	x0, [sp, 56]	// _57, i
	ldr	x2, [sp, 24]	// tmp181, s
	add	x0, x2, x0	// _58, tmp181, _57
// eval/problem162//code.c:19:             s[i] = s[length - i - 1];
	ldrb	w1, [x1]	// _59, *_56
// eval/problem162//code.c:19:             s[i] = s[length - i - 1];
	strb	w1, [x0]	// tmp182, *_58
// eval/problem162//code.c:20:             s[length - i - 1] = temp;
	ldr	w1, [sp, 60]	// tmp183, length
	ldr	w0, [sp, 56]	// tmp184, i
	sub	w0, w1, w0	// _60, tmp183, tmp184
	sxtw	x0, w0	// _61, _60
// eval/problem162//code.c:20:             s[length - i - 1] = temp;
	sub	x0, x0, #1	// _62, _61,
	ldr	x1, [sp, 24]	// tmp185, s
	add	x0, x1, x0	// _63, tmp185, _62
// eval/problem162//code.c:20:             s[length - i - 1] = temp;
	ldrb	w1, [sp, 47]	// tmp186, temp
	strb	w1, [x0]	// tmp186, *_63
// eval/problem162//code.c:17:         for (int i = 0; i < length / 2; i++) {
	ldr	w0, [sp, 56]	// tmp188, i
	add	w0, w0, 1	// tmp187, tmp188,
	str	w0, [sp, 56]	// tmp187, i
.L8:
// eval/problem162//code.c:17:         for (int i = 0; i < length / 2; i++) {
	ldr	w0, [sp, 60]	// tmp189, length
	lsr	w1, w0, 31	// tmp190, tmp189,
	add	w0, w1, w0	// tmp191, tmp190, tmp189
	asr	w0, w0, 1	// tmp192, tmp191,
	mov	w1, w0	// _64, tmp192
// eval/problem162//code.c:17:         for (int i = 0; i < length / 2; i++) {
	ldr	w0, [sp, 56]	// tmp193, i
	cmp	w0, w1	// tmp193, _64
	blt	.L9		//,
.L7:
// eval/problem162//code.c:23:     return s;
	ldr	x0, [sp, 24]	// _83, s
// eval/problem162//code.c:24: }
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
