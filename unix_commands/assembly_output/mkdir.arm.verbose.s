	.arch armv8-a
	.file	"mkdir.c"
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
	.string	"mkdir"
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
// mkdir.c:12: int main(int argc, char* argv[]){
	adrp	x0, :got:__stack_chk_guard	// tmp97,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp97,
	ldr	x1, [x0]	// tmp110,
	str	x1, [sp, 56]	// tmp110, D.6781
	mov	x1, 0	// tmp110
// mkdir.c:15: if(argc!=2 || argv[1]=="--help")
	ldr	w0, [sp, 12]	// tmp98, argc
	cmp	w0, 2	// tmp98,
	bne	.L2		//,
// mkdir.c:15: if(argc!=2 || argv[1]=="--help")
	ldr	x0, [sp]	// tmp99, argv
	add	x0, x0, 8	// _1, tmp99,
	ldr	x1, [x0]	// _2, *_1
// mkdir.c:15: if(argc!=2 || argv[1]=="--help")
	adrp	x0, .LC0	// tmp101,
	add	x0, x0, :lo12:.LC0	// tmp100, tmp101,
	cmp	x1, x0	// _2, tmp100
	bne	.L3		//,
.L2:
// mkdir.c:17:     printf("\nusage: rm FileTodelete\n");
	adrp	x0, .LC1	// tmp102,
	add	x0, x0, :lo12:.LC1	//, tmp102,
	bl	puts		//
.L3:
// mkdir.c:20: char *cmd = "mkdir";
	adrp	x0, .LC2	// tmp104,
	add	x0, x0, :lo12:.LC2	// tmp103, tmp104,
	str	x0, [sp, 24]	// tmp103, cmd
// mkdir.c:22: args[0] = "mkdir";
	adrp	x0, .LC2	// tmp106,
	add	x0, x0, :lo12:.LC2	// tmp105, tmp106,
	str	x0, [sp, 32]	// tmp105, args[0]
// mkdir.c:23: args[1] = argv[1];
	ldr	x0, [sp]	// tmp107, argv
	ldr	x0, [x0, 8]	// _3, MEM[(char * *)argv_6(D) + 8B]
	str	x0, [sp, 40]	// _3, args[1]
// mkdir.c:24: args[2] = NULL;
	str	xzr, [sp, 48]	//, args[2]
// mkdir.c:26: execvp(cmd, argv);
	ldr	x1, [sp]	//, argv
	ldr	x0, [sp, 24]	//, cmd
	bl	execvp		//
	mov	w0, 0	// _15,
	mov	w1, w0	// <retval>, _15
// mkdir.c:27: }
	adrp	x0, :got:__stack_chk_guard	// tmp109,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp109,
	ldr	x3, [sp, 56]	// tmp111, D.6781
	ldr	x2, [x0]	// tmp112,
	subs	x3, x3, x2	// tmp111, tmp112
	mov	x2, 0	// tmp112
	beq	.L5		//,
	bl	__stack_chk_fail		//
.L5:
	mov	w0, w1	//, <retval>
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
