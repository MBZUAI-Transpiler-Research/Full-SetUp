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
	.string	"2357BD"
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
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -48
	str	x0, [sp, 40]	// num, num
// eval/problem79//code.c:5:     const char* key = "2357BD";
	adrp	x0, .LC0	// tmp102,
	add	x0, x0, :lo12:.LC0	// tmp101, tmp102,
	str	x0, [sp, 56]	// tmp101, key
// eval/problem79//code.c:6:     int out = 0;
	str	wzr, [sp, 48]	//, out
// eval/problem79//code.c:7:     for (int i = 0; i < strlen(num); i++) {
	str	wzr, [sp, 52]	//, i
// eval/problem79//code.c:7:     for (int i = 0; i < strlen(num); i++) {
	b	.L2		//
.L4:
// eval/problem79//code.c:8:         if (strchr(key, num[i])) out += 1;
	ldrsw	x0, [sp, 52]	// _1, i
	ldr	x1, [sp, 40]	// tmp103, num
	add	x0, x1, x0	// _2, tmp103, _1
	ldrb	w0, [x0]	// _3, *_2
// eval/problem79//code.c:8:         if (strchr(key, num[i])) out += 1;
	mov	w1, w0	//, _4
	ldr	x0, [sp, 56]	//, key
	bl	strchr		//
// eval/problem79//code.c:8:         if (strchr(key, num[i])) out += 1;
	cmp	x0, 0	// _5,
	beq	.L3		//,
// eval/problem79//code.c:8:         if (strchr(key, num[i])) out += 1;
	ldr	w0, [sp, 48]	// tmp105, out
	add	w0, w0, 1	// tmp104, tmp105,
	str	w0, [sp, 48]	// tmp104, out
.L3:
// eval/problem79//code.c:7:     for (int i = 0; i < strlen(num); i++) {
	ldr	w0, [sp, 52]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 52]	// tmp106, i
.L2:
// eval/problem79//code.c:7:     for (int i = 0; i < strlen(num); i++) {
	ldrsw	x19, [sp, 52]	// _6, i
// eval/problem79//code.c:7:     for (int i = 0; i < strlen(num); i++) {
	ldr	x0, [sp, 40]	//, num
	bl	strlen		//
// eval/problem79//code.c:7:     for (int i = 0; i < strlen(num); i++) {
	cmp	x19, x0	// _6, _7
	bcc	.L4		//,
// eval/problem79//code.c:10:     return out;
	ldr	w0, [sp, 48]	// _16, out
// eval/problem79//code.c:11: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
