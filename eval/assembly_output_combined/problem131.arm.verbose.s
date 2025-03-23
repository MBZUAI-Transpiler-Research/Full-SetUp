	.arch armv8-a
	.file	"problem131.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	w0, [sp, 28]	// n, n
// problem131.c:5:     int* out = (int*)malloc((n + 1) * sizeof(int));
	ldr	w0, [sp, 28]	// tmp123, n
	add	w0, w0, 1	// _1, tmp123,
	sxtw	x0, w0	// _2, _1
// problem131.c:5:     int* out = (int*)malloc((n + 1) * sizeof(int));
	lsl	x0, x0, 2	// _3, _2,
	bl	malloc		//
	str	x0, [sp, 40]	// tmp124, out
// problem131.c:6:     out[0] = 1;
	ldr	x0, [sp, 40]	// tmp125, out
	mov	w1, 1	// tmp126,
	str	w1, [x0]	// tmp126, *out_38
// problem131.c:7:     if (n == 0) return out;
	ldr	w0, [sp, 28]	// tmp127, n
	cmp	w0, 0	// tmp127,
	bne	.L2		//,
// problem131.c:7:     if (n == 0) return out;
	ldr	x0, [sp, 40]	// _31, out
	b	.L3		//
.L2:
// problem131.c:8:     out[1] = 3;
	ldr	x0, [sp, 40]	// tmp128, out
	add	x0, x0, 4	// _4, tmp128,
// problem131.c:8:     out[1] = 3;
	mov	w1, 3	// tmp129,
	str	w1, [x0]	// tmp129, *_4
// problem131.c:9:     for (int i = 2; i <= n; i++) {
	mov	w0, 2	// tmp130,
	str	w0, [sp, 36]	// tmp130, i
// problem131.c:9:     for (int i = 2; i <= n; i++) {
	b	.L4		//
.L7:
// problem131.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	ldr	w0, [sp, 36]	// i.0_5, i
	and	w0, w0, 1	// _6, i.0_5,
// problem131.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	cmp	w0, 0	// _6,
	bne	.L5		//,
// problem131.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	ldr	w0, [sp, 36]	// tmp131, i
	lsr	w1, w0, 31	// tmp132, tmp131,
	add	w0, w1, w0	// tmp133, tmp132, tmp131
	asr	w0, w0, 1	// tmp134, tmp133,
	mov	w2, w0	// _7, tmp134
// problem131.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	ldrsw	x0, [sp, 36]	// _8, i
	lsl	x0, x0, 2	// _9, _8,
	ldr	x1, [sp, 40]	// tmp135, out
	add	x0, x1, x0	// _10, tmp135, _9
// problem131.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	add	w1, w2, 1	// _11, _7,
// problem131.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	str	w1, [x0]	// _11, *_10
	b	.L6		//
.L5:
// problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	ldrsw	x0, [sp, 36]	// _12, i
	lsl	x0, x0, 2	// _13, _12,
	sub	x0, x0, #4	// _14, _13,
	ldr	x1, [sp, 40]	// tmp136, out
	add	x0, x1, x0	// _15, tmp136, _14
	ldr	w1, [x0]	// _16, *_15
// problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	ldrsw	x0, [sp, 36]	// _17, i
	lsl	x0, x0, 2	// _18, _17,
	sub	x0, x0, #8	// _19, _18,
	ldr	x2, [sp, 40]	// tmp137, out
	add	x0, x2, x0	// _20, tmp137, _19
	ldr	w0, [x0]	// _21, *_20
// problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	add	w0, w1, w0	// _22, _16, _21
// problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	add	w1, w0, 1	// _23, _22,
// problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	ldr	w0, [sp, 36]	// tmp138, i
	add	w0, w0, 1	// _24, tmp138,
// problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	lsr	w2, w0, 31	// tmp139, _24,
	add	w0, w2, w0	// tmp140, tmp139, _24
	asr	w0, w0, 1	// tmp141, tmp140,
	mov	w3, w0	// _25, tmp141
// problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	ldrsw	x0, [sp, 36]	// _26, i
	lsl	x0, x0, 2	// _27, _26,
	ldr	x2, [sp, 40]	// tmp142, out
	add	x0, x2, x0	// _28, tmp142, _27
// problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	add	w1, w1, w3	// _29, _23, _25
// problem131.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	str	w1, [x0]	// _29, *_28
.L6:
// problem131.c:9:     for (int i = 2; i <= n; i++) {
	ldr	w0, [sp, 36]	// tmp144, i
	add	w0, w0, 1	// tmp143, tmp144,
	str	w0, [sp, 36]	// tmp143, i
.L4:
// problem131.c:9:     for (int i = 2; i <= n; i++) {
	ldr	w1, [sp, 36]	// tmp145, i
	ldr	w0, [sp, 28]	// tmp146, n
	cmp	w1, w0	// tmp145, tmp146
	ble	.L7		//,
// problem131.c:13:     return out;
	ldr	x0, [sp, 40]	// _31, out
.L3:
// problem131.c:14: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// a, a
	str	x1, [sp, 16]	// b, b
	str	w2, [sp, 12]	// size, size
// problem131.c:23:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 44]	//, i
// problem131.c:23:     for (int i = 0; i < size; i++) {
	b	.L9		//
.L12:
// problem131.c:24:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp102, a
	add	x0, x1, x0	// _3, tmp102, _2
	ldr	w1, [x0]	// _4, *_3
// problem131.c:24:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 16]	// tmp103, b
	add	x0, x2, x0	// _7, tmp103, _6
	ldr	w0, [x0]	// _8, *_7
// problem131.c:24:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L10		//,
// problem131.c:24:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
	b	.L11		//
.L10:
// problem131.c:23:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 44]	// tmp105, i
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [sp, 44]	// tmp104, i
.L9:
// problem131.c:23:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 44]	// tmp106, i
	ldr	w0, [sp, 12]	// tmp107, size
	cmp	w1, w0	// tmp106, tmp107
	blt	.L12		//,
// problem131.c:26:     return 1;
	mov	w0, 1	// _10,
.L11:
// problem131.c:27: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC7:
	.string	"problem131.c"
	.align	3
.LC8:
	.string	"issame(out3, tri_3, size)"
	.align	3
.LC9:
	.string	"issame(out4, tri_4, size)"
	.align	3
.LC10:
	.string	"issame(out5, tri_5, size)"
	.align	3
.LC11:
	.string	"issame(out6, tri_6, size)"
	.align	3
.LC12:
	.string	"issame(out7, tri_7, size)"
	.align	3
.LC13:
	.string	"issame(out8, tri_8, size)"
	.align	3
.LC14:
	.string	"issame(out9, tri_9, size)"
	.align	3
.LC15:
	.string	"issame(out20, tri_20, size)"
	.align	3
.LC16:
	.string	"issame(out0, tri_0, size)"
	.align	3
.LC17:
	.string	"issame(out1, tri_1, size)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -432]!	//,,,
	.cfi_def_cfa_offset 432
	.cfi_offset 29, -432
	.cfi_offset 30, -424
	mov	x29, sp	//,
// problem131.c:29: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp105,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp104, tmp105,
	ldr	x1, [x0]	// tmp214,
	str	x1, [sp, 424]	// tmp214, D.4876
	mov	x1, 0	// tmp214
// problem131.c:32:     int tri_3[] = {1, 3, 2, 8};
	mov	w0, 1	// tmp106,
	str	w0, [sp, 128]	// tmp106, tri_3[0]
	mov	w0, 3	// tmp107,
	str	w0, [sp, 132]	// tmp107, tri_3[1]
	mov	w0, 2	// tmp108,
	str	w0, [sp, 136]	// tmp108, tri_3[2]
	mov	w0, 8	// tmp109,
	str	w0, [sp, 140]	// tmp109, tri_3[3]
// problem131.c:33:     size = 4;
	mov	w0, 4	// tmp110,
	str	w0, [sp, 28]	// tmp110, size
// problem131.c:34:     int* out3 = func0(3);
	mov	w0, 3	//,
	bl	func0		//
	str	x0, [sp, 32]	//, out3
// problem131.c:35:     assert(issame(out3, tri_3, size));
	add	x0, sp, 128	// tmp111,,
	ldr	w2, [sp, 28]	//, size
	mov	x1, x0	//, tmp111
	ldr	x0, [sp, 32]	//, out3
	bl	issame		//
	cmp	w0, 0	// _1,
	bne	.L14		//,
// problem131.c:35:     assert(issame(out3, tri_3, size));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp112,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp112,
	mov	w2, 35	//,
	adrp	x0, .LC7	// tmp113,
	add	x1, x0, :lo12:.LC7	//, tmp113,
	adrp	x0, .LC8	// tmp114,
	add	x0, x0, :lo12:.LC8	//, tmp114,
	bl	__assert_fail		//
.L14:
// problem131.c:36:     free(out3);
	ldr	x0, [sp, 32]	//, out3
	bl	free		//
// problem131.c:38:     int tri_4[] = {1, 3, 2, 8, 3};
	adrp	x0, .LC0	// tmp116,
	add	x0, x0, :lo12:.LC0	// tmp115, tmp116,
	add	x2, sp, 144	// tmp117,,
	mov	x3, x0	// tmp118, tmp115
	ldp	x0, x1, [x3]	// tmp119,
	stp	x0, x1, [x2]	// tmp119, tri_4
	ldr	w0, [x3, 16]	// tmp120,
	str	w0, [x2, 16]	// tmp120, tri_4
// problem131.c:39:     size = 5;
	mov	w0, 5	// tmp121,
	str	w0, [sp, 28]	// tmp121, size
// problem131.c:40:     int* out4 = func0(4);
	mov	w0, 4	//,
	bl	func0		//
	str	x0, [sp, 40]	//, out4
// problem131.c:41:     assert(issame(out4, tri_4, size));
	add	x0, sp, 144	// tmp122,,
	ldr	w2, [sp, 28]	//, size
	mov	x1, x0	//, tmp122
	ldr	x0, [sp, 40]	//, out4
	bl	issame		//
	cmp	w0, 0	// _2,
	bne	.L15		//,
// problem131.c:41:     assert(issame(out4, tri_4, size));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp123,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp123,
	mov	w2, 41	//,
	adrp	x0, .LC7	// tmp124,
	add	x1, x0, :lo12:.LC7	//, tmp124,
	adrp	x0, .LC9	// tmp125,
	add	x0, x0, :lo12:.LC9	//, tmp125,
	bl	__assert_fail		//
.L15:
// problem131.c:42:     free(out4);
	ldr	x0, [sp, 40]	//, out4
	bl	free		//
// problem131.c:44:     int tri_5[] = {1, 3, 2, 8, 3, 15};
	adrp	x0, .LC1	// tmp127,
	add	x0, x0, :lo12:.LC1	// tmp126, tmp127,
	add	x2, sp, 168	// tmp128,,
	mov	x3, x0	// tmp129, tmp126
	ldp	x0, x1, [x3]	// tmp130,
	stp	x0, x1, [x2]	// tmp130, tri_5
	ldr	x0, [x3, 16]	// tmp131,
	str	x0, [x2, 16]	// tmp131, tri_5
// problem131.c:45:     size = 6;
	mov	w0, 6	// tmp132,
	str	w0, [sp, 28]	// tmp132, size
// problem131.c:46:     int* out5 = func0(5);
	mov	w0, 5	//,
	bl	func0		//
	str	x0, [sp, 48]	//, out5
// problem131.c:47:     assert(issame(out5, tri_5, size));
	add	x0, sp, 168	// tmp133,,
	ldr	w2, [sp, 28]	//, size
	mov	x1, x0	//, tmp133
	ldr	x0, [sp, 48]	//, out5
	bl	issame		//
	cmp	w0, 0	// _3,
	bne	.L16		//,
// problem131.c:47:     assert(issame(out5, tri_5, size));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp134,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp134,
	mov	w2, 47	//,
	adrp	x0, .LC7	// tmp135,
	add	x1, x0, :lo12:.LC7	//, tmp135,
	adrp	x0, .LC10	// tmp136,
	add	x0, x0, :lo12:.LC10	//, tmp136,
	bl	__assert_fail		//
.L16:
// problem131.c:48:     free(out5);
	ldr	x0, [sp, 48]	//, out5
	bl	free		//
// problem131.c:50:     int tri_6[] = {1, 3, 2, 8, 3, 15, 4};
	adrp	x0, .LC2	// tmp138,
	add	x1, x0, :lo12:.LC2	// tmp137, tmp138,
	add	x0, sp, 192	// tmp139,,
	ldr	q0, [x1]	// tmp141,
	str	q0, [x0]	// tmp141, tri_6
	ldr	q0, [x1, 12]	// tmp142,
	str	q0, [x0, 12]	// tmp142, tri_6
// problem131.c:51:     size = 7;
	mov	w0, 7	// tmp143,
	str	w0, [sp, 28]	// tmp143, size
// problem131.c:52:     int* out6 = func0(6);
	mov	w0, 6	//,
	bl	func0		//
	str	x0, [sp, 56]	//, out6
// problem131.c:53:     assert(issame(out6, tri_6, size));
	add	x0, sp, 192	// tmp144,,
	ldr	w2, [sp, 28]	//, size
	mov	x1, x0	//, tmp144
	ldr	x0, [sp, 56]	//, out6
	bl	issame		//
	cmp	w0, 0	// _4,
	bne	.L17		//,
// problem131.c:53:     assert(issame(out6, tri_6, size));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp145,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp145,
	mov	w2, 53	//,
	adrp	x0, .LC7	// tmp146,
	add	x1, x0, :lo12:.LC7	//, tmp146,
	adrp	x0, .LC11	// tmp147,
	add	x0, x0, :lo12:.LC11	//, tmp147,
	bl	__assert_fail		//
.L17:
// problem131.c:54:     free(out6);
	ldr	x0, [sp, 56]	//, out6
	bl	free		//
// problem131.c:56:     int tri_7[] = {1, 3, 2, 8, 3, 15, 4, 24};
	adrp	x0, .LC3	// tmp149,
	add	x1, x0, :lo12:.LC3	// tmp148, tmp149,
	add	x0, sp, 224	// tmp150,,
	ldp	q0, q1, [x1]	// tmp152, tmp153,
	stp	q0, q1, [x0]	// tmp152, tmp153, tri_7
// problem131.c:57:     size = 8;
	mov	w0, 8	// tmp154,
	str	w0, [sp, 28]	// tmp154, size
// problem131.c:58:     int* out7 = func0(7);
	mov	w0, 7	//,
	bl	func0		//
	str	x0, [sp, 64]	//, out7
// problem131.c:59:     assert(issame(out7, tri_7, size));
	add	x0, sp, 224	// tmp155,,
	ldr	w2, [sp, 28]	//, size
	mov	x1, x0	//, tmp155
	ldr	x0, [sp, 64]	//, out7
	bl	issame		//
	cmp	w0, 0	// _5,
	bne	.L18		//,
// problem131.c:59:     assert(issame(out7, tri_7, size));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp156,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp156,
	mov	w2, 59	//,
	adrp	x0, .LC7	// tmp157,
	add	x1, x0, :lo12:.LC7	//, tmp157,
	adrp	x0, .LC12	// tmp158,
	add	x0, x0, :lo12:.LC12	//, tmp158,
	bl	__assert_fail		//
.L18:
// problem131.c:60:     free(out7);
	ldr	x0, [sp, 64]	//, out7
	bl	free		//
// problem131.c:62:     int tri_8[] = {1, 3, 2, 8, 3, 15, 4, 24, 5};
	adrp	x0, .LC4	// tmp160,
	add	x1, x0, :lo12:.LC4	// tmp159, tmp160,
	add	x0, sp, 256	// tmp161,,
	ldp	q0, q1, [x1]	// tmp163, tmp164,
	stp	q0, q1, [x0]	// tmp163, tmp164, tri_8
	ldr	w1, [x1, 32]	// tmp165,
	str	w1, [x0, 32]	// tmp165, tri_8
// problem131.c:63:     size = 9;
	mov	w0, 9	// tmp166,
	str	w0, [sp, 28]	// tmp166, size
// problem131.c:64:     int* out8 = func0(8);
	mov	w0, 8	//,
	bl	func0		//
	str	x0, [sp, 72]	//, out8
// problem131.c:65:     assert(issame(out8, tri_8, size));
	add	x0, sp, 256	// tmp167,,
	ldr	w2, [sp, 28]	//, size
	mov	x1, x0	//, tmp167
	ldr	x0, [sp, 72]	//, out8
	bl	issame		//
	cmp	w0, 0	// _6,
	bne	.L19		//,
// problem131.c:65:     assert(issame(out8, tri_8, size));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp168,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp168,
	mov	w2, 65	//,
	adrp	x0, .LC7	// tmp169,
	add	x1, x0, :lo12:.LC7	//, tmp169,
	adrp	x0, .LC13	// tmp170,
	add	x0, x0, :lo12:.LC13	//, tmp170,
	bl	__assert_fail		//
.L19:
// problem131.c:66:     free(out8);
	ldr	x0, [sp, 72]	//, out8
	bl	free		//
// problem131.c:68:     int tri_9[] = {1, 3, 2, 8, 3, 15, 4, 24, 5, 35};
	adrp	x0, .LC5	// tmp172,
	add	x1, x0, :lo12:.LC5	// tmp171, tmp172,
	add	x0, sp, 296	// tmp173,,
	ldp	q0, q1, [x1]	// tmp175, tmp176,
	stp	q0, q1, [x0]	// tmp175, tmp176, tri_9
	ldr	x1, [x1, 32]	// tmp177,
	str	x1, [x0, 32]	// tmp177, tri_9
// problem131.c:69:     size = 10;
	mov	w0, 10	// tmp178,
	str	w0, [sp, 28]	// tmp178, size
// problem131.c:70:     int* out9 = func0(9);
	mov	w0, 9	//,
	bl	func0		//
	str	x0, [sp, 80]	//, out9
// problem131.c:71:     assert(issame(out9, tri_9, size));
	add	x0, sp, 296	// tmp179,,
	ldr	w2, [sp, 28]	//, size
	mov	x1, x0	//, tmp179
	ldr	x0, [sp, 80]	//, out9
	bl	issame		//
	cmp	w0, 0	// _7,
	bne	.L20		//,
// problem131.c:71:     assert(issame(out9, tri_9, size));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp180,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp180,
	mov	w2, 71	//,
	adrp	x0, .LC7	// tmp181,
	add	x1, x0, :lo12:.LC7	//, tmp181,
	adrp	x0, .LC14	// tmp182,
	add	x0, x0, :lo12:.LC14	//, tmp182,
	bl	__assert_fail		//
.L20:
// problem131.c:72:     free(out9);
	ldr	x0, [sp, 80]	//, out9
	bl	free		//
// problem131.c:74:     int tri_20[] = {1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11};
	adrp	x0, .LC6	// tmp184,
	add	x1, x0, :lo12:.LC6	// tmp183, tmp184,
	add	x0, sp, 336	// tmp185,,
	ldp	q0, q1, [x1]	// tmp187, tmp188,
	stp	q0, q1, [x0]	// tmp187, tmp188, tri_20
	ldp	q0, q1, [x1, 32]	// tmp189, tmp190,
	stp	q0, q1, [x0, 32]	// tmp189, tmp190, tri_20
	ldr	q0, [x1, 64]	// tmp191,
	str	q0, [x0, 64]	// tmp191, tri_20
	ldr	w1, [x1, 80]	// tmp192,
	str	w1, [x0, 80]	// tmp192, tri_20
// problem131.c:75:     size = 21;
	mov	w0, 21	// tmp193,
	str	w0, [sp, 28]	// tmp193, size
// problem131.c:76:     int* out20 = func0(20);
	mov	w0, 20	//,
	bl	func0		//
	str	x0, [sp, 88]	//, out20
// problem131.c:77:     assert(issame(out20, tri_20, size));
	add	x0, sp, 336	// tmp194,,
	ldr	w2, [sp, 28]	//, size
	mov	x1, x0	//, tmp194
	ldr	x0, [sp, 88]	//, out20
	bl	issame		//
	cmp	w0, 0	// _8,
	bne	.L21		//,
// problem131.c:77:     assert(issame(out20, tri_20, size));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp195,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp195,
	mov	w2, 77	//,
	adrp	x0, .LC7	// tmp196,
	add	x1, x0, :lo12:.LC7	//, tmp196,
	adrp	x0, .LC15	// tmp197,
	add	x0, x0, :lo12:.LC15	//, tmp197,
	bl	__assert_fail		//
.L21:
// problem131.c:78:     free(out20);
	ldr	x0, [sp, 88]	//, out20
	bl	free		//
// problem131.c:80:     int tri_0[] = {1};
	mov	w0, 1	// tmp198,
	str	w0, [sp, 112]	// tmp198, tri_0[0]
// problem131.c:81:     size = 1;
	mov	w0, 1	// tmp199,
	str	w0, [sp, 28]	// tmp199, size
// problem131.c:82:     int* out0 = func0(0);
	mov	w0, 0	//,
	bl	func0		//
	str	x0, [sp, 96]	//, out0
// problem131.c:83:     assert(issame(out0, tri_0, size));
	add	x0, sp, 112	// tmp200,,
	ldr	w2, [sp, 28]	//, size
	mov	x1, x0	//, tmp200
	ldr	x0, [sp, 96]	//, out0
	bl	issame		//
	cmp	w0, 0	// _9,
	bne	.L22		//,
// problem131.c:83:     assert(issame(out0, tri_0, size));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp201,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp201,
	mov	w2, 83	//,
	adrp	x0, .LC7	// tmp202,
	add	x1, x0, :lo12:.LC7	//, tmp202,
	adrp	x0, .LC16	// tmp203,
	add	x0, x0, :lo12:.LC16	//, tmp203,
	bl	__assert_fail		//
.L22:
// problem131.c:84:     free(out0);
	ldr	x0, [sp, 96]	//, out0
	bl	free		//
// problem131.c:86:     int tri_1[] = {1, 3};
	mov	w0, 1	// tmp204,
	str	w0, [sp, 120]	// tmp204, tri_1[0]
	mov	w0, 3	// tmp205,
	str	w0, [sp, 124]	// tmp205, tri_1[1]
// problem131.c:87:     size = 2;
	mov	w0, 2	// tmp206,
	str	w0, [sp, 28]	// tmp206, size
// problem131.c:88:     int* out1 = func0(1);
	mov	w0, 1	//,
	bl	func0		//
	str	x0, [sp, 104]	//, out1
// problem131.c:89:     assert(issame(out1, tri_1, size));
	add	x0, sp, 120	// tmp207,,
	ldr	w2, [sp, 28]	//, size
	mov	x1, x0	//, tmp207
	ldr	x0, [sp, 104]	//, out1
	bl	issame		//
	cmp	w0, 0	// _10,
	bne	.L23		//,
// problem131.c:89:     assert(issame(out1, tri_1, size));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp208,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp208,
	mov	w2, 89	//,
	adrp	x0, .LC7	// tmp209,
	add	x1, x0, :lo12:.LC7	//, tmp209,
	adrp	x0, .LC17	// tmp210,
	add	x0, x0, :lo12:.LC17	//, tmp210,
	bl	__assert_fail		//
.L23:
// problem131.c:90:     free(out1);
	ldr	x0, [sp, 104]	//, out1
	bl	free		//
// problem131.c:92:     return 0;
	mov	w0, 0	// _86,
// problem131.c:93: }
	mov	w1, w0	// <retval>, _86
	adrp	x0, :got:__stack_chk_guard	// tmp213,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp212, tmp213,
	ldr	x3, [sp, 424]	// tmp215, D.4876
	ldr	x2, [x0]	// tmp216,
	subs	x3, x3, x2	// tmp215, tmp216
	mov	x2, 0	// tmp216
	beq	.L25		//,
	bl	__stack_chk_fail		//
.L25:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 432	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.align	3
.LC1:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.align	3
.LC2:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.word	4
	.align	3
.LC3:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.word	4
	.word	24
	.align	3
.LC4:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.word	4
	.word	24
	.word	5
	.align	3
.LC5:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.word	4
	.word	24
	.word	5
	.word	35
	.align	3
.LC6:
	.word	1
	.word	3
	.word	2
	.word	8
	.word	3
	.word	15
	.word	4
	.word	24
	.word	5
	.word	35
	.word	6
	.word	48
	.word	7
	.word	63
	.word	8
	.word	80
	.word	9
	.word	99
	.word	10
	.word	120
	.word	11
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
