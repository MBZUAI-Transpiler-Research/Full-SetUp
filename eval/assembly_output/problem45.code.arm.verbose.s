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
	sub	sp, sp, #96	//,,
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80	//,,
	str	w0, [sp, 12]	// x, x
	str	w1, [sp, 8]	// base, base
	str	x2, [sp]	// out, out
// code.c:5: void func0(int x, int base, char *out) {
	adrp	x0, :got:__stack_chk_guard	// tmp102,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp102,
	ldr	x1, [x0]	// tmp139,
	str	x1, [sp, 72]	// tmp139, D.5577
	mov	x1, 0	// tmp139
// code.c:6:     int index = 0;
	str	wzr, [sp, 24]	//, index
// code.c:8:     while (x > 0) {
	b	.L2		//
.L3:
// code.c:9:         temp[index++] = (x % base) + '0';
	ldr	w0, [sp, 12]	// tmp103, x
	ldr	w1, [sp, 8]	// tmp116, base
	sdiv	w2, w0, w1	// tmp115, tmp103, tmp116
	ldr	w1, [sp, 8]	// tmp118, base
	mul	w1, w2, w1	// tmp117, tmp115, tmp118
	sub	w0, w0, w1	// _1, tmp103, tmp117
// code.c:9:         temp[index++] = (x % base) + '0';
	and	w1, w0, 255	// _2, _1
// code.c:9:         temp[index++] = (x % base) + '0';
	ldr	w0, [sp, 24]	// index.0_3, index
	add	w2, w0, 1	// tmp119, index.0_3,
	str	w2, [sp, 24]	// tmp119, index
// code.c:9:         temp[index++] = (x % base) + '0';
	add	w1, w1, 48	// tmp120, _2,
	and	w2, w1, 255	// _4, tmp120
// code.c:9:         temp[index++] = (x % base) + '0';
	sxtw	x0, w0	// tmp121, index.0_3
	add	x1, sp, 32	// tmp122,,
	strb	w2, [x1, x0]	// tmp123, temp[index.0_3]
// code.c:10:         x = x / base;
	ldr	w1, [sp, 12]	// tmp126, x
	ldr	w0, [sp, 8]	// tmp127, base
	sdiv	w0, w1, w0	// tmp125, tmp126, tmp127
	str	w0, [sp, 12]	// tmp125, x
.L2:
// code.c:8:     while (x > 0) {
	ldr	w0, [sp, 12]	// tmp128, x
	cmp	w0, 0	// tmp128,
	bgt	.L3		//,
// code.c:12:     int j = 0;
	str	wzr, [sp, 28]	//, j
// code.c:13:     while(index > 0) {
	b	.L4		//
.L5:
// code.c:14:         out[j++] = temp[--index];
	ldr	w0, [sp, 24]	// tmp130, index
	sub	w0, w0, #1	// tmp129, tmp130,
	str	w0, [sp, 24]	// tmp129, index
// code.c:14:         out[j++] = temp[--index];
	ldr	w0, [sp, 28]	// j.1_5, j
	add	w1, w0, 1	// tmp131, j.1_5,
	str	w1, [sp, 28]	// tmp131, j
	sxtw	x0, w0	// _6, j.1_5
// code.c:14:         out[j++] = temp[--index];
	ldr	x1, [sp]	// tmp132, out
	add	x0, x1, x0	// _7, tmp132, _6
// code.c:14:         out[j++] = temp[--index];
	ldrsw	x1, [sp, 24]	// tmp133, index
	add	x2, sp, 32	// tmp134,,
	ldrb	w1, [x2, x1]	// _8, temp[index_24]
// code.c:14:         out[j++] = temp[--index];
	strb	w1, [x0]	// tmp135, *_7
.L4:
// code.c:13:     while(index > 0) {
	ldr	w0, [sp, 24]	// tmp136, index
	cmp	w0, 0	// tmp136,
	bgt	.L5		//,
// code.c:16:     out[j] = '\0';
	ldrsw	x0, [sp, 28]	// _9, j
	ldr	x1, [sp]	// tmp137, out
	add	x0, x1, x0	// _10, tmp137, _9
// code.c:16:     out[j] = '\0';
	strb	wzr, [x0]	//, *_10
// code.c:17: }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp138,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp138,
	ldr	x2, [sp, 72]	// tmp140, D.5577
	ldr	x1, [x0]	// tmp141,
	subs	x2, x2, x1	// tmp140, tmp141
	mov	x1, 0	// tmp141
	beq	.L6		//,
	bl	__stack_chk_fail		//
.L6:
	ldp	x29, x30, [sp, 80]	//,,
	add	sp, sp, 96	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
