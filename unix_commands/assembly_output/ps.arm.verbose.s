	.arch armv8-a
	.file	"ps.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
// ps.c:4: {
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp106,
	str	x1, [sp, 56]	// tmp106, D.4865
	mov	x1, 0	// tmp106
// ps.c:5: char *cmd = "ps";
	adrp	x0, .LC0	// tmp97,
	add	x0, x0, :lo12:.LC0	// tmp96, tmp97,
	str	x0, [sp, 24]	// tmp96, cmd
// ps.c:7: args[0] = "ps";
	adrp	x0, .LC0	// tmp99,
	add	x0, x0, :lo12:.LC0	// tmp98, tmp99,
	str	x0, [sp, 32]	// tmp98, args[0]
// ps.c:8: args[1] = "ax";
	adrp	x0, .LC1	// tmp101,
	add	x0, x0, :lo12:.LC1	// tmp100, tmp101,
	str	x0, [sp, 40]	// tmp100, args[1]
// ps.c:9: args[2] = NULL;
	str	xzr, [sp, 48]	//, args[2]
// ps.c:10: execvp(cmd,args);
	add	x0, sp, 32	// tmp102,,
	mov	x1, x0	//, tmp102
	ldr	x0, [sp, 24]	//, cmd
	bl	execvp		//
	mov	w0, 0	// _8,
	mov	w1, w0	// <retval>, _8
// ps.c:12: }
	adrp	x0, :got:__stack_chk_guard	// tmp105,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp104, tmp105,
	ldr	x3, [sp, 56]	// tmp107, D.4865
	ldr	x2, [x0]	// tmp108,
	subs	x3, x3, x2	// tmp107, tmp108
	mov	x2, 0	// tmp108
	beq	.L3		//,
	bl	__stack_chk_fail		//
.L3:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
