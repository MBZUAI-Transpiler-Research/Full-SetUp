	.arch armv8-a
	.file	"cat.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -160]!	//,,,
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp	//,
	str	w0, [sp, 28]	// argc, argc
	str	x1, [sp, 16]	// argv, argv
// cat.c:9: {
	adrp	x0, :got:__stack_chk_guard	// tmp99,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp98, tmp99,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 152]	// tmp108, D.5617
	mov	x1, 0	// tmp108
// cat.c:14:     fp=open(argv[1], O_RDONLY);
	ldr	x0, [sp, 16]	// tmp100, argv
	add	x0, x0, 8	// _1, tmp100,
// cat.c:14:     fp=open(argv[1], O_RDONLY);
	ldr	x0, [x0]	// _2, *_1
	mov	w1, 0	//,
	bl	open		//
	str	w0, [sp, 40]	//, fp
// cat.c:17:     while(op=read(fp,ch,99)){
	b	.L2		//
.L3:
// cat.c:19:          write(1,ch,op);
	ldrsw	x1, [sp, 44]	// _3, op
	add	x0, sp, 48	// tmp101,,
	mov	x2, x1	//, _3
	mov	x1, x0	//, tmp101
	mov	w0, 1	//,
	bl	write		//
.L2:
// cat.c:17:     while(op=read(fp,ch,99)){
	add	x0, sp, 48	// tmp102,,
	mov	x2, 99	//,
	mov	x1, x0	//, tmp102
	ldr	w0, [sp, 40]	//, fp
	bl	read		//
// cat.c:17:     while(op=read(fp,ch,99)){
	str	w0, [sp, 44]	// tmp103, op
// cat.c:17:     while(op=read(fp,ch,99)){
	ldr	w0, [sp, 44]	// tmp104, op
	cmp	w0, 0	// tmp104,
	bne	.L3		//,
// cat.c:21:     printf("\n");
	mov	w0, 10	//,
	bl	putchar		//
// cat.c:22:     close(fp);
	ldr	w0, [sp, 40]	//, fp
	bl	close		//
// cat.c:24: return 0;
	mov	w0, 0	// _14,
// cat.c:25: }
	mov	w1, w0	// <retval>, _14
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 152]	// tmp109, D.5617
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L5		//,
	bl	__stack_chk_fail		//
.L5:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 160	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
