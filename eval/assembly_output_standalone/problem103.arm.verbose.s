	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]	// x, x
	str	w1, [sp, 8]	// y, y
// eval/problem103//code.c:4:     if (y < x) return -1;
	ldr	w1, [sp, 8]	// tmp96, y
	ldr	w0, [sp, 12]	// tmp97, x
	cmp	w1, w0	// tmp96, tmp97
	bge	.L2		//,
// eval/problem103//code.c:4:     if (y < x) return -1;
	mov	w0, -1	// _3,
// eval/problem103//code.c:4:     if (y < x) return -1;
	b	.L3		//
.L2:
// eval/problem103//code.c:5:     if (y == x && y % 2 == 1) return -1;
	ldr	w1, [sp, 8]	// tmp98, y
	ldr	w0, [sp, 12]	// tmp99, x
	cmp	w1, w0	// tmp98, tmp99
	bne	.L4		//,
// eval/problem103//code.c:5:     if (y == x && y % 2 == 1) return -1;
	ldr	w0, [sp, 8]	// tmp100, y
	cmp	w0, 0	// tmp100,
	and	w0, w0, 1	// tmp101, tmp100,
	csneg	w0, w0, w0, ge	// _1, tmp101, tmp101,
// eval/problem103//code.c:5:     if (y == x && y % 2 == 1) return -1;
	cmp	w0, 1	// _1,
	bne	.L4		//,
// eval/problem103//code.c:5:     if (y == x && y % 2 == 1) return -1;
	mov	w0, -1	// _3,
// eval/problem103//code.c:5:     if (y == x && y % 2 == 1) return -1;
	b	.L3		//
.L4:
// eval/problem103//code.c:6:     if (y % 2 == 1) return y - 1;
	ldr	w0, [sp, 8]	// tmp102, y
	cmp	w0, 0	// tmp102,
	and	w0, w0, 1	// tmp103, tmp102,
	csneg	w0, w0, w0, ge	// _2, tmp103, tmp103,
// eval/problem103//code.c:6:     if (y % 2 == 1) return y - 1;
	cmp	w0, 1	// _2,
	bne	.L5		//,
// eval/problem103//code.c:6:     if (y % 2 == 1) return y - 1;
	ldr	w0, [sp, 8]	// tmp104, y
	sub	w0, w0, #1	// _3, tmp104,
// eval/problem103//code.c:6:     if (y % 2 == 1) return y - 1;
	b	.L3		//
.L5:
// eval/problem103//code.c:7:     return y;
	ldr	w0, [sp, 8]	// _3, y
.L3:
// eval/problem103//code.c:8: }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
