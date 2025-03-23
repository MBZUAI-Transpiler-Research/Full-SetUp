	.arch armv8-a
	.file	"problem141.c"
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
// problem141.c:5:     int space_len = 0;
	str	wzr, [sp, 52]	//, space_len
// problem141.c:6:     int j = 0;
	str	wzr, [sp, 56]	//, j
// problem141.c:7:     for (int i = 0; i < strlen(text); i++) {
	str	wzr, [sp, 60]	//, i
// problem141.c:7:     for (int i = 0; i < strlen(text); i++) {
	b	.L2		//
.L8:
// problem141.c:8:         if (text[i] == ' ') {
	ldrsw	x0, [sp, 60]	// _1, i
	ldr	x1, [sp, 40]	// tmp129, text
	add	x0, x1, x0	// _2, tmp129, _1
	ldrb	w0, [x0]	// _3, *_2
// problem141.c:8:         if (text[i] == ' ') {
	cmp	w0, 32	// _3,
	bne	.L3		//,
// problem141.c:9:             space_len++;
	ldr	w0, [sp, 52]	// tmp131, space_len
	add	w0, w0, 1	// tmp130, tmp131,
	str	w0, [sp, 52]	// tmp130, space_len
	b	.L4		//
.L3:
// problem141.c:11:             if (space_len == 1) out[j++] = '_';
	ldr	w0, [sp, 52]	// tmp132, space_len
	cmp	w0, 1	// tmp132,
	bne	.L5		//,
// problem141.c:11:             if (space_len == 1) out[j++] = '_';
	ldr	w0, [sp, 56]	// j.0_4, j
	add	w1, w0, 1	// tmp133, j.0_4,
	str	w1, [sp, 56]	// tmp133, j
	sxtw	x0, w0	// _5, j.0_4
// problem141.c:11:             if (space_len == 1) out[j++] = '_';
	ldr	x1, [sp, 32]	// tmp134, out
	add	x0, x1, x0	// _6, tmp134, _5
// problem141.c:11:             if (space_len == 1) out[j++] = '_';
	mov	w1, 95	// tmp135,
	strb	w1, [x0]	// tmp135, *_6
.L5:
// problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ldr	w0, [sp, 52]	// tmp136, space_len
	cmp	w0, 2	// tmp136,
	bne	.L6		//,
// problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ldr	w0, [sp, 56]	// j.1_7, j
	add	w1, w0, 1	// tmp137, j.1_7,
	str	w1, [sp, 56]	// tmp137, j
	sxtw	x0, w0	// _8, j.1_7
// problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ldr	x1, [sp, 32]	// tmp138, out
	add	x0, x1, x0	// _9, tmp138, _8
// problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	mov	w1, 95	// tmp139,
	strb	w1, [x0]	// tmp139, *_9
// problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ldr	w0, [sp, 56]	// j.2_10, j
	add	w1, w0, 1	// tmp140, j.2_10,
	str	w1, [sp, 56]	// tmp140, j
	sxtw	x0, w0	// _11, j.2_10
// problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ldr	x1, [sp, 32]	// tmp141, out
	add	x0, x1, x0	// _12, tmp141, _11
// problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	mov	w1, 95	// tmp142,
	strb	w1, [x0]	// tmp142, *_12
.L6:
// problem141.c:13:             if (space_len > 2) out[j++] = '-';
	ldr	w0, [sp, 52]	// tmp143, space_len
	cmp	w0, 2	// tmp143,
	ble	.L7		//,
// problem141.c:13:             if (space_len > 2) out[j++] = '-';
	ldr	w0, [sp, 56]	// j.3_13, j
	add	w1, w0, 1	// tmp144, j.3_13,
	str	w1, [sp, 56]	// tmp144, j
	sxtw	x0, w0	// _14, j.3_13
// problem141.c:13:             if (space_len > 2) out[j++] = '-';
	ldr	x1, [sp, 32]	// tmp145, out
	add	x0, x1, x0	// _15, tmp145, _14
// problem141.c:13:             if (space_len > 2) out[j++] = '-';
	mov	w1, 45	// tmp146,
	strb	w1, [x0]	// tmp146, *_15
.L7:
// problem141.c:14:             space_len = 0;
	str	wzr, [sp, 52]	//, space_len
// problem141.c:15:             out[j++] = text[i];
	ldrsw	x0, [sp, 60]	// _16, i
	ldr	x1, [sp, 40]	// tmp147, text
	add	x1, x1, x0	// _17, tmp147, _16
// problem141.c:15:             out[j++] = text[i];
	ldr	w0, [sp, 56]	// j.4_18, j
	add	w2, w0, 1	// tmp148, j.4_18,
	str	w2, [sp, 56]	// tmp148, j
	sxtw	x0, w0	// _19, j.4_18
// problem141.c:15:             out[j++] = text[i];
	ldr	x2, [sp, 32]	// tmp149, out
	add	x0, x2, x0	// _20, tmp149, _19
// problem141.c:15:             out[j++] = text[i];
	ldrb	w1, [x1]	// _21, *_17
// problem141.c:15:             out[j++] = text[i];
	strb	w1, [x0]	// tmp150, *_20
.L4:
// problem141.c:7:     for (int i = 0; i < strlen(text); i++) {
	ldr	w0, [sp, 60]	// tmp152, i
	add	w0, w0, 1	// tmp151, tmp152,
	str	w0, [sp, 60]	// tmp151, i
.L2:
// problem141.c:7:     for (int i = 0; i < strlen(text); i++) {
	ldrsw	x19, [sp, 60]	// _22, i
// problem141.c:7:     for (int i = 0; i < strlen(text); i++) {
	ldr	x0, [sp, 40]	//, text
	bl	strlen		//
// problem141.c:7:     for (int i = 0; i < strlen(text); i++) {
	cmp	x19, x0	// _22, _23
	bcc	.L8		//,
// problem141.c:18:     if (space_len == 1) out[j++] = '_';
	ldr	w0, [sp, 52]	// tmp153, space_len
	cmp	w0, 1	// tmp153,
	bne	.L9		//,
// problem141.c:18:     if (space_len == 1) out[j++] = '_';
	ldr	w0, [sp, 56]	// j.5_24, j
	add	w1, w0, 1	// tmp154, j.5_24,
	str	w1, [sp, 56]	// tmp154, j
	sxtw	x0, w0	// _25, j.5_24
// problem141.c:18:     if (space_len == 1) out[j++] = '_';
	ldr	x1, [sp, 32]	// tmp155, out
	add	x0, x1, x0	// _26, tmp155, _25
// problem141.c:18:     if (space_len == 1) out[j++] = '_';
	mov	w1, 95	// tmp156,
	strb	w1, [x0]	// tmp156, *_26
.L9:
// problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ldr	w0, [sp, 52]	// tmp157, space_len
	cmp	w0, 2	// tmp157,
	bne	.L10		//,
// problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ldr	w0, [sp, 56]	// j.6_27, j
	add	w1, w0, 1	// tmp158, j.6_27,
	str	w1, [sp, 56]	// tmp158, j
	sxtw	x0, w0	// _28, j.6_27
// problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ldr	x1, [sp, 32]	// tmp159, out
	add	x0, x1, x0	// _29, tmp159, _28
// problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	mov	w1, 95	// tmp160,
	strb	w1, [x0]	// tmp160, *_29
// problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ldr	w0, [sp, 56]	// j.7_30, j
	add	w1, w0, 1	// tmp161, j.7_30,
	str	w1, [sp, 56]	// tmp161, j
	sxtw	x0, w0	// _31, j.7_30
// problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ldr	x1, [sp, 32]	// tmp162, out
	add	x0, x1, x0	// _32, tmp162, _31
// problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	mov	w1, 95	// tmp163,
	strb	w1, [x0]	// tmp163, *_32
.L10:
// problem141.c:20:     if (space_len > 2) out[j++] = '-';
	ldr	w0, [sp, 52]	// tmp164, space_len
	cmp	w0, 2	// tmp164,
	ble	.L11		//,
// problem141.c:20:     if (space_len > 2) out[j++] = '-';
	ldr	w0, [sp, 56]	// j.8_33, j
	add	w1, w0, 1	// tmp165, j.8_33,
	str	w1, [sp, 56]	// tmp165, j
	sxtw	x0, w0	// _34, j.8_33
// problem141.c:20:     if (space_len > 2) out[j++] = '-';
	ldr	x1, [sp, 32]	// tmp166, out
	add	x0, x1, x0	// _35, tmp166, _34
// problem141.c:20:     if (space_len > 2) out[j++] = '-';
	mov	w1, 45	// tmp167,
	strb	w1, [x0]	// tmp167, *_35
.L11:
// problem141.c:21:     out[j] = '\0';
	ldrsw	x0, [sp, 56]	// _36, j
	ldr	x1, [sp, 32]	// tmp168, out
	add	x0, x1, x0	// _37, tmp168, _36
// problem141.c:21:     out[j] = '\0';
	strb	wzr, [x0]	//, *_37
// problem141.c:22: }
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
	.section	.rodata
	.align	3
.LC0:
	.string	"Example"
	.align	3
.LC1:
	.string	"problem141.c"
	.align	3
.LC2:
	.string	"strcmp(output, \"Example\") == 0"
	.align	3
.LC3:
	.string	"Mudasir Hanif "
	.align	3
.LC4:
	.string	"Mudasir_Hanif_"
	.align	3
.LC5:
	.string	"strcmp(output, \"Mudasir_Hanif_\") == 0"
	.align	3
.LC6:
	.string	"Yellow Yellow  Dirty  Fellow"
	.align	3
.LC7:
	.string	"Yellow_Yellow__Dirty__Fellow"
	.align	3
.LC8:
	.string	"strcmp(output, \"Yellow_Yellow__Dirty__Fellow\") == 0"
	.align	3
.LC9:
	.string	"Exa   mple"
	.align	3
.LC10:
	.string	"Exa-mple"
	.align	3
.LC11:
	.string	"strcmp(output, \"Exa-mple\") == 0"
	.align	3
.LC12:
	.string	"   Exa 1 2 2 mple"
	.align	3
.LC13:
	.string	"-Exa_1_2_2_mple"
	.align	3
.LC14:
	.string	"strcmp(output, \"-Exa_1_2_2_mple\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -128]!	//,,,
	.cfi_def_cfa_offset 128
	.cfi_offset 29, -128
	.cfi_offset 30, -120
	mov	x29, sp	//,
// problem141.c:29: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp100,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp99, tmp100,
	ldr	x1, [x0]	// tmp139,
	str	x1, [sp, 120]	// tmp139, D.4498
	mov	x1, 0	// tmp139
// problem141.c:32:     func0("Example", output);
	add	x0, sp, 16	// tmp101,,
	mov	x1, x0	//, tmp101
	adrp	x0, .LC0	// tmp102,
	add	x0, x0, :lo12:.LC0	//, tmp102,
	bl	func0		//
// problem141.c:33:     assert(strcmp(output, "Example") == 0);
	add	x2, sp, 16	// tmp103,,
	adrp	x0, .LC0	// tmp104,
	add	x1, x0, :lo12:.LC0	//, tmp104,
	mov	x0, x2	//, tmp103
	bl	strcmp		//
	cmp	w0, 0	// _1,
	beq	.L13		//,
// problem141.c:33:     assert(strcmp(output, "Example") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp105,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp105,
	mov	w2, 33	//,
	adrp	x0, .LC1	// tmp106,
	add	x1, x0, :lo12:.LC1	//, tmp106,
	adrp	x0, .LC2	// tmp107,
	add	x0, x0, :lo12:.LC2	//, tmp107,
	bl	__assert_fail		//
.L13:
// problem141.c:35:     func0("Mudasir Hanif ", output);
	add	x0, sp, 16	// tmp108,,
	mov	x1, x0	//, tmp108
	adrp	x0, .LC3	// tmp109,
	add	x0, x0, :lo12:.LC3	//, tmp109,
	bl	func0		//
// problem141.c:36:     assert(strcmp(output, "Mudasir_Hanif_") == 0);
	add	x2, sp, 16	// tmp110,,
	adrp	x0, .LC4	// tmp111,
	add	x1, x0, :lo12:.LC4	//, tmp111,
	mov	x0, x2	//, tmp110
	bl	strcmp		//
	cmp	w0, 0	// _2,
	beq	.L14		//,
// problem141.c:36:     assert(strcmp(output, "Mudasir_Hanif_") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp112,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp112,
	mov	w2, 36	//,
	adrp	x0, .LC1	// tmp113,
	add	x1, x0, :lo12:.LC1	//, tmp113,
	adrp	x0, .LC5	// tmp114,
	add	x0, x0, :lo12:.LC5	//, tmp114,
	bl	__assert_fail		//
.L14:
// problem141.c:38:     func0("Yellow Yellow  Dirty  Fellow", output);
	add	x0, sp, 16	// tmp115,,
	mov	x1, x0	//, tmp115
	adrp	x0, .LC6	// tmp116,
	add	x0, x0, :lo12:.LC6	//, tmp116,
	bl	func0		//
// problem141.c:39:     assert(strcmp(output, "Yellow_Yellow__Dirty__Fellow") == 0);
	add	x2, sp, 16	// tmp117,,
	adrp	x0, .LC7	// tmp118,
	add	x1, x0, :lo12:.LC7	//, tmp118,
	mov	x0, x2	//, tmp117
	bl	strcmp		//
	cmp	w0, 0	// _3,
	beq	.L15		//,
// problem141.c:39:     assert(strcmp(output, "Yellow_Yellow__Dirty__Fellow") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 39	//,
	adrp	x0, .LC1	// tmp120,
	add	x1, x0, :lo12:.LC1	//, tmp120,
	adrp	x0, .LC8	// tmp121,
	add	x0, x0, :lo12:.LC8	//, tmp121,
	bl	__assert_fail		//
.L15:
// problem141.c:41:     func0("Exa   mple", output);
	add	x0, sp, 16	// tmp122,,
	mov	x1, x0	//, tmp122
	adrp	x0, .LC9	// tmp123,
	add	x0, x0, :lo12:.LC9	//, tmp123,
	bl	func0		//
// problem141.c:42:     assert(strcmp(output, "Exa-mple") == 0);
	add	x2, sp, 16	// tmp124,,
	adrp	x0, .LC10	// tmp125,
	add	x1, x0, :lo12:.LC10	//, tmp125,
	mov	x0, x2	//, tmp124
	bl	strcmp		//
	cmp	w0, 0	// _4,
	beq	.L16		//,
// problem141.c:42:     assert(strcmp(output, "Exa-mple") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp126,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp126,
	mov	w2, 42	//,
	adrp	x0, .LC1	// tmp127,
	add	x1, x0, :lo12:.LC1	//, tmp127,
	adrp	x0, .LC11	// tmp128,
	add	x0, x0, :lo12:.LC11	//, tmp128,
	bl	__assert_fail		//
.L16:
// problem141.c:44:     func0("   Exa 1 2 2 mple", output);
	add	x0, sp, 16	// tmp129,,
	mov	x1, x0	//, tmp129
	adrp	x0, .LC12	// tmp130,
	add	x0, x0, :lo12:.LC12	//, tmp130,
	bl	func0		//
// problem141.c:45:     assert(strcmp(output, "-Exa_1_2_2_mple") == 0);
	add	x2, sp, 16	// tmp131,,
	adrp	x0, .LC13	// tmp132,
	add	x1, x0, :lo12:.LC13	//, tmp132,
	mov	x0, x2	//, tmp131
	bl	strcmp		//
	cmp	w0, 0	// _5,
	beq	.L17		//,
// problem141.c:45:     assert(strcmp(output, "-Exa_1_2_2_mple") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp133,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp133,
	mov	w2, 45	//,
	adrp	x0, .LC1	// tmp134,
	add	x1, x0, :lo12:.LC1	//, tmp134,
	adrp	x0, .LC14	// tmp135,
	add	x0, x0, :lo12:.LC14	//, tmp135,
	bl	__assert_fail		//
.L17:
// problem141.c:47:     return 0;
	mov	w0, 0	// _17,
// problem141.c:48: }
	mov	w1, w0	// <retval>, _17
	adrp	x0, :got:__stack_chk_guard	// tmp138,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp137, tmp138,
	ldr	x3, [sp, 120]	// tmp140, D.4498
	ldr	x2, [x0]	// tmp141,
	subs	x3, x3, x2	// tmp140, tmp141
	mov	x2, 0	// tmp141
	beq	.L19		//,
	bl	__stack_chk_fail		//
.L19:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 128	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
