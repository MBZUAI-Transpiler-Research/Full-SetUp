	.arch armv8-a
	.file	"problem160.c"
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
	str	w0, [sp, 28]	// number, number
	str	w1, [sp, 24]	// need, need
	str	w2, [sp, 20]	// remaining, remaining
	str	x3, [sp, 8]	// result, result
// problem160.c:4:     if (need > remaining) {
	ldr	w1, [sp, 24]	// tmp97, need
	ldr	w0, [sp, 20]	// tmp98, remaining
	cmp	w1, w0	// tmp97, tmp98
	ble	.L2		//,
// problem160.c:5:         result[0] = number + remaining;
	ldr	w1, [sp, 28]	// tmp99, number
	ldr	w0, [sp, 20]	// tmp100, remaining
	add	w1, w1, w0	// _1, tmp99, tmp100
// problem160.c:5:         result[0] = number + remaining;
	ldr	x0, [sp, 8]	// tmp101, result
	str	w1, [x0]	// _1, *result_11(D)
// problem160.c:6:         result[1] = 0;
	ldr	x0, [sp, 8]	// tmp102, result
	add	x0, x0, 4	// _2, tmp102,
// problem160.c:6:         result[1] = 0;
	str	wzr, [x0]	//, *_2
// problem160.c:11: }
	b	.L4		//
.L2:
// problem160.c:8:         result[0] = number + need;
	ldr	w1, [sp, 28]	// tmp103, number
	ldr	w0, [sp, 24]	// tmp104, need
	add	w1, w1, w0	// _3, tmp103, tmp104
// problem160.c:8:         result[0] = number + need;
	ldr	x0, [sp, 8]	// tmp105, result
	str	w1, [x0]	// _3, *result_11(D)
// problem160.c:9:         result[1] = remaining - need;
	ldr	x0, [sp, 8]	// tmp106, result
	add	x0, x0, 4	// _4, tmp106,
// problem160.c:9:         result[1] = remaining - need;
	ldr	w2, [sp, 20]	// tmp107, remaining
	ldr	w1, [sp, 24]	// tmp108, need
	sub	w1, w2, w1	// _5, tmp107, tmp108
// problem160.c:9:         result[1] = remaining - need;
	str	w1, [x0]	// _5, *_4
.L4:
// problem160.c:11: }
	nop	
	add	sp, sp, 32	//,,
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
// problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	ldr	x0, [sp, 8]	// tmp100, a
	ldr	w1, [x0]	// _1, *a_9(D)
// problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	ldr	x0, [sp]	// tmp101, b
	ldr	w0, [x0]	// _2, *b_10(D)
// problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	cmp	w1, w0	// _1, _2
	bne	.L6		//,
// problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	ldr	x0, [sp, 8]	// tmp102, a
	add	x0, x0, 4	// _3, tmp102,
	ldr	w1, [x0]	// _4, *_3
// problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	ldr	x0, [sp]	// tmp103, b
	add	x0, x0, 4	// _5, tmp103,
	ldr	w0, [x0]	// _6, *_5
// problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	cmp	w1, w0	// _4, _6
	bne	.L6		//,
// problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	mov	w0, 1	// iftmp.0_7,
// problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	b	.L8		//
.L6:
// problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	mov	w0, 0	// iftmp.0_7,
.L8:
// problem160.c:19: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"problem160.c"
	.align	3
.LC1:
	.string	"issame(result, (int[]){11, 4})"
	.align	3
.LC2:
	.string	"issame(result, (int[]){12, 1})"
	.align	3
.LC3:
	.string	"issame(result, (int[]){11, 0})"
	.align	3
.LC4:
	.string	"issame(result, (int[]){7, 0})"
	.align	3
.LC5:
	.string	"issame(result, (int[]){9, 2})"
	.align	3
.LC6:
	.string	"issame(result, (int[]){5, 0})"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, 32]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 32	//,,
// problem160.c:21: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp100,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp100,
	ldr	x1, [x0]	// tmp148,
	str	x1, [sp, 24]	// tmp148, D.4911
	mov	x1, 0	// tmp148
// problem160.c:24:     func0(5, 6, 10, result);
	add	x0, sp, 8	// tmp101,,
	mov	x3, x0	//, tmp101
	mov	w2, 10	//,
	mov	w1, 6	//,
	mov	w0, 5	//,
	bl	func0		//
// problem160.c:25:     assert(issame(result, (int[]){11, 4}));
	mov	w0, 11	// tmp102,
	str	w0, [sp, 16]	// tmp102, MEM[(int[2] *)_53][0]
	mov	w0, 4	// tmp103,
	str	w0, [sp, 20]	// tmp103, MEM[(int[2] *)_53][1]
	add	x1, sp, 16	// tmp104,,
	add	x0, sp, 8	// tmp105,,
	bl	issame		//
// problem160.c:25:     assert(issame(result, (int[]){11, 4}));
	cmp	w0, 0	// _1,
	bne	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp106,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp106,
	mov	w2, 25	//,
	adrp	x0, .LC0	// tmp107,
	add	x1, x0, :lo12:.LC0	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	__assert_fail		//
.L10:
// problem160.c:27:     func0(4, 8, 9, result);
	add	x0, sp, 8	// tmp109,,
	mov	x3, x0	//, tmp109
	mov	w2, 9	//,
	mov	w1, 8	//,
	mov	w0, 4	//,
	bl	func0		//
// problem160.c:28:     assert(issame(result, (int[]){12, 1}));
	mov	w0, 12	// tmp110,
	str	w0, [sp, 16]	// tmp110, MEM[(int[2] *)_53][0]
	mov	w0, 1	// tmp111,
	str	w0, [sp, 20]	// tmp111, MEM[(int[2] *)_53][1]
	add	x1, sp, 16	// tmp112,,
	add	x0, sp, 8	// tmp113,,
	bl	issame		//
// problem160.c:28:     assert(issame(result, (int[]){12, 1}));
	cmp	w0, 0	// _2,
	bne	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp114,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp114,
	mov	w2, 28	//,
	adrp	x0, .LC0	// tmp115,
	add	x1, x0, :lo12:.LC0	//, tmp115,
	adrp	x0, .LC2	// tmp116,
	add	x0, x0, :lo12:.LC2	//, tmp116,
	bl	__assert_fail		//
.L11:
// problem160.c:30:     func0(1, 10, 10, result);
	add	x0, sp, 8	// tmp117,,
	mov	x3, x0	//, tmp117
	mov	w2, 10	//,
	mov	w1, 10	//,
	mov	w0, 1	//,
	bl	func0		//
// problem160.c:31:     assert(issame(result, (int[]){11, 0}));
	mov	w0, 11	// tmp118,
	str	w0, [sp, 16]	// tmp118, MEM[(int[2] *)_53][0]
	str	wzr, [sp, 20]	//, MEM[(int[2] *)_53][1]
	add	x1, sp, 16	// tmp119,,
	add	x0, sp, 8	// tmp120,,
	bl	issame		//
// problem160.c:31:     assert(issame(result, (int[]){11, 0}));
	cmp	w0, 0	// _3,
	bne	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp121,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp121,
	mov	w2, 31	//,
	adrp	x0, .LC0	// tmp122,
	add	x1, x0, :lo12:.LC0	//, tmp122,
	adrp	x0, .LC3	// tmp123,
	add	x0, x0, :lo12:.LC3	//, tmp123,
	bl	__assert_fail		//
.L12:
// problem160.c:33:     func0(2, 11, 5, result);
	add	x0, sp, 8	// tmp124,,
	mov	x3, x0	//, tmp124
	mov	w2, 5	//,
	mov	w1, 11	//,
	mov	w0, 2	//,
	bl	func0		//
// problem160.c:34:     assert(issame(result, (int[]){7, 0}));
	mov	w0, 7	// tmp125,
	str	w0, [sp, 16]	// tmp125, MEM[(int[2] *)_53][0]
	str	wzr, [sp, 20]	//, MEM[(int[2] *)_53][1]
	add	x1, sp, 16	// tmp126,,
	add	x0, sp, 8	// tmp127,,
	bl	issame		//
// problem160.c:34:     assert(issame(result, (int[]){7, 0}));
	cmp	w0, 0	// _4,
	bne	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp128,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp128,
	mov	w2, 34	//,
	adrp	x0, .LC0	// tmp129,
	add	x1, x0, :lo12:.LC0	//, tmp129,
	adrp	x0, .LC4	// tmp130,
	add	x0, x0, :lo12:.LC4	//, tmp130,
	bl	__assert_fail		//
.L13:
// problem160.c:36:     func0(4, 5, 7, result);
	add	x0, sp, 8	// tmp131,,
	mov	x3, x0	//, tmp131
	mov	w2, 7	//,
	mov	w1, 5	//,
	mov	w0, 4	//,
	bl	func0		//
// problem160.c:37:     assert(issame(result, (int[]){9, 2}));
	mov	w0, 9	// tmp132,
	str	w0, [sp, 16]	// tmp132, MEM[(int[2] *)_53][0]
	mov	w0, 2	// tmp133,
	str	w0, [sp, 20]	// tmp133, MEM[(int[2] *)_53][1]
	add	x1, sp, 16	// tmp134,,
	add	x0, sp, 8	// tmp135,,
	bl	issame		//
// problem160.c:37:     assert(issame(result, (int[]){9, 2}));
	cmp	w0, 0	// _5,
	bne	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp136,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp136,
	mov	w2, 37	//,
	adrp	x0, .LC0	// tmp137,
	add	x1, x0, :lo12:.LC0	//, tmp137,
	adrp	x0, .LC5	// tmp138,
	add	x0, x0, :lo12:.LC5	//, tmp138,
	bl	__assert_fail		//
.L14:
// problem160.c:39:     func0(4, 5, 1, result);
	add	x0, sp, 8	// tmp139,,
	mov	x3, x0	//, tmp139
	mov	w2, 1	//,
	mov	w1, 5	//,
	mov	w0, 4	//,
	bl	func0		//
// problem160.c:40:     assert(issame(result, (int[]){5, 0}));
	mov	w0, 5	// tmp140,
	str	w0, [sp, 16]	// tmp140, MEM[(int[2] *)_53][0]
	str	wzr, [sp, 20]	//, MEM[(int[2] *)_53][1]
	add	x1, sp, 16	// tmp141,,
	add	x0, sp, 8	// tmp142,,
	bl	issame		//
// problem160.c:40:     assert(issame(result, (int[]){5, 0}));
	cmp	w0, 0	// _6,
	bne	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp143,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp143,
	mov	w2, 40	//,
	adrp	x0, .LC0	// tmp144,
	add	x1, x0, :lo12:.LC0	//, tmp144,
	adrp	x0, .LC6	// tmp145,
	add	x0, x0, :lo12:.LC6	//, tmp145,
	bl	__assert_fail		//
.L15:
// problem160.c:42:     return 0;
	mov	w0, 0	// _44,
// problem160.c:43: }
	mov	w1, w0	// <retval>, _44
	adrp	x0, :got:__stack_chk_guard	// tmp147,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp147,
	ldr	x3, [sp, 24]	// tmp149, D.4911
	ldr	x2, [x0]	// tmp150,
	subs	x3, x3, x2	// tmp149, tmp150
	mov	x2, 0	// tmp150
	beq	.L17		//,
	bl	__stack_chk_fail		//
.L17:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 32]	//,,
	add	sp, sp, 48	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
