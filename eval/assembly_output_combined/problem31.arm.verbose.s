	.arch armv8-a
	.file	"problem31.c"
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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 40]	// l, l
	str	w1, [sp, 36]	// count, count
	str	x2, [sp, 24]	// out_count, out_count
// problem31.c:5:     float* out = (float*)malloc(count * sizeof(float));
	ldrsw	x0, [sp, 36]	// _1, count
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 56]	// tmp109, out
// problem31.c:6:     *out_count = 0;
	ldr	x0, [sp, 24]	// tmp110, out_count
	str	wzr, [x0]	//, *out_count_24(D)
// problem31.c:8:     for (int i = 0; i < count; i++) {
	str	wzr, [sp, 52]	//, i
// problem31.c:8:     for (int i = 0; i < count; i++) {
	b	.L2		//
.L5:
// problem31.c:9:         if (l[i] > 0) {
	ldrsw	x0, [sp, 52]	// _3, i
	lsl	x0, x0, 2	// _4, _3,
	ldr	x1, [sp, 40]	// tmp111, l
	add	x0, x1, x0	// _5, tmp111, _4
	ldr	s0, [x0]	// _6, *_5
// problem31.c:9:         if (l[i] > 0) {
	fcmpe	s0, #0.0	// _6
	bgt	.L7		//,
	b	.L3		//
.L7:
// problem31.c:10:             out[(*out_count)++] = l[i];
	ldrsw	x0, [sp, 52]	// _7, i
	lsl	x0, x0, 2	// _8, _7,
	ldr	x1, [sp, 40]	// tmp112, l
	add	x1, x1, x0	// _9, tmp112, _8
// problem31.c:10:             out[(*out_count)++] = l[i];
	ldr	x0, [sp, 24]	// tmp113, out_count
	ldr	w0, [x0]	// _10, *out_count_24(D)
// problem31.c:10:             out[(*out_count)++] = l[i];
	add	w3, w0, 1	// _12, _10,
	ldr	x2, [sp, 24]	// tmp114, out_count
	str	w3, [x2]	// _12, *out_count_24(D)
	sxtw	x0, w0	// _13, _10
// problem31.c:10:             out[(*out_count)++] = l[i];
	lsl	x0, x0, 2	// _14, _13,
	ldr	x2, [sp, 56]	// tmp115, out
	add	x0, x2, x0	// _15, tmp115, _14
// problem31.c:10:             out[(*out_count)++] = l[i];
	ldr	s0, [x1]	// _16, *_9
// problem31.c:10:             out[(*out_count)++] = l[i];
	str	s0, [x0]	// _16, *_15
.L3:
// problem31.c:8:     for (int i = 0; i < count; i++) {
	ldr	w0, [sp, 52]	// tmp117, i
	add	w0, w0, 1	// tmp116, tmp117,
	str	w0, [sp, 52]	// tmp116, i
.L2:
// problem31.c:8:     for (int i = 0; i < count; i++) {
	ldr	w1, [sp, 52]	// tmp118, i
	ldr	w0, [sp, 36]	// tmp119, count
	cmp	w1, w0	// tmp118, tmp119
	blt	.L5		//,
// problem31.c:14:     return out;
	ldr	x0, [sp, 56]	// _27, out
// problem31.c:15: }
	ldp	x29, x30, [sp], 64	//,,,
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
	str	w1, [sp, 20]	// a_count, a_count
	str	x2, [sp, 8]	// b, b
	str	w3, [sp, 16]	// b_count, b_count
// problem31.c:25:     if (a_count != b_count) return 0;
	ldr	w1, [sp, 20]	// tmp105, a_count
	ldr	w0, [sp, 16]	// tmp106, b_count
	cmp	w1, w0	// tmp105, tmp106
	beq	.L9		//,
// problem31.c:25:     if (a_count != b_count) return 0;
	mov	w0, 0	// _13,
// problem31.c:25:     if (a_count != b_count) return 0;
	b	.L10		//
.L9:
// problem31.c:26:     for (int i = 0; i < a_count; i++) {
	str	wzr, [sp, 44]	//, i
// problem31.c:26:     for (int i = 0; i < a_count; i++) {
	b	.L11		//
.L14:
// problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp107, a
	add	x0, x1, x0	// _3, tmp107, _2
	ldr	s1, [x0]	// _4, *_3
// problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 8]	// tmp108, b
	add	x0, x1, x0	// _7, tmp108, _6
	ldr	s0, [x0]	// _8, *_7
// problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	fsub	s0, s1, s0	// _9, _4, _8
// problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	fabs	s0, s0	// _10, _9
	fcvt	d0, s0	// _11, _10
// problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	adrp	x0, .LC4	// tmp116,
	ldr	d1, [x0, #:lo12:.LC4]	// tmp109,
	fcmpe	d0, d1	// _11, tmp109
	bgt	.L15		//,
	b	.L16		//
.L15:
// problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	mov	w0, 0	// _13,
// problem31.c:27:         if (fabs(a[i] - b[i]) > 1e-4) return 0;
	b	.L10		//
.L16:
// problem31.c:26:     for (int i = 0; i < a_count; i++) {
	ldr	w0, [sp, 44]	// tmp111, i
	add	w0, w0, 1	// tmp110, tmp111,
	str	w0, [sp, 44]	// tmp110, i
.L11:
// problem31.c:26:     for (int i = 0; i < a_count; i++) {
	ldr	w1, [sp, 44]	// tmp112, i
	ldr	w0, [sp, 20]	// tmp113, a_count
	cmp	w1, w0	// tmp112, tmp113
	blt	.L14		//,
// problem31.c:29:     return 1;
	mov	w0, 1	// _13,
.L10:
// problem31.c:30: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC5:
	.string	"problem31.c"
	.align	3
.LC6:
	.string	"issame(result, count, (float[]){4, 5, 6}, 3)"
	.align	3
.LC7:
	.string	"issame(result, count, (float[]){5, 3, 2, 3, 3, 9, 123, 1}, 8)"
	.align	3
.LC8:
	.string	"issame(result, count, (float[]){}, 0)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #160	//,,
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, 144]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 144	//,,
// problem31.c:32: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp102,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp102,
	ldr	x1, [x0]	// tmp156,
	str	x1, [sp, 136]	// tmp156, D.6641
	mov	x1, 0	// tmp156
// problem31.c:36:     result = func0((float[]){-1, -2, 4, 5, 6}, 5, &count);
	adrp	x0, .LC0	// tmp104,
	add	x0, x0, :lo12:.LC0	// tmp103, tmp104,
	add	x2, sp, 32	// tmp105,,
	mov	x3, x0	// tmp106, tmp103
	ldp	x0, x1, [x3]	// tmp107,
	stp	x0, x1, [x2]	// tmp107, D.6594
	ldr	w0, [x3, 16]	// tmp108,
	str	w0, [x2, 16]	// tmp108, D.6594
// problem31.c:36:     result = func0((float[]){-1, -2, 4, 5, 6}, 5, &count);
	add	x1, sp, 4	// tmp109,,
	add	x0, sp, 32	// tmp110,,
	mov	x2, x1	//, tmp109
	mov	w1, 5	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem31.c:37:     assert(issame(result, count, (float[]){4, 5, 6}, 3));
	ldr	w4, [sp, 4]	// count.0_1, count
	adrp	x0, .LC1	// tmp112,
	add	x1, x0, :lo12:.LC1	// tmp111, tmp112,
	add	x0, sp, 88	// tmp113,,
	ldr	x2, [x1]	// tmp115,
	str	x2, [x0]	// tmp115, MEM[(float[3] *)_51]
	ldr	w1, [x1, 8]	// tmp116,
	str	w1, [x0, 8]	// tmp116, MEM[(float[3] *)_51]
	add	x0, sp, 88	// tmp117,,
	mov	w3, 3	//,
	mov	x2, x0	//, tmp117
	mov	w1, w4	//, count.0_1
	ldr	x0, [sp, 8]	//, result
	bl	issame		//
// problem31.c:37:     assert(issame(result, count, (float[]){4, 5, 6}, 3));
	cmp	w0, 0	// _2,
	bne	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp118,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp118,
	mov	w2, 37	//,
	adrp	x0, .LC5	// tmp119,
	add	x1, x0, :lo12:.LC5	//, tmp119,
	adrp	x0, .LC6	// tmp120,
	add	x0, x0, :lo12:.LC6	//, tmp120,
	bl	__assert_fail		//
.L18:
// problem31.c:38:     free(result);
	ldr	x0, [sp, 8]	//, result
	bl	free		//
// problem31.c:40:     result = func0((float[]){5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10}, 11, &count);
	adrp	x0, .LC2	// tmp122,
	add	x1, x0, :lo12:.LC2	// tmp121, tmp122,
	add	x0, sp, 88	// tmp123,,
	ldp	q0, q1, [x1]	// tmp125, tmp126,
	stp	q0, q1, [x0]	// tmp125, tmp126, MEM[(float[11] *)_51]
	ldr	q0, [x1, 28]	// tmp127,
	str	q0, [x0, 28]	// tmp127, MEM[(float[11] *)_51]
// problem31.c:40:     result = func0((float[]){5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10}, 11, &count);
	add	x1, sp, 4	// tmp128,,
	add	x0, sp, 88	// tmp129,,
	mov	x2, x1	//, tmp128
	mov	w1, 11	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem31.c:41:     assert(issame(result, count, (float[]){5, 3, 2, 3, 3, 9, 123, 1}, 8));
	ldr	w4, [sp, 4]	// count.1_3, count
	adrp	x0, .LC3	// tmp131,
	add	x1, x0, :lo12:.LC3	// tmp130, tmp131,
	add	x0, sp, 56	// tmp132,,
	ldp	q0, q1, [x1]	// tmp134, tmp135,
	stp	q0, q1, [x0]	// tmp134, tmp135, MEM[(float[8] *)_52]
	add	x0, sp, 56	// tmp136,,
	mov	w3, 8	//,
	mov	x2, x0	//, tmp136
	mov	w1, w4	//, count.1_3
	ldr	x0, [sp, 8]	//, result
	bl	issame		//
// problem31.c:41:     assert(issame(result, count, (float[]){5, 3, 2, 3, 3, 9, 123, 1}, 8));
	cmp	w0, 0	// _4,
	bne	.L19		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp137,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp137,
	mov	w2, 41	//,
	adrp	x0, .LC5	// tmp138,
	add	x1, x0, :lo12:.LC5	//, tmp138,
	adrp	x0, .LC7	// tmp139,
	add	x0, x0, :lo12:.LC7	//, tmp139,
	bl	__assert_fail		//
.L19:
// problem31.c:42:     free(result);
	ldr	x0, [sp, 8]	//, result
	bl	free		//
// problem31.c:44:     result = func0((float[]){-1, -2}, 2, &count);
	fmov	s0, -1.0e+0	// tmp140,
	str	s0, [sp, 56]	// tmp140, MEM[(float[2] *)_52][0]
	fmov	s0, -2.0e+0	// tmp141,
	str	s0, [sp, 60]	// tmp141, MEM[(float[2] *)_52][1]
// problem31.c:44:     result = func0((float[]){-1, -2}, 2, &count);
	add	x1, sp, 4	// tmp142,,
	add	x0, sp, 56	// tmp143,,
	mov	x2, x1	//, tmp142
	mov	w1, 2	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem31.c:45:     assert(issame(result, count, (float[]){}, 0));
	ldr	w0, [sp, 4]	// count.2_5, count
	add	x1, sp, 24	// tmp144,,
	mov	w3, 0	//,
	mov	x2, x1	//, tmp144
	mov	w1, w0	//, count.2_5
	ldr	x0, [sp, 8]	//, result
	bl	issame		//
// problem31.c:45:     assert(issame(result, count, (float[]){}, 0));
	cmp	w0, 0	// _6,
	bne	.L20		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp145,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp145,
	mov	w2, 45	//,
	adrp	x0, .LC5	// tmp146,
	add	x1, x0, :lo12:.LC5	//, tmp146,
	adrp	x0, .LC8	// tmp147,
	add	x0, x0, :lo12:.LC8	//, tmp147,
	bl	__assert_fail		//
.L20:
// problem31.c:46:     free(result);
	ldr	x0, [sp, 8]	//, result
	bl	free		//
// problem31.c:48:     result = func0((float[]){}, 0, &count);
	add	x1, sp, 4	// tmp148,,
	add	x0, sp, 16	// tmp149,,
	mov	x2, x1	//, tmp148
	mov	w1, 0	//,
	bl	func0		//
	str	x0, [sp, 8]	//, result
// problem31.c:49:     assert(issame(result, count, (float[]){}, 0));
	ldr	w0, [sp, 4]	// count.3_7, count
	add	x1, sp, 24	// tmp150,,
	mov	w3, 0	//,
	mov	x2, x1	//, tmp150
	mov	w1, w0	//, count.3_7
	ldr	x0, [sp, 8]	//, result
	bl	issame		//
// problem31.c:49:     assert(issame(result, count, (float[]){}, 0));
	cmp	w0, 0	// _8,
	bne	.L21		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp151,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp151,
	mov	w2, 49	//,
	adrp	x0, .LC5	// tmp152,
	add	x1, x0, :lo12:.LC5	//, tmp152,
	adrp	x0, .LC8	// tmp153,
	add	x0, x0, :lo12:.LC8	//, tmp153,
	bl	__assert_fail		//
.L21:
// problem31.c:50:     free(result);
	ldr	x0, [sp, 8]	//, result
	bl	free		//
// problem31.c:52:     return 0;
	mov	w0, 0	// _40,
// problem31.c:53: }
	mov	w1, w0	// <retval>, _40
	adrp	x0, :got:__stack_chk_guard	// tmp155,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp155,
	ldr	x3, [sp, 136]	// tmp157, D.6641
	ldr	x2, [x0]	// tmp158,
	subs	x3, x3, x2	// tmp157, tmp158
	mov	x2, 0	// tmp158
	beq	.L23		//,
	bl	__stack_chk_fail		//
.L23:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 144]	//,,
	add	sp, sp, 160	//,,
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
	.word	-1082130432
	.word	-1073741824
	.word	1082130432
	.word	1084227584
	.word	1086324736
	.align	3
.LC1:
	.word	1082130432
	.word	1084227584
	.word	1086324736
	.align	3
.LC2:
	.word	1084227584
	.word	1077936128
	.word	-1063256064
	.word	1073741824
	.word	1077936128
	.word	1077936128
	.word	1091567616
	.word	0
	.word	1123418112
	.word	1065353216
	.word	-1054867456
	.align	3
.LC3:
	.word	1084227584
	.word	1077936128
	.word	1073741824
	.word	1077936128
	.word	1077936128
	.word	1091567616
	.word	1123418112
	.word	1065353216
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC4:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
