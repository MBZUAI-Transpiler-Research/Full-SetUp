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
	str	x0, [sp, 24]	// S, S
// code.c:6:     int isstart = 1;
	mov	w0, 1	// tmp142,
	str	w0, [sp, 32]	// tmp142, isstart
// code.c:7:     int isi = 0;
	str	wzr, [sp, 36]	//, isi
// code.c:8:     int sum = 0;
	str	wzr, [sp, 40]	//, sum
// code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	str	wzr, [sp, 44]	//, i
// code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	b	.L2		//
.L9:
// code.c:10:         if (isspace(S[i]) && isi) {
	bl	__ctype_b_loc		//
// code.c:10:         if (isspace(S[i]) && isi) {
	ldr	x1, [x0]	// _2, *_1
	ldrsw	x0, [sp, 44]	// _3, i
	ldr	x2, [sp, 24]	// tmp143, S
	add	x0, x2, x0	// _4, tmp143, _3
	ldrb	w0, [x0]	// _5, *_4
	and	x0, x0, 255	// _6, _5
	lsl	x0, x0, 1	// _7, _6,
	add	x0, x1, x0	// _8, _2, _7
	ldrh	w0, [x0]	// _9, *_8
	and	w0, w0, 8192	// _11, _10,
// code.c:10:         if (isspace(S[i]) && isi) {
	cmp	w0, 0	// _11,
	beq	.L3		//,
// code.c:10:         if (isspace(S[i]) && isi) {
	ldr	w0, [sp, 36]	// tmp144, isi
	cmp	w0, 0	// tmp144,
	beq	.L3		//,
// code.c:11:             isi = 0;
	str	wzr, [sp, 36]	//, isi
// code.c:12:             sum += 1;
	ldr	w0, [sp, 40]	// tmp146, sum
	add	w0, w0, 1	// tmp145, tmp146,
	str	w0, [sp, 40]	// tmp145, sum
.L3:
// code.c:14:         if (S[i] == 'I' && isstart) {
	ldrsw	x0, [sp, 44]	// _12, i
	ldr	x1, [sp, 24]	// tmp147, S
	add	x0, x1, x0	// _13, tmp147, _12
	ldrb	w0, [x0]	// _14, *_13
// code.c:14:         if (S[i] == 'I' && isstart) {
	cmp	w0, 73	// _14,
	bne	.L4		//,
// code.c:14:         if (S[i] == 'I' && isstart) {
	ldr	w0, [sp, 32]	// tmp148, isstart
	cmp	w0, 0	// tmp148,
	beq	.L4		//,
// code.c:15:             isi = 1;
	mov	w0, 1	// tmp149,
	str	w0, [sp, 36]	// tmp149, isi
	b	.L5		//
.L4:
// code.c:16:         } else if (!isspace(S[i])) {
	bl	__ctype_b_loc		//
// code.c:16:         } else if (!isspace(S[i])) {
	ldr	x1, [x0]	// _16, *_15
	ldrsw	x0, [sp, 44]	// _17, i
	ldr	x2, [sp, 24]	// tmp150, S
	add	x0, x2, x0	// _18, tmp150, _17
	ldrb	w0, [x0]	// _19, *_18
	and	x0, x0, 255	// _20, _19
	lsl	x0, x0, 1	// _21, _20,
	add	x0, x1, x0	// _22, _16, _21
	ldrh	w0, [x0]	// _23, *_22
	and	w0, w0, 8192	// _25, _24,
// code.c:16:         } else if (!isspace(S[i])) {
	cmp	w0, 0	// _25,
	bne	.L5		//,
// code.c:17:             isi = 0;
	str	wzr, [sp, 36]	//, isi
.L5:
// code.c:19:         if (!isspace(S[i])) {
	bl	__ctype_b_loc		//
// code.c:19:         if (!isspace(S[i])) {
	ldr	x1, [x0]	// _27, *_26
	ldrsw	x0, [sp, 44]	// _28, i
	ldr	x2, [sp, 24]	// tmp151, S
	add	x0, x2, x0	// _29, tmp151, _28
	ldrb	w0, [x0]	// _30, *_29
	and	x0, x0, 255	// _31, _30
	lsl	x0, x0, 1	// _32, _31,
	add	x0, x1, x0	// _33, _27, _32
	ldrh	w0, [x0]	// _34, *_33
	and	w0, w0, 8192	// _36, _35,
// code.c:19:         if (!isspace(S[i])) {
	cmp	w0, 0	// _36,
	bne	.L6		//,
// code.c:20:             isstart = 0;
	str	wzr, [sp, 32]	//, isstart
.L6:
// code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	ldrsw	x0, [sp, 44]	// _37, i
	ldr	x1, [sp, 24]	// tmp152, S
	add	x0, x1, x0	// _38, tmp152, _37
	ldrb	w0, [x0]	// _39, *_38
// code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	cmp	w0, 46	// _39,
	beq	.L7		//,
// code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	ldrsw	x0, [sp, 44]	// _40, i
	ldr	x1, [sp, 24]	// tmp153, S
	add	x0, x1, x0	// _41, tmp153, _40
	ldrb	w0, [x0]	// _42, *_41
// code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	cmp	w0, 63	// _42,
	beq	.L7		//,
// code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	ldrsw	x0, [sp, 44]	// _43, i
	ldr	x1, [sp, 24]	// tmp154, S
	add	x0, x1, x0	// _44, tmp154, _43
	ldrb	w0, [x0]	// _45, *_44
// code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	cmp	w0, 33	// _45,
	bne	.L8		//,
.L7:
// code.c:23:             isstart = 1;
	mov	w0, 1	// tmp155,
	str	w0, [sp, 32]	// tmp155, isstart
.L8:
// code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	ldr	w0, [sp, 44]	// tmp157, i
	add	w0, w0, 1	// tmp156, tmp157,
	str	w0, [sp, 44]	// tmp156, i
.L2:
// code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	ldrsw	x0, [sp, 44]	// _46, i
	ldr	x1, [sp, 24]	// tmp158, S
	add	x0, x1, x0	// _47, tmp158, _46
	ldrb	w0, [x0]	// _48, *_47
// code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	cmp	w0, 0	// _48,
	bne	.L9		//,
// code.c:26:     return sum;
	ldr	w0, [sp, 40]	// _64, sum
// code.c:27: }
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
