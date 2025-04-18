	.arch armv8-a
	.file	"problem131.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
// problem131.c:7:     if (n == 0) return out;
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
// problem131.c:24:         if (a[i] != b[i]) return 0;
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
	sub	sp, sp, #432	//,,
	.cfi_def_cfa_offset 432
	stp	x29, x30, [sp, 416]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 416	//,,
// problem131.c:29: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp104,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp104,
	ldr	x1, [x0]	// tmp212,
	str	x1, [sp, 408]	// tmp212, D.5465
	mov	x1, 0	// tmp212
// problem131.c:32:     int tri_3[] = {1, 3, 2, 8};
	mov	w0, 1	// tmp105,
	str	w0, [sp, 112]	// tmp105, tri_3[0]
	mov	w0, 3	// tmp106,
	str	w0, [sp, 116]	// tmp106, tri_3[1]
	mov	w0, 2	// tmp107,
	str	w0, [sp, 120]	// tmp107, tri_3[2]
	mov	w0, 8	// tmp108,
	str	w0, [sp, 124]	// tmp108, tri_3[3]
// problem131.c:33:     size = 4;
	mov	w0, 4	// tmp109,
	str	w0, [sp, 12]	// tmp109, size
// problem131.c:34:     int* out3 = func0(3);
	mov	w0, 3	//,
	bl	func0		//
	str	x0, [sp, 16]	//, out3
// problem131.c:35:     assert(issame(out3, tri_3, size));
	add	x0, sp, 112	// tmp110,,
	ldr	w2, [sp, 12]	//, size
	mov	x1, x0	//, tmp110
	ldr	x0, [sp, 16]	//, out3
	bl	issame		//
// problem131.c:35:     assert(issame(out3, tri_3, size));
	cmp	w0, 0	// _1,
	bne	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp111,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp111,
	mov	w2, 35	//,
	adrp	x0, .LC7	// tmp112,
	add	x1, x0, :lo12:.LC7	//, tmp112,
	adrp	x0, .LC8	// tmp113,
	add	x0, x0, :lo12:.LC8	//, tmp113,
	bl	__assert_fail		//
.L14:
// problem131.c:36:     free(out3);
	ldr	x0, [sp, 16]	//, out3
	bl	free		//
// problem131.c:38:     int tri_4[] = {1, 3, 2, 8, 3};
	adrp	x0, .LC0	// tmp115,
	add	x0, x0, :lo12:.LC0	// tmp114, tmp115,
	add	x2, sp, 128	// tmp116,,
	mov	x3, x0	// tmp117, tmp114
	ldp	x0, x1, [x3]	// tmp118,
	stp	x0, x1, [x2]	// tmp118, tri_4
	ldr	w0, [x3, 16]	// tmp119,
	str	w0, [x2, 16]	// tmp119, tri_4
// problem131.c:39:     size = 5;
	mov	w0, 5	// tmp120,
	str	w0, [sp, 12]	// tmp120, size
// problem131.c:40:     int* out4 = func0(4);
	mov	w0, 4	//,
	bl	func0		//
	str	x0, [sp, 24]	//, out4
// problem131.c:41:     assert(issame(out4, tri_4, size));
	add	x0, sp, 128	// tmp121,,
	ldr	w2, [sp, 12]	//, size
	mov	x1, x0	//, tmp121
	ldr	x0, [sp, 24]	//, out4
	bl	issame		//
// problem131.c:41:     assert(issame(out4, tri_4, size));
	cmp	w0, 0	// _2,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp122,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp122,
	mov	w2, 41	//,
	adrp	x0, .LC7	// tmp123,
	add	x1, x0, :lo12:.LC7	//, tmp123,
	adrp	x0, .LC9	// tmp124,
	add	x0, x0, :lo12:.LC9	//, tmp124,
	bl	__assert_fail		//
.L15:
// problem131.c:42:     free(out4);
	ldr	x0, [sp, 24]	//, out4
	bl	free		//
// problem131.c:44:     int tri_5[] = {1, 3, 2, 8, 3, 15};
	adrp	x0, .LC1	// tmp126,
	add	x0, x0, :lo12:.LC1	// tmp125, tmp126,
	add	x2, sp, 152	// tmp127,,
	mov	x3, x0	// tmp128, tmp125
	ldp	x0, x1, [x3]	// tmp129,
	stp	x0, x1, [x2]	// tmp129, tri_5
	ldr	x0, [x3, 16]	// tmp130,
	str	x0, [x2, 16]	// tmp130, tri_5
// problem131.c:45:     size = 6;
	mov	w0, 6	// tmp131,
	str	w0, [sp, 12]	// tmp131, size
// problem131.c:46:     int* out5 = func0(5);
	mov	w0, 5	//,
	bl	func0		//
	str	x0, [sp, 32]	//, out5
// problem131.c:47:     assert(issame(out5, tri_5, size));
	add	x0, sp, 152	// tmp132,,
	ldr	w2, [sp, 12]	//, size
	mov	x1, x0	//, tmp132
	ldr	x0, [sp, 32]	//, out5
	bl	issame		//
// problem131.c:47:     assert(issame(out5, tri_5, size));
	cmp	w0, 0	// _3,
	bne	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp133,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp133,
	mov	w2, 47	//,
	adrp	x0, .LC7	// tmp134,
	add	x1, x0, :lo12:.LC7	//, tmp134,
	adrp	x0, .LC10	// tmp135,
	add	x0, x0, :lo12:.LC10	//, tmp135,
	bl	__assert_fail		//
.L16:
// problem131.c:48:     free(out5);
	ldr	x0, [sp, 32]	//, out5
	bl	free		//
// problem131.c:50:     int tri_6[] = {1, 3, 2, 8, 3, 15, 4};
	adrp	x0, .LC2	// tmp137,
	add	x1, x0, :lo12:.LC2	// tmp136, tmp137,
	add	x0, sp, 176	// tmp138,,
	ldr	q0, [x1]	// tmp140,
	str	q0, [x0]	// tmp140, tri_6
	ldr	q0, [x1, 12]	// tmp141,
	str	q0, [x0, 12]	// tmp141, tri_6
// problem131.c:51:     size = 7;
	mov	w0, 7	// tmp142,
	str	w0, [sp, 12]	// tmp142, size
// problem131.c:52:     int* out6 = func0(6);
	mov	w0, 6	//,
	bl	func0		//
	str	x0, [sp, 40]	//, out6
// problem131.c:53:     assert(issame(out6, tri_6, size));
	add	x0, sp, 176	// tmp143,,
	ldr	w2, [sp, 12]	//, size
	mov	x1, x0	//, tmp143
	ldr	x0, [sp, 40]	//, out6
	bl	issame		//
// problem131.c:53:     assert(issame(out6, tri_6, size));
	cmp	w0, 0	// _4,
	bne	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp144,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp144,
	mov	w2, 53	//,
	adrp	x0, .LC7	// tmp145,
	add	x1, x0, :lo12:.LC7	//, tmp145,
	adrp	x0, .LC11	// tmp146,
	add	x0, x0, :lo12:.LC11	//, tmp146,
	bl	__assert_fail		//
.L17:
// problem131.c:54:     free(out6);
	ldr	x0, [sp, 40]	//, out6
	bl	free		//
// problem131.c:56:     int tri_7[] = {1, 3, 2, 8, 3, 15, 4, 24};
	adrp	x0, .LC3	// tmp148,
	add	x1, x0, :lo12:.LC3	// tmp147, tmp148,
	add	x0, sp, 208	// tmp149,,
	ldp	q0, q1, [x1]	// tmp151, tmp152,
	stp	q0, q1, [x0]	// tmp151, tmp152, tri_7
// problem131.c:57:     size = 8;
	mov	w0, 8	// tmp153,
	str	w0, [sp, 12]	// tmp153, size
// problem131.c:58:     int* out7 = func0(7);
	mov	w0, 7	//,
	bl	func0		//
	str	x0, [sp, 48]	//, out7
// problem131.c:59:     assert(issame(out7, tri_7, size));
	add	x0, sp, 208	// tmp154,,
	ldr	w2, [sp, 12]	//, size
	mov	x1, x0	//, tmp154
	ldr	x0, [sp, 48]	//, out7
	bl	issame		//
// problem131.c:59:     assert(issame(out7, tri_7, size));
	cmp	w0, 0	// _5,
	bne	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp155,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp155,
	mov	w2, 59	//,
	adrp	x0, .LC7	// tmp156,
	add	x1, x0, :lo12:.LC7	//, tmp156,
	adrp	x0, .LC12	// tmp157,
	add	x0, x0, :lo12:.LC12	//, tmp157,
	bl	__assert_fail		//
.L18:
// problem131.c:60:     free(out7);
	ldr	x0, [sp, 48]	//, out7
	bl	free		//
// problem131.c:62:     int tri_8[] = {1, 3, 2, 8, 3, 15, 4, 24, 5};
	adrp	x0, .LC4	// tmp159,
	add	x1, x0, :lo12:.LC4	// tmp158, tmp159,
	add	x0, sp, 240	// tmp160,,
	ldp	q0, q1, [x1]	// tmp162, tmp163,
	stp	q0, q1, [x0]	// tmp162, tmp163, tri_8
	ldr	w1, [x1, 32]	// tmp164,
	str	w1, [x0, 32]	// tmp164, tri_8
// problem131.c:63:     size = 9;
	mov	w0, 9	// tmp165,
	str	w0, [sp, 12]	// tmp165, size
// problem131.c:64:     int* out8 = func0(8);
	mov	w0, 8	//,
	bl	func0		//
	str	x0, [sp, 56]	//, out8
// problem131.c:65:     assert(issame(out8, tri_8, size));
	add	x0, sp, 240	// tmp166,,
	ldr	w2, [sp, 12]	//, size
	mov	x1, x0	//, tmp166
	ldr	x0, [sp, 56]	//, out8
	bl	issame		//
// problem131.c:65:     assert(issame(out8, tri_8, size));
	cmp	w0, 0	// _6,
	bne	.L19		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp167,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp167,
	mov	w2, 65	//,
	adrp	x0, .LC7	// tmp168,
	add	x1, x0, :lo12:.LC7	//, tmp168,
	adrp	x0, .LC13	// tmp169,
	add	x0, x0, :lo12:.LC13	//, tmp169,
	bl	__assert_fail		//
.L19:
// problem131.c:66:     free(out8);
	ldr	x0, [sp, 56]	//, out8
	bl	free		//
// problem131.c:68:     int tri_9[] = {1, 3, 2, 8, 3, 15, 4, 24, 5, 35};
	adrp	x0, .LC5	// tmp171,
	add	x1, x0, :lo12:.LC5	// tmp170, tmp171,
	add	x0, sp, 280	// tmp172,,
	ldp	q0, q1, [x1]	// tmp174, tmp175,
	stp	q0, q1, [x0]	// tmp174, tmp175, tri_9
	ldr	x1, [x1, 32]	// tmp176,
	str	x1, [x0, 32]	// tmp176, tri_9
// problem131.c:69:     size = 10;
	mov	w0, 10	// tmp177,
	str	w0, [sp, 12]	// tmp177, size
// problem131.c:70:     int* out9 = func0(9);
	mov	w0, 9	//,
	bl	func0		//
	str	x0, [sp, 64]	//, out9
// problem131.c:71:     assert(issame(out9, tri_9, size));
	add	x0, sp, 280	// tmp178,,
	ldr	w2, [sp, 12]	//, size
	mov	x1, x0	//, tmp178
	ldr	x0, [sp, 64]	//, out9
	bl	issame		//
// problem131.c:71:     assert(issame(out9, tri_9, size));
	cmp	w0, 0	// _7,
	bne	.L20		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp179,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp179,
	mov	w2, 71	//,
	adrp	x0, .LC7	// tmp180,
	add	x1, x0, :lo12:.LC7	//, tmp180,
	adrp	x0, .LC14	// tmp181,
	add	x0, x0, :lo12:.LC14	//, tmp181,
	bl	__assert_fail		//
.L20:
// problem131.c:72:     free(out9);
	ldr	x0, [sp, 64]	//, out9
	bl	free		//
// problem131.c:74:     int tri_20[] = {1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11};
	adrp	x0, .LC6	// tmp183,
	add	x1, x0, :lo12:.LC6	// tmp182, tmp183,
	add	x0, sp, 320	// tmp184,,
	ldp	q0, q1, [x1]	// tmp186, tmp187,
	stp	q0, q1, [x0]	// tmp186, tmp187, tri_20
	ldp	q0, q1, [x1, 32]	// tmp188, tmp189,
	stp	q0, q1, [x0, 32]	// tmp188, tmp189, tri_20
	ldr	q0, [x1, 64]	// tmp190,
	str	q0, [x0, 64]	// tmp190, tri_20
	ldr	w1, [x1, 80]	// tmp191,
	str	w1, [x0, 80]	// tmp191, tri_20
// problem131.c:75:     size = 21;
	mov	w0, 21	// tmp192,
	str	w0, [sp, 12]	// tmp192, size
// problem131.c:76:     int* out20 = func0(20);
	mov	w0, 20	//,
	bl	func0		//
	str	x0, [sp, 72]	//, out20
// problem131.c:77:     assert(issame(out20, tri_20, size));
	add	x0, sp, 320	// tmp193,,
	ldr	w2, [sp, 12]	//, size
	mov	x1, x0	//, tmp193
	ldr	x0, [sp, 72]	//, out20
	bl	issame		//
// problem131.c:77:     assert(issame(out20, tri_20, size));
	cmp	w0, 0	// _8,
	bne	.L21		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp194,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp194,
	mov	w2, 77	//,
	adrp	x0, .LC7	// tmp195,
	add	x1, x0, :lo12:.LC7	//, tmp195,
	adrp	x0, .LC15	// tmp196,
	add	x0, x0, :lo12:.LC15	//, tmp196,
	bl	__assert_fail		//
.L21:
// problem131.c:78:     free(out20);
	ldr	x0, [sp, 72]	//, out20
	bl	free		//
// problem131.c:80:     int tri_0[] = {1};
	mov	w0, 1	// tmp197,
	str	w0, [sp, 96]	// tmp197, tri_0[0]
// problem131.c:81:     size = 1;
	mov	w0, 1	// tmp198,
	str	w0, [sp, 12]	// tmp198, size
// problem131.c:82:     int* out0 = func0(0);
	mov	w0, 0	//,
	bl	func0		//
	str	x0, [sp, 80]	//, out0
// problem131.c:83:     assert(issame(out0, tri_0, size));
	add	x0, sp, 96	// tmp199,,
	ldr	w2, [sp, 12]	//, size
	mov	x1, x0	//, tmp199
	ldr	x0, [sp, 80]	//, out0
	bl	issame		//
// problem131.c:83:     assert(issame(out0, tri_0, size));
	cmp	w0, 0	// _9,
	bne	.L22		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp200,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp200,
	mov	w2, 83	//,
	adrp	x0, .LC7	// tmp201,
	add	x1, x0, :lo12:.LC7	//, tmp201,
	adrp	x0, .LC16	// tmp202,
	add	x0, x0, :lo12:.LC16	//, tmp202,
	bl	__assert_fail		//
.L22:
// problem131.c:84:     free(out0);
	ldr	x0, [sp, 80]	//, out0
	bl	free		//
// problem131.c:86:     int tri_1[] = {1, 3};
	mov	w0, 1	// tmp203,
	str	w0, [sp, 104]	// tmp203, tri_1[0]
	mov	w0, 3	// tmp204,
	str	w0, [sp, 108]	// tmp204, tri_1[1]
// problem131.c:87:     size = 2;
	mov	w0, 2	// tmp205,
	str	w0, [sp, 12]	// tmp205, size
// problem131.c:88:     int* out1 = func0(1);
	mov	w0, 1	//,
	bl	func0		//
	str	x0, [sp, 88]	//, out1
// problem131.c:89:     assert(issame(out1, tri_1, size));
	add	x0, sp, 104	// tmp206,,
	ldr	w2, [sp, 12]	//, size
	mov	x1, x0	//, tmp206
	ldr	x0, [sp, 88]	//, out1
	bl	issame		//
// problem131.c:89:     assert(issame(out1, tri_1, size));
	cmp	w0, 0	// _10,
	bne	.L23		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp207,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp207,
	mov	w2, 89	//,
	adrp	x0, .LC7	// tmp208,
	add	x1, x0, :lo12:.LC7	//, tmp208,
	adrp	x0, .LC17	// tmp209,
	add	x0, x0, :lo12:.LC17	//, tmp209,
	bl	__assert_fail		//
.L23:
// problem131.c:90:     free(out1);
	ldr	x0, [sp, 88]	//, out1
	bl	free		//
// problem131.c:92:     return 0;
	mov	w0, 0	// _86,
// problem131.c:93: }
	mov	w1, w0	// <retval>, _86
	adrp	x0, :got:__stack_chk_guard	// tmp211,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp211,
	ldr	x3, [sp, 408]	// tmp213, D.5465
	ldr	x2, [x0]	// tmp214,
	subs	x3, x3, x2	// tmp213, tmp214
	mov	x2, 0	// tmp214
	beq	.L25		//,
	bl	__stack_chk_fail		//
.L25:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 416]	//,,
	add	sp, sp, 432	//,,
	.cfi_restore 29
	.cfi_restore 30
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
