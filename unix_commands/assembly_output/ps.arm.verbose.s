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
	adrp	x0, :got:__stack_chk_guard	// tmp92,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp92,
	ldr	x1, [x0]	// tmp101,
	str	x1, [sp, 40]	// tmp101, D.5445
	mov	x1, 0	// tmp101
// ps.c:5: char *cmd = "ps";
	adrp	x0, .LC0	// tmp94,
	add	x0, x0, :lo12:.LC0	// tmp93, tmp94,
	str	x0, [sp, 8]	// tmp93, cmd
// ps.c:7: args[0] = "ps";
	adrp	x0, .LC0	// tmp96,
	add	x0, x0, :lo12:.LC0	// tmp95, tmp96,
	str	x0, [sp, 16]	// tmp95, args[0]
// ps.c:8: args[1] = "ax";
	adrp	x0, .LC1	// tmp98,
	add	x0, x0, :lo12:.LC1	// tmp97, tmp98,
	str	x0, [sp, 24]	// tmp97, args[1]
// ps.c:9: args[2] = NULL;
	str	xzr, [sp, 32]	//, args[2]
// ps.c:10: execvp(cmd,args);
	add	x0, sp, 16	// tmp99,,
	mov	x1, x0	//, tmp99
	ldr	x0, [sp, 8]	//, cmd
	bl	execvp		//
// ps.c:12: }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp100,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp100,
	ldr	x2, [sp, 40]	// tmp102, D.5445
	ldr	x1, [x0]	// tmp103,
	subs	x2, x2, x1	// tmp102, tmp103
	mov	x1, 0	// tmp103
	beq	.L2		//,
	bl	__stack_chk_fail		//
.L2:
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
