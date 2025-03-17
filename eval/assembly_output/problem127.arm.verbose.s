	.arch armv8-a
	.file	"problem127.c"
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
// problem127.c:5:     if (lst_size == 0) return true;
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
// problem127.c:8:         if (lst[i] < lst[i - 1]) return false;
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
// problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
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
	sub	sp, sp, #288	//,,
	.cfi_def_cfa_offset 288
	stp	x29, x30, [sp, 272]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 272	//,,
// problem127.c:20: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp112,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp112,
	ldr	x1, [x0]	// tmp257,
	str	x1, [sp, 264]	// tmp257, D.4935
	mov	x1, 0	// tmp257
// problem127.c:21:     int list1[] = {5};
	mov	w0, 5	// tmp113,
	str	w0, [sp, 8]	// tmp113, list1[0]
// problem127.c:22:     assert(func0(list1, 1) == true);
	add	x0, sp, 8	// tmp114,,
	mov	w1, 1	//,
	bl	func0		//
	and	w0, w0, 255	// _1, tmp115
// problem127.c:22:     assert(func0(list1, 1) == true);
	and	w0, w0, 1	// tmp116, _1,
	cmp	w0, 0	// tmp116,
	bne	.L9		//,
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
	add	x2, sp, 56	// tmp122,,
	mov	x3, x0	// tmp123, tmp120
	ldp	x0, x1, [x3]	// tmp124,
	stp	x0, x1, [x2]	// tmp124, list2
	ldr	w0, [x3, 16]	// tmp125,
	str	w0, [x2, 16]	// tmp125, list2
// problem127.c:25:     assert(func0(list2, 5) == true);
	add	x0, sp, 56	// tmp126,,
	mov	w1, 5	//,
	bl	func0		//
	and	w0, w0, 255	// _2, tmp127
// problem127.c:25:     assert(func0(list2, 5) == true);
	and	w0, w0, 1	// tmp128, _2,
	cmp	w0, 0	// tmp128,
	bne	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp129,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp129,
	mov	w2, 25	//,
	adrp	x0, .LC9	// tmp130,
	add	x1, x0, :lo12:.LC9	//, tmp130,
	adrp	x0, .LC11	// tmp131,
	add	x0, x0, :lo12:.LC11	//, tmp131,
	bl	__assert_fail		//
.L10:
// problem127.c:27:     int list3[] = {1, 3, 2, 4, 5};
	adrp	x0, .LC1	// tmp133,
	add	x0, x0, :lo12:.LC1	// tmp132, tmp133,
	add	x2, sp, 80	// tmp134,,
	mov	x3, x0	// tmp135, tmp132
	ldp	x0, x1, [x3]	// tmp136,
	stp	x0, x1, [x2]	// tmp136, list3
	ldr	w0, [x3, 16]	// tmp137,
	str	w0, [x2, 16]	// tmp137, list3
// problem127.c:28:     assert(func0(list3, 5) == false);
	add	x0, sp, 80	// tmp138,,
	mov	w1, 5	//,
	bl	func0		//
	and	w0, w0, 255	// _3, tmp139
// problem127.c:28:     assert(func0(list3, 5) == false);
	eor	w0, w0, 1	// tmp140, _3,
	and	w0, w0, 255	// _4, tmp140
	and	w0, w0, 1	// tmp141, _4,
	cmp	w0, 0	// tmp141,
	bne	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp142,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp142,
	mov	w2, 28	//,
	adrp	x0, .LC9	// tmp143,
	add	x1, x0, :lo12:.LC9	//, tmp143,
	adrp	x0, .LC12	// tmp144,
	add	x0, x0, :lo12:.LC12	//, tmp144,
	bl	__assert_fail		//
.L11:
// problem127.c:30:     int list4[] = {1, 2, 3, 4, 5, 6};
	adrp	x0, .LC2	// tmp146,
	add	x0, x0, :lo12:.LC2	// tmp145, tmp146,
	add	x2, sp, 104	// tmp147,,
	mov	x3, x0	// tmp148, tmp145
	ldp	x0, x1, [x3]	// tmp149,
	stp	x0, x1, [x2]	// tmp149, list4
	ldr	x0, [x3, 16]	// tmp150,
	str	x0, [x2, 16]	// tmp150, list4
// problem127.c:31:     assert(func0(list4, 6) == true);
	add	x0, sp, 104	// tmp151,,
	mov	w1, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _5, tmp152
// problem127.c:31:     assert(func0(list4, 6) == true);
	and	w0, w0, 1	// tmp153, _5,
	cmp	w0, 0	// tmp153,
	bne	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp154,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp154,
	mov	w2, 31	//,
	adrp	x0, .LC9	// tmp155,
	add	x1, x0, :lo12:.LC9	//, tmp155,
	adrp	x0, .LC13	// tmp156,
	add	x0, x0, :lo12:.LC13	//, tmp156,
	bl	__assert_fail		//
.L12:
// problem127.c:33:     int list5[] = {1, 2, 3, 4, 5, 6, 7};
	adrp	x0, .LC3	// tmp158,
	add	x1, x0, :lo12:.LC3	// tmp157, tmp158,
	add	x0, sp, 200	// tmp159,,
	ldr	q0, [x1]	// tmp161,
	str	q0, [x0]	// tmp161, list5
	ldr	q0, [x1, 12]	// tmp162,
	str	q0, [x0, 12]	// tmp162, list5
// problem127.c:34:     assert(func0(list5, 7) == true);
	add	x0, sp, 200	// tmp163,,
	mov	w1, 7	//,
	bl	func0		//
	and	w0, w0, 255	// _6, tmp164
// problem127.c:34:     assert(func0(list5, 7) == true);
	and	w0, w0, 1	// tmp165, _6,
	cmp	w0, 0	// tmp165,
	bne	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp166,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp166,
	mov	w2, 34	//,
	adrp	x0, .LC9	// tmp167,
	add	x1, x0, :lo12:.LC9	//, tmp167,
	adrp	x0, .LC14	// tmp168,
	add	x0, x0, :lo12:.LC14	//, tmp168,
	bl	__assert_fail		//
.L13:
// problem127.c:36:     int list6[] = {1, 3, 2, 4, 5, 6, 7};
	adrp	x0, .LC4	// tmp170,
	add	x1, x0, :lo12:.LC4	// tmp169, tmp170,
	add	x0, sp, 232	// tmp171,,
	ldr	q0, [x1]	// tmp173,
	str	q0, [x0]	// tmp173, list6
	ldr	q0, [x1, 12]	// tmp174,
	str	q0, [x0, 12]	// tmp174, list6
// problem127.c:37:     assert(func0(list6, 7) == false);
	add	x0, sp, 232	// tmp175,,
	mov	w1, 7	//,
	bl	func0		//
	and	w0, w0, 255	// _7, tmp176
// problem127.c:37:     assert(func0(list6, 7) == false);
	eor	w0, w0, 1	// tmp177, _7,
	and	w0, w0, 255	// _8, tmp177
	and	w0, w0, 1	// tmp178, _8,
	cmp	w0, 0	// tmp178,
	bne	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp179,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp179,
	mov	w2, 37	//,
	adrp	x0, .LC9	// tmp180,
	add	x1, x0, :lo12:.LC9	//, tmp180,
	adrp	x0, .LC15	// tmp181,
	add	x0, x0, :lo12:.LC15	//, tmp181,
	bl	__assert_fail		//
.L14:
// problem127.c:39:     assert(func0(NULL, 0) == true);
	mov	w1, 0	//,
	mov	x0, 0	//,
	bl	func0		//
	and	w0, w0, 255	// _9, tmp182
// problem127.c:39:     assert(func0(NULL, 0) == true);
	and	w0, w0, 1	// tmp183, _9,
	cmp	w0, 0	// tmp183,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp184,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp184,
	mov	w2, 39	//,
	adrp	x0, .LC9	// tmp185,
	add	x1, x0, :lo12:.LC9	//, tmp185,
	adrp	x0, .LC16	// tmp186,
	add	x0, x0, :lo12:.LC16	//, tmp186,
	bl	__assert_fail		//
.L15:
// problem127.c:41:     int list7[] = {1};
	mov	w0, 1	// tmp187,
	str	w0, [sp, 16]	// tmp187, list7[0]
// problem127.c:42:     assert(func0(list7, 1) == true);
	add	x0, sp, 16	// tmp188,,
	mov	w1, 1	//,
	bl	func0		//
	and	w0, w0, 255	// _10, tmp189
// problem127.c:42:     assert(func0(list7, 1) == true);
	and	w0, w0, 1	// tmp190, _10,
	cmp	w0, 0	// tmp190,
	bne	.L16		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp191,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp191,
	mov	w2, 42	//,
	adrp	x0, .LC9	// tmp192,
	add	x1, x0, :lo12:.LC9	//, tmp192,
	adrp	x0, .LC17	// tmp193,
	add	x0, x0, :lo12:.LC17	//, tmp193,
	bl	__assert_fail		//
.L16:
// problem127.c:44:     int list8[] = {3, 2, 1};
	adrp	x0, .LC5	// tmp195,
	add	x1, x0, :lo12:.LC5	// tmp194, tmp195,
	add	x0, sp, 24	// tmp196,,
	ldr	x2, [x1]	// tmp198,
	str	x2, [x0]	// tmp198, list8
	ldr	w1, [x1, 8]	// tmp199,
	str	w1, [x0, 8]	// tmp199, list8
// problem127.c:45:     assert(func0(list8, 3) == false);
	add	x0, sp, 24	// tmp200,,
	mov	w1, 3	//,
	bl	func0		//
	and	w0, w0, 255	// _11, tmp201
// problem127.c:45:     assert(func0(list8, 3) == false);
	eor	w0, w0, 1	// tmp202, _11,
	and	w0, w0, 255	// _12, tmp202
	and	w0, w0, 1	// tmp203, _12,
	cmp	w0, 0	// tmp203,
	bne	.L17		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp204,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp204,
	mov	w2, 45	//,
	adrp	x0, .LC9	// tmp205,
	add	x1, x0, :lo12:.LC9	//, tmp205,
	adrp	x0, .LC18	// tmp206,
	add	x0, x0, :lo12:.LC18	//, tmp206,
	bl	__assert_fail		//
.L17:
// problem127.c:47:     int list9[] = {1, 2, 2, 2, 3, 4};
	adrp	x0, .LC6	// tmp208,
	add	x0, x0, :lo12:.LC6	// tmp207, tmp208,
	add	x2, sp, 128	// tmp209,,
	mov	x3, x0	// tmp210, tmp207
	ldp	x0, x1, [x3]	// tmp211,
	stp	x0, x1, [x2]	// tmp211, list9
	ldr	x0, [x3, 16]	// tmp212,
	str	x0, [x2, 16]	// tmp212, list9
// problem127.c:48:     assert(func0(list9, 6) == false);
	add	x0, sp, 128	// tmp213,,
	mov	w1, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _13, tmp214
// problem127.c:48:     assert(func0(list9, 6) == false);
	eor	w0, w0, 1	// tmp215, _13,
	and	w0, w0, 255	// _14, tmp215
	and	w0, w0, 1	// tmp216, _14,
	cmp	w0, 0	// tmp216,
	bne	.L18		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp217,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp217,
	mov	w2, 48	//,
	adrp	x0, .LC9	// tmp218,
	add	x1, x0, :lo12:.LC9	//, tmp218,
	adrp	x0, .LC19	// tmp219,
	add	x0, x0, :lo12:.LC19	//, tmp219,
	bl	__assert_fail		//
.L18:
// problem127.c:50:     int list10[] = {1, 2, 3, 3, 3, 4};
	adrp	x0, .LC7	// tmp221,
	add	x0, x0, :lo12:.LC7	// tmp220, tmp221,
	add	x2, sp, 152	// tmp222,,
	mov	x3, x0	// tmp223, tmp220
	ldp	x0, x1, [x3]	// tmp224,
	stp	x0, x1, [x2]	// tmp224, list10
	ldr	x0, [x3, 16]	// tmp225,
	str	x0, [x2, 16]	// tmp225, list10
// problem127.c:51:     assert(func0(list10, 6) == false);
	add	x0, sp, 152	// tmp226,,
	mov	w1, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _15, tmp227
// problem127.c:51:     assert(func0(list10, 6) == false);
	eor	w0, w0, 1	// tmp228, _15,
	and	w0, w0, 255	// _16, tmp228
	and	w0, w0, 1	// tmp229, _16,
	cmp	w0, 0	// tmp229,
	bne	.L19		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp230,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp230,
	mov	w2, 51	//,
	adrp	x0, .LC9	// tmp231,
	add	x1, x0, :lo12:.LC9	//, tmp231,
	adrp	x0, .LC20	// tmp232,
	add	x0, x0, :lo12:.LC20	//, tmp232,
	bl	__assert_fail		//
.L19:
// problem127.c:53:     int list11[] = {1, 2, 2, 3, 3, 4};
	adrp	x0, .LC8	// tmp234,
	add	x0, x0, :lo12:.LC8	// tmp233, tmp234,
	add	x2, sp, 176	// tmp235,,
	mov	x3, x0	// tmp236, tmp233
	ldp	x0, x1, [x3]	// tmp237,
	stp	x0, x1, [x2]	// tmp237, list11
	ldr	x0, [x3, 16]	// tmp238,
	str	x0, [x2, 16]	// tmp238, list11
// problem127.c:54:     assert(func0(list11, 6) == true);
	add	x0, sp, 176	// tmp239,,
	mov	w1, 6	//,
	bl	func0		//
	and	w0, w0, 255	// _17, tmp240
// problem127.c:54:     assert(func0(list11, 6) == true);
	and	w0, w0, 1	// tmp241, _17,
	cmp	w0, 0	// tmp241,
	bne	.L20		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp242,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp242,
	mov	w2, 54	//,
	adrp	x0, .LC9	// tmp243,
	add	x1, x0, :lo12:.LC9	//, tmp243,
	adrp	x0, .LC21	// tmp244,
	add	x0, x0, :lo12:.LC21	//, tmp244,
	bl	__assert_fail		//
.L20:
// problem127.c:56:     int list12[] = {1, 2, 3, 4};
	mov	w0, 1	// tmp245,
	str	w0, [sp, 40]	// tmp245, list12[0]
	mov	w0, 2	// tmp246,
	str	w0, [sp, 44]	// tmp246, list12[1]
	mov	w0, 3	// tmp247,
	str	w0, [sp, 48]	// tmp247, list12[2]
	mov	w0, 4	// tmp248,
	str	w0, [sp, 52]	// tmp248, list12[3]
// problem127.c:57:     assert(func0(list12, 4) == true);
	add	x0, sp, 40	// tmp249,,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _18, tmp250
// problem127.c:57:     assert(func0(list12, 4) == true);
	and	w0, w0, 1	// tmp251, _18,
	cmp	w0, 0	// tmp251,
	bne	.L21		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp252,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp252,
	mov	w2, 57	//,
	adrp	x0, .LC9	// tmp253,
	add	x1, x0, :lo12:.LC9	//, tmp253,
	adrp	x0, .LC22	// tmp254,
	add	x0, x0, :lo12:.LC22	//, tmp254,
	bl	__assert_fail		//
.L21:
// problem127.c:59:     return 0;
	mov	w0, 0	// _61,
// problem127.c:60: }
	mov	w1, w0	// <retval>, _61
	adrp	x0, :got:__stack_chk_guard	// tmp256,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp256,
	ldr	x3, [sp, 264]	// tmp258, D.4935
	ldr	x2, [x0]	// tmp259,
	subs	x3, x3, x2	// tmp258, tmp259
	mov	x2, 0	// tmp259
	beq	.L23		//,
	bl	__stack_chk_fail		//
.L23:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 272]	//,,
	add	sp, sp, 288	//,,
	.cfi_restore 29
	.cfi_restore 30
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
