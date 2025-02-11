	.arch armv8-a
	.file	"problem43.cc"
// GNU C++17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.text._ZN9__gnu_cxx5__ops16__iter_less_iterEv,"axG",@progbits,_ZN9__gnu_cxx5__ops16__iter_less_iterEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops16__iter_less_iterEv
	.type	_ZN9__gnu_cxx5__ops16__iter_less_iterEv, %function
_ZN9__gnu_cxx5__ops16__iter_less_iterEv:
.LFB554:
	.cfi_startproc
// /usr/aarch64-linux-gnu/include/c++/13/bits/predefined_ops.h:51:   { return _Iter_less_iter(); }
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/predefined_ops.h:51:   { return _Iter_less_iter(); }
	ret	
	.cfi_endproc
.LFE554:
	.size	_ZN9__gnu_cxx5__ops16__iter_less_iterEv, .-_ZN9__gnu_cxx5__ops16__iter_less_iterEv
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.rodata
	.align	2
	.type	_ZZ4mainE1N, %object
	.size	_ZZ4mainE1N, 4
_ZZ4mainE1N:
	.word	10
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2240:
	.cfi_startproc
	sub	sp, sp, #96	//,,
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80	//,,
// problem43.cc:10: {
	adrp	x0, :got:__stack_chk_guard	// tmp157,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp157,
	ldr	x1, [x0]	// tmp248,
	str	x1, [sp, 72]	// tmp248, D.60800
	mov	x1, 0	// tmp248
// problem43.cc:13:   unsigned d[] = {0,1,2,3,4,5,6,7,8,9};
	adrp	x0, .LC0	// tmp159,
	add	x1, x0, :lo12:.LC0	// tmp158, tmp159,
	add	x0, sp, 32	// tmp160,,
	ldp	q0, q1, [x1]	// tmp162, tmp163,
	stp	q0, q1, [x0]	// tmp162, tmp163, d
	ldr	x1, [x1, 32]	// tmp164,
	str	x1, [x0, 32]	// tmp164, d
// problem43.cc:15:   unsigned long long sum = 0;
	str	xzr, [sp, 16]	//, sum
.L7:
// problem43.cc:18:     if (   (d[1]*100 + d[2]*10 + d[3]) % 2 == 0
	ldr	w1, [sp, 36]	// _1, d[1]
// problem43.cc:18:     if (   (d[1]*100 + d[2]*10 + d[3]) % 2 == 0
	mov	w0, 100	// tmp165,
	mul	w2, w1, w0	// _2, _1, tmp165
// problem43.cc:18:     if (   (d[1]*100 + d[2]*10 + d[3]) % 2 == 0
	ldr	w1, [sp, 40]	// _3, d[2]
// problem43.cc:18:     if (   (d[1]*100 + d[2]*10 + d[3]) % 2 == 0
	mov	w0, w1	// tmp166, _3
	lsl	w0, w0, 2	// tmp167, tmp166,
	add	w0, w0, w1	// tmp166, tmp166, _3
	lsl	w0, w0, 1	// tmp168, tmp166,
// problem43.cc:18:     if (   (d[1]*100 + d[2]*10 + d[3]) % 2 == 0
	add	w1, w2, w0	// _5, _2, _4
// problem43.cc:18:     if (   (d[1]*100 + d[2]*10 + d[3]) % 2 == 0
	ldr	w0, [sp, 44]	// _6, d[3]
// problem43.cc:18:     if (   (d[1]*100 + d[2]*10 + d[3]) % 2 == 0
	add	w0, w1, w0	// _7, _5, _6
// problem43.cc:18:     if (   (d[1]*100 + d[2]*10 + d[3]) % 2 == 0
	and	w0, w0, 1	// _8, _7,
// problem43.cc:18:     if (   (d[1]*100 + d[2]*10 + d[3]) % 2 == 0
	cmp	w0, 0	// _8,
	bne	.L4		//,
// problem43.cc:19:         && (d[2]*100 + d[3]*10 + d[4]) % 3 == 0
	ldr	w1, [sp, 40]	// _9, d[2]
// problem43.cc:19:         && (d[2]*100 + d[3]*10 + d[4]) % 3 == 0
	mov	w0, 100	// tmp169,
	mul	w2, w1, w0	// _10, _9, tmp169
// problem43.cc:19:         && (d[2]*100 + d[3]*10 + d[4]) % 3 == 0
	ldr	w1, [sp, 44]	// _11, d[3]
// problem43.cc:19:         && (d[2]*100 + d[3]*10 + d[4]) % 3 == 0
	mov	w0, w1	// tmp170, _11
	lsl	w0, w0, 2	// tmp171, tmp170,
	add	w0, w0, w1	// tmp170, tmp170, _11
	lsl	w0, w0, 1	// tmp172, tmp170,
// problem43.cc:19:         && (d[2]*100 + d[3]*10 + d[4]) % 3 == 0
	add	w1, w2, w0	// _13, _10, _12
// problem43.cc:19:         && (d[2]*100 + d[3]*10 + d[4]) % 3 == 0
	ldr	w0, [sp, 48]	// _14, d[4]
// problem43.cc:19:         && (d[2]*100 + d[3]*10 + d[4]) % 3 == 0
	add	w2, w1, w0	// _15, _13, _14
// problem43.cc:19:         && (d[2]*100 + d[3]*10 + d[4]) % 3 == 0
	mov	w0, 43691	// tmp174,
	movk	w0, 0xaaaa, lsl 16	// tmp174,,
	umull	x0, w2, w0	// tmp173, _15, tmp174
	lsr	x0, x0, 32	// tmp175, tmp173,
	lsr	w1, w0, 1	// _16, tmp175,
	mov	w0, w1	// tmp176, _16
	lsl	w0, w0, 1	// tmp177, tmp176,
	add	w0, w0, w1	// tmp176, tmp176, _16
	sub	w1, w2, w0	// _16, _15, tmp176
// problem43.cc:19:         && (d[2]*100 + d[3]*10 + d[4]) % 3 == 0
	cmp	w1, 0	// _16,
	bne	.L4		//,
// problem43.cc:20:         && (d[3]*100 + d[4]*10 + d[5]) % 5 == 0
	ldr	w1, [sp, 44]	// _17, d[3]
// problem43.cc:20:         && (d[3]*100 + d[4]*10 + d[5]) % 5 == 0
	mov	w0, 100	// tmp178,
	mul	w2, w1, w0	// _18, _17, tmp178
// problem43.cc:20:         && (d[3]*100 + d[4]*10 + d[5]) % 5 == 0
	ldr	w1, [sp, 48]	// _19, d[4]
// problem43.cc:20:         && (d[3]*100 + d[4]*10 + d[5]) % 5 == 0
	mov	w0, w1	// tmp179, _19
	lsl	w0, w0, 2	// tmp180, tmp179,
	add	w0, w0, w1	// tmp179, tmp179, _19
	lsl	w0, w0, 1	// tmp181, tmp179,
// problem43.cc:20:         && (d[3]*100 + d[4]*10 + d[5]) % 5 == 0
	add	w1, w2, w0	// _21, _18, _20
// problem43.cc:20:         && (d[3]*100 + d[4]*10 + d[5]) % 5 == 0
	ldr	w0, [sp, 52]	// _22, d[5]
// problem43.cc:20:         && (d[3]*100 + d[4]*10 + d[5]) % 5 == 0
	add	w2, w1, w0	// _23, _21, _22
// problem43.cc:20:         && (d[3]*100 + d[4]*10 + d[5]) % 5 == 0
	mov	w0, 52429	// tmp183,
	movk	w0, 0xcccc, lsl 16	// tmp183,,
	umull	x0, w2, w0	// tmp182, _23, tmp183
	lsr	x0, x0, 32	// tmp184, tmp182,
	lsr	w1, w0, 2	// _24, tmp184,
	mov	w0, w1	// tmp185, _24
	lsl	w0, w0, 2	// tmp186, tmp185,
	add	w0, w0, w1	// tmp185, tmp185, _24
	sub	w1, w2, w0	// _24, _23, tmp185
// problem43.cc:20:         && (d[3]*100 + d[4]*10 + d[5]) % 5 == 0
	cmp	w1, 0	// _24,
	bne	.L4		//,
// problem43.cc:21:         && (d[4]*100 + d[5]*10 + d[6]) % 7 == 0
	ldr	w1, [sp, 48]	// _25, d[4]
// problem43.cc:21:         && (d[4]*100 + d[5]*10 + d[6]) % 7 == 0
	mov	w0, 100	// tmp187,
	mul	w2, w1, w0	// _26, _25, tmp187
// problem43.cc:21:         && (d[4]*100 + d[5]*10 + d[6]) % 7 == 0
	ldr	w1, [sp, 52]	// _27, d[5]
// problem43.cc:21:         && (d[4]*100 + d[5]*10 + d[6]) % 7 == 0
	mov	w0, w1	// tmp188, _27
	lsl	w0, w0, 2	// tmp189, tmp188,
	add	w0, w0, w1	// tmp188, tmp188, _27
	lsl	w0, w0, 1	// tmp190, tmp188,
// problem43.cc:21:         && (d[4]*100 + d[5]*10 + d[6]) % 7 == 0
	add	w1, w2, w0	// _29, _26, _28
// problem43.cc:21:         && (d[4]*100 + d[5]*10 + d[6]) % 7 == 0
	ldr	w0, [sp, 56]	// _30, d[6]
// problem43.cc:21:         && (d[4]*100 + d[5]*10 + d[6]) % 7 == 0
	add	w2, w1, w0	// _31, _29, _30
// problem43.cc:21:         && (d[4]*100 + d[5]*10 + d[6]) % 7 == 0
	mov	w0, 18725	// tmp192,
	movk	w0, 0x2492, lsl 16	// tmp192,,
	umull	x0, w2, w0	// tmp191, _31, tmp192
	lsr	x0, x0, 32	// tmp193, tmp191,
	sub	w1, w2, w0	// tmp194, _31, tmp193
	lsr	w1, w1, 1	// tmp195, tmp194,
	add	w0, w1, w0	// tmp196, tmp195, tmp197
	lsr	w1, w0, 2	// _32, tmp196,
	mov	w0, w1	// tmp198, _32
	lsl	w0, w0, 3	// tmp199, tmp198,
	sub	w0, w0, w1	// tmp198, tmp198, _32
	sub	w1, w2, w0	// _32, _31, tmp198
// problem43.cc:21:         && (d[4]*100 + d[5]*10 + d[6]) % 7 == 0
	cmp	w1, 0	// _32,
	bne	.L4		//,
// problem43.cc:22:         && (d[5]*100 + d[6]*10 + d[7]) % 11 == 0
	ldr	w1, [sp, 52]	// _33, d[5]
// problem43.cc:22:         && (d[5]*100 + d[6]*10 + d[7]) % 11 == 0
	mov	w0, 100	// tmp200,
	mul	w2, w1, w0	// _34, _33, tmp200
// problem43.cc:22:         && (d[5]*100 + d[6]*10 + d[7]) % 11 == 0
	ldr	w1, [sp, 56]	// _35, d[6]
// problem43.cc:22:         && (d[5]*100 + d[6]*10 + d[7]) % 11 == 0
	mov	w0, w1	// tmp201, _35
	lsl	w0, w0, 2	// tmp202, tmp201,
	add	w0, w0, w1	// tmp201, tmp201, _35
	lsl	w0, w0, 1	// tmp203, tmp201,
// problem43.cc:22:         && (d[5]*100 + d[6]*10 + d[7]) % 11 == 0
	add	w1, w2, w0	// _37, _34, _36
// problem43.cc:22:         && (d[5]*100 + d[6]*10 + d[7]) % 11 == 0
	ldr	w0, [sp, 60]	// _38, d[7]
// problem43.cc:22:         && (d[5]*100 + d[6]*10 + d[7]) % 11 == 0
	add	w1, w1, w0	// _39, _37, _38
// problem43.cc:22:         && (d[5]*100 + d[6]*10 + d[7]) % 11 == 0
	mov	w0, 35747	// tmp205,
	movk	w0, 0xba2e, lsl 16	// tmp205,,
	umull	x0, w1, w0	// tmp204, _39, tmp205
	lsr	x0, x0, 32	// tmp206, tmp204,
	lsr	w0, w0, 3	// _40, tmp206,
	mov	w2, 11	// tmp208,
	mul	w0, w0, w2	// tmp207, _40, tmp208
	sub	w0, w1, w0	// _40, _39, tmp207
// problem43.cc:22:         && (d[5]*100 + d[6]*10 + d[7]) % 11 == 0
	cmp	w0, 0	// _40,
	bne	.L4		//,
// problem43.cc:23:         && (d[6]*100 + d[7]*10 + d[8]) % 13 == 0
	ldr	w1, [sp, 56]	// _41, d[6]
// problem43.cc:23:         && (d[6]*100 + d[7]*10 + d[8]) % 13 == 0
	mov	w0, 100	// tmp209,
	mul	w2, w1, w0	// _42, _41, tmp209
// problem43.cc:23:         && (d[6]*100 + d[7]*10 + d[8]) % 13 == 0
	ldr	w1, [sp, 60]	// _43, d[7]
// problem43.cc:23:         && (d[6]*100 + d[7]*10 + d[8]) % 13 == 0
	mov	w0, w1	// tmp210, _43
	lsl	w0, w0, 2	// tmp211, tmp210,
	add	w0, w0, w1	// tmp210, tmp210, _43
	lsl	w0, w0, 1	// tmp212, tmp210,
// problem43.cc:23:         && (d[6]*100 + d[7]*10 + d[8]) % 13 == 0
	add	w1, w2, w0	// _45, _42, _44
// problem43.cc:23:         && (d[6]*100 + d[7]*10 + d[8]) % 13 == 0
	ldr	w0, [sp, 64]	// _46, d[8]
// problem43.cc:23:         && (d[6]*100 + d[7]*10 + d[8]) % 13 == 0
	add	w1, w1, w0	// _47, _45, _46
// problem43.cc:23:         && (d[6]*100 + d[7]*10 + d[8]) % 13 == 0
	mov	w0, 60495	// tmp214,
	movk	w0, 0x4ec4, lsl 16	// tmp214,,
	umull	x0, w1, w0	// tmp213, _47, tmp214
	lsr	x0, x0, 32	// tmp215, tmp213,
	lsr	w0, w0, 2	// _48, tmp215,
	mov	w2, 13	// tmp217,
	mul	w0, w0, w2	// tmp216, _48, tmp217
	sub	w0, w1, w0	// _48, _47, tmp216
// problem43.cc:23:         && (d[6]*100 + d[7]*10 + d[8]) % 13 == 0
	cmp	w0, 0	// _48,
	bne	.L4		//,
// problem43.cc:24:         && (d[7]*100 + d[8]*10 + d[9]) % 17 == 0) {
	ldr	w1, [sp, 60]	// _49, d[7]
// problem43.cc:24:         && (d[7]*100 + d[8]*10 + d[9]) % 17 == 0) {
	mov	w0, 100	// tmp218,
	mul	w2, w1, w0	// _50, _49, tmp218
// problem43.cc:24:         && (d[7]*100 + d[8]*10 + d[9]) % 17 == 0) {
	ldr	w1, [sp, 64]	// _51, d[8]
// problem43.cc:24:         && (d[7]*100 + d[8]*10 + d[9]) % 17 == 0) {
	mov	w0, w1	// tmp219, _51
	lsl	w0, w0, 2	// tmp220, tmp219,
	add	w0, w0, w1	// tmp219, tmp219, _51
	lsl	w0, w0, 1	// tmp221, tmp219,
// problem43.cc:24:         && (d[7]*100 + d[8]*10 + d[9]) % 17 == 0) {
	add	w1, w2, w0	// _53, _50, _52
// problem43.cc:24:         && (d[7]*100 + d[8]*10 + d[9]) % 17 == 0) {
	ldr	w0, [sp, 68]	// _54, d[9]
// problem43.cc:24:         && (d[7]*100 + d[8]*10 + d[9]) % 17 == 0) {
	add	w2, w1, w0	// _55, _53, _54
// problem43.cc:24:         && (d[7]*100 + d[8]*10 + d[9]) % 17 == 0) {
	mov	w0, 61681	// tmp223,
	movk	w0, 0xf0f0, lsl 16	// tmp223,,
	umull	x0, w2, w0	// tmp222, _55, tmp223
	lsr	x0, x0, 32	// tmp224, tmp222,
	lsr	w1, w0, 4	// _56, tmp224,
	mov	w0, w1	// tmp225, _56
	lsl	w0, w0, 4	// tmp226, tmp225,
	add	w0, w0, w1	// tmp225, tmp225, _56
	sub	w1, w2, w0	// _56, _55, tmp225
// problem43.cc:24:         && (d[7]*100 + d[8]*10 + d[9]) % 17 == 0) {
	cmp	w1, 0	// _56,
	bne	.L4		//,
// problem43.cc:25:       unsigned long long p = 1;
	mov	x0, 1	// tmp227,
	str	x0, [sp, 24]	// tmp227, p
// problem43.cc:26:       for (unsigned i = 0; i < N; i++) {
	str	wzr, [sp, 12]	//, i
// problem43.cc:26:       for (unsigned i = 0; i < N; i++) {
	b	.L5		//
.L6:
// problem43.cc:27:         sum += d[N-i-1]*p;
	mov	w1, 9	// tmp228,
	ldr	w0, [sp, 12]	// tmp229, i
	sub	w0, w1, w0	// _57, tmp228, tmp229
// problem43.cc:27:         sum += d[N-i-1]*p;
	uxtw	x0, w0	// tmp230, _57
	lsl	x0, x0, 2	// tmp231, tmp230,
	add	x1, sp, 32	// tmp232,,
	ldr	w0, [x1, x0]	// _58, d[_57]
	uxtw	x1, w0	// _59, _58
// problem43.cc:27:         sum += d[N-i-1]*p;
	ldr	x0, [sp, 24]	// tmp233, p
	mul	x0, x1, x0	// _60, _59, tmp233
// problem43.cc:27:         sum += d[N-i-1]*p;
	ldr	x1, [sp, 16]	// tmp235, sum
	add	x0, x1, x0	// tmp234, tmp235, _60
	str	x0, [sp, 16]	// tmp234, sum
// problem43.cc:28:         p *= 10;
	ldr	x1, [sp, 24]	// tmp236, p
	mov	x0, x1	// tmp237, tmp236
	lsl	x0, x0, 2	// tmp238, tmp237,
	add	x0, x0, x1	// tmp237, tmp237, tmp236
	lsl	x0, x0, 1	// tmp239, tmp237,
	str	x0, [sp, 24]	// tmp237, p
// problem43.cc:26:       for (unsigned i = 0; i < N; i++) {
	ldr	w0, [sp, 12]	// tmp241, i
	add	w0, w0, 1	// tmp240, tmp241,
	str	w0, [sp, 12]	// tmp240, i
.L5:
// problem43.cc:26:       for (unsigned i = 0; i < N; i++) {
	ldr	w0, [sp, 12]	// tmp242, i
	cmp	w0, 9	// tmp242,
	bls	.L6		//,
.L4:
// problem43.cc:31:   } while (next_permutation(d, d+N));
	add	x0, sp, 32	// _61,,
	add	x0, x0, 40	// _61, _61,
	add	x2, sp, 32	// tmp243,,
	mov	x1, x0	//, _61
	mov	x0, x2	//, tmp243
	bl	_ZSt16next_permutationIPjEbT_S1_		//
	and	w0, w0, 255	// _79, tmp244
// problem43.cc:31:   } while (next_permutation(d, d+N));
	and	w0, w0, 1	// tmp245, _79,
	cmp	w0, 0	// tmp245,
	bne	.L7		//,
// problem43.cc:33:   cout << sum << endl;
	ldr	x1, [sp, 16]	//, sum
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	bl	_ZNSolsEy		//
// problem43.cc:33:   cout << sum << endl;
	adrp	x1, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_	//,
	ldr	x1, [x1, :got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]	//,
	bl	_ZNSolsEPFRSoS_E		//
// problem43.cc:35:   return 0;
	mov	w0, 0	// _84,
// problem43.cc:36: }
	mov	w1, w0	// <retval>, _84
	adrp	x0, :got:__stack_chk_guard	// tmp247,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp247,
	ldr	x3, [sp, 72]	// tmp249, D.60800
	ldr	x2, [x0]	// tmp250,
	subs	x3, x3, x2	// tmp249, tmp250
	mov	x2, 0	// tmp250
	beq	.L9		//,
	bl	__stack_chk_fail		//
.L9:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 80]	//,,
	add	sp, sp, 96	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2240:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.text
	.section	.text._ZSt16next_permutationIPjEbT_S1_,"axG",@progbits,_ZSt16next_permutationIPjEbT_S1_,comdat
	.align	2
	.weak	_ZSt16next_permutationIPjEbT_S1_
	.type	_ZSt16next_permutationIPjEbT_S1_, %function
_ZSt16next_permutationIPjEbT_S1_:
.LFB2495:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -32
	str	x0, [sp, 40]	// __first, __first
	str	x1, [sp, 32]	// __last, __last
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2993: 	(__first, __last, __gnu_cxx::__ops::__iter_less_iter());
	bl	_ZN9__gnu_cxx5__ops16__iter_less_iterEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2993: 	(__first, __last, __gnu_cxx::__ops::__iter_less_iter());
	mov	w2, w19	//, D.60755
	ldr	x1, [sp, 32]	//, __last
	ldr	x0, [sp, 40]	//, __first
	bl	_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_		//
	and	w0, w0, 255	// _6, tmp95
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2994:     }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2495:
	.size	_ZSt16next_permutationIPjEbT_S1_, .-_ZSt16next_permutationIPjEbT_S1_
	.section	.text._ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_,"axG",@progbits,_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_,comdat
	.align	2
	.weak	_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	.type	_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_, %function
_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_:
.LFB2598:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	stp	x19, x20, [sp, 16]	//,,
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	str	x0, [sp, 56]	// __first, __first
	str	x1, [sp, 48]	// __last, __last
	strb	w2, [sp, 40]	// __comp, __comp
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2934:       if (__first == __last)
	ldr	x0, [sp, 56]	// __first.1_1, __first
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2934:       if (__first == __last)
	ldr	x1, [sp, 48]	// tmp106, __last
	cmp	x1, x0	// tmp106, __first.1_1
	bne	.L13		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2935: 	return false;
	mov	w0, 0	// _7,
	b	.L14		//
.L13:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2936:       _BidirectionalIterator __i = __first;
	ldr	x0, [sp, 56]	// tmp107, __first
	str	x0, [sp, 72]	// tmp107, __i
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2937:       ++__i;
	ldr	x0, [sp, 72]	// tmp109, __i
	add	x0, x0, 4	// tmp108, tmp109,
	str	x0, [sp, 72]	// tmp108, __i
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2938:       if (__i == __last)
	ldr	x1, [sp, 72]	// tmp110, __i
	ldr	x0, [sp, 48]	// tmp111, __last
	cmp	x1, x0	// tmp110, tmp111
	bne	.L15		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2939: 	return false;
	mov	w0, 0	// _7,
	b	.L14		//
.L15:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2940:       __i = __last;
	ldr	x0, [sp, 48]	// tmp112, __last
	str	x0, [sp, 72]	// tmp112, __i
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2941:       --__i;
	ldr	x0, [sp, 72]	// tmp114, __i
	sub	x0, x0, #4	// tmp113, tmp114,
	str	x0, [sp, 72]	// tmp113, __i
.L21:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2945: 	  _BidirectionalIterator __ii = __i;
	ldr	x0, [sp, 72]	// tmp115, __i
	str	x0, [sp, 88]	// tmp115, __ii
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2946: 	  --__i;
	ldr	x0, [sp, 72]	// tmp117, __i
	sub	x0, x0, #4	// tmp116, tmp117,
	str	x0, [sp, 72]	// tmp116, __i
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2947: 	  if (__comp(__i, __ii))
	add	x0, sp, 40	// tmp118,,
	ldr	x2, [sp, 88]	//, __ii
	ldr	x1, [sp, 72]	//, __i
	bl	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_		//
	and	w0, w0, 255	// retval.2_20, tmp119
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2947: 	  if (__comp(__i, __ii))
	and	w0, w0, 1	// tmp120, retval.2_20,
	cmp	w0, 0	// tmp120,
	beq	.L16		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2949: 	      _BidirectionalIterator __j = __last;
	ldr	x0, [sp, 48]	// tmp121, __last
	str	x0, [sp, 80]	// tmp121, __j
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2950: 	      while (!__comp(__i, --__j))
	nop	
.L17:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2950: 	      while (!__comp(__i, --__j))
	ldr	x0, [sp, 80]	// tmp123, __j
	sub	x0, x0, #4	// tmp122, tmp123,
	str	x0, [sp, 80]	// tmp122, __j
	add	x0, sp, 40	// tmp124,,
	ldr	x2, [sp, 80]	//, __j
	ldr	x1, [sp, 72]	//, __i
	bl	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_		//
	and	w0, w0, 255	// _2, tmp125
	eor	w0, w0, 1	// tmp126, _2,
	and	w0, w0, 255	// retval.3_26, tmp126
	and	w0, w0, 1	// tmp127, retval.3_26,
	cmp	w0, 0	// tmp127,
	bne	.L17		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2952: 	      std::iter_swap(__i, __j);
	ldr	x1, [sp, 80]	//, __j
	ldr	x0, [sp, 72]	//, __i
	bl	_ZSt9iter_swapIPjS0_EvT_T0_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator_base_types.h:240:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2953: 	      std::__reverse(__ii, __last,
	mov	w2, w20	//, D.60768
	ldr	x1, [sp, 48]	//, __last
	ldr	x0, [sp, 88]	//, __ii
	bl	_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2955: 	      return true;
	mov	w0, 1	// _7,
	b	.L14		//
.L16:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2957: 	  if (__i == __first)
	ldr	x0, [sp, 56]	// __first.4_3, __first
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2957: 	  if (__i == __first)
	ldr	x1, [sp, 72]	// tmp128, __i
	cmp	x1, x0	// tmp128, __first.4_3
	bne	.L21		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2959: 	      std::__reverse(__first, __last,
	ldr	x0, [sp, 56]	// __first.5_4, __first
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator_base_types.h:240:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2959: 	      std::__reverse(__first, __last,
	mov	w2, w19	//, D.60771
	ldr	x1, [sp, 48]	//, __last
	bl	_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2961: 	      return false;
	mov	w0, 0	// _7,
.L14:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2964:     }
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2598:
	.size	_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_, .-_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	.section	.text._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_,"axG",@progbits,_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_
	.type	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_, %function
_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_:
.LFB2666:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]	// this, this
	str	x1, [sp, 16]	// __it1, __it1
	str	x2, [sp, 8]	// __it2, __it2
// /usr/aarch64-linux-gnu/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	ldr	x0, [sp, 16]	// tmp96, __it1
	ldr	w1, [x0]	// _1, *__it1_4(D)
	ldr	x0, [sp, 8]	// tmp97, __it2
	ldr	w0, [x0]	// _2, *__it2_5(D)
// /usr/aarch64-linux-gnu/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	cmp	w1, w0	// _1, _2
	cset	w0, cc	// tmp99,
	and	w0, w0, 255	// _6, tmp98
// /usr/aarch64-linux-gnu/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2666:
	.size	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_, .-_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_
	.section	.text._ZSt9iter_swapIPjS0_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIPjS0_EvT_T0_,comdat
	.align	2
	.weak	_ZSt9iter_swapIPjS0_EvT_T0_
	.type	_ZSt9iter_swapIPjS0_EvT_T0_, %function
_ZSt9iter_swapIPjS0_EvT_T0_:
.LFB2667:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// __a, __a
	str	x1, [sp, 16]	// __b, __b
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:185:       swap(*__a, *__b);
	ldr	x1, [sp, 16]	//, __b
	ldr	x0, [sp, 24]	//, __a
	bl	_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:187:     }
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2667:
	.size	_ZSt9iter_swapIPjS0_EvT_T0_, .-_ZSt9iter_swapIPjS0_EvT_T0_
	.section	.text._ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag,"axG",@progbits,_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag,comdat
	.align	2
	.weak	_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag
	.type	_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag, %function
_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag:
.LFB2670:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// __first, __first
	str	x1, [sp, 32]	// __last, __last
	strb	w2, [sp, 24]	// D.60310, D.60310
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1105:       if (__first == __last)
	ldr	x1, [sp, 40]	// tmp92, __first
	ldr	x0, [sp, 32]	// tmp93, __last
	cmp	x1, x0	// tmp92, tmp93
	beq	.L30		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1107:       --__last;
	ldr	x0, [sp, 32]	// tmp95, __last
	sub	x0, x0, #4	// tmp94, tmp95,
	str	x0, [sp, 32]	// tmp94, __last
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1108:       while (__first < __last)
	b	.L28		//
.L29:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1110: 	  std::iter_swap(__first, __last);
	ldr	x1, [sp, 32]	//, __last
	ldr	x0, [sp, 40]	//, __first
	bl	_ZSt9iter_swapIPjS0_EvT_T0_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1111: 	  ++__first;
	ldr	x0, [sp, 40]	// tmp97, __first
	add	x0, x0, 4	// tmp96, tmp97,
	str	x0, [sp, 40]	// tmp96, __first
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1112: 	  --__last;
	ldr	x0, [sp, 32]	// tmp99, __last
	sub	x0, x0, #4	// tmp98, tmp99,
	str	x0, [sp, 32]	// tmp98, __last
.L28:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1108:       while (__first < __last)
	ldr	x1, [sp, 40]	// tmp100, __first
	ldr	x0, [sp, 32]	// tmp101, __last
	cmp	x1, x0	// tmp100, tmp101
	bcc	.L29		//,
	b	.L25		//
.L30:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1106: 	return;
	nop	
.L25:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1114:     }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2670:
	.size	_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag, .-_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag
	.section	.text._ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.align	2
	.weak	_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, %function
_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB2724:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, 32]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 32	//,,
	str	x0, [sp, 8]	// __a, __a
	str	x1, [sp]	// __b, __b
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:189:     swap(_Tp& __a, _Tp& __b)
	adrp	x0, :got:__stack_chk_guard	// tmp98,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp98,
	ldr	x1, [x0]	// tmp103,
	str	x1, [sp, 24]	// tmp103, D.60803
	mov	x1, 0	// tmp103
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:197:       _Tp __tmp = _GLIBCXX_MOVE(__a);
	ldr	x0, [sp, 8]	//, __a
	bl	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:197:       _Tp __tmp = _GLIBCXX_MOVE(__a);
	ldr	w0, [x0]	// _2, *_1
	str	w0, [sp, 20]	// _2, __tmp
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:198:       __a = _GLIBCXX_MOVE(__b);
	ldr	x0, [sp]	//, __b
	bl	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:198:       __a = _GLIBCXX_MOVE(__b);
	ldr	w1, [x0]	// _4, *_3
	ldr	x0, [sp, 8]	// tmp99, __a
	str	w1, [x0]	// _4, *__a_8(D)
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:199:       __b = _GLIBCXX_MOVE(__tmp);
	add	x0, sp, 20	// tmp100,,
	bl	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:199:       __b = _GLIBCXX_MOVE(__tmp);
	ldr	w1, [x0]	// _6, *_5
	ldr	x0, [sp]	// tmp101, __b
	str	w1, [x0]	// _6, *__b_11(D)
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:200:     }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp102,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp102,
	ldr	x2, [sp, 24]	// tmp104, D.60803
	ldr	x1, [x0]	// tmp105,
	subs	x2, x2, x1	// tmp104, tmp105
	mov	x1, 0	// tmp105
	beq	.L32		//,
	bl	__stack_chk_fail		//
.L32:
	ldp	x29, x30, [sp, 32]	//,,
	add	sp, sp, 48	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2724:
	.size	_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.align	2
	.weak	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_, %function
_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_:
.LFB2745:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// __t, __t
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:98:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	ldr	x0, [sp, 8]	// _2, __t
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:98:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2745:
	.size	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_
	.section	.rodata
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, %object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, %object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, %object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
