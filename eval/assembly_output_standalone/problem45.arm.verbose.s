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
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	w0, [sp, 28]	// x, x
	str	w1, [sp, 24]	// base, base
	str	x2, [sp, 16]	// out, out
// eval/problem45//code.c:5: void func0(int x, int base, char *out) {
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp102, tmp103,
	ldr	x1, [x0]	// tmp141,
	str	x1, [sp, 88]	// tmp141, D.4961
	mov	x1, 0	// tmp141
// eval/problem45//code.c:6:     int index = 0;
	str	wzr, [sp, 40]	//, index
// eval/problem45//code.c:8:     while (x > 0) {
	b	.L2		//
.L3:
// eval/problem45//code.c:9:         temp[index++] = (x % base) + '0';
	ldr	w0, [sp, 28]	// tmp104, x
	ldr	w1, [sp, 24]	// tmp117, base
	sdiv	w2, w0, w1	// tmp116, tmp104, tmp117
	ldr	w1, [sp, 24]	// tmp119, base
	mul	w1, w2, w1	// tmp118, tmp116, tmp119
	sub	w0, w0, w1	// _1, tmp104, tmp118
// eval/problem45//code.c:9:         temp[index++] = (x % base) + '0';
	and	w1, w0, 255	// _2, _1
// eval/problem45//code.c:9:         temp[index++] = (x % base) + '0';
	ldr	w0, [sp, 40]	// index.0_3, index
	add	w2, w0, 1	// tmp120, index.0_3,
	str	w2, [sp, 40]	// tmp120, index
// eval/problem45//code.c:9:         temp[index++] = (x % base) + '0';
	add	w1, w1, 48	// tmp121, _2,
	and	w2, w1, 255	// _4, tmp121
// eval/problem45//code.c:9:         temp[index++] = (x % base) + '0';
	sxtw	x0, w0	// tmp122, index.0_3
	add	x1, sp, 48	// tmp123,,
	strb	w2, [x1, x0]	// tmp124, temp[index.0_3]
// eval/problem45//code.c:10:         x = x / base;
	ldr	w1, [sp, 28]	// tmp127, x
	ldr	w0, [sp, 24]	// tmp128, base
	sdiv	w0, w1, w0	// tmp126, tmp127, tmp128
	str	w0, [sp, 28]	// tmp126, x
.L2:
// eval/problem45//code.c:8:     while (x > 0) {
	ldr	w0, [sp, 28]	// tmp129, x
	cmp	w0, 0	// tmp129,
	bgt	.L3		//,
// eval/problem45//code.c:12:     int j = 0;
	str	wzr, [sp, 44]	//, j
// eval/problem45//code.c:13:     while(index > 0) {
	b	.L4		//
.L5:
// eval/problem45//code.c:14:         out[j++] = temp[--index];
	ldr	w0, [sp, 40]	// tmp131, index
	sub	w0, w0, #1	// tmp130, tmp131,
	str	w0, [sp, 40]	// tmp130, index
// eval/problem45//code.c:14:         out[j++] = temp[--index];
	ldr	w0, [sp, 44]	// j.1_5, j
	add	w1, w0, 1	// tmp132, j.1_5,
	str	w1, [sp, 44]	// tmp132, j
	sxtw	x0, w0	// _6, j.1_5
// eval/problem45//code.c:14:         out[j++] = temp[--index];
	ldr	x1, [sp, 16]	// tmp133, out
	add	x0, x1, x0	// _7, tmp133, _6
// eval/problem45//code.c:14:         out[j++] = temp[--index];
	ldrsw	x1, [sp, 40]	// tmp134, index
	add	x2, sp, 48	// tmp135,,
	ldrb	w1, [x2, x1]	// _8, temp[index_24]
// eval/problem45//code.c:14:         out[j++] = temp[--index];
	strb	w1, [x0]	// tmp136, *_7
.L4:
// eval/problem45//code.c:13:     while(index > 0) {
	ldr	w0, [sp, 40]	// tmp137, index
	cmp	w0, 0	// tmp137,
	bgt	.L5		//,
// eval/problem45//code.c:16:     out[j] = '\0';
	ldrsw	x0, [sp, 44]	// _9, j
	ldr	x1, [sp, 16]	// tmp138, out
	add	x0, x1, x0	// _10, tmp138, _9
// eval/problem45//code.c:16:     out[j] = '\0';
	strb	wzr, [x0]	//, *_10
// eval/problem45//code.c:17: }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp140,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp139, tmp140,
	ldr	x2, [sp, 88]	// tmp142, D.4961
	ldr	x1, [x0]	// tmp143,
	subs	x2, x2, x1	// tmp142, tmp143
	mov	x1, 0	// tmp143
	beq	.L6		//,
	bl	__stack_chk_fail		//
.L6:
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
