	.arch armv8-a
	.file	"problem33.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
// problem33.c:13: {
	adrp	x0, :got:__stack_chk_guard	// tmp108,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp107, tmp108,
	ldr	x1, [x0]	// tmp160,
	str	x1, [sp, 56]	// tmp160, D.5357
	mov	x1, 0	// tmp160
// problem33.c:14:   unsigned ans_n = 1, ans_d = 1;
	mov	w0, 1	// tmp109,
	str	w0, [sp, 24]	// tmp109, ans_n
// problem33.c:14:   unsigned ans_n = 1, ans_d = 1;
	mov	w0, 1	// tmp110,
	str	w0, [sp, 28]	// tmp110, ans_d
// problem33.c:16:   for (i = 11; i < 100; i++) {
	mov	w0, 11	// tmp111,
	str	w0, [sp, 32]	// tmp111, i
// problem33.c:16:   for (i = 11; i < 100; i++) {
	b	.L2		//
.L12:
// problem33.c:19:     if (i % 10 == 0) {
	ldr	w2, [sp, 32]	// tmp112, i
	mov	w0, 52429	// tmp114,
	movk	w0, 0xcccc, lsl 16	// tmp114,,
	umull	x0, w2, w0	// tmp113, tmp112, tmp114
	lsr	x0, x0, 32	// tmp115, tmp113,
	lsr	w1, w0, 3	// _1, tmp115,
	mov	w0, w1	// tmp116, _1
	lsl	w0, w0, 2	// tmp117, tmp116,
	add	w0, w0, w1	// tmp116, tmp116, _1
	lsl	w0, w0, 1	// tmp118, tmp116,
	sub	w1, w2, w0	// _1, tmp112, tmp116
// problem33.c:19:     if (i % 10 == 0) {
	cmp	w1, 0	// _1,
	beq	.L15		//,
// problem33.c:23:     for (j = 11; j < i; j++) {
	mov	w0, 11	// tmp119,
	str	w0, [sp, 36]	// tmp119, j
// problem33.c:23:     for (j = 11; j < i; j++) {
	b	.L5		//
.L11:
// problem33.c:27:       if (j % 10 == 0) {
	ldr	w2, [sp, 36]	// tmp120, j
	mov	w0, 52429	// tmp122,
	movk	w0, 0xcccc, lsl 16	// tmp122,,
	umull	x0, w2, w0	// tmp121, tmp120, tmp122
	lsr	x0, x0, 32	// tmp123, tmp121,
	lsr	w1, w0, 3	// _2, tmp123,
	mov	w0, w1	// tmp124, _2
	lsl	w0, w0, 2	// tmp125, tmp124,
	add	w0, w0, w1	// tmp124, tmp124, _2
	lsl	w0, w0, 1	// tmp126, tmp124,
	sub	w1, w2, w0	// _2, tmp120, tmp124
// problem33.c:27:       if (j % 10 == 0) {
	cmp	w1, 0	// _2,
	beq	.L16		//,
// problem33.c:31:       if ((g = gcd(i, j)) == 1) {
	ldr	w1, [sp, 36]	//, j
	ldr	w0, [sp, 32]	//, i
	bl	gcd		//
	str	w0, [sp, 40]	//, g
// problem33.c:31:       if ((g = gcd(i, j)) == 1) {
	ldr	w0, [sp, 40]	// tmp127, g
	cmp	w0, 1	// tmp127,
	beq	.L17		//,
// problem33.c:35:       n = j/g;
	ldr	w1, [sp, 36]	// tmp130, j
	ldr	w0, [sp, 40]	// tmp131, g
	udiv	w0, w1, w0	// tmp129, tmp130, tmp131
	str	w0, [sp, 44]	// tmp129, n
// problem33.c:36:       d = i/g;
	ldr	w1, [sp, 32]	// tmp134, i
	ldr	w0, [sp, 40]	// tmp135, g
	udiv	w0, w1, w0	// tmp133, tmp134, tmp135
	str	w0, [sp, 48]	// tmp133, d
// problem33.c:39:       if (cancel(j, i, &n2, &d2)) {
	add	x1, sp, 20	// tmp136,,
	add	x0, sp, 16	// tmp137,,
	mov	x3, x1	//, tmp136
	mov	x2, x0	//, tmp137
	ldr	w1, [sp, 32]	//, i
	ldr	w0, [sp, 36]	//, j
	bl	cancel		//
// problem33.c:39:       if (cancel(j, i, &n2, &d2)) {
	cmp	w0, 0	// _3,
	beq	.L10		//,
// problem33.c:40:         unsigned g2 = gcd(n2, d2);
	ldr	w0, [sp, 16]	// n2.0_4, n2
	ldr	w1, [sp, 20]	// d2.1_5, d2
	bl	gcd		//
	str	w0, [sp, 52]	//, g2
// problem33.c:41:         n2 /= g2; d2 /= g2;
	ldr	w1, [sp, 16]	// n2.2_6, n2
	ldr	w0, [sp, 52]	// tmp138, g2
	udiv	w0, w1, w0	// _7, n2.2_6, tmp138
	str	w0, [sp, 16]	// _7, n2
// problem33.c:41:         n2 /= g2; d2 /= g2;
	ldr	w1, [sp, 20]	// d2.3_8, d2
	ldr	w0, [sp, 52]	// tmp139, g2
	udiv	w0, w1, w0	// _9, d2.3_8, tmp139
	str	w0, [sp, 20]	// _9, d2
// problem33.c:42:         if (n == n2 && d == d2) {
	ldr	w0, [sp, 16]	// n2.4_10, n2
// problem33.c:42:         if (n == n2 && d == d2) {
	ldr	w1, [sp, 44]	// tmp140, n
	cmp	w1, w0	// tmp140, n2.4_10
	bne	.L10		//,
// problem33.c:42:         if (n == n2 && d == d2) {
	ldr	w0, [sp, 20]	// d2.5_11, d2
// problem33.c:42:         if (n == n2 && d == d2) {
	ldr	w1, [sp, 48]	// tmp141, d
	cmp	w1, w0	// tmp141, d2.5_11
	bne	.L10		//,
// problem33.c:43:           ans_n *= n;
	ldr	w1, [sp, 24]	// tmp143, ans_n
	ldr	w0, [sp, 44]	// tmp144, n
	mul	w0, w1, w0	// tmp142, tmp143, tmp144
	str	w0, [sp, 24]	// tmp142, ans_n
// problem33.c:44:           ans_d *= d;
	ldr	w1, [sp, 28]	// tmp146, ans_d
	ldr	w0, [sp, 48]	// tmp147, d
	mul	w0, w1, w0	// tmp145, tmp146, tmp147
	str	w0, [sp, 28]	// tmp145, ans_d
	b	.L10		//
.L16:
// problem33.c:28:         continue;
	nop	
	b	.L10		//
.L17:
// problem33.c:32:         continue;
	nop	
.L10:
// problem33.c:23:     for (j = 11; j < i; j++) {
	ldr	w0, [sp, 36]	// tmp149, j
	add	w0, w0, 1	// tmp148, tmp149,
	str	w0, [sp, 36]	// tmp148, j
.L5:
// problem33.c:23:     for (j = 11; j < i; j++) {
	ldr	w1, [sp, 36]	// tmp150, j
	ldr	w0, [sp, 32]	// tmp151, i
	cmp	w1, w0	// tmp150, tmp151
	bcc	.L11		//,
	b	.L4		//
.L15:
// problem33.c:20:       continue;
	nop	
.L4:
// problem33.c:16:   for (i = 11; i < 100; i++) {
	ldr	w0, [sp, 32]	// tmp153, i
	add	w0, w0, 1	// tmp152, tmp153,
	str	w0, [sp, 32]	// tmp152, i
.L2:
// problem33.c:16:   for (i = 11; i < 100; i++) {
	ldr	w0, [sp, 32]	// tmp154, i
	cmp	w0, 99	// tmp154,
	bls	.L12		//,
// problem33.c:49:   printf("%u\n", ans_d / gcd(ans_n, ans_d));
	ldr	w1, [sp, 28]	//, ans_d
	ldr	w0, [sp, 24]	//, ans_n
	bl	gcd		//
	mov	w1, w0	// _12,
// problem33.c:49:   printf("%u\n", ans_d / gcd(ans_n, ans_d));
	ldr	w0, [sp, 28]	// tmp155, ans_d
	udiv	w0, w0, w1	// _13, tmp155, _12
	mov	w1, w0	//, _13
	adrp	x0, .LC0	// tmp156,
	add	x0, x0, :lo12:.LC0	//, tmp156,
	bl	printf		//
// problem33.c:50:   return 0;
	mov	w0, 0	// _38,
// problem33.c:51: }
	mov	w1, w0	// <retval>, _38
	adrp	x0, :got:__stack_chk_guard	// tmp159,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp158, tmp159,
	ldr	x3, [sp, 56]	// tmp161, D.5357
	ldr	x2, [x0]	// tmp162,
	subs	x3, x3, x2	// tmp161, tmp162
	mov	x2, 0	// tmp162
	beq	.L14		//,
	bl	__stack_chk_fail		//
.L14:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.type	gcd, %function
gcd:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// a, a
	str	w1, [sp, 8]	// b, b
// problem33.c:56:   while ((r = a % b) != 0) {
	b	.L19		//
.L20:
// problem33.c:57:     a = b; b = r;
	ldr	w0, [sp, 8]	// tmp94, b
	str	w0, [sp, 12]	// tmp94, a
// problem33.c:57:     a = b; b = r;
	ldr	w0, [sp, 28]	// tmp95, r
	str	w0, [sp, 8]	// tmp95, b
.L19:
// problem33.c:56:   while ((r = a % b) != 0) {
	ldr	w0, [sp, 12]	// tmp97, a
	ldr	w1, [sp, 8]	// tmp109, b
	udiv	w2, w0, w1	// tmp108, tmp97, tmp109
	ldr	w1, [sp, 8]	// tmp111, b
	mul	w1, w2, w1	// tmp110, tmp108, tmp111
	sub	w0, w0, w1	// tmp112, tmp97, tmp110
	str	w0, [sp, 28]	// tmp112, r
// problem33.c:56:   while ((r = a % b) != 0) {
	ldr	w0, [sp, 28]	// tmp113, r
	cmp	w0, 0	// tmp113,
	bne	.L20		//,
// problem33.c:59:   return b;
	ldr	w0, [sp, 8]	// _6, b
// problem33.c:60: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	gcd, .-gcd
	.align	2
	.type	cancel, %function
cancel:
.LFB2:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 28]	// n1, n1
	str	w1, [sp, 24]	// d1, d1
	str	x2, [sp, 16]	// n2, n2
	str	x3, [sp, 8]	// d2, d2
// problem33.c:64:   if (n1%10 == d1%10) {
	ldr	w1, [sp, 28]	// tmp110, n1
	mov	w0, 52429	// tmp112,
	movk	w0, 0xcccc, lsl 16	// tmp112,,
	umull	x0, w1, w0	// tmp111, tmp110, tmp112
	lsr	x0, x0, 32	// tmp113, tmp111,
	lsr	w2, w0, 3	// _1, tmp113,
	mov	w0, w2	// tmp114, _1
	lsl	w0, w0, 2	// tmp115, tmp114,
	add	w0, w0, w2	// tmp114, tmp114, _1
	lsl	w0, w0, 1	// tmp116, tmp114,
	sub	w2, w1, w0	// _1, tmp110, tmp114
// problem33.c:64:   if (n1%10 == d1%10) {
	ldr	w3, [sp, 24]	// tmp117, d1
	mov	w0, 52429	// tmp119,
	movk	w0, 0xcccc, lsl 16	// tmp119,,
	umull	x0, w3, w0	// tmp118, tmp117, tmp119
	lsr	x0, x0, 32	// tmp120, tmp118,
	lsr	w1, w0, 3	// _2, tmp120,
	mov	w0, w1	// tmp121, _2
	lsl	w0, w0, 2	// tmp122, tmp121,
	add	w0, w0, w1	// tmp121, tmp121, _2
	lsl	w0, w0, 1	// tmp123, tmp121,
	sub	w1, w3, w0	// _2, tmp117, tmp121
// problem33.c:64:   if (n1%10 == d1%10) {
	cmp	w2, w1	// _1, _2
	bne	.L23		//,
// problem33.c:66:     *n2 = n1/10;
	ldr	w1, [sp, 28]	// tmp124, n1
	mov	w0, 52429	// tmp126,
	movk	w0, 0xcccc, lsl 16	// tmp126,,
	umull	x0, w1, w0	// tmp125, tmp124, tmp126
	lsr	x0, x0, 32	// tmp127, tmp125,
	lsr	w1, w0, 3	// _3, tmp127,
// problem33.c:66:     *n2 = n1/10;
	ldr	x0, [sp, 16]	// tmp128, n2
	str	w1, [x0]	// _3, *n2_22(D)
// problem33.c:67:     *d2 = d1/10;
	ldr	w1, [sp, 24]	// tmp129, d1
	mov	w0, 52429	// tmp131,
	movk	w0, 0xcccc, lsl 16	// tmp131,,
	umull	x0, w1, w0	// tmp130, tmp129, tmp131
	lsr	x0, x0, 32	// tmp132, tmp130,
	lsr	w1, w0, 3	// _4, tmp132,
// problem33.c:67:     *d2 = d1/10;
	ldr	x0, [sp, 8]	// tmp133, d2
	str	w1, [x0]	// _4, *d2_24(D)
// problem33.c:68:     return 1;
	mov	w0, 1	// _17,
	b	.L24		//
.L23:
// problem33.c:70:   else if (n1%10 == d1/10) {
	ldr	w2, [sp, 28]	// tmp134, n1
	mov	w0, 52429	// tmp136,
	movk	w0, 0xcccc, lsl 16	// tmp136,,
	umull	x0, w2, w0	// tmp135, tmp134, tmp136
	lsr	x0, x0, 32	// tmp137, tmp135,
	lsr	w1, w0, 3	// _5, tmp137,
	mov	w0, w1	// tmp138, _5
	lsl	w0, w0, 2	// tmp139, tmp138,
	add	w0, w0, w1	// tmp138, tmp138, _5
	lsl	w0, w0, 1	// tmp140, tmp138,
	sub	w1, w2, w0	// _5, tmp134, tmp138
// problem33.c:70:   else if (n1%10 == d1/10) {
	ldr	w2, [sp, 24]	// tmp141, d1
	mov	w0, 52429	// tmp143,
	movk	w0, 0xcccc, lsl 16	// tmp143,,
	umull	x0, w2, w0	// tmp142, tmp141, tmp143
	lsr	x0, x0, 32	// tmp144, tmp142,
	lsr	w0, w0, 3	// _6, tmp144,
// problem33.c:70:   else if (n1%10 == d1/10) {
	cmp	w1, w0	// _5, _6
	bne	.L25		//,
// problem33.c:72:     *n2 = n1/10;
	ldr	w1, [sp, 28]	// tmp145, n1
	mov	w0, 52429	// tmp147,
	movk	w0, 0xcccc, lsl 16	// tmp147,,
	umull	x0, w1, w0	// tmp146, tmp145, tmp147
	lsr	x0, x0, 32	// tmp148, tmp146,
	lsr	w1, w0, 3	// _7, tmp148,
// problem33.c:72:     *n2 = n1/10;
	ldr	x0, [sp, 16]	// tmp149, n2
	str	w1, [x0]	// _7, *n2_22(D)
// problem33.c:73:     *d2 = d1%10;
	ldr	w2, [sp, 24]	// tmp150, d1
	mov	w0, 52429	// tmp152,
	movk	w0, 0xcccc, lsl 16	// tmp152,,
	umull	x0, w2, w0	// tmp151, tmp150, tmp152
	lsr	x0, x0, 32	// tmp153, tmp151,
	lsr	w1, w0, 3	// _8, tmp153,
	mov	w0, w1	// tmp154, _8
	lsl	w0, w0, 2	// tmp155, tmp154,
	add	w0, w0, w1	// tmp154, tmp154, _8
	lsl	w0, w0, 1	// tmp156, tmp154,
	sub	w1, w2, w0	// _8, tmp150, tmp154
// problem33.c:73:     *d2 = d1%10;
	ldr	x0, [sp, 8]	// tmp157, d2
	str	w1, [x0]	// _8, *d2_24(D)
// problem33.c:74:     return 1;
	mov	w0, 1	// _17,
	b	.L24		//
.L25:
// problem33.c:76:   else if (n1/10 == d1%10) {
	ldr	w1, [sp, 28]	// tmp158, n1
	mov	w0, 52429	// tmp160,
	movk	w0, 0xcccc, lsl 16	// tmp160,,
	umull	x0, w1, w0	// tmp159, tmp158, tmp160
	lsr	x0, x0, 32	// tmp161, tmp159,
	lsr	w3, w0, 3	// _9, tmp161,
// problem33.c:76:   else if (n1/10 == d1%10) {
	ldr	w2, [sp, 24]	// tmp162, d1
	mov	w0, 52429	// tmp164,
	movk	w0, 0xcccc, lsl 16	// tmp164,,
	umull	x0, w2, w0	// tmp163, tmp162, tmp164
	lsr	x0, x0, 32	// tmp165, tmp163,
	lsr	w1, w0, 3	// _10, tmp165,
	mov	w0, w1	// tmp166, _10
	lsl	w0, w0, 2	// tmp167, tmp166,
	add	w0, w0, w1	// tmp166, tmp166, _10
	lsl	w0, w0, 1	// tmp168, tmp166,
	sub	w1, w2, w0	// _10, tmp162, tmp166
// problem33.c:76:   else if (n1/10 == d1%10) {
	cmp	w3, w1	// _9, _10
	bne	.L26		//,
// problem33.c:78:     *n2 = n1%10;
	ldr	w2, [sp, 28]	// tmp169, n1
	mov	w0, 52429	// tmp171,
	movk	w0, 0xcccc, lsl 16	// tmp171,,
	umull	x0, w2, w0	// tmp170, tmp169, tmp171
	lsr	x0, x0, 32	// tmp172, tmp170,
	lsr	w1, w0, 3	// _11, tmp172,
	mov	w0, w1	// tmp173, _11
	lsl	w0, w0, 2	// tmp174, tmp173,
	add	w0, w0, w1	// tmp173, tmp173, _11
	lsl	w0, w0, 1	// tmp175, tmp173,
	sub	w1, w2, w0	// _11, tmp169, tmp173
// problem33.c:78:     *n2 = n1%10;
	ldr	x0, [sp, 16]	// tmp176, n2
	str	w1, [x0]	// _11, *n2_22(D)
// problem33.c:79:     *d2 = d1/10;
	ldr	w1, [sp, 24]	// tmp177, d1
	mov	w0, 52429	// tmp179,
	movk	w0, 0xcccc, lsl 16	// tmp179,,
	umull	x0, w1, w0	// tmp178, tmp177, tmp179
	lsr	x0, x0, 32	// tmp180, tmp178,
	lsr	w1, w0, 3	// _12, tmp180,
// problem33.c:79:     *d2 = d1/10;
	ldr	x0, [sp, 8]	// tmp181, d2
	str	w1, [x0]	// _12, *d2_24(D)
// problem33.c:80:     return 1;
	mov	w0, 1	// _17,
	b	.L24		//
.L26:
// problem33.c:82:   else if (n1/10 == d1/10) {
	ldr	w1, [sp, 28]	// tmp182, n1
	mov	w0, 52429	// tmp184,
	movk	w0, 0xcccc, lsl 16	// tmp184,,
	umull	x0, w1, w0	// tmp183, tmp182, tmp184
	lsr	x0, x0, 32	// tmp185, tmp183,
	lsr	w1, w0, 3	// _13, tmp185,
// problem33.c:82:   else if (n1/10 == d1/10) {
	ldr	w2, [sp, 24]	// tmp186, d1
	mov	w0, 52429	// tmp188,
	movk	w0, 0xcccc, lsl 16	// tmp188,,
	umull	x0, w2, w0	// tmp187, tmp186, tmp188
	lsr	x0, x0, 32	// tmp189, tmp187,
	lsr	w0, w0, 3	// _14, tmp189,
// problem33.c:82:   else if (n1/10 == d1/10) {
	cmp	w1, w0	// _13, _14
	bne	.L27		//,
// problem33.c:84:     *n2 = n1%10;
	ldr	w2, [sp, 28]	// tmp190, n1
	mov	w0, 52429	// tmp192,
	movk	w0, 0xcccc, lsl 16	// tmp192,,
	umull	x0, w2, w0	// tmp191, tmp190, tmp192
	lsr	x0, x0, 32	// tmp193, tmp191,
	lsr	w1, w0, 3	// _15, tmp193,
	mov	w0, w1	// tmp194, _15
	lsl	w0, w0, 2	// tmp195, tmp194,
	add	w0, w0, w1	// tmp194, tmp194, _15
	lsl	w0, w0, 1	// tmp196, tmp194,
	sub	w1, w2, w0	// _15, tmp190, tmp194
// problem33.c:84:     *n2 = n1%10;
	ldr	x0, [sp, 16]	// tmp197, n2
	str	w1, [x0]	// _15, *n2_22(D)
// problem33.c:85:     *d2 = d1%10;
	ldr	w2, [sp, 24]	// tmp198, d1
	mov	w0, 52429	// tmp200,
	movk	w0, 0xcccc, lsl 16	// tmp200,,
	umull	x0, w2, w0	// tmp199, tmp198, tmp200
	lsr	x0, x0, 32	// tmp201, tmp199,
	lsr	w1, w0, 3	// _16, tmp201,
	mov	w0, w1	// tmp202, _16
	lsl	w0, w0, 2	// tmp203, tmp202,
	add	w0, w0, w1	// tmp202, tmp202, _16
	lsl	w0, w0, 1	// tmp204, tmp202,
	sub	w1, w2, w0	// _16, tmp198, tmp202
// problem33.c:85:     *d2 = d1%10;
	ldr	x0, [sp, 8]	// tmp205, d2
	str	w1, [x0]	// _16, *d2_24(D)
// problem33.c:86:     return 1;
	mov	w0, 1	// _17,
	b	.L24		//
.L27:
// problem33.c:89:     *n2 = n1;
	ldr	x0, [sp, 16]	// tmp206, n2
	ldr	w1, [sp, 28]	// tmp207, n1
	str	w1, [x0]	// tmp207, *n2_22(D)
// problem33.c:90:     *d2 = d1;
	ldr	x0, [sp, 8]	// tmp208, d2
	ldr	w1, [sp, 24]	// tmp209, d1
	str	w1, [x0]	// tmp209, *d2_24(D)
// problem33.c:91:     return 0;
	mov	w0, 0	// _17,
.L24:
// problem33.c:93: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2:
	.size	cancel, .-cancel
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
