	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"NO"
	.align	3
.LC1:
	.string	"YES"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// interval1_start, interval1_start
	str	w1, [sp, 8]	// interval1_end, interval1_end
	str	w2, [sp, 4]	// interval2_start, interval2_start
	str	w3, [sp]	// interval2_end, interval2_end
// eval/problem128//code.c:5:     inter1 = interval1_start > interval2_start ? interval1_start : interval2_start;
	ldr	w0, [sp, 12]	// tmp97, interval1_start
	ldr	w2, [sp, 4]	// tmp98, interval2_start
	ldr	w1, [sp, 4]	// tmp99, interval2_start
	cmp	w2, w0	// tmp98, tmp97
	csel	w0, w1, w0, ge	// tmp96, tmp99, tmp97,
	str	w0, [sp, 20]	// tmp96, inter1
// eval/problem128//code.c:6:     inter2 = interval1_end < interval2_end ? interval1_end : interval2_end;
	ldr	w0, [sp, 8]	// tmp101, interval1_end
	ldr	w2, [sp]	// tmp102, interval2_end
	ldr	w1, [sp]	// tmp103, interval2_end
	cmp	w2, w0	// tmp102, tmp101
	csel	w0, w1, w0, le	// tmp100, tmp103, tmp101,
	str	w0, [sp, 24]	// tmp100, inter2
// eval/problem128//code.c:7:     l = inter2 - inter1;
	ldr	w1, [sp, 24]	// tmp105, inter2
	ldr	w0, [sp, 20]	// tmp106, inter1
	sub	w0, w1, w0	// tmp104, tmp105, tmp106
	str	w0, [sp, 28]	// tmp104, l
// eval/problem128//code.c:9:     if (l < 2) return "NO";
	ldr	w0, [sp, 28]	// tmp107, l
	cmp	w0, 1	// tmp107,
	bgt	.L2		//,
// eval/problem128//code.c:9:     if (l < 2) return "NO";
	adrp	x0, .LC0	// tmp108,
	add	x0, x0, :lo12:.LC0	// _4, tmp108,
// eval/problem128//code.c:9:     if (l < 2) return "NO";
	b	.L3		//
.L2:
// eval/problem128//code.c:11:     for (i = 2; i * i <= l; i++)
	mov	w0, 2	// tmp109,
	str	w0, [sp, 16]	// tmp109, i
// eval/problem128//code.c:11:     for (i = 2; i * i <= l; i++)
	b	.L4		//
.L6:
// eval/problem128//code.c:12:         if (l % i == 0) return "NO";
	ldr	w0, [sp, 28]	// tmp110, l
	ldr	w1, [sp, 16]	// tmp123, i
	sdiv	w2, w0, w1	// tmp122, tmp110, tmp123
	ldr	w1, [sp, 16]	// tmp125, i
	mul	w1, w2, w1	// tmp124, tmp122, tmp125
	sub	w0, w0, w1	// _1, tmp110, tmp124
// eval/problem128//code.c:12:         if (l % i == 0) return "NO";
	cmp	w0, 0	// _1,
	bne	.L5		//,
// eval/problem128//code.c:12:         if (l % i == 0) return "NO";
	adrp	x0, .LC0	// tmp126,
	add	x0, x0, :lo12:.LC0	// _4, tmp126,
// eval/problem128//code.c:12:         if (l % i == 0) return "NO";
	b	.L3		//
.L5:
// eval/problem128//code.c:11:     for (i = 2; i * i <= l; i++)
	ldr	w0, [sp, 16]	// tmp128, i
	add	w0, w0, 1	// tmp127, tmp128,
	str	w0, [sp, 16]	// tmp127, i
.L4:
// eval/problem128//code.c:11:     for (i = 2; i * i <= l; i++)
	ldr	w0, [sp, 16]	// tmp129, i
	mul	w0, w0, w0	// _2, tmp129, tmp129
// eval/problem128//code.c:11:     for (i = 2; i * i <= l; i++)
	ldr	w1, [sp, 28]	// tmp130, l
	cmp	w1, w0	// tmp130, _2
	bge	.L6		//,
// eval/problem128//code.c:14:     return "YES";
	adrp	x0, .LC1	// tmp131,
	add	x0, x0, :lo12:.LC1	// _4, tmp131,
.L3:
// eval/problem128//code.c:15: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
