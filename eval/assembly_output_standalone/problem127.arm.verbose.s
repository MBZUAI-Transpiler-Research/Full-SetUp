	.arch armv8-a
	.file	"code.c"
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
// eval/problem127//code.c:5:     if (lst_size == 0) return true;
	ldr	w0, [sp, 4]	// tmp121, lst_size
	cmp	w0, 0	// tmp121,
	bne	.L2		//,
// eval/problem127//code.c:5:     if (lst_size == 0) return true;
	mov	w0, 1	// _29,
// eval/problem127//code.c:5:     if (lst_size == 0) return true;
	b	.L3		//
.L2:
// eval/problem127//code.c:7:     for (int i = 1; i < lst_size; i++) {
	mov	w0, 1	// tmp122,
	str	w0, [sp, 28]	// tmp122, i
// eval/problem127//code.c:7:     for (int i = 1; i < lst_size; i++) {
	b	.L4		//
.L7:
// eval/problem127//code.c:8:         if (lst[i] < lst[i - 1]) return false;
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp123, lst
	add	x0, x1, x0	// _3, tmp123, _2
	ldr	w1, [x0]	// _4, *_3
// eval/problem127//code.c:8:         if (lst[i] < lst[i - 1]) return false;
	ldrsw	x0, [sp, 28]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	sub	x0, x0, #4	// _7, _6,
	ldr	x2, [sp, 8]	// tmp124, lst
	add	x0, x2, x0	// _8, tmp124, _7
	ldr	w0, [x0]	// _9, *_8
// eval/problem127//code.c:8:         if (lst[i] < lst[i - 1]) return false;
	cmp	w1, w0	// _4, _9
	bge	.L5		//,
// eval/problem127//code.c:8:         if (lst[i] < lst[i - 1]) return false;
	mov	w0, 0	// _29,
// eval/problem127//code.c:8:         if (lst[i] < lst[i - 1]) return false;
	b	.L3		//
.L5:
// eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	ldr	w0, [sp, 28]	// tmp125, i
	cmp	w0, 1	// tmp125,
	ble	.L6		//,
// eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	ldrsw	x0, [sp, 28]	// _10, i
	lsl	x0, x0, 2	// _11, _10,
	ldr	x1, [sp, 8]	// tmp126, lst
	add	x0, x1, x0	// _12, tmp126, _11
	ldr	w1, [x0]	// _13, *_12
// eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	ldrsw	x0, [sp, 28]	// _14, i
	lsl	x0, x0, 2	// _15, _14,
	sub	x0, x0, #4	// _16, _15,
	ldr	x2, [sp, 8]	// tmp127, lst
	add	x0, x2, x0	// _17, tmp127, _16
	ldr	w0, [x0]	// _18, *_17
// eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	cmp	w1, w0	// _13, _18
	bne	.L6		//,
// eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	ldrsw	x0, [sp, 28]	// _19, i
	lsl	x0, x0, 2	// _20, _19,
	ldr	x1, [sp, 8]	// tmp128, lst
	add	x0, x1, x0	// _21, tmp128, _20
	ldr	w1, [x0]	// _22, *_21
// eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	ldrsw	x0, [sp, 28]	// _23, i
	lsl	x0, x0, 2	// _24, _23,
	sub	x0, x0, #8	// _25, _24,
	ldr	x2, [sp, 8]	// tmp129, lst
	add	x0, x2, x0	// _26, tmp129, _25
	ldr	w0, [x0]	// _27, *_26
// eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	cmp	w1, w0	// _22, _27
	bne	.L6		//,
// eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	mov	w0, 0	// _29,
// eval/problem127//code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	b	.L3		//
.L6:
// eval/problem127//code.c:7:     for (int i = 1; i < lst_size; i++) {
	ldr	w0, [sp, 28]	// tmp131, i
	add	w0, w0, 1	// tmp130, tmp131,
	str	w0, [sp, 28]	// tmp130, i
.L4:
// eval/problem127//code.c:7:     for (int i = 1; i < lst_size; i++) {
	ldr	w1, [sp, 28]	// tmp132, i
	ldr	w0, [sp, 4]	// tmp133, lst_size
	cmp	w1, w0	// tmp132, tmp133
	blt	.L7		//,
// eval/problem127//code.c:11:     return true;
	mov	w0, 1	// _29,
.L3:
// eval/problem127//code.c:12: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
