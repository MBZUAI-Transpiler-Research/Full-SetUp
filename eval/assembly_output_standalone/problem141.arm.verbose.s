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
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -48
	str	x0, [sp, 40]	// text, text
	str	x1, [sp, 32]	// out, out
// eval/problem141//code.c:5:     int space_len = 0;
	str	wzr, [sp, 52]	//, space_len
// eval/problem141//code.c:6:     int j = 0;
	str	wzr, [sp, 56]	//, j
// eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	str	wzr, [sp, 60]	//, i
// eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	b	.L2		//
.L8:
// eval/problem141//code.c:8:         if (text[i] == ' ') {
	ldrsw	x0, [sp, 60]	// _1, i
	ldr	x1, [sp, 40]	// tmp129, text
	add	x0, x1, x0	// _2, tmp129, _1
	ldrb	w0, [x0]	// _3, *_2
// eval/problem141//code.c:8:         if (text[i] == ' ') {
	cmp	w0, 32	// _3,
	bne	.L3		//,
// eval/problem141//code.c:9:             space_len++;
	ldr	w0, [sp, 52]	// tmp131, space_len
	add	w0, w0, 1	// tmp130, tmp131,
	str	w0, [sp, 52]	// tmp130, space_len
	b	.L4		//
.L3:
// eval/problem141//code.c:11:             if (space_len == 1) out[j++] = '_';
	ldr	w0, [sp, 52]	// tmp132, space_len
	cmp	w0, 1	// tmp132,
	bne	.L5		//,
// eval/problem141//code.c:11:             if (space_len == 1) out[j++] = '_';
	ldr	w0, [sp, 56]	// j.0_4, j
	add	w1, w0, 1	// tmp133, j.0_4,
	str	w1, [sp, 56]	// tmp133, j
	sxtw	x0, w0	// _5, j.0_4
// eval/problem141//code.c:11:             if (space_len == 1) out[j++] = '_';
	ldr	x1, [sp, 32]	// tmp134, out
	add	x0, x1, x0	// _6, tmp134, _5
// eval/problem141//code.c:11:             if (space_len == 1) out[j++] = '_';
	mov	w1, 95	// tmp135,
	strb	w1, [x0]	// tmp135, *_6
.L5:
// eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ldr	w0, [sp, 52]	// tmp136, space_len
	cmp	w0, 2	// tmp136,
	bne	.L6		//,
// eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ldr	w0, [sp, 56]	// j.1_7, j
	add	w1, w0, 1	// tmp137, j.1_7,
	str	w1, [sp, 56]	// tmp137, j
	sxtw	x0, w0	// _8, j.1_7
// eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ldr	x1, [sp, 32]	// tmp138, out
	add	x0, x1, x0	// _9, tmp138, _8
// eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	mov	w1, 95	// tmp139,
	strb	w1, [x0]	// tmp139, *_9
// eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ldr	w0, [sp, 56]	// j.2_10, j
	add	w1, w0, 1	// tmp140, j.2_10,
	str	w1, [sp, 56]	// tmp140, j
	sxtw	x0, w0	// _11, j.2_10
// eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ldr	x1, [sp, 32]	// tmp141, out
	add	x0, x1, x0	// _12, tmp141, _11
// eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	mov	w1, 95	// tmp142,
	strb	w1, [x0]	// tmp142, *_12
.L6:
// eval/problem141//code.c:13:             if (space_len > 2) out[j++] = '-';
	ldr	w0, [sp, 52]	// tmp143, space_len
	cmp	w0, 2	// tmp143,
	ble	.L7		//,
// eval/problem141//code.c:13:             if (space_len > 2) out[j++] = '-';
	ldr	w0, [sp, 56]	// j.3_13, j
	add	w1, w0, 1	// tmp144, j.3_13,
	str	w1, [sp, 56]	// tmp144, j
	sxtw	x0, w0	// _14, j.3_13
// eval/problem141//code.c:13:             if (space_len > 2) out[j++] = '-';
	ldr	x1, [sp, 32]	// tmp145, out
	add	x0, x1, x0	// _15, tmp145, _14
// eval/problem141//code.c:13:             if (space_len > 2) out[j++] = '-';
	mov	w1, 45	// tmp146,
	strb	w1, [x0]	// tmp146, *_15
.L7:
// eval/problem141//code.c:14:             space_len = 0;
	str	wzr, [sp, 52]	//, space_len
// eval/problem141//code.c:15:             out[j++] = text[i];
	ldrsw	x0, [sp, 60]	// _16, i
	ldr	x1, [sp, 40]	// tmp147, text
	add	x1, x1, x0	// _17, tmp147, _16
// eval/problem141//code.c:15:             out[j++] = text[i];
	ldr	w0, [sp, 56]	// j.4_18, j
	add	w2, w0, 1	// tmp148, j.4_18,
	str	w2, [sp, 56]	// tmp148, j
	sxtw	x0, w0	// _19, j.4_18
// eval/problem141//code.c:15:             out[j++] = text[i];
	ldr	x2, [sp, 32]	// tmp149, out
	add	x0, x2, x0	// _20, tmp149, _19
// eval/problem141//code.c:15:             out[j++] = text[i];
	ldrb	w1, [x1]	// _21, *_17
// eval/problem141//code.c:15:             out[j++] = text[i];
	strb	w1, [x0]	// tmp150, *_20
.L4:
// eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	ldr	w0, [sp, 60]	// tmp152, i
	add	w0, w0, 1	// tmp151, tmp152,
	str	w0, [sp, 60]	// tmp151, i
.L2:
// eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	ldrsw	x19, [sp, 60]	// _22, i
// eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	ldr	x0, [sp, 40]	//, text
	bl	strlen		//
// eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	cmp	x19, x0	// _22, _23
	bcc	.L8		//,
// eval/problem141//code.c:18:     if (space_len == 1) out[j++] = '_';
	ldr	w0, [sp, 52]	// tmp153, space_len
	cmp	w0, 1	// tmp153,
	bne	.L9		//,
// eval/problem141//code.c:18:     if (space_len == 1) out[j++] = '_';
	ldr	w0, [sp, 56]	// j.5_24, j
	add	w1, w0, 1	// tmp154, j.5_24,
	str	w1, [sp, 56]	// tmp154, j
	sxtw	x0, w0	// _25, j.5_24
// eval/problem141//code.c:18:     if (space_len == 1) out[j++] = '_';
	ldr	x1, [sp, 32]	// tmp155, out
	add	x0, x1, x0	// _26, tmp155, _25
// eval/problem141//code.c:18:     if (space_len == 1) out[j++] = '_';
	mov	w1, 95	// tmp156,
	strb	w1, [x0]	// tmp156, *_26
.L9:
// eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ldr	w0, [sp, 52]	// tmp157, space_len
	cmp	w0, 2	// tmp157,
	bne	.L10		//,
// eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ldr	w0, [sp, 56]	// j.6_27, j
	add	w1, w0, 1	// tmp158, j.6_27,
	str	w1, [sp, 56]	// tmp158, j
	sxtw	x0, w0	// _28, j.6_27
// eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ldr	x1, [sp, 32]	// tmp159, out
	add	x0, x1, x0	// _29, tmp159, _28
// eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	mov	w1, 95	// tmp160,
	strb	w1, [x0]	// tmp160, *_29
// eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ldr	w0, [sp, 56]	// j.7_30, j
	add	w1, w0, 1	// tmp161, j.7_30,
	str	w1, [sp, 56]	// tmp161, j
	sxtw	x0, w0	// _31, j.7_30
// eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ldr	x1, [sp, 32]	// tmp162, out
	add	x0, x1, x0	// _32, tmp162, _31
// eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	mov	w1, 95	// tmp163,
	strb	w1, [x0]	// tmp163, *_32
.L10:
// eval/problem141//code.c:20:     if (space_len > 2) out[j++] = '-';
	ldr	w0, [sp, 52]	// tmp164, space_len
	cmp	w0, 2	// tmp164,
	ble	.L11		//,
// eval/problem141//code.c:20:     if (space_len > 2) out[j++] = '-';
	ldr	w0, [sp, 56]	// j.8_33, j
	add	w1, w0, 1	// tmp165, j.8_33,
	str	w1, [sp, 56]	// tmp165, j
	sxtw	x0, w0	// _34, j.8_33
// eval/problem141//code.c:20:     if (space_len > 2) out[j++] = '-';
	ldr	x1, [sp, 32]	// tmp166, out
	add	x0, x1, x0	// _35, tmp166, _34
// eval/problem141//code.c:20:     if (space_len > 2) out[j++] = '-';
	mov	w1, 45	// tmp167,
	strb	w1, [x0]	// tmp167, *_35
.L11:
// eval/problem141//code.c:21:     out[j] = '\0';
	ldrsw	x0, [sp, 56]	// _36, j
	ldr	x1, [sp, 32]	// tmp168, out
	add	x0, x1, x0	// _37, tmp168, _36
// eval/problem141//code.c:21:     out[j] = '\0';
	strb	wzr, [x0]	//, *_37
// eval/problem141//code.c:22: }
	nop	
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
