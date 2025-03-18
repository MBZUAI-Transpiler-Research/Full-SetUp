	.arch armv8-a
	.file	"problem137.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// lst, lst
	str	w1, [sp, 20]	// size, size
	str	x2, [sp, 8]	// result, result
// problem137.c:4:     int maxneg = 0;
	str	wzr, [sp, 36]	//, maxneg
// problem137.c:5:     int minpos = 0;
	str	wzr, [sp, 40]	//, minpos
// problem137.c:6:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 44]	//, i
// problem137.c:6:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L7:
// problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp115, lst
	add	x0, x1, x0	// _3, tmp115, _2
	ldr	w0, [x0]	// _4, *_3
// problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	cmp	w0, 0	// _4,
	bge	.L3		//,
// problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	ldr	w0, [sp, 36]	// tmp116, maxneg
	cmp	w0, 0	// tmp116,
	beq	.L4		//,
// problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 24]	// tmp117, lst
	add	x0, x1, x0	// _7, tmp117, _6
	ldr	w0, [x0]	// _8, *_7
// problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	ldr	w1, [sp, 36]	// tmp118, maxneg
	cmp	w1, w0	// tmp118, _8
	bge	.L3		//,
.L4:
// problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	ldrsw	x0, [sp, 44]	// _9, i
	lsl	x0, x0, 2	// _10, _9,
	ldr	x1, [sp, 24]	// tmp119, lst
	add	x0, x1, x0	// _11, tmp119, _10
// problem137.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	ldr	w0, [x0]	// tmp120, *_11
	str	w0, [sp, 36]	// tmp120, maxneg
.L3:
// problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	ldrsw	x0, [sp, 44]	// _12, i
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 24]	// tmp121, lst
	add	x0, x1, x0	// _14, tmp121, _13
	ldr	w0, [x0]	// _15, *_14
// problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	cmp	w0, 0	// _15,
	ble	.L5		//,
// problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	ldr	w0, [sp, 40]	// tmp122, minpos
	cmp	w0, 0	// tmp122,
	beq	.L6		//,
// problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	ldrsw	x0, [sp, 44]	// _16, i
	lsl	x0, x0, 2	// _17, _16,
	ldr	x1, [sp, 24]	// tmp123, lst
	add	x0, x1, x0	// _18, tmp123, _17
	ldr	w0, [x0]	// _19, *_18
// problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	ldr	w1, [sp, 40]	// tmp124, minpos
	cmp	w1, w0	// tmp124, _19
	ble	.L5		//,
.L6:
// problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	ldrsw	x0, [sp, 44]	// _20, i
	lsl	x0, x0, 2	// _21, _20,
	ldr	x1, [sp, 24]	// tmp125, lst
	add	x0, x1, x0	// _22, tmp125, _21
// problem137.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	ldr	w0, [x0]	// tmp126, *_22
	str	w0, [sp, 40]	// tmp126, minpos
.L5:
// problem137.c:6:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 44]	// tmp128, i
	add	w0, w0, 1	// tmp127, tmp128,
	str	w0, [sp, 44]	// tmp127, i
.L2:
// problem137.c:6:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 44]	// tmp129, i
	ldr	w0, [sp, 20]	// tmp130, size
	cmp	w1, w0	// tmp129, tmp130
	blt	.L7		//,
// problem137.c:10:     result[0] = maxneg;
	ldr	x0, [sp, 8]	// tmp131, result
	ldr	w1, [sp, 36]	// tmp132, maxneg
	str	w1, [x0]	// tmp132, *result_34(D)
// problem137.c:11:     result[1] = minpos;
	ldr	x0, [sp, 8]	// tmp133, result
	add	x0, x0, 4	// _23, tmp133,
// problem137.c:11:     result[1] = minpos;
	ldr	w1, [sp, 40]	// tmp134, minpos
	str	w1, [x0]	// tmp134, *_23
// problem137.c:12: }
	nop	
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// a, a
	str	x1, [sp]	// b, b
// problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	ldr	x0, [sp, 8]	// tmp100, a
	ldr	w1, [x0]	// _1, *a_9(D)
// problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	ldr	x0, [sp]	// tmp101, b
	ldr	w0, [x0]	// _2, *b_10(D)
// problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	cmp	w1, w0	// _1, _2
	bne	.L9		//,
// problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	ldr	x0, [sp, 8]	// tmp102, a
	add	x0, x0, 4	// _3, tmp102,
	ldr	w1, [x0]	// _4, *_3
// problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	ldr	x0, [sp]	// tmp103, b
	add	x0, x0, 4	// _5, tmp103,
	ldr	w0, [x0]	// _6, *_5
// problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	cmp	w1, w0	// _4, _6
	bne	.L9		//,
// problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	mov	w0, 1	// iftmp.0_7,
// problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	b	.L11		//
.L9:
// problem137.c:19:     return a[0] == b[0] && a[1] == b[1];
	mov	w0, 0	// iftmp.0_7,
.L11:
// problem137.c:20: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC8:
	.string	"problem137.c"
	.align	3
.LC9:
	.string	"issame(result, (int[]){0, 1})"
	.align	3
.LC10:
	.string	"issame(result, (int[]){-2, 1})"
	.align	3
.LC11:
	.string	"issame(result, (int[]){-7, 2})"
	.align	3
.LC12:
	.string	"issame(result, (int[]){-9, 2})"
	.align	3
.LC13:
	.string	"issame(result, (int[]){0, 0})"
	.align	3
.LC14:
	.string	"issame(result, (int[]){-1, 0})"
	.align	3
.LC15:
	.string	"issame(result, (int[]){-3, 1})"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #304	//,,
	.cfi_def_cfa_offset 304
	stp	x29, x30, [sp, 288]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 288	//,,
// problem137.c:22: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp105,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp105,
	ldr	x1, [x0]	// tmp251,
	str	x1, [sp, 280]	// tmp251, D.4966
	mov	x1, 0	// tmp251
// problem137.c:25:     func0((int[]){2, 4, 1, 3, 5, 7}, 6, result);
	adrp	x0, .LC0	// tmp107,
	add	x0, x0, :lo12:.LC0	// tmp106, tmp107,
	add	x2, sp, 104	// tmp108,,
	mov	x3, x0	// tmp109, tmp106
	ldp	x0, x1, [x3]	// tmp110,
	stp	x0, x1, [x2]	// tmp110, D.4866
	ldr	x0, [x3, 16]	// tmp111,
	str	x0, [x2, 16]	// tmp111, D.4866
// problem137.c:25:     func0((int[]){2, 4, 1, 3, 5, 7}, 6, result);
	add	x1, sp, 24	// tmp112,,
	add	x0, sp, 104	// tmp113,,
	mov	x2, x1	//, tmp112
	mov	w1, 6	//,
	bl	func0		//
// problem137.c:26:     assert(issame(result, (int[]){0, 1}));
	str	wzr, [sp, 248]	//, MEM[(int[2] *)_117][0]
	mov	w0, 1	// tmp114,
	str	w0, [sp, 252]	// tmp114, MEM[(int[2] *)_117][1]
	add	x1, sp, 248	// tmp115,,
	add	x0, sp, 24	// tmp116,,
	bl	issame		//
// problem137.c:26:     assert(issame(result, (int[]){0, 1}));
	cmp	w0, 0	// _1,
	bne	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp117,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp117,
	mov	w2, 26	//,
	adrp	x0, .LC8	// tmp118,
	add	x1, x0, :lo12:.LC8	//, tmp118,
	adrp	x0, .LC9	// tmp119,
	add	x0, x0, :lo12:.LC9	//, tmp119,
	bl	__assert_fail		//
.L13:
// problem137.c:28:     func0((int[]){2, 4, 1, 3, 5, 7, 0}, 7, result);
	adrp	x0, .LC1	// tmp121,
	add	x1, x0, :lo12:.LC1	// tmp120, tmp121,
	add	x0, sp, 152	// tmp122,,
	ldr	q0, [x1]	// tmp124,
	str	q0, [x0]	// tmp124, D.4870
	ldr	q0, [x1, 12]	// tmp125,
	str	q0, [x0, 12]	// tmp125, D.4870
// problem137.c:28:     func0((int[]){2, 4, 1, 3, 5, 7, 0}, 7, result);
	add	x1, sp, 24	// tmp126,,
	add	x0, sp, 152	// tmp127,,
	mov	x2, x1	//, tmp126
	mov	w1, 7	//,
	bl	func0		//
// problem137.c:29:     assert(issame(result, (int[]){0, 1}));
	str	wzr, [sp, 248]	//, MEM[(int[2] *)_117][0]
	mov	w0, 1	// tmp128,
	str	w0, [sp, 252]	// tmp128, MEM[(int[2] *)_117][1]
	add	x1, sp, 248	// tmp129,,
	add	x0, sp, 24	// tmp130,,
	bl	issame		//
// problem137.c:29:     assert(issame(result, (int[]){0, 1}));
	cmp	w0, 0	// _2,
	bne	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 29	//,
	adrp	x0, .LC8	// tmp132,
	add	x1, x0, :lo12:.LC8	//, tmp132,
	adrp	x0, .LC9	// tmp133,
	add	x0, x0, :lo12:.LC9	//, tmp133,
	bl	__assert_fail		//
.L14:
// problem137.c:31:     func0((int[]){1, 3, 2, 4, 5, 6, -2}, 7, result);
	adrp	x0, .LC2	// tmp135,
	add	x1, x0, :lo12:.LC2	// tmp134, tmp135,
	add	x0, sp, 184	// tmp136,,
	ldr	q0, [x1]	// tmp138,
	str	q0, [x0]	// tmp138, D.4873
	ldr	q0, [x1, 12]	// tmp139,
	str	q0, [x0, 12]	// tmp139, D.4873
// problem137.c:31:     func0((int[]){1, 3, 2, 4, 5, 6, -2}, 7, result);
	add	x1, sp, 24	// tmp140,,
	add	x0, sp, 184	// tmp141,,
	mov	x2, x1	//, tmp140
	mov	w1, 7	//,
	bl	func0		//
// problem137.c:32:     assert(issame(result, (int[]){-2, 1}));
	mov	w0, -2	// tmp142,
	str	w0, [sp, 248]	// tmp142, MEM[(int[2] *)_117][0]
	mov	w0, 1	// tmp143,
	str	w0, [sp, 252]	// tmp143, MEM[(int[2] *)_117][1]
	add	x1, sp, 248	// tmp144,,
	add	x0, sp, 24	// tmp145,,
	bl	issame		//
// problem137.c:32:     assert(issame(result, (int[]){-2, 1}));
	cmp	w0, 0	// _3,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp146,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp146,
	mov	w2, 32	//,
	adrp	x0, .LC8	// tmp147,
	add	x1, x0, :lo12:.LC8	//, tmp147,
	adrp	x0, .LC10	// tmp148,
	add	x0, x0, :lo12:.LC10	//, tmp148,
	bl	__assert_fail		//
.L15:
// problem137.c:34:     func0((int[]){4, 5, 3, 6, 2, 7, -7}, 7, result);
	adrp	x0, .LC3	// tmp150,
	add	x1, x0, :lo12:.LC3	// tmp149, tmp150,
	add	x0, sp, 216	// tmp151,,
	ldr	q0, [x1]	// tmp153,
	str	q0, [x0]	// tmp153, D.4876
	ldr	q0, [x1, 12]	// tmp154,
	str	q0, [x0, 12]	// tmp154, D.4876
// problem137.c:34:     func0((int[]){4, 5, 3, 6, 2, 7, -7}, 7, result);
	add	x1, sp, 24	// tmp155,,
	add	x0, sp, 216	// tmp156,,
	mov	x2, x1	//, tmp155
	mov	w1, 7	//,
	bl	func0		//
// problem137.c:35:     assert(issame(result, (int[]){-7, 2}));
	mov	w0, -7	// tmp157,
	str	w0, [sp, 248]	// tmp157, MEM[(int[2] *)_117][0]
	mov	w0, 2	// tmp158,
	str	w0, [sp, 252]	// tmp158, MEM[(int[2] *)_117][1]
	add	x1, sp, 248	// tmp159,,
	add	x0, sp, 24	// tmp160,,
	bl	issame		//
// problem137.c:35:     assert(issame(result, (int[]){-7, 2}));
	cmp	w0, 0	// _4,
	bne	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp161,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp161,
	mov	w2, 35	//,
	adrp	x0, .LC8	// tmp162,
	add	x1, x0, :lo12:.LC8	//, tmp162,
	adrp	x0, .LC11	// tmp163,
	add	x0, x0, :lo12:.LC11	//, tmp163,
	bl	__assert_fail		//
.L16:
// problem137.c:37:     func0((int[]){7, 3, 8, 4, 9, 2, 5, -9}, 8, result);
	adrp	x0, .LC4	// tmp165,
	add	x1, x0, :lo12:.LC4	// tmp164, tmp165,
	add	x0, sp, 248	// tmp166,,
	ldp	q0, q1, [x1]	// tmp168, tmp169,
	stp	q0, q1, [x0]	// tmp168, tmp169, MEM[(int[8] *)_117]
// problem137.c:37:     func0((int[]){7, 3, 8, 4, 9, 2, 5, -9}, 8, result);
	add	x1, sp, 24	// tmp170,,
	add	x0, sp, 248	// tmp171,,
	mov	x2, x1	//, tmp170
	mov	w1, 8	//,
	bl	func0		//
// problem137.c:38:     assert(issame(result, (int[]){-9, 2}));
	mov	w0, -9	// tmp172,
	str	w0, [sp, 128]	// tmp172, MEM[(int[2] *)_118][0]
	mov	w0, 2	// tmp173,
	str	w0, [sp, 132]	// tmp173, MEM[(int[2] *)_118][1]
	add	x1, sp, 128	// tmp174,,
	add	x0, sp, 24	// tmp175,,
	bl	issame		//
// problem137.c:38:     assert(issame(result, (int[]){-9, 2}));
	cmp	w0, 0	// _5,
	bne	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp176,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp176,
	mov	w2, 38	//,
	adrp	x0, .LC8	// tmp177,
	add	x1, x0, :lo12:.LC8	//, tmp177,
	adrp	x0, .LC12	// tmp178,
	add	x0, x0, :lo12:.LC12	//, tmp178,
	bl	__assert_fail		//
.L17:
// problem137.c:40:     func0((int[]){}, 0, result);
	add	x1, sp, 24	// tmp179,,
	add	x0, sp, 8	// tmp180,,
	mov	x2, x1	//, tmp179
	mov	w1, 0	//,
	bl	func0		//
// problem137.c:41:     assert(issame(result, (int[]){0, 0}));
	str	wzr, [sp, 128]	//, MEM[(int[2] *)_118][0]
	str	wzr, [sp, 132]	//, MEM[(int[2] *)_118][1]
	add	x1, sp, 128	// tmp181,,
	add	x0, sp, 24	// tmp182,,
	bl	issame		//
// problem137.c:41:     assert(issame(result, (int[]){0, 0}));
	cmp	w0, 0	// _6,
	bne	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp183,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp183,
	mov	w2, 41	//,
	adrp	x0, .LC8	// tmp184,
	add	x1, x0, :lo12:.LC8	//, tmp184,
	adrp	x0, .LC13	// tmp185,
	add	x0, x0, :lo12:.LC13	//, tmp185,
	bl	__assert_fail		//
.L18:
// problem137.c:43:     func0((int[]){0}, 1, result);
	str	wzr, [sp, 16]	//, D.4885[0]
// problem137.c:43:     func0((int[]){0}, 1, result);
	add	x1, sp, 24	// tmp186,,
	add	x0, sp, 16	// tmp187,,
	mov	x2, x1	//, tmp186
	mov	w1, 1	//,
	bl	func0		//
// problem137.c:44:     assert(issame(result, (int[]){0, 0}));
	str	wzr, [sp, 128]	//, MEM[(int[2] *)_118][0]
	str	wzr, [sp, 132]	//, MEM[(int[2] *)_118][1]
	add	x1, sp, 128	// tmp188,,
	add	x0, sp, 24	// tmp189,,
	bl	issame		//
// problem137.c:44:     assert(issame(result, (int[]){0, 0}));
	cmp	w0, 0	// _7,
	bne	.L19		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp190,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp190,
	mov	w2, 44	//,
	adrp	x0, .LC8	// tmp191,
	add	x1, x0, :lo12:.LC8	//, tmp191,
	adrp	x0, .LC13	// tmp192,
	add	x0, x0, :lo12:.LC13	//, tmp192,
	bl	__assert_fail		//
.L19:
// problem137.c:46:     func0((int[]){-1, -3, -5, -6}, 4, result);
	mov	w0, -1	// tmp193,
	str	w0, [sp, 40]	// tmp193, D.4888[0]
	mov	w0, -3	// tmp194,
	str	w0, [sp, 44]	// tmp194, D.4888[1]
	mov	w0, -5	// tmp195,
	str	w0, [sp, 48]	// tmp195, D.4888[2]
	mov	w0, -6	// tmp196,
	str	w0, [sp, 52]	// tmp196, D.4888[3]
// problem137.c:46:     func0((int[]){-1, -3, -5, -6}, 4, result);
	add	x1, sp, 24	// tmp197,,
	add	x0, sp, 40	// tmp198,,
	mov	x2, x1	//, tmp197
	mov	w1, 4	//,
	bl	func0		//
// problem137.c:47:     assert(issame(result, (int[]){-1, 0}));
	mov	w0, -1	// tmp199,
	str	w0, [sp, 128]	// tmp199, MEM[(int[2] *)_118][0]
	str	wzr, [sp, 132]	//, MEM[(int[2] *)_118][1]
	add	x1, sp, 128	// tmp200,,
	add	x0, sp, 24	// tmp201,,
	bl	issame		//
// problem137.c:47:     assert(issame(result, (int[]){-1, 0}));
	cmp	w0, 0	// _8,
	bne	.L20		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp202,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp202,
	mov	w2, 47	//,
	adrp	x0, .LC8	// tmp203,
	add	x1, x0, :lo12:.LC8	//, tmp203,
	adrp	x0, .LC14	// tmp204,
	add	x0, x0, :lo12:.LC14	//, tmp204,
	bl	__assert_fail		//
.L20:
// problem137.c:49:     func0((int[]){-1, -3, -5, -6, 0}, 5, result);
	adrp	x0, .LC5	// tmp206,
	add	x0, x0, :lo12:.LC5	// tmp205, tmp206,
	add	x2, sp, 56	// tmp207,,
	mov	x3, x0	// tmp208, tmp205
	ldp	x0, x1, [x3]	// tmp209,
	stp	x0, x1, [x2]	// tmp209, D.4891
	ldr	w0, [x3, 16]	// tmp210,
	str	w0, [x2, 16]	// tmp210, D.4891
// problem137.c:49:     func0((int[]){-1, -3, -5, -6, 0}, 5, result);
	add	x1, sp, 24	// tmp211,,
	add	x0, sp, 56	// tmp212,,
	mov	x2, x1	//, tmp211
	mov	w1, 5	//,
	bl	func0		//
// problem137.c:50:     assert(issame(result, (int[]){-1, 0}));
	mov	w0, -1	// tmp213,
	str	w0, [sp, 128]	// tmp213, MEM[(int[2] *)_118][0]
	str	wzr, [sp, 132]	//, MEM[(int[2] *)_118][1]
	add	x1, sp, 128	// tmp214,,
	add	x0, sp, 24	// tmp215,,
	bl	issame		//
// problem137.c:50:     assert(issame(result, (int[]){-1, 0}));
	cmp	w0, 0	// _9,
	bne	.L21		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp216,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp216,
	mov	w2, 50	//,
	adrp	x0, .LC8	// tmp217,
	add	x1, x0, :lo12:.LC8	//, tmp217,
	adrp	x0, .LC14	// tmp218,
	add	x0, x0, :lo12:.LC14	//, tmp218,
	bl	__assert_fail		//
.L21:
// problem137.c:52:     func0((int[]){-6, -4, -4, -3, 1}, 5, result);
	adrp	x0, .LC6	// tmp220,
	add	x0, x0, :lo12:.LC6	// tmp219, tmp220,
	add	x2, sp, 80	// tmp221,,
	mov	x3, x0	// tmp222, tmp219
	ldp	x0, x1, [x3]	// tmp223,
	stp	x0, x1, [x2]	// tmp223, D.4894
	ldr	w0, [x3, 16]	// tmp224,
	str	w0, [x2, 16]	// tmp224, D.4894
// problem137.c:52:     func0((int[]){-6, -4, -4, -3, 1}, 5, result);
	add	x1, sp, 24	// tmp225,,
	add	x0, sp, 80	// tmp226,,
	mov	x2, x1	//, tmp225
	mov	w1, 5	//,
	bl	func0		//
// problem137.c:53:     assert(issame(result, (int[]){-3, 1}));
	mov	w0, -3	// tmp227,
	str	w0, [sp, 128]	// tmp227, MEM[(int[2] *)_118][0]
	mov	w0, 1	// tmp228,
	str	w0, [sp, 132]	// tmp228, MEM[(int[2] *)_118][1]
	add	x1, sp, 128	// tmp229,,
	add	x0, sp, 24	// tmp230,,
	bl	issame		//
// problem137.c:53:     assert(issame(result, (int[]){-3, 1}));
	cmp	w0, 0	// _10,
	bne	.L22		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp231,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp231,
	mov	w2, 53	//,
	adrp	x0, .LC8	// tmp232,
	add	x1, x0, :lo12:.LC8	//, tmp232,
	adrp	x0, .LC15	// tmp233,
	add	x0, x0, :lo12:.LC15	//, tmp233,
	bl	__assert_fail		//
.L22:
// problem137.c:55:     func0((int[]){-6, -4, -4, -3, -100, 1}, 6, result);
	adrp	x0, .LC7	// tmp235,
	add	x0, x0, :lo12:.LC7	// tmp234, tmp235,
	add	x2, sp, 128	// tmp236,,
	mov	x3, x0	// tmp237, tmp234
	ldp	x0, x1, [x3]	// tmp238,
	stp	x0, x1, [x2]	// tmp238, MEM[(int[6] *)_118]
	ldr	x0, [x3, 16]	// tmp239,
	str	x0, [x2, 16]	// tmp239, MEM[(int[6] *)_118]
// problem137.c:55:     func0((int[]){-6, -4, -4, -3, -100, 1}, 6, result);
	add	x1, sp, 24	// tmp240,,
	add	x0, sp, 128	// tmp241,,
	mov	x2, x1	//, tmp240
	mov	w1, 6	//,
	bl	func0		//
// problem137.c:56:     assert(issame(result, (int[]){-3, 1}));
	mov	w0, -3	// tmp242,
	str	w0, [sp, 32]	// tmp242, D.4899[0]
	mov	w0, 1	// tmp243,
	str	w0, [sp, 36]	// tmp243, D.4899[1]
	add	x1, sp, 32	// tmp244,,
	add	x0, sp, 24	// tmp245,,
	bl	issame		//
// problem137.c:56:     assert(issame(result, (int[]){-3, 1}));
	cmp	w0, 0	// _11,
	bne	.L23		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp246,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp246,
	mov	w2, 56	//,
	adrp	x0, .LC8	// tmp247,
	add	x1, x0, :lo12:.LC8	//, tmp247,
	adrp	x0, .LC15	// tmp248,
	add	x0, x0, :lo12:.LC15	//, tmp248,
	bl	__assert_fail		//
.L23:
// problem137.c:58:     return 0;
	mov	w0, 0	// _92,
// problem137.c:59: }
	mov	w1, w0	// <retval>, _92
	adrp	x0, :got:__stack_chk_guard	// tmp250,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp250,
	ldr	x3, [sp, 280]	// tmp252, D.4966
	ldr	x2, [x0]	// tmp253,
	subs	x3, x3, x2	// tmp252, tmp253
	mov	x2, 0	// tmp253
	beq	.L25		//,
	bl	__stack_chk_fail		//
.L25:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 288]	//,,
	add	sp, sp, 304	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	2
	.word	4
	.word	1
	.word	3
	.word	5
	.word	7
	.align	3
.LC1:
	.word	2
	.word	4
	.word	1
	.word	3
	.word	5
	.word	7
	.word	0
	.align	3
.LC2:
	.word	1
	.word	3
	.word	2
	.word	4
	.word	5
	.word	6
	.word	-2
	.align	3
.LC3:
	.word	4
	.word	5
	.word	3
	.word	6
	.word	2
	.word	7
	.word	-7
	.align	3
.LC4:
	.word	7
	.word	3
	.word	8
	.word	4
	.word	9
	.word	2
	.word	5
	.word	-9
	.align	3
.LC5:
	.word	-1
	.word	-3
	.word	-5
	.word	-6
	.word	0
	.align	3
.LC6:
	.word	-6
	.word	-4
	.word	-4
	.word	-3
	.word	1
	.align	3
.LC7:
	.word	-6
	.word	-4
	.word	-4
	.word	-3
	.word	-100
	.word	1
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
