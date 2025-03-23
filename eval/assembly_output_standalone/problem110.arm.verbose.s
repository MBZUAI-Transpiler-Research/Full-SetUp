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
	str	x0, [sp, 8]	// arr, arr
	str	w1, [sp, 4]	// size, size
// eval/problem110//code.c:5:     int num = 0;
	str	wzr, [sp, 24]	//, num
// eval/problem110//code.c:6:     if (size == 0) return true;
	ldr	w0, [sp, 4]	// tmp109, size
	cmp	w0, 0	// tmp109,
	bne	.L2		//,
// eval/problem110//code.c:6:     if (size == 0) return true;
	mov	w0, 1	// _20,
	b	.L3		//
.L2:
// eval/problem110//code.c:7:     for (int i = 1; i < size; i++)
	mov	w0, 1	// tmp110,
	str	w0, [sp, 28]	// tmp110, i
// eval/problem110//code.c:7:     for (int i = 1; i < size; i++)
	b	.L4		//
.L6:
// eval/problem110//code.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp111, arr
	add	x0, x1, x0	// _3, tmp111, _2
	ldr	w1, [x0]	// _4, *_3
// eval/problem110//code.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	ldrsw	x0, [sp, 28]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	sub	x0, x0, #4	// _7, _6,
	ldr	x2, [sp, 8]	// tmp112, arr
	add	x0, x2, x0	// _8, tmp112, _7
	ldr	w0, [x0]	// _9, *_8
// eval/problem110//code.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	cmp	w1, w0	// _4, _9
	bge	.L5		//,
// eval/problem110//code.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	ldr	w0, [sp, 24]	// tmp114, num
	add	w0, w0, 1	// tmp113, tmp114,
	str	w0, [sp, 24]	// tmp113, num
.L5:
// eval/problem110//code.c:7:     for (int i = 1; i < size; i++)
	ldr	w0, [sp, 28]	// tmp116, i
	add	w0, w0, 1	// tmp115, tmp116,
	str	w0, [sp, 28]	// tmp115, i
.L4:
// eval/problem110//code.c:7:     for (int i = 1; i < size; i++)
	ldr	w1, [sp, 28]	// tmp117, i
	ldr	w0, [sp, 4]	// tmp118, size
	cmp	w1, w0	// tmp117, tmp118
	blt	.L6		//,
// eval/problem110//code.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	ldrsw	x0, [sp, 4]	// _10, size
	lsl	x0, x0, 2	// _11, _10,
	sub	x0, x0, #4	// _12, _11,
	ldr	x1, [sp, 8]	// tmp119, arr
	add	x0, x1, x0	// _13, tmp119, _12
	ldr	w1, [x0]	// _14, *_13
// eval/problem110//code.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	ldr	x0, [sp, 8]	// tmp120, arr
	ldr	w0, [x0]	// _15, *arr_24(D)
// eval/problem110//code.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	cmp	w1, w0	// _14, _15
	ble	.L7		//,
// eval/problem110//code.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	ldr	w0, [sp, 24]	// tmp122, num
	add	w0, w0, 1	// tmp121, tmp122,
	str	w0, [sp, 24]	// tmp121, num
.L7:
// eval/problem110//code.c:10:     if (num < 2) return true;
	ldr	w0, [sp, 24]	// tmp123, num
	cmp	w0, 1	// tmp123,
	bgt	.L8		//,
// eval/problem110//code.c:10:     if (num < 2) return true;
	mov	w0, 1	// _20,
	b	.L3		//
.L8:
// eval/problem110//code.c:11:     return false;
	mov	w0, 0	// _20,
.L3:
// eval/problem110//code.c:12: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
