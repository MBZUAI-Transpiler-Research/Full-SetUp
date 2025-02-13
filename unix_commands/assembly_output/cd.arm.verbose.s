	.arch armv8-a
	.file	"cd.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
	sub	sp, sp, #1056	//,,
	.cfi_def_cfa_offset 1072
	str	xzr, [sp, 1024]	//,
	str	w0, [sp, 12]	// argc, argc
	str	x1, [sp]	// argv, argv
// cd.c:6: int main(int argc,char* argv[]) {
	adrp	x0, :got:__stack_chk_guard	// tmp97,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp97,
	ldr	x1, [x0]	// tmp110,
	str	x1, [sp, 1048]	// tmp110, D.5980
	mov	x1, 0	// tmp110
// cd.c:7: if(argc!=2)
	ldr	w0, [sp, 12]	// tmp98, argc
	cmp	w0, 2	// tmp98,
	beq	.L2		//,
// cd.c:9:     printf("Usage:: cd Directory\n");
	adrp	x0, .LC0	// tmp99,
	add	x0, x0, :lo12:.LC0	//, tmp99,
	bl	puts		//
.L2:
// cd.c:11:    char *p=argv[1];
	ldr	x0, [sp]	// tmp100, argv
	ldr	x0, [x0, 8]	// tmp101, MEM[(char * *)argv_9(D) + 8B]
	str	x0, [sp, 16]	// tmp101, p
// cd.c:12: if(chdir(p)== -1)
	ldr	x0, [sp, 16]	//, p
	bl	chdir		//
// cd.c:12: if(chdir(p)== -1)
	cmn	w0, #1	// _1,
	bne	.L3		//,
// cd.c:14:     perror("chdir");
	adrp	x0, .LC1	// tmp102,
	add	x0, x0, :lo12:.LC1	//, tmp102,
	bl	perror		//
// cd.c:15:     exit(EXIT_FAILURE);
	mov	w0, 1	//,
	bl	exit		//
.L3:
// cd.c:20:    if (getcwd(cwd, sizeof(cwd)) != NULL)
	add	x0, sp, 24	// tmp103,,
	mov	x1, 1024	//,
	bl	getcwd		//
// cd.c:20:    if (getcwd(cwd, sizeof(cwd)) != NULL)
	cmp	x0, 0	// _2,
	beq	.L4		//,
// cd.c:21:        fprintf(stdout, "Current working dir: %s\n", cwd);
	adrp	x0, :got:stdout	// tmp104,
	ldr	x0, [x0, :got_lo12:stdout]	// tmp104,
	ldr	x3, [x0]	// stdout.0_3, stdout
	add	x0, sp, 24	// tmp105,,
	mov	x2, x0	//, tmp105
	adrp	x0, .LC2	// tmp106,
	add	x1, x0, :lo12:.LC2	//, tmp106,
	mov	x0, x3	//, stdout.0_3
	bl	fprintf		//
	b	.L5		//
.L4:
// cd.c:23:        perror("getcwd() error");
	adrp	x0, .LC3	// tmp107,
	add	x0, x0, :lo12:.LC3	//, tmp107,
	bl	perror		//
.L5:
// cd.c:24:    return 0;
	mov	w0, 0	// _15,
// cd.c:25: }
	mov	w1, w0	// <retval>, _15
	adrp	x0, :got:__stack_chk_guard	// tmp109,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp109,
	ldr	x3, [sp, 1048]	// tmp111, D.5980
	ldr	x2, [x0]	// tmp112,
	subs	x3, x3, x2	// tmp111, tmp112
	mov	x2, 0	// tmp112
	beq	.L7		//,
	bl	__stack_chk_fail		//
.L7:
	mov	w0, w1	//, <retval>
	add	sp, sp, 1056	//,,
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
