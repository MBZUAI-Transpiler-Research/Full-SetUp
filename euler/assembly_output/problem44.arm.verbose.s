	.arch armv8-a
	.file	"problem44.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%u\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
// problem44.c:19:   unsigned min = UINT_MAX;
	mov	w0, -1	// tmp99,
	str	w0, [sp, 36]	// tmp99, min
// problem44.c:20:   for (i = 1; i < N; i++) {
	mov	w0, 1	// tmp100,
	str	w0, [sp, 28]	// tmp100, i
// problem44.c:20:   for (i = 1; i < N; i++) {
	b	.L2		//
.L6:
// problem44.c:21:     for (j = i; j < N; j++) {
	ldr	w0, [sp, 28]	// tmp101, i
	str	w0, [sp, 32]	// tmp101, j
// problem44.c:21:     for (j = i; j < N; j++) {
	b	.L3		//
.L5:
// problem44.c:22:       unsigned k = pentagonal(i);
	ldr	w0, [sp, 28]	//, i
	bl	pentagonal		//
	str	w0, [sp, 40]	//, k
// problem44.c:23:       unsigned l = pentagonal(j);
	ldr	w0, [sp, 32]	//, j
	bl	pentagonal		//
	str	w0, [sp, 44]	//, l
// problem44.c:24:       if (is_pentagonal(k+l) && is_pentagonal(l-k)) {
	ldr	w1, [sp, 40]	// tmp102, k
	ldr	w0, [sp, 44]	// tmp103, l
	add	w0, w1, w0	// _1, tmp102, tmp103
	bl	is_pentagonal		//
// problem44.c:24:       if (is_pentagonal(k+l) && is_pentagonal(l-k)) {
	cmp	w0, 0	// _2,
	beq	.L4		//,
// problem44.c:24:       if (is_pentagonal(k+l) && is_pentagonal(l-k)) {
	ldr	w1, [sp, 44]	// tmp104, l
	ldr	w0, [sp, 40]	// tmp105, k
	sub	w0, w1, w0	// _3, tmp104, tmp105
	bl	is_pentagonal		//
// problem44.c:24:       if (is_pentagonal(k+l) && is_pentagonal(l-k)) {
	cmp	w0, 0	// _4,
	beq	.L4		//,
// problem44.c:25:         if (l-k < min) {
	ldr	w1, [sp, 44]	// tmp106, l
	ldr	w0, [sp, 40]	// tmp107, k
	sub	w0, w1, w0	// _5, tmp106, tmp107
// problem44.c:25:         if (l-k < min) {
	ldr	w1, [sp, 36]	// tmp108, min
	cmp	w1, w0	// tmp108, _5
	bls	.L4		//,
// problem44.c:26:           min = l-k;
	ldr	w1, [sp, 44]	// tmp110, l
	ldr	w0, [sp, 40]	// tmp111, k
	sub	w0, w1, w0	// tmp109, tmp110, tmp111
	str	w0, [sp, 36]	// tmp109, min
.L4:
// problem44.c:21:     for (j = i; j < N; j++) {
	ldr	w0, [sp, 32]	// tmp113, j
	add	w0, w0, 1	// tmp112, tmp113,
	str	w0, [sp, 32]	// tmp112, j
.L3:
// problem44.c:21:     for (j = i; j < N; j++) {
	ldr	w1, [sp, 32]	// tmp114, j
	mov	w0, 9999	// tmp115,
	cmp	w1, w0	// tmp114, tmp115
	bls	.L5		//,
// problem44.c:20:   for (i = 1; i < N; i++) {
	ldr	w0, [sp, 28]	// tmp117, i
	add	w0, w0, 1	// tmp116, tmp117,
	str	w0, [sp, 28]	// tmp116, i
.L2:
// problem44.c:20:   for (i = 1; i < N; i++) {
	ldr	w1, [sp, 28]	// tmp118, i
	mov	w0, 9999	// tmp119,
	cmp	w1, w0	// tmp118, tmp119
	bls	.L6		//,
// problem44.c:31:   printf("%u\n", min);
	ldr	w1, [sp, 36]	//, min
	adrp	x0, .LC0	// tmp120,
	add	x0, x0, :lo12:.LC0	//, tmp120,
	bl	printf		//
// problem44.c:33:   return 0;
	mov	w0, 0	// _18,
// problem44.c:34: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.type	pentagonal, %function
pentagonal:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]	// n, n
// problem44.c:38:   return n*(3*n-1)/2;
	ldr	w1, [sp, 12]	// tmp97, n
	mov	w0, w1	// tmp98, tmp97
	lsl	w0, w0, 1	// tmp99, tmp98,
	add	w0, w0, w1	// _1, tmp98, tmp97
// problem44.c:38:   return n*(3*n-1)/2;
	sub	w1, w0, #1	// _2, _1,
// problem44.c:38:   return n*(3*n-1)/2;
	ldr	w0, [sp, 12]	// tmp100, n
	mul	w0, w1, w0	// _3, _2, tmp100
// problem44.c:38:   return n*(3*n-1)/2;
	lsr	w0, w0, 1	// _5, _3,
// problem44.c:39: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	pentagonal, .-pentagonal
	.align	2
	.type	is_pentagonal, %function
is_pentagonal:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	w0, [sp, 28]	// n, n
// problem44.c:43:   unsigned sq = sqrt(1+24*n);
	ldr	w1, [sp, 28]	// tmp103, n
	mov	w0, w1	// tmp104, tmp103
	lsl	w0, w0, 1	// tmp105, tmp104,
	add	w0, w0, w1	// tmp104, tmp104, tmp103
	lsl	w0, w0, 3	// tmp106, tmp104,
// problem44.c:43:   unsigned sq = sqrt(1+24*n);
	add	w0, w0, 1	// _2, _1,
// problem44.c:43:   unsigned sq = sqrt(1+24*n);
	ucvtf	d0, w0	// _3, _2
	bl	sqrt		//
// problem44.c:43:   unsigned sq = sqrt(1+24*n);
	fcvtzu	w0, d0	// tmp107, _4
	str	w0, [sp, 44]	// tmp107, sq
// problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	ldr	w0, [sp, 44]	// tmp108, sq
	mul	w2, w0, w0	// _5, tmp108, tmp108
// problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	ldr	w1, [sp, 28]	// tmp109, n
	mov	w0, w1	// tmp110, tmp109
	lsl	w0, w0, 1	// tmp111, tmp110,
	add	w0, w0, w1	// tmp110, tmp110, tmp109
	lsl	w0, w0, 3	// tmp112, tmp110,
// problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	add	w0, w0, 1	// _7, _6,
// problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	cmp	w2, w0	// _5, _7
	bne	.L11		//,
// problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	ldr	w0, [sp, 44]	// tmp113, sq
	add	w2, w0, 1	// _8, tmp113,
// problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	mov	w0, 43691	// tmp115,
	movk	w0, 0xaaaa, lsl 16	// tmp115,,
	umull	x0, w2, w0	// tmp114, _8, tmp115
	lsr	x0, x0, 32	// tmp116, tmp114,
	lsr	w1, w0, 2	// _9, tmp116,
	mov	w0, w1	// tmp117, _9
	lsl	w0, w0, 1	// tmp118, tmp117,
	add	w0, w0, w1	// tmp117, tmp117, _9
	lsl	w0, w0, 1	// tmp119, tmp117,
	sub	w1, w2, w0	// _9, _8, tmp117
// problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	cmp	w1, 0	// _9,
	bne	.L11		//,
// problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	mov	w0, 1	// iftmp.0_10,
// problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	b	.L13		//
.L11:
// problem44.c:44:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	mov	w0, 0	// iftmp.0_10,
.L13:
// problem44.c:45: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2:
	.size	is_pentagonal, .-is_pentagonal
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
