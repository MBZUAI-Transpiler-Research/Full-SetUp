	.arch armv8-a
	.file	"problem127.c"
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
	str	w1, [sp, 4]	// lst_size, lst_size
// problem127.c:5:     if (lst_size == 0) return true;
	ldr	w0, [sp, 4]	// tmp121, lst_size
	cmp	w0, 0	// tmp121,
	bne	.L2		//,
// problem127.c:5:     if (lst_size == 0) return true;
	mov	w0, 1	// _29,
	b	.L3		//
.L2:
// problem127.c:7:     for (int i = 1; i < lst_size; i++) {
	mov	w0, 1	// tmp122,
	str	w0, [sp, 28]	// tmp122, i
// problem127.c:7:     for (int i = 1; i < lst_size; i++) {
	b	.L4		//
.L7:
// problem127.c:8:         if (lst[i] < lst[i - 1]) return false;
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp123, lst
	add	x0, x1, x0	// _3, tmp123, _2
	ldr	w1, [x0]	// _4, *_3
// problem127.c:8:         if (lst[i] < lst[i - 1]) return false;
	ldrsw	x0, [sp, 28]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	sub	x0, x0, #4	// _7, _6,
	ldr	x2, [sp, 8]	// tmp124, lst
	add	x0, x2, x0	// _8, tmp124, _7
	ldr	w0, [x0]	// _9, *_8
// problem127.c:8:         if (lst[i] < lst[i - 1]) return false;
	cmp	w1, w0	// _4, _9
	bge	.L5		//,
// problem127.c:8:         if (lst[i] < lst[i - 1]) return false;
	mov	w0, 0	// _29,
	b	.L3		//
.L5:
// problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	ldr	w0, [sp, 28]	// tmp125, i
	cmp	w0, 1	// tmp125,
	ble	.L6		//,
// problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	ldrsw	x0, [sp, 28]	// _10, i
	lsl	x0, x0, 2	// _11, _10,
	ldr	x1, [sp, 8]	// tmp126, lst
	add	x0, x1, x0	// _12, tmp126, _11
	ldr	w1, [x0]	// _13, *_12
// problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	ldrsw	x0, [sp, 28]	// _14, i
	lsl	x0, x0, 2	// _15, _14,
	sub	x0, x0, #4	// _16, _15,
	ldr	x2, [sp, 8]	// tmp127, lst
	add	x0, x2, x0	// _17, tmp127, _16
	ldr	w0, [x0]	// _18, *_17
// problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	cmp	w1, w0	// _13, _18
	bne	.L6		//,
// problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	ldrsw	x0, [sp, 28]	// _19, i
	lsl	x0, x0, 2	// _20, _19,
	ldr	x1, [sp, 8]	// tmp128, lst
	add	x0, x1, x0	// _21, tmp128, _20
	ldr	w1, [x0]	// _22, *_21
// problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	ldrsw	x0, [sp, 28]	// _23, i
	lsl	x0, x0, 2	// _24, _23,
	sub	x0, x0, #8	// _25, _24,
	ldr	x2, [sp, 8]	// tmp129, lst
	add	x0, x2, x0	// _26, tmp129, _25
	ldr	w0, [x0]	// _27, *_26
// problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	cmp	w1, w0	// _22, _27
	bne	.L6		//,
// problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	mov	w0, 0	// _29,
	b	.L3		//
.L6:
// problem127.c:7:     for (int i = 1; i < lst_size; i++) {
	ldr	w0, [sp, 28]	// tmp131, i
	add	w0, w0, 1	// tmp130, tmp131,
	str	w0, [sp, 28]	// tmp130, i
.L4:
// problem127.c:7:     for (int i = 1; i < lst_size; i++) {
	ldr	w1, [sp, 28]	// tmp132, i
	ldr	w0, [sp, 4]	// tmp133, lst_size
	cmp	w1, w0	// tmp132, tmp133
	blt	.L7		//,
// problem127.c:11:     return true;
	mov	w0, 1	// _29,
.L3:
// problem127.c:12: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC9:
	.string	"problem127.c"
	.align	3
.LC10:
	.string	"func0(list1, 1) == true"
	.align	3
.LC11:
	.string	"func0(list2, 5) == true"
	.align	3
.LC12:
	.string	"func0(list3, 5) == false"
	.align	3
.LC13:
	.string	"func0(list4, 6) == true"
	.align	3
.LC14:
	.string	"func0(list5, 7) == true"
	.align	3
.LC15:
	.string	"func0(list6, 7) == false"
	.align	3
.LC16:
	.string	"func0(NULL, 0) == true"
	.align	3
.LC17:
	.string	"func0(list7, 1) == true"
	.align	3
.LC18:
	.string	"func0(list8, 3) == false"
	.align	3
.LC19:
	.string	"func0(list9, 6) == false"
	.align	3
.LC20:
	.string	"func0(list10, 6) == false"
	.align	3
.LC21:
	.string	"func0(list11, 6) == true"
	.align	3
.LC22:
	.string	"func0(list12, 4) == true"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -288]!	//,,,
	.cfi_def_cfa_offset 288
	.cfi_offset 29, -288
	.cfi_offset 30, -280
	mov	x29, sp	//,
// problem127.c:20: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp113,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp112, tmp113,
	ldr	x1, [x0]	// tmp246,
	str	x1, [sp, 280]	// tmp246, D.4353
	mov	x1, 0	// tmp246
// problem127.c:21:     int list1[] = {5};
	mov	w0, 5	// tmp114,
	str	w0, [sp, 24]	// tmp114, list1[0]
// problem127.c:22:     assert(func0(list1, 1) == true);
	add	x0, sp, 24	// tmp115,,
	mov	w1, 1	//,
	bl	func0		//
	and	w0, w0, 255	// _1, tmp116
	cmp	w0, 0	// _1,
	bne	.L9		//,
// problem127.c:22:     assert(func0(list1, 1) == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp117,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp117,
	mov	w2, 22	//,
	adrp	x0, .LC9	// tmp118,
	add	x1, x0, :lo12:.LC9	//, tmp118,
	adrp	x0, .LC10	// tmp119,
	add	x0, x0, :lo12:.LC10	//, tmp119,
	bl	__assert_fail		//
.L9:
// problem127.c:24:     int list2[] = {1, 2, 3, 4, 5};
	adrp	x0, .LC0	// tmp121,
	add	x0, x0, :lo12:.LC0	// tmp120, tmp121,
	add	x2, sp, 72	// tmp122,,
	mov	x3, x0	// tmp123, tmp120
	ldp	x0, x1, [x3]	// tmp124,
	stp	x0, x1, [x2]	// tmp124, list2
	ldr	w0, [x3, 16]	// tmp125,
	str	w0, [x2, 16]	// tmp125, list2
// problem127.c:25:     assert(func0(list2, 5) == true);
	add	x0, sp, 72	// tmp126,,
	mov	w1, 5	//,
	bl	func0		//
	and	w0, w0, 255	// _2, tmp127
	cmp	w0, 0	// _2,
	bne	.L10		//,
// problem127.c:25:     assert(func0(list2, 5) == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp128,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp128,
	mov	w2, 25	//,
	adrp	x0, .LC9	// tmp129,
	add	x1, x0, :lo12:.LC9	//, tmp129,
	adrp	x0, .LC11	// tmp130,
	add	x0, x0, :lo12:.LC11	//, tmp130,
	bl	__assert_fail		//
.L10:
// problem127.c:27:     int list3[] = {1, 3, 2, 4, 5};
	adrp	x0, .LC1	// tmp132,
	add	x0, x0, :lo12:.LC1	// tmp131, tmp132,
	add	x2, sp, 96	// tmp133,,
	mov	x3, x0	// tmp134, tmp131
	ldp	x0, x1, [x3]	// tmp135,
	stp	x0, x1, [x2]	// tmp135, list3
	ldr	w0, [x3, 16]	// tmp136,
	str	w0, [x2, 16]	// tmp136, list3
// problem127.c:28:     assert(func0(list3, 5) == false);
	add	x0, sp, 96	// tmp137,,
	mov	w1, 5	//,
	bl	func0		//
	and	w0, w0, 255	// _3, tmp138
	eor	w0, w0, 1	// tmp139, _3,
	and	w0, w0, 255	// _4, tmp139
	cmp	w0, 0	// _4,
	bne	.L11		//,
// problem127.c:28:     assert(func0(list3, 5) == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp140,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp140,
	mov	w2, 28	//,
	adrp	x0, .LC9	// tmp141,
	add	x1, x0, :lo12:.LC9	//, tmp141,
	adrp	x0, .LC12	// tmp142,
	add	x0, x0, :lo12:.LC12	//, tmp142,
	bl	__assert_fail		//
.L11:
// problem127.c:30:     int list4[] = {1, 2, 3, 4, 5, 6};
	adrp	x0, .LC2	// tmp144,
	add	x0, x0, :lo12:.LC2	// tmp143, tmp144,
	add	x2, sp, 120	// tmp145,,
	mov	x3, x0	// tmp146, tmp143
	ldp	x0, x1, [x3]	// tmp147,
	stp	x0, x1, [x2]	// tmp147, list4
	ldr	x0, [x3, 16]	// tmp148,
	str	x0, [x2, 16]	// tmp148, list4
// problem127.c:31:     assert(func0(list4, 6) == true);
	add	x0, sp, 120	// tmp149,,
	mov	w1, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _5, tmp150
	cmp	w0, 0	// _5,
	bne	.L12		//,
// problem127.c:31:     assert(func0(list4, 6) == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp151,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp151,
	mov	w2, 31	//,
	adrp	x0, .LC9	// tmp152,
	add	x1, x0, :lo12:.LC9	//, tmp152,
	adrp	x0, .LC13	// tmp153,
	add	x0, x0, :lo12:.LC13	//, tmp153,
	bl	__assert_fail		//
.L12:
// problem127.c:33:     int list5[] = {1, 2, 3, 4, 5, 6, 7};
	adrp	x0, .LC3	// tmp155,
	add	x1, x0, :lo12:.LC3	// tmp154, tmp155,
	add	x0, sp, 216	// tmp156,,
	ldr	q0, [x1]	// tmp158,
	str	q0, [x0]	// tmp158, list5
	ldr	q0, [x1, 12]	// tmp159,
	str	q0, [x0, 12]	// tmp159, list5
// problem127.c:34:     assert(func0(list5, 7) == true);
	add	x0, sp, 216	// tmp160,,
	mov	w1, 7	//,
	bl	func0		//
	and	w0, w0, 255	// _6, tmp161
	cmp	w0, 0	// _6,
	bne	.L13		//,
// problem127.c:34:     assert(func0(list5, 7) == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp162,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp162,
	mov	w2, 34	//,
	adrp	x0, .LC9	// tmp163,
	add	x1, x0, :lo12:.LC9	//, tmp163,
	adrp	x0, .LC14	// tmp164,
	add	x0, x0, :lo12:.LC14	//, tmp164,
	bl	__assert_fail		//
.L13:
// problem127.c:36:     int list6[] = {1, 3, 2, 4, 5, 6, 7};
	adrp	x0, .LC4	// tmp166,
	add	x1, x0, :lo12:.LC4	// tmp165, tmp166,
	add	x0, sp, 248	// tmp167,,
	ldr	q0, [x1]	// tmp169,
	str	q0, [x0]	// tmp169, list6
	ldr	q0, [x1, 12]	// tmp170,
	str	q0, [x0, 12]	// tmp170, list6
// problem127.c:37:     assert(func0(list6, 7) == false);
	add	x0, sp, 248	// tmp171,,
	mov	w1, 7	//,
	bl	func0		//
	and	w0, w0, 255	// _7, tmp172
	eor	w0, w0, 1	// tmp173, _7,
	and	w0, w0, 255	// _8, tmp173
	cmp	w0, 0	// _8,
	bne	.L14		//,
// problem127.c:37:     assert(func0(list6, 7) == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp174,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp174,
	mov	w2, 37	//,
	adrp	x0, .LC9	// tmp175,
	add	x1, x0, :lo12:.LC9	//, tmp175,
	adrp	x0, .LC15	// tmp176,
	add	x0, x0, :lo12:.LC15	//, tmp176,
	bl	__assert_fail		//
.L14:
// problem127.c:39:     assert(func0(NULL, 0) == true);
	mov	w1, 0	//,
	mov	x0, 0	//,
	bl	func0		//
	and	w0, w0, 255	// _9, tmp177
	cmp	w0, 0	// _9,
	bne	.L15		//,
// problem127.c:39:     assert(func0(NULL, 0) == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp178,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp178,
	mov	w2, 39	//,
	adrp	x0, .LC9	// tmp179,
	add	x1, x0, :lo12:.LC9	//, tmp179,
	adrp	x0, .LC16	// tmp180,
	add	x0, x0, :lo12:.LC16	//, tmp180,
	bl	__assert_fail		//
.L15:
// problem127.c:41:     int list7[] = {1};
	mov	w0, 1	// tmp181,
	str	w0, [sp, 32]	// tmp181, list7[0]
// problem127.c:42:     assert(func0(list7, 1) == true);
	add	x0, sp, 32	// tmp182,,
	mov	w1, 1	//,
	bl	func0		//
	and	w0, w0, 255	// _10, tmp183
	cmp	w0, 0	// _10,
	bne	.L16		//,
// problem127.c:42:     assert(func0(list7, 1) == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp184,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp184,
	mov	w2, 42	//,
	adrp	x0, .LC9	// tmp185,
	add	x1, x0, :lo12:.LC9	//, tmp185,
	adrp	x0, .LC17	// tmp186,
	add	x0, x0, :lo12:.LC17	//, tmp186,
	bl	__assert_fail		//
.L16:
// problem127.c:44:     int list8[] = {3, 2, 1};
	adrp	x0, .LC5	// tmp188,
	add	x1, x0, :lo12:.LC5	// tmp187, tmp188,
	add	x0, sp, 40	// tmp189,,
	ldr	x2, [x1]	// tmp191,
	str	x2, [x0]	// tmp191, list8
	ldr	w1, [x1, 8]	// tmp192,
	str	w1, [x0, 8]	// tmp192, list8
// problem127.c:45:     assert(func0(list8, 3) == false);
	add	x0, sp, 40	// tmp193,,
	mov	w1, 3	//,
	bl	func0		//
	and	w0, w0, 255	// _11, tmp194
	eor	w0, w0, 1	// tmp195, _11,
	and	w0, w0, 255	// _12, tmp195
	cmp	w0, 0	// _12,
	bne	.L17		//,
// problem127.c:45:     assert(func0(list8, 3) == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp196,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp196,
	mov	w2, 45	//,
	adrp	x0, .LC9	// tmp197,
	add	x1, x0, :lo12:.LC9	//, tmp197,
	adrp	x0, .LC18	// tmp198,
	add	x0, x0, :lo12:.LC18	//, tmp198,
	bl	__assert_fail		//
.L17:
// problem127.c:47:     int list9[] = {1, 2, 2, 2, 3, 4};
	adrp	x0, .LC6	// tmp200,
	add	x0, x0, :lo12:.LC6	// tmp199, tmp200,
	add	x2, sp, 144	// tmp201,,
	mov	x3, x0	// tmp202, tmp199
	ldp	x0, x1, [x3]	// tmp203,
	stp	x0, x1, [x2]	// tmp203, list9
	ldr	x0, [x3, 16]	// tmp204,
	str	x0, [x2, 16]	// tmp204, list9
// problem127.c:48:     assert(func0(list9, 6) == false);
	add	x0, sp, 144	// tmp205,,
	mov	w1, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _13, tmp206
	eor	w0, w0, 1	// tmp207, _13,
	and	w0, w0, 255	// _14, tmp207
	cmp	w0, 0	// _14,
	bne	.L18		//,
// problem127.c:48:     assert(func0(list9, 6) == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp208,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp208,
	mov	w2, 48	//,
	adrp	x0, .LC9	// tmp209,
	add	x1, x0, :lo12:.LC9	//, tmp209,
	adrp	x0, .LC19	// tmp210,
	add	x0, x0, :lo12:.LC19	//, tmp210,
	bl	__assert_fail		//
.L18:
// problem127.c:50:     int list10[] = {1, 2, 3, 3, 3, 4};
	adrp	x0, .LC7	// tmp212,
	add	x0, x0, :lo12:.LC7	// tmp211, tmp212,
	add	x2, sp, 168	// tmp213,,
	mov	x3, x0	// tmp214, tmp211
	ldp	x0, x1, [x3]	// tmp215,
	stp	x0, x1, [x2]	// tmp215, list10
	ldr	x0, [x3, 16]	// tmp216,
	str	x0, [x2, 16]	// tmp216, list10
// problem127.c:51:     assert(func0(list10, 6) == false);
	add	x0, sp, 168	// tmp217,,
	mov	w1, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _15, tmp218
	eor	w0, w0, 1	// tmp219, _15,
	and	w0, w0, 255	// _16, tmp219
	cmp	w0, 0	// _16,
	bne	.L19		//,
// problem127.c:51:     assert(func0(list10, 6) == false);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp220,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp220,
	mov	w2, 51	//,
	adrp	x0, .LC9	// tmp221,
	add	x1, x0, :lo12:.LC9	//, tmp221,
	adrp	x0, .LC20	// tmp222,
	add	x0, x0, :lo12:.LC20	//, tmp222,
	bl	__assert_fail		//
.L19:
// problem127.c:53:     int list11[] = {1, 2, 2, 3, 3, 4};
	adrp	x0, .LC8	// tmp224,
	add	x0, x0, :lo12:.LC8	// tmp223, tmp224,
	add	x2, sp, 192	// tmp225,,
	mov	x3, x0	// tmp226, tmp223
	ldp	x0, x1, [x3]	// tmp227,
	stp	x0, x1, [x2]	// tmp227, list11
	ldr	x0, [x3, 16]	// tmp228,
	str	x0, [x2, 16]	// tmp228, list11
// problem127.c:54:     assert(func0(list11, 6) == true);
	add	x0, sp, 192	// tmp229,,
	mov	w1, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _17, tmp230
	cmp	w0, 0	// _17,
	bne	.L20		//,
// problem127.c:54:     assert(func0(list11, 6) == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp231,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp231,
	mov	w2, 54	//,
	adrp	x0, .LC9	// tmp232,
	add	x1, x0, :lo12:.LC9	//, tmp232,
	adrp	x0, .LC21	// tmp233,
	add	x0, x0, :lo12:.LC21	//, tmp233,
	bl	__assert_fail		//
.L20:
// problem127.c:56:     int list12[] = {1, 2, 3, 4};
	mov	w0, 1	// tmp234,
	str	w0, [sp, 56]	// tmp234, list12[0]
	mov	w0, 2	// tmp235,
	str	w0, [sp, 60]	// tmp235, list12[1]
	mov	w0, 3	// tmp236,
	str	w0, [sp, 64]	// tmp236, list12[2]
	mov	w0, 4	// tmp237,
	str	w0, [sp, 68]	// tmp237, list12[3]
// problem127.c:57:     assert(func0(list12, 4) == true);
	add	x0, sp, 56	// tmp238,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _18, tmp239
	cmp	w0, 0	// _18,
	bne	.L21		//,
// problem127.c:57:     assert(func0(list12, 4) == true);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp240,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp240,
	mov	w2, 57	//,
	adrp	x0, .LC9	// tmp241,
	add	x1, x0, :lo12:.LC9	//, tmp241,
	adrp	x0, .LC22	// tmp242,
	add	x0, x0, :lo12:.LC22	//, tmp242,
	bl	__assert_fail		//
.L21:
// problem127.c:59:     return 0;
	mov	w0, 0	// _61,
// problem127.c:60: }
	mov	w1, w0	// <retval>, _61
	adrp	x0, :got:__stack_chk_guard	// tmp245,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp244, tmp245,
	ldr	x3, [sp, 280]	// tmp247, D.4353
	ldr	x2, [x0]	// tmp248,
	subs	x3, x3, x2	// tmp247, tmp248
	mov	x2, 0	// tmp248
	beq	.L23		//,
	bl	__stack_chk_fail		//
.L23:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 288	//,,,
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
	.word	4
	.word	5
	.align	3
.LC1:
	.word	1
	.word	3
	.word	2
	.word	4
	.word	5
	.align	3
.LC2:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.align	3
.LC3:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.align	3
.LC4:
	.word	1
	.word	3
	.word	2
	.word	4
	.word	5
	.word	6
	.word	7
	.align	3
.LC5:
	.word	3
	.word	2
	.word	1
	.align	3
.LC6:
	.word	1
	.word	2
	.word	2
	.word	2
	.word	3
	.word	4
	.align	3
.LC7:
	.word	1
	.word	2
	.word	3
	.word	3
	.word	3
	.word	4
	.align	3
.LC8:
	.word	1
	.word	2
	.word	2
	.word	3
	.word	3
	.word	4
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
