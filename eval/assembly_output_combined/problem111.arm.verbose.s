	.arch armv8-a
	.file	"problem111.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC5:
	.string	"YES"
	.align	3
.LC6:
	.string	"NO"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// lst1, lst1
	str	w1, [sp, 20]	// size1, size1
	str	x2, [sp, 8]	// lst2, lst2
	str	w3, [sp, 16]	// size2, size2
// problem111.c:4:     int num = 0;
	str	wzr, [sp, 36]	//, num
// problem111.c:5:     for (int i = 0; i < size1; i++)
	str	wzr, [sp, 40]	//, i
// problem111.c:5:     for (int i = 0; i < size1; i++)
	b	.L2		//
.L4:
// problem111.c:6:         if (lst1[i] % 2 == 0) num += 1;
	ldrsw	x0, [sp, 40]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp106, lst1
	add	x0, x1, x0	// _3, tmp106, _2
	ldr	w0, [x0]	// _4, *_3
// problem111.c:6:         if (lst1[i] % 2 == 0) num += 1;
	and	w0, w0, 1	// _6, _5,
// problem111.c:6:         if (lst1[i] % 2 == 0) num += 1;
	cmp	w0, 0	// _6,
	bne	.L3		//,
// problem111.c:6:         if (lst1[i] % 2 == 0) num += 1;
	ldr	w0, [sp, 36]	// tmp108, num
	add	w0, w0, 1	// tmp107, tmp108,
	str	w0, [sp, 36]	// tmp107, num
.L3:
// problem111.c:5:     for (int i = 0; i < size1; i++)
	ldr	w0, [sp, 40]	// tmp110, i
	add	w0, w0, 1	// tmp109, tmp110,
	str	w0, [sp, 40]	// tmp109, i
.L2:
// problem111.c:5:     for (int i = 0; i < size1; i++)
	ldr	w1, [sp, 40]	// tmp111, i
	ldr	w0, [sp, 20]	// tmp112, size1
	cmp	w1, w0	// tmp111, tmp112
	blt	.L4		//,
// problem111.c:7:     for (int i = 0; i < size2; i++)
	str	wzr, [sp, 44]	//, i
// problem111.c:7:     for (int i = 0; i < size2; i++)
	b	.L5		//
.L7:
// problem111.c:8:         if (lst2[i] % 2 == 0) num += 1;
	ldrsw	x0, [sp, 44]	// _7, i
	lsl	x0, x0, 2	// _8, _7,
	ldr	x1, [sp, 8]	// tmp113, lst2
	add	x0, x1, x0	// _9, tmp113, _8
	ldr	w0, [x0]	// _10, *_9
// problem111.c:8:         if (lst2[i] % 2 == 0) num += 1;
	and	w0, w0, 1	// _12, _11,
// problem111.c:8:         if (lst2[i] % 2 == 0) num += 1;
	cmp	w0, 0	// _12,
	bne	.L6		//,
// problem111.c:8:         if (lst2[i] % 2 == 0) num += 1;
	ldr	w0, [sp, 36]	// tmp115, num
	add	w0, w0, 1	// tmp114, tmp115,
	str	w0, [sp, 36]	// tmp114, num
.L6:
// problem111.c:7:     for (int i = 0; i < size2; i++)
	ldr	w0, [sp, 44]	// tmp117, i
	add	w0, w0, 1	// tmp116, tmp117,
	str	w0, [sp, 44]	// tmp116, i
.L5:
// problem111.c:7:     for (int i = 0; i < size2; i++)
	ldr	w1, [sp, 44]	// tmp118, i
	ldr	w0, [sp, 16]	// tmp119, size2
	cmp	w1, w0	// tmp118, tmp119
	blt	.L7		//,
// problem111.c:9:     if (num >= size1) return "YES";
	ldr	w1, [sp, 36]	// tmp120, num
	ldr	w0, [sp, 20]	// tmp121, size1
	cmp	w1, w0	// tmp120, tmp121
	blt	.L8		//,
// problem111.c:9:     if (num >= size1) return "YES";
	adrp	x0, .LC5	// tmp122,
	add	x0, x0, :lo12:.LC5	// _19, tmp122,
	b	.L9		//
.L8:
// problem111.c:10:     return "NO";
	adrp	x0, .LC6	// tmp123,
	add	x0, x0, :lo12:.LC6	// _19, tmp123,
.L9:
// problem111.c:11: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC7:
	.string	"problem111.c"
	.align	3
.LC8:
	.string	"strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 2, 3, 4}, 4), \"YES\") == 0"
	.align	3
.LC9:
	.string	"strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 5, 3, 4}, 4), \"NO\") == 0"
	.align	3
.LC10:
	.string	"strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){2, 1, 4, 3}, 4), \"YES\") == 0"
	.align	3
.LC11:
	.string	"strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 4}, 3), \"YES\") == 0"
	.align	3
.LC12:
	.string	"strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 3}, 3), \"NO\") == 0"
	.align	3
.LC13:
	.string	"strcmp(func0((int[]){3, 2, 6, 1, 8, 9}, 6, (int[]){3, 5, 5, 1, 1, 1}, 6), \"NO\") == 0"
	.align	3
.LC14:
	.string	"strcmp(func0((int[]){100, 200}, 2, (int[]){200, 200}, 2), \"YES\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
// problem111.c:18: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp109,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp108, tmp109,
	ldr	x1, [x0]	// tmp219,
	str	x1, [sp, 72]	// tmp219, D.4542
	mov	x1, 0	// tmp219
// problem111.c:19:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 2, 3, 4}, 4), "YES") == 0);
	mov	w0, 1	// tmp110,
	str	w0, [sp, 24]	// tmp110, MEM[(int[4] *)_94][0]
	mov	w0, 2	// tmp111,
	str	w0, [sp, 28]	// tmp111, MEM[(int[4] *)_94][1]
	mov	w0, 3	// tmp112,
	str	w0, [sp, 32]	// tmp112, MEM[(int[4] *)_94][2]
	mov	w0, 4	// tmp113,
	str	w0, [sp, 36]	// tmp113, MEM[(int[4] *)_94][3]
	mov	w0, 1	// tmp114,
	str	w0, [sp, 48]	// tmp114, MEM[(int[4] *)_95][0]
	mov	w0, 2	// tmp115,
	str	w0, [sp, 52]	// tmp115, MEM[(int[4] *)_95][1]
	mov	w0, 3	// tmp116,
	str	w0, [sp, 56]	// tmp116, MEM[(int[4] *)_95][2]
	mov	w0, 4	// tmp117,
	str	w0, [sp, 60]	// tmp117, MEM[(int[4] *)_95][3]
	add	x1, sp, 48	// tmp118,,
	add	x0, sp, 24	// tmp119,,
	mov	w3, 4	//,
	mov	x2, x1	//, tmp118
	mov	w1, 4	//,
	bl	func0		//
	mov	x2, x0	// _1,
	adrp	x0, .LC5	// tmp120,
	add	x1, x0, :lo12:.LC5	//, tmp120,
	mov	x0, x2	//, _1
	bl	strcmp		//
	cmp	w0, 0	// _2,
	beq	.L11		//,
// problem111.c:19:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 2, 3, 4}, 4), "YES") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp121,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp121,
	mov	w2, 19	//,
	adrp	x0, .LC7	// tmp122,
	add	x1, x0, :lo12:.LC7	//, tmp122,
	adrp	x0, .LC8	// tmp123,
	add	x0, x0, :lo12:.LC8	//, tmp123,
	bl	__assert_fail		//
.L11:
// problem111.c:20:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 5, 3, 4}, 4), "NO") == 0);
	mov	w0, 1	// tmp124,
	str	w0, [sp, 24]	// tmp124, MEM[(int[4] *)_94][0]
	mov	w0, 2	// tmp125,
	str	w0, [sp, 28]	// tmp125, MEM[(int[4] *)_94][1]
	mov	w0, 3	// tmp126,
	str	w0, [sp, 32]	// tmp126, MEM[(int[4] *)_94][2]
	mov	w0, 4	// tmp127,
	str	w0, [sp, 36]	// tmp127, MEM[(int[4] *)_94][3]
	mov	w0, 1	// tmp128,
	str	w0, [sp, 48]	// tmp128, MEM[(int[4] *)_95][0]
	mov	w0, 5	// tmp129,
	str	w0, [sp, 52]	// tmp129, MEM[(int[4] *)_95][1]
	mov	w0, 3	// tmp130,
	str	w0, [sp, 56]	// tmp130, MEM[(int[4] *)_95][2]
	mov	w0, 4	// tmp131,
	str	w0, [sp, 60]	// tmp131, MEM[(int[4] *)_95][3]
	add	x1, sp, 48	// tmp132,,
	add	x0, sp, 24	// tmp133,,
	mov	w3, 4	//,
	mov	x2, x1	//, tmp132
	mov	w1, 4	//,
	bl	func0		//
	mov	x2, x0	// _3,
	adrp	x0, .LC6	// tmp134,
	add	x1, x0, :lo12:.LC6	//, tmp134,
	mov	x0, x2	//, _3
	bl	strcmp		//
	cmp	w0, 0	// _4,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp135,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp135,
	mov	w2, 20	//,
	adrp	x0, .LC7	// tmp136,
	add	x1, x0, :lo12:.LC7	//, tmp136,
	adrp	x0, .LC9	// tmp137,
	add	x0, x0, :lo12:.LC9	//, tmp137,
	bl	__assert_fail		//
.L12:
// problem111.c:21:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){2, 1, 4, 3}, 4), "YES") == 0);
	mov	w0, 1	// tmp138,
	str	w0, [sp, 24]	// tmp138, MEM[(int[4] *)_94][0]
	mov	w0, 2	// tmp139,
	str	w0, [sp, 28]	// tmp139, MEM[(int[4] *)_94][1]
	mov	w0, 3	// tmp140,
	str	w0, [sp, 32]	// tmp140, MEM[(int[4] *)_94][2]
	mov	w0, 4	// tmp141,
	str	w0, [sp, 36]	// tmp141, MEM[(int[4] *)_94][3]
	mov	w0, 2	// tmp142,
	str	w0, [sp, 48]	// tmp142, MEM[(int[4] *)_95][0]
	mov	w0, 1	// tmp143,
	str	w0, [sp, 52]	// tmp143, MEM[(int[4] *)_95][1]
	mov	w0, 4	// tmp144,
	str	w0, [sp, 56]	// tmp144, MEM[(int[4] *)_95][2]
	mov	w0, 3	// tmp145,
	str	w0, [sp, 60]	// tmp145, MEM[(int[4] *)_95][3]
	add	x1, sp, 48	// tmp146,,
	add	x0, sp, 24	// tmp147,,
	mov	w3, 4	//,
	mov	x2, x1	//, tmp146
	mov	w1, 4	//,
	bl	func0		//
	mov	x2, x0	// _5,
	adrp	x0, .LC5	// tmp148,
	add	x1, x0, :lo12:.LC5	//, tmp148,
	mov	x0, x2	//, _5
	bl	strcmp		//
	cmp	w0, 0	// _6,
	beq	.L13		//,
// problem111.c:21:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){2, 1, 4, 3}, 4), "YES") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp149,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp149,
	mov	w2, 21	//,
	adrp	x0, .LC7	// tmp150,
	add	x1, x0, :lo12:.LC7	//, tmp150,
	adrp	x0, .LC10	// tmp151,
	add	x0, x0, :lo12:.LC10	//, tmp151,
	bl	__assert_fail		//
.L13:
// problem111.c:22:     assert(strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 4}, 3), "YES") == 0);
	adrp	x0, .LC0	// tmp153,
	add	x1, x0, :lo12:.LC0	// tmp152, tmp153,
	add	x0, sp, 24	// tmp154,,
	ldr	x2, [x1]	// tmp156,
	str	x2, [x0]	// tmp156, MEM[(int[3] *)_94]
	ldr	w1, [x1, 8]	// tmp157,
	str	w1, [x0, 8]	// tmp157, MEM[(int[3] *)_94]
	adrp	x0, .LC1	// tmp159,
	add	x1, x0, :lo12:.LC1	// tmp158, tmp159,
	add	x0, sp, 48	// tmp160,,
	ldr	x2, [x1]	// tmp162,
	str	x2, [x0]	// tmp162, MEM[(int[3] *)_95]
	ldr	w1, [x1, 8]	// tmp163,
	str	w1, [x0, 8]	// tmp163, MEM[(int[3] *)_95]
	add	x1, sp, 48	// tmp164,,
	add	x0, sp, 24	// tmp165,,
	mov	w3, 3	//,
	mov	x2, x1	//, tmp164
	mov	w1, 3	//,
	bl	func0		//
	mov	x2, x0	// _7,
	adrp	x0, .LC5	// tmp166,
	add	x1, x0, :lo12:.LC5	//, tmp166,
	mov	x0, x2	//, _7
	bl	strcmp		//
	cmp	w0, 0	// _8,
	beq	.L14		//,
// problem111.c:22:     assert(strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 4}, 3), "YES") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp167,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp167,
	mov	w2, 22	//,
	adrp	x0, .LC7	// tmp168,
	add	x1, x0, :lo12:.LC7	//, tmp168,
	adrp	x0, .LC11	// tmp169,
	add	x0, x0, :lo12:.LC11	//, tmp169,
	bl	__assert_fail		//
.L14:
// problem111.c:23:     assert(strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 3}, 3), "NO") == 0);
	adrp	x0, .LC0	// tmp171,
	add	x1, x0, :lo12:.LC0	// tmp170, tmp171,
	add	x0, sp, 24	// tmp172,,
	ldr	x2, [x1]	// tmp174,
	str	x2, [x0]	// tmp174, MEM[(int[3] *)_94]
	ldr	w1, [x1, 8]	// tmp175,
	str	w1, [x0, 8]	// tmp175, MEM[(int[3] *)_94]
	adrp	x0, .LC2	// tmp177,
	add	x1, x0, :lo12:.LC2	// tmp176, tmp177,
	add	x0, sp, 48	// tmp178,,
	ldr	x2, [x1]	// tmp180,
	str	x2, [x0]	// tmp180, MEM[(int[3] *)_95]
	ldr	w1, [x1, 8]	// tmp181,
	str	w1, [x0, 8]	// tmp181, MEM[(int[3] *)_95]
	add	x1, sp, 48	// tmp182,,
	add	x0, sp, 24	// tmp183,,
	mov	w3, 3	//,
	mov	x2, x1	//, tmp182
	mov	w1, 3	//,
	bl	func0		//
	mov	x2, x0	// _9,
	adrp	x0, .LC6	// tmp184,
	add	x1, x0, :lo12:.LC6	//, tmp184,
	mov	x0, x2	//, _9
	bl	strcmp		//
	cmp	w0, 0	// _10,
	beq	.L15		//,
// problem111.c:23:     assert(strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 3}, 3), "NO") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp185,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp185,
	mov	w2, 23	//,
	adrp	x0, .LC7	// tmp186,
	add	x1, x0, :lo12:.LC7	//, tmp186,
	adrp	x0, .LC12	// tmp187,
	add	x0, x0, :lo12:.LC12	//, tmp187,
	bl	__assert_fail		//
.L15:
// problem111.c:24:     assert(strcmp(func0((int[]){3, 2, 6, 1, 8, 9}, 6, (int[]){3, 5, 5, 1, 1, 1}, 6), "NO") == 0);
	adrp	x0, .LC3	// tmp189,
	add	x0, x0, :lo12:.LC3	// tmp188, tmp189,
	add	x2, sp, 24	// tmp190,,
	mov	x3, x0	// tmp191, tmp188
	ldp	x0, x1, [x3]	// tmp192,
	stp	x0, x1, [x2]	// tmp192, MEM[(int[6] *)_94]
	ldr	x0, [x3, 16]	// tmp193,
	str	x0, [x2, 16]	// tmp193, MEM[(int[6] *)_94]
	adrp	x0, .LC4	// tmp195,
	add	x0, x0, :lo12:.LC4	// tmp194, tmp195,
	add	x2, sp, 48	// tmp196,,
	mov	x3, x0	// tmp197, tmp194
	ldp	x0, x1, [x3]	// tmp198,
	stp	x0, x1, [x2]	// tmp198, MEM[(int[6] *)_95]
	ldr	x0, [x3, 16]	// tmp199,
	str	x0, [x2, 16]	// tmp199, MEM[(int[6] *)_95]
	add	x1, sp, 48	// tmp200,,
	add	x0, sp, 24	// tmp201,,
	mov	w3, 6	//,
	mov	x2, x1	//, tmp200
	mov	w1, 6	//,
	bl	func0		//
	mov	x2, x0	// _11,
	adrp	x0, .LC6	// tmp202,
	add	x1, x0, :lo12:.LC6	//, tmp202,
	mov	x0, x2	//, _11
	bl	strcmp		//
	cmp	w0, 0	// _12,
	beq	.L16		//,
// problem111.c:24:     assert(strcmp(func0((int[]){3, 2, 6, 1, 8, 9}, 6, (int[]){3, 5, 5, 1, 1, 1}, 6), "NO") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp203,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp203,
	mov	w2, 24	//,
	adrp	x0, .LC7	// tmp204,
	add	x1, x0, :lo12:.LC7	//, tmp204,
	adrp	x0, .LC13	// tmp205,
	add	x0, x0, :lo12:.LC13	//, tmp205,
	bl	__assert_fail		//
.L16:
// problem111.c:25:     assert(strcmp(func0((int[]){100, 200}, 2, (int[]){200, 200}, 2), "YES") == 0);
	mov	w0, 100	// tmp206,
	str	w0, [sp, 24]	// tmp206, MEM[(int[2] *)_94][0]
	mov	w0, 200	// tmp207,
	str	w0, [sp, 28]	// tmp207, MEM[(int[2] *)_94][1]
	mov	w0, 200	// tmp208,
	str	w0, [sp, 48]	// tmp208, MEM[(int[2] *)_95][0]
	mov	w0, 200	// tmp209,
	str	w0, [sp, 52]	// tmp209, MEM[(int[2] *)_95][1]
	add	x1, sp, 48	// tmp210,,
	add	x0, sp, 24	// tmp211,,
	mov	w3, 2	//,
	mov	x2, x1	//, tmp210
	mov	w1, 2	//,
	bl	func0		//
	mov	x2, x0	// _13,
	adrp	x0, .LC5	// tmp212,
	add	x1, x0, :lo12:.LC5	//, tmp212,
	mov	x0, x2	//, _13
	bl	strcmp		//
	cmp	w0, 0	// _14,
	beq	.L17		//,
// problem111.c:25:     assert(strcmp(func0((int[]){100, 200}, 2, (int[]){200, 200}, 2), "YES") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp213,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp213,
	mov	w2, 25	//,
	adrp	x0, .LC7	// tmp214,
	add	x1, x0, :lo12:.LC7	//, tmp214,
	adrp	x0, .LC14	// tmp215,
	add	x0, x0, :lo12:.LC14	//, tmp215,
	bl	__assert_fail		//
.L17:
// problem111.c:27:     return 0;
	mov	w0, 0	// _78,
// problem111.c:28: }
	mov	w1, w0	// <retval>, _78
	adrp	x0, :got:__stack_chk_guard	// tmp218,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp217, tmp218,
	ldr	x3, [sp, 72]	// tmp220, D.4542
	ldr	x2, [x0]	// tmp221,
	subs	x3, x3, x2	// tmp220, tmp221
	mov	x2, 0	// tmp221
	beq	.L19		//,
// problem111.c:28: }
	bl	__stack_chk_fail		//
.L19:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	5
	.word	7
	.word	3
	.align	3
.LC1:
	.word	2
	.word	6
	.word	4
	.align	3
.LC2:
	.word	2
	.word	6
	.word	3
	.align	3
.LC3:
	.word	3
	.word	2
	.word	6
	.word	1
	.word	8
	.word	9
	.align	3
.LC4:
	.word	3
	.word	5
	.word	5
	.word	1
	.word	1
	.word	1
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
