	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
	str	x0, [sp, 40]	// l, l
	str	w1, [sp, 36]	// size, size
	str	x2, [sp, 24]	// out, out
// eval/problem34//code.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	ldr	w0, [sp, 36]	// tmp143, size
	mov	w1, 21846	// tmp145,
	movk	w1, 0x5555, lsl 16	// tmp145,,
	smull	x1, w0, w1	// tmp144, tmp143, tmp145
	lsr	x1, x1, 32	// tmp146, tmp144,
	asr	w0, w0, 31	// tmp147, tmp143,
	sub	w0, w1, w0	// _1, tmp146, tmp147
// eval/problem34//code.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	add	w0, w0, 1	// _2, _1,
	sxtw	x0, w0	// _3, _2
// eval/problem34//code.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	lsl	x0, x0, 2	// _4, _3,
	bl	malloc		//
	str	x0, [sp, 72]	// tmp148, third
// eval/problem34//code.c:6:     int i, k = 0, third_size = 0;
	str	wzr, [sp, 56]	//, k
// eval/problem34//code.c:6:     int i, k = 0, third_size = 0;
	str	wzr, [sp, 60]	//, third_size
// eval/problem34//code.c:8:     for (i = 0; i * 3 < size; i++) {
	str	wzr, [sp, 52]	//, i
// eval/problem34//code.c:8:     for (i = 0; i * 3 < size; i++) {
	b	.L2		//
.L3:
// eval/problem34//code.c:9:         third[i] = l[i * 3];
	ldr	w1, [sp, 52]	// tmp149, i
	mov	w0, w1	// tmp150, tmp149
	lsl	w0, w0, 1	// tmp151, tmp150,
	add	w0, w0, w1	// _5, tmp150, tmp149
	sxtw	x0, w0	// _6, _5
// eval/problem34//code.c:9:         third[i] = l[i * 3];
	lsl	x0, x0, 2	// _7, _6,
	ldr	x1, [sp, 40]	// tmp152, l
	add	x1, x1, x0	// _8, tmp152, _7
// eval/problem34//code.c:9:         third[i] = l[i * 3];
	ldrsw	x0, [sp, 52]	// _9, i
	lsl	x0, x0, 2	// _10, _9,
	ldr	x2, [sp, 72]	// tmp153, third
	add	x0, x2, x0	// _11, tmp153, _10
// eval/problem34//code.c:9:         third[i] = l[i * 3];
	ldr	w1, [x1]	// _12, *_8
// eval/problem34//code.c:9:         third[i] = l[i * 3];
	str	w1, [x0]	// _12, *_11
// eval/problem34//code.c:10:         third_size++;
	ldr	w0, [sp, 60]	// tmp155, third_size
	add	w0, w0, 1	// tmp154, tmp155,
	str	w0, [sp, 60]	// tmp154, third_size
// eval/problem34//code.c:8:     for (i = 0; i * 3 < size; i++) {
	ldr	w0, [sp, 52]	// tmp157, i
	add	w0, w0, 1	// tmp156, tmp157,
	str	w0, [sp, 52]	// tmp156, i
.L2:
// eval/problem34//code.c:8:     for (i = 0; i * 3 < size; i++) {
	ldr	w1, [sp, 52]	// tmp158, i
	mov	w0, w1	// tmp159, tmp158
	lsl	w0, w0, 1	// tmp160, tmp159,
	add	w0, w0, w1	// _13, tmp159, tmp158
// eval/problem34//code.c:8:     for (i = 0; i * 3 < size; i++) {
	ldr	w1, [sp, 36]	// tmp161, size
	cmp	w1, w0	// tmp161, _13
	bgt	.L3		//,
// eval/problem34//code.c:13:     for (i = 0; i < third_size - 1; i++) {
	str	wzr, [sp, 52]	//, i
// eval/problem34//code.c:13:     for (i = 0; i < third_size - 1; i++) {
	b	.L4		//
.L9:
// eval/problem34//code.c:14:         int min_idx = i;
	ldr	w0, [sp, 52]	// tmp162, i
	str	w0, [sp, 64]	// tmp162, min_idx
// eval/problem34//code.c:15:         for (k = i + 1; k < third_size; k++) {
	ldr	w0, [sp, 52]	// tmp164, i
	add	w0, w0, 1	// tmp163, tmp164,
	str	w0, [sp, 56]	// tmp163, k
// eval/problem34//code.c:15:         for (k = i + 1; k < third_size; k++) {
	b	.L5		//
.L7:
// eval/problem34//code.c:16:             if (third[k] < third[min_idx])
	ldrsw	x0, [sp, 56]	// _14, k
	lsl	x0, x0, 2	// _15, _14,
	ldr	x1, [sp, 72]	// tmp165, third
	add	x0, x1, x0	// _16, tmp165, _15
	ldr	w1, [x0]	// _17, *_16
// eval/problem34//code.c:16:             if (third[k] < third[min_idx])
	ldrsw	x0, [sp, 64]	// _18, min_idx
	lsl	x0, x0, 2	// _19, _18,
	ldr	x2, [sp, 72]	// tmp166, third
	add	x0, x2, x0	// _20, tmp166, _19
	ldr	w0, [x0]	// _21, *_20
// eval/problem34//code.c:16:             if (third[k] < third[min_idx])
	cmp	w1, w0	// _17, _21
	bge	.L6		//,
// eval/problem34//code.c:17:                 min_idx = k;
	ldr	w0, [sp, 56]	// tmp167, k
	str	w0, [sp, 64]	// tmp167, min_idx
.L6:
// eval/problem34//code.c:15:         for (k = i + 1; k < third_size; k++) {
	ldr	w0, [sp, 56]	// tmp169, k
	add	w0, w0, 1	// tmp168, tmp169,
	str	w0, [sp, 56]	// tmp168, k
.L5:
// eval/problem34//code.c:15:         for (k = i + 1; k < third_size; k++) {
	ldr	w1, [sp, 56]	// tmp170, k
	ldr	w0, [sp, 60]	// tmp171, third_size
	cmp	w1, w0	// tmp170, tmp171
	blt	.L7		//,
// eval/problem34//code.c:19:         if (min_idx != i) {
	ldr	w1, [sp, 64]	// tmp172, min_idx
	ldr	w0, [sp, 52]	// tmp173, i
	cmp	w1, w0	// tmp172, tmp173
	beq	.L8		//,
// eval/problem34//code.c:20:             int temp = third[i];
	ldrsw	x0, [sp, 52]	// _22, i
	lsl	x0, x0, 2	// _23, _22,
	ldr	x1, [sp, 72]	// tmp174, third
	add	x0, x1, x0	// _24, tmp174, _23
// eval/problem34//code.c:20:             int temp = third[i];
	ldr	w0, [x0]	// tmp175, *_24
	str	w0, [sp, 68]	// tmp175, temp
// eval/problem34//code.c:21:             third[i] = third[min_idx];
	ldrsw	x0, [sp, 64]	// _25, min_idx
	lsl	x0, x0, 2	// _26, _25,
	ldr	x1, [sp, 72]	// tmp176, third
	add	x1, x1, x0	// _27, tmp176, _26
// eval/problem34//code.c:21:             third[i] = third[min_idx];
	ldrsw	x0, [sp, 52]	// _28, i
	lsl	x0, x0, 2	// _29, _28,
	ldr	x2, [sp, 72]	// tmp177, third
	add	x0, x2, x0	// _30, tmp177, _29
// eval/problem34//code.c:21:             third[i] = third[min_idx];
	ldr	w1, [x1]	// _31, *_27
// eval/problem34//code.c:21:             third[i] = third[min_idx];
	str	w1, [x0]	// _31, *_30
// eval/problem34//code.c:22:             third[min_idx] = temp;
	ldrsw	x0, [sp, 64]	// _32, min_idx
	lsl	x0, x0, 2	// _33, _32,
	ldr	x1, [sp, 72]	// tmp178, third
	add	x0, x1, x0	// _34, tmp178, _33
// eval/problem34//code.c:22:             third[min_idx] = temp;
	ldr	w1, [sp, 68]	// tmp179, temp
	str	w1, [x0]	// tmp179, *_34
.L8:
// eval/problem34//code.c:13:     for (i = 0; i < third_size - 1; i++) {
	ldr	w0, [sp, 52]	// tmp181, i
	add	w0, w0, 1	// tmp180, tmp181,
	str	w0, [sp, 52]	// tmp180, i
.L4:
// eval/problem34//code.c:13:     for (i = 0; i < third_size - 1; i++) {
	ldr	w0, [sp, 60]	// tmp182, third_size
	sub	w0, w0, #1	// _35, tmp182,
// eval/problem34//code.c:13:     for (i = 0; i < third_size - 1; i++) {
	ldr	w1, [sp, 52]	// tmp183, i
	cmp	w1, w0	// tmp183, _35
	blt	.L9		//,
// eval/problem34//code.c:26:     for (i = 0; i < size; i++) {
	str	wzr, [sp, 52]	//, i
// eval/problem34//code.c:26:     for (i = 0; i < size; i++) {
	b	.L10		//
.L13:
// eval/problem34//code.c:27:         if (i % 3 == 0) {
	ldr	w2, [sp, 52]	// tmp184, i
	mov	w0, 21846	// tmp186,
	movk	w0, 0x5555, lsl 16	// tmp186,,
	smull	x0, w2, w0	// tmp185, tmp184, tmp186
	lsr	x1, x0, 32	// tmp187, tmp185,
	asr	w0, w2, 31	// tmp188, tmp184,
	sub	w1, w1, w0	// _36, tmp187, tmp188
	mov	w0, w1	// tmp189, _36
	lsl	w0, w0, 1	// tmp190, tmp189,
	add	w0, w0, w1	// tmp189, tmp189, _36
	sub	w1, w2, w0	// _36, tmp184, tmp189
// eval/problem34//code.c:27:         if (i % 3 == 0) {
	cmp	w1, 0	// _36,
	bne	.L11		//,
// eval/problem34//code.c:28:             out[i] = third[i / 3];
	ldr	w0, [sp, 52]	// tmp191, i
	mov	w1, 21846	// tmp193,
	movk	w1, 0x5555, lsl 16	// tmp193,,
	smull	x1, w0, w1	// tmp192, tmp191, tmp193
	lsr	x1, x1, 32	// tmp194, tmp192,
	asr	w0, w0, 31	// tmp195, tmp191,
	sub	w0, w1, w0	// _37, tmp194, tmp195
	sxtw	x0, w0	// _38, _37
// eval/problem34//code.c:28:             out[i] = third[i / 3];
	lsl	x0, x0, 2	// _39, _38,
	ldr	x1, [sp, 72]	// tmp196, third
	add	x1, x1, x0	// _40, tmp196, _39
// eval/problem34//code.c:28:             out[i] = third[i / 3];
	ldrsw	x0, [sp, 52]	// _41, i
	lsl	x0, x0, 2	// _42, _41,
	ldr	x2, [sp, 24]	// tmp197, out
	add	x0, x2, x0	// _43, tmp197, _42
// eval/problem34//code.c:28:             out[i] = third[i / 3];
	ldr	w1, [x1]	// _44, *_40
// eval/problem34//code.c:28:             out[i] = third[i / 3];
	str	w1, [x0]	// _44, *_43
	b	.L12		//
.L11:
// eval/problem34//code.c:30:             out[i] = l[i];
	ldrsw	x0, [sp, 52]	// _45, i
	lsl	x0, x0, 2	// _46, _45,
	ldr	x1, [sp, 40]	// tmp198, l
	add	x1, x1, x0	// _47, tmp198, _46
// eval/problem34//code.c:30:             out[i] = l[i];
	ldrsw	x0, [sp, 52]	// _48, i
	lsl	x0, x0, 2	// _49, _48,
	ldr	x2, [sp, 24]	// tmp199, out
	add	x0, x2, x0	// _50, tmp199, _49
// eval/problem34//code.c:30:             out[i] = l[i];
	ldr	w1, [x1]	// _51, *_47
// eval/problem34//code.c:30:             out[i] = l[i];
	str	w1, [x0]	// _51, *_50
.L12:
// eval/problem34//code.c:26:     for (i = 0; i < size; i++) {
	ldr	w0, [sp, 52]	// tmp201, i
	add	w0, w0, 1	// tmp200, tmp201,
	str	w0, [sp, 52]	// tmp200, i
.L10:
// eval/problem34//code.c:26:     for (i = 0; i < size; i++) {
	ldr	w1, [sp, 52]	// tmp202, i
	ldr	w0, [sp, 36]	// tmp203, size
	cmp	w1, w0	// tmp202, tmp203
	blt	.L13		//,
// eval/problem34//code.c:34:     free(third);
	ldr	x0, [sp, 72]	//, third
	bl	free		//
// eval/problem34//code.c:35: }
	nop	
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
