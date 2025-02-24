	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -48
	str	x0, [sp, 40]	// s, s
// code.c:5:     if (strlen(s) < 3) return false;
	ldr	x0, [sp, 40]	//, s
	bl	strlen		//
// code.c:5:     if (strlen(s) < 3) return false;
	cmp	x0, 2	// _1,
	bhi	.L2		//,
// code.c:5:     if (strlen(s) < 3) return false;
	mov	w0, 0	// _19,
// code.c:5:     if (strlen(s) < 3) return false;
	b	.L3		//
.L2:
// code.c:6:     for (int i = 2; i < strlen(s); i++)
	mov	w0, 2	// tmp111,
	str	w0, [sp, 60]	// tmp111, i
// code.c:6:     for (int i = 2; i < strlen(s); i++)
	b	.L4		//
.L7:
// code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	ldrsw	x0, [sp, 60]	// _2, i
	ldr	x1, [sp, 40]	// tmp112, s
	add	x0, x1, x0	// _3, tmp112, _2
	ldrb	w1, [x0]	// _4, *_3
// code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	ldrsw	x0, [sp, 60]	// _5, i
	sub	x0, x0, #1	// _6, _5,
	ldr	x2, [sp, 40]	// tmp113, s
	add	x0, x2, x0	// _7, tmp113, _6
	ldrb	w0, [x0]	// _8, *_7
// code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	cmp	w1, w0	// _4, _8
	beq	.L5		//,
// code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	ldrsw	x0, [sp, 60]	// _9, i
	ldr	x1, [sp, 40]	// tmp114, s
	add	x0, x1, x0	// _10, tmp114, _9
	ldrb	w1, [x0]	// _11, *_10
// code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	ldrsw	x0, [sp, 60]	// _12, i
	sub	x0, x0, #2	// _13, _12,
	ldr	x2, [sp, 40]	// tmp115, s
	add	x0, x2, x0	// _14, tmp115, _13
	ldrb	w0, [x0]	// _15, *_14
// code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	cmp	w1, w0	// _11, _15
	bne	.L6		//,
.L5:
// code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	mov	w0, 0	// _19,
// code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	b	.L3		//
.L6:
// code.c:6:     for (int i = 2; i < strlen(s); i++)
	ldr	w0, [sp, 60]	// tmp117, i
	add	w0, w0, 1	// tmp116, tmp117,
	str	w0, [sp, 60]	// tmp116, i
.L4:
// code.c:6:     for (int i = 2; i < strlen(s); i++)
	ldrsw	x19, [sp, 60]	// _16, i
// code.c:6:     for (int i = 2; i < strlen(s); i++)
	ldr	x0, [sp, 40]	//, s
	bl	strlen		//
// code.c:6:     for (int i = 2; i < strlen(s); i++)
	cmp	x19, x0	// _16, _17
	bcc	.L7		//,
// code.c:8:     return true;
	mov	w0, 1	// _19,
.L3:
// code.c:9: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
