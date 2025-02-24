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
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// lst, lst
	str	w1, [sp, 20]	// size, size
// code.c:5:     int *freq = (int *)calloc(size + 1, sizeof(int));
	ldr	w0, [sp, 20]	// tmp124, size
	add	w0, w0, 1	// _1, tmp124,
// code.c:5:     int *freq = (int *)calloc(size + 1, sizeof(int));
	sxtw	x0, w0	// _2, _1
	mov	x1, 4	//,
	bl	calloc		//
	str	x0, [sp, 40]	// tmp125, freq
// code.c:6:     int max = -1;
	mov	w0, -1	// tmp126,
	str	w0, [sp, 32]	// tmp126, max
// code.c:8:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 36]	//, i
// code.c:8:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L4:
// code.c:9:         freq[lst[i]]++;
	ldrsw	x0, [sp, 36]	// _3, i
	lsl	x0, x0, 2	// _4, _3,
	ldr	x1, [sp, 24]	// tmp127, lst
	add	x0, x1, x0	// _5, tmp127, _4
	ldr	w0, [x0]	// _6, *_5
	sxtw	x0, w0	// _7, _6
// code.c:9:         freq[lst[i]]++;
	lsl	x0, x0, 2	// _8, _7,
	ldr	x1, [sp, 40]	// tmp128, freq
	add	x0, x1, x0	// _9, tmp128, _8
	ldr	w1, [x0]	// _10, *_9
// code.c:9:         freq[lst[i]]++;
	add	w1, w1, 1	// _11, _10,
	str	w1, [x0]	// _11, *_9
// code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	ldrsw	x0, [sp, 36]	// _12, i
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 24]	// tmp129, lst
	add	x0, x1, x0	// _14, tmp129, _13
	ldr	w0, [x0]	// _15, *_14
	sxtw	x0, w0	// _16, _15
// code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	lsl	x0, x0, 2	// _17, _16,
	ldr	x1, [sp, 40]	// tmp130, freq
	add	x0, x1, x0	// _18, tmp130, _17
	ldr	w1, [x0]	// _19, *_18
// code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	ldrsw	x0, [sp, 36]	// _20, i
	lsl	x0, x0, 2	// _21, _20,
	ldr	x2, [sp, 24]	// tmp131, lst
	add	x0, x2, x0	// _22, tmp131, _21
	ldr	w0, [x0]	// _23, *_22
// code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	cmp	w1, w0	// _19, _23
	blt	.L3		//,
// code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	ldrsw	x0, [sp, 36]	// _24, i
	lsl	x0, x0, 2	// _25, _24,
	ldr	x1, [sp, 24]	// tmp132, lst
	add	x0, x1, x0	// _26, tmp132, _25
	ldr	w0, [x0]	// _27, *_26
// code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	ldr	w1, [sp, 32]	// tmp133, max
	cmp	w1, w0	// tmp133, _27
	bge	.L3		//,
// code.c:11:             max = lst[i];
	ldrsw	x0, [sp, 36]	// _28, i
	lsl	x0, x0, 2	// _29, _28,
	ldr	x1, [sp, 24]	// tmp134, lst
	add	x0, x1, x0	// _30, tmp134, _29
// code.c:11:             max = lst[i];
	ldr	w0, [x0]	// tmp135, *_30
	str	w0, [sp, 32]	// tmp135, max
.L3:
// code.c:8:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 36]	// tmp137, i
	add	w0, w0, 1	// tmp136, tmp137,
	str	w0, [sp, 36]	// tmp136, i
.L2:
// code.c:8:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 36]	// tmp138, i
	ldr	w0, [sp, 20]	// tmp139, size
	cmp	w1, w0	// tmp138, tmp139
	blt	.L4		//,
// code.c:15:     free(freq);
	ldr	x0, [sp, 40]	//, freq
	bl	free		//
// code.c:16:     return max;
	ldr	w0, [sp, 32]	// _42, max
// code.c:17: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
