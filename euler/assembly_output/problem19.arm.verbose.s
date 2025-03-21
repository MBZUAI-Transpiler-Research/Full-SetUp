	.arch armv8-a
	.file	"problem19.c"
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
// problem19.c:12:   int year, wday = 0, sun = 0, mon;
	str	wzr, [sp, 20]	//, wday
// problem19.c:12:   int year, wday = 0, sun = 0, mon;
	str	wzr, [sp, 24]	//, sun
// problem19.c:14:   for (year = 1901; year <= 2000; year++) {
	mov	w0, 1901	// tmp96,
	str	w0, [sp, 16]	// tmp96, year
// problem19.c:14:   for (year = 1901; year <= 2000; year++) {
	b	.L2		//
.L6:
// problem19.c:15:     for (mon = 1; mon <= 12; mon++) {
	mov	w0, 1	// tmp97,
	str	w0, [sp, 28]	// tmp97, mon
// problem19.c:15:     for (mon = 1; mon <= 12; mon++) {
	b	.L3		//
.L5:
// problem19.c:16:       if (wday == 5) {
	ldr	w0, [sp, 20]	// tmp98, wday
	cmp	w0, 5	// tmp98,
	bne	.L4		//,
// problem19.c:18:         sun++;
	ldr	w0, [sp, 24]	// tmp100, sun
	add	w0, w0, 1	// tmp99, tmp100,
	str	w0, [sp, 24]	// tmp99, sun
.L4:
// problem19.c:20:       wday = (wday + days(year, mon))%7;
	ldr	w1, [sp, 28]	//, mon
	ldr	w0, [sp, 16]	//, year
	bl	days		//
	mov	w1, w0	// _1,
// problem19.c:20:       wday = (wday + days(year, mon))%7;
	ldr	w0, [sp, 20]	// tmp101, wday
	add	w0, w1, w0	// _2, _1, tmp101
// problem19.c:20:       wday = (wday + days(year, mon))%7;
	mov	w1, 9363	// tmp103,
	movk	w1, 0x9249, lsl 16	// tmp103,,
	smull	x1, w0, w1	// tmp102, _2, tmp103
	lsr	x1, x1, 32	// tmp104, tmp102,
	add	w1, w0, w1	// tmp105, _2, tmp106
	asr	w2, w1, 2	// tmp107, tmp105,
	asr	w1, w0, 31	// tmp108, _2,
	sub	w2, w2, w1	// tmp109, tmp107, tmp108
	mov	w1, w2	// tmp110, tmp109
	lsl	w1, w1, 3	// tmp111, tmp110,
	sub	w1, w1, w2	// tmp110, tmp110, tmp109
	sub	w0, w0, w1	// tmp112, _2, tmp110
	str	w0, [sp, 20]	// tmp112, wday
// problem19.c:15:     for (mon = 1; mon <= 12; mon++) {
	ldr	w0, [sp, 28]	// tmp114, mon
	add	w0, w0, 1	// tmp113, tmp114,
	str	w0, [sp, 28]	// tmp113, mon
.L3:
// problem19.c:15:     for (mon = 1; mon <= 12; mon++) {
	ldr	w0, [sp, 28]	// tmp115, mon
	cmp	w0, 12	// tmp115,
	ble	.L5		//,
// problem19.c:14:   for (year = 1901; year <= 2000; year++) {
	ldr	w0, [sp, 16]	// tmp117, year
	add	w0, w0, 1	// tmp116, tmp117,
	str	w0, [sp, 16]	// tmp116, year
.L2:
// problem19.c:14:   for (year = 1901; year <= 2000; year++) {
	ldr	w0, [sp, 16]	// tmp118, year
	cmp	w0, 2000	// tmp118,
	ble	.L6		//,
// problem19.c:23:   printf("%d\n", sun);
	ldr	w1, [sp, 24]	//, sun
	adrp	x0, .LC0	// tmp119,
	add	x0, x0, :lo12:.LC0	//, tmp119,
	bl	printf		//
// problem19.c:25:   return 0;
	mov	w0, 0	// _17,
// problem19.c:26: }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.type	days, %function
days:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]	// y, y
	str	w1, [sp, 8]	// m, m
// problem19.c:30:   switch (m) {
	ldr	w0, [sp, 8]	// _13, m
	cmp	w0, 11	// _13,
	cset	w1, hi	// tmp106,
	and	w1, w1, 255	// _14, tmp105
	and	w1, w1, 1	// tmp107, _14,
	cmp	w1, 0	// tmp107,
	bne	.L9		//,
	mov	x1, 1	// tmp108,
	lsl	x0, x1, x0	// _15, tmp108, _13
	mov	x1, 2640	// tmp109,
	and	x1, x0, x1	// _16, _15, tmp109
	cmp	x1, 0	// _16,
	cset	w1, ne	// tmp111,
	and	w1, w1, 255	// _17, tmp110
	and	w1, w1, 1	// tmp112, _17,
	cmp	w1, 0	// tmp112,
	bne	.L10		//,
	and	x0, x0, 4	// _18, _15,
	cmp	x0, 0	// _18,
	cset	w0, ne	// tmp114,
	and	w0, w0, 255	// _19, tmp113
	and	w0, w0, 1	// tmp115, _19,
	cmp	w0, 0	// tmp115,
	beq	.L9		//,
// problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	ldr	w0, [sp, 12]	// y.0_1, y
	and	w0, w0, 3	// _2, y.0_1,
// problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	cmp	w0, 0	// _2,
	bne	.L11		//,
// problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	ldr	w1, [sp, 12]	// tmp116, y
	mov	w0, 34079	// tmp118,
	movk	w0, 0x51eb, lsl 16	// tmp118,,
	smull	x0, w1, w0	// tmp117, tmp116, tmp118
	lsr	x0, x0, 32	// tmp119, tmp117,
	asr	w2, w0, 5	// tmp120, tmp119,
	asr	w0, w1, 31	// tmp121, tmp116,
	sub	w0, w2, w0	// _3, tmp120, tmp121
	mov	w2, 100	// tmp123,
	mul	w0, w0, w2	// tmp122, _3, tmp123
	sub	w0, w1, w0	// _3, tmp116, tmp122
// problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	cmp	w0, 0	// _3,
	bne	.L12		//,
.L11:
// problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	ldr	w1, [sp, 12]	// tmp124, y
	mov	w0, 34079	// tmp126,
	movk	w0, 0x51eb, lsl 16	// tmp126,,
	smull	x0, w1, w0	// tmp125, tmp124, tmp126
	lsr	x0, x0, 32	// tmp127, tmp125,
	asr	w2, w0, 7	// tmp128, tmp127,
	asr	w0, w1, 31	// tmp129, tmp124,
	sub	w0, w2, w0	// _4, tmp128, tmp129
	mov	w2, 400	// tmp131,
	mul	w0, w0, w2	// tmp130, _4, tmp131
	sub	w0, w1, w0	// _4, tmp124, tmp130
// problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	cmp	w0, 0	// _4,
	bne	.L13		//,
.L12:
// problem19.c:34:         return 29;
	mov	w0, 29	// _5,
	b	.L14		//
.L13:
// problem19.c:37:         return 28;
	mov	w0, 28	// _5,
	b	.L14		//
.L10:
// problem19.c:44:       return 30;
	mov	w0, 30	// _5,
	b	.L14		//
.L9:
// problem19.c:47:       return 31;
	mov	w0, 31	// _5,
.L14:
// problem19.c:49: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	days, .-days
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
