	.arch armv8-a
	.file	"problem42.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"r"
	.align	3
.LC1:
	.string	"words.txt"
	.align	3
.LC2:
	.string	"\"%[^\"]\","
	.align	3
.LC3:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
// problem42.c:12: {
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp100, tmp101,
	ldr	x1, [x0]	// tmp123,
	str	x1, [sp, 72]	// tmp123, D.5319
	mov	x1, 0	// tmp123
// problem42.c:14:   int cnt = 0;
	str	wzr, [sp, 20]	//, cnt
// problem42.c:17:   fp = fopen("words.txt", "r");
	adrp	x0, .LC0	// tmp102,
	add	x1, x0, :lo12:.LC0	//, tmp102,
	adrp	x0, .LC1	// tmp103,
	add	x0, x0, :lo12:.LC1	//, tmp103,
	bl	fopen		//
	str	x0, [sp, 32]	// tmp104, fp
// problem42.c:18:   if (!fp) {
	ldr	x0, [sp, 32]	// tmp105, fp
	cmp	x0, 0	// tmp105,
	bne	.L4		//,
// problem42.c:19:     perror("words.txt");
	adrp	x0, .LC1	// tmp106,
	add	x0, x0, :lo12:.LC1	//, tmp106,
	bl	perror		//
// problem42.c:20:     return 1;
	mov	w0, 1	// _9,
	b	.L8		//
.L7:
// problem42.c:24:     int i, sum = 0;
	str	wzr, [sp, 28]	//, sum
// problem42.c:25:     for (i = 0; buf[i] != '\0'; i++) {
	str	wzr, [sp, 24]	//, i
// problem42.c:25:     for (i = 0; buf[i] != '\0'; i++) {
	b	.L5		//
.L6:
// problem42.c:26:       sum += buf[i]-'A'+1;
	ldrsw	x0, [sp, 24]	// tmp107, i
	add	x1, sp, 40	// tmp108,,
	ldrb	w0, [x1, x0]	// _1, buf[i_7]
// problem42.c:26:       sum += buf[i]-'A'+1;
	sub	w0, w0, #64	// _3, _2,
// problem42.c:26:       sum += buf[i]-'A'+1;
	ldr	w1, [sp, 28]	// tmp110, sum
	add	w0, w1, w0	// tmp109, tmp110, _3
	str	w0, [sp, 28]	// tmp109, sum
// problem42.c:25:     for (i = 0; buf[i] != '\0'; i++) {
	ldr	w0, [sp, 24]	// tmp112, i
	add	w0, w0, 1	// tmp111, tmp112,
	str	w0, [sp, 24]	// tmp111, i
.L5:
// problem42.c:25:     for (i = 0; buf[i] != '\0'; i++) {
	ldrsw	x0, [sp, 24]	// tmp113, i
	add	x1, sp, 40	// tmp114,,
	ldrb	w0, [x1, x0]	// _4, buf[i_7]
// problem42.c:25:     for (i = 0; buf[i] != '\0'; i++) {
	cmp	w0, 0	// _4,
	bne	.L6		//,
// problem42.c:28:     cnt += is_triangle(sum);
	ldr	w0, [sp, 28]	//, sum
	bl	is_triangle		//
	mov	w1, w0	// _23,
// problem42.c:28:     cnt += is_triangle(sum);
	ldr	w0, [sp, 20]	// tmp116, cnt
	add	w0, w0, w1	// tmp115, tmp116, _23
	str	w0, [sp, 20]	// tmp115, cnt
.L4:
// problem42.c:23:   while (fscanf(fp, "\"%[^\"]\",", buf) != EOF) {
	add	x0, sp, 40	// tmp117,,
	mov	x2, x0	//, tmp117
	adrp	x0, .LC2	// tmp118,
	add	x1, x0, :lo12:.LC2	//, tmp118,
	ldr	x0, [sp, 32]	//, fp
	bl	__isoc99_fscanf		//
// problem42.c:23:   while (fscanf(fp, "\"%[^\"]\",", buf) != EOF) {
	cmn	w0, #1	// _5,
	bne	.L7		//,
// problem42.c:30:   fclose(fp);
	ldr	x0, [sp, 32]	//, fp
	bl	fclose		//
// problem42.c:32:   printf("%d\n", cnt);
	ldr	w1, [sp, 20]	//, cnt
	adrp	x0, .LC3	// tmp119,
	add	x0, x0, :lo12:.LC3	//, tmp119,
	bl	printf		//
// problem42.c:34:   return 0;
	mov	w0, 0	// _9,
.L8:
// problem42.c:35: }
	mov	w1, w0	// <retval>, _9
	adrp	x0, :got:__stack_chk_guard	// tmp122,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp121, tmp122,
	ldr	x3, [sp, 72]	// tmp124, D.5319
	ldr	x2, [x0]	// tmp125,
	subs	x3, x3, x2	// tmp124, tmp125
	mov	x2, 0	// tmp125
	beq	.L9		//,
// problem42.c:35: }
	bl	__stack_chk_fail		//
.L9:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.type	is_triangle, %function
is_triangle:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	w0, [sp, 28]	// c, c
// problem42.c:43:   int sq = sqrt(1+8*c);
	ldr	w0, [sp, 28]	// tmp102, c
	lsl	w0, w0, 3	// _1, tmp102,
// problem42.c:43:   int sq = sqrt(1+8*c);
	add	w0, w0, 1	// _2, _1,
// problem42.c:43:   int sq = sqrt(1+8*c);
	scvtf	d0, w0	// _3, _2
	bl	sqrt		//
// problem42.c:43:   int sq = sqrt(1+8*c);
	fcvtzs	w0, d0	// tmp103, _4
	str	w0, [sp, 44]	// tmp103, sq
// problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	ldr	w0, [sp, 44]	// tmp104, sq
	mul	w1, w0, w0	// _5, tmp104, tmp104
// problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	ldr	w0, [sp, 28]	// tmp105, c
	lsl	w0, w0, 3	// _6, tmp105,
// problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	add	w0, w0, 1	// _7, _6,
// problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	cmp	w1, w0	// _5, _7
	bne	.L11		//,
// problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	ldr	w0, [sp, 44]	// tmp106, sq
	and	w0, w0, 1	// _8, tmp106,
// problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	cmp	w0, 0	// _8,
	beq	.L11		//,
// problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	mov	w0, 1	// iftmp.0_9,
	b	.L13		//
.L11:
// problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	mov	w0, 0	// iftmp.0_9,
.L13:
// problem42.c:45: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	is_triangle, .-is_triangle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
