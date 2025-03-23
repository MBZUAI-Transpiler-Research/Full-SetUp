	.arch armv8-a
	.file	"problem101.c"
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
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	w0, [sp, 28]	// n, n
// problem101.c:5:     int* out = (int*)malloc(n * sizeof(int));
	ldrsw	x0, [sp, 28]	// _1, n
	lsl	x0, x0, 2	// _2, _1,
	bl	malloc		//
	str	x0, [sp, 40]	// tmp105, out
// problem101.c:6:     *out = n;
	ldr	x0, [sp, 40]	// tmp106, out
	ldr	w1, [sp, 28]	// tmp107, n
	str	w1, [x0]	// tmp107, *out_17
// problem101.c:7:     for (int i = 1; i < n; i++)
	mov	w0, 1	// tmp108,
	str	w0, [sp, 36]	// tmp108, i
// problem101.c:7:     for (int i = 1; i < n; i++)
	b	.L2		//
.L3:
// problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	ldrsw	x0, [sp, 36]	// _3, i
	lsl	x0, x0, 2	// _4, _3,
// problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	sub	x0, x0, #4	// _5, _4,
	ldr	x1, [sp, 40]	// tmp109, out
	add	x0, x1, x0	// _6, tmp109, _5
// problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	ldr	w1, [x0]	// _7, *_6
// problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	ldrsw	x0, [sp, 36]	// _8, i
	lsl	x0, x0, 2	// _9, _8,
	ldr	x2, [sp, 40]	// tmp110, out
	add	x0, x2, x0	// _10, tmp110, _9
// problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	add	w1, w1, 2	// _11, _7,
// problem101.c:8:         *(out + i) = *(out + i - 1) + 2;
	str	w1, [x0]	// _11, *_10
// problem101.c:7:     for (int i = 1; i < n; i++)
	ldr	w0, [sp, 36]	// tmp112, i
	add	w0, w0, 1	// tmp111, tmp112,
	str	w0, [sp, 36]	// tmp111, i
.L2:
// problem101.c:7:     for (int i = 1; i < n; i++)
	ldr	w1, [sp, 36]	// tmp113, i
	ldr	w0, [sp, 28]	// tmp114, n
	cmp	w1, w0	// tmp113, tmp114
	blt	.L3		//,
// problem101.c:9:     return out;
	ldr	x0, [sp, 40]	// _20, out
// problem101.c:10: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"problem101.c"
	.align	3
.LC5:
	.string	"result[i] == test1[i]"
	.align	3
.LC6:
	.string	"result[i] == test2[i]"
	.align	3
.LC7:
	.string	"result[i] == test3[i]"
	.align	3
.LC8:
	.string	"result[i] == test4[i]"
	.align	3
.LC9:
	.string	"result[i] == test5[i]"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #176	//,,
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, 160]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 160	//,,
// problem101.c:18: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp119,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp119,
	ldr	x1, [x0]	// tmp200,
	str	x1, [sp, 152]	// tmp200, D.5437
	mov	x1, 0	// tmp200
// problem101.c:20:     int test1[] = {3, 5, 7};
	adrp	x0, .LC0	// tmp121,
	add	x1, x0, :lo12:.LC0	// tmp120, tmp121,
	add	x0, sp, 40	// tmp122,,
	ldr	x2, [x1]	// tmp124,
	str	x2, [x0]	// tmp124, test1
	ldr	w1, [x1, 8]	// tmp125,
	str	w1, [x0, 8]	// tmp125, test1
// problem101.c:21:     int test2[] = {4, 6, 8, 10};
	mov	w0, 4	// tmp126,
	str	w0, [sp, 56]	// tmp126, test2[0]
	mov	w0, 6	// tmp127,
	str	w0, [sp, 60]	// tmp127, test2[1]
	mov	w0, 8	// tmp128,
	str	w0, [sp, 64]	// tmp128, test2[2]
	mov	w0, 10	// tmp129,
	str	w0, [sp, 68]	// tmp129, test2[3]
// problem101.c:22:     int test3[] = {5, 7, 9, 11, 13};
	adrp	x0, .LC1	// tmp131,
	add	x0, x0, :lo12:.LC1	// tmp130, tmp131,
	add	x2, sp, 72	// tmp132,,
	mov	x3, x0	// tmp133, tmp130
	ldp	x0, x1, [x3]	// tmp134,
	stp	x0, x1, [x2]	// tmp134, test3
	ldr	w0, [x3, 16]	// tmp135,
	str	w0, [x2, 16]	// tmp135, test3
// problem101.c:23:     int test4[] = {6, 8, 10, 12, 14, 16};
	adrp	x0, .LC2	// tmp137,
	add	x0, x0, :lo12:.LC2	// tmp136, tmp137,
	add	x2, sp, 96	// tmp138,,
	mov	x3, x0	// tmp139, tmp136
	ldp	x0, x1, [x3]	// tmp140,
	stp	x0, x1, [x2]	// tmp140, test4
	ldr	x0, [x3, 16]	// tmp141,
	str	x0, [x2, 16]	// tmp141, test4
// problem101.c:24:     int test5[] = {8, 10, 12, 14, 16, 18, 20, 22};
	adrp	x0, .LC3	// tmp143,
	add	x1, x0, :lo12:.LC3	// tmp142, tmp143,
	add	x0, sp, 120	// tmp144,,
	ldp	q0, q1, [x1]	// tmp146, tmp147,
	stp	q0, q1, [x0]	// tmp146, tmp147, test5
// problem101.c:26:     result = func0(3);
	mov	w0, 3	//,
	bl	func0		//
	str	x0, [sp, 32]	//, result
// problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	str	wzr, [sp, 12]	//, i
// problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	b	.L6		//
.L8:
// problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	ldrsw	x0, [sp, 12]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 32]	// tmp148, result
	add	x0, x1, x0	// _3, tmp148, _2
	ldr	w1, [x0]	// _4, *_3
	ldrsw	x0, [sp, 12]	// tmp149, i
	lsl	x0, x0, 2	// tmp150, tmp149,
	add	x2, sp, 40	// tmp151,,
	ldr	w0, [x2, x0]	// _5, test1[i_26]
	cmp	w1, w0	// _4, _5
	beq	.L7		//,
// problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp152,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp152,
	mov	w2, 27	//,
	adrp	x0, .LC4	// tmp153,
	add	x1, x0, :lo12:.LC4	//, tmp153,
	adrp	x0, .LC5	// tmp154,
	add	x0, x0, :lo12:.LC5	//, tmp154,
	bl	__assert_fail		//
.L7:
// problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	ldr	w0, [sp, 12]	// tmp156, i
	add	w0, w0, 1	// tmp155, tmp156,
	str	w0, [sp, 12]	// tmp155, i
.L6:
// problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	ldr	w0, [sp, 12]	// tmp157, i
	cmp	w0, 2	// tmp157,
	ble	.L8		//,
// problem101.c:28:     free(result);
	ldr	x0, [sp, 32]	//, result
	bl	free		//
// problem101.c:30:     result = func0(4);
	mov	w0, 4	//,
	bl	func0		//
	str	x0, [sp, 32]	//, result
// problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	str	wzr, [sp, 16]	//, i
// problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	b	.L9		//
.L11:
// problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	ldrsw	x0, [sp, 16]	// _6, i
	lsl	x0, x0, 2	// _7, _6,
	ldr	x1, [sp, 32]	// tmp158, result
	add	x0, x1, x0	// _8, tmp158, _7
	ldr	w1, [x0]	// _9, *_8
	ldrsw	x0, [sp, 16]	// tmp159, i
	lsl	x0, x0, 2	// tmp160, tmp159,
	add	x2, sp, 56	// tmp161,,
	ldr	w0, [x2, x0]	// _10, test2[i_27]
	cmp	w1, w0	// _9, _10
	beq	.L10		//,
// problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp162,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp162,
	mov	w2, 31	//,
	adrp	x0, .LC4	// tmp163,
	add	x1, x0, :lo12:.LC4	//, tmp163,
	adrp	x0, .LC6	// tmp164,
	add	x0, x0, :lo12:.LC6	//, tmp164,
	bl	__assert_fail		//
.L10:
// problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	ldr	w0, [sp, 16]	// tmp166, i
	add	w0, w0, 1	// tmp165, tmp166,
	str	w0, [sp, 16]	// tmp165, i
.L9:
// problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	ldr	w0, [sp, 16]	// tmp167, i
	cmp	w0, 3	// tmp167,
	ble	.L11		//,
// problem101.c:32:     free(result);
	ldr	x0, [sp, 32]	//, result
	bl	free		//
// problem101.c:34:     result = func0(5);
	mov	w0, 5	//,
	bl	func0		//
	str	x0, [sp, 32]	//, result
// problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	str	wzr, [sp, 20]	//, i
// problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	b	.L12		//
.L14:
// problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	ldrsw	x0, [sp, 20]	// _11, i
	lsl	x0, x0, 2	// _12, _11,
	ldr	x1, [sp, 32]	// tmp168, result
	add	x0, x1, x0	// _13, tmp168, _12
	ldr	w1, [x0]	// _14, *_13
	ldrsw	x0, [sp, 20]	// tmp169, i
	lsl	x0, x0, 2	// tmp170, tmp169,
	add	x2, sp, 72	// tmp171,,
	ldr	w0, [x2, x0]	// _15, test3[i_28]
	cmp	w1, w0	// _14, _15
	beq	.L13		//,
// problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp172,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp172,
	mov	w2, 35	//,
	adrp	x0, .LC4	// tmp173,
	add	x1, x0, :lo12:.LC4	//, tmp173,
	adrp	x0, .LC7	// tmp174,
	add	x0, x0, :lo12:.LC7	//, tmp174,
	bl	__assert_fail		//
.L13:
// problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	ldr	w0, [sp, 20]	// tmp176, i
	add	w0, w0, 1	// tmp175, tmp176,
	str	w0, [sp, 20]	// tmp175, i
.L12:
// problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	ldr	w0, [sp, 20]	// tmp177, i
	cmp	w0, 4	// tmp177,
	ble	.L14		//,
// problem101.c:36:     free(result);
	ldr	x0, [sp, 32]	//, result
	bl	free		//
// problem101.c:38:     result = func0(6);
	mov	w0, 6	//,
	bl	func0		//
	str	x0, [sp, 32]	//, result
// problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	str	wzr, [sp, 24]	//, i
// problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	b	.L15		//
.L17:
// problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	ldrsw	x0, [sp, 24]	// _16, i
	lsl	x0, x0, 2	// _17, _16,
	ldr	x1, [sp, 32]	// tmp178, result
	add	x0, x1, x0	// _18, tmp178, _17
	ldr	w1, [x0]	// _19, *_18
	ldrsw	x0, [sp, 24]	// tmp179, i
	lsl	x0, x0, 2	// tmp180, tmp179,
	add	x2, sp, 96	// tmp181,,
	ldr	w0, [x2, x0]	// _20, test4[i_29]
	cmp	w1, w0	// _19, _20
	beq	.L16		//,
// problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp182,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp182,
	mov	w2, 39	//,
	adrp	x0, .LC4	// tmp183,
	add	x1, x0, :lo12:.LC4	//, tmp183,
	adrp	x0, .LC8	// tmp184,
	add	x0, x0, :lo12:.LC8	//, tmp184,
	bl	__assert_fail		//
.L16:
// problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	ldr	w0, [sp, 24]	// tmp186, i
	add	w0, w0, 1	// tmp185, tmp186,
	str	w0, [sp, 24]	// tmp185, i
.L15:
// problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	ldr	w0, [sp, 24]	// tmp187, i
	cmp	w0, 5	// tmp187,
	ble	.L17		//,
// problem101.c:40:     free(result);
	ldr	x0, [sp, 32]	//, result
	bl	free		//
// problem101.c:42:     result = func0(8);
	mov	w0, 8	//,
	bl	func0		//
	str	x0, [sp, 32]	//, result
// problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	str	wzr, [sp, 28]	//, i
// problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	b	.L18		//
.L20:
// problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	ldrsw	x0, [sp, 28]	// _21, i
	lsl	x0, x0, 2	// _22, _21,
	ldr	x1, [sp, 32]	// tmp188, result
	add	x0, x1, x0	// _23, tmp188, _22
	ldr	w1, [x0]	// _24, *_23
	ldrsw	x0, [sp, 28]	// tmp189, i
	lsl	x0, x0, 2	// tmp190, tmp189,
	add	x2, sp, 120	// tmp191,,
	ldr	w0, [x2, x0]	// _25, test5[i_30]
	cmp	w1, w0	// _24, _25
	beq	.L19		//,
// problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp192,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp192,
	mov	w2, 43	//,
	adrp	x0, .LC4	// tmp193,
	add	x1, x0, :lo12:.LC4	//, tmp193,
	adrp	x0, .LC9	// tmp194,
	add	x0, x0, :lo12:.LC9	//, tmp194,
	bl	__assert_fail		//
.L19:
// problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	ldr	w0, [sp, 28]	// tmp196, i
	add	w0, w0, 1	// tmp195, tmp196,
	str	w0, [sp, 28]	// tmp195, i
.L18:
// problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	ldr	w0, [sp, 28]	// tmp197, i
	cmp	w0, 7	// tmp197,
	ble	.L20		//,
// problem101.c:44:     free(result);
	ldr	x0, [sp, 32]	//, result
	bl	free		//
// problem101.c:46:     return 0;
	mov	w0, 0	// _60,
// problem101.c:47: }
	mov	w1, w0	// <retval>, _60
	adrp	x0, :got:__stack_chk_guard	// tmp199,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp199,
	ldr	x3, [sp, 152]	// tmp201, D.5437
	ldr	x2, [x0]	// tmp202,
	subs	x3, x3, x2	// tmp201, tmp202
	mov	x2, 0	// tmp202
	beq	.L22		//,
	bl	__stack_chk_fail		//
.L22:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 160]	//,,
	add	sp, sp, 176	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	3
	.word	5
	.word	7
	.align	3
.LC1:
	.word	5
	.word	7
	.word	9
	.word	11
	.word	13
	.align	3
.LC2:
	.word	6
	.word	8
	.word	10
	.word	12
	.word	14
	.word	16
	.align	3
.LC3:
	.word	8
	.word	10
	.word	12
	.word	14
	.word	16
	.word	18
	.word	20
	.word	22
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
