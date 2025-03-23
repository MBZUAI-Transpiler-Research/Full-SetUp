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
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]	// lst, lst
	str	w1, [sp, 4]	// size, size
// eval/problem95//code.c:4:     int largest = 0, sum = 0, num, temp;
	str	wzr, [sp, 24]	//, largest
// eval/problem95//code.c:4:     int largest = 0, sum = 0, num, temp;
	str	wzr, [sp, 28]	//, sum
// eval/problem95//code.c:6:     for (int i = 0; i < size; ++i) {
	str	wzr, [sp, 32]	//, i
// eval/problem95//code.c:6:     for (int i = 0; i < size; ++i) {
	b	.L2		//
.L8:
// eval/problem95//code.c:7:         num = lst[i];
	ldrsw	x0, [sp, 32]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp100, lst
	add	x0, x1, x0	// _3, tmp100, _2
// eval/problem95//code.c:7:         num = lst[i];
	ldr	w0, [x0]	// tmp101, *_3
	str	w0, [sp, 44]	// tmp101, num
// eval/problem95//code.c:8:         if (num > 1) {
	ldr	w0, [sp, 44]	// tmp102, num
	cmp	w0, 1	// tmp102,
	ble	.L3		//,
// eval/problem95//code.c:9:             int prime = 1;
	mov	w0, 1	// tmp103,
	str	w0, [sp, 36]	// tmp103, prime
// eval/problem95//code.c:10:             for (int j = 2; j * j <= num; ++j) {
	mov	w0, 2	// tmp104,
	str	w0, [sp, 40]	// tmp104, j
// eval/problem95//code.c:10:             for (int j = 2; j * j <= num; ++j) {
	b	.L4		//
.L7:
// eval/problem95//code.c:11:                 if (num % j == 0) {
	ldr	w0, [sp, 44]	// tmp105, num
	ldr	w1, [sp, 40]	// tmp118, j
	sdiv	w2, w0, w1	// tmp117, tmp105, tmp118
	ldr	w1, [sp, 40]	// tmp120, j
	mul	w1, w2, w1	// tmp119, tmp117, tmp120
	sub	w0, w0, w1	// _4, tmp105, tmp119
// eval/problem95//code.c:11:                 if (num % j == 0) {
	cmp	w0, 0	// _4,
	bne	.L5		//,
// eval/problem95//code.c:12:                     prime = 0;
	str	wzr, [sp, 36]	//, prime
// eval/problem95//code.c:13:                     break;
	b	.L6		//
.L5:
// eval/problem95//code.c:10:             for (int j = 2; j * j <= num; ++j) {
	ldr	w0, [sp, 40]	// tmp122, j
	add	w0, w0, 1	// tmp121, tmp122,
	str	w0, [sp, 40]	// tmp121, j
.L4:
// eval/problem95//code.c:10:             for (int j = 2; j * j <= num; ++j) {
	ldr	w0, [sp, 40]	// tmp123, j
	mul	w0, w0, w0	// _5, tmp123, tmp123
// eval/problem95//code.c:10:             for (int j = 2; j * j <= num; ++j) {
	ldr	w1, [sp, 44]	// tmp124, num
	cmp	w1, w0	// tmp124, _5
	bge	.L7		//,
.L6:
// eval/problem95//code.c:16:             if (prime) {
	ldr	w0, [sp, 36]	// tmp125, prime
	cmp	w0, 0	// tmp125,
	beq	.L3		//,
// eval/problem95//code.c:17:                 largest = num > largest ? num : largest;
	ldr	w0, [sp, 44]	// tmp127, num
	ldr	w2, [sp, 24]	// tmp128, largest
	ldr	w1, [sp, 24]	// tmp129, largest
	cmp	w2, w0	// tmp128, tmp127
	csel	w0, w1, w0, ge	// tmp126, tmp129, tmp127,
	str	w0, [sp, 24]	// tmp126, largest
.L3:
// eval/problem95//code.c:6:     for (int i = 0; i < size; ++i) {
	ldr	w0, [sp, 32]	// tmp131, i
	add	w0, w0, 1	// tmp130, tmp131,
	str	w0, [sp, 32]	// tmp130, i
.L2:
// eval/problem95//code.c:6:     for (int i = 0; i < size; ++i) {
	ldr	w1, [sp, 32]	// tmp132, i
	ldr	w0, [sp, 4]	// tmp133, size
	cmp	w1, w0	// tmp132, tmp133
	blt	.L8		//,
// eval/problem95//code.c:22:     while (largest > 0) {
	b	.L9		//
.L10:
// eval/problem95//code.c:23:         sum += largest % 10;
	ldr	w2, [sp, 24]	// tmp134, largest
	mov	w0, 26215	// tmp136,
	movk	w0, 0x6666, lsl 16	// tmp136,,
	smull	x0, w2, w0	// tmp135, tmp134, tmp136
	lsr	x0, x0, 32	// tmp137, tmp135,
	asr	w1, w0, 2	// tmp138, tmp137,
	asr	w0, w2, 31	// tmp139, tmp134,
	sub	w1, w1, w0	// _6, tmp138, tmp139
	mov	w0, w1	// tmp140, _6
	lsl	w0, w0, 2	// tmp141, tmp140,
	add	w0, w0, w1	// tmp140, tmp140, _6
	lsl	w0, w0, 1	// tmp142, tmp140,
	sub	w1, w2, w0	// _6, tmp134, tmp140
// eval/problem95//code.c:23:         sum += largest % 10;
	ldr	w0, [sp, 28]	// tmp144, sum
	add	w0, w0, w1	// tmp143, tmp144, _6
	str	w0, [sp, 28]	// tmp143, sum
// eval/problem95//code.c:24:         largest /= 10;
	ldr	w0, [sp, 24]	// tmp146, largest
	mov	w1, 26215	// tmp148,
	movk	w1, 0x6666, lsl 16	// tmp148,,
	smull	x1, w0, w1	// tmp147, tmp146, tmp148
	lsr	x1, x1, 32	// tmp149, tmp147,
	asr	w1, w1, 2	// tmp150, tmp149,
	asr	w0, w0, 31	// tmp151, tmp146,
	sub	w0, w1, w0	// tmp145, tmp150, tmp151
	str	w0, [sp, 24]	// tmp145, largest
.L9:
// eval/problem95//code.c:22:     while (largest > 0) {
	ldr	w0, [sp, 24]	// tmp152, largest
	cmp	w0, 0	// tmp152,
	bgt	.L10		//,
// eval/problem95//code.c:27:     return sum;
	ldr	w0, [sp, 28]	// _18, sum
// eval/problem95//code.c:28: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
