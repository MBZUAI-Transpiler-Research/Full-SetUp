	.arch armv8-a
	.file	"problem31.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
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
// problem31.c:10:   int z = 0;
	str	wzr, [sp, 28]	//, z
// problem31.c:11:   int n = 200;
	mov	w0, 200	// tmp100,
	str	w0, [sp, 60]	// tmp100, n
// problem31.c:14:   for (a = 0; a <= n; a += 200)
	str	wzr, [sp, 32]	//, a
// problem31.c:14:   for (a = 0; a <= n; a += 200)
	b	.L2		//
.L16:
// problem31.c:15:     for (b = 0; b <= n; b += 100)
	str	wzr, [sp, 36]	//, b
// problem31.c:15:     for (b = 0; b <= n; b += 100)
	b	.L3		//
.L15:
// problem31.c:16:       for (c = 0; c <= n; c += 50)
	str	wzr, [sp, 40]	//, c
// problem31.c:16:       for (c = 0; c <= n; c += 50)
	b	.L4		//
.L14:
// problem31.c:17:         for (d = 0; d <= n; d += 20)
	str	wzr, [sp, 44]	//, d
// problem31.c:17:         for (d = 0; d <= n; d += 20)
	b	.L5		//
.L13:
// problem31.c:18:           for (e = 0; e <= n; e += 10)
	str	wzr, [sp, 48]	//, e
// problem31.c:18:           for (e = 0; e <= n; e += 10)
	b	.L6		//
.L12:
// problem31.c:19:             for (f = 0; f <= n; f += 5)
	str	wzr, [sp, 52]	//, f
// problem31.c:19:             for (f = 0; f <= n; f += 5)
	b	.L7		//
.L11:
// problem31.c:20:               for (g = 0; g <= n; g += 2)
	str	wzr, [sp, 56]	//, g
// problem31.c:20:               for (g = 0; g <= n; g += 2)
	b	.L8		//
.L10:
// problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	ldr	w1, [sp, 32]	// tmp101, a
	ldr	w0, [sp, 36]	// tmp102, b
	add	w1, w1, w0	// _1, tmp101, tmp102
// problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	ldr	w0, [sp, 40]	// tmp103, c
	add	w1, w1, w0	// _2, _1, tmp103
// problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	ldr	w0, [sp, 44]	// tmp104, d
	add	w1, w1, w0	// _3, _2, tmp104
// problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	ldr	w0, [sp, 48]	// tmp105, e
	add	w1, w1, w0	// _4, _3, tmp105
// problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	ldr	w0, [sp, 52]	// tmp106, f
	add	w1, w1, w0	// _5, _4, tmp106
// problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	ldr	w0, [sp, 56]	// tmp107, g
	add	w0, w1, w0	// _6, _5, tmp107
// problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	cmp	w0, 200	// _6,
	bgt	.L9		//,
// problem31.c:22:                   z++;
	ldr	w0, [sp, 28]	// tmp109, z
	add	w0, w0, 1	// tmp108, tmp109,
	str	w0, [sp, 28]	// tmp108, z
.L9:
// problem31.c:20:               for (g = 0; g <= n; g += 2)
	ldr	w0, [sp, 56]	// tmp111, g
	add	w0, w0, 2	// tmp110, tmp111,
	str	w0, [sp, 56]	// tmp110, g
.L8:
// problem31.c:20:               for (g = 0; g <= n; g += 2)
	ldr	w1, [sp, 56]	// tmp112, g
	ldr	w0, [sp, 60]	// tmp113, n
	cmp	w1, w0	// tmp112, tmp113
	ble	.L10		//,
// problem31.c:19:             for (f = 0; f <= n; f += 5)
	ldr	w0, [sp, 52]	// tmp115, f
	add	w0, w0, 5	// tmp114, tmp115,
	str	w0, [sp, 52]	// tmp114, f
.L7:
// problem31.c:19:             for (f = 0; f <= n; f += 5)
	ldr	w1, [sp, 52]	// tmp116, f
	ldr	w0, [sp, 60]	// tmp117, n
	cmp	w1, w0	// tmp116, tmp117
	ble	.L11		//,
// problem31.c:18:           for (e = 0; e <= n; e += 10)
	ldr	w0, [sp, 48]	// tmp119, e
	add	w0, w0, 10	// tmp118, tmp119,
	str	w0, [sp, 48]	// tmp118, e
.L6:
// problem31.c:18:           for (e = 0; e <= n; e += 10)
	ldr	w1, [sp, 48]	// tmp120, e
	ldr	w0, [sp, 60]	// tmp121, n
	cmp	w1, w0	// tmp120, tmp121
	ble	.L12		//,
// problem31.c:17:         for (d = 0; d <= n; d += 20)
	ldr	w0, [sp, 44]	// tmp123, d
	add	w0, w0, 20	// tmp122, tmp123,
	str	w0, [sp, 44]	// tmp122, d
.L5:
// problem31.c:17:         for (d = 0; d <= n; d += 20)
	ldr	w1, [sp, 44]	// tmp124, d
	ldr	w0, [sp, 60]	// tmp125, n
	cmp	w1, w0	// tmp124, tmp125
	ble	.L13		//,
// problem31.c:16:       for (c = 0; c <= n; c += 50)
	ldr	w0, [sp, 40]	// tmp127, c
	add	w0, w0, 50	// tmp126, tmp127,
	str	w0, [sp, 40]	// tmp126, c
.L4:
// problem31.c:16:       for (c = 0; c <= n; c += 50)
	ldr	w1, [sp, 40]	// tmp128, c
	ldr	w0, [sp, 60]	// tmp129, n
	cmp	w1, w0	// tmp128, tmp129
	ble	.L14		//,
// problem31.c:15:     for (b = 0; b <= n; b += 100)
	ldr	w0, [sp, 36]	// tmp131, b
	add	w0, w0, 100	// tmp130, tmp131,
	str	w0, [sp, 36]	// tmp130, b
.L3:
// problem31.c:15:     for (b = 0; b <= n; b += 100)
	ldr	w1, [sp, 36]	// tmp132, b
	ldr	w0, [sp, 60]	// tmp133, n
	cmp	w1, w0	// tmp132, tmp133
	ble	.L15		//,
// problem31.c:14:   for (a = 0; a <= n; a += 200)
	ldr	w0, [sp, 32]	// tmp135, a
	add	w0, w0, 200	// tmp134, tmp135,
	str	w0, [sp, 32]	// tmp134, a
.L2:
// problem31.c:14:   for (a = 0; a <= n; a += 200)
	ldr	w1, [sp, 32]	// tmp136, a
	ldr	w0, [sp, 60]	// tmp137, n
	cmp	w1, w0	// tmp136, tmp137
	ble	.L16		//,
// problem31.c:23:   printf("%d\n", z);
	ldr	w1, [sp, 28]	//, z
	adrp	x0, .LC0	// tmp138,
	add	x0, x0, :lo12:.LC0	//, tmp138,
	bl	printf		//
// problem31.c:25:   return 0;
	mov	w0, 0	// _27,
// problem31.c:26: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
