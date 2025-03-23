	.arch armv8-a
	.file	"problem1.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
// problem1.c:10:   int s3 = 0, s5 = 0, s15 = 0;
	str	wzr, [sp, 16]	//, s3
// problem1.c:10:   int s3 = 0, s5 = 0, s15 = 0;
	str	wzr, [sp, 20]	//, s5
// problem1.c:10:   int s3 = 0, s5 = 0, s15 = 0;
	str	wzr, [sp, 24]	//, s15
// problem1.c:13:   for (i = 0; i < 1000; i++) {
	str	wzr, [sp, 28]	//, i
// problem1.c:13:   for (i = 0; i < 1000; i++) {
	b	.L2		//
.L6:
// problem1.c:14:     if (i % 3 == 0) {
	ldr	w2, [sp, 28]	// tmp99, i
	mov	w0, 21846	// tmp101,
	movk	w0, 0x5555, lsl 16	// tmp101,,
	smull	x0, w2, w0	// tmp100, tmp99, tmp101
	lsr	x1, x0, 32	// tmp102, tmp100,
	asr	w0, w2, 31	// tmp103, tmp99,
	sub	w1, w1, w0	// _1, tmp102, tmp103
	mov	w0, w1	// tmp104, _1
	lsl	w0, w0, 1	// tmp105, tmp104,
	add	w0, w0, w1	// tmp104, tmp104, _1
	sub	w1, w2, w0	// _1, tmp99, tmp104
// problem1.c:14:     if (i % 3 == 0) {
	cmp	w1, 0	// _1,
	bne	.L3		//,
// problem1.c:15:       s3 += i;
	ldr	w1, [sp, 16]	// tmp107, s3
	ldr	w0, [sp, 28]	// tmp108, i
	add	w0, w1, w0	// tmp106, tmp107, tmp108
	str	w0, [sp, 16]	// tmp106, s3
.L3:
// problem1.c:17:     if (i % 5 == 0) {
	ldr	w2, [sp, 28]	// tmp109, i
	mov	w0, 26215	// tmp111,
	movk	w0, 0x6666, lsl 16	// tmp111,,
	smull	x0, w2, w0	// tmp110, tmp109, tmp111
	lsr	x0, x0, 32	// tmp112, tmp110,
	asr	w1, w0, 1	// tmp113, tmp112,
	asr	w0, w2, 31	// tmp114, tmp109,
	sub	w1, w1, w0	// _2, tmp113, tmp114
	mov	w0, w1	// tmp115, _2
	lsl	w0, w0, 2	// tmp116, tmp115,
	add	w0, w0, w1	// tmp115, tmp115, _2
	sub	w1, w2, w0	// _2, tmp109, tmp115
// problem1.c:17:     if (i % 5 == 0) {
	cmp	w1, 0	// _2,
	bne	.L4		//,
// problem1.c:18:       s5 += i;
	ldr	w1, [sp, 20]	// tmp118, s5
	ldr	w0, [sp, 28]	// tmp119, i
	add	w0, w1, w0	// tmp117, tmp118, tmp119
	str	w0, [sp, 20]	// tmp117, s5
.L4:
// problem1.c:20:     if (i % 15 == 0) {
	ldr	w0, [sp, 28]	// tmp120, i
	mov	w1, 34953	// tmp122,
	movk	w1, 0x8888, lsl 16	// tmp122,,
	smull	x1, w0, w1	// tmp121, tmp120, tmp122
	lsr	x1, x1, 32	// tmp123, tmp121,
	add	w1, w0, w1	// tmp124, tmp120, tmp125
	asr	w2, w1, 3	// tmp126, tmp124,
	asr	w1, w0, 31	// tmp127, tmp120,
	sub	w2, w2, w1	// _3, tmp126, tmp127
	mov	w1, w2	// tmp128, _3
	lsl	w1, w1, 4	// tmp129, tmp128,
	sub	w1, w1, w2	// tmp128, tmp128, _3
	sub	w2, w0, w1	// _3, tmp120, tmp128
// problem1.c:20:     if (i % 15 == 0) {
	cmp	w2, 0	// _3,
	bne	.L5		//,
// problem1.c:21:       s15 += i;
	ldr	w1, [sp, 24]	// tmp131, s15
	ldr	w0, [sp, 28]	// tmp132, i
	add	w0, w1, w0	// tmp130, tmp131, tmp132
	str	w0, [sp, 24]	// tmp130, s15
.L5:
// problem1.c:13:   for (i = 0; i < 1000; i++) {
	ldr	w0, [sp, 28]	// tmp134, i
	add	w0, w0, 1	// tmp133, tmp134,
	str	w0, [sp, 28]	// tmp133, i
.L2:
// problem1.c:13:   for (i = 0; i < 1000; i++) {
	ldr	w0, [sp, 28]	// tmp135, i
	cmp	w0, 999	// tmp135,
	ble	.L6		//,
// problem1.c:24:   printf("%d\n", s3 + s5 - s15);
	ldr	w1, [sp, 16]	// tmp136, s3
	ldr	w0, [sp, 20]	// tmp137, s5
	add	w1, w1, w0	// _4, tmp136, tmp137
// problem1.c:24:   printf("%d\n", s3 + s5 - s15);
	ldr	w0, [sp, 24]	// tmp138, s15
	sub	w0, w1, w0	// _5, _4, tmp138
	mov	w1, w0	//, _5
	adrp	x0, .LC0	// tmp139,
	add	x0, x0, :lo12:.LC0	//, tmp139,
	bl	printf		//
// problem1.c:26:   return 0;
	mov	w0, 0	// _19,
// problem1.c:27: }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
