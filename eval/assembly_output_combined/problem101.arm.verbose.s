	.arch armv8-a
	.file	"problem101.c"
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
	stp	x29, x30, [sp, -176]!	//,,,
	.cfi_def_cfa_offset 176
	.cfi_offset 29, -176
	.cfi_offset 30, -168
	mov	x29, sp	//,
// problem101.c:18: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp120,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp119, tmp120,
	ldr	x1, [x0]	// tmp202,
	str	x1, [sp, 168]	// tmp202, D.4848
	mov	x1, 0	// tmp202
// problem101.c:20:     int test1[] = {3, 5, 7};
	adrp	x0, .LC0	// tmp122,
	add	x1, x0, :lo12:.LC0	// tmp121, tmp122,
	add	x0, sp, 56	// tmp123,,
	ldr	x2, [x1]	// tmp125,
	str	x2, [x0]	// tmp125, test1
	ldr	w1, [x1, 8]	// tmp126,
	str	w1, [x0, 8]	// tmp126, test1
// problem101.c:21:     int test2[] = {4, 6, 8, 10};
	mov	w0, 4	// tmp127,
	str	w0, [sp, 72]	// tmp127, test2[0]
	mov	w0, 6	// tmp128,
	str	w0, [sp, 76]	// tmp128, test2[1]
	mov	w0, 8	// tmp129,
	str	w0, [sp, 80]	// tmp129, test2[2]
	mov	w0, 10	// tmp130,
	str	w0, [sp, 84]	// tmp130, test2[3]
// problem101.c:22:     int test3[] = {5, 7, 9, 11, 13};
	adrp	x0, .LC1	// tmp132,
	add	x0, x0, :lo12:.LC1	// tmp131, tmp132,
	add	x2, sp, 88	// tmp133,,
	mov	x3, x0	// tmp134, tmp131
	ldp	x0, x1, [x3]	// tmp135,
	stp	x0, x1, [x2]	// tmp135, test3
	ldr	w0, [x3, 16]	// tmp136,
	str	w0, [x2, 16]	// tmp136, test3
// problem101.c:23:     int test4[] = {6, 8, 10, 12, 14, 16};
	adrp	x0, .LC2	// tmp138,
	add	x0, x0, :lo12:.LC2	// tmp137, tmp138,
	add	x2, sp, 112	// tmp139,,
	mov	x3, x0	// tmp140, tmp137
	ldp	x0, x1, [x3]	// tmp141,
	stp	x0, x1, [x2]	// tmp141, test4
	ldr	x0, [x3, 16]	// tmp142,
	str	x0, [x2, 16]	// tmp142, test4
// problem101.c:24:     int test5[] = {8, 10, 12, 14, 16, 18, 20, 22};
	adrp	x0, .LC3	// tmp144,
	add	x1, x0, :lo12:.LC3	// tmp143, tmp144,
	add	x0, sp, 136	// tmp145,,
	ldp	q0, q1, [x1]	// tmp147, tmp148,
	stp	q0, q1, [x0]	// tmp147, tmp148, test5
// problem101.c:26:     result = func0(3);
	mov	w0, 3	//,
	bl	func0		//
	str	x0, [sp, 48]	//, result
// problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	str	wzr, [sp, 28]	//, i
// problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	b	.L6		//
.L8:
// problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 48]	// tmp149, result
	add	x0, x1, x0	// _3, tmp149, _2
	ldr	w1, [x0]	// _4, *_3
	ldrsw	x0, [sp, 28]	// tmp150, i
	lsl	x0, x0, 2	// tmp151, tmp150,
	add	x2, sp, 56	// tmp152,,
	ldr	w0, [x2, x0]	// _5, test1[i_26]
	cmp	w1, w0	// _4, _5
	beq	.L7		//,
// problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp153,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp153,
	mov	w2, 27	//,
	adrp	x0, .LC4	// tmp154,
	add	x1, x0, :lo12:.LC4	//, tmp154,
	adrp	x0, .LC5	// tmp155,
	add	x0, x0, :lo12:.LC5	//, tmp155,
	bl	__assert_fail		//
.L7:
// problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	ldr	w0, [sp, 28]	// tmp157, i
	add	w0, w0, 1	// tmp156, tmp157,
	str	w0, [sp, 28]	// tmp156, i
.L6:
// problem101.c:27:     for (int i = 0; i < 3; i++) assert(result[i] == test1[i]);
	ldr	w0, [sp, 28]	// tmp158, i
	cmp	w0, 2	// tmp158,
	ble	.L8		//,
// problem101.c:28:     free(result);
	ldr	x0, [sp, 48]	//, result
	bl	free		//
// problem101.c:30:     result = func0(4);
	mov	w0, 4	//,
	bl	func0		//
	str	x0, [sp, 48]	//, result
// problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	str	wzr, [sp, 32]	//, i
// problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	b	.L9		//
.L11:
// problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	ldrsw	x0, [sp, 32]	// _6, i
	lsl	x0, x0, 2	// _7, _6,
	ldr	x1, [sp, 48]	// tmp159, result
	add	x0, x1, x0	// _8, tmp159, _7
	ldr	w1, [x0]	// _9, *_8
	ldrsw	x0, [sp, 32]	// tmp160, i
	lsl	x0, x0, 2	// tmp161, tmp160,
	add	x2, sp, 72	// tmp162,,
	ldr	w0, [x2, x0]	// _10, test2[i_27]
	cmp	w1, w0	// _9, _10
	beq	.L10		//,
// problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp163,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp163,
	mov	w2, 31	//,
	adrp	x0, .LC4	// tmp164,
	add	x1, x0, :lo12:.LC4	//, tmp164,
	adrp	x0, .LC6	// tmp165,
	add	x0, x0, :lo12:.LC6	//, tmp165,
	bl	__assert_fail		//
.L10:
// problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	ldr	w0, [sp, 32]	// tmp167, i
	add	w0, w0, 1	// tmp166, tmp167,
	str	w0, [sp, 32]	// tmp166, i
.L9:
// problem101.c:31:     for (int i = 0; i < 4; i++) assert(result[i] == test2[i]);
	ldr	w0, [sp, 32]	// tmp168, i
	cmp	w0, 3	// tmp168,
	ble	.L11		//,
// problem101.c:32:     free(result);
	ldr	x0, [sp, 48]	//, result
	bl	free		//
// problem101.c:34:     result = func0(5);
	mov	w0, 5	//,
	bl	func0		//
	str	x0, [sp, 48]	//, result
// problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	str	wzr, [sp, 36]	//, i
// problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	b	.L12		//
.L14:
// problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	ldrsw	x0, [sp, 36]	// _11, i
	lsl	x0, x0, 2	// _12, _11,
	ldr	x1, [sp, 48]	// tmp169, result
	add	x0, x1, x0	// _13, tmp169, _12
	ldr	w1, [x0]	// _14, *_13
	ldrsw	x0, [sp, 36]	// tmp170, i
	lsl	x0, x0, 2	// tmp171, tmp170,
	add	x2, sp, 88	// tmp172,,
	ldr	w0, [x2, x0]	// _15, test3[i_28]
	cmp	w1, w0	// _14, _15
	beq	.L13		//,
// problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp173,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp173,
	mov	w2, 35	//,
	adrp	x0, .LC4	// tmp174,
	add	x1, x0, :lo12:.LC4	//, tmp174,
	adrp	x0, .LC7	// tmp175,
	add	x0, x0, :lo12:.LC7	//, tmp175,
	bl	__assert_fail		//
.L13:
// problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	ldr	w0, [sp, 36]	// tmp177, i
	add	w0, w0, 1	// tmp176, tmp177,
	str	w0, [sp, 36]	// tmp176, i
.L12:
// problem101.c:35:     for (int i = 0; i < 5; i++) assert(result[i] == test3[i]);
	ldr	w0, [sp, 36]	// tmp178, i
	cmp	w0, 4	// tmp178,
	ble	.L14		//,
// problem101.c:36:     free(result);
	ldr	x0, [sp, 48]	//, result
	bl	free		//
// problem101.c:38:     result = func0(6);
	mov	w0, 6	//,
	bl	func0		//
	str	x0, [sp, 48]	//, result
// problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	str	wzr, [sp, 40]	//, i
// problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	b	.L15		//
.L17:
// problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	ldrsw	x0, [sp, 40]	// _16, i
	lsl	x0, x0, 2	// _17, _16,
	ldr	x1, [sp, 48]	// tmp179, result
	add	x0, x1, x0	// _18, tmp179, _17
	ldr	w1, [x0]	// _19, *_18
	ldrsw	x0, [sp, 40]	// tmp180, i
	lsl	x0, x0, 2	// tmp181, tmp180,
	add	x2, sp, 112	// tmp182,,
	ldr	w0, [x2, x0]	// _20, test4[i_29]
	cmp	w1, w0	// _19, _20
	beq	.L16		//,
// problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp183,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp183,
	mov	w2, 39	//,
	adrp	x0, .LC4	// tmp184,
	add	x1, x0, :lo12:.LC4	//, tmp184,
	adrp	x0, .LC8	// tmp185,
	add	x0, x0, :lo12:.LC8	//, tmp185,
	bl	__assert_fail		//
.L16:
// problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	ldr	w0, [sp, 40]	// tmp187, i
	add	w0, w0, 1	// tmp186, tmp187,
	str	w0, [sp, 40]	// tmp186, i
.L15:
// problem101.c:39:     for (int i = 0; i < 6; i++) assert(result[i] == test4[i]);
	ldr	w0, [sp, 40]	// tmp188, i
	cmp	w0, 5	// tmp188,
	ble	.L17		//,
// problem101.c:40:     free(result);
	ldr	x0, [sp, 48]	//, result
	bl	free		//
// problem101.c:42:     result = func0(8);
	mov	w0, 8	//,
	bl	func0		//
	str	x0, [sp, 48]	//, result
// problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	str	wzr, [sp, 44]	//, i
// problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	b	.L18		//
.L20:
// problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	ldrsw	x0, [sp, 44]	// _21, i
	lsl	x0, x0, 2	// _22, _21,
	ldr	x1, [sp, 48]	// tmp189, result
	add	x0, x1, x0	// _23, tmp189, _22
	ldr	w1, [x0]	// _24, *_23
	ldrsw	x0, [sp, 44]	// tmp190, i
	lsl	x0, x0, 2	// tmp191, tmp190,
	add	x2, sp, 136	// tmp192,,
	ldr	w0, [x2, x0]	// _25, test5[i_30]
	cmp	w1, w0	// _24, _25
	beq	.L19		//,
// problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp193,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp193,
	mov	w2, 43	//,
	adrp	x0, .LC4	// tmp194,
	add	x1, x0, :lo12:.LC4	//, tmp194,
	adrp	x0, .LC9	// tmp195,
	add	x0, x0, :lo12:.LC9	//, tmp195,
	bl	__assert_fail		//
.L19:
// problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	ldr	w0, [sp, 44]	// tmp197, i
	add	w0, w0, 1	// tmp196, tmp197,
	str	w0, [sp, 44]	// tmp196, i
.L18:
// problem101.c:43:     for (int i = 0; i < 8; i++) assert(result[i] == test5[i]);
	ldr	w0, [sp, 44]	// tmp198, i
	cmp	w0, 7	// tmp198,
	ble	.L20		//,
// problem101.c:44:     free(result);
	ldr	x0, [sp, 48]	//, result
	bl	free		//
// problem101.c:46:     return 0;
	mov	w0, 0	// _60,
// problem101.c:47: }
	mov	w1, w0	// <retval>, _60
	adrp	x0, :got:__stack_chk_guard	// tmp201,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp200, tmp201,
	ldr	x3, [sp, 168]	// tmp203, D.4848
	ldr	x2, [x0]	// tmp204,
	subs	x3, x3, x2	// tmp203, tmp204
	mov	x2, 0	// tmp204
	beq	.L22		//,
	bl	__stack_chk_fail		//
.L22:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 176	//,,,
	.cfi_restore 30
	.cfi_restore 29
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
