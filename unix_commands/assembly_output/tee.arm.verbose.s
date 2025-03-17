	.arch armv8-a
	.file	"tee.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"a+"
	.align	3
.LC1:
	.string	"%s"
	.align	3
.LC2:
	.string	"%s\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #160	//,,
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, 144]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 144	//,,
	str	w0, [sp, 12]	// argc, argc
	str	x1, [sp]	// argv, argv
// tee.c:2: int main(int argc,char* argv[]){
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp95,
	ldr	x1, [x0]	// tmp106,
	str	x1, [sp, 136]	// tmp106, D.4840
	mov	x1, 0	// tmp106
.L2:
// tee.c:9: fp=fopen(argv[1],"a+");
	ldr	x0, [sp]	// tmp96, argv
	add	x0, x0, 8	// _1, tmp96,
// tee.c:9: fp=fopen(argv[1],"a+");
	ldr	x2, [x0]	// _2, *_1
	adrp	x0, .LC0	// tmp97,
	add	x1, x0, :lo12:.LC0	//, tmp97,
	mov	x0, x2	//, _2
	bl	fopen		//
	str	x0, [sp, 24]	// tmp98, fp
// tee.c:10: scanf("%s",input);
	add	x0, sp, 32	// tmp99,,
	mov	x1, x0	//, tmp99
	adrp	x0, .LC1	// tmp100,
	add	x0, x0, :lo12:.LC1	//, tmp100,
	bl	__isoc99_scanf		//
// tee.c:11: printf("%s",input);
	add	x0, sp, 32	// tmp101,,
	mov	x1, x0	//, tmp101
	adrp	x0, .LC1	// tmp102,
	add	x0, x0, :lo12:.LC1	//, tmp102,
	bl	printf		//
// tee.c:12: fprintf(fp,"%s\n",input);
	add	x0, sp, 32	// tmp103,,
	mov	x2, x0	//, tmp103
	adrp	x0, .LC2	// tmp104,
	add	x1, x0, :lo12:.LC2	//, tmp104,
	ldr	x0, [sp, 24]	//, fp
	bl	fprintf		//
// tee.c:13: fclose(fp);
	ldr	x0, [sp, 24]	//, fp
	bl	fclose		//
// tee.c:9: fp=fopen(argv[1],"a+");
	nop	
	b	.L2		//
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
