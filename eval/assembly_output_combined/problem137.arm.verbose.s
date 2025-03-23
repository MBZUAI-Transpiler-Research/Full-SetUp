	.arch armv8-a
	.file	"problem137.c"
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
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
// problem137.c:22: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp106,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp105, tmp106,
	ldr	x1, [x0]	// tmp253,
	str	x1, [sp, 296]	// tmp253, D.4384
	mov	x1, 0	// tmp253
// problem137.c:25:     func0((int[]){2, 4, 1, 3, 5, 7}, 6, result);
	adrp	x0, .LC0	// tmp108,
	add	x0, x0, :lo12:.LC0	// tmp107, tmp108,
	add	x2, sp, 120	// tmp109,,
	mov	x3, x0	// tmp110, tmp107
	ldp	x0, x1, [x3]	// tmp111,
	stp	x0, x1, [x2]	// tmp111, D.4284
	ldr	x0, [x3, 16]	// tmp112,
	str	x0, [x2, 16]	// tmp112, D.4284
// problem137.c:25:     func0((int[]){2, 4, 1, 3, 5, 7}, 6, result);
	add	x1, sp, 40	// tmp113,,
	add	x0, sp, 120	// tmp114,,
	mov	x2, x1	//, tmp113
	mov	w1, 6	//,
	bl	func0		//
// problem137.c:26:     assert(issame(result, (int[]){0, 1}));
	str	wzr, [sp, 264]	//, MEM[(int[2] *)_118][0]
	mov	w0, 1	// tmp115,
	str	w0, [sp, 268]	// tmp115, MEM[(int[2] *)_118][1]
	add	x1, sp, 264	// tmp116,,
	add	x0, sp, 40	// tmp117,,
	bl	issame		//
	cmp	w0, 0	// _1,
	bne	.L13		//,
// problem137.c:26:     assert(issame(result, (int[]){0, 1}));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp118,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp118,
	mov	w2, 26	//,
	adrp	x0, .LC8	// tmp119,
	add	x1, x0, :lo12:.LC8	//, tmp119,
	adrp	x0, .LC9	// tmp120,
	add	x0, x0, :lo12:.LC9	//, tmp120,
	bl	__assert_fail		//
.L13:
// problem137.c:28:     func0((int[]){2, 4, 1, 3, 5, 7, 0}, 7, result);
	adrp	x0, .LC1	// tmp122,
	add	x1, x0, :lo12:.LC1	// tmp121, tmp122,
	add	x0, sp, 168	// tmp123,,
	ldr	q0, [x1]	// tmp125,
	str	q0, [x0]	// tmp125, D.4288
	ldr	q0, [x1, 12]	// tmp126,
	str	q0, [x0, 12]	// tmp126, D.4288
// problem137.c:28:     func0((int[]){2, 4, 1, 3, 5, 7, 0}, 7, result);
	add	x1, sp, 40	// tmp127,,
	add	x0, sp, 168	// tmp128,,
	mov	x2, x1	//, tmp127
	mov	w1, 7	//,
	bl	func0		//
// problem137.c:29:     assert(issame(result, (int[]){0, 1}));
	str	wzr, [sp, 264]	//, MEM[(int[2] *)_118][0]
	mov	w0, 1	// tmp129,
	str	w0, [sp, 268]	// tmp129, MEM[(int[2] *)_118][1]
	add	x1, sp, 264	// tmp130,,
	add	x0, sp, 40	// tmp131,,
	bl	issame		//
	cmp	w0, 0	// _2,
	bne	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp132,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp132,
	mov	w2, 29	//,
	adrp	x0, .LC8	// tmp133,
	add	x1, x0, :lo12:.LC8	//, tmp133,
	adrp	x0, .LC9	// tmp134,
	add	x0, x0, :lo12:.LC9	//, tmp134,
	bl	__assert_fail		//
.L14:
// problem137.c:31:     func0((int[]){1, 3, 2, 4, 5, 6, -2}, 7, result);
	adrp	x0, .LC2	// tmp136,
	add	x1, x0, :lo12:.LC2	// tmp135, tmp136,
	add	x0, sp, 200	// tmp137,,
	ldr	q0, [x1]	// tmp139,
	str	q0, [x0]	// tmp139, D.4291
	ldr	q0, [x1, 12]	// tmp140,
	str	q0, [x0, 12]	// tmp140, D.4291
// problem137.c:31:     func0((int[]){1, 3, 2, 4, 5, 6, -2}, 7, result);
	add	x1, sp, 40	// tmp141,,
	add	x0, sp, 200	// tmp142,,
	mov	x2, x1	//, tmp141
	mov	w1, 7	//,
	bl	func0		//
// problem137.c:32:     assert(issame(result, (int[]){-2, 1}));
	mov	w0, -2	// tmp143,
	str	w0, [sp, 264]	// tmp143, MEM[(int[2] *)_118][0]
	mov	w0, 1	// tmp144,
	str	w0, [sp, 268]	// tmp144, MEM[(int[2] *)_118][1]
	add	x1, sp, 264	// tmp145,,
	add	x0, sp, 40	// tmp146,,
	bl	issame		//
	cmp	w0, 0	// _3,
	bne	.L15		//,
// problem137.c:32:     assert(issame(result, (int[]){-2, 1}));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp147,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp147,
	mov	w2, 32	//,
	adrp	x0, .LC8	// tmp148,
	add	x1, x0, :lo12:.LC8	//, tmp148,
	adrp	x0, .LC10	// tmp149,
	add	x0, x0, :lo12:.LC10	//, tmp149,
	bl	__assert_fail		//
.L15:
// problem137.c:34:     func0((int[]){4, 5, 3, 6, 2, 7, -7}, 7, result);
	adrp	x0, .LC3	// tmp151,
	add	x1, x0, :lo12:.LC3	// tmp150, tmp151,
	add	x0, sp, 232	// tmp152,,
	ldr	q0, [x1]	// tmp154,
	str	q0, [x0]	// tmp154, D.4294
	ldr	q0, [x1, 12]	// tmp155,
	str	q0, [x0, 12]	// tmp155, D.4294
// problem137.c:34:     func0((int[]){4, 5, 3, 6, 2, 7, -7}, 7, result);
	add	x1, sp, 40	// tmp156,,
	add	x0, sp, 232	// tmp157,,
	mov	x2, x1	//, tmp156
	mov	w1, 7	//,
	bl	func0		//
// problem137.c:35:     assert(issame(result, (int[]){-7, 2}));
	mov	w0, -7	// tmp158,
	str	w0, [sp, 264]	// tmp158, MEM[(int[2] *)_118][0]
	mov	w0, 2	// tmp159,
	str	w0, [sp, 268]	// tmp159, MEM[(int[2] *)_118][1]
	add	x1, sp, 264	// tmp160,,
	add	x0, sp, 40	// tmp161,,
	bl	issame		//
	cmp	w0, 0	// _4,
	bne	.L16		//,
// problem137.c:35:     assert(issame(result, (int[]){-7, 2}));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp162,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp162,
	mov	w2, 35	//,
	adrp	x0, .LC8	// tmp163,
	add	x1, x0, :lo12:.LC8	//, tmp163,
	adrp	x0, .LC11	// tmp164,
	add	x0, x0, :lo12:.LC11	//, tmp164,
	bl	__assert_fail		//
.L16:
// problem137.c:37:     func0((int[]){7, 3, 8, 4, 9, 2, 5, -9}, 8, result);
	adrp	x0, .LC4	// tmp166,
	add	x1, x0, :lo12:.LC4	// tmp165, tmp166,
	add	x0, sp, 264	// tmp167,,
	ldp	q0, q1, [x1]	// tmp169, tmp170,
	stp	q0, q1, [x0]	// tmp169, tmp170, MEM[(int[8] *)_118]
// problem137.c:37:     func0((int[]){7, 3, 8, 4, 9, 2, 5, -9}, 8, result);
	add	x1, sp, 40	// tmp171,,
	add	x0, sp, 264	// tmp172,,
	mov	x2, x1	//, tmp171
	mov	w1, 8	//,
	bl	func0		//
// problem137.c:38:     assert(issame(result, (int[]){-9, 2}));
	mov	w0, -9	// tmp173,
	str	w0, [sp, 144]	// tmp173, MEM[(int[2] *)_119][0]
	mov	w0, 2	// tmp174,
	str	w0, [sp, 148]	// tmp174, MEM[(int[2] *)_119][1]
	add	x1, sp, 144	// tmp175,,
	add	x0, sp, 40	// tmp176,,
	bl	issame		//
	cmp	w0, 0	// _5,
	bne	.L17		//,
// problem137.c:38:     assert(issame(result, (int[]){-9, 2}));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp177,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp177,
	mov	w2, 38	//,
	adrp	x0, .LC8	// tmp178,
	add	x1, x0, :lo12:.LC8	//, tmp178,
	adrp	x0, .LC12	// tmp179,
	add	x0, x0, :lo12:.LC12	//, tmp179,
	bl	__assert_fail		//
.L17:
// problem137.c:40:     func0((int[]){}, 0, result);
	add	x1, sp, 40	// tmp180,,
	add	x0, sp, 24	// tmp181,,
	mov	x2, x1	//, tmp180
	mov	w1, 0	//,
	bl	func0		//
// problem137.c:41:     assert(issame(result, (int[]){0, 0}));
	str	wzr, [sp, 144]	//, MEM[(int[2] *)_119][0]
	str	wzr, [sp, 148]	//, MEM[(int[2] *)_119][1]
	add	x1, sp, 144	// tmp182,,
	add	x0, sp, 40	// tmp183,,
	bl	issame		//
	cmp	w0, 0	// _6,
	bne	.L18		//,
// problem137.c:41:     assert(issame(result, (int[]){0, 0}));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp184,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp184,
	mov	w2, 41	//,
	adrp	x0, .LC8	// tmp185,
	add	x1, x0, :lo12:.LC8	//, tmp185,
	adrp	x0, .LC13	// tmp186,
	add	x0, x0, :lo12:.LC13	//, tmp186,
	bl	__assert_fail		//
.L18:
// problem137.c:43:     func0((int[]){0}, 1, result);
	str	wzr, [sp, 32]	//, D.4303[0]
// problem137.c:43:     func0((int[]){0}, 1, result);
	add	x1, sp, 40	// tmp187,,
	add	x0, sp, 32	// tmp188,,
	mov	x2, x1	//, tmp187
	mov	w1, 1	//,
	bl	func0		//
// problem137.c:44:     assert(issame(result, (int[]){0, 0}));
	str	wzr, [sp, 144]	//, MEM[(int[2] *)_119][0]
	str	wzr, [sp, 148]	//, MEM[(int[2] *)_119][1]
	add	x1, sp, 144	// tmp189,,
	add	x0, sp, 40	// tmp190,,
	bl	issame		//
	cmp	w0, 0	// _7,
	bne	.L19		//,
// problem137.c:44:     assert(issame(result, (int[]){0, 0}));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp191,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp191,
	mov	w2, 44	//,
	adrp	x0, .LC8	// tmp192,
	add	x1, x0, :lo12:.LC8	//, tmp192,
	adrp	x0, .LC13	// tmp193,
	add	x0, x0, :lo12:.LC13	//, tmp193,
	bl	__assert_fail		//
.L19:
// problem137.c:46:     func0((int[]){-1, -3, -5, -6}, 4, result);
	mov	w0, -1	// tmp194,
	str	w0, [sp, 56]	// tmp194, D.4306[0]
	mov	w0, -3	// tmp195,
	str	w0, [sp, 60]	// tmp195, D.4306[1]
	mov	w0, -5	// tmp196,
	str	w0, [sp, 64]	// tmp196, D.4306[2]
	mov	w0, -6	// tmp197,
	str	w0, [sp, 68]	// tmp197, D.4306[3]
// problem137.c:46:     func0((int[]){-1, -3, -5, -6}, 4, result);
	add	x1, sp, 40	// tmp198,,
	add	x0, sp, 56	// tmp199,,
	mov	x2, x1	//, tmp198
	mov	w1, 4	//,
	bl	func0		//
// problem137.c:47:     assert(issame(result, (int[]){-1, 0}));
	mov	w0, -1	// tmp200,
	str	w0, [sp, 144]	// tmp200, MEM[(int[2] *)_119][0]
	str	wzr, [sp, 148]	//, MEM[(int[2] *)_119][1]
	add	x1, sp, 144	// tmp201,,
	add	x0, sp, 40	// tmp202,,
	bl	issame		//
	cmp	w0, 0	// _8,
	bne	.L20		//,
// problem137.c:47:     assert(issame(result, (int[]){-1, 0}));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp203,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp203,
	mov	w2, 47	//,
	adrp	x0, .LC8	// tmp204,
	add	x1, x0, :lo12:.LC8	//, tmp204,
	adrp	x0, .LC14	// tmp205,
	add	x0, x0, :lo12:.LC14	//, tmp205,
	bl	__assert_fail		//
.L20:
// problem137.c:49:     func0((int[]){-1, -3, -5, -6, 0}, 5, result);
	adrp	x0, .LC5	// tmp207,
	add	x0, x0, :lo12:.LC5	// tmp206, tmp207,
	add	x2, sp, 72	// tmp208,,
	mov	x3, x0	// tmp209, tmp206
	ldp	x0, x1, [x3]	// tmp210,
	stp	x0, x1, [x2]	// tmp210, D.4309
	ldr	w0, [x3, 16]	// tmp211,
	str	w0, [x2, 16]	// tmp211, D.4309
// problem137.c:49:     func0((int[]){-1, -3, -5, -6, 0}, 5, result);
	add	x1, sp, 40	// tmp212,,
	add	x0, sp, 72	// tmp213,,
	mov	x2, x1	//, tmp212
	mov	w1, 5	//,
	bl	func0		//
// problem137.c:50:     assert(issame(result, (int[]){-1, 0}));
	mov	w0, -1	// tmp214,
	str	w0, [sp, 144]	// tmp214, MEM[(int[2] *)_119][0]
	str	wzr, [sp, 148]	//, MEM[(int[2] *)_119][1]
	add	x1, sp, 144	// tmp215,,
	add	x0, sp, 40	// tmp216,,
	bl	issame		//
	cmp	w0, 0	// _9,
	bne	.L21		//,
// problem137.c:50:     assert(issame(result, (int[]){-1, 0}));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp217,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp217,
	mov	w2, 50	//,
	adrp	x0, .LC8	// tmp218,
	add	x1, x0, :lo12:.LC8	//, tmp218,
	adrp	x0, .LC14	// tmp219,
	add	x0, x0, :lo12:.LC14	//, tmp219,
	bl	__assert_fail		//
.L21:
// problem137.c:52:     func0((int[]){-6, -4, -4, -3, 1}, 5, result);
	adrp	x0, .LC6	// tmp221,
	add	x0, x0, :lo12:.LC6	// tmp220, tmp221,
	add	x2, sp, 96	// tmp222,,
	mov	x3, x0	// tmp223, tmp220
	ldp	x0, x1, [x3]	// tmp224,
	stp	x0, x1, [x2]	// tmp224, D.4312
	ldr	w0, [x3, 16]	// tmp225,
	str	w0, [x2, 16]	// tmp225, D.4312
// problem137.c:52:     func0((int[]){-6, -4, -4, -3, 1}, 5, result);
	add	x1, sp, 40	// tmp226,,
	add	x0, sp, 96	// tmp227,,
	mov	x2, x1	//, tmp226
	mov	w1, 5	//,
	bl	func0		//
// problem137.c:53:     assert(issame(result, (int[]){-3, 1}));
	mov	w0, -3	// tmp228,
	str	w0, [sp, 144]	// tmp228, MEM[(int[2] *)_119][0]
	mov	w0, 1	// tmp229,
	str	w0, [sp, 148]	// tmp229, MEM[(int[2] *)_119][1]
	add	x1, sp, 144	// tmp230,,
	add	x0, sp, 40	// tmp231,,
	bl	issame		//
	cmp	w0, 0	// _10,
	bne	.L22		//,
// problem137.c:53:     assert(issame(result, (int[]){-3, 1}));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp232,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp232,
	mov	w2, 53	//,
	adrp	x0, .LC8	// tmp233,
	add	x1, x0, :lo12:.LC8	//, tmp233,
	adrp	x0, .LC15	// tmp234,
	add	x0, x0, :lo12:.LC15	//, tmp234,
	bl	__assert_fail		//
.L22:
// problem137.c:55:     func0((int[]){-6, -4, -4, -3, -100, 1}, 6, result);
	adrp	x0, .LC7	// tmp236,
	add	x0, x0, :lo12:.LC7	// tmp235, tmp236,
	add	x2, sp, 144	// tmp237,,
	mov	x3, x0	// tmp238, tmp235
	ldp	x0, x1, [x3]	// tmp239,
	stp	x0, x1, [x2]	// tmp239, MEM[(int[6] *)_119]
	ldr	x0, [x3, 16]	// tmp240,
	str	x0, [x2, 16]	// tmp240, MEM[(int[6] *)_119]
// problem137.c:55:     func0((int[]){-6, -4, -4, -3, -100, 1}, 6, result);
	add	x1, sp, 40	// tmp241,,
	add	x0, sp, 144	// tmp242,,
	mov	x2, x1	//, tmp241
	mov	w1, 6	//,
	bl	func0		//
// problem137.c:56:     assert(issame(result, (int[]){-3, 1}));
	mov	w0, -3	// tmp243,
	str	w0, [sp, 48]	// tmp243, D.4317[0]
	mov	w0, 1	// tmp244,
	str	w0, [sp, 52]	// tmp244, D.4317[1]
	add	x1, sp, 48	// tmp245,,
	add	x0, sp, 40	// tmp246,,
	bl	issame		//
	cmp	w0, 0	// _11,
	bne	.L23		//,
// problem137.c:56:     assert(issame(result, (int[]){-3, 1}));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp247,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp247,
	mov	w2, 56	//,
	adrp	x0, .LC8	// tmp248,
	add	x1, x0, :lo12:.LC8	//, tmp248,
	adrp	x0, .LC15	// tmp249,
	add	x0, x0, :lo12:.LC15	//, tmp249,
	bl	__assert_fail		//
.L23:
// problem137.c:58:     return 0;
	mov	w0, 0	// _93,
// problem137.c:59: }
	mov	w1, w0	// <retval>, _93
	adrp	x0, :got:__stack_chk_guard	// tmp252,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp251, tmp252,
	ldr	x3, [sp, 296]	// tmp254, D.4384
	ldr	x2, [x0]	// tmp255,
	subs	x3, x3, x2	// tmp254, tmp255
	mov	x2, 0	// tmp255
	beq	.L25		//,
// problem137.c:59: }
	bl	__stack_chk_fail		//
.L25:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
