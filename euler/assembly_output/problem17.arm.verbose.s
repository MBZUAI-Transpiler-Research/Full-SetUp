	.arch armv8-a
	.file	"problem17.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC3:
	.string	"%u\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -176]!	//,,,
	.cfi_def_cfa_offset 176
	.cfi_offset 29, -176
	.cfi_offset 30, -168
	mov	x29, sp	//,
// problem17.c:9: {
	adrp	x0, :got:__stack_chk_guard	// tmp125,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp124, tmp125,
	ldr	x1, [x0]	// tmp266,
	str	x1, [sp, 168]	// tmp266, D.4292
	mov	x1, 0	// tmp266
// problem17.c:11:   unsigned s1[] = { 0, 3, 3, 5, 4, 4, 3, 5, 5, 4 };
	adrp	x0, .LC0	// tmp127,
	add	x1, x0, :lo12:.LC0	// tmp126, tmp127,
	add	x0, sp, 48	// tmp128,,
	ldp	q0, q1, [x1]	// tmp130, tmp131,
	stp	q0, q1, [x0]	// tmp130, tmp131, s1
	ldr	x1, [x1, 32]	// tmp132,
	str	x1, [x0, 32]	// tmp132, s1
// problem17.c:13:   unsigned s2[] = { 3, 6, 6, 8, 8, 7, 7, 9, 8, 8 };
	adrp	x0, .LC1	// tmp134,
	add	x1, x0, :lo12:.LC1	// tmp133, tmp134,
	add	x0, sp, 88	// tmp135,,
	ldp	q0, q1, [x1]	// tmp137, tmp138,
	stp	q0, q1, [x0]	// tmp137, tmp138, s2
	ldr	x1, [x1, 32]	// tmp139,
	str	x1, [x0, 32]	// tmp139, s2
// problem17.c:15:   unsigned s3[] = { 0, 0, 6, 6, 5, 5, 5, 7, 6, 6 };
	adrp	x0, .LC2	// tmp141,
	add	x1, x0, :lo12:.LC2	// tmp140, tmp141,
	add	x0, sp, 128	// tmp142,,
	ldp	q0, q1, [x1]	// tmp144, tmp145,
	stp	q0, q1, [x0]	// tmp144, tmp145, s3
	ldr	x1, [x1, 32]	// tmp146,
	str	x1, [x0, 32]	// tmp146, s3
// problem17.c:17:   unsigned hundred = 7;
	mov	w0, 7	// tmp147,
	str	w0, [sp, 36]	// tmp147, hundred
// problem17.c:18:   unsigned and = 3;
	mov	w0, 3	// tmp148,
	str	w0, [sp, 40]	// tmp148, and
// problem17.c:19:   unsigned thousand = 8;
	mov	w0, 8	// tmp149,
	str	w0, [sp, 44]	// tmp149, thousand
// problem17.c:22:   unsigned sum = 0;
	str	wzr, [sp, 28]	//, sum
// problem17.c:25:   for (i = 1; i < 10; i++) {
	mov	w0, 1	// tmp150,
	str	w0, [sp, 24]	// tmp150, i
// problem17.c:25:   for (i = 1; i < 10; i++) {
	b	.L2		//
.L3:
// problem17.c:26:     sum += s1[i];
	ldr	w0, [sp, 24]	// tmp151, i
	lsl	x0, x0, 2	// tmp152, tmp151,
	add	x1, sp, 48	// tmp153,,
	ldr	w0, [x1, x0]	// _1, s1[i_31]
// problem17.c:26:     sum += s1[i];
	ldr	w1, [sp, 28]	// tmp155, sum
	add	w0, w1, w0	// tmp154, tmp155, _1
	str	w0, [sp, 28]	// tmp154, sum
// problem17.c:25:   for (i = 1; i < 10; i++) {
	ldr	w0, [sp, 24]	// tmp157, i
	add	w0, w0, 1	// tmp156, tmp157,
	str	w0, [sp, 24]	// tmp156, i
.L2:
// problem17.c:25:   for (i = 1; i < 10; i++) {
	ldr	w0, [sp, 24]	// tmp158, i
	cmp	w0, 9	// tmp158,
	bls	.L3		//,
// problem17.c:29:   for (i = 0; i < 10; i++) {
	str	wzr, [sp, 24]	//, i
// problem17.c:29:   for (i = 0; i < 10; i++) {
	b	.L4		//
.L5:
// problem17.c:30:     sum += s2[i];
	ldr	w0, [sp, 24]	// tmp159, i
	lsl	x0, x0, 2	// tmp160, tmp159,
	add	x1, sp, 88	// tmp161,,
	ldr	w0, [x1, x0]	// _2, s2[i_32]
// problem17.c:30:     sum += s2[i];
	ldr	w1, [sp, 28]	// tmp163, sum
	add	w0, w1, w0	// tmp162, tmp163, _2
	str	w0, [sp, 28]	// tmp162, sum
// problem17.c:29:   for (i = 0; i < 10; i++) {
	ldr	w0, [sp, 24]	// tmp165, i
	add	w0, w0, 1	// tmp164, tmp165,
	str	w0, [sp, 24]	// tmp164, i
.L4:
// problem17.c:29:   for (i = 0; i < 10; i++) {
	ldr	w0, [sp, 24]	// tmp166, i
	cmp	w0, 9	// tmp166,
	bls	.L5		//,
// problem17.c:33:   for (i = 20; i < 100; i++) {
	mov	w0, 20	// tmp167,
	str	w0, [sp, 24]	// tmp167, i
// problem17.c:33:   for (i = 20; i < 100; i++) {
	b	.L6		//
.L7:
// problem17.c:34:     sum += s3[i/10] + s1[i%10];
	ldr	w1, [sp, 24]	// tmp168, i
	mov	w0, 52429	// tmp170,
	movk	w0, 0xcccc, lsl 16	// tmp170,,
	umull	x0, w1, w0	// tmp169, tmp168, tmp170
	lsr	x0, x0, 32	// tmp171, tmp169,
	lsr	w0, w0, 3	// _3, tmp171,
// problem17.c:34:     sum += s3[i/10] + s1[i%10];
	uxtw	x0, w0	// tmp172, _3
	lsl	x0, x0, 2	// tmp173, tmp172,
	add	x1, sp, 128	// tmp174,,
	ldr	w3, [x1, x0]	// _4, s3[_3]
// problem17.c:34:     sum += s3[i/10] + s1[i%10];
	ldr	w2, [sp, 24]	// tmp175, i
	mov	w0, 52429	// tmp177,
	movk	w0, 0xcccc, lsl 16	// tmp177,,
	umull	x0, w2, w0	// tmp176, tmp175, tmp177
	lsr	x0, x0, 32	// tmp178, tmp176,
	lsr	w1, w0, 3	// _5, tmp178,
	mov	w0, w1	// tmp179, _5
	lsl	w0, w0, 2	// tmp180, tmp179,
	add	w0, w0, w1	// tmp179, tmp179, _5
	lsl	w0, w0, 1	// tmp181, tmp179,
	sub	w1, w2, w0	// _5, tmp175, tmp179
// problem17.c:34:     sum += s3[i/10] + s1[i%10];
	uxtw	x0, w1	// tmp182, _5
	lsl	x0, x0, 2	// tmp183, tmp182,
	add	x1, sp, 48	// tmp184,,
	ldr	w0, [x1, x0]	// _6, s1[_5]
// problem17.c:34:     sum += s3[i/10] + s1[i%10];
	add	w0, w3, w0	// _7, _4, _6
// problem17.c:34:     sum += s3[i/10] + s1[i%10];
	ldr	w1, [sp, 28]	// tmp186, sum
	add	w0, w1, w0	// tmp185, tmp186, _7
	str	w0, [sp, 28]	// tmp185, sum
// problem17.c:33:   for (i = 20; i < 100; i++) {
	ldr	w0, [sp, 24]	// tmp188, i
	add	w0, w0, 1	// tmp187, tmp188,
	str	w0, [sp, 24]	// tmp187, i
.L6:
// problem17.c:33:   for (i = 20; i < 100; i++) {
	ldr	w0, [sp, 24]	// tmp189, i
	cmp	w0, 99	// tmp189,
	bls	.L7		//,
// problem17.c:37:   for (i = 1; i < 10; i++) {
	mov	w0, 1	// tmp190,
	str	w0, [sp, 24]	// tmp190, i
// problem17.c:37:   for (i = 1; i < 10; i++) {
	b	.L8		//
.L15:
// problem17.c:41:     sum += s1[i] + hundred;
	ldr	w0, [sp, 24]	// tmp191, i
	lsl	x0, x0, 2	// tmp192, tmp191,
	add	x1, sp, 48	// tmp193,,
	ldr	w1, [x1, x0]	// _8, s1[i_34]
// problem17.c:41:     sum += s1[i] + hundred;
	ldr	w0, [sp, 36]	// tmp194, hundred
	add	w0, w1, w0	// _9, _8, tmp194
// problem17.c:41:     sum += s1[i] + hundred;
	ldr	w1, [sp, 28]	// tmp196, sum
	add	w0, w1, w0	// tmp195, tmp196, _9
	str	w0, [sp, 28]	// tmp195, sum
// problem17.c:43:     for (j = 1; j < 10; j++) {
	mov	w0, 1	// tmp197,
	str	w0, [sp, 32]	// tmp197, j
// problem17.c:43:     for (j = 1; j < 10; j++) {
	b	.L9		//
.L10:
// problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	ldr	w0, [sp, 24]	// tmp198, i
	lsl	x0, x0, 2	// tmp199, tmp198,
	add	x1, sp, 48	// tmp200,,
	ldr	w1, [x1, x0]	// _10, s1[i_34]
// problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	ldr	w0, [sp, 36]	// tmp201, hundred
	add	w1, w1, w0	// _11, _10, tmp201
// problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	ldr	w0, [sp, 40]	// tmp202, and
	add	w1, w1, w0	// _12, _11, tmp202
// problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	ldrsw	x0, [sp, 32]	// tmp203, j
	lsl	x0, x0, 2	// tmp204, tmp203,
	add	x2, sp, 48	// tmp205,,
	ldr	w0, [x2, x0]	// _13, s1[j_42]
// problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	add	w0, w1, w0	// _14, _12, _13
// problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	ldr	w1, [sp, 28]	// tmp207, sum
	add	w0, w1, w0	// tmp206, tmp207, _14
	str	w0, [sp, 28]	// tmp206, sum
// problem17.c:43:     for (j = 1; j < 10; j++) {
	ldr	w0, [sp, 32]	// tmp209, j
	add	w0, w0, 1	// tmp208, tmp209,
	str	w0, [sp, 32]	// tmp208, j
.L9:
// problem17.c:43:     for (j = 1; j < 10; j++) {
	ldr	w0, [sp, 32]	// tmp210, j
	cmp	w0, 9	// tmp210,
	ble	.L10		//,
// problem17.c:47:     for (j = 0; j < 10; j++) {
	str	wzr, [sp, 32]	//, j
// problem17.c:47:     for (j = 0; j < 10; j++) {
	b	.L11		//
.L12:
// problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	ldr	w0, [sp, 24]	// tmp211, i
	lsl	x0, x0, 2	// tmp212, tmp211,
	add	x1, sp, 48	// tmp213,,
	ldr	w1, [x1, x0]	// _15, s1[i_34]
// problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	ldr	w0, [sp, 36]	// tmp214, hundred
	add	w1, w1, w0	// _16, _15, tmp214
// problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	ldr	w0, [sp, 40]	// tmp215, and
	add	w1, w1, w0	// _17, _16, tmp215
// problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	ldrsw	x0, [sp, 32]	// tmp216, j
	lsl	x0, x0, 2	// tmp217, tmp216,
	add	x2, sp, 88	// tmp218,,
	ldr	w0, [x2, x0]	// _18, s2[j_43]
// problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	add	w0, w1, w0	// _19, _17, _18
// problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	ldr	w1, [sp, 28]	// tmp220, sum
	add	w0, w1, w0	// tmp219, tmp220, _19
	str	w0, [sp, 28]	// tmp219, sum
// problem17.c:47:     for (j = 0; j < 10; j++) {
	ldr	w0, [sp, 32]	// tmp222, j
	add	w0, w0, 1	// tmp221, tmp222,
	str	w0, [sp, 32]	// tmp221, j
.L11:
// problem17.c:47:     for (j = 0; j < 10; j++) {
	ldr	w0, [sp, 32]	// tmp223, j
	cmp	w0, 9	// tmp223,
	ble	.L12		//,
// problem17.c:51:     for (j = 20; j < 100; j++) {
	mov	w0, 20	// tmp224,
	str	w0, [sp, 32]	// tmp224, j
// problem17.c:51:     for (j = 20; j < 100; j++) {
	b	.L13		//
.L14:
// problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	ldr	w0, [sp, 24]	// tmp225, i
	lsl	x0, x0, 2	// tmp226, tmp225,
	add	x1, sp, 48	// tmp227,,
	ldr	w1, [x1, x0]	// _20, s1[i_34]
// problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	ldr	w0, [sp, 36]	// tmp228, hundred
	add	w1, w1, w0	// _21, _20, tmp228
// problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	ldr	w0, [sp, 40]	// tmp229, and
	add	w1, w1, w0	// _22, _21, tmp229
// problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	ldr	w0, [sp, 32]	// tmp230, j
	mov	w2, 26215	// tmp232,
	movk	w2, 0x6666, lsl 16	// tmp232,,
	smull	x2, w0, w2	// tmp231, tmp230, tmp232
	lsr	x2, x2, 32	// tmp233, tmp231,
	asr	w2, w2, 2	// tmp234, tmp233,
	asr	w0, w0, 31	// tmp235, tmp230,
	sub	w0, w2, w0	// _23, tmp234, tmp235
// problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	sxtw	x0, w0	// tmp236, _23
	lsl	x0, x0, 2	// tmp237, tmp236,
	add	x2, sp, 128	// tmp238,,
	ldr	w0, [x2, x0]	// _24, s3[_23]
// problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	add	w3, w1, w0	// _25, _22, _24
// problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	ldr	w1, [sp, 32]	// tmp239, j
	mov	w0, 26215	// tmp241,
	movk	w0, 0x6666, lsl 16	// tmp241,,
	smull	x0, w1, w0	// tmp240, tmp239, tmp241
	lsr	x0, x0, 32	// tmp242, tmp240,
	asr	w2, w0, 2	// tmp243, tmp242,
	asr	w0, w1, 31	// tmp244, tmp239,
	sub	w2, w2, w0	// _26, tmp243, tmp244
	mov	w0, w2	// tmp245, _26
	lsl	w0, w0, 2	// tmp246, tmp245,
	add	w0, w0, w2	// tmp245, tmp245, _26
	lsl	w0, w0, 1	// tmp247, tmp245,
	sub	w2, w1, w0	// _26, tmp239, tmp245
// problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	sxtw	x0, w2	// tmp248, _26
	lsl	x0, x0, 2	// tmp249, tmp248,
	add	x1, sp, 48	// tmp250,,
	ldr	w0, [x1, x0]	// _27, s1[_26]
// problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	add	w0, w3, w0	// _28, _25, _27
// problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	ldr	w1, [sp, 28]	// tmp252, sum
	add	w0, w1, w0	// tmp251, tmp252, _28
	str	w0, [sp, 28]	// tmp251, sum
// problem17.c:51:     for (j = 20; j < 100; j++) {
	ldr	w0, [sp, 32]	// tmp254, j
	add	w0, w0, 1	// tmp253, tmp254,
	str	w0, [sp, 32]	// tmp253, j
.L13:
// problem17.c:51:     for (j = 20; j < 100; j++) {
	ldr	w0, [sp, 32]	// tmp255, j
	cmp	w0, 99	// tmp255,
	ble	.L14		//,
// problem17.c:37:   for (i = 1; i < 10; i++) {
	ldr	w0, [sp, 24]	// tmp257, i
	add	w0, w0, 1	// tmp256, tmp257,
	str	w0, [sp, 24]	// tmp256, i
.L8:
// problem17.c:37:   for (i = 1; i < 10; i++) {
	ldr	w0, [sp, 24]	// tmp258, i
	cmp	w0, 9	// tmp258,
	bls	.L15		//,
// problem17.c:56:   sum += s1[1] + thousand;
	ldr	w1, [sp, 52]	// _29, s1[1]
// problem17.c:56:   sum += s1[1] + thousand;
	ldr	w0, [sp, 44]	// tmp259, thousand
	add	w0, w1, w0	// _30, _29, tmp259
// problem17.c:56:   sum += s1[1] + thousand;
	ldr	w1, [sp, 28]	// tmp261, sum
	add	w0, w1, w0	// tmp260, tmp261, _30
	str	w0, [sp, 28]	// tmp260, sum
// problem17.c:58:   printf("%u\n", sum);
	ldr	w1, [sp, 28]	//, sum
	adrp	x0, .LC3	// tmp262,
	add	x0, x0, :lo12:.LC3	//, tmp262,
	bl	printf		//
// problem17.c:60:   return 0;
	mov	w0, 0	// _59,
// problem17.c:61: }
	mov	w1, w0	// <retval>, _59
	adrp	x0, :got:__stack_chk_guard	// tmp265,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp264, tmp265,
	ldr	x3, [sp, 168]	// tmp267, D.4292
	ldr	x2, [x0]	// tmp268,
	subs	x3, x3, x2	// tmp267, tmp268
	mov	x2, 0	// tmp268
	beq	.L17		//,
	bl	__stack_chk_fail		//
.L17:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 176	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	3
	.word	3
	.word	5
	.word	4
	.word	4
	.word	3
	.word	5
	.word	5
	.word	4
	.align	3
.LC1:
	.word	3
	.word	6
	.word	6
	.word	8
	.word	8
	.word	7
	.word	7
	.word	9
	.word	8
	.word	8
	.align	3
.LC2:
	.word	0
	.word	0
	.word	6
	.word	6
	.word	5
	.word	5
	.word	5
	.word	7
	.word	6
	.word	6
	.text
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
