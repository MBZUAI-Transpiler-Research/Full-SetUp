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
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// str, str
// code.c:6:     int l = strlen(str);
	ldr	x0, [sp, 24]	//, str
	bl	strlen		//
// code.c:6:     int l = strlen(str);
	str	w0, [sp, 44]	// tmp97, l
// code.c:7:     if (l < 2) return false;
	ldr	w0, [sp, 44]	// tmp98, l
	cmp	w0, 1	// tmp98,
	bgt	.L2		//,
// code.c:7:     if (l < 2) return false;
	mov	w0, 0	// _5,
// code.c:7:     if (l < 2) return false;
	b	.L3		//
.L2:
// code.c:8:     for (int i = 2; i * i <= l; i++) {
	mov	w0, 2	// tmp99,
	str	w0, [sp, 40]	// tmp99, i
// code.c:8:     for (int i = 2; i * i <= l; i++) {
	b	.L4		//
.L6:
// code.c:9:         if (l % i == 0) return false;
	ldr	w0, [sp, 44]	// tmp100, l
	ldr	w1, [sp, 40]	// tmp113, i
	sdiv	w2, w0, w1	// tmp112, tmp100, tmp113
	ldr	w1, [sp, 40]	// tmp115, i
	mul	w1, w2, w1	// tmp114, tmp112, tmp115
	sub	w0, w0, w1	// _2, tmp100, tmp114
// code.c:9:         if (l % i == 0) return false;
	cmp	w0, 0	// _2,
	bne	.L5		//,
// code.c:9:         if (l % i == 0) return false;
	mov	w0, 0	// _5,
// code.c:9:         if (l % i == 0) return false;
	b	.L3		//
.L5:
// code.c:8:     for (int i = 2; i * i <= l; i++) {
	ldr	w0, [sp, 40]	// tmp117, i
	add	w0, w0, 1	// tmp116, tmp117,
	str	w0, [sp, 40]	// tmp116, i
.L4:
// code.c:8:     for (int i = 2; i * i <= l; i++) {
	ldr	w0, [sp, 40]	// tmp118, i
	mul	w0, w0, w0	// _3, tmp118, tmp118
// code.c:8:     for (int i = 2; i * i <= l; i++) {
	ldr	w1, [sp, 44]	// tmp119, l
	cmp	w1, w0	// tmp119, _3
	bge	.L6		//,
// code.c:11:     return true;
	mov	w0, 1	// _5,
.L3:
// code.c:12: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
