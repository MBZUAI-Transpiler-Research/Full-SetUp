	.arch armv8-a
	.file	"cd.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Usage:: cd Directory"
	.align	3
.LC1:
	.string	"chdir"
	.align	3
.LC2:
	.string	"Current working dir: %s\n"
	.align	3
.LC3:
	.string	"getcwd() error"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #1072	//,,
	.cfi_def_cfa_offset 1072
	stp	x29, x30, [sp]	//,,
	.cfi_offset 29, -1072
	.cfi_offset 30, -1064
	mov	x29, sp	//,
	str	w0, [sp, 28]	// argc, argc
	str	x1, [sp, 16]	// argv, argv
// cd.c:6: int main(int argc,char* argv[]) {
	adrp	x0, :got:__stack_chk_guard	// tmp98,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp97, tmp98,
	ldr	x1, [x0]	// tmp113,
	str	x1, [sp, 1064]	// tmp113, D.5391
	mov	x1, 0	// tmp113
// cd.c:7: if(argc!=2)
	ldr	w0, [sp, 28]	// tmp99, argc
	cmp	w0, 2	// tmp99,
	beq	.L2		//,
// cd.c:9:     printf("Usage:: cd Directory\n");
	adrp	x0, .LC0	// tmp100,
	add	x0, x0, :lo12:.LC0	//, tmp100,
	bl	puts		//
.L2:
// cd.c:11:    char *p=argv[1];
	ldr	x0, [sp, 16]	// tmp101, argv
	ldr	x0, [x0, 8]	// tmp102, MEM[(char * *)argv_9(D) + 8B]
	str	x0, [sp, 32]	// tmp102, p
// cd.c:12: if(chdir(p)== -1)
	ldr	x0, [sp, 32]	//, p
	bl	chdir		//
// cd.c:12: if(chdir(p)== -1)
	cmn	w0, #1	// _1,
	bne	.L3		//,
// cd.c:14:     perror("chdir");
	adrp	x0, .LC1	// tmp103,
	add	x0, x0, :lo12:.LC1	//, tmp103,
	bl	perror		//
// cd.c:15:     exit(EXIT_FAILURE);
	mov	w0, 1	//,
	bl	exit		//
.L3:
// cd.c:20:    if (getcwd(cwd, sizeof(cwd)) != NULL)
	add	x0, sp, 40	// tmp104,,
	mov	x1, 1024	//,
	bl	getcwd		//
// cd.c:20:    if (getcwd(cwd, sizeof(cwd)) != NULL)
	cmp	x0, 0	// _2,
	beq	.L4		//,
// cd.c:21:        fprintf(stdout, "Current working dir: %s\n", cwd);
	adrp	x0, :got:stdout	// tmp106,
	ldr	x0, [x0, #:got_lo12:stdout]	// tmp105, tmp106,
	ldr	x3, [x0]	// stdout.0_3, stdout
	add	x0, sp, 40	// tmp107,,
	mov	x2, x0	//, tmp107
	adrp	x0, .LC2	// tmp108,
	add	x1, x0, :lo12:.LC2	//, tmp108,
	mov	x0, x3	//, stdout.0_3
	bl	fprintf		//
	b	.L5		//
.L4:
// cd.c:23:        perror("getcwd() error");
	adrp	x0, .LC3	// tmp109,
	add	x0, x0, :lo12:.LC3	//, tmp109,
	bl	perror		//
.L5:
// cd.c:24:    return 0;
	mov	w0, 0	// _15,
// cd.c:25: }
	mov	w1, w0	// <retval>, _15
	adrp	x0, :got:__stack_chk_guard	// tmp112,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp111, tmp112,
	ldr	x3, [sp, 1064]	// tmp114, D.5391
	ldr	x2, [x0]	// tmp115,
	subs	x3, x3, x2	// tmp114, tmp115
	mov	x2, 0	// tmp115
	beq	.L7		//,
	bl	__stack_chk_fail		//
.L7:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp]	//,,
	add	sp, sp, 1072	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
