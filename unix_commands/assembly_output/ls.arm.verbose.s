	.arch armv8-a
	.file	"ls.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"."
	.align	3
.LC1:
	.string	"-R"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #64	//,,
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, 48]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48	//,,
	str	w0, [sp, 12]	// argc, argc
	str	x1, [sp]	// argv, argv
// ls.c:8:  {
	adrp	x0, :got:__stack_chk_guard	// tmp108,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp108,
	ldr	x1, [x0]	// tmp119,
	str	x1, [sp, 40]	// tmp119, D.5660
	mov	x1, 0	// tmp119
// ls.c:13:    if (argc == 1)
	ldr	w0, [sp, 12]	// tmp109, argc
	cmp	w0, 1	// tmp109,
	bne	.L2		//,
// ls.c:15:      n=scandir(".",&name,NULL,alphasort);
	add	x0, sp, 32	// tmp110,,
	adrp	x3, :got:alphasort	//,
	ldr	x3, [x3, :got_lo12:alphasort]	//,
	mov	x2, 0	//,
	mov	x1, x0	//, tmp110
	adrp	x0, .LC0	// tmp111,
	add	x0, x0, :lo12:.LC0	//, tmp111,
	bl	scandir		//
	str	w0, [sp, 28]	//, n
// ls.c:16:       while (n--)
	b	.L3		//
.L4:
// ls.c:18:          printf("%s\n",name[n]->d_name);
	ldr	x1, [sp, 32]	// name.0_1, name
	ldrsw	x0, [sp, 28]	// _2, n
	lsl	x0, x0, 3	// _3, _2,
	add	x0, x1, x0	// _4, name.0_1, _3
	ldr	x0, [x0]	// _5, *_4
// ls.c:18:          printf("%s\n",name[n]->d_name);
	add	x0, x0, 19	// _6, _5,
// ls.c:18:          printf("%s\n",name[n]->d_name);
	bl	puts		//
// ls.c:19:          free(name[n]);
	ldr	x1, [sp, 32]	// name.1_7, name
	ldrsw	x0, [sp, 28]	// _8, n
	lsl	x0, x0, 3	// _9, _8,
	add	x0, x1, x0	// _10, name.1_7, _9
// ls.c:19:          free(name[n]);
	ldr	x0, [x0]	// _11, *_10
	bl	free		//
.L3:
// ls.c:16:       while (n--)
	ldr	w0, [sp, 28]	// n.2_12, n
	sub	w1, w0, #1	// tmp112, n.2_12,
	str	w1, [sp, 28]	// tmp112, n
// ls.c:16:       while (n--)
	cmp	w0, 0	// n.2_12,
	bne	.L4		//,
// ls.c:21:       free(name);
	ldr	x0, [sp, 32]	// name.3_13, name
	bl	free		//
	b	.L5		//
.L2:
// ls.c:23:   else if(argc==2 || argv[1]=="-R"){
	ldr	w0, [sp, 12]	// tmp113, argc
	cmp	w0, 2	// tmp113,
	beq	.L6		//,
// ls.c:23:   else if(argc==2 || argv[1]=="-R"){
	ldr	x0, [sp]	// tmp114, argv
	add	x0, x0, 8	// _14, tmp114,
	ldr	x1, [x0]	// _15, *_14
// ls.c:23:   else if(argc==2 || argv[1]=="-R"){
	adrp	x0, .LC1	// tmp116,
	add	x0, x0, :lo12:.LC1	// tmp115, tmp116,
	cmp	x1, x0	// _15, tmp115
	bne	.L5		//,
.L6:
// ls.c:25:    recursive(".",0);
	mov	w1, 0	//,
	adrp	x0, .LC0	// tmp117,
	add	x0, x0, :lo12:.LC0	//, tmp117,
	bl	recursive		//
.L5:
// ls.c:29:    exit(EXIT_SUCCESS);
	mov	w0, 0	//,
	bl	exit		//
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC2:
	.string	".."
	.align	3
.LC3:
	.string	"%s"
	.align	3
.LC4:
	.string	""
	.align	3
.LC5:
	.string	"%*s[[%s]]\n"
	.align	3
.LC6:
	.string	"%*s-> %s\n"
	.text
	.align	2
	.global	recursive
	.type	recursive, %function
recursive:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
	sub	sp, sp, #1072	//,,
	.cfi_def_cfa_offset 1088
	str	xzr, [sp, 1024]	//,
	str	x0, [sp, 8]	// name, name
	str	w1, [sp, 4]	// indent, indent
// ls.c:33: {
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp101,
	ldr	x1, [x0]	// tmp122,
	str	x1, [sp, 1064]	// tmp122, D.5665
	mov	x1, 0	// tmp122
// ls.c:37:     if (!(dir = opendir(name)))
	ldr	x0, [sp, 8]	//, name
	bl	opendir		//
	str	x0, [sp, 24]	// tmp102, dir
// ls.c:37:     if (!(dir = opendir(name)))
	ldr	x0, [sp, 24]	// tmp103, dir
	cmp	x0, 0	// tmp103,
	beq	.L18		//,
// ls.c:40:     while ((entry = readdir(dir)) != NULL) {
	b	.L11		//
.L16:
// ls.c:41:         if (entry->d_type == DT_DIR) {
	ldr	x0, [sp, 32]	// tmp104, entry
	ldrb	w0, [x0, 18]	// _1, entry_17->d_type
// ls.c:41:         if (entry->d_type == DT_DIR) {
	cmp	w0, 4	// _1,
	bne	.L12		//,
// ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	ldr	x0, [sp, 32]	// tmp105, entry
	add	x2, x0, 19	// _2, tmp105,
// ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	adrp	x0, .LC0	// tmp106,
	add	x1, x0, :lo12:.LC0	//, tmp106,
	mov	x0, x2	//, _2
	bl	strcmp		//
// ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	cmp	w0, 0	// _3,
	beq	.L19		//,
// ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	ldr	x0, [sp, 32]	// tmp107, entry
	add	x2, x0, 19	// _4, tmp107,
// ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	adrp	x0, .LC2	// tmp108,
	add	x1, x0, :lo12:.LC2	//, tmp108,
	mov	x0, x2	//, _4
	bl	strcmp		//
// ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	cmp	w0, 0	// _5,
	beq	.L19		//,
// ls.c:45:             sprintf(path,"%s",entry->d_name);
	ldr	x0, [sp, 32]	// tmp109, entry
	add	x0, x0, 19	// _6, tmp109,
// ls.c:45:             sprintf(path,"%s",entry->d_name);
	add	x3, sp, 40	// tmp110,,
	mov	x2, x0	//, _6
	adrp	x0, .LC3	// tmp111,
	add	x1, x0, :lo12:.LC3	//, tmp111,
	mov	x0, x3	//, tmp110
	bl	sprintf		//
// ls.c:46:             printf("%*s[[%s]]\n", indent, "", entry->d_name);
	ldr	x0, [sp, 32]	// tmp112, entry
	add	x0, x0, 19	// _7, tmp112,
// ls.c:46:             printf("%*s[[%s]]\n", indent, "", entry->d_name);
	mov	x3, x0	//, _7
	adrp	x0, .LC4	// tmp113,
	add	x2, x0, :lo12:.LC4	//, tmp113,
	ldr	w1, [sp, 4]	//, indent
	adrp	x0, .LC5	// tmp114,
	add	x0, x0, :lo12:.LC5	//, tmp114,
	bl	printf		//
// ls.c:47:             recursive(path, indent+3);
	ldr	w0, [sp, 4]	// tmp115, indent
	add	w1, w0, 3	// _8, tmp115,
	add	x0, sp, 40	// tmp116,,
	bl	recursive		//
	b	.L11		//
.L12:
// ls.c:49:             printf("%*s-> %s\n", indent, "", entry->d_name);
	ldr	x0, [sp, 32]	// tmp117, entry
	add	x0, x0, 19	// _9, tmp117,
// ls.c:49:             printf("%*s-> %s\n", indent, "", entry->d_name);
	mov	x3, x0	//, _9
	adrp	x0, .LC4	// tmp118,
	add	x2, x0, :lo12:.LC4	//, tmp118,
	ldr	w1, [sp, 4]	//, indent
	adrp	x0, .LC6	// tmp119,
	add	x0, x0, :lo12:.LC6	//, tmp119,
	bl	printf		//
	b	.L11		//
.L19:
// ls.c:44:                 continue;
	nop	
.L11:
// ls.c:40:     while ((entry = readdir(dir)) != NULL) {
	ldr	x0, [sp, 24]	//, dir
	bl	readdir		//
	str	x0, [sp, 32]	//, entry
// ls.c:40:     while ((entry = readdir(dir)) != NULL) {
	ldr	x0, [sp, 32]	// tmp120, entry
	cmp	x0, 0	// tmp120,
	bne	.L16		//,
// ls.c:52:     closedir(dir);
	ldr	x0, [sp, 24]	//, dir
	bl	closedir		//
	b	.L8		//
.L18:
// ls.c:38:         return;
	nop	
.L8:
// ls.c:53: }
	adrp	x0, :got:__stack_chk_guard	// tmp121,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp121,
	ldr	x2, [sp, 1064]	// tmp123, D.5665
	ldr	x1, [x0]	// tmp124,
	subs	x2, x2, x1	// tmp123, tmp124
	mov	x1, 0	// tmp124
	beq	.L17		//,
	bl	__stack_chk_fail		//
.L17:
	add	sp, sp, 1072	//,,
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	recursive, .-recursive
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
