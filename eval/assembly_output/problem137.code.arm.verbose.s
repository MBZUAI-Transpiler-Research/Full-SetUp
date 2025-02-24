	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
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
// code.c:4:     int maxneg = 0;
	str	wzr, [sp, 36]	//, maxneg
// code.c:5:     int minpos = 0;
	str	wzr, [sp, 40]	//, minpos
// code.c:6:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 44]	//, i
// code.c:6:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L7:
// code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp115, lst
	add	x0, x1, x0	// _3, tmp115, _2
	ldr	w0, [x0]	// _4, *_3
// code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	cmp	w0, 0	// _4,
	bge	.L3		//,
// code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	ldr	w0, [sp, 36]	// tmp116, maxneg
	cmp	w0, 0	// tmp116,
	beq	.L4		//,
// code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 24]	// tmp117, lst
	add	x0, x1, x0	// _7, tmp117, _6
	ldr	w0, [x0]	// _8, *_7
// code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	ldr	w1, [sp, 36]	// tmp118, maxneg
	cmp	w1, w0	// tmp118, _8
	bge	.L3		//,
.L4:
// code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	ldrsw	x0, [sp, 44]	// _9, i
	lsl	x0, x0, 2	// _10, _9,
	ldr	x1, [sp, 24]	// tmp119, lst
	add	x0, x1, x0	// _11, tmp119, _10
// code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	ldr	w0, [x0]	// tmp120, *_11
	str	w0, [sp, 36]	// tmp120, maxneg
.L3:
// code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	ldrsw	x0, [sp, 44]	// _12, i
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 24]	// tmp121, lst
	add	x0, x1, x0	// _14, tmp121, _13
	ldr	w0, [x0]	// _15, *_14
// code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	cmp	w0, 0	// _15,
	ble	.L5		//,
// code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	ldr	w0, [sp, 40]	// tmp122, minpos
	cmp	w0, 0	// tmp122,
	beq	.L6		//,
// code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	ldrsw	x0, [sp, 44]	// _16, i
	lsl	x0, x0, 2	// _17, _16,
	ldr	x1, [sp, 24]	// tmp123, lst
	add	x0, x1, x0	// _18, tmp123, _17
	ldr	w0, [x0]	// _19, *_18
// code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	ldr	w1, [sp, 40]	// tmp124, minpos
	cmp	w1, w0	// tmp124, _19
	ble	.L5		//,
.L6:
// code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	ldrsw	x0, [sp, 44]	// _20, i
	lsl	x0, x0, 2	// _21, _20,
	ldr	x1, [sp, 24]	// tmp125, lst
	add	x0, x1, x0	// _22, tmp125, _21
// code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	ldr	w0, [x0]	// tmp126, *_22
	str	w0, [sp, 40]	// tmp126, minpos
.L5:
// code.c:6:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 44]	// tmp128, i
	add	w0, w0, 1	// tmp127, tmp128,
	str	w0, [sp, 44]	// tmp127, i
.L2:
// code.c:6:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 44]	// tmp129, i
	ldr	w0, [sp, 20]	// tmp130, size
	cmp	w1, w0	// tmp129, tmp130
	blt	.L7		//,
// code.c:10:     result[0] = maxneg;
	ldr	x0, [sp, 8]	// tmp131, result
	ldr	w1, [sp, 36]	// tmp132, maxneg
	str	w1, [x0]	// tmp132, *result_34(D)
// code.c:11:     result[1] = minpos;
	ldr	x0, [sp, 8]	// tmp133, result
	add	x0, x0, 4	// _23, tmp133,
// code.c:11:     result[1] = minpos;
	ldr	w1, [sp, 40]	// tmp134, minpos
	str	w1, [x0]	// tmp134, *_23
// code.c:12: }
	nop	
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
