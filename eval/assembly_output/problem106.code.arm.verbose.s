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
.LFB6:
	.cfi_startproc
	sub	sp, sp, #160	//,,
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, 144]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 144	//,,
	str	x0, [sp, 24]	// arr, arr
	str	w1, [sp, 20]	// size, size
	str	x2, [sp, 8]	// out, out
	str	x3, [sp]	// out_size, out_size
// code.c:5: void func0(int *arr, int size, char ***out, int *out_size) {
	adrp	x0, :got:__stack_chk_guard	// tmp152,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp152,
	ldr	x1, [x0]	// tmp208,
	str	x1, [sp, 136]	// tmp208, D.5611
	mov	x1, 0	// tmp208
// code.c:6:     char *names[] = {"", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"};
	adrp	x0, .LC11	// tmp154,
	add	x1, x0, :lo12:.LC11	// tmp153, tmp154,
	add	x0, sp, 56	// tmp155,,
	ldp	q0, q1, [x1]	// tmp157, tmp158,
	stp	q0, q1, [x0]	// tmp157, tmp158, names
	ldp	q0, q1, [x1, 32]	// tmp159, tmp160,
	stp	q0, q1, [x0, 32]	// tmp159, tmp160, names
	ldr	q0, [x1, 64]	// tmp161,
	str	q0, [x0, 64]	// tmp161, names
// code.c:9:     for (i = 0; i < size - 1; i++) {
	str	wzr, [sp, 44]	//, i
// code.c:9:     for (i = 0; i < size - 1; i++) {
	b	.L2		//
.L6:
// code.c:10:         for (j = 0; j < size - i - 1; j++) {
	str	wzr, [sp, 48]	//, j
// code.c:10:         for (j = 0; j < size - i - 1; j++) {
	b	.L3		//
.L5:
// code.c:11:             if (arr[j] > arr[j + 1]) {
	ldrsw	x0, [sp, 48]	// _1, j
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp162, arr
	add	x0, x1, x0	// _3, tmp162, _2
	ldr	w1, [x0]	// _4, *_3
// code.c:11:             if (arr[j] > arr[j + 1]) {
	ldrsw	x0, [sp, 48]	// _5, j
	add	x0, x0, 1	// _6, _5,
	lsl	x0, x0, 2	// _7, _6,
	ldr	x2, [sp, 24]	// tmp163, arr
	add	x0, x2, x0	// _8, tmp163, _7
	ldr	w0, [x0]	// _9, *_8
// code.c:11:             if (arr[j] > arr[j + 1]) {
	cmp	w1, w0	// _4, _9
	ble	.L4		//,
// code.c:12:                 int temp = arr[j];
	ldrsw	x0, [sp, 48]	// _10, j
	lsl	x0, x0, 2	// _11, _10,
	ldr	x1, [sp, 24]	// tmp164, arr
	add	x0, x1, x0	// _12, tmp164, _11
// code.c:12:                 int temp = arr[j];
	ldr	w0, [x0]	// tmp165, *_12
	str	w0, [sp, 52]	// tmp165, temp
// code.c:13:                 arr[j] = arr[j + 1];
	ldrsw	x0, [sp, 48]	// _13, j
	add	x0, x0, 1	// _14, _13,
	lsl	x0, x0, 2	// _15, _14,
	ldr	x1, [sp, 24]	// tmp166, arr
	add	x1, x1, x0	// _16, tmp166, _15
// code.c:13:                 arr[j] = arr[j + 1];
	ldrsw	x0, [sp, 48]	// _17, j
	lsl	x0, x0, 2	// _18, _17,
	ldr	x2, [sp, 24]	// tmp167, arr
	add	x0, x2, x0	// _19, tmp167, _18
// code.c:13:                 arr[j] = arr[j + 1];
	ldr	w1, [x1]	// _20, *_16
// code.c:13:                 arr[j] = arr[j + 1];
	str	w1, [x0]	// _20, *_19
// code.c:14:                 arr[j + 1] = temp;
	ldrsw	x0, [sp, 48]	// _21, j
	add	x0, x0, 1	// _22, _21,
	lsl	x0, x0, 2	// _23, _22,
	ldr	x1, [sp, 24]	// tmp168, arr
	add	x0, x1, x0	// _24, tmp168, _23
// code.c:14:                 arr[j + 1] = temp;
	ldr	w1, [sp, 52]	// tmp169, temp
	str	w1, [x0]	// tmp169, *_24
.L4:
// code.c:10:         for (j = 0; j < size - i - 1; j++) {
	ldr	w0, [sp, 48]	// tmp171, j
	add	w0, w0, 1	// tmp170, tmp171,
	str	w0, [sp, 48]	// tmp170, j
.L3:
// code.c:10:         for (j = 0; j < size - i - 1; j++) {
	ldr	w1, [sp, 20]	// tmp172, size
	ldr	w0, [sp, 44]	// tmp173, i
	sub	w0, w1, w0	// _25, tmp172, tmp173
// code.c:10:         for (j = 0; j < size - i - 1; j++) {
	sub	w0, w0, #1	// _26, _25,
// code.c:10:         for (j = 0; j < size - i - 1; j++) {
	ldr	w1, [sp, 48]	// tmp174, j
	cmp	w1, w0	// tmp174, _26
	blt	.L5		//,
// code.c:9:     for (i = 0; i < size - 1; i++) {
	ldr	w0, [sp, 44]	// tmp176, i
	add	w0, w0, 1	// tmp175, tmp176,
	str	w0, [sp, 44]	// tmp175, i
.L2:
// code.c:9:     for (i = 0; i < size - 1; i++) {
	ldr	w0, [sp, 20]	// tmp177, size
	sub	w0, w0, #1	// _27, tmp177,
// code.c:9:     for (i = 0; i < size - 1; i++) {
	ldr	w1, [sp, 44]	// tmp178, i
	cmp	w1, w0	// tmp178, _27
	blt	.L6		//,
// code.c:19:     *out_size = 0;
	ldr	x0, [sp]	// tmp179, out_size
	str	wzr, [x0]	//, *out_size_78(D)
// code.c:20:     for (i = size - 1; i >= 0; i--) {
	ldr	w0, [sp, 20]	// tmp181, size
	sub	w0, w0, #1	// tmp180, tmp181,
	str	w0, [sp, 44]	// tmp180, i
// code.c:20:     for (i = size - 1; i >= 0; i--) {
	b	.L7		//
.L9:
// code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	ldrsw	x0, [sp, 44]	// _28, i
	lsl	x0, x0, 2	// _29, _28,
	ldr	x1, [sp, 24]	// tmp182, arr
	add	x0, x1, x0	// _30, tmp182, _29
	ldr	w0, [x0]	// _31, *_30
// code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	cmp	w0, 0	// _31,
	ble	.L8		//,
// code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	ldrsw	x0, [sp, 44]	// _32, i
	lsl	x0, x0, 2	// _33, _32,
	ldr	x1, [sp, 24]	// tmp183, arr
	add	x0, x1, x0	// _34, tmp183, _33
	ldr	w0, [x0]	// _35, *_34
// code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	cmp	w0, 9	// _35,
	bgt	.L8		//,
// code.c:22:             (*out_size)++;
	ldr	x0, [sp]	// tmp184, out_size
	ldr	w0, [x0]	// _36, *out_size_78(D)
// code.c:22:             (*out_size)++;
	add	w1, w0, 1	// _37, _36,
	ldr	x0, [sp]	// tmp185, out_size
	str	w1, [x0]	// _37, *out_size_78(D)
.L8:
// code.c:20:     for (i = size - 1; i >= 0; i--) {
	ldr	w0, [sp, 44]	// tmp187, i
	sub	w0, w0, #1	// tmp186, tmp187,
	str	w0, [sp, 44]	// tmp186, i
.L7:
// code.c:20:     for (i = size - 1; i >= 0; i--) {
	ldr	w0, [sp, 44]	// tmp188, i
	cmp	w0, 0	// tmp188,
	bge	.L9		//,
// code.c:26:     *out = malloc(*out_size * sizeof(char *));
	ldr	x0, [sp]	// tmp189, out_size
	ldr	w0, [x0]	// _38, *out_size_78(D)
	sxtw	x0, w0	// _39, _38
// code.c:26:     *out = malloc(*out_size * sizeof(char *));
	lsl	x0, x0, 3	// _40, _39,
	bl	malloc		//
	mov	x1, x0	// _41, tmp190
// code.c:26:     *out = malloc(*out_size * sizeof(char *));
	ldr	x0, [sp, 8]	// tmp191, out
	str	x1, [x0]	// _41, *out_82(D)
// code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	ldr	w0, [sp, 20]	// tmp193, size
	sub	w0, w0, #1	// tmp192, tmp193,
	str	w0, [sp, 44]	// tmp192, i
// code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	str	wzr, [sp, 48]	//, j
// code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	b	.L10		//
.L13:
// code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	ldrsw	x0, [sp, 44]	// _42, i
	lsl	x0, x0, 2	// _43, _42,
	ldr	x1, [sp, 24]	// tmp194, arr
	add	x0, x1, x0	// _44, tmp194, _43
	ldr	w0, [x0]	// _45, *_44
// code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	cmp	w0, 0	// _45,
	ble	.L11		//,
// code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	ldrsw	x0, [sp, 44]	// _46, i
	lsl	x0, x0, 2	// _47, _46,
	ldr	x1, [sp, 24]	// tmp195, arr
	add	x0, x1, x0	// _48, tmp195, _47
	ldr	w0, [x0]	// _49, *_48
// code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	cmp	w0, 9	// _49,
	bgt	.L11		//,
// code.c:30:             (*out)[j++] = names[arr[i]];
	ldrsw	x0, [sp, 44]	// _50, i
	lsl	x0, x0, 2	// _51, _50,
	ldr	x1, [sp, 24]	// tmp196, arr
	add	x0, x1, x0	// _52, tmp196, _51
	ldr	w3, [x0]	// _53, *_52
// code.c:30:             (*out)[j++] = names[arr[i]];
	ldr	x0, [sp, 8]	// tmp197, out
	ldr	x1, [x0]	// _54, *out_82(D)
// code.c:30:             (*out)[j++] = names[arr[i]];
	ldr	w0, [sp, 48]	// j.0_55, j
	add	w2, w0, 1	// tmp198, j.0_55,
	str	w2, [sp, 48]	// tmp198, j
	sxtw	x0, w0	// _56, j.0_55
// code.c:30:             (*out)[j++] = names[arr[i]];
	lsl	x0, x0, 3	// _57, _56,
	add	x0, x1, x0	// _58, _54, _57
// code.c:30:             (*out)[j++] = names[arr[i]];
	sxtw	x1, w3	// tmp199, _53
	lsl	x1, x1, 3	// tmp200, tmp199,
	add	x2, sp, 56	// tmp201,,
	ldr	x1, [x2, x1]	// _59, names[_53]
// code.c:30:             (*out)[j++] = names[arr[i]];
	str	x1, [x0]	// _59, *_58
.L11:
// code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	ldr	w0, [sp, 44]	// tmp203, i
	sub	w0, w0, #1	// tmp202, tmp203,
	str	w0, [sp, 44]	// tmp202, i
.L10:
// code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	ldr	w0, [sp, 44]	// tmp204, i
	cmp	w0, 0	// tmp204,
	blt	.L15		//,
// code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	ldr	x0, [sp]	// tmp205, out_size
	ldr	w0, [x0]	// _60, *out_size_78(D)
// code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	ldr	w1, [sp, 48]	// tmp206, j
	cmp	w1, w0	// tmp206, _60
	blt	.L13		//,
.L15:
// code.c:33: }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp207,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp207,
	ldr	x2, [sp, 136]	// tmp209, D.5611
	ldr	x1, [x0]	// tmp210,
	subs	x2, x2, x1	// tmp209, tmp210
	mov	x1, 0	// tmp210
	beq	.L14		//,
	bl	__stack_chk_fail		//
.L14:
	ldp	x29, x30, [sp, 144]	//,,
	add	sp, sp, 160	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"One"
	.align	3
.LC2:
	.string	"Two"
	.align	3
.LC3:
	.string	"Three"
	.align	3
.LC4:
	.string	"Four"
	.align	3
.LC5:
	.string	"Five"
	.align	3
.LC6:
	.string	"Six"
	.align	3
.LC7:
	.string	"Seven"
	.align	3
.LC8:
	.string	"Eight"
	.align	3
.LC9:
	.string	"Nine"
	.data
	.align	3
.LC11:
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.xword	.LC7
	.xword	.LC8
	.xword	.LC9
	.text
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
