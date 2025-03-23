	.arch armv8-a
	.file	"problem31.c"
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
	stp	x29, x30, [sp, -160]!	//,,,
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp	//,
// problem31.c:32: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp102, tmp103,
	ldr	x1, [x0]	// tmp158,
	str	x1, [sp, 152]	// tmp158, D.5893
	mov	x1, 0	// tmp158
// problem31.c:36:     result = func0((float[]){-1, -2, 4, 5, 6}, 5, &count);
	adrp	x0, .LC0	// tmp105,
	add	x0, x0, :lo12:.LC0	// tmp104, tmp105,
	add	x2, sp, 48	// tmp106,,
	mov	x3, x0	// tmp107, tmp104
	ldp	x0, x1, [x3]	// tmp108,
	stp	x0, x1, [x2]	// tmp108, D.5846
	ldr	w0, [x3, 16]	// tmp109,
	str	w0, [x2, 16]	// tmp109, D.5846
// problem31.c:36:     result = func0((float[]){-1, -2, 4, 5, 6}, 5, &count);
	add	x1, sp, 20	// tmp110,,
	add	x0, sp, 48	// tmp111,,
	mov	x2, x1	//, tmp110
	mov	w1, 5	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem31.c:37:     assert(issame(result, count, (float[]){4, 5, 6}, 3));
	ldr	w4, [sp, 20]	// count.0_1, count
	adrp	x0, .LC1	// tmp113,
	add	x1, x0, :lo12:.LC1	// tmp112, tmp113,
	add	x0, sp, 104	// tmp114,,
	ldr	x2, [x1]	// tmp116,
	str	x2, [x0]	// tmp116, MEM[(float[3] *)_54]
	ldr	w1, [x1, 8]	// tmp117,
	str	w1, [x0, 8]	// tmp117, MEM[(float[3] *)_54]
	add	x0, sp, 104	// tmp118,,
	mov	w3, 3	//,
	mov	x2, x0	//, tmp118
	mov	w1, w4	//, count.0_1
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _2,
	bne	.L18		//,
// problem31.c:37:     assert(issame(result, count, (float[]){4, 5, 6}, 3));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 37	//,
	adrp	x0, .LC5	// tmp120,
	add	x1, x0, :lo12:.LC5	//, tmp120,
	adrp	x0, .LC6	// tmp121,
	add	x0, x0, :lo12:.LC6	//, tmp121,
	bl	__assert_fail		//
.L18:
// problem31.c:38:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem31.c:40:     result = func0((float[]){5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10}, 11, &count);
	adrp	x0, .LC2	// tmp123,
	add	x1, x0, :lo12:.LC2	// tmp122, tmp123,
	add	x0, sp, 104	// tmp124,,
	ldp	q0, q1, [x1]	// tmp126, tmp127,
	stp	q0, q1, [x0]	// tmp126, tmp127, MEM[(float[11] *)_54]
	ldr	q0, [x1, 28]	// tmp128,
	str	q0, [x0, 28]	// tmp128, MEM[(float[11] *)_54]
// problem31.c:40:     result = func0((float[]){5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10}, 11, &count);
	add	x1, sp, 20	// tmp129,,
	add	x0, sp, 104	// tmp130,,
	mov	x2, x1	//, tmp129
	mov	w1, 11	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem31.c:41:     assert(issame(result, count, (float[]){5, 3, 2, 3, 3, 9, 123, 1}, 8));
	ldr	w4, [sp, 20]	// count.1_3, count
	adrp	x0, .LC3	// tmp132,
	add	x1, x0, :lo12:.LC3	// tmp131, tmp132,
	add	x0, sp, 72	// tmp133,,
	ldp	q0, q1, [x1]	// tmp135, tmp136,
	stp	q0, q1, [x0]	// tmp135, tmp136, MEM[(float[8] *)_55]
	add	x0, sp, 72	// tmp137,,
	mov	w3, 8	//,
	mov	x2, x0	//, tmp137
	mov	w1, w4	//, count.1_3
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _4,
	bne	.L19		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp138,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp138,
	mov	w2, 41	//,
	adrp	x0, .LC5	// tmp139,
	add	x1, x0, :lo12:.LC5	//, tmp139,
	adrp	x0, .LC7	// tmp140,
	add	x0, x0, :lo12:.LC7	//, tmp140,
	bl	__assert_fail		//
.L19:
// problem31.c:42:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem31.c:44:     result = func0((float[]){-1, -2}, 2, &count);
	fmov	s0, -1.0e+0	// tmp141,
	str	s0, [sp, 72]	// tmp141, MEM[(float[2] *)_55][0]
	fmov	s0, -2.0e+0	// tmp142,
	str	s0, [sp, 76]	// tmp142, MEM[(float[2] *)_55][1]
// problem31.c:44:     result = func0((float[]){-1, -2}, 2, &count);
	add	x1, sp, 20	// tmp143,,
	add	x0, sp, 72	// tmp144,,
	mov	x2, x1	//, tmp143
	mov	w1, 2	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem31.c:45:     assert(issame(result, count, (float[]){}, 0));
	ldr	w0, [sp, 20]	// count.2_5, count
	add	x1, sp, 40	// tmp145,,
	mov	w3, 0	//,
	mov	x2, x1	//, tmp145
	mov	w1, w0	//, count.2_5
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _6,
	bne	.L20		//,
// problem31.c:45:     assert(issame(result, count, (float[]){}, 0));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp146,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp146,
	mov	w2, 45	//,
	adrp	x0, .LC5	// tmp147,
	add	x1, x0, :lo12:.LC5	//, tmp147,
	adrp	x0, .LC8	// tmp148,
	add	x0, x0, :lo12:.LC8	//, tmp148,
	bl	__assert_fail		//
.L20:
// problem31.c:46:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem31.c:48:     result = func0((float[]){}, 0, &count);
	add	x1, sp, 20	// tmp149,,
	add	x0, sp, 32	// tmp150,,
	mov	x2, x1	//, tmp149
	mov	w1, 0	//,
	bl	func0		//
	str	x0, [sp, 24]	//, result
// problem31.c:49:     assert(issame(result, count, (float[]){}, 0));
	ldr	w0, [sp, 20]	// count.3_7, count
	add	x1, sp, 40	// tmp151,,
	mov	w3, 0	//,
	mov	x2, x1	//, tmp151
	mov	w1, w0	//, count.3_7
	ldr	x0, [sp, 24]	//, result
	bl	issame		//
	cmp	w0, 0	// _8,
	bne	.L21		//,
// problem31.c:49:     assert(issame(result, count, (float[]){}, 0));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp152,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp152,
	mov	w2, 49	//,
	adrp	x0, .LC5	// tmp153,
	add	x1, x0, :lo12:.LC5	//, tmp153,
	adrp	x0, .LC8	// tmp154,
	add	x0, x0, :lo12:.LC8	//, tmp154,
	bl	__assert_fail		//
.L21:
// problem31.c:50:     free(result);
	ldr	x0, [sp, 24]	//, result
	bl	free		//
// problem31.c:52:     return 0;
	mov	w0, 0	// _43,
// problem31.c:53: }
	mov	w1, w0	// <retval>, _43
	adrp	x0, :got:__stack_chk_guard	// tmp157,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp156, tmp157,
	ldr	x3, [sp, 152]	// tmp159, D.5893
	ldr	x2, [x0]	// tmp160,
	subs	x3, x3, x2	// tmp159, tmp160
	mov	x2, 0	// tmp160
	beq	.L23		//,
// problem31.c:53: }
	bl	__stack_chk_fail		//
.L23:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 160	//,,,
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
