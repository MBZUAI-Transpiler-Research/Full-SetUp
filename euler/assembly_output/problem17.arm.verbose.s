	.arch armv8-a
	.file	"problem17.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
	sub	sp, sp, #176	//,,
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, 160]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 160	//,,
// problem17.c:9: {
	adrp	x0, :got:__stack_chk_guard	// tmp124,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp124,
	ldr	x1, [x0]	// tmp264,
	str	x1, [sp, 152]	// tmp264, D.4874
	mov	x1, 0	// tmp264
// problem17.c:11:   unsigned s1[] = { 0, 3, 3, 5, 4, 4, 3, 5, 5, 4 };
	adrp	x0, .LC0	// tmp126,
	add	x1, x0, :lo12:.LC0	// tmp125, tmp126,
	add	x0, sp, 32	// tmp127,,
	ldp	q0, q1, [x1]	// tmp129, tmp130,
	stp	q0, q1, [x0]	// tmp129, tmp130, s1
	ldr	x1, [x1, 32]	// tmp131,
	str	x1, [x0, 32]	// tmp131, s1
// problem17.c:13:   unsigned s2[] = { 3, 6, 6, 8, 8, 7, 7, 9, 8, 8 };
	adrp	x0, .LC1	// tmp133,
	add	x1, x0, :lo12:.LC1	// tmp132, tmp133,
	add	x0, sp, 72	// tmp134,,
	ldp	q0, q1, [x1]	// tmp136, tmp137,
	stp	q0, q1, [x0]	// tmp136, tmp137, s2
	ldr	x1, [x1, 32]	// tmp138,
	str	x1, [x0, 32]	// tmp138, s2
// problem17.c:15:   unsigned s3[] = { 0, 0, 6, 6, 5, 5, 5, 7, 6, 6 };
	adrp	x0, .LC2	// tmp140,
	add	x1, x0, :lo12:.LC2	// tmp139, tmp140,
	add	x0, sp, 112	// tmp141,,
	ldp	q0, q1, [x1]	// tmp143, tmp144,
	stp	q0, q1, [x0]	// tmp143, tmp144, s3
	ldr	x1, [x1, 32]	// tmp145,
	str	x1, [x0, 32]	// tmp145, s3
// problem17.c:17:   unsigned hundred = 7;
	mov	w0, 7	// tmp146,
	str	w0, [sp, 20]	// tmp146, hundred
// problem17.c:18:   unsigned and = 3;
	mov	w0, 3	// tmp147,
	str	w0, [sp, 24]	// tmp147, and
// problem17.c:19:   unsigned thousand = 8;
	mov	w0, 8	// tmp148,
	str	w0, [sp, 28]	// tmp148, thousand
// problem17.c:22:   unsigned sum = 0;
	str	wzr, [sp, 12]	//, sum
// problem17.c:25:   for (i = 1; i < 10; i++) {
	mov	w0, 1	// tmp149,
	str	w0, [sp, 8]	// tmp149, i
// problem17.c:25:   for (i = 1; i < 10; i++) {
	b	.L2		//
.L3:
// problem17.c:26:     sum += s1[i];
	ldr	w0, [sp, 8]	// tmp150, i
	lsl	x0, x0, 2	// tmp151, tmp150,
	add	x1, sp, 32	// tmp152,,
	ldr	w0, [x1, x0]	// _1, s1[i_31]
// problem17.c:26:     sum += s1[i];
	ldr	w1, [sp, 12]	// tmp154, sum
	add	w0, w1, w0	// tmp153, tmp154, _1
	str	w0, [sp, 12]	// tmp153, sum
// problem17.c:25:   for (i = 1; i < 10; i++) {
	ldr	w0, [sp, 8]	// tmp156, i
	add	w0, w0, 1	// tmp155, tmp156,
	str	w0, [sp, 8]	// tmp155, i
.L2:
// problem17.c:25:   for (i = 1; i < 10; i++) {
	ldr	w0, [sp, 8]	// tmp157, i
	cmp	w0, 9	// tmp157,
	bls	.L3		//,
// problem17.c:29:   for (i = 0; i < 10; i++) {
	str	wzr, [sp, 8]	//, i
// problem17.c:29:   for (i = 0; i < 10; i++) {
	b	.L4		//
.L5:
// problem17.c:30:     sum += s2[i];
	ldr	w0, [sp, 8]	// tmp158, i
	lsl	x0, x0, 2	// tmp159, tmp158,
	add	x1, sp, 72	// tmp160,,
	ldr	w0, [x1, x0]	// _2, s2[i_32]
// problem17.c:30:     sum += s2[i];
	ldr	w1, [sp, 12]	// tmp162, sum
	add	w0, w1, w0	// tmp161, tmp162, _2
	str	w0, [sp, 12]	// tmp161, sum
// problem17.c:29:   for (i = 0; i < 10; i++) {
	ldr	w0, [sp, 8]	// tmp164, i
	add	w0, w0, 1	// tmp163, tmp164,
	str	w0, [sp, 8]	// tmp163, i
.L4:
// problem17.c:29:   for (i = 0; i < 10; i++) {
	ldr	w0, [sp, 8]	// tmp165, i
	cmp	w0, 9	// tmp165,
	bls	.L5		//,
// problem17.c:33:   for (i = 20; i < 100; i++) {
	mov	w0, 20	// tmp166,
	str	w0, [sp, 8]	// tmp166, i
// problem17.c:33:   for (i = 20; i < 100; i++) {
	b	.L6		//
.L7:
// problem17.c:34:     sum += s3[i/10] + s1[i%10];
	ldr	w1, [sp, 8]	// tmp167, i
	mov	w0, 52429	// tmp169,
	movk	w0, 0xcccc, lsl 16	// tmp169,,
	umull	x0, w1, w0	// tmp168, tmp167, tmp169
	lsr	x0, x0, 32	// tmp170, tmp168,
	lsr	w0, w0, 3	// _3, tmp170,
// problem17.c:34:     sum += s3[i/10] + s1[i%10];
	uxtw	x0, w0	// tmp171, _3
	lsl	x0, x0, 2	// tmp172, tmp171,
	add	x1, sp, 112	// tmp173,,
	ldr	w3, [x1, x0]	// _4, s3[_3]
// problem17.c:34:     sum += s3[i/10] + s1[i%10];
	ldr	w2, [sp, 8]	// tmp174, i
	mov	w0, 52429	// tmp176,
	movk	w0, 0xcccc, lsl 16	// tmp176,,
	umull	x0, w2, w0	// tmp175, tmp174, tmp176
	lsr	x0, x0, 32	// tmp177, tmp175,
	lsr	w1, w0, 3	// _5, tmp177,
	mov	w0, w1	// tmp178, _5
	lsl	w0, w0, 2	// tmp179, tmp178,
	add	w0, w0, w1	// tmp178, tmp178, _5
	lsl	w0, w0, 1	// tmp180, tmp178,
	sub	w1, w2, w0	// _5, tmp174, tmp178
// problem17.c:34:     sum += s3[i/10] + s1[i%10];
	uxtw	x0, w1	// tmp181, _5
	lsl	x0, x0, 2	// tmp182, tmp181,
	add	x1, sp, 32	// tmp183,,
	ldr	w0, [x1, x0]	// _6, s1[_5]
// problem17.c:34:     sum += s3[i/10] + s1[i%10];
	add	w0, w3, w0	// _7, _4, _6
// problem17.c:34:     sum += s3[i/10] + s1[i%10];
	ldr	w1, [sp, 12]	// tmp185, sum
	add	w0, w1, w0	// tmp184, tmp185, _7
	str	w0, [sp, 12]	// tmp184, sum
// problem17.c:33:   for (i = 20; i < 100; i++) {
	ldr	w0, [sp, 8]	// tmp187, i
	add	w0, w0, 1	// tmp186, tmp187,
	str	w0, [sp, 8]	// tmp186, i
.L6:
// problem17.c:33:   for (i = 20; i < 100; i++) {
	ldr	w0, [sp, 8]	// tmp188, i
	cmp	w0, 99	// tmp188,
	bls	.L7		//,
// problem17.c:37:   for (i = 1; i < 10; i++) {
	mov	w0, 1	// tmp189,
	str	w0, [sp, 8]	// tmp189, i
// problem17.c:37:   for (i = 1; i < 10; i++) {
	b	.L8		//
.L15:
// problem17.c:41:     sum += s1[i] + hundred;
	ldr	w0, [sp, 8]	// tmp190, i
	lsl	x0, x0, 2	// tmp191, tmp190,
	add	x1, sp, 32	// tmp192,,
	ldr	w1, [x1, x0]	// _8, s1[i_34]
// problem17.c:41:     sum += s1[i] + hundred;
	ldr	w0, [sp, 20]	// tmp193, hundred
	add	w0, w1, w0	// _9, _8, tmp193
// problem17.c:41:     sum += s1[i] + hundred;
	ldr	w1, [sp, 12]	// tmp195, sum
	add	w0, w1, w0	// tmp194, tmp195, _9
	str	w0, [sp, 12]	// tmp194, sum
// problem17.c:43:     for (j = 1; j < 10; j++) {
	mov	w0, 1	// tmp196,
	str	w0, [sp, 16]	// tmp196, j
// problem17.c:43:     for (j = 1; j < 10; j++) {
	b	.L9		//
.L10:
// problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	ldr	w0, [sp, 8]	// tmp197, i
	lsl	x0, x0, 2	// tmp198, tmp197,
	add	x1, sp, 32	// tmp199,,
	ldr	w1, [x1, x0]	// _10, s1[i_34]
// problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	ldr	w0, [sp, 20]	// tmp200, hundred
	add	w1, w1, w0	// _11, _10, tmp200
// problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	ldr	w0, [sp, 24]	// tmp201, and
	add	w1, w1, w0	// _12, _11, tmp201
// problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	ldrsw	x0, [sp, 16]	// tmp202, j
	lsl	x0, x0, 2	// tmp203, tmp202,
	add	x2, sp, 32	// tmp204,,
	ldr	w0, [x2, x0]	// _13, s1[j_42]
// problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	add	w0, w1, w0	// _14, _12, _13
// problem17.c:44:       sum += s1[i] + hundred + and + s1[j];
	ldr	w1, [sp, 12]	// tmp206, sum
	add	w0, w1, w0	// tmp205, tmp206, _14
	str	w0, [sp, 12]	// tmp205, sum
// problem17.c:43:     for (j = 1; j < 10; j++) {
	ldr	w0, [sp, 16]	// tmp208, j
	add	w0, w0, 1	// tmp207, tmp208,
	str	w0, [sp, 16]	// tmp207, j
.L9:
// problem17.c:43:     for (j = 1; j < 10; j++) {
	ldr	w0, [sp, 16]	// tmp209, j
	cmp	w0, 9	// tmp209,
	ble	.L10		//,
// problem17.c:47:     for (j = 0; j < 10; j++) {
	str	wzr, [sp, 16]	//, j
// problem17.c:47:     for (j = 0; j < 10; j++) {
	b	.L11		//
.L12:
// problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	ldr	w0, [sp, 8]	// tmp210, i
	lsl	x0, x0, 2	// tmp211, tmp210,
	add	x1, sp, 32	// tmp212,,
	ldr	w1, [x1, x0]	// _15, s1[i_34]
// problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	ldr	w0, [sp, 20]	// tmp213, hundred
	add	w1, w1, w0	// _16, _15, tmp213
// problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	ldr	w0, [sp, 24]	// tmp214, and
	add	w1, w1, w0	// _17, _16, tmp214
// problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	ldrsw	x0, [sp, 16]	// tmp215, j
	lsl	x0, x0, 2	// tmp216, tmp215,
	add	x2, sp, 72	// tmp217,,
	ldr	w0, [x2, x0]	// _18, s2[j_43]
// problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	add	w0, w1, w0	// _19, _17, _18
// problem17.c:48:       sum += s1[i] + hundred + and + s2[j];
	ldr	w1, [sp, 12]	// tmp219, sum
	add	w0, w1, w0	// tmp218, tmp219, _19
	str	w0, [sp, 12]	// tmp218, sum
// problem17.c:47:     for (j = 0; j < 10; j++) {
	ldr	w0, [sp, 16]	// tmp221, j
	add	w0, w0, 1	// tmp220, tmp221,
	str	w0, [sp, 16]	// tmp220, j
.L11:
// problem17.c:47:     for (j = 0; j < 10; j++) {
	ldr	w0, [sp, 16]	// tmp222, j
	cmp	w0, 9	// tmp222,
	ble	.L12		//,
// problem17.c:51:     for (j = 20; j < 100; j++) {
	mov	w0, 20	// tmp223,
	str	w0, [sp, 16]	// tmp223, j
// problem17.c:51:     for (j = 20; j < 100; j++) {
	b	.L13		//
.L14:
// problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	ldr	w0, [sp, 8]	// tmp224, i
	lsl	x0, x0, 2	// tmp225, tmp224,
	add	x1, sp, 32	// tmp226,,
	ldr	w1, [x1, x0]	// _20, s1[i_34]
// problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	ldr	w0, [sp, 20]	// tmp227, hundred
	add	w1, w1, w0	// _21, _20, tmp227
// problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	ldr	w0, [sp, 24]	// tmp228, and
	add	w1, w1, w0	// _22, _21, tmp228
// problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	ldr	w0, [sp, 16]	// tmp229, j
	mov	w2, 26215	// tmp231,
	movk	w2, 0x6666, lsl 16	// tmp231,,
	smull	x2, w0, w2	// tmp230, tmp229, tmp231
	lsr	x2, x2, 32	// tmp232, tmp230,
	asr	w2, w2, 2	// tmp233, tmp232,
	asr	w0, w0, 31	// tmp234, tmp229,
	sub	w0, w2, w0	// _23, tmp233, tmp234
// problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	sxtw	x0, w0	// tmp235, _23
	lsl	x0, x0, 2	// tmp236, tmp235,
	add	x2, sp, 112	// tmp237,,
	ldr	w0, [x2, x0]	// _24, s3[_23]
// problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	add	w3, w1, w0	// _25, _22, _24
// problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	ldr	w1, [sp, 16]	// tmp238, j
	mov	w0, 26215	// tmp240,
	movk	w0, 0x6666, lsl 16	// tmp240,,
	smull	x0, w1, w0	// tmp239, tmp238, tmp240
	lsr	x0, x0, 32	// tmp241, tmp239,
	asr	w2, w0, 2	// tmp242, tmp241,
	asr	w0, w1, 31	// tmp243, tmp238,
	sub	w2, w2, w0	// _26, tmp242, tmp243
	mov	w0, w2	// tmp244, _26
	lsl	w0, w0, 2	// tmp245, tmp244,
	add	w0, w0, w2	// tmp244, tmp244, _26
	lsl	w0, w0, 1	// tmp246, tmp244,
	sub	w2, w1, w0	// _26, tmp238, tmp244
// problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	sxtw	x0, w2	// tmp247, _26
	lsl	x0, x0, 2	// tmp248, tmp247,
	add	x1, sp, 32	// tmp249,,
	ldr	w0, [x1, x0]	// _27, s1[_26]
// problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	add	w0, w3, w0	// _28, _25, _27
// problem17.c:52:       sum += s1[i] + hundred + and + s3[j/10] + s1[j%10];
	ldr	w1, [sp, 12]	// tmp251, sum
	add	w0, w1, w0	// tmp250, tmp251, _28
	str	w0, [sp, 12]	// tmp250, sum
// problem17.c:51:     for (j = 20; j < 100; j++) {
	ldr	w0, [sp, 16]	// tmp253, j
	add	w0, w0, 1	// tmp252, tmp253,
	str	w0, [sp, 16]	// tmp252, j
.L13:
// problem17.c:51:     for (j = 20; j < 100; j++) {
	ldr	w0, [sp, 16]	// tmp254, j
	cmp	w0, 99	// tmp254,
	ble	.L14		//,
// problem17.c:37:   for (i = 1; i < 10; i++) {
	ldr	w0, [sp, 8]	// tmp256, i
	add	w0, w0, 1	// tmp255, tmp256,
	str	w0, [sp, 8]	// tmp255, i
.L8:
// problem17.c:37:   for (i = 1; i < 10; i++) {
	ldr	w0, [sp, 8]	// tmp257, i
	cmp	w0, 9	// tmp257,
	bls	.L15		//,
// problem17.c:56:   sum += s1[1] + thousand;
	ldr	w1, [sp, 36]	// _29, s1[1]
// problem17.c:56:   sum += s1[1] + thousand;
	ldr	w0, [sp, 28]	// tmp258, thousand
	add	w0, w1, w0	// _30, _29, tmp258
// problem17.c:56:   sum += s1[1] + thousand;
	ldr	w1, [sp, 12]	// tmp260, sum
	add	w0, w1, w0	// tmp259, tmp260, _30
	str	w0, [sp, 12]	// tmp259, sum
// problem17.c:58:   printf("%u\n", sum);
	ldr	w1, [sp, 12]	//, sum
	adrp	x0, .LC3	// tmp261,
	add	x0, x0, :lo12:.LC3	//, tmp261,
	bl	printf		//
// problem17.c:60:   return 0;
	mov	w0, 0	// _59,
// problem17.c:61: }
	mov	w1, w0	// <retval>, _59
	adrp	x0, :got:__stack_chk_guard	// tmp263,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp263,
	ldr	x3, [sp, 152]	// tmp265, D.4874
	ldr	x2, [x0]	// tmp266,
	subs	x3, x3, x2	// tmp265, tmp266
	mov	x2, 0	// tmp266
	beq	.L17		//,
	bl	__stack_chk_fail		//
.L17:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 160]	//,,
	add	sp, sp, 176	//,,
	.cfi_restore 29
	.cfi_restore 30
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
