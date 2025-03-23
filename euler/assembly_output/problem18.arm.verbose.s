	.arch armv8-a
	.file	"problem18.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -256]!	//,,,
	.cfi_def_cfa_offset 256
	.cfi_offset 29, -256
	.cfi_offset 30, -248
	mov	x29, sp	//,
// problem18.c:13: {
	adrp	x0, :got:__stack_chk_guard	// tmp96,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp95, tmp96,
	ldr	x1, [x0]	// tmp121,
	str	x1, [sp, 248]	// tmp121, D.4270
	mov	x1, 0	// tmp121
// problem18.c:14:   const char triangle[N][N] = {
	adrp	x0, .LC0	// tmp98,
	add	x1, x0, :lo12:.LC0	// tmp97, tmp98,
	add	x0, sp, 16	// tmp99,,
	ldp	q0, q1, [x1]	// tmp101, tmp102,
	stp	q0, q1, [x0]	// tmp101, tmp102, triangle
	ldp	q0, q1, [x1, 32]	// tmp103, tmp104,
	stp	q0, q1, [x0, 32]	// tmp103, tmp104, triangle
	ldp	q0, q1, [x1, 64]	// tmp105, tmp106,
	stp	q0, q1, [x0, 64]	// tmp105, tmp106, triangle
	ldp	q0, q1, [x1, 96]	// tmp107, tmp108,
	stp	q0, q1, [x0, 96]	// tmp107, tmp108, triangle
	ldp	q0, q1, [x1, 128]	// tmp109, tmp110,
	stp	q0, q1, [x0, 128]	// tmp109, tmp110, triangle
	ldp	q0, q1, [x1, 160]	// tmp111, tmp112,
	stp	q0, q1, [x0, 160]	// tmp111, tmp112, triangle
	ldp	q0, q1, [x1, 192]	// tmp113, tmp114,
	stp	q0, q1, [x0, 192]	// tmp113, tmp114, triangle
	ldrb	w1, [x1, 224]	// tmp115,
	strb	w1, [x0, 224]	// tmp115, triangle
// problem18.c:32:   printf("%d\n", findmax(triangle, 0, 0));
	add	x0, sp, 16	// tmp116,,
	mov	w2, 0	//,
	mov	w1, 0	//,
	bl	findmax		//
	mov	w1, w0	//, _1
	adrp	x0, .LC1	// tmp117,
	add	x0, x0, :lo12:.LC1	//, tmp117,
	bl	printf		//
// problem18.c:34:   return 0;
	mov	w0, 0	// _6,
// problem18.c:35: }
	mov	w1, w0	// <retval>, _6
	adrp	x0, :got:__stack_chk_guard	// tmp120,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp119, tmp120,
	ldr	x3, [sp, 248]	// tmp122, D.4270
	ldr	x2, [x0]	// tmp123,
	subs	x3, x3, x2	// tmp122, tmp123
	mov	x2, 0	// tmp123
	beq	.L3		//,
	bl	__stack_chk_fail		//
.L3:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 256	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"K"
	.zero	13
	.string	"_@"
	.zero	12
	.string	"\021/R"
	.zero	11
	.string	"\022#W\n"
	.zero	10
	.string	"\024\004R/A"
	.zero	9
	.string	"\023\001\027K\003\""
	.zero	8
	.string	"X\002MI\007?C"
	.zero	7
	.string	"cA\004\034\006\020F\\"
	.zero	6
	.string	"))\0328S(PF!"
	.zero	5
	.string	")0H!/ %\020^\035"
	.zero	4
	.string	"5G,A\031+[4a3\016"
	.zero	3
	.string	"F\013!\034MI\021N'D\0219"
	.zero	2
	.string	"[G4&\021\016[+:2\033\0350"
	.zero	1
	.string	"?B\004DY5C\036I\020EW(\037"
	.ascii	"\004>b\033\027\tFbI]&5<\004\027"
	.text
	.align	2
	.type	findmax, %function
findmax:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// triangle, triangle
	str	w1, [sp, 20]	// row, row
	str	w2, [sp, 16]	// col, col
// problem18.c:42:   if (row == N) {
	ldr	w0, [sp, 20]	// tmp107, row
	cmp	w0, 15	// tmp107,
	bne	.L5		//,
// problem18.c:43:     return triangle[row][col];
	ldrsw	x1, [sp, 20]	// _1, row
	mov	x0, x1	// tmp108, _1
	lsl	x0, x0, 4	// tmp109, tmp108,
	sub	x0, x0, x1	// _2, tmp108, _1
	ldr	x1, [sp, 24]	// tmp110, triangle
	add	x1, x1, x0	// _3, tmp110, _2
// problem18.c:43:     return triangle[row][col];
	ldrsw	x0, [sp, 16]	// tmp111, col
	ldrb	w0, [x1, x0]	// _4, (*_3)[col_19(D)]
	b	.L6		//
.L5:
// problem18.c:45:   left = findmax(triangle, row+1, col);
	ldr	w0, [sp, 20]	// tmp112, row
	add	w0, w0, 1	// _5, tmp112,
	ldr	w2, [sp, 16]	//, col
	mov	w1, w0	//, _5
	ldr	x0, [sp, 24]	//, triangle
	bl	findmax		//
	str	w0, [sp, 40]	//, left
// problem18.c:46:   right = findmax(triangle, row+1, col+1);
	ldr	w0, [sp, 20]	// tmp113, row
	add	w1, w0, 1	// _6, tmp113,
	ldr	w0, [sp, 16]	// tmp114, col
	add	w0, w0, 1	// _7, tmp114,
	mov	w2, w0	//, _7
	ldr	x0, [sp, 24]	//, triangle
	bl	findmax		//
	str	w0, [sp, 44]	//, right
// problem18.c:48:   return triangle[row][col] + (left > right ? left : right);
	ldrsw	x1, [sp, 20]	// _8, row
	mov	x0, x1	// tmp115, _8
	lsl	x0, x0, 4	// tmp116, tmp115,
	sub	x0, x0, x1	// _9, tmp115, _8
	ldr	x1, [sp, 24]	// tmp117, triangle
	add	x1, x1, x0	// _10, tmp117, _9
// problem18.c:48:   return triangle[row][col] + (left > right ? left : right);
	ldrsw	x0, [sp, 16]	// tmp118, col
	ldrb	w0, [x1, x0]	// _11, (*_10)[col_19(D)]
	mov	w3, w0	// _12, _11
// problem18.c:48:   return triangle[row][col] + (left > right ? left : right);
	ldr	w0, [sp, 40]	// tmp119, left
	ldr	w2, [sp, 44]	// tmp120, right
	ldr	w1, [sp, 44]	// tmp121, right
	cmp	w2, w0	// tmp120, tmp119
	csel	w0, w1, w0, ge	// _13, tmp121, tmp119,
// problem18.c:48:   return triangle[row][col] + (left > right ? left : right);
	add	w0, w3, w0	// _14, _12, _13
.L6:
// problem18.c:49: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	findmax, .-findmax
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
