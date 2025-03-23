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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	str	d8, [sp, 24]	//,
	.cfi_offset 19, -48
	.cfi_offset 72, -40
	str	x0, [sp, 40]	// lst, lst
	str	w1, [sp, 36]	// lst_size, lst_size
// eval/problem152//code.c:5:     long long sum = 0;
	str	xzr, [sp, 56]	//, sum
// eval/problem152//code.c:6:     for (int i = 0; i < lst_size; i++) {
	str	wzr, [sp, 52]	//, i
// eval/problem152//code.c:6:     for (int i = 0; i < lst_size; i++) {
	b	.L2		//
.L6:
// eval/problem152//code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	ldrsw	x0, [sp, 52]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 40]	// tmp135, lst
	add	x0, x1, x0	// _3, tmp135, _2
	ldr	s0, [x0]	// _4, *_3
	fcvt	d8, s0	// _5, _4
// eval/problem152//code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	ldrsw	x0, [sp, 52]	// _6, i
	lsl	x0, x0, 2	// _7, _6,
	ldr	x1, [sp, 40]	// tmp136, lst
	add	x0, x1, x0	// _8, tmp136, _7
	ldr	s0, [x0]	// _9, *_8
// eval/problem152//code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fcvt	d0, s0	// _10, _9
	bl	round		//
// eval/problem152//code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fsub	d0, d8, d0	// _12, _5, _11
// eval/problem152//code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fabs	d0, d0	// _13, _12
// eval/problem152//code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	adrp	x0, .LC0	// tmp151,
	ldr	d1, [x0, #:lo12:.LC0]	// tmp137,
	fcmpe	d0, d1	// _13, tmp137
	bmi	.L8		//,
	b	.L3		//
.L8:
// eval/problem152//code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	ldrsw	x0, [sp, 52]	// _14, i
	lsl	x0, x0, 2	// _15, _14,
	ldr	x1, [sp, 40]	// tmp138, lst
	add	x0, x1, x0	// _16, tmp138, _15
	ldr	s0, [x0]	// _17, *_16
// eval/problem152//code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	fcmpe	s0, #0.0	// _17
	bgt	.L9		//,
	b	.L3		//
.L9:
// eval/problem152//code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	ldrsw	x0, [sp, 52]	// _18, i
	lsl	x0, x0, 2	// _19, _18,
	ldr	x1, [sp, 40]	// tmp139, lst
	add	x0, x1, x0	// _20, tmp139, _19
	ldr	s0, [x0]	// _21, *_20
// eval/problem152//code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	fcvt	d0, s0	// _22, _21
	bl	round		//
// eval/problem152//code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	fcvtzs	w0, d0	// _24, _23
// eval/problem152//code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	cmp	w0, 0	// _24,
	and	w0, w0, 1	// tmp140, _24,
	csneg	w0, w0, w0, ge	// _25, tmp140, tmp140,
// eval/problem152//code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	cmp	w0, 1	// _25,
	bne	.L3		//,
// eval/problem152//code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	ldrsw	x0, [sp, 52]	// _26, i
	lsl	x0, x0, 2	// _27, _26,
	ldr	x1, [sp, 40]	// tmp141, lst
	add	x0, x1, x0	// _28, tmp141, _27
	ldr	s0, [x0]	// _29, *_28
// eval/problem152//code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvt	d0, s0	// _30, _29
	bl	round		//
// eval/problem152//code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvtzs	w19, d0	// _32, _31
// eval/problem152//code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	ldrsw	x0, [sp, 52]	// _33, i
	lsl	x0, x0, 2	// _34, _33,
	ldr	x1, [sp, 40]	// tmp142, lst
	add	x0, x1, x0	// _35, tmp142, _34
	ldr	s0, [x0]	// _36, *_35
// eval/problem152//code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvt	d0, s0	// _37, _36
	bl	round		//
// eval/problem152//code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvtzs	w0, d0	// _39, _38
// eval/problem152//code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	mul	w0, w19, w0	// _40, _32, _39
	sxtw	x0, w0	// _41, _40
// eval/problem152//code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	ldr	x1, [sp, 56]	// tmp144, sum
	add	x0, x1, x0	// tmp143, tmp144, _41
	str	x0, [sp, 56]	// tmp143, sum
.L3:
// eval/problem152//code.c:6:     for (int i = 0; i < lst_size; i++) {
	ldr	w0, [sp, 52]	// tmp146, i
	add	w0, w0, 1	// tmp145, tmp146,
	str	w0, [sp, 52]	// tmp145, i
.L2:
// eval/problem152//code.c:6:     for (int i = 0; i < lst_size; i++) {
	ldr	w1, [sp, 52]	// tmp147, i
	ldr	w0, [sp, 36]	// tmp148, lst_size
	cmp	w1, w0	// tmp147, tmp148
	blt	.L6		//,
// eval/problem152//code.c:13:     return sum;
	ldr	x0, [sp, 56]	// _48, sum
// eval/problem152//code.c:14: }
	ldr	d8, [sp, 24]	//,
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
