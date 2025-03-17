	.arch armv8-a
	.file	"problem53.c"
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
	str	x0, [sp, 8]	// l, l
	str	w1, [sp, 4]	// size, size
	str	w2, [sp]	// t, t
// problem53.c:5:     for (int i = 0; i < size; i++)
	str	wzr, [sp, 28]	//, i
// problem53.c:5:     for (int i = 0; i < size; i++)
	b	.L2		//
.L5:
// problem53.c:6:         if (l[i] >= t) return false;
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp98, l
	add	x0, x1, x0	// _3, tmp98, _2
	ldr	w0, [x0]	// _4, *_3
// problem53.c:6:         if (l[i] >= t) return false;
	ldr	w1, [sp]	// tmp99, t
	cmp	w1, w0	// tmp99, _4
	bgt	.L3		//,
// problem53.c:6:         if (l[i] >= t) return false;
	mov	w0, 0	// _6,
// problem53.c:6:         if (l[i] >= t) return false;
	b	.L4		//
.L3:
// problem53.c:5:     for (int i = 0; i < size; i++)
	ldr	w0, [sp, 28]	// tmp101, i
	add	w0, w0, 1	// tmp100, tmp101,
	str	w0, [sp, 28]	// tmp100, i
.L2:
// problem53.c:5:     for (int i = 0; i < size; i++)
	ldr	w1, [sp, 28]	// tmp102, i
	ldr	w0, [sp, 4]	// tmp103, size
	cmp	w1, w0	// tmp102, tmp103
	blt	.L5		//,
// problem53.c:7:     return true;
	mov	w0, 1	// _6,
.L4:
// problem53.c:8: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem53.c"
	.align	3
.LC1:
	.string	"func0(list1, 4, 100)"
	.align	3
.LC2:
	.string	"!func0(list2, 4, 5)"
	.align	3
.LC3:
	.string	"func0(list3, 4, 21)"
	.align	3
.LC4:
	.string	"func0(list4, 4, 22)"
	.align	3
.LC5:
	.string	"func0(list5, 4, 11)"
	.align	3
.LC6:
	.string	"!func0(list6, 4, 10)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #128	//,,
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 112]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 112	//,,
// problem53.c:15: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp102,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp102,
	ldr	x1, [x0]	// tmp167,
	str	x1, [sp, 104]	// tmp167, D.4894
	mov	x1, 0	// tmp167
// problem53.c:16:     int list1[] = {1, 2, 4, 10};
	mov	w0, 1	// tmp103,
	str	w0, [sp, 8]	// tmp103, list1[0]
	mov	w0, 2	// tmp104,
	str	w0, [sp, 12]	// tmp104, list1[1]
	mov	w0, 4	// tmp105,
	str	w0, [sp, 16]	// tmp105, list1[2]
	mov	w0, 10	// tmp106,
	str	w0, [sp, 20]	// tmp106, list1[3]
// problem53.c:17:     assert(func0(list1, 4, 100));
	add	x0, sp, 8	// tmp107,,
	mov	w2, 100	//,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _1, tmp108
// problem53.c:17:     assert(func0(list1, 4, 100));
	and	w0, w0, 1	// tmp109, _1,
	cmp	w0, 0	// tmp109,
	bne	.L7		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp110,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp110,
	mov	w2, 17	//,
	adrp	x0, .LC0	// tmp111,
	add	x1, x0, :lo12:.LC0	//, tmp111,
	adrp	x0, .LC1	// tmp112,
	add	x0, x0, :lo12:.LC1	//, tmp112,
	bl	__assert_fail		//
.L7:
// problem53.c:19:     int list2[] = {1, 20, 4, 10};
	mov	w0, 1	// tmp113,
	str	w0, [sp, 24]	// tmp113, list2[0]
	mov	w0, 20	// tmp114,
	str	w0, [sp, 28]	// tmp114, list2[1]
	mov	w0, 4	// tmp115,
	str	w0, [sp, 32]	// tmp115, list2[2]
	mov	w0, 10	// tmp116,
	str	w0, [sp, 36]	// tmp116, list2[3]
// problem53.c:20:     assert(!func0(list2, 4, 5));
	add	x0, sp, 24	// tmp117,,
	mov	w2, 5	//,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _2, tmp118
// problem53.c:20:     assert(!func0(list2, 4, 5));
	eor	w0, w0, 1	// tmp119, _2,
	and	w0, w0, 255	// _3, tmp119
	and	w0, w0, 1	// tmp120, _3,
	cmp	w0, 0	// tmp120,
	bne	.L8		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp121,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp121,
	mov	w2, 20	//,
	adrp	x0, .LC0	// tmp122,
	add	x1, x0, :lo12:.LC0	//, tmp122,
	adrp	x0, .LC2	// tmp123,
	add	x0, x0, :lo12:.LC2	//, tmp123,
	bl	__assert_fail		//
.L8:
// problem53.c:22:     int list3[] = {1, 20, 4, 10};
	mov	w0, 1	// tmp124,
	str	w0, [sp, 40]	// tmp124, list3[0]
	mov	w0, 20	// tmp125,
	str	w0, [sp, 44]	// tmp125, list3[1]
	mov	w0, 4	// tmp126,
	str	w0, [sp, 48]	// tmp126, list3[2]
	mov	w0, 10	// tmp127,
	str	w0, [sp, 52]	// tmp127, list3[3]
// problem53.c:23:     assert(func0(list3, 4, 21));
	add	x0, sp, 40	// tmp128,,
	mov	w2, 21	//,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _4, tmp129
// problem53.c:23:     assert(func0(list3, 4, 21));
	and	w0, w0, 1	// tmp130, _4,
	cmp	w0, 0	// tmp130,
	bne	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp131,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp131,
	mov	w2, 23	//,
	adrp	x0, .LC0	// tmp132,
	add	x1, x0, :lo12:.LC0	//, tmp132,
	adrp	x0, .LC3	// tmp133,
	add	x0, x0, :lo12:.LC3	//, tmp133,
	bl	__assert_fail		//
.L9:
// problem53.c:25:     int list4[] = {1, 20, 4, 10};
	mov	w0, 1	// tmp134,
	str	w0, [sp, 56]	// tmp134, list4[0]
	mov	w0, 20	// tmp135,
	str	w0, [sp, 60]	// tmp135, list4[1]
	mov	w0, 4	// tmp136,
	str	w0, [sp, 64]	// tmp136, list4[2]
	mov	w0, 10	// tmp137,
	str	w0, [sp, 68]	// tmp137, list4[3]
// problem53.c:26:     assert(func0(list4, 4, 22));
	add	x0, sp, 56	// tmp138,,
	mov	w2, 22	//,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _5, tmp139
// problem53.c:26:     assert(func0(list4, 4, 22));
	and	w0, w0, 1	// tmp140, _5,
	cmp	w0, 0	// tmp140,
	bne	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp141,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp141,
	mov	w2, 26	//,
	adrp	x0, .LC0	// tmp142,
	add	x1, x0, :lo12:.LC0	//, tmp142,
	adrp	x0, .LC4	// tmp143,
	add	x0, x0, :lo12:.LC4	//, tmp143,
	bl	__assert_fail		//
.L10:
// problem53.c:28:     int list5[] = {1, 8, 4, 10};
	mov	w0, 1	// tmp144,
	str	w0, [sp, 72]	// tmp144, list5[0]
	mov	w0, 8	// tmp145,
	str	w0, [sp, 76]	// tmp145, list5[1]
	mov	w0, 4	// tmp146,
	str	w0, [sp, 80]	// tmp146, list5[2]
	mov	w0, 10	// tmp147,
	str	w0, [sp, 84]	// tmp147, list5[3]
// problem53.c:29:     assert(func0(list5, 4, 11));
	add	x0, sp, 72	// tmp148,,
	mov	w2, 11	//,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _6, tmp149
// problem53.c:29:     assert(func0(list5, 4, 11));
	and	w0, w0, 1	// tmp150, _6,
	cmp	w0, 0	// tmp150,
	bne	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp151,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp151,
	mov	w2, 29	//,
	adrp	x0, .LC0	// tmp152,
	add	x1, x0, :lo12:.LC0	//, tmp152,
	adrp	x0, .LC5	// tmp153,
	add	x0, x0, :lo12:.LC5	//, tmp153,
	bl	__assert_fail		//
.L11:
// problem53.c:31:     int list6[] = {1, 8, 4, 10};
	mov	w0, 1	// tmp154,
	str	w0, [sp, 88]	// tmp154, list6[0]
	mov	w0, 8	// tmp155,
	str	w0, [sp, 92]	// tmp155, list6[1]
	mov	w0, 4	// tmp156,
	str	w0, [sp, 96]	// tmp156, list6[2]
	mov	w0, 10	// tmp157,
	str	w0, [sp, 100]	// tmp157, list6[3]
// problem53.c:32:     assert(!func0(list6, 4, 10));
	add	x0, sp, 88	// tmp158,,
	mov	w2, 10	//,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _7, tmp159
// problem53.c:32:     assert(!func0(list6, 4, 10));
	eor	w0, w0, 1	// tmp160, _7,
	and	w0, w0, 255	// _8, tmp160
	and	w0, w0, 1	// tmp161, _8,
	cmp	w0, 0	// tmp161,
	bne	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp162,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp162,
	mov	w2, 32	//,
	adrp	x0, .LC0	// tmp163,
	add	x1, x0, :lo12:.LC0	//, tmp163,
	adrp	x0, .LC6	// tmp164,
	add	x0, x0, :lo12:.LC6	//, tmp164,
	bl	__assert_fail		//
.L12:
// problem53.c:34:     return 0;
	mov	w0, 0	// _46,
// problem53.c:35: }
	mov	w1, w0	// <retval>, _46
	adrp	x0, :got:__stack_chk_guard	// tmp166,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp166,
	ldr	x3, [sp, 104]	// tmp168, D.4894
	ldr	x2, [x0]	// tmp169,
	subs	x3, x3, x2	// tmp168, tmp169
	mov	x2, 0	// tmp169
	beq	.L14		//,
	bl	__stack_chk_fail		//
.L14:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 112]	//,,
	add	sp, sp, 128	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
