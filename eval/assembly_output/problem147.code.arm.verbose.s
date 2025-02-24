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
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]	// nums, nums
	str	w1, [sp, 4]	// size, size
// code.c:5:     int num = 0;
	str	wzr, [sp, 28]	//, num
// code.c:6:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 32]	//, i
// code.c:6:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L6:
// code.c:7:         if (nums[i] > 10) {
	ldrsw	x0, [sp, 32]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp107, nums
	add	x0, x1, x0	// _3, tmp107, _2
	ldr	w0, [x0]	// _4, *_3
// code.c:7:         if (nums[i] > 10) {
	cmp	w0, 10	// _4,
	ble	.L3		//,
// code.c:9:             last = nums[i] % 10;
	ldrsw	x0, [sp, 32]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 8]	// tmp108, nums
	add	x0, x1, x0	// _7, tmp108, _6
	ldr	w1, [x0]	// _8, *_7
// code.c:9:             last = nums[i] % 10;
	mov	w0, 26215	// tmp110,
	movk	w0, 0x6666, lsl 16	// tmp110,,
	smull	x0, w1, w0	// tmp109, _8, tmp110
	lsr	x0, x0, 32	// tmp111, tmp109,
	asr	w2, w0, 2	// tmp112, tmp111,
	asr	w0, w1, 31	// tmp113, _8,
	sub	w2, w2, w0	// tmp114, tmp112, tmp113
	mov	w0, w2	// tmp115, tmp114
	lsl	w0, w0, 2	// tmp116, tmp115,
	add	w0, w0, w2	// tmp115, tmp115, tmp114
	lsl	w0, w0, 1	// tmp117, tmp115,
	sub	w0, w1, w0	// tmp118, _8, tmp115
	str	w0, [sp, 40]	// tmp118, last
// code.c:10:             int n = nums[i];
	ldrsw	x0, [sp, 32]	// _9, i
	lsl	x0, x0, 2	// _10, _9,
	ldr	x1, [sp, 8]	// tmp119, nums
	add	x0, x1, x0	// _11, tmp119, _10
// code.c:10:             int n = nums[i];
	ldr	w0, [x0]	// tmp120, *_11
	str	w0, [sp, 36]	// tmp120, n
// code.c:11:             while (n >= 10) {
	b	.L4		//
.L5:
// code.c:12:                 n /= 10;
	ldr	w0, [sp, 36]	// tmp122, n
	mov	w1, 26215	// tmp124,
	movk	w1, 0x6666, lsl 16	// tmp124,,
	smull	x1, w0, w1	// tmp123, tmp122, tmp124
	lsr	x1, x1, 32	// tmp125, tmp123,
	asr	w1, w1, 2	// tmp126, tmp125,
	asr	w0, w0, 31	// tmp127, tmp122,
	sub	w0, w1, w0	// tmp121, tmp126, tmp127
	str	w0, [sp, 36]	// tmp121, n
.L4:
// code.c:11:             while (n >= 10) {
	ldr	w0, [sp, 36]	// tmp128, n
	cmp	w0, 9	// tmp128,
	bgt	.L5		//,
// code.c:14:             first = n;
	ldr	w0, [sp, 36]	// tmp129, n
	str	w0, [sp, 44]	// tmp129, first
// code.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	ldr	w0, [sp, 44]	// tmp130, first
	cmp	w0, 0	// tmp130,
	and	w0, w0, 1	// tmp131, tmp130,
	csneg	w0, w0, w0, ge	// _12, tmp131, tmp131,
// code.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	cmp	w0, 1	// _12,
	bne	.L3		//,
// code.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	ldr	w0, [sp, 40]	// tmp132, last
	cmp	w0, 0	// tmp132,
	and	w0, w0, 1	// tmp133, tmp132,
	csneg	w0, w0, w0, ge	// _13, tmp133, tmp133,
// code.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	cmp	w0, 1	// _13,
	bne	.L3		//,
// code.c:16:                 num += 1;
	ldr	w0, [sp, 28]	// tmp135, num
	add	w0, w0, 1	// tmp134, tmp135,
	str	w0, [sp, 28]	// tmp134, num
.L3:
// code.c:6:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 32]	// tmp137, i
	add	w0, w0, 1	// tmp136, tmp137,
	str	w0, [sp, 32]	// tmp136, i
.L2:
// code.c:6:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 32]	// tmp138, i
	ldr	w0, [sp, 4]	// tmp139, size
	cmp	w1, w0	// tmp138, tmp139
	blt	.L6		//,
// code.c:20:     return num;
	ldr	w0, [sp, 28]	// _21, num
// code.c:21: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
