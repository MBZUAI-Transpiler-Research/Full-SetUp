	.arch armv8-a
	.file	"rmdir.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"--help"
	.align	3
.LC1:
	.string	"\nusage: rm FileTodelete"
	.align	3
.LC2:
	.string	"rmdir"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #80	//,,
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64	//,,
	str	w0, [sp, 12]	// argc, argc
	str	x1, [sp]	// argv, argv
// rmdir.c:12: void main(int argc, char* argv[]){
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp95,
	ldr	x1, [x0]	// tmp107,
	str	x1, [sp, 56]	// tmp107, D.6779
	mov	x1, 0	// tmp107
// rmdir.c:15: if(argc!=2 || argv[1]=="--help")
	ldr	w0, [sp, 12]	// tmp96, argc
	cmp	w0, 2	// tmp96,
	bne	.L2		//,
// rmdir.c:15: if(argc!=2 || argv[1]=="--help")
	ldr	x0, [sp]	// tmp97, argv
	add	x0, x0, 8	// _1, tmp97,
	ldr	x1, [x0]	// _2, *_1
// rmdir.c:15: if(argc!=2 || argv[1]=="--help")
	adrp	x0, .LC0	// tmp99,
	add	x0, x0, :lo12:.LC0	// tmp98, tmp99,
	cmp	x1, x0	// _2, tmp98
	bne	.L3		//,
.L2:
// rmdir.c:17:     printf("\nusage: rm FileTodelete\n");
	adrp	x0, .LC1	// tmp100,
	add	x0, x0, :lo12:.LC1	//, tmp100,
	bl	puts		//
.L3:
// rmdir.c:20: char *cmd = "rmdir";
	adrp	x0, .LC2	// tmp102,
	add	x0, x0, :lo12:.LC2	// tmp101, tmp102,
	str	x0, [sp, 24]	// tmp101, cmd
// rmdir.c:22: args[0] = "rmdir";
	adrp	x0, .LC2	// tmp104,
	add	x0, x0, :lo12:.LC2	// tmp103, tmp104,
	str	x0, [sp, 32]	// tmp103, args[0]
// rmdir.c:23: args[1] = argv[1];
	ldr	x0, [sp]	// tmp105, argv
	ldr	x0, [x0, 8]	// _3, MEM[(char * *)argv_6(D) + 8B]
	str	x0, [sp, 40]	// _3, args[1]
// rmdir.c:24: args[2] = NULL;
	str	xzr, [sp, 48]	//, args[2]
// rmdir.c:26: execvp(cmd, argv);
	ldr	x1, [sp]	//, argv
	ldr	x0, [sp, 24]	//, cmd
	bl	execvp		//
// rmdir.c:27: }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp106,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp106,
	ldr	x2, [sp, 56]	// tmp108, D.6779
	ldr	x1, [x0]	// tmp109,
	subs	x2, x2, x1	// tmp108, tmp109
	mov	x1, 0	// tmp109
	beq	.L4		//,
	bl	__stack_chk_fail		//
.L4:
	ldp	x29, x30, [sp, 64]	//,,
	add	sp, sp, 80	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
