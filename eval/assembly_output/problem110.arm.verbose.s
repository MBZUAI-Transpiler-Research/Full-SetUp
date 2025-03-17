	.arch armv8-a
	.file	"problem110.c"
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
	str	x0, [sp, 8]	// arr, arr
	str	w1, [sp, 4]	// size, size
// problem110.c:5:     int num = 0;
	str	wzr, [sp, 24]	//, num
// problem110.c:6:     if (size == 0) return true;
	ldr	w0, [sp, 4]	// tmp109, size
	cmp	w0, 0	// tmp109,
	bne	.L2		//,
// problem110.c:6:     if (size == 0) return true;
	mov	w0, 1	// _20,
// problem110.c:6:     if (size == 0) return true;
	b	.L3		//
.L2:
// problem110.c:7:     for (int i = 1; i < size; i++)
	mov	w0, 1	// tmp110,
	str	w0, [sp, 28]	// tmp110, i
// problem110.c:7:     for (int i = 1; i < size; i++)
	b	.L4		//
.L6:
// problem110.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp111, arr
	add	x0, x1, x0	// _3, tmp111, _2
	ldr	w1, [x0]	// _4, *_3
// problem110.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	ldrsw	x0, [sp, 28]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	sub	x0, x0, #4	// _7, _6,
	ldr	x2, [sp, 8]	// tmp112, arr
	add	x0, x2, x0	// _8, tmp112, _7
	ldr	w0, [x0]	// _9, *_8
// problem110.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	cmp	w1, w0	// _4, _9
	bge	.L5		//,
// problem110.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	ldr	w0, [sp, 24]	// tmp114, num
	add	w0, w0, 1	// tmp113, tmp114,
	str	w0, [sp, 24]	// tmp113, num
.L5:
// problem110.c:7:     for (int i = 1; i < size; i++)
	ldr	w0, [sp, 28]	// tmp116, i
	add	w0, w0, 1	// tmp115, tmp116,
	str	w0, [sp, 28]	// tmp115, i
.L4:
// problem110.c:7:     for (int i = 1; i < size; i++)
	ldr	w1, [sp, 28]	// tmp117, i
	ldr	w0, [sp, 4]	// tmp118, size
	cmp	w1, w0	// tmp117, tmp118
	blt	.L6		//,
// problem110.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	ldrsw	x0, [sp, 4]	// _10, size
	lsl	x0, x0, 2	// _11, _10,
	sub	x0, x0, #4	// _12, _11,
	ldr	x1, [sp, 8]	// tmp119, arr
	add	x0, x1, x0	// _13, tmp119, _12
	ldr	w1, [x0]	// _14, *_13
// problem110.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	ldr	x0, [sp, 8]	// tmp120, arr
	ldr	w0, [x0]	// _15, *arr_24(D)
// problem110.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	cmp	w1, w0	// _14, _15
	ble	.L7		//,
// problem110.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	ldr	w0, [sp, 24]	// tmp122, num
	add	w0, w0, 1	// tmp121, tmp122,
	str	w0, [sp, 24]	// tmp121, num
.L7:
// problem110.c:10:     if (num < 2) return true;
	ldr	w0, [sp, 24]	// tmp123, num
	cmp	w0, 1	// tmp123,
	bgt	.L8		//,
// problem110.c:10:     if (num < 2) return true;
	mov	w0, 1	// _20,
// problem110.c:10:     if (num < 2) return true;
	b	.L3		//
.L8:
// problem110.c:11:     return false;
	mov	w0, 0	// _20,
.L3:
// problem110.c:12: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC3:
	.string	"problem110.c"
	.align	3
.LC4:
	.string	"func0((int[]){3, 4, 5, 1, 2}, 5) == true"
	.align	3
.LC5:
	.string	"func0((int[]){3, 5, 10, 1, 2}, 5) == true"
	.align	3
.LC6:
	.string	"func0((int[]){4, 3, 1, 2}, 4) == false"
	.align	3
.LC7:
	.string	"func0((int[]){3, 5, 4, 1, 2}, 5) == false"
	.align	3
.LC8:
	.string	"func0((int[]){}, 0) == true"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, 32]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 32	//,,
// problem110.c:19: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp101,
	ldr	x1, [x0]	// tmp158,
	str	x1, [sp, 24]	// tmp158, D.4903
	mov	x1, 0	// tmp158
// problem110.c:20:     assert(func0((int[]){3, 4, 5, 1, 2}, 5) == true);
	adrp	x0, .LC0	// tmp103,
	add	x0, x0, :lo12:.LC0	// tmp102, tmp103,
	mov	x2, sp	// tmp104,
	mov	x3, x0	// tmp105, tmp102
	ldp	x0, x1, [x3]	// tmp106,
	stp	x0, x1, [x2]	// tmp106, MEM[(int[5] *)_38]
	ldr	w0, [x3, 16]	// tmp107,
	str	w0, [x2, 16]	// tmp107, MEM[(int[5] *)_38]
	mov	x0, sp	// tmp108,
	mov	w1, 5	//,
	bl	func0		//
	and	w0, w0, 255	// _1, tmp109
// problem110.c:20:     assert(func0((int[]){3, 4, 5, 1, 2}, 5) == true);
	and	w0, w0, 1	// tmp110, _1,
	cmp	w0, 0	// tmp110,
	bne	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp111,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp111,
	mov	w2, 20	//,
	adrp	x0, .LC3	// tmp112,
	add	x1, x0, :lo12:.LC3	//, tmp112,
	adrp	x0, .LC4	// tmp113,
	add	x0, x0, :lo12:.LC4	//, tmp113,
	bl	__assert_fail		//
.L10:
// problem110.c:21:     assert(func0((int[]){3, 5, 10, 1, 2}, 5) == true);
	adrp	x0, .LC1	// tmp115,
	add	x0, x0, :lo12:.LC1	// tmp114, tmp115,
	mov	x2, sp	// tmp116,
	mov	x3, x0	// tmp117, tmp114
	ldp	x0, x1, [x3]	// tmp118,
	stp	x0, x1, [x2]	// tmp118, MEM[(int[5] *)_38]
	ldr	w0, [x3, 16]	// tmp119,
	str	w0, [x2, 16]	// tmp119, MEM[(int[5] *)_38]
	mov	x0, sp	// tmp120,
	mov	w1, 5	//,
	bl	func0		//
	and	w0, w0, 255	// _2, tmp121
// problem110.c:21:     assert(func0((int[]){3, 5, 10, 1, 2}, 5) == true);
	and	w0, w0, 1	// tmp122, _2,
	cmp	w0, 0	// tmp122,
	bne	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp123,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp123,
	mov	w2, 21	//,
	adrp	x0, .LC3	// tmp124,
	add	x1, x0, :lo12:.LC3	//, tmp124,
	adrp	x0, .LC5	// tmp125,
	add	x0, x0, :lo12:.LC5	//, tmp125,
	bl	__assert_fail		//
.L11:
// problem110.c:22:     assert(func0((int[]){4, 3, 1, 2}, 4) == false);
	mov	w0, 4	// tmp126,
	str	w0, [sp]	// tmp126, MEM[(int[4] *)_38][0]
	mov	w0, 3	// tmp127,
	str	w0, [sp, 4]	// tmp127, MEM[(int[4] *)_38][1]
	mov	w0, 1	// tmp128,
	str	w0, [sp, 8]	// tmp128, MEM[(int[4] *)_38][2]
	mov	w0, 2	// tmp129,
	str	w0, [sp, 12]	// tmp129, MEM[(int[4] *)_38][3]
	mov	x0, sp	// tmp130,
	mov	w1, 4	//,
	bl	func0		//
	and	w0, w0, 255	// _3, tmp131
// problem110.c:22:     assert(func0((int[]){4, 3, 1, 2}, 4) == false);
	eor	w0, w0, 1	// tmp132, _3,
	and	w0, w0, 255	// _4, tmp132
	and	w0, w0, 1	// tmp133, _4,
	cmp	w0, 0	// tmp133,
	bne	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp134,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp134,
	mov	w2, 22	//,
	adrp	x0, .LC3	// tmp135,
	add	x1, x0, :lo12:.LC3	//, tmp135,
	adrp	x0, .LC6	// tmp136,
	add	x0, x0, :lo12:.LC6	//, tmp136,
	bl	__assert_fail		//
.L12:
// problem110.c:23:     assert(func0((int[]){3, 5, 4, 1, 2}, 5) == false);
	adrp	x0, .LC2	// tmp138,
	add	x0, x0, :lo12:.LC2	// tmp137, tmp138,
	mov	x2, sp	// tmp139,
	mov	x3, x0	// tmp140, tmp137
	ldp	x0, x1, [x3]	// tmp141,
	stp	x0, x1, [x2]	// tmp141, MEM[(int[5] *)_38]
	ldr	w0, [x3, 16]	// tmp142,
	str	w0, [x2, 16]	// tmp142, MEM[(int[5] *)_38]
	mov	x0, sp	// tmp143,
	mov	w1, 5	//,
	bl	func0		//
	and	w0, w0, 255	// _5, tmp144
// problem110.c:23:     assert(func0((int[]){3, 5, 4, 1, 2}, 5) == false);
	eor	w0, w0, 1	// tmp145, _5,
	and	w0, w0, 255	// _6, tmp145
	and	w0, w0, 1	// tmp146, _6,
	cmp	w0, 0	// tmp146,
	bne	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp147,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp147,
	mov	w2, 23	//,
	adrp	x0, .LC3	// tmp148,
	add	x1, x0, :lo12:.LC3	//, tmp148,
	adrp	x0, .LC7	// tmp149,
	add	x0, x0, :lo12:.LC7	//, tmp149,
	bl	__assert_fail		//
.L13:
// problem110.c:24:     assert(func0((int[]){}, 0) == true);
	mov	x0, sp	// tmp150,
	mov	w1, 0	//,
	bl	func0		//
	and	w0, w0, 255	// _7, tmp151
// problem110.c:24:     assert(func0((int[]){}, 0) == true);
	and	w0, w0, 1	// tmp152, _7,
	cmp	w0, 0	// tmp152,
	bne	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp153,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp153,
	mov	w2, 24	//,
	adrp	x0, .LC3	// tmp154,
	add	x1, x0, :lo12:.LC3	//, tmp154,
	adrp	x0, .LC8	// tmp155,
	add	x0, x0, :lo12:.LC8	//, tmp155,
	bl	__assert_fail		//
.L14:
// problem110.c:26:     return 0;
	mov	w0, 0	// _31,
// problem110.c:27: }
	mov	w1, w0	// <retval>, _31
	adrp	x0, :got:__stack_chk_guard	// tmp157,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp157,
	ldr	x3, [sp, 24]	// tmp159, D.4903
	ldr	x2, [x0]	// tmp160,
	subs	x3, x3, x2	// tmp159, tmp160
	mov	x2, 0	// tmp160
	beq	.L16		//,
	bl	__stack_chk_fail		//
.L16:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 32]	//,,
	add	sp, sp, 48	//,,
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
	.word	3
	.word	4
	.word	5
	.word	1
	.word	2
	.align	3
.LC1:
	.word	3
	.word	5
	.word	10
	.word	1
	.word	2
	.align	3
.LC2:
	.word	3
	.word	5
	.word	4
	.word	1
	.word	2
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
