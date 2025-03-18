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
	.string	"%s.%s"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x0, [sp, 40]	// class_name, class_name
	str	x1, [sp, 32]	// extensions, extensions
	str	w2, [sp, 28]	// ext_count, ext_count
	str	x3, [sp, 16]	// output, output
// eval/problem154//code.c:5:     int max_strength = -1000;
	mov	w0, -1000	// tmp100,
	str	w0, [sp, 64]	// tmp100, max_strength
// eval/problem154//code.c:6:     const char* strongest = NULL;
	str	xzr, [sp, 80]	//, strongest
// eval/problem154//code.c:7:     for (int i = 0; i < ext_count; i++) {
	str	wzr, [sp, 68]	//, i
// eval/problem154//code.c:7:     for (int i = 0; i < ext_count; i++) {
	b	.L2		//
.L8:
// eval/problem154//code.c:8:         const char* extension = extensions[i];
	ldrsw	x0, [sp, 68]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 32]	// tmp101, extensions
	add	x0, x1, x0	// _3, tmp101, _2
// eval/problem154//code.c:8:         const char* extension = extensions[i];
	ldr	x0, [x0]	// tmp102, *_3
	str	x0, [sp, 88]	// tmp102, extension
// eval/problem154//code.c:9:         int strength = 0;
	str	wzr, [sp, 72]	//, strength
// eval/problem154//code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	str	wzr, [sp, 76]	//, j
// eval/problem154//code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	b	.L3		//
.L6:
// eval/problem154//code.c:11:             char chr = extension[j];
	ldrsw	x0, [sp, 76]	// _4, j
	ldr	x1, [sp, 88]	// tmp103, extension
	add	x0, x1, x0	// _5, tmp103, _4
// eval/problem154//code.c:11:             char chr = extension[j];
	ldrb	w0, [x0]	// tmp104, *_5
	strb	w0, [sp, 63]	// tmp104, chr
// eval/problem154//code.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	ldrb	w0, [sp, 63]	// tmp105, chr
	cmp	w0, 64	// tmp105,
	bls	.L4		//,
// eval/problem154//code.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	ldrb	w0, [sp, 63]	// tmp106, chr
	cmp	w0, 90	// tmp106,
	bhi	.L4		//,
// eval/problem154//code.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	ldr	w0, [sp, 72]	// tmp108, strength
	add	w0, w0, 1	// tmp107, tmp108,
	str	w0, [sp, 72]	// tmp107, strength
.L4:
// eval/problem154//code.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	ldrb	w0, [sp, 63]	// tmp109, chr
	cmp	w0, 96	// tmp109,
	bls	.L5		//,
// eval/problem154//code.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	ldrb	w0, [sp, 63]	// tmp110, chr
	cmp	w0, 122	// tmp110,
	bhi	.L5		//,
// eval/problem154//code.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	ldr	w0, [sp, 72]	// tmp112, strength
	sub	w0, w0, #1	// tmp111, tmp112,
	str	w0, [sp, 72]	// tmp111, strength
.L5:
// eval/problem154//code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	ldr	w0, [sp, 76]	// tmp114, j
	add	w0, w0, 1	// tmp113, tmp114,
	str	w0, [sp, 76]	// tmp113, j
.L3:
// eval/problem154//code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	ldrsw	x0, [sp, 76]	// _6, j
	ldr	x1, [sp, 88]	// tmp115, extension
	add	x0, x1, x0	// _7, tmp115, _6
	ldrb	w0, [x0]	// _8, *_7
// eval/problem154//code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	cmp	w0, 0	// _8,
	bne	.L6		//,
// eval/problem154//code.c:15:         if (strength > max_strength) {
	ldr	w1, [sp, 72]	// tmp116, strength
	ldr	w0, [sp, 64]	// tmp117, max_strength
	cmp	w1, w0	// tmp116, tmp117
	ble	.L7		//,
// eval/problem154//code.c:16:             max_strength = strength;
	ldr	w0, [sp, 72]	// tmp118, strength
	str	w0, [sp, 64]	// tmp118, max_strength
// eval/problem154//code.c:17:             strongest = extension;
	ldr	x0, [sp, 88]	// tmp119, extension
	str	x0, [sp, 80]	// tmp119, strongest
.L7:
// eval/problem154//code.c:7:     for (int i = 0; i < ext_count; i++) {
	ldr	w0, [sp, 68]	// tmp121, i
	add	w0, w0, 1	// tmp120, tmp121,
	str	w0, [sp, 68]	// tmp120, i
.L2:
// eval/problem154//code.c:7:     for (int i = 0; i < ext_count; i++) {
	ldr	w1, [sp, 68]	// tmp122, i
	ldr	w0, [sp, 28]	// tmp123, ext_count
	cmp	w1, w0	// tmp122, tmp123
	blt	.L8		//,
// eval/problem154//code.c:20:     sprintf(output, "%s.%s", class_name, strongest);
	ldr	x3, [sp, 80]	//, strongest
	ldr	x2, [sp, 40]	//, class_name
	adrp	x0, .LC0	// tmp124,
	add	x1, x0, :lo12:.LC0	//, tmp124,
	ldr	x0, [sp, 16]	//, output
	bl	sprintf		//
// eval/problem154//code.c:21: }
	nop	
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
