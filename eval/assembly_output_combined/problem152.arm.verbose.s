	.arch armv8-a
	.file	"problem152.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
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
	str	d8, [sp, 24]	//,
	.cfi_offset 19, -48
	.cfi_offset 72, -40
	str	x0, [sp, 40]	// lst, lst
	str	w1, [sp, 36]	// lst_size, lst_size
// problem152.c:5:     long long sum = 0;
	str	xzr, [sp, 56]	//, sum
// problem152.c:6:     for (int i = 0; i < lst_size; i++) {
	str	wzr, [sp, 52]	//, i
// problem152.c:6:     for (int i = 0; i < lst_size; i++) {
	b	.L2		//
.L6:
// problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	ldrsw	x0, [sp, 52]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 40]	// tmp135, lst
	add	x0, x1, x0	// _3, tmp135, _2
	ldr	s0, [x0]	// _4, *_3
	fcvt	d8, s0	// _5, _4
// problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	ldrsw	x0, [sp, 52]	// _6, i
	lsl	x0, x0, 2	// _7, _6,
	ldr	x1, [sp, 40]	// tmp136, lst
	add	x0, x1, x0	// _8, tmp136, _7
	ldr	s0, [x0]	// _9, *_8
// problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fcvt	d0, s0	// _10, _9
	bl	round		//
// problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fsub	d0, d8, d0	// _12, _5, _11
// problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fabs	d0, d0	// _13, _12
// problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	adrp	x0, .LC4	// tmp151,
	ldr	d1, [x0, #:lo12:.LC4]	// tmp137,
	fcmpe	d0, d1	// _13, tmp137
	bmi	.L8		//,
	b	.L3		//
.L8:
// problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	ldrsw	x0, [sp, 52]	// _14, i
	lsl	x0, x0, 2	// _15, _14,
	ldr	x1, [sp, 40]	// tmp138, lst
	add	x0, x1, x0	// _16, tmp138, _15
	ldr	s0, [x0]	// _17, *_16
// problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	fcmpe	s0, #0.0	// _17
	bgt	.L9		//,
	b	.L3		//
.L9:
// problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	ldrsw	x0, [sp, 52]	// _18, i
	lsl	x0, x0, 2	// _19, _18,
	ldr	x1, [sp, 40]	// tmp139, lst
	add	x0, x1, x0	// _20, tmp139, _19
	ldr	s0, [x0]	// _21, *_20
// problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	fcvt	d0, s0	// _22, _21
	bl	round		//
// problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	fcvtzs	w0, d0	// _24, _23
// problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	cmp	w0, 0	// _24,
	and	w0, w0, 1	// tmp140, _24,
	csneg	w0, w0, w0, ge	// _25, tmp140, tmp140,
// problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	cmp	w0, 1	// _25,
	bne	.L3		//,
// problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	ldrsw	x0, [sp, 52]	// _26, i
	lsl	x0, x0, 2	// _27, _26,
	ldr	x1, [sp, 40]	// tmp141, lst
	add	x0, x1, x0	// _28, tmp141, _27
	ldr	s0, [x0]	// _29, *_28
// problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvt	d0, s0	// _30, _29
	bl	round		//
// problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvtzs	w19, d0	// _32, _31
// problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	ldrsw	x0, [sp, 52]	// _33, i
	lsl	x0, x0, 2	// _34, _33,
	ldr	x1, [sp, 40]	// tmp142, lst
	add	x0, x1, x0	// _35, tmp142, _34
	ldr	s0, [x0]	// _36, *_35
// problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvt	d0, s0	// _37, _36
	bl	round		//
// problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvtzs	w0, d0	// _39, _38
// problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	mul	w0, w19, w0	// _40, _32, _39
	sxtw	x0, w0	// _41, _40
// problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	ldr	x1, [sp, 56]	// tmp144, sum
	add	x0, x1, x0	// tmp143, tmp144, _41
	str	x0, [sp, 56]	// tmp143, sum
.L3:
// problem152.c:6:     for (int i = 0; i < lst_size; i++) {
	ldr	w0, [sp, 52]	// tmp146, i
	add	w0, w0, 1	// tmp145, tmp146,
	str	w0, [sp, 52]	// tmp145, i
.L2:
// problem152.c:6:     for (int i = 0; i < lst_size; i++) {
	ldr	w1, [sp, 52]	// tmp147, i
	ldr	w0, [sp, 36]	// tmp148, lst_size
	cmp	w1, w0	// tmp147, tmp148
	blt	.L6		//,
// problem152.c:13:     return sum;
	ldr	x0, [sp, 56]	// _48, sum
// problem152.c:14: }
	ldr	d8, [sp, 24]	//,
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"problem152.c"
	.align	3
.LC6:
	.string	"func0((float[]){}, 0) == 0"
	.align	3
.LC7:
	.string	"func0((float[]){5, 4}, 2) == 25"
	.align	3
.LC8:
	.string	"func0((float[]){0.1, 0.2, 0.3}, 3) == 0"
	.align	3
.LC9:
	.string	"func0((float[]){-10, -20, -30}, 3) == 0"
	.align	3
.LC10:
	.string	"func0((float[]){-1, -2, 8}, 3) == 0"
	.align	3
.LC11:
	.string	"func0((float[]){0.2, 3, 5}, 3) == 34"
	.align	3
.LC12:
	.string	"func0(lst, lst_size) == odd_sum"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	sub	sp, sp, #848	//,,
	.cfi_def_cfa_offset 848
	stp	x29, x30, [sp]	//,,
	.cfi_offset 29, -848
	.cfi_offset 30, -840
	mov	x29, sp	//,
// problem152.c:20: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp108,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp107, tmp108,
	ldr	x1, [x0]	// tmp183,
	str	x1, [sp, 840]	// tmp183, D.5378
	mov	x1, 0	// tmp183
// problem152.c:21:     assert(func0((float[]){}, 0) == 0);
	add	x0, sp, 40	// tmp109,,
	mov	w1, 0	//,
	bl	func0		//
	cmp	x0, 0	// _1,
	beq	.L11		//,
// problem152.c:21:     assert(func0((float[]){}, 0) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp110,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp110,
	mov	w2, 21	//,
	adrp	x0, .LC5	// tmp111,
	add	x1, x0, :lo12:.LC5	//, tmp111,
	adrp	x0, .LC6	// tmp112,
	add	x0, x0, :lo12:.LC6	//, tmp112,
	bl	__assert_fail		//
.L11:
// problem152.c:22:     assert(func0((float[]){5, 4}, 2) == 25);
	fmov	s0, 5.0e+0	// tmp113,
	str	s0, [sp, 40]	// tmp113, MEM[(float[2] *)_63][0]
	fmov	s0, 4.0e+0	// tmp114,
	str	s0, [sp, 44]	// tmp114, MEM[(float[2] *)_63][1]
	add	x0, sp, 40	// tmp115,,
	mov	w1, 2	//,
	bl	func0		//
	cmp	x0, 25	// _2,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 22	//,
	adrp	x0, .LC5	// tmp117,
	add	x1, x0, :lo12:.LC5	//, tmp117,
	adrp	x0, .LC7	// tmp118,
	add	x0, x0, :lo12:.LC7	//, tmp118,
	bl	__assert_fail		//
.L12:
// problem152.c:23:     assert(func0((float[]){0.1, 0.2, 0.3}, 3) == 0);
	adrp	x0, .LC0	// tmp120,
	add	x1, x0, :lo12:.LC0	// tmp119, tmp120,
	add	x0, sp, 40	// tmp121,,
	ldr	x2, [x1]	// tmp123,
	str	x2, [x0]	// tmp123, MEM[(float[3] *)_63]
	ldr	w1, [x1, 8]	// tmp124,
	str	w1, [x0, 8]	// tmp124, MEM[(float[3] *)_63]
	add	x0, sp, 40	// tmp125,,
	mov	w1, 3	//,
	bl	func0		//
	cmp	x0, 0	// _3,
	beq	.L13		//,
// problem152.c:23:     assert(func0((float[]){0.1, 0.2, 0.3}, 3) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp126,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp126,
	mov	w2, 23	//,
	adrp	x0, .LC5	// tmp127,
	add	x1, x0, :lo12:.LC5	//, tmp127,
	adrp	x0, .LC8	// tmp128,
	add	x0, x0, :lo12:.LC8	//, tmp128,
	bl	__assert_fail		//
.L13:
// problem152.c:24:     assert(func0((float[]){-10, -20, -30}, 3) == 0);
	adrp	x0, .LC1	// tmp130,
	add	x1, x0, :lo12:.LC1	// tmp129, tmp130,
	add	x0, sp, 40	// tmp131,,
	ldr	x2, [x1]	// tmp133,
	str	x2, [x0]	// tmp133, MEM[(float[3] *)_63]
	ldr	w1, [x1, 8]	// tmp134,
	str	w1, [x0, 8]	// tmp134, MEM[(float[3] *)_63]
	add	x0, sp, 40	// tmp135,,
	mov	w1, 3	//,
	bl	func0		//
	cmp	x0, 0	// _4,
	beq	.L14		//,
// problem152.c:24:     assert(func0((float[]){-10, -20, -30}, 3) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp136,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp136,
	mov	w2, 24	//,
	adrp	x0, .LC5	// tmp137,
	add	x1, x0, :lo12:.LC5	//, tmp137,
	adrp	x0, .LC9	// tmp138,
	add	x0, x0, :lo12:.LC9	//, tmp138,
	bl	__assert_fail		//
.L14:
// problem152.c:25:     assert(func0((float[]){-1, -2, 8}, 3) == 0);
	adrp	x0, .LC2	// tmp140,
	add	x1, x0, :lo12:.LC2	// tmp139, tmp140,
	add	x0, sp, 40	// tmp141,,
	ldr	x2, [x1]	// tmp143,
	str	x2, [x0]	// tmp143, MEM[(float[3] *)_63]
	ldr	w1, [x1, 8]	// tmp144,
	str	w1, [x0, 8]	// tmp144, MEM[(float[3] *)_63]
	add	x0, sp, 40	// tmp145,,
	mov	w1, 3	//,
	bl	func0		//
	cmp	x0, 0	// _5,
	beq	.L15		//,
// problem152.c:25:     assert(func0((float[]){-1, -2, 8}, 3) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp146,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp146,
	mov	w2, 25	//,
	adrp	x0, .LC5	// tmp147,
	add	x1, x0, :lo12:.LC5	//, tmp147,
	adrp	x0, .LC10	// tmp148,
	add	x0, x0, :lo12:.LC10	//, tmp148,
	bl	__assert_fail		//
.L15:
// problem152.c:26:     assert(func0((float[]){0.2, 3, 5}, 3) == 34);
	adrp	x0, .LC3	// tmp150,
	add	x1, x0, :lo12:.LC3	// tmp149, tmp150,
	add	x0, sp, 40	// tmp151,,
	ldr	x2, [x1]	// tmp153,
	str	x2, [x0]	// tmp153, MEM[(float[3] *)_63]
	ldr	w1, [x1, 8]	// tmp154,
	str	w1, [x0, 8]	// tmp154, MEM[(float[3] *)_63]
	add	x0, sp, 40	// tmp155,,
	mov	w1, 3	//,
	bl	func0		//
	cmp	x0, 34	// _6,
	beq	.L16		//,
// problem152.c:26:     assert(func0((float[]){0.2, 3, 5}, 3) == 34);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp156,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp156,
	mov	w2, 26	//,
	adrp	x0, .LC5	// tmp157,
	add	x1, x0, :lo12:.LC5	//, tmp157,
	adrp	x0, .LC11	// tmp158,
	add	x0, x0, :lo12:.LC11	//, tmp158,
	bl	__assert_fail		//
.L16:
// problem152.c:28:     long long odd_sum = 0;
	str	xzr, [sp, 32]	//, odd_sum
// problem152.c:30:     int lst_size = 0;
	str	wzr, [sp, 24]	//, lst_size
// problem152.c:32:     for (int i = -99; i < 100; i += 2) {
	mov	w0, -99	// tmp159,
	str	w0, [sp, 28]	// tmp159, i
// problem152.c:32:     for (int i = -99; i < 100; i += 2) {
	b	.L17		//
.L19:
// problem152.c:33:         lst[lst_size++] = i + 0.0f;
	ldr	s0, [sp, 28]	// tmp160, i
	scvtf	s0, s0	// _7, tmp160
// problem152.c:33:         lst[lst_size++] = i + 0.0f;
	ldr	w0, [sp, 24]	// lst_size.0_8, lst_size
	add	w1, w0, 1	// tmp161, lst_size.0_8,
	str	w1, [sp, 24]	// tmp161, lst_size
// problem152.c:33:         lst[lst_size++] = i + 0.0f;
	movi	v1.2s, #0	// tmp162
	fadd	s0, s0, s1	// _9, _7, tmp162
// problem152.c:33:         lst[lst_size++] = i + 0.0f;
	sxtw	x0, w0	// tmp163, lst_size.0_8
	lsl	x0, x0, 2	// tmp164, tmp163,
	add	x1, sp, 40	// tmp165,,
	str	s0, [x1, x0]	// _9, MEM[(float[200] *)_63][lst_size.0_8]
// problem152.c:34:         if (i > 0 && i % 2 == 1) odd_sum += i * i;
	ldr	w0, [sp, 28]	// tmp166, i
	cmp	w0, 0	// tmp166,
	ble	.L18		//,
// problem152.c:34:         if (i > 0 && i % 2 == 1) odd_sum += i * i;
	ldr	w0, [sp, 28]	// tmp167, i
	cmp	w0, 0	// tmp167,
	and	w0, w0, 1	// tmp168, tmp167,
	csneg	w0, w0, w0, ge	// _10, tmp168, tmp168,
// problem152.c:34:         if (i > 0 && i % 2 == 1) odd_sum += i * i;
	cmp	w0, 1	// _10,
	bne	.L18		//,
// problem152.c:34:         if (i > 0 && i % 2 == 1) odd_sum += i * i;
	ldr	w0, [sp, 28]	// tmp169, i
	mul	w0, w0, w0	// _11, tmp169, tmp169
	sxtw	x0, w0	// _12, _11
// problem152.c:34:         if (i > 0 && i % 2 == 1) odd_sum += i * i;
	ldr	x1, [sp, 32]	// tmp171, odd_sum
	add	x0, x1, x0	// tmp170, tmp171, _12
	str	x0, [sp, 32]	// tmp170, odd_sum
.L18:
// problem152.c:32:     for (int i = -99; i < 100; i += 2) {
	ldr	w0, [sp, 28]	// tmp173, i
	add	w0, w0, 2	// tmp172, tmp173,
	str	w0, [sp, 28]	// tmp172, i
.L17:
// problem152.c:32:     for (int i = -99; i < 100; i += 2) {
	ldr	w0, [sp, 28]	// tmp174, i
	cmp	w0, 99	// tmp174,
	ble	.L19		//,
// problem152.c:37:     assert(func0(lst, lst_size) == odd_sum);
	add	x0, sp, 40	// tmp175,,
	ldr	w1, [sp, 24]	//, lst_size
	bl	func0		//
	mov	x1, x0	// _13,
	ldr	x0, [sp, 32]	// tmp176, odd_sum
	cmp	x0, x1	// tmp176, _13
	beq	.L20		//,
// problem152.c:37:     assert(func0(lst, lst_size) == odd_sum);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp177,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp177,
	mov	w2, 37	//,
	adrp	x0, .LC5	// tmp178,
	add	x1, x0, :lo12:.LC5	//, tmp178,
	adrp	x0, .LC12	// tmp179,
	add	x0, x0, :lo12:.LC12	//, tmp179,
	bl	__assert_fail		//
.L20:
// problem152.c:39:     return 0;
	mov	w0, 0	// _50,
// problem152.c:40: }
	mov	w1, w0	// <retval>, _50
	adrp	x0, :got:__stack_chk_guard	// tmp182,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp181, tmp182,
	ldr	x3, [sp, 840]	// tmp184, D.5378
	ldr	x2, [x0]	// tmp185,
	subs	x3, x3, x2	// tmp184, tmp185
	mov	x2, 0	// tmp185
	beq	.L22		//,
	bl	__stack_chk_fail		//
.L22:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp]	//,,
	add	sp, sp, 848	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	1036831949
	.word	1045220557
	.word	1050253722
	.align	3
.LC1:
	.word	-1054867456
	.word	-1046478848
	.word	-1041235968
	.align	3
.LC2:
	.word	-1082130432
	.word	-1073741824
	.word	1090519040
	.align	3
.LC3:
	.word	1045220557
	.word	1077936128
	.word	1084227584
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC4:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
