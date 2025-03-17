	.arch armv8-a
	.file	"problem153.c"
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
// problem153.c:17:         if (a[i] != b[i]) return 0;
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
	sub	sp, sp, #336	//,,
	.cfi_def_cfa_offset 336
	stp	x29, x30, [sp, 320]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 320	//,,
// problem153.c:22: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp100,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp100,
	ldr	x1, [x0]	// tmp233,
	str	x1, [sp, 312]	// tmp233, D.5672
	mov	x1, 0	// tmp233
// problem153.c:25:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	adrp	x0, .LC0	// tmp102,
	add	x0, x0, :lo12:.LC0	// tmp101, tmp102,
	add	x2, sp, 96	// tmp103,,
	mov	x3, x0	// tmp104, tmp101
	ldp	x0, x1, [x3]	// tmp105,
	stp	x0, x1, [x2]	// tmp105, D.5608
	ldr	x0, [x3, 16]	// tmp106,
	str	x0, [x2, 16]	// tmp106, D.5608
// problem153.c:25:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	// tmp107, tmp108,
	add	x2, sp, 120	// tmp109,,
	mov	x3, x0	// tmp110, tmp107
	ldp	x0, x1, [x3]	// tmp111,
	stp	x0, x1, [x2]	// tmp111, D.5609
	ldr	x0, [x3, 16]	// tmp112,
	str	x0, [x2, 16]	// tmp112, D.5609
// problem153.c:25:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	add	x2, sp, 72	// tmp113,,
	add	x1, sp, 120	// tmp114,,
	add	x0, sp, 96	// tmp115,,
	mov	w3, 6	//,
	bl	func0		//
// problem153.c:26:     assert(issame(result, (int[]){0,0,0,0,3,3}, 6));
	adrp	x0, .LC2	// tmp117,
	add	x0, x0, :lo12:.LC2	// tmp116, tmp117,
	add	x2, sp, 288	// tmp118,,
	mov	x3, x0	// tmp119, tmp116
	ldp	x0, x1, [x3]	// tmp120,
	stp	x0, x1, [x2]	// tmp120, MEM[(int[6] *)_80]
	ldr	x0, [x3, 16]	// tmp121,
	str	x0, [x2, 16]	// tmp121, MEM[(int[6] *)_80]
	add	x1, sp, 288	// tmp122,,
	add	x0, sp, 72	// tmp123,,
	mov	w2, 6	//,
	bl	issame		//
// problem153.c:26:     assert(issame(result, (int[]){0,0,0,0,3,3}, 6));
	cmp	w0, 0	// _1,
	bne	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp124,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp124,
	mov	w2, 26	//,
	adrp	x0, .LC9	// tmp125,
	add	x1, x0, :lo12:.LC9	//, tmp125,
	adrp	x0, .LC10	// tmp126,
	add	x0, x0, :lo12:.LC10	//, tmp126,
	bl	__assert_fail		//
.L10:
// problem153.c:28:     func0((int[]){0,5,0,0,0,4}, (int[]){4,1,1,0,0,-2}, result, 6);
	adrp	x0, .LC3	// tmp128,
	add	x0, x0, :lo12:.LC3	// tmp127, tmp128,
	add	x2, sp, 144	// tmp129,,
	mov	x3, x0	// tmp130, tmp127
	ldp	x0, x1, [x3]	// tmp131,
	stp	x0, x1, [x2]	// tmp131, D.5613
	ldr	x0, [x3, 16]	// tmp132,
	str	x0, [x2, 16]	// tmp132, D.5613
// problem153.c:28:     func0((int[]){0,5,0,0,0,4}, (int[]){4,1,1,0,0,-2}, result, 6);
	adrp	x0, .LC4	// tmp134,
	add	x0, x0, :lo12:.LC4	// tmp133, tmp134,
	add	x2, sp, 168	// tmp135,,
	mov	x3, x0	// tmp136, tmp133
	ldp	x0, x1, [x3]	// tmp137,
	stp	x0, x1, [x2]	// tmp137, D.5614
	ldr	x0, [x3, 16]	// tmp138,
	str	x0, [x2, 16]	// tmp138, D.5614
// problem153.c:28:     func0((int[]){0,5,0,0,0,4}, (int[]){4,1,1,0,0,-2}, result, 6);
	add	x2, sp, 72	// tmp139,,
	add	x1, sp, 168	// tmp140,,
	add	x0, sp, 144	// tmp141,,
	mov	w3, 6	//,
	bl	func0		//
// problem153.c:29:     assert(issame(result, (int[]){4,4,1,0,0,6}, 6));
	adrp	x0, .LC5	// tmp143,
	add	x0, x0, :lo12:.LC5	// tmp142, tmp143,
	add	x2, sp, 288	// tmp144,,
	mov	x3, x0	// tmp145, tmp142
	ldp	x0, x1, [x3]	// tmp146,
	stp	x0, x1, [x2]	// tmp146, MEM[(int[6] *)_80]
	ldr	x0, [x3, 16]	// tmp147,
	str	x0, [x2, 16]	// tmp147, MEM[(int[6] *)_80]
	add	x1, sp, 288	// tmp148,,
	add	x0, sp, 72	// tmp149,,
	mov	w2, 6	//,
	bl	issame		//
// problem153.c:29:     assert(issame(result, (int[]){4,4,1,0,0,6}, 6));
	cmp	w0, 0	// _2,
	bne	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp150,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp150,
	mov	w2, 29	//,
	adrp	x0, .LC9	// tmp151,
	add	x1, x0, :lo12:.LC9	//, tmp151,
	adrp	x0, .LC11	// tmp152,
	add	x0, x0, :lo12:.LC11	//, tmp152,
	bl	__assert_fail		//
.L11:
// problem153.c:31:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	adrp	x0, .LC0	// tmp154,
	add	x0, x0, :lo12:.LC0	// tmp153, tmp154,
	add	x2, sp, 192	// tmp155,,
	mov	x3, x0	// tmp156, tmp153
	ldp	x0, x1, [x3]	// tmp157,
	stp	x0, x1, [x2]	// tmp157, D.5617
	ldr	x0, [x3, 16]	// tmp158,
	str	x0, [x2, 16]	// tmp158, D.5617
// problem153.c:31:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	adrp	x0, .LC1	// tmp160,
	add	x0, x0, :lo12:.LC1	// tmp159, tmp160,
	add	x2, sp, 216	// tmp161,,
	mov	x3, x0	// tmp162, tmp159
	ldp	x0, x1, [x3]	// tmp163,
	stp	x0, x1, [x2]	// tmp163, D.5618
	ldr	x0, [x3, 16]	// tmp164,
	str	x0, [x2, 16]	// tmp164, D.5618
// problem153.c:31:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	add	x2, sp, 72	// tmp165,,
	add	x1, sp, 216	// tmp166,,
	add	x0, sp, 192	// tmp167,,
	mov	w3, 6	//,
	bl	func0		//
// problem153.c:32:     assert(issame(result, (int[]){0,0,0,0,3,3}, 6));
	adrp	x0, .LC2	// tmp169,
	add	x0, x0, :lo12:.LC2	// tmp168, tmp169,
	add	x2, sp, 288	// tmp170,,
	mov	x3, x0	// tmp171, tmp168
	ldp	x0, x1, [x3]	// tmp172,
	stp	x0, x1, [x2]	// tmp172, MEM[(int[6] *)_80]
	ldr	x0, [x3, 16]	// tmp173,
	str	x0, [x2, 16]	// tmp173, MEM[(int[6] *)_80]
	add	x1, sp, 288	// tmp174,,
	add	x0, sp, 72	// tmp175,,
	mov	w2, 6	//,
	bl	issame		//
// problem153.c:32:     assert(issame(result, (int[]){0,0,0,0,3,3}, 6));
	cmp	w0, 0	// _3,
	bne	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp176,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp176,
	mov	w2, 32	//,
	adrp	x0, .LC9	// tmp177,
	add	x1, x0, :lo12:.LC9	//, tmp177,
	adrp	x0, .LC10	// tmp178,
	add	x0, x0, :lo12:.LC10	//, tmp178,
	bl	__assert_fail		//
.L12:
// problem153.c:34:     func0((int[]){0,0,0,0,0,0}, (int[]){0,0,0,0,0,0}, result, 6);
	stp	xzr, xzr, [sp, 240]	// D.5621
	str	xzr, [sp, 256]	//, D.5621
// problem153.c:34:     func0((int[]){0,0,0,0,0,0}, (int[]){0,0,0,0,0,0}, result, 6);
	add	x0, sp, 512	// tmp239,,
	stp	xzr, xzr, [x0, -248]	// D.5622
	str	xzr, [sp, 280]	//, D.5622
// problem153.c:34:     func0((int[]){0,0,0,0,0,0}, (int[]){0,0,0,0,0,0}, result, 6);
	add	x2, sp, 72	// tmp179,,
	add	x1, sp, 264	// tmp180,,
	add	x0, sp, 240	// tmp181,,
	mov	w3, 6	//,
	bl	func0		//
// problem153.c:35:     assert(issame(result, (int[]){0,0,0,0,0,0}, 6));
	stp	xzr, xzr, [sp, 288]	// MEM[(int[6] *)_80]
	str	xzr, [sp, 304]	//, MEM[(int[6] *)_80]
	add	x1, sp, 288	// tmp182,,
	add	x0, sp, 72	// tmp183,,
	mov	w2, 6	//,
	bl	issame		//
// problem153.c:35:     assert(issame(result, (int[]){0,0,0,0,0,0}, 6));
	cmp	w0, 0	// _4,
	bne	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp184,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp184,
	mov	w2, 35	//,
	adrp	x0, .LC9	// tmp185,
	add	x1, x0, :lo12:.LC9	//, tmp185,
	adrp	x0, .LC12	// tmp186,
	add	x0, x0, :lo12:.LC12	//, tmp186,
	bl	__assert_fail		//
.L13:
// problem153.c:37:     func0((int[]){1,2,3}, (int[]){-1,-2,-3}, result, 3);
	adrp	x0, .LC6	// tmp188,
	add	x1, x0, :lo12:.LC6	// tmp187, tmp188,
	add	x0, sp, 8	// tmp189,,
	ldr	x2, [x1]	// tmp191,
	str	x2, [x0]	// tmp191, D.5625
	ldr	w1, [x1, 8]	// tmp192,
	str	w1, [x0, 8]	// tmp192, D.5625
// problem153.c:37:     func0((int[]){1,2,3}, (int[]){-1,-2,-3}, result, 3);
	adrp	x0, .LC7	// tmp194,
	add	x1, x0, :lo12:.LC7	// tmp193, tmp194,
	add	x0, sp, 24	// tmp195,,
	ldr	x2, [x1]	// tmp197,
	str	x2, [x0]	// tmp197, D.5626
	ldr	w1, [x1, 8]	// tmp198,
	str	w1, [x0, 8]	// tmp198, D.5626
// problem153.c:37:     func0((int[]){1,2,3}, (int[]){-1,-2,-3}, result, 3);
	add	x2, sp, 72	// tmp199,,
	add	x1, sp, 24	// tmp200,,
	add	x0, sp, 8	// tmp201,,
	mov	w3, 3	//,
	bl	func0		//
// problem153.c:38:     assert(issame(result, (int[]){2,4,6}, 3));
	adrp	x0, .LC8	// tmp203,
	add	x1, x0, :lo12:.LC8	// tmp202, tmp203,
	add	x0, sp, 288	// tmp204,,
	ldr	x2, [x1]	// tmp206,
	str	x2, [x0]	// tmp206, MEM[(int[3] *)_80]
	ldr	w1, [x1, 8]	// tmp207,
	str	w1, [x0, 8]	// tmp207, MEM[(int[3] *)_80]
	add	x1, sp, 288	// tmp208,,
	add	x0, sp, 72	// tmp209,,
	mov	w2, 3	//,
	bl	issame		//
// problem153.c:38:     assert(issame(result, (int[]){2,4,6}, 3));
	cmp	w0, 0	// _5,
	bne	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp210,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp210,
	mov	w2, 38	//,
	adrp	x0, .LC9	// tmp211,
	add	x1, x0, :lo12:.LC9	//, tmp211,
	adrp	x0, .LC13	// tmp212,
	add	x0, x0, :lo12:.LC13	//, tmp212,
	bl	__assert_fail		//
.L14:
// problem153.c:40:     func0((int[]){1,2,3,5}, (int[]){-1,2,3,4}, result, 4);
	mov	w0, 1	// tmp213,
	str	w0, [sp, 40]	// tmp213, D.5629[0]
	mov	w0, 2	// tmp214,
	str	w0, [sp, 44]	// tmp214, D.5629[1]
	mov	w0, 3	// tmp215,
	str	w0, [sp, 48]	// tmp215, D.5629[2]
	mov	w0, 5	// tmp216,
	str	w0, [sp, 52]	// tmp216, D.5629[3]
// problem153.c:40:     func0((int[]){1,2,3,5}, (int[]){-1,2,3,4}, result, 4);
	mov	w0, -1	// tmp217,
	str	w0, [sp, 56]	// tmp217, D.5630[0]
	mov	w0, 2	// tmp218,
	str	w0, [sp, 60]	// tmp218, D.5630[1]
	mov	w0, 3	// tmp219,
	str	w0, [sp, 64]	// tmp219, D.5630[2]
	mov	w0, 4	// tmp220,
	str	w0, [sp, 68]	// tmp220, D.5630[3]
// problem153.c:40:     func0((int[]){1,2,3,5}, (int[]){-1,2,3,4}, result, 4);
	add	x2, sp, 72	// tmp221,,
	add	x1, sp, 56	// tmp222,,
	add	x0, sp, 40	// tmp223,,
	mov	w3, 4	//,
	bl	func0		//
// problem153.c:41:     assert(issame(result, (int[]){2,0,0,1}, 4));
	mov	w0, 2	// tmp224,
	str	w0, [sp, 288]	// tmp224, MEM[(int[4] *)_80][0]
	str	wzr, [sp, 292]	//, MEM[(int[4] *)_80][1]
	str	wzr, [sp, 296]	//, MEM[(int[4] *)_80][2]
	mov	w0, 1	// tmp225,
	str	w0, [sp, 300]	// tmp225, MEM[(int[4] *)_80][3]
	add	x1, sp, 288	// tmp226,,
	add	x0, sp, 72	// tmp227,,
	mov	w2, 4	//,
	bl	issame		//
// problem153.c:41:     assert(issame(result, (int[]){2,0,0,1}, 4));
	cmp	w0, 0	// _6,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp228,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp228,
	mov	w2, 41	//,
	adrp	x0, .LC9	// tmp229,
	add	x1, x0, :lo12:.LC9	//, tmp229,
	adrp	x0, .LC14	// tmp230,
	add	x0, x0, :lo12:.LC14	//, tmp230,
	bl	__assert_fail		//
.L15:
// problem153.c:43:     return 0;
	mov	w0, 0	// _59,
// problem153.c:44: }
	mov	w1, w0	// <retval>, _59
	adrp	x0, :got:__stack_chk_guard	// tmp232,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp232,
	ldr	x3, [sp, 312]	// tmp234, D.5672
	ldr	x2, [x0]	// tmp235,
	subs	x3, x3, x2	// tmp234, tmp235
	mov	x2, 0	// tmp235
	beq	.L17		//,
	bl	__stack_chk_fail		//
.L17:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 320]	//,,
	add	sp, sp, 336	//,,
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
