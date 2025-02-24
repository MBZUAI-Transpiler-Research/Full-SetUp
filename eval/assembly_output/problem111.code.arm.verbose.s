	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"YES"
	.align	3
.LC1:
	.string	"NO"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// lst1, lst1
	str	w1, [sp, 20]	// size1, size1
	str	x2, [sp, 8]	// lst2, lst2
	str	w3, [sp, 16]	// size2, size2
// code.c:4:     int num = 0;
	str	wzr, [sp, 36]	//, num
// code.c:5:     for (int i = 0; i < size1; i++)
	str	wzr, [sp, 40]	//, i
// code.c:5:     for (int i = 0; i < size1; i++)
	b	.L2		//
.L4:
// code.c:6:         if (lst1[i] % 2 == 0) num += 1;
	ldrsw	x0, [sp, 40]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp106, lst1
	add	x0, x1, x0	// _3, tmp106, _2
	ldr	w0, [x0]	// _4, *_3
// code.c:6:         if (lst1[i] % 2 == 0) num += 1;
	and	w0, w0, 1	// _6, _5,
// code.c:6:         if (lst1[i] % 2 == 0) num += 1;
	cmp	w0, 0	// _6,
	bne	.L3		//,
// code.c:6:         if (lst1[i] % 2 == 0) num += 1;
	ldr	w0, [sp, 36]	// tmp108, num
	add	w0, w0, 1	// tmp107, tmp108,
	str	w0, [sp, 36]	// tmp107, num
.L3:
// code.c:5:     for (int i = 0; i < size1; i++)
	ldr	w0, [sp, 40]	// tmp110, i
	add	w0, w0, 1	// tmp109, tmp110,
	str	w0, [sp, 40]	// tmp109, i
.L2:
// code.c:5:     for (int i = 0; i < size1; i++)
	ldr	w1, [sp, 40]	// tmp111, i
	ldr	w0, [sp, 20]	// tmp112, size1
	cmp	w1, w0	// tmp111, tmp112
	blt	.L4		//,
// code.c:7:     for (int i = 0; i < size2; i++)
	str	wzr, [sp, 44]	//, i
// code.c:7:     for (int i = 0; i < size2; i++)
	b	.L5		//
.L7:
// code.c:8:         if (lst2[i] % 2 == 0) num += 1;
	ldrsw	x0, [sp, 44]	// _7, i
	lsl	x0, x0, 2	// _8, _7,
	ldr	x1, [sp, 8]	// tmp113, lst2
	add	x0, x1, x0	// _9, tmp113, _8
	ldr	w0, [x0]	// _10, *_9
// code.c:8:         if (lst2[i] % 2 == 0) num += 1;
	and	w0, w0, 1	// _12, _11,
// code.c:8:         if (lst2[i] % 2 == 0) num += 1;
	cmp	w0, 0	// _12,
	bne	.L6		//,
// code.c:8:         if (lst2[i] % 2 == 0) num += 1;
	ldr	w0, [sp, 36]	// tmp115, num
	add	w0, w0, 1	// tmp114, tmp115,
	str	w0, [sp, 36]	// tmp114, num
.L6:
// code.c:7:     for (int i = 0; i < size2; i++)
	ldr	w0, [sp, 44]	// tmp117, i
	add	w0, w0, 1	// tmp116, tmp117,
	str	w0, [sp, 44]	// tmp116, i
.L5:
// code.c:7:     for (int i = 0; i < size2; i++)
	ldr	w1, [sp, 44]	// tmp118, i
	ldr	w0, [sp, 16]	// tmp119, size2
	cmp	w1, w0	// tmp118, tmp119
	blt	.L7		//,
// code.c:9:     if (num >= size1) return "YES";
	ldr	w1, [sp, 36]	// tmp120, num
	ldr	w0, [sp, 20]	// tmp121, size1
	cmp	w1, w0	// tmp120, tmp121
	blt	.L8		//,
// code.c:9:     if (num >= size1) return "YES";
	adrp	x0, .LC0	// tmp122,
	add	x0, x0, :lo12:.LC0	// _19, tmp122,
// code.c:9:     if (num >= size1) return "YES";
	b	.L9		//
.L8:
// code.c:10:     return "NO";
	adrp	x0, .LC1	// tmp123,
	add	x0, x0, :lo12:.LC1	// _19, tmp123,
.L9:
// code.c:11: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
