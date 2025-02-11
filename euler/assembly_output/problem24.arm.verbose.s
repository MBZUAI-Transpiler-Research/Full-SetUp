	.arch armv8-a
	.file	"problem24.cc"
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
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2240:
	.cfi_startproc
	sub	sp, sp, #80	//,,
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64	//,,
// problem24.cc:12: {
	adrp	x0, :got:__stack_chk_guard	// tmp96,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp96,
	ldr	x1, [x0]	// tmp117,
	str	x1, [sp, 56]	// tmp117, D.60778
	mov	x1, 0	// tmp117
// problem24.cc:15:   int a[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
	adrp	x0, .LC0	// tmp98,
	add	x1, x0, :lo12:.LC0	// tmp97, tmp98,
	add	x0, sp, 16	// tmp99,,
	ldp	q0, q1, [x1]	// tmp101, tmp102,
	stp	q0, q1, [x0]	// tmp101, tmp102, a
	ldr	x1, [x1, 32]	// tmp103,
	str	x1, [x0, 32]	// tmp103, a
// problem24.cc:18:   for (i = 0; i <= N; i++) {
	str	wzr, [sp, 12]	//, i
// problem24.cc:18:   for (i = 0; i <= N; i++) {
	b	.L4		//
.L5:
// problem24.cc:19:     next_permutation(a, a + sizeof a/sizeof *a);
	add	x0, sp, 16	// _1,,
	add	x0, x0, 40	// _1, _1,
	add	x2, sp, 16	// tmp104,,
	mov	x1, x0	//, _1
	mov	x0, x2	//, tmp104
	bl	_ZSt16next_permutationIPiEbT_S1_		//
// problem24.cc:18:   for (i = 0; i <= N; i++) {
	ldr	w0, [sp, 12]	// tmp106, i
	add	w0, w0, 1	// tmp105, tmp106,
	str	w0, [sp, 12]	// tmp105, i
.L4:
// problem24.cc:18:   for (i = 0; i <= N; i++) {
	ldr	w1, [sp, 12]	// tmp107, i
	mov	w0, 16960	// tmp108,
	movk	w0, 0xf, lsl 16	// tmp108,,
	cmp	w1, w0	// tmp107, tmp108
	ble	.L5		//,
// problem24.cc:21:   for (i = 0; i < 10; i++) {
	str	wzr, [sp, 12]	//, i
// problem24.cc:21:   for (i = 0; i < 10; i++) {
	b	.L6		//
.L7:
// problem24.cc:22:     cout << a[i];
	ldrsw	x0, [sp, 12]	// tmp109, i
	lsl	x0, x0, 2	// tmp110, tmp109,
	add	x1, sp, 16	// tmp111,,
	ldr	w0, [x1, x0]	// _2, a[i_4]
	mov	w1, w0	//, _2
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	bl	_ZNSolsEi		//
// problem24.cc:21:   for (i = 0; i < 10; i++) {
	ldr	w0, [sp, 12]	// tmp113, i
	add	w0, w0, 1	// tmp112, tmp113,
	str	w0, [sp, 12]	// tmp112, i
.L6:
// problem24.cc:21:   for (i = 0; i < 10; i++) {
	ldr	w0, [sp, 12]	// tmp114, i
	cmp	w0, 9	// tmp114,
	ble	.L7		//,
// problem24.cc:24:   cout << endl;
	adrp	x1, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_	//,
	ldr	x1, [x1, :got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]	//,
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	bl	_ZNSolsEPFRSoS_E		//
// problem24.cc:26:   return 0;
	mov	w0, 0	// _13,
// problem24.cc:27: }
	mov	w1, w0	// <retval>, _13
	adrp	x0, :got:__stack_chk_guard	// tmp116,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp116,
	ldr	x3, [sp, 56]	// tmp118, D.60778
	ldr	x2, [x0]	// tmp119,
	subs	x3, x3, x2	// tmp118, tmp119
	mov	x2, 0	// tmp119
	beq	.L9		//,
	bl	__stack_chk_fail		//
.L9:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 64]	//,,
	add	sp, sp, 80	//,,
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
	.section	.text._ZSt16next_permutationIPiEbT_S1_,"axG",@progbits,_ZSt16next_permutationIPiEbT_S1_,comdat
	.align	2
	.weak	_ZSt16next_permutationIPiEbT_S1_
	.type	_ZSt16next_permutationIPiEbT_S1_, %function
_ZSt16next_permutationIPiEbT_S1_:
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
	mov	w2, w19	//, D.60733
	ldr	x1, [sp, 32]	//, __last
	ldr	x0, [sp, 40]	//, __first
	bl	_ZSt18__next_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_		//
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
	.size	_ZSt16next_permutationIPiEbT_S1_, .-_ZSt16next_permutationIPiEbT_S1_
	.section	.text._ZSt18__next_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_,"axG",@progbits,_ZSt18__next_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_,comdat
	.align	2
	.weak	_ZSt18__next_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	.type	_ZSt18__next_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_, %function
_ZSt18__next_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_:
.LFB2597:
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
	ldr	x0, [sp, 56]	// __first.0_1, __first
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2934:       if (__first == __last)
	ldr	x1, [sp, 48]	// tmp106, __last
	cmp	x1, x0	// tmp106, __first.0_1
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
	bl	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_		//
	and	w0, w0, 255	// retval.1_20, tmp119
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2947: 	  if (__comp(__i, __ii))
	and	w0, w0, 1	// tmp120, retval.1_20,
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
	bl	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_		//
	and	w0, w0, 255	// _2, tmp125
	eor	w0, w0, 1	// tmp126, _2,
	and	w0, w0, 255	// retval.2_26, tmp126
	and	w0, w0, 1	// tmp127, retval.2_26,
	cmp	w0, 0	// tmp127,
	bne	.L17		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2952: 	      std::iter_swap(__i, __j);
	ldr	x1, [sp, 80]	//, __j
	ldr	x0, [sp, 72]	//, __i
	bl	_ZSt9iter_swapIPiS0_EvT_T0_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator_base_types.h:240:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2953: 	      std::__reverse(__ii, __last,
	mov	w2, w20	//, D.60746
	ldr	x1, [sp, 48]	//, __last
	ldr	x0, [sp, 88]	//, __ii
	bl	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2955: 	      return true;
	mov	w0, 1	// _7,
	b	.L14		//
.L16:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2957: 	  if (__i == __first)
	ldr	x0, [sp, 56]	// __first.3_3, __first
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2957: 	  if (__i == __first)
	ldr	x1, [sp, 72]	// tmp128, __i
	cmp	x1, x0	// tmp128, __first.3_3
	bne	.L21		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2959: 	      std::__reverse(__first, __last,
	ldr	x0, [sp, 56]	// __first.4_4, __first
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator_base_types.h:240:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2959: 	      std::__reverse(__first, __last,
	mov	w2, w19	//, D.60749
	ldr	x1, [sp, 48]	//, __last
	bl	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag		//
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
.LFE2597:
	.size	_ZSt18__next_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_, .-_ZSt18__next_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	.section	.text._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_,"axG",@progbits,_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	.type	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_, %function
_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_:
.LFB2665:
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
.LFE2665:
	.size	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_, .-_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	.section	.text._ZSt9iter_swapIPiS0_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIPiS0_EvT_T0_,comdat
	.align	2
	.weak	_ZSt9iter_swapIPiS0_EvT_T0_
	.type	_ZSt9iter_swapIPiS0_EvT_T0_, %function
_ZSt9iter_swapIPiS0_EvT_T0_:
.LFB2666:
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
.LFE2666:
	.size	_ZSt9iter_swapIPiS0_EvT_T0_, .-_ZSt9iter_swapIPiS0_EvT_T0_
	.section	.text._ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag,"axG",@progbits,_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag,comdat
	.align	2
	.weak	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag
	.type	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag, %function
_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag:
.LFB2669:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// __first, __first
	str	x1, [sp, 32]	// __last, __last
	strb	w2, [sp, 24]	// D.60306, D.60306
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
	bl	_ZSt9iter_swapIPiS0_EvT_T0_		//
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
.LFE2669:
	.size	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag, .-_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag
	.section	.text._ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.align	2
	.weak	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, %function
_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB2723:
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
	str	x1, [sp, 24]	// tmp103, D.60781
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
	ldr	x2, [sp, 24]	// tmp104, D.60781
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
.LFE2723:
	.size	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.align	2
	.weak	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, %function
_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_:
.LFB2744:
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
.LFE2744:
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
