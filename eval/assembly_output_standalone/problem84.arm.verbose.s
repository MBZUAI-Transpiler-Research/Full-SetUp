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
	str	w0, [sp, 12]	// n, n
// eval/problem84//code.c:4:     if (n < 1) return 0;
	ldr	w0, [sp, 12]	// tmp94, n
	cmp	w0, 0	// tmp94,
	bgt	.L2		//,
// eval/problem84//code.c:4:     if (n < 1) return 0;
	mov	w0, 0	// _3,
	b	.L3		//
.L2:
// eval/problem84//code.c:5:     if (n == 1) return 1;
	ldr	w0, [sp, 12]	// tmp95, n
	cmp	w0, 1	// tmp95,
	bne	.L4		//,
// eval/problem84//code.c:5:     if (n == 1) return 1;
	mov	w0, 1	// _3,
	b	.L3		//
.L4:
// eval/problem84//code.c:6:     int out = 18;
	mov	w0, 18	// tmp96,
	str	w0, [sp, 24]	// tmp96, out
// eval/problem84//code.c:7:     for (int i = 2; i < n; i++)
	mov	w0, 2	// tmp97,
	str	w0, [sp, 28]	// tmp97, i
// eval/problem84//code.c:7:     for (int i = 2; i < n; i++)
	b	.L5		//
.L6:
// eval/problem84//code.c:8:         out = out * 10;
	ldr	w1, [sp, 24]	// tmp98, out
	mov	w0, w1	// tmp99, tmp98
	lsl	w0, w0, 2	// tmp100, tmp99,
	add	w0, w0, w1	// tmp99, tmp99, tmp98
	lsl	w0, w0, 1	// tmp101, tmp99,
	str	w0, [sp, 24]	// tmp99, out
// eval/problem84//code.c:7:     for (int i = 2; i < n; i++)
	ldr	w0, [sp, 28]	// tmp103, i
	add	w0, w0, 1	// tmp102, tmp103,
	str	w0, [sp, 28]	// tmp102, i
.L5:
// eval/problem84//code.c:7:     for (int i = 2; i < n; i++)
	ldr	w1, [sp, 28]	// tmp104, i
	ldr	w0, [sp, 12]	// tmp105, n
	cmp	w1, w0	// tmp104, tmp105
	blt	.L6		//,
// eval/problem84//code.c:9:     return out;
	ldr	w0, [sp, 24]	// _3, out
.L3:
// eval/problem84//code.c:10: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
