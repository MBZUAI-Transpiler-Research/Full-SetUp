	.arch armv8-a
	.file	"problem70.c"
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
	sub	sp, sp, #1376	//,,
	.cfi_def_cfa_offset 1376
	stp	x29, x30, [sp]	//,,
	.cfi_offset 29, -1376
	.cfi_offset 30, -1368
	mov	x29, sp	//,
// problem70.c:23: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp279,
	str	x1, [sp, 1368]	// tmp279, D.4851
	mov	x1, 0	// tmp279
// problem70.c:24:     int arr1[] = {5, 5, 5, 5, 1};
	adrp	x0, .LC0	// tmp97,
	add	x0, x0, :lo12:.LC0	// tmp96, tmp97,
	add	x2, sp, 64	// tmp98,,
	mov	x3, x0	// tmp99, tmp96
	ldp	x0, x1, [x3]	// tmp100,
	stp	x0, x1, [x2]	// tmp100, arr1
	ldr	w0, [x3, 16]	// tmp101,
	str	w0, [x2, 16]	// tmp101, arr1
// problem70.c:25:     int arr2[] = {4, 1, 4, 1, 4, 4};
	adrp	x0, .LC1	// tmp103,
	add	x0, x0, :lo12:.LC1	// tmp102, tmp103,
	add	x2, sp, 160	// tmp104,,
	mov	x3, x0	// tmp105, tmp102
	ldp	x0, x1, [x3]	// tmp106,
	stp	x0, x1, [x2]	// tmp106, arr2
	ldr	x0, [x3, 16]	// tmp107,
	str	x0, [x2, 16]	// tmp107, arr2
// problem70.c:26:     int arr3[] = {3, 3};
	mov	w0, 3	// tmp108,
	str	w0, [sp, 40]	// tmp108, arr3[0]
	mov	w0, 3	// tmp109,
	str	w0, [sp, 44]	// tmp109, arr3[1]
// problem70.c:27:     int arr4[] = {8, 8, 8, 8, 8, 8, 8, 8};
	adrp	x0, .LC2	// tmp111,
	add	x1, x0, :lo12:.LC2	// tmp110, tmp111,
	add	x0, sp, 216	// tmp112,,
	ldp	q0, q1, [x1]	// tmp114, tmp115,
	stp	q0, q1, [x0]	// tmp114, tmp115, arr4
// problem70.c:28:     int arr5[] = {2, 3, 3, 2, 2};
	adrp	x0, .LC3	// tmp117,
	add	x0, x0, :lo12:.LC3	// tmp116, tmp117,
	add	x2, sp, 88	// tmp118,,
	mov	x3, x0	// tmp119, tmp116
	ldp	x0, x1, [x3]	// tmp120,
	stp	x0, x1, [x2]	// tmp120, arr5
	ldr	w0, [x3, 16]	// tmp121,
	str	w0, [x2, 16]	// tmp121, arr5
// problem70.c:29:     int arr6[] = {2, 7, 8, 8, 4, 8, 7, 3, 9, 6, 5, 10, 4, 3, 6, 7, 1, 7, 4, 10, 8, 1};
	adrp	x0, .LC4	// tmp123,
	add	x1, x0, :lo12:.LC4	// tmp122, tmp123,
	add	x0, sp, 680	// tmp124,,
	ldp	q0, q1, [x1]	// tmp126, tmp127,
	stp	q0, q1, [x0]	// tmp126, tmp127, arr6
	ldp	q0, q1, [x1, 32]	// tmp128, tmp129,
	stp	q0, q1, [x0, 32]	// tmp128, tmp129, arr6
	ldr	q0, [x1, 64]	// tmp130,
	str	q0, [x0, 64]	// tmp130, arr6
	ldr	x1, [x1, 80]	// tmp131,
	str	x1, [x0, 80]	// tmp131, arr6
// problem70.c:30:     int arr7[] = {3, 2, 8, 2};
	mov	w0, 3	// tmp132,
	str	w0, [sp, 48]	// tmp132, arr7[0]
	mov	w0, 2	// tmp133,
	str	w0, [sp, 52]	// tmp133, arr7[1]
	mov	w0, 8	// tmp134,
	str	w0, [sp, 56]	// tmp134, arr7[2]
	mov	w0, 2	// tmp135,
	str	w0, [sp, 60]	// tmp135, arr7[3]
// problem70.c:31:     int arr8[] = {6, 7, 1, 8, 8, 10, 5, 8, 5, 3, 10};
	adrp	x0, .LC5	// tmp137,
	add	x1, x0, :lo12:.LC5	// tmp136, tmp137,
	add	x0, sp, 248	// tmp138,,
	ldp	q0, q1, [x1]	// tmp140, tmp141,
	stp	q0, q1, [x0]	// tmp140, tmp141, arr8
	ldr	q0, [x1, 28]	// tmp142,
	str	q0, [x0, 28]	// tmp142, arr8
// problem70.c:32:     int arr9[] = {8, 8, 3, 6, 5, 6, 4};
	adrp	x0, .LC6	// tmp144,
	add	x1, x0, :lo12:.LC6	// tmp143, tmp144,
	add	x0, sp, 184	// tmp145,,
	ldr	q0, [x1]	// tmp147,
	str	q0, [x0]	// tmp147, arr9
	ldr	q0, [x1, 12]	// tmp148,
	str	q0, [x0, 12]	// tmp148, arr9
// problem70.c:33:     int arr10[] = {6, 9, 6, 7, 1, 4, 7, 1, 8, 8, 9, 8, 10, 10, 8, 4, 10, 4, 10, 1, 2, 9, 5, 7, 9};
	adrp	x0, .LC7	// tmp150,
	add	x1, x0, :lo12:.LC7	// tmp149, tmp150,
	add	x0, sp, 1144	// tmp151,,
	ldp	q0, q1, [x1]	// tmp153, tmp154,
	stp	q0, q1, [x0]	// tmp153, tmp154, arr10
	ldp	q0, q1, [x1, 32]	// tmp155, tmp156,
	stp	q0, q1, [x0, 32]	// tmp155, tmp156, arr10
	ldp	q0, q1, [x1, 64]	// tmp157, tmp158,
	stp	q0, q1, [x0, 64]	// tmp157, tmp158, arr10
	ldr	w1, [x1, 96]	// tmp159,
	str	w1, [x0, 96]	// tmp159, arr10
// problem70.c:34:     int arr11[] = {1, 9, 10, 1, 3};
	adrp	x0, .LC8	// tmp161,
	add	x0, x0, :lo12:.LC8	// tmp160, tmp161,
	add	x2, sp, 112	// tmp162,,
	mov	x3, x0	// tmp163, tmp160
	ldp	x0, x1, [x3]	// tmp164,
	stp	x0, x1, [x2]	// tmp164, arr11
	ldr	w0, [x3, 16]	// tmp165,
	str	w0, [x2, 16]	// tmp165, arr11
// problem70.c:35:     int arr12[] = {6, 9, 7, 5, 8, 7, 5, 3, 7, 5, 10, 10, 3, 6, 10, 2, 8, 6, 5, 4, 9, 5, 3, 10};
	adrp	x0, .LC9	// tmp167,
	add	x1, x0, :lo12:.LC9	// tmp166, tmp167,
	add	x0, sp, 1048	// tmp168,,
	ldp	q0, q1, [x1]	// tmp170, tmp171,
	stp	q0, q1, [x0]	// tmp170, tmp171, arr12
	ldp	q0, q1, [x1, 32]	// tmp172, tmp173,
	stp	q0, q1, [x0, 32]	// tmp172, tmp173, arr12
	ldp	q0, q1, [x1, 64]	// tmp174, tmp175,
	stp	q0, q1, [x0, 64]	// tmp174, tmp175, arr12
// problem70.c:36:     int arr13[] = {1};
	mov	w0, 1	// tmp176,
	str	w0, [sp, 24]	// tmp176, arr13[0]
// problem70.c:37:     int arr14[] = {8, 8, 10, 6, 4, 3, 5, 8, 2, 4, 2, 8, 4, 6, 10, 4, 2, 1, 10, 2, 1, 1, 5};
	adrp	x0, .LC10	// tmp178,
	add	x1, x0, :lo12:.LC10	// tmp177, tmp178,
	add	x0, sp, 856	// tmp179,,
	ldp	q0, q1, [x1]	// tmp181, tmp182,
	stp	q0, q1, [x0]	// tmp181, tmp182, arr14
	ldp	q0, q1, [x1, 32]	// tmp183, tmp184,
	stp	q0, q1, [x0, 32]	// tmp183, tmp184, arr14
	ldr	q0, [x1, 64]	// tmp185,
	str	q0, [x0, 64]	// tmp185, arr14
	ldr	q0, [x1, 76]	// tmp186,
	str	q0, [x0, 76]	// tmp186, arr14
// problem70.c:38:     int arr15[] = {2, 10, 4, 8, 2, 10, 5, 1, 2, 9, 5, 5, 6, 3, 8, 6, 4, 10};
	adrp	x0, .LC11	// tmp188,
	add	x1, x0, :lo12:.LC11	// tmp187, tmp188,
	add	x0, sp, 448	// tmp189,,
	ldp	q0, q1, [x1]	// tmp191, tmp192,
	stp	q0, q1, [x0]	// tmp191, tmp192, arr15
	ldp	q0, q1, [x1, 32]	// tmp193, tmp194,
	stp	q0, q1, [x0, 32]	// tmp193, tmp194, arr15
	ldr	x1, [x1, 64]	// tmp195,
	str	x1, [x0, 64]	// tmp195, arr15
// problem70.c:39:     int arr16[] = {1, 6, 10, 1, 6, 9, 10, 8, 6, 8, 7, 3};
	adrp	x0, .LC12	// tmp197,
	add	x1, x0, :lo12:.LC12	// tmp196, tmp197,
	add	x0, sp, 344	// tmp198,,
	ldp	q0, q1, [x1]	// tmp200, tmp201,
	stp	q0, q1, [x0]	// tmp200, tmp201, arr16
	ldr	q0, [x1, 32]	// tmp202,
	str	q0, [x0, 32]	// tmp202, arr16
// problem70.c:40:     int arr17[] = {9, 2, 4, 1, 5, 1, 5, 2, 5, 7, 7, 7, 3, 10, 1, 5, 4, 2, 8, 4, 1, 9, 10, 7, 10, 2, 8, 10, 9, 4};
	adrp	x0, .LC13	// tmp204,
	add	x1, x0, :lo12:.LC13	// tmp203, tmp204,
	add	x0, sp, 1248	// tmp205,,
	ldp	q0, q1, [x1]	// tmp207, tmp208,
	stp	q0, q1, [x0]	// tmp207, tmp208, arr17
	ldp	q0, q1, [x1, 32]	// tmp209, tmp210,
	stp	q0, q1, [x0, 32]	// tmp209, tmp210, arr17
	ldp	q0, q1, [x1, 64]	// tmp211, tmp212,
	stp	q0, q1, [x0, 64]	// tmp211, tmp212, arr17
	ldr	q0, [x1, 96]	// tmp213,
	str	q0, [x0, 96]	// tmp213, arr17
	ldr	x1, [x1, 112]	// tmp214,
	str	x1, [x0, 112]	// tmp214, arr17
// problem70.c:41:     int arr18[] = {2, 6, 4, 2, 8, 7, 5, 6, 4, 10, 4, 6, 3, 7, 8, 8, 3, 1, 4, 2, 2, 10, 7};
	adrp	x0, .LC14	// tmp216,
	add	x1, x0, :lo12:.LC14	// tmp215, tmp216,
	add	x0, sp, 952	// tmp217,,
	ldp	q0, q1, [x1]	// tmp219, tmp220,
	stp	q0, q1, [x0]	// tmp219, tmp220, arr18
	ldp	q0, q1, [x1, 32]	// tmp221, tmp222,
	stp	q0, q1, [x0, 32]	// tmp221, tmp222, arr18
	ldr	q0, [x1, 64]	// tmp223,
	str	q0, [x0, 64]	// tmp223, arr18
	ldr	q0, [x1, 76]	// tmp224,
	str	q0, [x0, 76]	// tmp224, arr18
// problem70.c:42:     int arr19[] = {9, 8, 6, 10, 2, 6, 10, 2, 7, 8, 10, 3, 8, 2, 6, 2, 3, 1};
	adrp	x0, .LC15	// tmp226,
	add	x1, x0, :lo12:.LC15	// tmp225, tmp226,
	add	x0, sp, 520	// tmp227,,
	ldp	q0, q1, [x1]	// tmp229, tmp230,
	stp	q0, q1, [x0]	// tmp229, tmp230, arr19
	ldp	q0, q1, [x1, 32]	// tmp231, tmp232,
	stp	q0, q1, [x0, 32]	// tmp231, tmp232, arr19
	ldr	x1, [x1, 64]	// tmp233,
	str	x1, [x0, 64]	// tmp233, arr19
// problem70.c:43:     int arr20[] = {5, 5, 3, 9, 5, 6, 3, 2, 8, 5, 6, 10, 10, 6, 8, 4, 10, 7, 7, 10, 8};
	adrp	x0, .LC16	// tmp235,
	add	x1, x0, :lo12:.LC16	// tmp234, tmp235,
	add	x0, sp, 592	// tmp236,,
	ldp	q0, q1, [x1]	// tmp238, tmp239,
	stp	q0, q1, [x0]	// tmp238, tmp239, arr20
	ldp	q0, q1, [x1, 32]	// tmp240, tmp241,
	stp	q0, q1, [x0, 32]	// tmp240, tmp241, arr20
	ldr	q0, [x1, 64]	// tmp242,
	str	q0, [x0, 64]	// tmp242, arr20
	ldr	w1, [x1, 80]	// tmp243,
	str	w1, [x0, 80]	// tmp243, arr20
// problem70.c:44:     int arr21[] = {10};
	mov	w0, 10	// tmp244,
	str	w0, [sp, 32]	// tmp244, arr21[0]
// problem70.c:45:     int arr22[] = {9, 7, 7, 2, 4,7, 2, 10, 9, 7, 5, 7, 2};
	adrp	x0, .LC17	// tmp246,
	add	x1, x0, :lo12:.LC17	// tmp245, tmp246,
	add	x0, sp, 392	// tmp247,,
	ldp	q0, q1, [x1]	// tmp249, tmp250,
	stp	q0, q1, [x0]	// tmp249, tmp250, arr22
	ldr	q0, [x1, 32]	// tmp251,
	str	q0, [x0, 32]	// tmp251, arr22
	ldr	w1, [x1, 48]	// tmp252,
	str	w1, [x0, 48]	// tmp252, arr22
// problem70.c:46:     int arr23[] = {5, 4, 10, 2, 1, 1, 10, 3, 6, 1, 8};
	adrp	x0, .LC18	// tmp254,
	add	x1, x0, :lo12:.LC18	// tmp253, tmp254,
	add	x0, sp, 296	// tmp255,,
	ldp	q0, q1, [x1]	// tmp257, tmp258,
	stp	q0, q1, [x0]	// tmp257, tmp258, arr23
	ldr	q0, [x1, 28]	// tmp259,
	str	q0, [x0, 28]	// tmp259, arr23
// problem70.c:47:     int arr24[] = {7, 9, 9, 9, 3, 4, 1, 5, 9, 1, 2, 1, 1, 10, 7, 5, 6, 7, 6, 7, 7, 6};
	adrp	x0, .LC19	// tmp261,
	add	x1, x0, :lo12:.LC19	// tmp260, tmp261,
	add	x0, sp, 768	// tmp262,,
	ldp	q0, q1, [x1]	// tmp264, tmp265,
	stp	q0, q1, [x0]	// tmp264, tmp265, arr24
	ldp	q0, q1, [x1, 32]	// tmp266, tmp267,
	stp	q0, q1, [x0, 32]	// tmp266, tmp267, arr24
	ldr	q0, [x1, 64]	// tmp268,
	str	q0, [x0, 64]	// tmp268, arr24
	ldr	x1, [x1, 80]	// tmp269,
	str	x1, [x0, 80]	// tmp269, arr24
// problem70.c:48:     int arr25[] = {3, 10, 10, 9, 2};
	adrp	x0, .LC20	// tmp271,
	add	x0, x0, :lo12:.LC20	// tmp270, tmp271,
	add	x2, sp, 136	// tmp272,,
	mov	x3, x0	// tmp273, tmp270
	ldp	x0, x1, [x3]	// tmp274,
	stp	x0, x1, [x2]	// tmp274, arr25
	ldr	w0, [x3, 16]	// tmp275,
	str	w0, [x2, 16]	// tmp275, arr25
// problem70.c:50:     return 0;
	mov	w0, 0	// _31,
// problem70.c:51: }
	mov	w1, w0	// <retval>, _31
	adrp	x0, :got:__stack_chk_guard	// tmp278,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp277, tmp278,
	ldr	x3, [sp, 1368]	// tmp280, D.4851
	ldr	x2, [x0]	// tmp281,
	subs	x3, x3, x2	// tmp280, tmp281
	mov	x2, 0	// tmp281
	beq	.L8		//,
	bl	__stack_chk_fail		//
.L8:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp]	//,,
	add	sp, sp, 1376	//,,
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
