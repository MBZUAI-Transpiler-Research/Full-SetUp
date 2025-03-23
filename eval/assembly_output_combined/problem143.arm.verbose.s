	.arch armv8-a
	.file	"problem143.c"
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
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// lst, lst
	str	w1, [sp, 4]	// size, size
// problem143.c:4:     int sum = 0;
	str	wzr, [sp, 24]	//, sum
// problem143.c:5:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 28]	//, i
// problem143.c:5:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L6:
// problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	ldr	w2, [sp, 28]	// tmp124, i
	mov	w0, 21846	// tmp126,
	movk	w0, 0x5555, lsl 16	// tmp126,,
	smull	x0, w2, w0	// tmp125, tmp124, tmp126
	lsr	x1, x0, 32	// tmp127, tmp125,
	asr	w0, w2, 31	// tmp128, tmp124,
	sub	w1, w1, w0	// _1, tmp127, tmp128
	mov	w0, w1	// tmp129, _1
	lsl	w0, w0, 1	// tmp130, tmp129,
	add	w0, w0, w1	// tmp129, tmp129, _1
	sub	w1, w2, w0	// _1, tmp124, tmp129
// problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	cmp	w1, 0	// _1,
	bne	.L3		//,
// problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	ldrsw	x0, [sp, 28]	// _2, i
	lsl	x0, x0, 2	// _3, _2,
	ldr	x1, [sp, 8]	// tmp131, lst
	add	x0, x1, x0	// _4, tmp131, _3
	ldr	w1, [x0]	// _5, *_4
// problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	ldrsw	x0, [sp, 28]	// _6, i
	lsl	x0, x0, 2	// _7, _6,
	ldr	x2, [sp, 8]	// tmp132, lst
	add	x0, x2, x0	// _8, tmp132, _7
	ldr	w0, [x0]	// _9, *_8
// problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	mul	w0, w1, w0	// _10, _5, _9
// problem143.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	ldr	w1, [sp, 24]	// tmp134, sum
	add	w0, w1, w0	// tmp133, tmp134, _10
	str	w0, [sp, 24]	// tmp133, sum
	b	.L4		//
.L3:
// problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	ldr	w0, [sp, 28]	// i.0_11, i
	and	w0, w0, 3	// _12, i.0_11,
// problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	cmp	w0, 0	// _12,
	bne	.L5		//,
// problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	ldrsw	x0, [sp, 28]	// _13, i
	lsl	x0, x0, 2	// _14, _13,
	ldr	x1, [sp, 8]	// tmp135, lst
	add	x0, x1, x0	// _15, tmp135, _14
	ldr	w1, [x0]	// _16, *_15
// problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	ldrsw	x0, [sp, 28]	// _17, i
	lsl	x0, x0, 2	// _18, _17,
	ldr	x2, [sp, 8]	// tmp136, lst
	add	x0, x2, x0	// _19, tmp136, _18
	ldr	w0, [x0]	// _20, *_19
// problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	mul	w1, w1, w0	// _21, _16, _20
// problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	ldrsw	x0, [sp, 28]	// _22, i
	lsl	x0, x0, 2	// _23, _22,
	ldr	x2, [sp, 8]	// tmp137, lst
	add	x0, x2, x0	// _24, tmp137, _23
	ldr	w0, [x0]	// _25, *_24
// problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	mul	w0, w1, w0	// _26, _21, _25
// problem143.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	ldr	w1, [sp, 24]	// tmp139, sum
	add	w0, w1, w0	// tmp138, tmp139, _26
	str	w0, [sp, 24]	// tmp138, sum
	b	.L4		//
.L5:
// problem143.c:8:         else sum += lst[i];
	ldrsw	x0, [sp, 28]	// _27, i
	lsl	x0, x0, 2	// _28, _27,
	ldr	x1, [sp, 8]	// tmp140, lst
	add	x0, x1, x0	// _29, tmp140, _28
	ldr	w0, [x0]	// _30, *_29
// problem143.c:8:         else sum += lst[i];
	ldr	w1, [sp, 24]	// tmp142, sum
	add	w0, w1, w0	// tmp141, tmp142, _30
	str	w0, [sp, 24]	// tmp141, sum
.L4:
// problem143.c:5:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 28]	// tmp144, i
	add	w0, w0, 1	// tmp143, tmp144,
	str	w0, [sp, 28]	// tmp143, i
.L2:
// problem143.c:5:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 28]	// tmp145, i
	ldr	w0, [sp, 4]	// tmp146, size
	cmp	w1, w0	// tmp145, tmp146
	blt	.L6		//,
// problem143.c:10:     return sum;
	ldr	w0, [sp, 24]	// _37, sum
// problem143.c:11: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC9:
	.string	"problem143.c"
	.align	3
.LC10:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 6"
	.align	3
.LC11:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 14"
	.align	3
.LC12:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 0"
	.align	3
.LC13:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 9"
	.align	3
.LC14:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -3"
	.align	3
.LC15:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -126"
	.align	3
.LC16:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == 3030"
	.align	3
.LC17:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -14196"
	.align	3
.LC18:
	.string	"func0(lst, sizeof(lst)/sizeof(lst[0])) == -1448"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -112]!	//,,,
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp	//,
// problem143.c:17: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp106,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp105, tmp106,
	ldr	x1, [x0]	// tmp217,
	str	x1, [sp, 104]	// tmp217, D.4343
	mov	x1, 0	// tmp217
// problem143.c:19:         int lst[] = {1, 2, 3};
	adrp	x0, .LC0	// tmp108,
	add	x1, x0, :lo12:.LC0	// tmp107, tmp108,
	add	x0, sp, 24	// tmp109,,
	ldr	x2, [x1]	// tmp111,
	str	x2, [x0]	// tmp111, MEM[(int[3] *)_59]
	ldr	w1, [x1, 8]	// tmp112,
	str	w1, [x0, 8]	// tmp112, MEM[(int[3] *)_59]
// problem143.c:20:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 6);
	add	x0, sp, 24	// tmp113,,
	mov	w1, 3	//,
	bl	func0		//
	cmp	w0, 6	// _1,
	beq	.L9		//,
// problem143.c:20:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 6);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp114,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp114,
	mov	w2, 20	//,
	adrp	x0, .LC9	// tmp115,
	add	x1, x0, :lo12:.LC9	//, tmp115,
	adrp	x0, .LC10	// tmp116,
	add	x0, x0, :lo12:.LC10	//, tmp116,
	bl	__assert_fail		//
.L9:
// problem143.c:23:         int lst[] = {1, 4, 9};
	adrp	x0, .LC1	// tmp118,
	add	x1, x0, :lo12:.LC1	// tmp117, tmp118,
	add	x0, sp, 24	// tmp119,,
	ldr	x2, [x1]	// tmp121,
	str	x2, [x0]	// tmp121, MEM[(int[3] *)_59]
	ldr	w1, [x1, 8]	// tmp122,
	str	w1, [x0, 8]	// tmp122, MEM[(int[3] *)_59]
// problem143.c:24:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 14);
	add	x0, sp, 24	// tmp123,,
	mov	w1, 3	//,
	bl	func0		//
	cmp	w0, 14	// _2,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp124,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp124,
	mov	w2, 24	//,
	adrp	x0, .LC9	// tmp125,
	add	x1, x0, :lo12:.LC9	//, tmp125,
	adrp	x0, .LC11	// tmp126,
	add	x0, x0, :lo12:.LC11	//, tmp126,
	bl	__assert_fail		//
.L10:
// problem143.c:28:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	add	x0, sp, 24	// tmp127,,
	mov	w1, 0	//,
	bl	func0		//
	cmp	w0, 0	// _3,
	beq	.L11		//,
// problem143.c:28:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp128,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp128,
	mov	w2, 28	//,
	adrp	x0, .LC9	// tmp129,
	add	x1, x0, :lo12:.LC9	//, tmp129,
	adrp	x0, .LC12	// tmp130,
	add	x0, x0, :lo12:.LC12	//, tmp130,
	bl	__assert_fail		//
.L11:
// problem143.c:31:         int lst[] = {1, 1, 1, 1, 1, 1, 1, 1, 1};
	adrp	x0, .LC2	// tmp132,
	add	x1, x0, :lo12:.LC2	// tmp131, tmp132,
	add	x0, sp, 24	// tmp133,,
	ldp	q0, q1, [x1]	// tmp135, tmp136,
	stp	q0, q1, [x0]	// tmp135, tmp136, MEM[(int[9] *)_59]
	ldr	w1, [x1, 32]	// tmp137,
	str	w1, [x0, 32]	// tmp137, MEM[(int[9] *)_59]
// problem143.c:32:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 9);
	add	x0, sp, 24	// tmp138,,
	mov	w1, 9	//,
	bl	func0		//
	cmp	w0, 9	// _4,
	beq	.L12		//,
// problem143.c:32:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 9);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp139,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp139,
	mov	w2, 32	//,
	adrp	x0, .LC9	// tmp140,
	add	x1, x0, :lo12:.LC9	//, tmp140,
	adrp	x0, .LC13	// tmp141,
	add	x0, x0, :lo12:.LC13	//, tmp141,
	bl	__assert_fail		//
.L12:
// problem143.c:35:         int lst[] = {-1, -1, -1, -1, -1, -1, -1, -1, -1};
	adrp	x0, .LC3	// tmp143,
	add	x1, x0, :lo12:.LC3	// tmp142, tmp143,
	add	x0, sp, 24	// tmp144,,
	ldp	q0, q1, [x1]	// tmp146, tmp147,
	stp	q0, q1, [x0]	// tmp146, tmp147, MEM[(int[9] *)_59]
	ldr	w1, [x1, 32]	// tmp148,
	str	w1, [x0, 32]	// tmp148, MEM[(int[9] *)_59]
// problem143.c:36:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -3);
	add	x0, sp, 24	// tmp149,,
	mov	w1, 9	//,
	bl	func0		//
	cmn	w0, #3	// _5,
	beq	.L13		//,
// problem143.c:36:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -3);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp150,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp150,
	mov	w2, 36	//,
	adrp	x0, .LC9	// tmp151,
	add	x1, x0, :lo12:.LC9	//, tmp151,
	adrp	x0, .LC14	// tmp152,
	add	x0, x0, :lo12:.LC14	//, tmp152,
	bl	__assert_fail		//
.L13:
// problem143.c:39:         int lst[] = {0};
	str	wzr, [sp, 24]	//, MEM[(int[1] *)_59][0]
// problem143.c:40:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	add	x0, sp, 24	// tmp153,,
	mov	w1, 1	//,
	bl	func0		//
	cmp	w0, 0	// _6,
	beq	.L14		//,
// problem143.c:40:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp154,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp154,
	mov	w2, 40	//,
	adrp	x0, .LC9	// tmp155,
	add	x1, x0, :lo12:.LC9	//, tmp155,
	adrp	x0, .LC12	// tmp156,
	add	x0, x0, :lo12:.LC12	//, tmp156,
	bl	__assert_fail		//
.L14:
// problem143.c:43:         int lst[] = {-1, -5, 2, -1, -5};
	adrp	x0, .LC4	// tmp158,
	add	x0, x0, :lo12:.LC4	// tmp157, tmp158,
	add	x2, sp, 24	// tmp159,,
	mov	x3, x0	// tmp160, tmp157
	ldp	x0, x1, [x3]	// tmp161,
	stp	x0, x1, [x2]	// tmp161, MEM[(int[5] *)_59]
	ldr	w0, [x3, 16]	// tmp162,
	str	w0, [x2, 16]	// tmp162, MEM[(int[5] *)_59]
// problem143.c:44:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -126);
	add	x0, sp, 24	// tmp163,,
	mov	w1, 5	//,
	bl	func0		//
	cmn	w0, #126	// _7,
	beq	.L15		//,
// problem143.c:44:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -126);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp164,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp164,
	mov	w2, 44	//,
	adrp	x0, .LC9	// tmp165,
	add	x1, x0, :lo12:.LC9	//, tmp165,
	adrp	x0, .LC15	// tmp166,
	add	x0, x0, :lo12:.LC15	//, tmp166,
	bl	__assert_fail		//
.L15:
// problem143.c:47:         int lst[] = {-56, -99, 1, 0, -2};
	adrp	x0, .LC5	// tmp168,
	add	x0, x0, :lo12:.LC5	// tmp167, tmp168,
	add	x2, sp, 24	// tmp169,,
	mov	x3, x0	// tmp170, tmp167
	ldp	x0, x1, [x3]	// tmp171,
	stp	x0, x1, [x2]	// tmp171, MEM[(int[5] *)_59]
	ldr	w0, [x3, 16]	// tmp172,
	str	w0, [x2, 16]	// tmp172, MEM[(int[5] *)_59]
// problem143.c:48:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 3030);
	add	x0, sp, 24	// tmp173,,
	mov	w1, 5	//,
	bl	func0		//
	cmp	w0, 3030	// _8,
	beq	.L16		//,
// problem143.c:48:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 3030);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp174,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp174,
	mov	w2, 48	//,
	adrp	x0, .LC9	// tmp175,
	add	x1, x0, :lo12:.LC9	//, tmp175,
	adrp	x0, .LC16	// tmp176,
	add	x0, x0, :lo12:.LC16	//, tmp176,
	bl	__assert_fail		//
.L16:
// problem143.c:51:         int lst[] = {-1, 0, 0, 0, 0, 0, 0, 0, -1};
	adrp	x0, .LC6	// tmp178,
	add	x1, x0, :lo12:.LC6	// tmp177, tmp178,
	add	x0, sp, 24	// tmp179,,
	ldp	q0, q1, [x1]	// tmp181, tmp182,
	stp	q0, q1, [x0]	// tmp181, tmp182, MEM[(int[9] *)_59]
	ldr	w1, [x1, 32]	// tmp183,
	str	w1, [x0, 32]	// tmp183, MEM[(int[9] *)_59]
// problem143.c:52:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	add	x0, sp, 24	// tmp184,,
	mov	w1, 9	//,
	bl	func0		//
	cmp	w0, 0	// _9,
	beq	.L17		//,
// problem143.c:52:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp185,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp185,
	mov	w2, 52	//,
	adrp	x0, .LC9	// tmp186,
	add	x1, x0, :lo12:.LC9	//, tmp186,
	adrp	x0, .LC12	// tmp187,
	add	x0, x0, :lo12:.LC12	//, tmp187,
	bl	__assert_fail		//
.L17:
// problem143.c:55:         int lst[] = {-16, -9, -2, 36, 36, 26, -20, 25, -40, 20, -4, 12, -26, 35, 37};
	adrp	x0, .LC7	// tmp189,
	add	x1, x0, :lo12:.LC7	// tmp188, tmp189,
	add	x0, sp, 24	// tmp190,,
	ldp	q0, q1, [x1]	// tmp192, tmp193,
	stp	q0, q1, [x0]	// tmp192, tmp193, MEM[(int[15] *)_59]
	ldr	q0, [x1, 32]	// tmp194,
	str	q0, [x0, 32]	// tmp194, MEM[(int[15] *)_59]
	ldr	q0, [x1, 44]	// tmp195,
	str	q0, [x0, 44]	// tmp195, MEM[(int[15] *)_59]
// problem143.c:56:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -14196);
	add	x0, sp, 24	// tmp196,,
	mov	w1, 15	//,
	bl	func0		//
	mov	w1, w0	// _10,
	mov	w0, -14196	// tmp197,
	cmp	w1, w0	// _10, tmp197
	beq	.L18		//,
// problem143.c:56:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -14196);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp198,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp198,
	mov	w2, 56	//,
	adrp	x0, .LC9	// tmp199,
	add	x1, x0, :lo12:.LC9	//, tmp199,
	adrp	x0, .LC17	// tmp200,
	add	x0, x0, :lo12:.LC17	//, tmp200,
	bl	__assert_fail		//
.L18:
// problem143.c:59:         int lst[] = {-1, -3, 17, -1, -15, 13, -1, 14, -14, -12, -5, 14, -14, 6, 13, 11, 16, 16, 4, 10};
	adrp	x0, .LC8	// tmp202,
	add	x1, x0, :lo12:.LC8	// tmp201, tmp202,
	add	x0, sp, 24	// tmp203,,
	ldp	q0, q1, [x1]	// tmp205, tmp206,
	stp	q0, q1, [x0]	// tmp205, tmp206, MEM[(int[20] *)_59]
	ldp	q0, q1, [x1, 32]	// tmp207, tmp208,
	stp	q0, q1, [x0, 32]	// tmp207, tmp208, MEM[(int[20] *)_59]
	ldr	q0, [x1, 64]	// tmp209,
	str	q0, [x0, 64]	// tmp209, MEM[(int[20] *)_59]
// problem143.c:60:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -1448);
	add	x0, sp, 24	// tmp210,,
	mov	w1, 20	//,
	bl	func0		//
	cmn	w0, #1448	// _11,
	beq	.L19		//,
// problem143.c:60:         assert(func0(lst, sizeof(lst)/sizeof(lst[0])) == -1448);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp211,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp211,
	mov	w2, 60	//,
	adrp	x0, .LC9	// tmp212,
	add	x1, x0, :lo12:.LC9	//, tmp212,
	adrp	x0, .LC18	// tmp213,
	add	x0, x0, :lo12:.LC18	//, tmp213,
	bl	__assert_fail		//
.L19:
// problem143.c:63:     return 0;
	mov	w0, 0	// _57,
// problem143.c:64: }
	mov	w1, w0	// <retval>, _57
	adrp	x0, :got:__stack_chk_guard	// tmp216,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp215, tmp216,
	ldr	x3, [sp, 104]	// tmp218, D.4343
	ldr	x2, [x0]	// tmp219,
	subs	x3, x3, x2	// tmp218, tmp219
	mov	x2, 0	// tmp219
	beq	.L21		//,
// problem143.c:64: }
	bl	__stack_chk_fail		//
.L21:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 112	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.align	3
.LC1:
	.word	1
	.word	4
	.word	9
	.align	3
.LC2:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.align	3
.LC3:
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.align	3
.LC4:
	.word	-1
	.word	-5
	.word	2
	.word	-1
	.word	-5
	.align	3
.LC5:
	.word	-56
	.word	-99
	.word	1
	.word	0
	.word	-2
	.align	3
.LC6:
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.align	3
.LC7:
	.word	-16
	.word	-9
	.word	-2
	.word	36
	.word	36
	.word	26
	.word	-20
	.word	25
	.word	-40
	.word	20
	.word	-4
	.word	12
	.word	-26
	.word	35
	.word	37
	.align	3
.LC8:
	.word	-1
	.word	-3
	.word	17
	.word	-1
	.word	-15
	.word	13
	.word	-1
	.word	14
	.word	-14
	.word	-12
	.word	-5
	.word	14
	.word	-14
	.word	6
	.word	13
	.word	11
	.word	16
	.word	16
	.word	4
	.word	10
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
