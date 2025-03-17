	.arch armv8-a
	.file	"problem70.c"
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
	str	x0, [sp, 24]	// lst, lst
	str	w1, [sp, 20]	// size, size
// problem70.c:5:     int *freq = (int *)calloc(size + 1, sizeof(int));
	ldr	w0, [sp, 20]	// tmp124, size
	add	w0, w0, 1	// _1, tmp124,
// problem70.c:5:     int *freq = (int *)calloc(size + 1, sizeof(int));
	sxtw	x0, w0	// _2, _1
	mov	x1, 4	//,
	bl	calloc		//
	str	x0, [sp, 40]	// tmp125, freq
// problem70.c:6:     int max = -1;
	mov	w0, -1	// tmp126,
	str	w0, [sp, 32]	// tmp126, max
// problem70.c:8:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 36]	//, i
// problem70.c:8:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L4:
// problem70.c:9:         freq[lst[i]]++;
	ldrsw	x0, [sp, 36]	// _3, i
	lsl	x0, x0, 2	// _4, _3,
	ldr	x1, [sp, 24]	// tmp127, lst
	add	x0, x1, x0	// _5, tmp127, _4
	ldr	w0, [x0]	// _6, *_5
	sxtw	x0, w0	// _7, _6
// problem70.c:9:         freq[lst[i]]++;
	lsl	x0, x0, 2	// _8, _7,
	ldr	x1, [sp, 40]	// tmp128, freq
	add	x0, x1, x0	// _9, tmp128, _8
	ldr	w1, [x0]	// _10, *_9
// problem70.c:9:         freq[lst[i]]++;
	add	w1, w1, 1	// _11, _10,
	str	w1, [x0]	// _11, *_9
// problem70.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	ldrsw	x0, [sp, 36]	// _12, i
	lsl	x0, x0, 2	// _13, _12,
	ldr	x1, [sp, 24]	// tmp129, lst
	add	x0, x1, x0	// _14, tmp129, _13
	ldr	w0, [x0]	// _15, *_14
	sxtw	x0, w0	// _16, _15
// problem70.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	lsl	x0, x0, 2	// _17, _16,
	ldr	x1, [sp, 40]	// tmp130, freq
	add	x0, x1, x0	// _18, tmp130, _17
	ldr	w1, [x0]	// _19, *_18
// problem70.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	ldrsw	x0, [sp, 36]	// _20, i
	lsl	x0, x0, 2	// _21, _20,
	ldr	x2, [sp, 24]	// tmp131, lst
	add	x0, x2, x0	// _22, tmp131, _21
	ldr	w0, [x0]	// _23, *_22
// problem70.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	cmp	w1, w0	// _19, _23
	blt	.L3		//,
// problem70.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	ldrsw	x0, [sp, 36]	// _24, i
	lsl	x0, x0, 2	// _25, _24,
	ldr	x1, [sp, 24]	// tmp132, lst
	add	x0, x1, x0	// _26, tmp132, _25
	ldr	w0, [x0]	// _27, *_26
// problem70.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	ldr	w1, [sp, 32]	// tmp133, max
	cmp	w1, w0	// tmp133, _27
	bge	.L3		//,
// problem70.c:11:             max = lst[i];
	ldrsw	x0, [sp, 36]	// _28, i
	lsl	x0, x0, 2	// _29, _28,
	ldr	x1, [sp, 24]	// tmp134, lst
	add	x0, x1, x0	// _30, tmp134, _29
// problem70.c:11:             max = lst[i];
	ldr	w0, [x0]	// tmp135, *_30
	str	w0, [sp, 32]	// tmp135, max
.L3:
// problem70.c:8:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 36]	// tmp137, i
	add	w0, w0, 1	// tmp136, tmp137,
	str	w0, [sp, 36]	// tmp136, i
.L2:
// problem70.c:8:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 36]	// tmp138, i
	ldr	w0, [sp, 20]	// tmp139, size
	cmp	w1, w0	// tmp138, tmp139
	blt	.L4		//,
// problem70.c:15:     free(freq);
	ldr	x0, [sp, 40]	//, freq
	bl	free		//
// problem70.c:16:     return max;
	ldr	w0, [sp, 32]	// _42, max
// problem70.c:17: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
	sub	sp, sp, #1360	//,,
	.cfi_def_cfa_offset 1376
	str	xzr, [sp, 1024]	//,
// problem70.c:23: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp94,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp94,
	ldr	x1, [x0]	// tmp277,
	str	x1, [sp, 1352]	// tmp277, D.5440
	mov	x1, 0	// tmp277
// problem70.c:24:     int arr1[] = {5, 5, 5, 5, 1};
	adrp	x0, .LC0	// tmp96,
	add	x0, x0, :lo12:.LC0	// tmp95, tmp96,
	add	x2, sp, 48	// tmp97,,
	mov	x3, x0	// tmp98, tmp95
	ldp	x0, x1, [x3]	// tmp99,
	stp	x0, x1, [x2]	// tmp99, arr1
	ldr	w0, [x3, 16]	// tmp100,
	str	w0, [x2, 16]	// tmp100, arr1
// problem70.c:25:     int arr2[] = {4, 1, 4, 1, 4, 4};
	adrp	x0, .LC1	// tmp102,
	add	x0, x0, :lo12:.LC1	// tmp101, tmp102,
	add	x2, sp, 144	// tmp103,,
	mov	x3, x0	// tmp104, tmp101
	ldp	x0, x1, [x3]	// tmp105,
	stp	x0, x1, [x2]	// tmp105, arr2
	ldr	x0, [x3, 16]	// tmp106,
	str	x0, [x2, 16]	// tmp106, arr2
// problem70.c:26:     int arr3[] = {3, 3};
	mov	w0, 3	// tmp107,
	str	w0, [sp, 24]	// tmp107, arr3[0]
	mov	w0, 3	// tmp108,
	str	w0, [sp, 28]	// tmp108, arr3[1]
// problem70.c:27:     int arr4[] = {8, 8, 8, 8, 8, 8, 8, 8};
	adrp	x0, .LC2	// tmp110,
	add	x1, x0, :lo12:.LC2	// tmp109, tmp110,
	add	x0, sp, 200	// tmp111,,
	ldp	q0, q1, [x1]	// tmp113, tmp114,
	stp	q0, q1, [x0]	// tmp113, tmp114, arr4
// problem70.c:28:     int arr5[] = {2, 3, 3, 2, 2};
	adrp	x0, .LC3	// tmp116,
	add	x0, x0, :lo12:.LC3	// tmp115, tmp116,
	add	x2, sp, 72	// tmp117,,
	mov	x3, x0	// tmp118, tmp115
	ldp	x0, x1, [x3]	// tmp119,
	stp	x0, x1, [x2]	// tmp119, arr5
	ldr	w0, [x3, 16]	// tmp120,
	str	w0, [x2, 16]	// tmp120, arr5
// problem70.c:29:     int arr6[] = {2, 7, 8, 8, 4, 8, 7, 3, 9, 6, 5, 10, 4, 3, 6, 7, 1, 7, 4, 10, 8, 1};
	adrp	x0, .LC4	// tmp122,
	add	x1, x0, :lo12:.LC4	// tmp121, tmp122,
	add	x0, sp, 664	// tmp123,,
	ldp	q0, q1, [x1]	// tmp125, tmp126,
	stp	q0, q1, [x0]	// tmp125, tmp126, arr6
	ldp	q0, q1, [x1, 32]	// tmp127, tmp128,
	stp	q0, q1, [x0, 32]	// tmp127, tmp128, arr6
	ldr	q0, [x1, 64]	// tmp129,
	str	q0, [x0, 64]	// tmp129, arr6
	ldr	x1, [x1, 80]	// tmp130,
	str	x1, [x0, 80]	// tmp130, arr6
// problem70.c:30:     int arr7[] = {3, 2, 8, 2};
	mov	w0, 3	// tmp131,
	str	w0, [sp, 32]	// tmp131, arr7[0]
	mov	w0, 2	// tmp132,
	str	w0, [sp, 36]	// tmp132, arr7[1]
	mov	w0, 8	// tmp133,
	str	w0, [sp, 40]	// tmp133, arr7[2]
	mov	w0, 2	// tmp134,
	str	w0, [sp, 44]	// tmp134, arr7[3]
// problem70.c:31:     int arr8[] = {6, 7, 1, 8, 8, 10, 5, 8, 5, 3, 10};
	adrp	x0, .LC5	// tmp136,
	add	x1, x0, :lo12:.LC5	// tmp135, tmp136,
	add	x0, sp, 232	// tmp137,,
	ldp	q0, q1, [x1]	// tmp139, tmp140,
	stp	q0, q1, [x0]	// tmp139, tmp140, arr8
	ldr	q0, [x1, 28]	// tmp141,
	str	q0, [x0, 28]	// tmp141, arr8
// problem70.c:32:     int arr9[] = {8, 8, 3, 6, 5, 6, 4};
	adrp	x0, .LC6	// tmp143,
	add	x1, x0, :lo12:.LC6	// tmp142, tmp143,
	add	x0, sp, 168	// tmp144,,
	ldr	q0, [x1]	// tmp146,
	str	q0, [x0]	// tmp146, arr9
	ldr	q0, [x1, 12]	// tmp147,
	str	q0, [x0, 12]	// tmp147, arr9
// problem70.c:33:     int arr10[] = {6, 9, 6, 7, 1, 4, 7, 1, 8, 8, 9, 8, 10, 10, 8, 4, 10, 4, 10, 1, 2, 9, 5, 7, 9};
	adrp	x0, .LC7	// tmp149,
	add	x1, x0, :lo12:.LC7	// tmp148, tmp149,
	add	x0, sp, 1128	// tmp150,,
	ldp	q0, q1, [x1]	// tmp152, tmp153,
	stp	q0, q1, [x0]	// tmp152, tmp153, arr10
	ldp	q0, q1, [x1, 32]	// tmp154, tmp155,
	stp	q0, q1, [x0, 32]	// tmp154, tmp155, arr10
	ldp	q0, q1, [x1, 64]	// tmp156, tmp157,
	stp	q0, q1, [x0, 64]	// tmp156, tmp157, arr10
	ldr	w1, [x1, 96]	// tmp158,
	str	w1, [x0, 96]	// tmp158, arr10
// problem70.c:34:     int arr11[] = {1, 9, 10, 1, 3};
	adrp	x0, .LC8	// tmp160,
	add	x0, x0, :lo12:.LC8	// tmp159, tmp160,
	add	x2, sp, 96	// tmp161,,
	mov	x3, x0	// tmp162, tmp159
	ldp	x0, x1, [x3]	// tmp163,
	stp	x0, x1, [x2]	// tmp163, arr11
	ldr	w0, [x3, 16]	// tmp164,
	str	w0, [x2, 16]	// tmp164, arr11
// problem70.c:35:     int arr12[] = {6, 9, 7, 5, 8, 7, 5, 3, 7, 5, 10, 10, 3, 6, 10, 2, 8, 6, 5, 4, 9, 5, 3, 10};
	adrp	x0, .LC9	// tmp166,
	add	x1, x0, :lo12:.LC9	// tmp165, tmp166,
	add	x0, sp, 1032	// tmp167,,
	ldp	q0, q1, [x1]	// tmp169, tmp170,
	stp	q0, q1, [x0]	// tmp169, tmp170, arr12
	ldp	q0, q1, [x1, 32]	// tmp171, tmp172,
	stp	q0, q1, [x0, 32]	// tmp171, tmp172, arr12
	ldp	q0, q1, [x1, 64]	// tmp173, tmp174,
	stp	q0, q1, [x0, 64]	// tmp173, tmp174, arr12
// problem70.c:36:     int arr13[] = {1};
	mov	w0, 1	// tmp175,
	str	w0, [sp, 8]	// tmp175, arr13[0]
// problem70.c:37:     int arr14[] = {8, 8, 10, 6, 4, 3, 5, 8, 2, 4, 2, 8, 4, 6, 10, 4, 2, 1, 10, 2, 1, 1, 5};
	adrp	x0, .LC10	// tmp177,
	add	x1, x0, :lo12:.LC10	// tmp176, tmp177,
	add	x0, sp, 840	// tmp178,,
	ldp	q0, q1, [x1]	// tmp180, tmp181,
	stp	q0, q1, [x0]	// tmp180, tmp181, arr14
	ldp	q0, q1, [x1, 32]	// tmp182, tmp183,
	stp	q0, q1, [x0, 32]	// tmp182, tmp183, arr14
	ldr	q0, [x1, 64]	// tmp184,
	str	q0, [x0, 64]	// tmp184, arr14
	ldr	q0, [x1, 76]	// tmp185,
	str	q0, [x0, 76]	// tmp185, arr14
// problem70.c:38:     int arr15[] = {2, 10, 4, 8, 2, 10, 5, 1, 2, 9, 5, 5, 6, 3, 8, 6, 4, 10};
	adrp	x0, .LC11	// tmp187,
	add	x1, x0, :lo12:.LC11	// tmp186, tmp187,
	add	x0, sp, 432	// tmp188,,
	ldp	q0, q1, [x1]	// tmp190, tmp191,
	stp	q0, q1, [x0]	// tmp190, tmp191, arr15
	ldp	q0, q1, [x1, 32]	// tmp192, tmp193,
	stp	q0, q1, [x0, 32]	// tmp192, tmp193, arr15
	ldr	x1, [x1, 64]	// tmp194,
	str	x1, [x0, 64]	// tmp194, arr15
// problem70.c:39:     int arr16[] = {1, 6, 10, 1, 6, 9, 10, 8, 6, 8, 7, 3};
	adrp	x0, .LC12	// tmp196,
	add	x1, x0, :lo12:.LC12	// tmp195, tmp196,
	add	x0, sp, 328	// tmp197,,
	ldp	q0, q1, [x1]	// tmp199, tmp200,
	stp	q0, q1, [x0]	// tmp199, tmp200, arr16
	ldr	q0, [x1, 32]	// tmp201,
	str	q0, [x0, 32]	// tmp201, arr16
// problem70.c:40:     int arr17[] = {9, 2, 4, 1, 5, 1, 5, 2, 5, 7, 7, 7, 3, 10, 1, 5, 4, 2, 8, 4, 1, 9, 10, 7, 10, 2, 8, 10, 9, 4};
	adrp	x0, .LC13	// tmp203,
	add	x1, x0, :lo12:.LC13	// tmp202, tmp203,
	add	x0, sp, 1232	// tmp204,,
	ldp	q0, q1, [x1]	// tmp206, tmp207,
	stp	q0, q1, [x0]	// tmp206, tmp207, arr17
	ldp	q0, q1, [x1, 32]	// tmp208, tmp209,
	stp	q0, q1, [x0, 32]	// tmp208, tmp209, arr17
	ldp	q0, q1, [x1, 64]	// tmp210, tmp211,
	stp	q0, q1, [x0, 64]	// tmp210, tmp211, arr17
	ldr	q0, [x1, 96]	// tmp212,
	str	q0, [x0, 96]	// tmp212, arr17
	ldr	x1, [x1, 112]	// tmp213,
	str	x1, [x0, 112]	// tmp213, arr17
// problem70.c:41:     int arr18[] = {2, 6, 4, 2, 8, 7, 5, 6, 4, 10, 4, 6, 3, 7, 8, 8, 3, 1, 4, 2, 2, 10, 7};
	adrp	x0, .LC14	// tmp215,
	add	x1, x0, :lo12:.LC14	// tmp214, tmp215,
	add	x0, sp, 936	// tmp216,,
	ldp	q0, q1, [x1]	// tmp218, tmp219,
	stp	q0, q1, [x0]	// tmp218, tmp219, arr18
	ldp	q0, q1, [x1, 32]	// tmp220, tmp221,
	stp	q0, q1, [x0, 32]	// tmp220, tmp221, arr18
	ldr	q0, [x1, 64]	// tmp222,
	str	q0, [x0, 64]	// tmp222, arr18
	ldr	q0, [x1, 76]	// tmp223,
	str	q0, [x0, 76]	// tmp223, arr18
// problem70.c:42:     int arr19[] = {9, 8, 6, 10, 2, 6, 10, 2, 7, 8, 10, 3, 8, 2, 6, 2, 3, 1};
	adrp	x0, .LC15	// tmp225,
	add	x1, x0, :lo12:.LC15	// tmp224, tmp225,
	add	x0, sp, 504	// tmp226,,
	ldp	q0, q1, [x1]	// tmp228, tmp229,
	stp	q0, q1, [x0]	// tmp228, tmp229, arr19
	ldp	q0, q1, [x1, 32]	// tmp230, tmp231,
	stp	q0, q1, [x0, 32]	// tmp230, tmp231, arr19
	ldr	x1, [x1, 64]	// tmp232,
	str	x1, [x0, 64]	// tmp232, arr19
// problem70.c:43:     int arr20[] = {5, 5, 3, 9, 5, 6, 3, 2, 8, 5, 6, 10, 10, 6, 8, 4, 10, 7, 7, 10, 8};
	adrp	x0, .LC16	// tmp234,
	add	x1, x0, :lo12:.LC16	// tmp233, tmp234,
	add	x0, sp, 576	// tmp235,,
	ldp	q0, q1, [x1]	// tmp237, tmp238,
	stp	q0, q1, [x0]	// tmp237, tmp238, arr20
	ldp	q0, q1, [x1, 32]	// tmp239, tmp240,
	stp	q0, q1, [x0, 32]	// tmp239, tmp240, arr20
	ldr	q0, [x1, 64]	// tmp241,
	str	q0, [x0, 64]	// tmp241, arr20
	ldr	w1, [x1, 80]	// tmp242,
	str	w1, [x0, 80]	// tmp242, arr20
// problem70.c:44:     int arr21[] = {10};
	mov	w0, 10	// tmp243,
	str	w0, [sp, 16]	// tmp243, arr21[0]
// problem70.c:45:     int arr22[] = {9, 7, 7, 2, 4,7, 2, 10, 9, 7, 5, 7, 2};
	adrp	x0, .LC17	// tmp245,
	add	x1, x0, :lo12:.LC17	// tmp244, tmp245,
	add	x0, sp, 376	// tmp246,,
	ldp	q0, q1, [x1]	// tmp248, tmp249,
	stp	q0, q1, [x0]	// tmp248, tmp249, arr22
	ldr	q0, [x1, 32]	// tmp250,
	str	q0, [x0, 32]	// tmp250, arr22
	ldr	w1, [x1, 48]	// tmp251,
	str	w1, [x0, 48]	// tmp251, arr22
// problem70.c:46:     int arr23[] = {5, 4, 10, 2, 1, 1, 10, 3, 6, 1, 8};
	adrp	x0, .LC18	// tmp253,
	add	x1, x0, :lo12:.LC18	// tmp252, tmp253,
	add	x0, sp, 280	// tmp254,,
	ldp	q0, q1, [x1]	// tmp256, tmp257,
	stp	q0, q1, [x0]	// tmp256, tmp257, arr23
	ldr	q0, [x1, 28]	// tmp258,
	str	q0, [x0, 28]	// tmp258, arr23
// problem70.c:47:     int arr24[] = {7, 9, 9, 9, 3, 4, 1, 5, 9, 1, 2, 1, 1, 10, 7, 5, 6, 7, 6, 7, 7, 6};
	adrp	x0, .LC19	// tmp260,
	add	x1, x0, :lo12:.LC19	// tmp259, tmp260,
	add	x0, sp, 752	// tmp261,,
	ldp	q0, q1, [x1]	// tmp263, tmp264,
	stp	q0, q1, [x0]	// tmp263, tmp264, arr24
	ldp	q0, q1, [x1, 32]	// tmp265, tmp266,
	stp	q0, q1, [x0, 32]	// tmp265, tmp266, arr24
	ldr	q0, [x1, 64]	// tmp267,
	str	q0, [x0, 64]	// tmp267, arr24
	ldr	x1, [x1, 80]	// tmp268,
	str	x1, [x0, 80]	// tmp268, arr24
// problem70.c:48:     int arr25[] = {3, 10, 10, 9, 2};
	adrp	x0, .LC20	// tmp270,
	add	x0, x0, :lo12:.LC20	// tmp269, tmp270,
	add	x2, sp, 120	// tmp271,,
	mov	x3, x0	// tmp272, tmp269
	ldp	x0, x1, [x3]	// tmp273,
	stp	x0, x1, [x2]	// tmp273, arr25
	ldr	w0, [x3, 16]	// tmp274,
	str	w0, [x2, 16]	// tmp274, arr25
// problem70.c:50:     return 0;
	mov	w0, 0	// _31,
// problem70.c:51: }
	mov	w1, w0	// <retval>, _31
	adrp	x0, :got:__stack_chk_guard	// tmp276,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp276,
	ldr	x3, [sp, 1352]	// tmp278, D.5440
	ldr	x2, [x0]	// tmp279,
	subs	x3, x3, x2	// tmp278, tmp279
	mov	x2, 0	// tmp279
	beq	.L8		//,
	bl	__stack_chk_fail		//
.L8:
	mov	w0, w1	//, <retval>
	add	sp, sp, 1360	//,,
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16	//,,,
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
	.word	5
	.word	5
	.word	5
	.word	5
	.word	1
	.align	3
.LC1:
	.word	4
	.word	1
	.word	4
	.word	1
	.word	4
	.word	4
	.align	3
.LC2:
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.align	3
.LC3:
	.word	2
	.word	3
	.word	3
	.word	2
	.word	2
	.align	3
.LC4:
	.word	2
	.word	7
	.word	8
	.word	8
	.word	4
	.word	8
	.word	7
	.word	3
	.word	9
	.word	6
	.word	5
	.word	10
	.word	4
	.word	3
	.word	6
	.word	7
	.word	1
	.word	7
	.word	4
	.word	10
	.word	8
	.word	1
	.align	3
.LC5:
	.word	6
	.word	7
	.word	1
	.word	8
	.word	8
	.word	10
	.word	5
	.word	8
	.word	5
	.word	3
	.word	10
	.align	3
.LC6:
	.word	8
	.word	8
	.word	3
	.word	6
	.word	5
	.word	6
	.word	4
	.align	3
.LC7:
	.word	6
	.word	9
	.word	6
	.word	7
	.word	1
	.word	4
	.word	7
	.word	1
	.word	8
	.word	8
	.word	9
	.word	8
	.word	10
	.word	10
	.word	8
	.word	4
	.word	10
	.word	4
	.word	10
	.word	1
	.word	2
	.word	9
	.word	5
	.word	7
	.word	9
	.align	3
.LC8:
	.word	1
	.word	9
	.word	10
	.word	1
	.word	3
	.align	3
.LC9:
	.word	6
	.word	9
	.word	7
	.word	5
	.word	8
	.word	7
	.word	5
	.word	3
	.word	7
	.word	5
	.word	10
	.word	10
	.word	3
	.word	6
	.word	10
	.word	2
	.word	8
	.word	6
	.word	5
	.word	4
	.word	9
	.word	5
	.word	3
	.word	10
	.align	3
.LC10:
	.word	8
	.word	8
	.word	10
	.word	6
	.word	4
	.word	3
	.word	5
	.word	8
	.word	2
	.word	4
	.word	2
	.word	8
	.word	4
	.word	6
	.word	10
	.word	4
	.word	2
	.word	1
	.word	10
	.word	2
	.word	1
	.word	1
	.word	5
	.align	3
.LC11:
	.word	2
	.word	10
	.word	4
	.word	8
	.word	2
	.word	10
	.word	5
	.word	1
	.word	2
	.word	9
	.word	5
	.word	5
	.word	6
	.word	3
	.word	8
	.word	6
	.word	4
	.word	10
	.align	3
.LC12:
	.word	1
	.word	6
	.word	10
	.word	1
	.word	6
	.word	9
	.word	10
	.word	8
	.word	6
	.word	8
	.word	7
	.word	3
	.align	3
.LC13:
	.word	9
	.word	2
	.word	4
	.word	1
	.word	5
	.word	1
	.word	5
	.word	2
	.word	5
	.word	7
	.word	7
	.word	7
	.word	3
	.word	10
	.word	1
	.word	5
	.word	4
	.word	2
	.word	8
	.word	4
	.word	1
	.word	9
	.word	10
	.word	7
	.word	10
	.word	2
	.word	8
	.word	10
	.word	9
	.word	4
	.align	3
.LC14:
	.word	2
	.word	6
	.word	4
	.word	2
	.word	8
	.word	7
	.word	5
	.word	6
	.word	4
	.word	10
	.word	4
	.word	6
	.word	3
	.word	7
	.word	8
	.word	8
	.word	3
	.word	1
	.word	4
	.word	2
	.word	2
	.word	10
	.word	7
	.align	3
.LC15:
	.word	9
	.word	8
	.word	6
	.word	10
	.word	2
	.word	6
	.word	10
	.word	2
	.word	7
	.word	8
	.word	10
	.word	3
	.word	8
	.word	2
	.word	6
	.word	2
	.word	3
	.word	1
	.align	3
.LC16:
	.word	5
	.word	5
	.word	3
	.word	9
	.word	5
	.word	6
	.word	3
	.word	2
	.word	8
	.word	5
	.word	6
	.word	10
	.word	10
	.word	6
	.word	8
	.word	4
	.word	10
	.word	7
	.word	7
	.word	10
	.word	8
	.align	3
.LC17:
	.word	9
	.word	7
	.word	7
	.word	2
	.word	4
	.word	7
	.word	2
	.word	10
	.word	9
	.word	7
	.word	5
	.word	7
	.word	2
	.align	3
.LC18:
	.word	5
	.word	4
	.word	10
	.word	2
	.word	1
	.word	1
	.word	10
	.word	3
	.word	6
	.word	1
	.word	8
	.align	3
.LC19:
	.word	7
	.word	9
	.word	9
	.word	9
	.word	3
	.word	4
	.word	1
	.word	5
	.word	9
	.word	1
	.word	2
	.word	1
	.word	1
	.word	10
	.word	7
	.word	5
	.word	6
	.word	7
	.word	6
	.word	7
	.word	7
	.word	6
	.align	3
.LC20:
	.word	3
	.word	10
	.word	10
	.word	9
	.word	2
	.text
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
