	.arch armv8-a
	.file	"problem153.c"
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
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// game, game
	str	x1, [sp, 16]	// guess, guess
	str	x2, [sp, 8]	// out, out
	str	w3, [sp, 4]	// length, length
// problem153.c:5:     for (int i = 0; i < length; i++) {
	str	wzr, [sp, 44]	//, i
// problem153.c:5:     for (int i = 0; i < length; i++) {
	b	.L2		//
.L3:
// problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp105, game
	add	x0, x1, x0	// _3, tmp105, _2
	ldr	w1, [x0]	// _4, *_3
// problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 16]	// tmp106, guess
	add	x0, x2, x0	// _7, tmp106, _6
	ldr	w0, [x0]	// _8, *_7
// problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	sub	w0, w1, w0	// _9, _4, _8
// problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	ldrsw	x1, [sp, 44]	// _10, i
	lsl	x1, x1, 2	// _11, _10,
	ldr	x2, [sp, 8]	// tmp107, out
	add	x1, x2, x1	// _12, tmp107, _11
// problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	cmp	w0, 0	// _9,
	csneg	w0, w0, w0, ge	// _13, _9, _9,
// problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	str	w0, [x1]	// _13, *_12
// problem153.c:5:     for (int i = 0; i < length; i++) {
	ldr	w0, [sp, 44]	// tmp109, i
	add	w0, w0, 1	// tmp108, tmp109,
	str	w0, [sp, 44]	// tmp108, i
.L2:
// problem153.c:5:     for (int i = 0; i < length; i++) {
	ldr	w1, [sp, 44]	// tmp110, i
	ldr	w0, [sp, 4]	// tmp111, length
	cmp	w1, w0	// tmp110, tmp111
	blt	.L3		//,
// problem153.c:8: }
	nop	
	nop	
	add	sp, sp, 48	//,,
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
	str	w2, [sp, 12]	// length, length
// problem153.c:16:     for (int i = 0; i < length; i++) {
	str	wzr, [sp, 44]	//, i
// problem153.c:16:     for (int i = 0; i < length; i++) {
	b	.L5		//
.L8:
// problem153.c:17:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp102, a
	add	x0, x1, x0	// _3, tmp102, _2
	ldr	w1, [x0]	// _4, *_3
// problem153.c:17:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 16]	// tmp103, b
	add	x0, x2, x0	// _7, tmp103, _6
	ldr	w0, [x0]	// _8, *_7
// problem153.c:17:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L6		//,
// problem153.c:17:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
	b	.L7		//
.L6:
// problem153.c:16:     for (int i = 0; i < length; i++) {
	ldr	w0, [sp, 44]	// tmp105, i
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [sp, 44]	// tmp104, i
.L5:
// problem153.c:16:     for (int i = 0; i < length; i++) {
	ldr	w1, [sp, 44]	// tmp106, i
	ldr	w0, [sp, 12]	// tmp107, length
	cmp	w1, w0	// tmp106, tmp107
	blt	.L8		//,
// problem153.c:19:     return 1;
	mov	w0, 1	// _10,
.L7:
// problem153.c:20: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC9:
	.string	"problem153.c"
	.align	3
.LC10:
	.string	"issame(result, (int[]){0,0,0,0,3,3}, 6)"
	.align	3
.LC11:
	.string	"issame(result, (int[]){4,4,1,0,0,6}, 6)"
	.align	3
.LC12:
	.string	"issame(result, (int[]){0,0,0,0,0,0}, 6)"
	.align	3
.LC13:
	.string	"issame(result, (int[]){2,4,6}, 3)"
	.align	3
.LC14:
	.string	"issame(result, (int[]){2,0,0,1}, 4)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -336]!	//,,,
	.cfi_def_cfa_offset 336
	.cfi_offset 29, -336
	.cfi_offset 30, -328
	mov	x29, sp	//,
// problem153.c:22: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp100, tmp101,
	ldr	x1, [x0]	// tmp235,
	str	x1, [sp, 328]	// tmp235, D.5056
	mov	x1, 0	// tmp235
// problem153.c:25:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	adrp	x0, .LC0	// tmp103,
	add	x0, x0, :lo12:.LC0	// tmp102, tmp103,
	add	x2, sp, 112	// tmp104,,
	mov	x3, x0	// tmp105, tmp102
	ldp	x0, x1, [x3]	// tmp106,
	stp	x0, x1, [x2]	// tmp106, D.4992
	ldr	x0, [x3, 16]	// tmp107,
	str	x0, [x2, 16]	// tmp107, D.4992
// problem153.c:25:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	adrp	x0, .LC1	// tmp109,
	add	x0, x0, :lo12:.LC1	// tmp108, tmp109,
	add	x2, sp, 136	// tmp110,,
	mov	x3, x0	// tmp111, tmp108
	ldp	x0, x1, [x3]	// tmp112,
	stp	x0, x1, [x2]	// tmp112, D.4993
	ldr	x0, [x3, 16]	// tmp113,
	str	x0, [x2, 16]	// tmp113, D.4993
// problem153.c:25:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	add	x2, sp, 88	// tmp114,,
	add	x1, sp, 136	// tmp115,,
	add	x0, sp, 112	// tmp116,,
	mov	w3, 6	//,
	bl	func0		//
// problem153.c:26:     assert(issame(result, (int[]){0,0,0,0,3,3}, 6));
	adrp	x0, .LC2	// tmp118,
	add	x0, x0, :lo12:.LC2	// tmp117, tmp118,
	add	x2, sp, 304	// tmp119,,
	mov	x3, x0	// tmp120, tmp117
	ldp	x0, x1, [x3]	// tmp121,
	stp	x0, x1, [x2]	// tmp121, MEM[(int[6] *)_80]
	ldr	x0, [x3, 16]	// tmp122,
	str	x0, [x2, 16]	// tmp122, MEM[(int[6] *)_80]
	add	x1, sp, 304	// tmp123,,
	add	x0, sp, 88	// tmp124,,
	mov	w2, 6	//,
	bl	issame		//
	cmp	w0, 0	// _1,
	bne	.L10		//,
// problem153.c:26:     assert(issame(result, (int[]){0,0,0,0,3,3}, 6));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp125,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp125,
	mov	w2, 26	//,
	adrp	x0, .LC9	// tmp126,
	add	x1, x0, :lo12:.LC9	//, tmp126,
	adrp	x0, .LC10	// tmp127,
	add	x0, x0, :lo12:.LC10	//, tmp127,
	bl	__assert_fail		//
.L10:
// problem153.c:28:     func0((int[]){0,5,0,0,0,4}, (int[]){4,1,1,0,0,-2}, result, 6);
	adrp	x0, .LC3	// tmp129,
	add	x0, x0, :lo12:.LC3	// tmp128, tmp129,
	add	x2, sp, 160	// tmp130,,
	mov	x3, x0	// tmp131, tmp128
	ldp	x0, x1, [x3]	// tmp132,
	stp	x0, x1, [x2]	// tmp132, D.4997
	ldr	x0, [x3, 16]	// tmp133,
	str	x0, [x2, 16]	// tmp133, D.4997
// problem153.c:28:     func0((int[]){0,5,0,0,0,4}, (int[]){4,1,1,0,0,-2}, result, 6);
	adrp	x0, .LC4	// tmp135,
	add	x0, x0, :lo12:.LC4	// tmp134, tmp135,
	add	x2, sp, 184	// tmp136,,
	mov	x3, x0	// tmp137, tmp134
	ldp	x0, x1, [x3]	// tmp138,
	stp	x0, x1, [x2]	// tmp138, D.4998
	ldr	x0, [x3, 16]	// tmp139,
	str	x0, [x2, 16]	// tmp139, D.4998
// problem153.c:28:     func0((int[]){0,5,0,0,0,4}, (int[]){4,1,1,0,0,-2}, result, 6);
	add	x2, sp, 88	// tmp140,,
	add	x1, sp, 184	// tmp141,,
	add	x0, sp, 160	// tmp142,,
	mov	w3, 6	//,
	bl	func0		//
// problem153.c:29:     assert(issame(result, (int[]){4,4,1,0,0,6}, 6));
	adrp	x0, .LC5	// tmp144,
	add	x0, x0, :lo12:.LC5	// tmp143, tmp144,
	add	x2, sp, 304	// tmp145,,
	mov	x3, x0	// tmp146, tmp143
	ldp	x0, x1, [x3]	// tmp147,
	stp	x0, x1, [x2]	// tmp147, MEM[(int[6] *)_80]
	ldr	x0, [x3, 16]	// tmp148,
	str	x0, [x2, 16]	// tmp148, MEM[(int[6] *)_80]
	add	x1, sp, 304	// tmp149,,
	add	x0, sp, 88	// tmp150,,
	mov	w2, 6	//,
	bl	issame		//
	cmp	w0, 0	// _2,
	bne	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp151,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp151,
	mov	w2, 29	//,
	adrp	x0, .LC9	// tmp152,
	add	x1, x0, :lo12:.LC9	//, tmp152,
	adrp	x0, .LC11	// tmp153,
	add	x0, x0, :lo12:.LC11	//, tmp153,
	bl	__assert_fail		//
.L11:
// problem153.c:31:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	adrp	x0, .LC0	// tmp155,
	add	x0, x0, :lo12:.LC0	// tmp154, tmp155,
	add	x2, sp, 208	// tmp156,,
	mov	x3, x0	// tmp157, tmp154
	ldp	x0, x1, [x3]	// tmp158,
	stp	x0, x1, [x2]	// tmp158, D.5001
	ldr	x0, [x3, 16]	// tmp159,
	str	x0, [x2, 16]	// tmp159, D.5001
// problem153.c:31:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	adrp	x0, .LC1	// tmp161,
	add	x0, x0, :lo12:.LC1	// tmp160, tmp161,
	add	x2, sp, 232	// tmp162,,
	mov	x3, x0	// tmp163, tmp160
	ldp	x0, x1, [x3]	// tmp164,
	stp	x0, x1, [x2]	// tmp164, D.5002
	ldr	x0, [x3, 16]	// tmp165,
	str	x0, [x2, 16]	// tmp165, D.5002
// problem153.c:31:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	add	x2, sp, 88	// tmp166,,
	add	x1, sp, 232	// tmp167,,
	add	x0, sp, 208	// tmp168,,
	mov	w3, 6	//,
	bl	func0		//
// problem153.c:32:     assert(issame(result, (int[]){0,0,0,0,3,3}, 6));
	adrp	x0, .LC2	// tmp170,
	add	x0, x0, :lo12:.LC2	// tmp169, tmp170,
	add	x2, sp, 304	// tmp171,,
	mov	x3, x0	// tmp172, tmp169
	ldp	x0, x1, [x3]	// tmp173,
	stp	x0, x1, [x2]	// tmp173, MEM[(int[6] *)_80]
	ldr	x0, [x3, 16]	// tmp174,
	str	x0, [x2, 16]	// tmp174, MEM[(int[6] *)_80]
	add	x1, sp, 304	// tmp175,,
	add	x0, sp, 88	// tmp176,,
	mov	w2, 6	//,
	bl	issame		//
	cmp	w0, 0	// _3,
	bne	.L12		//,
// problem153.c:32:     assert(issame(result, (int[]){0,0,0,0,3,3}, 6));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp177,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp177,
	mov	w2, 32	//,
	adrp	x0, .LC9	// tmp178,
	add	x1, x0, :lo12:.LC9	//, tmp178,
	adrp	x0, .LC10	// tmp179,
	add	x0, x0, :lo12:.LC10	//, tmp179,
	bl	__assert_fail		//
.L12:
// problem153.c:34:     func0((int[]){0,0,0,0,0,0}, (int[]){0,0,0,0,0,0}, result, 6);
	stp	xzr, xzr, [sp, 256]	// D.5005
	str	xzr, [sp, 272]	//, D.5005
// problem153.c:34:     func0((int[]){0,0,0,0,0,0}, (int[]){0,0,0,0,0,0}, result, 6);
	add	x0, sp, 512	// tmp241,,
	stp	xzr, xzr, [x0, -232]	// D.5006
	str	xzr, [sp, 296]	//, D.5006
// problem153.c:34:     func0((int[]){0,0,0,0,0,0}, (int[]){0,0,0,0,0,0}, result, 6);
	add	x2, sp, 88	// tmp180,,
	add	x1, sp, 280	// tmp181,,
	add	x0, sp, 256	// tmp182,,
	mov	w3, 6	//,
	bl	func0		//
// problem153.c:35:     assert(issame(result, (int[]){0,0,0,0,0,0}, 6));
	stp	xzr, xzr, [sp, 304]	// MEM[(int[6] *)_80]
	str	xzr, [sp, 320]	//, MEM[(int[6] *)_80]
	add	x1, sp, 304	// tmp183,,
	add	x0, sp, 88	// tmp184,,
	mov	w2, 6	//,
	bl	issame		//
	cmp	w0, 0	// _4,
	bne	.L13		//,
// problem153.c:35:     assert(issame(result, (int[]){0,0,0,0,0,0}, 6));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp185,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp185,
	mov	w2, 35	//,
	adrp	x0, .LC9	// tmp186,
	add	x1, x0, :lo12:.LC9	//, tmp186,
	adrp	x0, .LC12	// tmp187,
	add	x0, x0, :lo12:.LC12	//, tmp187,
	bl	__assert_fail		//
.L13:
// problem153.c:37:     func0((int[]){1,2,3}, (int[]){-1,-2,-3}, result, 3);
	adrp	x0, .LC6	// tmp189,
	add	x1, x0, :lo12:.LC6	// tmp188, tmp189,
	add	x0, sp, 24	// tmp190,,
	ldr	x2, [x1]	// tmp192,
	str	x2, [x0]	// tmp192, D.5009
	ldr	w1, [x1, 8]	// tmp193,
	str	w1, [x0, 8]	// tmp193, D.5009
// problem153.c:37:     func0((int[]){1,2,3}, (int[]){-1,-2,-3}, result, 3);
	adrp	x0, .LC7	// tmp195,
	add	x1, x0, :lo12:.LC7	// tmp194, tmp195,
	add	x0, sp, 40	// tmp196,,
	ldr	x2, [x1]	// tmp198,
	str	x2, [x0]	// tmp198, D.5010
	ldr	w1, [x1, 8]	// tmp199,
	str	w1, [x0, 8]	// tmp199, D.5010
// problem153.c:37:     func0((int[]){1,2,3}, (int[]){-1,-2,-3}, result, 3);
	add	x2, sp, 88	// tmp200,,
	add	x1, sp, 40	// tmp201,,
	add	x0, sp, 24	// tmp202,,
	mov	w3, 3	//,
	bl	func0		//
// problem153.c:38:     assert(issame(result, (int[]){2,4,6}, 3));
	adrp	x0, .LC8	// tmp204,
	add	x1, x0, :lo12:.LC8	// tmp203, tmp204,
	add	x0, sp, 304	// tmp205,,
	ldr	x2, [x1]	// tmp207,
	str	x2, [x0]	// tmp207, MEM[(int[3] *)_80]
	ldr	w1, [x1, 8]	// tmp208,
	str	w1, [x0, 8]	// tmp208, MEM[(int[3] *)_80]
	add	x1, sp, 304	// tmp209,,
	add	x0, sp, 88	// tmp210,,
	mov	w2, 3	//,
	bl	issame		//
	cmp	w0, 0	// _5,
	bne	.L14		//,
// problem153.c:38:     assert(issame(result, (int[]){2,4,6}, 3));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp211,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp211,
	mov	w2, 38	//,
	adrp	x0, .LC9	// tmp212,
	add	x1, x0, :lo12:.LC9	//, tmp212,
	adrp	x0, .LC13	// tmp213,
	add	x0, x0, :lo12:.LC13	//, tmp213,
	bl	__assert_fail		//
.L14:
// problem153.c:40:     func0((int[]){1,2,3,5}, (int[]){-1,2,3,4}, result, 4);
	mov	w0, 1	// tmp214,
	str	w0, [sp, 56]	// tmp214, D.5013[0]
	mov	w0, 2	// tmp215,
	str	w0, [sp, 60]	// tmp215, D.5013[1]
	mov	w0, 3	// tmp216,
	str	w0, [sp, 64]	// tmp216, D.5013[2]
	mov	w0, 5	// tmp217,
	str	w0, [sp, 68]	// tmp217, D.5013[3]
// problem153.c:40:     func0((int[]){1,2,3,5}, (int[]){-1,2,3,4}, result, 4);
	mov	w0, -1	// tmp218,
	str	w0, [sp, 72]	// tmp218, D.5014[0]
	mov	w0, 2	// tmp219,
	str	w0, [sp, 76]	// tmp219, D.5014[1]
	mov	w0, 3	// tmp220,
	str	w0, [sp, 80]	// tmp220, D.5014[2]
	mov	w0, 4	// tmp221,
	str	w0, [sp, 84]	// tmp221, D.5014[3]
// problem153.c:40:     func0((int[]){1,2,3,5}, (int[]){-1,2,3,4}, result, 4);
	add	x2, sp, 88	// tmp222,,
	add	x1, sp, 72	// tmp223,,
	add	x0, sp, 56	// tmp224,,
	mov	w3, 4	//,
	bl	func0		//
// problem153.c:41:     assert(issame(result, (int[]){2,0,0,1}, 4));
	mov	w0, 2	// tmp225,
	str	w0, [sp, 304]	// tmp225, MEM[(int[4] *)_80][0]
	str	wzr, [sp, 308]	//, MEM[(int[4] *)_80][1]
	str	wzr, [sp, 312]	//, MEM[(int[4] *)_80][2]
	mov	w0, 1	// tmp226,
	str	w0, [sp, 316]	// tmp226, MEM[(int[4] *)_80][3]
	add	x1, sp, 304	// tmp227,,
	add	x0, sp, 88	// tmp228,,
	mov	w2, 4	//,
	bl	issame		//
	cmp	w0, 0	// _6,
	bne	.L15		//,
// problem153.c:41:     assert(issame(result, (int[]){2,0,0,1}, 4));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp229,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp229,
	mov	w2, 41	//,
	adrp	x0, .LC9	// tmp230,
	add	x1, x0, :lo12:.LC9	//, tmp230,
	adrp	x0, .LC14	// tmp231,
	add	x0, x0, :lo12:.LC14	//, tmp231,
	bl	__assert_fail		//
.L15:
// problem153.c:43:     return 0;
	mov	w0, 0	// _59,
// problem153.c:44: }
	mov	w1, w0	// <retval>, _59
	adrp	x0, :got:__stack_chk_guard	// tmp234,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp233, tmp234,
	ldr	x3, [sp, 328]	// tmp236, D.5056
	ldr	x2, [x0]	// tmp237,
	subs	x3, x3, x2	// tmp236, tmp237
	mov	x2, 0	// tmp237
	beq	.L17		//,
// problem153.c:44: }
	bl	__stack_chk_fail		//
.L17:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 336	//,,,
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
	.word	2
	.word	3
	.word	4
	.word	5
	.word	1
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	2
	.word	-2
	.align	3
.LC2:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	3
	.word	3
	.align	3
.LC3:
	.word	0
	.word	5
	.word	0
	.word	0
	.word	0
	.word	4
	.align	3
.LC4:
	.word	4
	.word	1
	.word	1
	.word	0
	.word	0
	.word	-2
	.align	3
.LC5:
	.word	4
	.word	4
	.word	1
	.word	0
	.word	0
	.word	6
	.align	3
.LC6:
	.word	1
	.word	2
	.word	3
	.align	3
.LC7:
	.word	-1
	.word	-2
	.word	-3
	.align	3
.LC8:
	.word	2
	.word	4
	.word	6
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
