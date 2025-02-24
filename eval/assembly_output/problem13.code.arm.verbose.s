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
	.string	""
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 24]	// strings, strings
	str	w1, [sp, 20]	// count, count
// code.c:5:     char *out = "";
	adrp	x0, .LC0	// tmp103,
	add	x0, x0, :lo12:.LC0	// tmp102, tmp103,
	str	x0, [sp, 56]	// tmp102, out
// code.c:6:     int longest_length = 0;
	str	wzr, [sp, 44]	//, longest_length
// code.c:7:     for (int i = 0; i < count; i++) {
	str	wzr, [sp, 48]	//, i
// code.c:7:     for (int i = 0; i < count; i++) {
	b	.L2		//
.L4:
// code.c:8:         int current_length = strlen(strings[i]);
	ldrsw	x0, [sp, 48]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 24]	// tmp104, strings
	add	x0, x1, x0	// _3, tmp104, _2
// code.c:8:         int current_length = strlen(strings[i]);
	ldr	x0, [x0]	// _4, *_3
	bl	strlen		//
// code.c:8:         int current_length = strlen(strings[i]);
	str	w0, [sp, 52]	// tmp105, current_length
// code.c:9:         if (current_length > longest_length) {
	ldr	w1, [sp, 52]	// tmp106, current_length
	ldr	w0, [sp, 44]	// tmp107, longest_length
	cmp	w1, w0	// tmp106, tmp107
	ble	.L3		//,
// code.c:10:             out = strings[i];
	ldrsw	x0, [sp, 48]	// _6, i
	lsl	x0, x0, 3	// _7, _6,
	ldr	x1, [sp, 24]	// tmp108, strings
	add	x0, x1, x0	// _8, tmp108, _7
// code.c:10:             out = strings[i];
	ldr	x0, [x0]	// tmp109, *_8
	str	x0, [sp, 56]	// tmp109, out
// code.c:11:             longest_length = current_length;
	ldr	w0, [sp, 52]	// tmp110, current_length
	str	w0, [sp, 44]	// tmp110, longest_length
.L3:
// code.c:7:     for (int i = 0; i < count; i++) {
	ldr	w0, [sp, 48]	// tmp112, i
	add	w0, w0, 1	// tmp111, tmp112,
	str	w0, [sp, 48]	// tmp111, i
.L2:
// code.c:7:     for (int i = 0; i < count; i++) {
	ldr	w1, [sp, 48]	// tmp113, i
	ldr	w0, [sp, 20]	// tmp114, count
	cmp	w1, w0	// tmp113, tmp114
	blt	.L4		//,
// code.c:14:     return out;
	ldr	x0, [sp, 56]	// _18, out
// code.c:15: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
