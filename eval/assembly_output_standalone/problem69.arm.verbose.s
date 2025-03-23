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
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// arr, arr
	str	w1, [sp, 20]	// length, length
	str	x2, [sp, 8]	// output, output
// eval/problem69//code.c:5:     int smallestEven = INT_MAX;
	mov	w0, 2147483647	// tmp108,
	str	w0, [sp, 36]	// tmp108, smallestEven
// eval/problem69//code.c:6:     int index = -1;
	mov	w0, -1	// tmp109,
	str	w0, [sp, 40]	// tmp109, index
// eval/problem69//code.c:8:     for (int i = 0; i < length; ++i) {
	str	wzr, [sp, 44]	//, i
// eval/problem69//code.c:8:     for (int i = 0; i < length; ++i) {
	b	.L2		//
.L5:
// eval/problem69//code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp110, arr
	add	x0, x1, x0	// _3, tmp110, _2
	ldr	w0, [x0]	// _4, *_3
// eval/problem69//code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	and	w0, w0, 1	// _6, _5,
// eval/problem69//code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	cmp	w0, 0	// _6,
	bne	.L3		//,
// eval/problem69//code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	ldrsw	x0, [sp, 44]	// _7, i
	lsl	x0, x0, 2	// _8, _7,
	ldr	x1, [sp, 24]	// tmp111, arr
	add	x0, x1, x0	// _9, tmp111, _8
	ldr	w0, [x0]	// _10, *_9
// eval/problem69//code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	ldr	w1, [sp, 36]	// tmp112, smallestEven
	cmp	w1, w0	// tmp112, _10
	bgt	.L4		//,
// eval/problem69//code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	ldr	w0, [sp, 40]	// tmp113, index
	cmn	w0, #1	// tmp113,
	bne	.L3		//,
.L4:
// eval/problem69//code.c:10:             smallestEven = arr[i];
	ldrsw	x0, [sp, 44]	// _11, i
	lsl	x0, x0, 2	// _12, _11,
	ldr	x1, [sp, 24]	// tmp114, arr
	add	x0, x1, x0	// _13, tmp114, _12
// eval/problem69//code.c:10:             smallestEven = arr[i];
	ldr	w0, [x0]	// tmp115, *_13
	str	w0, [sp, 36]	// tmp115, smallestEven
// eval/problem69//code.c:11:             index = i;
	ldr	w0, [sp, 44]	// tmp116, i
	str	w0, [sp, 40]	// tmp116, index
.L3:
// eval/problem69//code.c:8:     for (int i = 0; i < length; ++i) {
	ldr	w0, [sp, 44]	// tmp118, i
	add	w0, w0, 1	// tmp117, tmp118,
	str	w0, [sp, 44]	// tmp117, i
.L2:
// eval/problem69//code.c:8:     for (int i = 0; i < length; ++i) {
	ldr	w1, [sp, 44]	// tmp119, i
	ldr	w0, [sp, 20]	// tmp120, length
	cmp	w1, w0	// tmp119, tmp120
	blt	.L5		//,
// eval/problem69//code.c:15:     if (index == -1) {
	ldr	w0, [sp, 40]	// tmp121, index
	cmn	w0, #1	// tmp121,
	bne	.L6		//,
// eval/problem69//code.c:16:         return NULL;
	mov	x0, 0	// _20,
	b	.L7		//
.L6:
// eval/problem69//code.c:19:     output[0] = smallestEven;
	ldr	x0, [sp, 8]	// tmp122, output
	ldr	w1, [sp, 36]	// tmp123, smallestEven
	str	w1, [x0]	// tmp123, *output_27(D)
// eval/problem69//code.c:20:     output[1] = index;
	ldr	x0, [sp, 8]	// tmp124, output
	add	x0, x0, 4	// _14, tmp124,
// eval/problem69//code.c:20:     output[1] = index;
	ldr	w1, [sp, 40]	// tmp125, index
	str	w1, [x0]	// tmp125, *_14
// eval/problem69//code.c:21:     return output;
	ldr	x0, [sp, 8]	// _20, output
.L7:
// eval/problem69//code.c:22: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
