	.arch armv8-a
	.file	"problem41.cc"
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
	.align	3
	.type	_ZZ4mainE1N, %object
	.size	_ZZ4mainE1N, 8
_ZZ4mainE1N:
	.xword	9
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2268:
	.cfi_startproc
	sub	sp, sp, #96	//,,
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 64]	//,,
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 64	//,,
	str	x19, [sp, 80]	//,
	.cfi_offset 19, -16
// problem41.cc:21: {
	adrp	x0, :got:__stack_chk_guard	// tmp108,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp108,
	ldr	x1, [x0]	// tmp127,
	str	x1, [sp, 56]	// tmp127, D.61407
	mov	x1, 0	// tmp127
// problem41.cc:24:   int a[] = {9,8,7,6,5,4,3,2,1};
	adrp	x0, .LC0	// tmp110,
	add	x1, x0, :lo12:.LC0	// tmp109, tmp110,
	add	x0, sp, 16	// tmp111,,
	ldp	q0, q1, [x1]	// tmp113, tmp114,
	stp	q0, q1, [x0]	// tmp113, tmp114, a
	ldr	w1, [x1, 32]	// tmp115,
	str	w1, [x0, 32]	// tmp115, a
// problem41.cc:27:   for (unsigned i = 0; i < N; i++) {
	str	wzr, [sp, 8]	//, i
// problem41.cc:27:   for (unsigned i = 0; i < N; i++) {
	b	.L4		//
.L7:
// problem41.cc:29:       int n = accumulate(a+i, a+N, 0, func<int>());
	ldr	w0, [sp, 8]	// _1, i
// problem41.cc:29:       int n = accumulate(a+i, a+N, 0, func<int>());
	lsl	x0, x0, 2	// _2, _1,
// problem41.cc:29:       int n = accumulate(a+i, a+N, 0, func<int>());
	add	x1, sp, 16	// tmp116,,
	add	x4, x1, x0	// _3, tmp116, _2
	add	x0, sp, 16	// _4,,
	add	x0, x0, 36	// _4, _4,
	mov	w3, w19	//, D.61333
	mov	w2, 0	//,
	mov	x1, x0	//, _4
	mov	x0, x4	//, _3
	bl	_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_		//
// problem41.cc:29:       int n = accumulate(a+i, a+N, 0, func<int>());
	str	w0, [sp, 12]	// _20, n
// problem41.cc:30:       if (is_prime(n)) {
	ldr	w0, [sp, 12]	// n.1_5, n
	bl	_ZL8is_primej		//
	and	w0, w0, 255	// retval.0_23, tmp117
// problem41.cc:30:       if (is_prime(n)) {
	and	w0, w0, 1	// tmp118, retval.0_23,
	cmp	w0, 0	// tmp118,
	beq	.L5		//,
// problem41.cc:31:         cout << n << endl;
	ldr	w1, [sp, 12]	//, n
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	bl	_ZNSolsEi		//
// problem41.cc:31:         cout << n << endl;
	adrp	x1, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_	//,
	ldr	x1, [x1, :got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]	//,
	bl	_ZNSolsEPFRSoS_E		//
// problem41.cc:32:         goto FINISH;
	b	.L6		//
.L5:
// problem41.cc:34:     } while (prev_permutation(a+i, a+N));
	ldr	w0, [sp, 8]	// _7, i
// problem41.cc:34:     } while (prev_permutation(a+i, a+N));
	lsl	x0, x0, 2	// _8, _7,
// problem41.cc:34:     } while (prev_permutation(a+i, a+N));
	add	x1, sp, 16	// tmp119,,
	add	x2, x1, x0	// _9, tmp119, _8
	add	x0, sp, 16	// _10,,
	add	x0, x0, 36	// _10, _10,
	mov	x1, x0	//, _10
	mov	x0, x2	//, _9
	bl	_ZSt16prev_permutationIPiEbT_S1_		//
	and	w0, w0, 255	// _25, tmp120
// problem41.cc:34:     } while (prev_permutation(a+i, a+N));
	and	w0, w0, 1	// tmp121, _25,
	cmp	w0, 0	// tmp121,
	bne	.L7		//,
// problem41.cc:27:   for (unsigned i = 0; i < N; i++) {
	ldr	w0, [sp, 8]	// tmp123, i
	add	w0, w0, 1	// tmp122, tmp123,
	str	w0, [sp, 8]	// tmp122, i
.L4:
// problem41.cc:27:   for (unsigned i = 0; i < N; i++) {
	ldr	w0, [sp, 8]	// tmp124, i
	cmp	w0, 8	// tmp124,
	bls	.L7		//,
// problem41.cc:37: FINISH:
	nop	
.L6:
// problem41.cc:38:   return 0;
	mov	w0, 0	// _32,
// problem41.cc:39: }
	mov	w1, w0	// <retval>, _32
	adrp	x0, :got:__stack_chk_guard	// tmp126,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp126,
	ldr	x3, [sp, 56]	// tmp128, D.61407
	ldr	x2, [x0]	// tmp129,
	subs	x3, x3, x2	// tmp128, tmp129
	mov	x2, 0	// tmp129
	beq	.L9		//,
	bl	__stack_chk_fail		//
.L9:
	mov	w0, w1	//, <retval>
	ldr	x19, [sp, 80]	//,
	ldp	x29, x30, [sp, 64]	//,,
	add	sp, sp, 96	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2268:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	9
	.word	8
	.word	7
	.word	6
	.word	5
	.word	4
	.word	3
	.word	2
	.word	1
	.text
	.align	2
	.type	_ZL8is_primej, %function
_ZL8is_primej:
.LFB2269:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// n, n
// problem41.cc:43:   if (n == 1) {
	ldr	w0, [sp, 12]	// tmp97, n
	cmp	w0, 1	// tmp97,
	bne	.L11		//,
// problem41.cc:44:     return false;
	mov	w0, 0	// _5,
	b	.L12		//
.L11:
// problem41.cc:46:   else if (n % 2 == 0) {
	ldr	w0, [sp, 12]	// tmp98, n
	and	w0, w0, 1	// _1, tmp98,
// problem41.cc:46:   else if (n % 2 == 0) {
	cmp	w0, 0	// _1,
	bne	.L13		//,
// problem41.cc:47:     return n == 2;
	ldr	w0, [sp, 12]	// tmp100, n
	cmp	w0, 2	// tmp100,
	cset	w0, eq	// tmp101,
	and	w0, w0, 255	// _5, tmp99
	b	.L12		//
.L13:
// problem41.cc:50:     for (unsigned d = 3; d*d < n; d += 2) {
	mov	w0, 3	// tmp102,
	str	w0, [sp, 28]	// tmp102, d
// problem41.cc:50:     for (unsigned d = 3; d*d < n; d += 2) {
	b	.L14		//
.L16:
// problem41.cc:51:       if (n % d == 0) {
	ldr	w0, [sp, 12]	// tmp103, n
	ldr	w1, [sp, 28]	// tmp115, d
	udiv	w2, w0, w1	// tmp114, tmp103, tmp115
	ldr	w1, [sp, 28]	// tmp117, d
	mul	w1, w2, w1	// tmp116, tmp114, tmp117
	sub	w0, w0, w1	// _2, tmp103, tmp116
// problem41.cc:51:       if (n % d == 0) {
	cmp	w0, 0	// _2,
	bne	.L15		//,
// problem41.cc:52:         return false;
	mov	w0, 0	// _5,
	b	.L12		//
.L15:
// problem41.cc:50:     for (unsigned d = 3; d*d < n; d += 2) {
	ldr	w0, [sp, 28]	// tmp119, d
	add	w0, w0, 2	// tmp118, tmp119,
	str	w0, [sp, 28]	// tmp118, d
.L14:
// problem41.cc:50:     for (unsigned d = 3; d*d < n; d += 2) {
	ldr	w0, [sp, 28]	// tmp120, d
	mul	w0, w0, w0	// _3, tmp120, tmp120
// problem41.cc:50:     for (unsigned d = 3; d*d < n; d += 2) {
	ldr	w1, [sp, 12]	// tmp121, n
	cmp	w1, w0	// tmp121, _3
	bhi	.L16		//,
// problem41.cc:55:     return true;
	mov	w0, 1	// _5,
.L12:
// problem41.cc:57: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2269:
	.size	_ZL8is_primej, .-_ZL8is_primej
	.section	.text._ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_,"axG",@progbits,_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_,comdat
	.align	2
	.weak	_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_
	.type	_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_, %function
_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_:
.LFB2524:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// __first, __first
	str	x1, [sp, 32]	// __last, __last
	str	w2, [sp, 28]	// __init, __init
	strb	w3, [sp, 24]	// __binary_op, __binary_op
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_numeric.h:168:       for (; __first != __last; ++__first)
	b	.L18		//
.L19:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_numeric.h:169: 	__init = __binary_op(_GLIBCXX_MOVE_IF_20(__init), *__first);
	ldr	x0, [sp, 40]	// tmp95, __first
	ldr	w1, [x0]	// _1, *__first_2
	add	x0, sp, 24	// tmp96,,
	mov	w2, w1	//, _1
	ldr	w1, [sp, 28]	//, __init
	bl	_ZNK4funcIiEclEii		//
	str	w0, [sp, 28]	//, __init
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_numeric.h:168:       for (; __first != __last; ++__first)
	ldr	x0, [sp, 40]	// tmp98, __first
	add	x0, x0, 4	// tmp97, tmp98,
	str	x0, [sp, 40]	// tmp97, __first
.L18:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_numeric.h:168:       for (; __first != __last; ++__first)
	ldr	x1, [sp, 40]	// tmp99, __first
	ldr	x0, [sp, 32]	// tmp100, __last
	cmp	x1, x0	// tmp99, tmp100
	bne	.L19		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_numeric.h:170:       return __init;
	ldr	w0, [sp, 28]	// _9, __init
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_numeric.h:171:     }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2524:
	.size	_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_, .-_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_
	.section	.text._ZSt16prev_permutationIPiEbT_S1_,"axG",@progbits,_ZSt16prev_permutationIPiEbT_S1_,comdat
	.align	2
	.weak	_ZSt16prev_permutationIPiEbT_S1_
	.type	_ZSt16prev_permutationIPiEbT_S1_, %function
_ZSt16prev_permutationIPiEbT_S1_:
.LFB2527:
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
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3096: 				     __gnu_cxx::__ops::__iter_less_iter());
	bl	_ZN9__gnu_cxx5__ops16__iter_less_iterEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3095:       return std::__prev_permutation(__first, __last,
	mov	w2, w19	//, D.61351
	ldr	x1, [sp, 32]	//, __last
	ldr	x0, [sp, 40]	//, __first
	bl	_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_		//
	and	w0, w0, 255	// _6, tmp95
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3097:     }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2527:
	.size	_ZSt16prev_permutationIPiEbT_S1_, .-_ZSt16prev_permutationIPiEbT_S1_
	.section	.text._ZNK4funcIiEclEii,"axG",@progbits,_ZNK4funcIiEclEii,comdat
	.align	2
	.weak	_ZNK4funcIiEclEii
	.type	_ZNK4funcIiEclEii, %function
_ZNK4funcIiEclEii:
.LFB2627:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
	str	w1, [sp, 4]	// a, a
	str	w2, [sp]	// b, b
// problem41.cc:14:     return 10*a + b;
	ldr	w1, [sp, 4]	// tmp95, a
	mov	w0, w1	// tmp96, tmp95
	lsl	w0, w0, 2	// tmp97, tmp96,
	add	w0, w0, w1	// tmp96, tmp96, tmp95
	lsl	w0, w0, 1	// tmp98, tmp96,
	mov	w1, w0	// _1, tmp96
// problem41.cc:14:     return 10*a + b;
	ldr	w0, [sp]	// tmp99, b
	add	w0, w1, w0	// _4, _1, tmp99
// problem41.cc:15:   }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2627:
	.size	_ZNK4funcIiEclEii, .-_ZNK4funcIiEclEii
	.section	.text._ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_,"axG",@progbits,_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_,comdat
	.align	2
	.weak	_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	.type	_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_, %function
_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_:
.LFB2630:
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
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3036:       if (__first == __last)
	ldr	x0, [sp, 56]	// __first.3_1, __first
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3036:       if (__first == __last)
	ldr	x1, [sp, 48]	// tmp106, __last
	cmp	x1, x0	// tmp106, __first.3_1
	bne	.L26		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3037: 	return false;
	mov	w0, 0	// _7,
	b	.L27		//
.L26:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3038:       _BidirectionalIterator __i = __first;
	ldr	x0, [sp, 56]	// tmp107, __first
	str	x0, [sp, 72]	// tmp107, __i
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3039:       ++__i;
	ldr	x0, [sp, 72]	// tmp109, __i
	add	x0, x0, 4	// tmp108, tmp109,
	str	x0, [sp, 72]	// tmp108, __i
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3040:       if (__i == __last)
	ldr	x1, [sp, 72]	// tmp110, __i
	ldr	x0, [sp, 48]	// tmp111, __last
	cmp	x1, x0	// tmp110, tmp111
	bne	.L28		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3041: 	return false;
	mov	w0, 0	// _7,
	b	.L27		//
.L28:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3042:       __i = __last;
	ldr	x0, [sp, 48]	// tmp112, __last
	str	x0, [sp, 72]	// tmp112, __i
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3043:       --__i;
	ldr	x0, [sp, 72]	// tmp114, __i
	sub	x0, x0, #4	// tmp113, tmp114,
	str	x0, [sp, 72]	// tmp113, __i
.L34:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3047: 	  _BidirectionalIterator __ii = __i;
	ldr	x0, [sp, 72]	// tmp115, __i
	str	x0, [sp, 88]	// tmp115, __ii
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3048: 	  --__i;
	ldr	x0, [sp, 72]	// tmp117, __i
	sub	x0, x0, #4	// tmp116, tmp117,
	str	x0, [sp, 72]	// tmp116, __i
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3049: 	  if (__comp(__ii, __i))
	add	x0, sp, 40	// tmp118,,
	ldr	x2, [sp, 72]	//, __i
	ldr	x1, [sp, 88]	//, __ii
	bl	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_		//
	and	w0, w0, 255	// retval.4_20, tmp119
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3049: 	  if (__comp(__ii, __i))
	and	w0, w0, 1	// tmp120, retval.4_20,
	cmp	w0, 0	// tmp120,
	beq	.L29		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3051: 	      _BidirectionalIterator __j = __last;
	ldr	x0, [sp, 48]	// tmp121, __last
	str	x0, [sp, 80]	// tmp121, __j
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3052: 	      while (!__comp(--__j, __i))
	nop	
.L30:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3052: 	      while (!__comp(--__j, __i))
	ldr	x0, [sp, 80]	// tmp123, __j
	sub	x0, x0, #4	// tmp122, tmp123,
	str	x0, [sp, 80]	// tmp122, __j
	add	x0, sp, 40	// tmp124,,
	ldr	x2, [sp, 72]	//, __i
	ldr	x1, [sp, 80]	//, __j
	bl	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_		//
	and	w0, w0, 255	// _2, tmp125
	eor	w0, w0, 1	// tmp126, _2,
	and	w0, w0, 255	// retval.5_26, tmp126
	and	w0, w0, 1	// tmp127, retval.5_26,
	cmp	w0, 0	// tmp127,
	bne	.L30		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3054: 	      std::iter_swap(__i, __j);
	ldr	x1, [sp, 80]	//, __j
	ldr	x0, [sp, 72]	//, __i
	bl	_ZSt9iter_swapIPiS0_EvT_T0_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator_base_types.h:240:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3055: 	      std::__reverse(__ii, __last,
	mov	w2, w20	//, D.61364
	ldr	x1, [sp, 48]	//, __last
	ldr	x0, [sp, 88]	//, __ii
	bl	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3057: 	      return true;
	mov	w0, 1	// _7,
	b	.L27		//
.L29:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3059: 	  if (__i == __first)
	ldr	x0, [sp, 56]	// __first.6_3, __first
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3059: 	  if (__i == __first)
	ldr	x1, [sp, 72]	// tmp128, __i
	cmp	x1, x0	// tmp128, __first.6_3
	bne	.L34		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3061: 	      std::__reverse(__first, __last,
	ldr	x0, [sp, 56]	// __first.7_4, __first
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator_base_types.h:240:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3061: 	      std::__reverse(__first, __last,
	mov	w2, w19	//, D.61367
	ldr	x1, [sp, 48]	//, __last
	bl	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3063: 	      return false;
	mov	w0, 0	// _7,
.L27:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:3066:     }
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2630:
	.size	_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_, .-_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	.section	.text._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_,"axG",@progbits,_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	.type	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_, %function
_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_:
.LFB2697:
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
	cset	w0, lt	// tmp99,
	and	w0, w0, 255	// _6, tmp98
// /usr/aarch64-linux-gnu/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2697:
	.size	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_, .-_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	.section	.text._ZSt9iter_swapIPiS0_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIPiS0_EvT_T0_,comdat
	.align	2
	.weak	_ZSt9iter_swapIPiS0_EvT_T0_
	.type	_ZSt9iter_swapIPiS0_EvT_T0_, %function
_ZSt9iter_swapIPiS0_EvT_T0_:
.LFB2698:
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
	bl	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:187:     }
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2698:
	.size	_ZSt9iter_swapIPiS0_EvT_T0_, .-_ZSt9iter_swapIPiS0_EvT_T0_
	.section	.text._ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag,"axG",@progbits,_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag,comdat
	.align	2
	.weak	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag
	.type	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag, %function
_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag:
.LFB2701:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// __first, __first
	str	x1, [sp, 32]	// __last, __last
	strb	w2, [sp, 24]	// D.60914, D.60914
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1105:       if (__first == __last)
	ldr	x1, [sp, 40]	// tmp92, __first
	ldr	x0, [sp, 32]	// tmp93, __last
	cmp	x1, x0	// tmp92, tmp93
	beq	.L43		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1107:       --__last;
	ldr	x0, [sp, 32]	// tmp95, __last
	sub	x0, x0, #4	// tmp94, tmp95,
	str	x0, [sp, 32]	// tmp94, __last
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1108:       while (__first < __last)
	b	.L41		//
.L42:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1110: 	  std::iter_swap(__first, __last);
	ldr	x1, [sp, 32]	//, __last
	ldr	x0, [sp, 40]	//, __first
	bl	_ZSt9iter_swapIPiS0_EvT_T0_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1111: 	  ++__first;
	ldr	x0, [sp, 40]	// tmp97, __first
	add	x0, x0, 4	// tmp96, tmp97,
	str	x0, [sp, 40]	// tmp96, __first
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1112: 	  --__last;
	ldr	x0, [sp, 32]	// tmp99, __last
	sub	x0, x0, #4	// tmp98, tmp99,
	str	x0, [sp, 32]	// tmp98, __last
.L41:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1108:       while (__first < __last)
	ldr	x1, [sp, 40]	// tmp100, __first
	ldr	x0, [sp, 32]	// tmp101, __last
	cmp	x1, x0	// tmp100, tmp101
	bcc	.L42		//,
	b	.L38		//
.L43:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1106: 	return;
	nop	
.L38:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1114:     }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2701:
	.size	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag, .-_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag
	.section	.text._ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.align	2
	.weak	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, %function
_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB2754:
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
	str	x1, [sp, 24]	// tmp103, D.61411
	mov	x1, 0	// tmp103
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:197:       _Tp __tmp = _GLIBCXX_MOVE(__a);
	ldr	x0, [sp, 8]	//, __a
	bl	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:197:       _Tp __tmp = _GLIBCXX_MOVE(__a);
	ldr	w0, [x0]	// _2, *_1
	str	w0, [sp, 20]	// _2, __tmp
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:198:       __a = _GLIBCXX_MOVE(__b);
	ldr	x0, [sp]	//, __b
	bl	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:198:       __a = _GLIBCXX_MOVE(__b);
	ldr	w1, [x0]	// _4, *_3
	ldr	x0, [sp, 8]	// tmp99, __a
	str	w1, [x0]	// _4, *__a_8(D)
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:199:       __b = _GLIBCXX_MOVE(__tmp);
	add	x0, sp, 20	// tmp100,,
	bl	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:199:       __b = _GLIBCXX_MOVE(__tmp);
	ldr	w1, [x0]	// _6, *_5
	ldr	x0, [sp]	// tmp101, __b
	str	w1, [x0]	// _6, *__b_11(D)
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:200:     }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp102,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp102,
	ldr	x2, [sp, 24]	// tmp104, D.61411
	ldr	x1, [x0]	// tmp105,
	subs	x2, x2, x1	// tmp104, tmp105
	mov	x1, 0	// tmp105
	beq	.L45		//,
	bl	__stack_chk_fail		//
.L45:
	ldp	x29, x30, [sp, 32]	//,,
	add	sp, sp, 48	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2754:
	.size	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.align	2
	.weak	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, %function
_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_:
.LFB2775:
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
.LFE2775:
	.size	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
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
