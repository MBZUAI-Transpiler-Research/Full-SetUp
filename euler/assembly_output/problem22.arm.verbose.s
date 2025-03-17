	.arch armv8-a
	.file	"problem22.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"r"
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
.LFB6:
	.cfi_startproc
	sub	sp, sp, #96	//,,
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 64]	//,,
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 64	//,,
	str	x19, [sp, 80]	//,
	.cfi_offset 19, -16
// problem22.c:14: {
	adrp	x0, :got:__stack_chk_guard	// tmp134,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp134,
	ldr	x1, [x0]	// tmp175,
	str	x1, [sp, 56]	// tmp175, D.5614
	mov	x1, 0	// tmp175
// problem22.c:15:   int count = 0;
	str	wzr, [sp, 4]	//, count
// problem22.c:17:   char path[] = "names.txt";
	adrp	x0, .LC0	// tmp136,
	add	x1, x0, :lo12:.LC0	// tmp135, tmp136,
	add	x0, sp, 40	// tmp137,,
	ldr	x2, [x1]	// tmp139,
	str	x2, [x0]	// tmp139, path
	ldrh	w1, [x1, 8]	// tmp140,
	strh	w1, [x0, 8]	// tmp140, path
// problem22.c:20:   int sum = 0;
	str	wzr, [sp, 12]	//, sum
// problem22.c:22:   fp = fopen(path, "r");
	add	x2, sp, 40	// tmp141,,
	adrp	x0, .LC1	// tmp142,
	add	x1, x0, :lo12:.LC1	//, tmp142,
	mov	x0, x2	//, tmp141
	bl	fopen		//
	str	x0, [sp, 24]	// tmp143, fp
// problem22.c:23:   if (!fp) {
	ldr	x0, [sp, 24]	// tmp144, fp
	cmp	x0, 0	// tmp144,
	bne	.L2		//,
// problem22.c:24:     perror(path);
	add	x0, sp, 40	// tmp145,,
	bl	perror		//
// problem22.c:25:     return 1;
	mov	w0, 1	// _46,
	b	.L10		//
.L2:
// problem22.c:29:   names = malloc(8192 * sizeof *names);
	mov	x0, 65536	//,
	bl	malloc		//
	str	x0, [sp, 32]	// tmp146, names
// problem22.c:30:   names[count] = malloc(16);
	ldrsw	x0, [sp, 4]	// _1, count
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 32]	// tmp147, names
	add	x19, x1, x0	// _3, tmp147, _2
// problem22.c:30:   names[count] = malloc(16);
	mov	x0, 16	//,
	bl	malloc		//
// problem22.c:30:   names[count] = malloc(16);
	str	x0, [x19]	// _4, *_3
// problem22.c:31:   while (fscanf(fp, "\"%[^\"]\",", names[count]) != EOF) {
	b	.L4		//
.L5:
// problem22.c:32:     names[++count] = malloc(16);
	ldr	w0, [sp, 4]	// tmp150, count
	add	w0, w0, 1	// tmp149, tmp150,
	str	w0, [sp, 4]	// tmp149, count
// problem22.c:32:     names[++count] = malloc(16);
	ldrsw	x0, [sp, 4]	// _5, count
// problem22.c:32:     names[++count] = malloc(16);
	lsl	x0, x0, 3	// _6, _5,
	ldr	x1, [sp, 32]	// tmp151, names
	add	x19, x1, x0	// _7, tmp151, _6
// problem22.c:32:     names[++count] = malloc(16);
	mov	x0, 16	//,
	bl	malloc		//
// problem22.c:32:     names[++count] = malloc(16);
	str	x0, [x19]	// _8, *_7
.L4:
// problem22.c:31:   while (fscanf(fp, "\"%[^\"]\",", names[count]) != EOF) {
	ldrsw	x0, [sp, 4]	// _9, count
	lsl	x0, x0, 3	// _10, _9,
	ldr	x1, [sp, 32]	// tmp153, names
	add	x0, x1, x0	// _11, tmp153, _10
// problem22.c:31:   while (fscanf(fp, "\"%[^\"]\",", names[count]) != EOF) {
	ldr	x0, [x0]	// _12, *_11
	mov	x2, x0	//, _12
	adrp	x0, .LC2	// tmp154,
	add	x1, x0, :lo12:.LC2	//, tmp154,
	ldr	x0, [sp, 24]	//, fp
	bl	__isoc99_fscanf		//
// problem22.c:31:   while (fscanf(fp, "\"%[^\"]\",", names[count]) != EOF) {
	cmn	w0, #1	// _13,
	bne	.L5		//,
// problem22.c:34:   free(names[count]);
	ldrsw	x0, [sp, 4]	// _14, count
	lsl	x0, x0, 3	// _15, _14,
	ldr	x1, [sp, 32]	// tmp155, names
	add	x0, x1, x0	// _16, tmp155, _15
// problem22.c:34:   free(names[count]);
	ldr	x0, [x0]	// _17, *_16
	bl	free		//
// problem22.c:35:   fclose(fp);
	ldr	x0, [sp, 24]	//, fp
	bl	fclose		//
// problem22.c:37:   qsort(names, count, sizeof *names, compare);
	ldrsw	x1, [sp, 4]	// _18, count
	adrp	x0, compare	// tmp156,
	add	x3, x0, :lo12:compare	//, tmp156,
	mov	x2, 8	//,
	ldr	x0, [sp, 32]	//, names
	bl	qsort		//
// problem22.c:39:   for (i = 0; i < count; i++) {
	str	wzr, [sp, 8]	//, i
// problem22.c:39:   for (i = 0; i < count; i++) {
	b	.L6		//
.L9:
// problem22.c:40:     int j, s = 0;
	str	wzr, [sp, 20]	//, s
// problem22.c:41:     for (j = 0; names[i][j] != 0; j++) {
	str	wzr, [sp, 16]	//, j
// problem22.c:41:     for (j = 0; names[i][j] != 0; j++) {
	b	.L7		//
.L8:
// problem22.c:42:       s += names[i][j]-'A'+1;
	ldrsw	x0, [sp, 8]	// _19, i
	lsl	x0, x0, 3	// _20, _19,
	ldr	x1, [sp, 32]	// tmp157, names
	add	x0, x1, x0	// _21, tmp157, _20
	ldr	x1, [x0]	// _22, *_21
// problem22.c:42:       s += names[i][j]-'A'+1;
	ldrsw	x0, [sp, 16]	// _23, j
	add	x0, x1, x0	// _24, _22, _23
	ldrb	w0, [x0]	// _25, *_24
// problem22.c:42:       s += names[i][j]-'A'+1;
	sub	w0, w0, #64	// _27, _26,
// problem22.c:42:       s += names[i][j]-'A'+1;
	ldr	w1, [sp, 20]	// tmp159, s
	add	w0, w1, w0	// tmp158, tmp159, _27
	str	w0, [sp, 20]	// tmp158, s
// problem22.c:41:     for (j = 0; names[i][j] != 0; j++) {
	ldr	w0, [sp, 16]	// tmp161, j
	add	w0, w0, 1	// tmp160, tmp161,
	str	w0, [sp, 16]	// tmp160, j
.L7:
// problem22.c:41:     for (j = 0; names[i][j] != 0; j++) {
	ldrsw	x0, [sp, 8]	// _28, i
	lsl	x0, x0, 3	// _29, _28,
	ldr	x1, [sp, 32]	// tmp162, names
	add	x0, x1, x0	// _30, tmp162, _29
	ldr	x1, [x0]	// _31, *_30
// problem22.c:41:     for (j = 0; names[i][j] != 0; j++) {
	ldrsw	x0, [sp, 16]	// _32, j
	add	x0, x1, x0	// _33, _31, _32
	ldrb	w0, [x0]	// _34, *_33
// problem22.c:41:     for (j = 0; names[i][j] != 0; j++) {
	cmp	w0, 0	// _34,
	bne	.L8		//,
// problem22.c:44:     sum += s * (i+1);
	ldr	w0, [sp, 8]	// tmp163, i
	add	w1, w0, 1	// _35, tmp163,
// problem22.c:44:     sum += s * (i+1);
	ldr	w0, [sp, 20]	// tmp164, s
	mul	w0, w1, w0	// _36, _35, tmp164
// problem22.c:44:     sum += s * (i+1);
	ldr	w1, [sp, 12]	// tmp166, sum
	add	w0, w1, w0	// tmp165, tmp166, _36
	str	w0, [sp, 12]	// tmp165, sum
// problem22.c:46:     free(names[i]);
	ldrsw	x0, [sp, 8]	// _37, i
	lsl	x0, x0, 3	// _38, _37,
	ldr	x1, [sp, 32]	// tmp167, names
	add	x0, x1, x0	// _39, tmp167, _38
// problem22.c:46:     free(names[i]);
	ldr	x0, [x0]	// _40, *_39
	bl	free		//
// problem22.c:39:   for (i = 0; i < count; i++) {
	ldr	w0, [sp, 8]	// tmp169, i
	add	w0, w0, 1	// tmp168, tmp169,
	str	w0, [sp, 8]	// tmp168, i
.L6:
// problem22.c:39:   for (i = 0; i < count; i++) {
	ldr	w1, [sp, 8]	// tmp170, i
	ldr	w0, [sp, 4]	// tmp171, count
	cmp	w1, w0	// tmp170, tmp171
	blt	.L9		//,
// problem22.c:48:   free(names);
	ldr	x0, [sp, 32]	//, names
	bl	free		//
// problem22.c:50:   printf("%d\n", sum);
	ldr	w1, [sp, 12]	//, sum
	adrp	x0, .LC3	// tmp172,
	add	x0, x0, :lo12:.LC3	//, tmp172,
	bl	printf		//
// problem22.c:52:   return 0;
	mov	w0, 0	// _46,
.L10:
// problem22.c:53: }
	mov	w1, w0	// <retval>, _46
	adrp	x0, :got:__stack_chk_guard	// tmp174,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp174,
	ldr	x3, [sp, 56]	// tmp176, D.5614
	ldr	x2, [x0]	// tmp177,
	subs	x3, x3, x2	// tmp176, tmp177
	mov	x2, 0	// tmp177
	beq	.L11		//,
	bl	__stack_chk_fail		//
.L11:
	mov	w0, w1	//, <retval>
	ldr	x19, [sp, 80]	//,
	ldp	x29, x30, [sp, 64]	//,,
	add	sp, sp, 96	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"names.txt"
	.text
	.align	2
	.type	compare, %function
compare:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// x, x
	str	x1, [sp, 16]	// y, y
// problem22.c:57:   return strcmp(*(char * const *)x, *(char * const *)y);
	ldr	x0, [sp, 24]	// tmp96, x
	ldr	x2, [x0]	// _1, MEM[(char * const *)x_4(D)]
	ldr	x0, [sp, 16]	// tmp97, y
	ldr	x0, [x0]	// _2, MEM[(char * const *)y_5(D)]
	mov	x1, x0	//, _2
	mov	x0, x2	//, _1
	bl	strcmp		//
// problem22.c:58: }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	compare, .-compare
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
