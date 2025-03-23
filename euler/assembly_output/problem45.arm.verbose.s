	.arch armv8-a
	.file	"problem45.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%llu\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
// problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	mov	x0, 144	// tmp96,
	str	x0, [sp, 16]	// tmp96, i
// problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	b	.L2		//
.L3:
// problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	ldr	x0, [sp, 16]	// tmp98, i
	add	x0, x0, 1	// tmp97, tmp98,
	str	x0, [sp, 16]	// tmp97, i
.L2:
// problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	ldr	x0, [sp, 16]	//, i
	bl	hexagonal		//
	str	x0, [sp, 24]	//, h
// problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	ldr	x0, [sp, 24]	//, h
	bl	is_pentagonal		//
// problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	cmp	w0, 0	// _1,
	beq	.L3		//,
// problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	ldr	x0, [sp, 24]	//, h
	bl	is_triangle		//
// problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	cmp	w0, 0	// _2,
	beq	.L3		//,
// problem45.c:18:   printf("%llu\n", h);
	ldr	x1, [sp, 24]	//, h
	adrp	x0, .LC0	// tmp99,
	add	x0, x0, :lo12:.LC0	//, tmp99,
	bl	printf		//
// problem45.c:19:   return 0;
	mov	w0, 0	// _13,
// problem45.c:20: }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	2
	.global	is_triangle
	.type	is_triangle, %function
is_triangle:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// n, n
// problem45.c:24:   unsigned long long sq = sqrt(1+8*n);
	ldr	x0, [sp, 24]	// tmp103, n
	lsl	x0, x0, 3	// _1, tmp103,
// problem45.c:24:   unsigned long long sq = sqrt(1+8*n);
	add	x0, x0, 1	// _2, _1,
// problem45.c:24:   unsigned long long sq = sqrt(1+8*n);
	ucvtf	d0, x0	// _3, _2
	bl	sqrt		//
// problem45.c:24:   unsigned long long sq = sqrt(1+8*n);
	fcvtzu	d0, d0	// tmp104, _4
	str	d0, [sp, 40]	// tmp104, sq
// problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	ldr	x0, [sp, 40]	// tmp105, sq
	mul	x1, x0, x0	// _5, tmp105, tmp105
// problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	ldr	x0, [sp, 24]	// tmp106, n
	lsl	x0, x0, 3	// _6, tmp106,
// problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	add	x0, x0, 1	// _7, _6,
// problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	cmp	x1, x0	// _5, _7
	bne	.L6		//,
// problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	ldr	x0, [sp, 40]	// tmp107, sq
	sub	x0, x0, #1	// _8, tmp107,
// problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	and	x0, x0, 1	// _9, _8,
// problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	cmp	x0, 0	// _9,
	bne	.L6		//,
// problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	mov	w0, 1	// iftmp.0_10,
// problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	b	.L8		//
.L6:
// problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	mov	w0, 0	// iftmp.0_10,
.L8:
// problem45.c:26: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	is_triangle, .-is_triangle
	.align	2
	.global	is_pentagonal
	.type	is_pentagonal, %function
is_pentagonal:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// n, n
// problem45.c:30:   unsigned long long sq = sqrt(1+24*n);
	ldr	x1, [sp, 24]	// tmp103, n
	mov	x0, x1	// tmp104, tmp103
	lsl	x0, x0, 1	// tmp105, tmp104,
	add	x0, x0, x1	// tmp104, tmp104, tmp103
	lsl	x0, x0, 3	// tmp106, tmp104,
// problem45.c:30:   unsigned long long sq = sqrt(1+24*n);
	add	x0, x0, 1	// _2, _1,
// problem45.c:30:   unsigned long long sq = sqrt(1+24*n);
	ucvtf	d0, x0	// _3, _2
	bl	sqrt		//
// problem45.c:30:   unsigned long long sq = sqrt(1+24*n);
	fcvtzu	d0, d0	// tmp107, _4
	str	d0, [sp, 40]	// tmp107, sq
// problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	ldr	x0, [sp, 40]	// tmp108, sq
	mul	x2, x0, x0	// _5, tmp108, tmp108
// problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	ldr	x1, [sp, 24]	// tmp109, n
	mov	x0, x1	// tmp110, tmp109
	lsl	x0, x0, 1	// tmp111, tmp110,
	add	x0, x0, x1	// tmp110, tmp110, tmp109
	lsl	x0, x0, 3	// tmp112, tmp110,
// problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	add	x0, x0, 1	// _7, _6,
// problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	cmp	x2, x0	// _5, _7
	bne	.L10		//,
// problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	ldr	x0, [sp, 40]	// tmp113, sq
	add	x2, x0, 1	// _8, tmp113,
// problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	mov	x0, -6148914691236517206	// tmp115,
	movk	x0, 0xaaab, lsl 0	// tmp115,,
	umulh	x0, x2, x0	// tmp114, _8, tmp115
	lsr	x1, x0, 2	// _9, tmp114,
	mov	x0, x1	// tmp116, _9
	lsl	x0, x0, 1	// tmp117, tmp116,
	add	x0, x0, x1	// tmp116, tmp116, _9
	lsl	x0, x0, 1	// tmp118, tmp116,
	sub	x1, x2, x0	// _9, _8, tmp116
// problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	cmp	x1, 0	// _9,
	bne	.L10		//,
// problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	mov	w0, 1	// iftmp.1_10,
// problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	b	.L12		//
.L10:
// problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	mov	w0, 0	// iftmp.1_10,
.L12:
// problem45.c:32: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2:
	.size	is_pentagonal, .-is_pentagonal
	.align	2
	.global	hexagonal
	.type	hexagonal, %function
hexagonal:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// n, n
// problem45.c:36:   return n*(2*n-1);
	ldr	x0, [sp, 8]	// tmp96, n
	lsl	x0, x0, 1	// _1, tmp96,
// problem45.c:36:   return n*(2*n-1);
	sub	x1, x0, #1	// _2, _1,
// problem45.c:36:   return n*(2*n-1);
	ldr	x0, [sp, 8]	// tmp97, n
	mul	x0, x1, x0	// _4, _2, tmp97
// problem45.c:37: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3:
	.size	hexagonal, .-hexagonal
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
