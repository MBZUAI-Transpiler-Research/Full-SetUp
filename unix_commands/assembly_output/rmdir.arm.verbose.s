	.arch armv8-a
	.file	"rmdir.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
	str	w0, [sp, 28]	// argc, argc
	str	x1, [sp, 16]	// argv, argv
// rmdir.c:12: int main(int argc, char* argv[]){
	adrp	x0, :got:__stack_chk_guard	// tmp98,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp97, tmp98,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 72]	// tmp112, D.6149
	mov	x1, 0	// tmp112
// rmdir.c:15: if(argc!=2 || argv[1]=="--help")
	ldr	w0, [sp, 28]	// tmp99, argc
	cmp	w0, 2	// tmp99,
	bne	.L2		//,
// rmdir.c:15: if(argc!=2 || argv[1]=="--help")
	ldr	x0, [sp, 16]	// tmp100, argv
	add	x0, x0, 8	// _1, tmp100,
	ldr	x1, [x0]	// _2, *_1
// rmdir.c:15: if(argc!=2 || argv[1]=="--help")
	adrp	x0, .LC0	// tmp102,
	add	x0, x0, :lo12:.LC0	// tmp101, tmp102,
	cmp	x1, x0	// _2, tmp101
	bne	.L3		//,
.L2:
// rmdir.c:17:     printf("\nusage: rm FileTodelete\n");
	adrp	x0, .LC1	// tmp103,
	add	x0, x0, :lo12:.LC1	//, tmp103,
	bl	puts		//
.L3:
// rmdir.c:20: char *cmd = "rmdir";
	adrp	x0, .LC2	// tmp105,
	add	x0, x0, :lo12:.LC2	// tmp104, tmp105,
	str	x0, [sp, 40]	// tmp104, cmd
// rmdir.c:22: args[0] = "rmdir";
	adrp	x0, .LC2	// tmp107,
	add	x0, x0, :lo12:.LC2	// tmp106, tmp107,
	str	x0, [sp, 48]	// tmp106, args[0]
// rmdir.c:23: args[1] = argv[1];
	ldr	x0, [sp, 16]	// tmp108, argv
	ldr	x0, [x0, 8]	// _3, MEM[(char * *)argv_6(D) + 8B]
	str	x0, [sp, 56]	// _3, args[1]
// rmdir.c:24: args[2] = NULL;
	str	xzr, [sp, 64]	//, args[2]
// rmdir.c:26: execvp(cmd, argv);
	ldr	x1, [sp, 16]	//, argv
	ldr	x0, [sp, 40]	//, cmd
	bl	execvp		//
	mov	w0, 0	// _15,
	mov	w1, w0	// <retval>, _15
// rmdir.c:27: }
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 72]	// tmp113, D.6149
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L5		//,
	bl	__stack_chk_fail		//
.L5:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
