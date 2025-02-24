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
	str	x0, [sp, 8]	// str, str
// code.c:4:     int length = 0;
	str	wzr, [sp, 28]	//, length
// code.c:5:     while (str[length] != '\0') {
	b	.L2		//
.L3:
// code.c:6:         length++;
	ldr	w0, [sp, 28]	// tmp98, length
	add	w0, w0, 1	// tmp97, tmp98,
	str	w0, [sp, 28]	// tmp97, length
.L2:
// code.c:5:     while (str[length] != '\0') {
	ldrsw	x0, [sp, 28]	// _1, length
	ldr	x1, [sp, 8]	// tmp99, str
	add	x0, x1, x0	// _2, tmp99, _1
	ldrb	w0, [x0]	// _3, *_2
// code.c:5:     while (str[length] != '\0') {
	cmp	w0, 0	// _3,
	bne	.L3		//,
// code.c:8:     return length;
	ldr	w0, [sp, 28]	// _8, length
// code.c:9: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
