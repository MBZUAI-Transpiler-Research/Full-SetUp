	.arch armv8-a
	.file	"ps.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"ps"
	.align	3
.LC1:
	.string	"ax"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #64	//,,
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, 48]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 48	//,,
// ps.c:4: {
	adrp	x0, :got:__stack_chk_guard	// tmp94,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp94,
	ldr	x1, [x0]	// tmp104,
	str	x1, [sp, 40]	// tmp104, D.5447
	mov	x1, 0	// tmp104
// ps.c:5: char *cmd = "ps";
	adrp	x0, .LC0	// tmp96,
	add	x0, x0, :lo12:.LC0	// tmp95, tmp96,
	str	x0, [sp, 8]	// tmp95, cmd
// ps.c:7: args[0] = "ps";
	adrp	x0, .LC0	// tmp98,
	add	x0, x0, :lo12:.LC0	// tmp97, tmp98,
	str	x0, [sp, 16]	// tmp97, args[0]
// ps.c:8: args[1] = "ax";
	adrp	x0, .LC1	// tmp100,
	add	x0, x0, :lo12:.LC1	// tmp99, tmp100,
	str	x0, [sp, 24]	// tmp99, args[1]
// ps.c:9: args[2] = NULL;
	str	xzr, [sp, 32]	//, args[2]
// ps.c:10: execvp(cmd,args);
	add	x0, sp, 16	// tmp101,,
	mov	x1, x0	//, tmp101
	ldr	x0, [sp, 8]	//, cmd
	bl	execvp		//
	mov	w0, 0	// _8,
	mov	w1, w0	// <retval>, _8
// ps.c:12: }
	adrp	x0, :got:__stack_chk_guard	// tmp103,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp103,
	ldr	x3, [sp, 40]	// tmp105, D.5447
	ldr	x2, [x0]	// tmp106,
	subs	x3, x3, x2	// tmp105, tmp106
	mov	x2, 0	// tmp106
	beq	.L3		//,
	bl	__stack_chk_fail		//
.L3:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 48]	//,,
	add	sp, sp, 64	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
