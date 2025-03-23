	.arch armv8-a
	.file	"tee.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	stp	x29, x30, [sp, -160]!	//,,,
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp	//,
	str	w0, [sp, 28]	// argc, argc
	str	x1, [sp, 16]	// argv, argv
// tee.c:2: int main(int argc,char* argv[]){
	adrp	x0, :got:__stack_chk_guard	// tmp96,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp95, tmp96,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 152]	// tmp108, D.4258
	mov	x1, 0	// tmp108
.L2:
// tee.c:9: fp=fopen(argv[1],"a+");
	ldr	x0, [sp, 16]	// tmp97, argv
	add	x0, x0, 8	// _1, tmp97,
// tee.c:9: fp=fopen(argv[1],"a+");
	ldr	x2, [x0]	// _2, *_1
	adrp	x0, .LC0	// tmp98,
	add	x1, x0, :lo12:.LC0	//, tmp98,
	mov	x0, x2	//, _2
	bl	fopen		//
	str	x0, [sp, 40]	// tmp99, fp
// tee.c:10: scanf("%s",input);
	add	x0, sp, 48	// tmp100,,
	mov	x1, x0	//, tmp100
	adrp	x0, .LC1	// tmp101,
	add	x0, x0, :lo12:.LC1	//, tmp101,
	bl	__isoc99_scanf		//
// tee.c:11: printf("%s",input);
	add	x0, sp, 48	// tmp102,,
	mov	x1, x0	//, tmp102
	adrp	x0, .LC1	// tmp103,
	add	x0, x0, :lo12:.LC1	//, tmp103,
	bl	printf		//
// tee.c:12: fprintf(fp,"%s\n",input);
	add	x0, sp, 48	// tmp104,,
	mov	x2, x0	//, tmp104
	adrp	x0, .LC2	// tmp105,
	add	x1, x0, :lo12:.LC2	//, tmp105,
	ldr	x0, [sp, 40]	//, fp
	bl	fprintf		//
// tee.c:13: fclose(fp);
	ldr	x0, [sp, 40]	//, fp
	bl	fclose		//
// tee.c:9: fp=fopen(argv[1],"a+");
	b	.L2		//
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
