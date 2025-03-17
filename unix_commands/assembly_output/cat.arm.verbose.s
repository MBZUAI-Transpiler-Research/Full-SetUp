	.arch armv8-a
	.file	"cat.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #160	//,,
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, 144]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 144	//,,
	str	w0, [sp, 12]	// argc, argc
	str	x1, [sp]	// argv, argv
// cat.c:9: {
	adrp	x0, :got:__stack_chk_guard	// tmp98,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp98,
	ldr	x1, [x0]	// tmp106,
	str	x1, [sp, 136]	// tmp106, D.6233
	mov	x1, 0	// tmp106
// cat.c:14:     fp=open(argv[1], O_RDONLY);
	ldr	x0, [sp]	// tmp99, argv
	add	x0, x0, 8	// _1, tmp99,
// cat.c:14:     fp=open(argv[1], O_RDONLY);
	ldr	x0, [x0]	// _2, *_1
	mov	w1, 0	//,
	bl	open		//
	str	w0, [sp, 24]	//, fp
// cat.c:17:     while(op=read(fp,ch,99)){
	b	.L2		//
.L3:
// cat.c:19:          write(1,ch,op);
	ldrsw	x1, [sp, 28]	// _3, op
	add	x0, sp, 32	// tmp100,,
	mov	x2, x1	//, _3
	mov	x1, x0	//, tmp100
	mov	w0, 1	//,
	bl	write		//
.L2:
// cat.c:17:     while(op=read(fp,ch,99)){
	add	x0, sp, 32	// tmp101,,
	mov	x2, 99	//,
	mov	x1, x0	//, tmp101
	ldr	w0, [sp, 24]	//, fp
	bl	read		//
// cat.c:17:     while(op=read(fp,ch,99)){
	str	w0, [sp, 28]	// tmp102, op
// cat.c:17:     while(op=read(fp,ch,99)){
	ldr	w0, [sp, 28]	// tmp103, op
	cmp	w0, 0	// tmp103,
	bne	.L3		//,
// cat.c:21:     printf("\n");
	mov	w0, 10	//,
	bl	putchar		//
// cat.c:22:     close(fp);
	ldr	w0, [sp, 24]	//, fp
	bl	close		//
// cat.c:24: return 0;
	mov	w0, 0	// _14,
// cat.c:25: }
	mov	w1, w0	// <retval>, _14
	adrp	x0, :got:__stack_chk_guard	// tmp105,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp105,
	ldr	x3, [sp, 136]	// tmp107, D.6233
	ldr	x2, [x0]	// tmp108,
	subs	x3, x3, x2	// tmp107, tmp108
	mov	x2, 0	// tmp108
	beq	.L5		//,
	bl	__stack_chk_fail		//
.L5:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 144]	//,,
	add	sp, sp, 160	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
