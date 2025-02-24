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
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// n, n
// code.c:4:     if (n < 2) return false;
	ldr	x0, [sp, 8]	// tmp96, n
	cmp	x0, 1	// tmp96,
	bgt	.L2		//,
// code.c:4:     if (n < 2) return false;
	mov	w0, 0	// _4,
// code.c:4:     if (n < 2) return false;
	b	.L3		//
.L2:
// code.c:5:     for (long long i = 2; i * i <= n; i++)
	mov	x0, 2	// tmp97,
	str	x0, [sp, 24]	// tmp97, i
// code.c:5:     for (long long i = 2; i * i <= n; i++)
	b	.L4		//
.L6:
// code.c:6:         if (n % i == 0) return false;
	ldr	x0, [sp, 8]	// tmp98, n
	ldr	x1, [sp, 24]	// tmp103, i
	sdiv	x2, x0, x1	// tmp102, tmp98, tmp103
	ldr	x1, [sp, 24]	// tmp105, i
	mul	x1, x2, x1	// tmp104, tmp102, tmp105
	sub	x0, x0, x1	// _1, tmp98, tmp104
// code.c:6:         if (n % i == 0) return false;
	cmp	x0, 0	// _1,
	bne	.L5		//,
// code.c:6:         if (n % i == 0) return false;
	mov	w0, 0	// _4,
// code.c:6:         if (n % i == 0) return false;
	b	.L3		//
.L5:
// code.c:5:     for (long long i = 2; i * i <= n; i++)
	ldr	x0, [sp, 24]	// tmp107, i
	add	x0, x0, 1	// tmp106, tmp107,
	str	x0, [sp, 24]	// tmp106, i
.L4:
// code.c:5:     for (long long i = 2; i * i <= n; i++)
	ldr	x0, [sp, 24]	// tmp108, i
	mul	x0, x0, x0	// _2, tmp108, tmp108
// code.c:5:     for (long long i = 2; i * i <= n; i++)
	ldr	x1, [sp, 8]	// tmp109, n
	cmp	x1, x0	// tmp109, _2
	bge	.L6		//,
// code.c:7:     return true;
	mov	w0, 1	// _4,
.L3:
// code.c:8: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
