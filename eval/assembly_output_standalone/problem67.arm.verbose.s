	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// s, s
// eval/problem67//code.c:5:     int sum = 0;
	str	wzr, [sp, 24]	//, sum
// eval/problem67//code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	str	wzr, [sp, 28]	//, i
// eval/problem67//code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	b	.L2		//
.L4:
// eval/problem67//code.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	ldrsw	x0, [sp, 28]	// _1, i
	ldr	x1, [sp, 8]	// tmp107, s
	add	x0, x1, x0	// _2, tmp107, _1
	ldrb	w0, [x0]	// _3, *_2
// eval/problem67//code.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	cmp	w0, 64	// _3,
	bls	.L3		//,
// eval/problem67//code.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	ldrsw	x0, [sp, 28]	// _4, i
	ldr	x1, [sp, 8]	// tmp108, s
	add	x0, x1, x0	// _5, tmp108, _4
	ldrb	w0, [x0]	// _6, *_5
// eval/problem67//code.c:7:         if (s[i] >= 'A' && s[i] <= 'Z')
	cmp	w0, 90	// _6,
	bhi	.L3		//,
// eval/problem67//code.c:8:             sum += s[i];
	ldrsw	x0, [sp, 28]	// _7, i
	ldr	x1, [sp, 8]	// tmp109, s
	add	x0, x1, x0	// _8, tmp109, _7
	ldrb	w0, [x0]	// _9, *_8
	mov	w1, w0	// _10, _9
// eval/problem67//code.c:8:             sum += s[i];
	ldr	w0, [sp, 24]	// tmp111, sum
	add	w0, w0, w1	// tmp110, tmp111, _10
	str	w0, [sp, 24]	// tmp110, sum
.L3:
// eval/problem67//code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	ldr	w0, [sp, 28]	// tmp113, i
	add	w0, w0, 1	// tmp112, tmp113,
	str	w0, [sp, 28]	// tmp112, i
.L2:
// eval/problem67//code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	ldrsw	x0, [sp, 28]	// _11, i
	ldr	x1, [sp, 8]	// tmp114, s
	add	x0, x1, x0	// _12, tmp114, _11
	ldrb	w0, [x0]	// _13, *_12
// eval/problem67//code.c:6:     for (int i = 0; s[i] != '\0'; i++)
	cmp	w0, 0	// _13,
	bne	.L4		//,
// eval/problem67//code.c:9:     return sum;
	ldr	w0, [sp, 24]	// _21, sum
// eval/problem67//code.c:10: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
