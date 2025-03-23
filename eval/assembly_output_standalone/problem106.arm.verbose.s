	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -160]!	//,,,
	.cfi_def_cfa_offset 160
	.cfi_offset 29, -160
	.cfi_offset 30, -152
	mov	x29, sp	//,
	str	x0, [sp, 40]	// arr, arr
	str	w1, [sp, 36]	// size, size
	str	x2, [sp, 24]	// out, out
	str	x3, [sp, 16]	// out_size, out_size
// eval/problem106//code.c:5: void func0(int *arr, int size, char ***out, int *out_size) {
	adrp	x0, :got:__stack_chk_guard	// tmp153,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp152, tmp153,
	ldr	x1, [x0]	// tmp210,
	str	x1, [sp, 152]	// tmp210, D.4995
	mov	x1, 0	// tmp210
// eval/problem106//code.c:6:     char *names[] = {"", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"};
	adrp	x0, .LC11	// tmp155,
	add	x1, x0, :lo12:.LC11	// tmp154, tmp155,
	add	x0, sp, 72	// tmp156,,
	ldp	q0, q1, [x1]	// tmp158, tmp159,
	stp	q0, q1, [x0]	// tmp158, tmp159, names
	ldp	q0, q1, [x1, 32]	// tmp160, tmp161,
	stp	q0, q1, [x0, 32]	// tmp160, tmp161, names
	ldr	q0, [x1, 64]	// tmp162,
	str	q0, [x0, 64]	// tmp162, names
// eval/problem106//code.c:9:     for (i = 0; i < size - 1; i++) {
	str	wzr, [sp, 60]	//, i
// eval/problem106//code.c:9:     for (i = 0; i < size - 1; i++) {
	b	.L2		//
.L6:
// eval/problem106//code.c:10:         for (j = 0; j < size - i - 1; j++) {
	str	wzr, [sp, 64]	//, j
// eval/problem106//code.c:10:         for (j = 0; j < size - i - 1; j++) {
	b	.L3		//
.L5:
// eval/problem106//code.c:11:             if (arr[j] > arr[j + 1]) {
	ldrsw	x0, [sp, 64]	// _1, j
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 40]	// tmp163, arr
	add	x0, x1, x0	// _3, tmp163, _2
	ldr	w1, [x0]	// _4, *_3
// eval/problem106//code.c:11:             if (arr[j] > arr[j + 1]) {
	ldrsw	x0, [sp, 64]	// _5, j
	add	x0, x0, 1	// _6, _5,
	lsl	x0, x0, 2	// _7, _6,
	ldr	x2, [sp, 40]	// tmp164, arr
	add	x0, x2, x0	// _8, tmp164, _7
	ldr	w0, [x0]	// _9, *_8
// eval/problem106//code.c:11:             if (arr[j] > arr[j + 1]) {
	cmp	w1, w0	// _4, _9
	ble	.L4		//,
// eval/problem106//code.c:12:                 int temp = arr[j];
	ldrsw	x0, [sp, 64]	// _10, j
	lsl	x0, x0, 2	// _11, _10,
	ldr	x1, [sp, 40]	// tmp165, arr
	add	x0, x1, x0	// _12, tmp165, _11
// eval/problem106//code.c:12:                 int temp = arr[j];
	ldr	w0, [x0]	// tmp166, *_12
	str	w0, [sp, 68]	// tmp166, temp
// eval/problem106//code.c:13:                 arr[j] = arr[j + 1];
	ldrsw	x0, [sp, 64]	// _13, j
	add	x0, x0, 1	// _14, _13,
	lsl	x0, x0, 2	// _15, _14,
	ldr	x1, [sp, 40]	// tmp167, arr
	add	x1, x1, x0	// _16, tmp167, _15
// eval/problem106//code.c:13:                 arr[j] = arr[j + 1];
	ldrsw	x0, [sp, 64]	// _17, j
	lsl	x0, x0, 2	// _18, _17,
	ldr	x2, [sp, 40]	// tmp168, arr
	add	x0, x2, x0	// _19, tmp168, _18
// eval/problem106//code.c:13:                 arr[j] = arr[j + 1];
	ldr	w1, [x1]	// _20, *_16
// eval/problem106//code.c:13:                 arr[j] = arr[j + 1];
	str	w1, [x0]	// _20, *_19
// eval/problem106//code.c:14:                 arr[j + 1] = temp;
	ldrsw	x0, [sp, 64]	// _21, j
	add	x0, x0, 1	// _22, _21,
	lsl	x0, x0, 2	// _23, _22,
	ldr	x1, [sp, 40]	// tmp169, arr
	add	x0, x1, x0	// _24, tmp169, _23
// eval/problem106//code.c:14:                 arr[j + 1] = temp;
	ldr	w1, [sp, 68]	// tmp170, temp
	str	w1, [x0]	// tmp170, *_24
.L4:
// eval/problem106//code.c:10:         for (j = 0; j < size - i - 1; j++) {
	ldr	w0, [sp, 64]	// tmp172, j
	add	w0, w0, 1	// tmp171, tmp172,
	str	w0, [sp, 64]	// tmp171, j
.L3:
// eval/problem106//code.c:10:         for (j = 0; j < size - i - 1; j++) {
	ldr	w1, [sp, 36]	// tmp173, size
	ldr	w0, [sp, 60]	// tmp174, i
	sub	w0, w1, w0	// _25, tmp173, tmp174
// eval/problem106//code.c:10:         for (j = 0; j < size - i - 1; j++) {
	sub	w0, w0, #1	// _26, _25,
// eval/problem106//code.c:10:         for (j = 0; j < size - i - 1; j++) {
	ldr	w1, [sp, 64]	// tmp175, j
	cmp	w1, w0	// tmp175, _26
	blt	.L5		//,
// eval/problem106//code.c:9:     for (i = 0; i < size - 1; i++) {
	ldr	w0, [sp, 60]	// tmp177, i
	add	w0, w0, 1	// tmp176, tmp177,
	str	w0, [sp, 60]	// tmp176, i
.L2:
// eval/problem106//code.c:9:     for (i = 0; i < size - 1; i++) {
	ldr	w0, [sp, 36]	// tmp178, size
	sub	w0, w0, #1	// _27, tmp178,
// eval/problem106//code.c:9:     for (i = 0; i < size - 1; i++) {
	ldr	w1, [sp, 60]	// tmp179, i
	cmp	w1, w0	// tmp179, _27
	blt	.L6		//,
// eval/problem106//code.c:19:     *out_size = 0;
	ldr	x0, [sp, 16]	// tmp180, out_size
	str	wzr, [x0]	//, *out_size_78(D)
// eval/problem106//code.c:20:     for (i = size - 1; i >= 0; i--) {
	ldr	w0, [sp, 36]	// tmp182, size
	sub	w0, w0, #1	// tmp181, tmp182,
	str	w0, [sp, 60]	// tmp181, i
// eval/problem106//code.c:20:     for (i = size - 1; i >= 0; i--) {
	b	.L7		//
.L9:
// eval/problem106//code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	ldrsw	x0, [sp, 60]	// _28, i
	lsl	x0, x0, 2	// _29, _28,
	ldr	x1, [sp, 40]	// tmp183, arr
	add	x0, x1, x0	// _30, tmp183, _29
	ldr	w0, [x0]	// _31, *_30
// eval/problem106//code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	cmp	w0, 0	// _31,
	ble	.L8		//,
// eval/problem106//code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	ldrsw	x0, [sp, 60]	// _32, i
	lsl	x0, x0, 2	// _33, _32,
	ldr	x1, [sp, 40]	// tmp184, arr
	add	x0, x1, x0	// _34, tmp184, _33
	ldr	w0, [x0]	// _35, *_34
// eval/problem106//code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	cmp	w0, 9	// _35,
	bgt	.L8		//,
// eval/problem106//code.c:22:             (*out_size)++;
	ldr	x0, [sp, 16]	// tmp185, out_size
	ldr	w0, [x0]	// _36, *out_size_78(D)
// eval/problem106//code.c:22:             (*out_size)++;
	add	w1, w0, 1	// _37, _36,
	ldr	x0, [sp, 16]	// tmp186, out_size
	str	w1, [x0]	// _37, *out_size_78(D)
.L8:
// eval/problem106//code.c:20:     for (i = size - 1; i >= 0; i--) {
	ldr	w0, [sp, 60]	// tmp188, i
	sub	w0, w0, #1	// tmp187, tmp188,
	str	w0, [sp, 60]	// tmp187, i
.L7:
// eval/problem106//code.c:20:     for (i = size - 1; i >= 0; i--) {
	ldr	w0, [sp, 60]	// tmp189, i
	cmp	w0, 0	// tmp189,
	bge	.L9		//,
// eval/problem106//code.c:26:     *out = malloc(*out_size * sizeof(char *));
	ldr	x0, [sp, 16]	// tmp190, out_size
	ldr	w0, [x0]	// _38, *out_size_78(D)
	sxtw	x0, w0	// _39, _38
// eval/problem106//code.c:26:     *out = malloc(*out_size * sizeof(char *));
	lsl	x0, x0, 3	// _40, _39,
	bl	malloc		//
	mov	x1, x0	// _41, tmp191
// eval/problem106//code.c:26:     *out = malloc(*out_size * sizeof(char *));
	ldr	x0, [sp, 24]	// tmp192, out
	str	x1, [x0]	// _41, *out_82(D)
// eval/problem106//code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	ldr	w0, [sp, 36]	// tmp194, size
	sub	w0, w0, #1	// tmp193, tmp194,
	str	w0, [sp, 60]	// tmp193, i
// eval/problem106//code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	str	wzr, [sp, 64]	//, j
// eval/problem106//code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	b	.L10		//
.L13:
// eval/problem106//code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	ldrsw	x0, [sp, 60]	// _42, i
	lsl	x0, x0, 2	// _43, _42,
	ldr	x1, [sp, 40]	// tmp195, arr
	add	x0, x1, x0	// _44, tmp195, _43
	ldr	w0, [x0]	// _45, *_44
// eval/problem106//code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	cmp	w0, 0	// _45,
	ble	.L11		//,
// eval/problem106//code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	ldrsw	x0, [sp, 60]	// _46, i
	lsl	x0, x0, 2	// _47, _46,
	ldr	x1, [sp, 40]	// tmp196, arr
	add	x0, x1, x0	// _48, tmp196, _47
	ldr	w0, [x0]	// _49, *_48
// eval/problem106//code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	cmp	w0, 9	// _49,
	bgt	.L11		//,
// eval/problem106//code.c:30:             (*out)[j++] = names[arr[i]];
	ldrsw	x0, [sp, 60]	// _50, i
	lsl	x0, x0, 2	// _51, _50,
	ldr	x1, [sp, 40]	// tmp197, arr
	add	x0, x1, x0	// _52, tmp197, _51
	ldr	w3, [x0]	// _53, *_52
// eval/problem106//code.c:30:             (*out)[j++] = names[arr[i]];
	ldr	x0, [sp, 24]	// tmp198, out
	ldr	x1, [x0]	// _54, *out_82(D)
// eval/problem106//code.c:30:             (*out)[j++] = names[arr[i]];
	ldr	w0, [sp, 64]	// j.0_55, j
	add	w2, w0, 1	// tmp199, j.0_55,
	str	w2, [sp, 64]	// tmp199, j
	sxtw	x0, w0	// _56, j.0_55
// eval/problem106//code.c:30:             (*out)[j++] = names[arr[i]];
	lsl	x0, x0, 3	// _57, _56,
	add	x0, x1, x0	// _58, _54, _57
// eval/problem106//code.c:30:             (*out)[j++] = names[arr[i]];
	sxtw	x1, w3	// tmp200, _53
	lsl	x1, x1, 3	// tmp201, tmp200,
	add	x2, sp, 72	// tmp202,,
	ldr	x1, [x2, x1]	// _59, names[_53]
// eval/problem106//code.c:30:             (*out)[j++] = names[arr[i]];
	str	x1, [x0]	// _59, *_58
.L11:
// eval/problem106//code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	ldr	w0, [sp, 60]	// tmp204, i
	sub	w0, w0, #1	// tmp203, tmp204,
	str	w0, [sp, 60]	// tmp203, i
.L10:
// eval/problem106//code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	ldr	w0, [sp, 60]	// tmp205, i
	cmp	w0, 0	// tmp205,
	blt	.L15		//,
// eval/problem106//code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	ldr	x0, [sp, 16]	// tmp206, out_size
	ldr	w0, [x0]	// _60, *out_size_78(D)
// eval/problem106//code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	ldr	w1, [sp, 64]	// tmp207, j
	cmp	w1, w0	// tmp207, _60
	blt	.L13		//,
.L15:
// eval/problem106//code.c:33: }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp209,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp208, tmp209,
	ldr	x2, [sp, 152]	// tmp211, D.4995
	ldr	x1, [x0]	// tmp212,
	subs	x2, x2, x1	// tmp211, tmp212
	mov	x1, 0	// tmp212
	beq	.L14		//,
	bl	__stack_chk_fail		//
.L14:
	ldp	x29, x30, [sp], 160	//,,,
	.cfi_restore 30
	.cfi_restore 29
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
