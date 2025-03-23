	.arch armv8-a
	.file	"code.c"
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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -48
	str	x0, [sp, 40]	// lst, lst
	str	w1, [sp, 36]	// size, size
// eval/problem134//code.c:5:     int sum = 0;
	str	wzr, [sp, 56]	//, sum
// eval/problem134//code.c:6:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 60]	//, i
// eval/problem134//code.c:6:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L3:
// eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	ldrsw	x0, [sp, 60]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 40]	// tmp109, lst
	add	x0, x1, x0	// _3, tmp109, _2
	ldr	s0, [x0]	// _4, *_3
// eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvt	d0, s0	// _5, _4
	bl	ceil		//
// eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvtzs	w19, d0	// _7, _6
// eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	ldrsw	x0, [sp, 60]	// _8, i
	lsl	x0, x0, 2	// _9, _8,
	ldr	x1, [sp, 40]	// tmp110, lst
	add	x0, x1, x0	// _10, tmp110, _9
	ldr	s0, [x0]	// _11, *_10
// eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvt	d0, s0	// _12, _11
	bl	ceil		//
// eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	fcvtzs	w0, d0	// _14, _13
// eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	mul	w0, w19, w0	// _15, _7, _14
// eval/problem134//code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	ldr	w1, [sp, 56]	// tmp112, sum
	add	w0, w1, w0	// tmp111, tmp112, _15
	str	w0, [sp, 56]	// tmp111, sum
// eval/problem134//code.c:6:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 60]	// tmp114, i
	add	w0, w0, 1	// tmp113, tmp114,
	str	w0, [sp, 60]	// tmp113, i
.L2:
// eval/problem134//code.c:6:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 60]	// tmp115, i
	ldr	w0, [sp, 36]	// tmp116, size
	cmp	w1, w0	// tmp115, tmp116
	blt	.L3		//,
// eval/problem134//code.c:9:     return sum;
	ldr	w0, [sp, 56]	// _21, sum
// eval/problem134//code.c:10: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
