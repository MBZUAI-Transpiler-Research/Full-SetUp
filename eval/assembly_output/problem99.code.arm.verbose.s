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
	.string	"AEIOU"
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
	str	x0, [sp, 40]	// s, s
// code.c:5:     const char *uvowel = "AEIOU";
	adrp	x0, .LC0	// tmp107,
	add	x0, x0, :lo12:.LC0	// tmp106, tmp107,
	str	x0, [sp, 56]	// tmp106, uvowel
// code.c:6:     int count = 0;
	str	wzr, [sp, 48]	//, count
// code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	str	wzr, [sp, 52]	//, i
// code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	b	.L2		//
.L5:
// code.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	ldr	w0, [sp, 52]	// tmp108, i
	lsl	w0, w0, 1	// _1, tmp108,
	sxtw	x0, w0	// _2, _1
// code.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	ldr	x1, [sp, 40]	// tmp109, s
	add	x0, x1, x0	// _3, tmp109, _2
	ldrb	w0, [x0]	// _4, *_3
// code.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	mov	w1, w0	//, _5
	ldr	x0, [sp, 56]	//, uvowel
	bl	strchr		//
// code.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	cmp	x0, 0	// _6,
	beq	.L3		//,
// code.c:9:             count += 1;
	ldr	w0, [sp, 48]	// tmp111, count
	add	w0, w0, 1	// tmp110, tmp111,
	str	w0, [sp, 48]	// tmp110, count
.L3:
// code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	ldr	w0, [sp, 52]	// tmp113, i
	add	w0, w0, 1	// tmp112, tmp113,
	str	w0, [sp, 52]	// tmp112, i
.L2:
// code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	ldrsw	x0, [sp, 52]	// _7, i
	ldr	x1, [sp, 40]	// tmp114, s
	add	x0, x1, x0	// _8, tmp114, _7
	ldrb	w0, [x0]	// _9, *_8
// code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	cmp	w0, 0	// _9,
	beq	.L4		//,
// code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	ldr	w0, [sp, 52]	// tmp115, i
	lsl	w0, w0, 1	// _10, tmp115,
	sxtw	x19, w0	// _11, _10
// code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	ldr	x0, [sp, 40]	//, s
	bl	strlen		//
// code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	cmp	x19, x0	// _11, _12
	bcc	.L5		//,
.L4:
// code.c:12:     return count;
	ldr	w0, [sp, 48]	// _23, count
// code.c:13: }
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
