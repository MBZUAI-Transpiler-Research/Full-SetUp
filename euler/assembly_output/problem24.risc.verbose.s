	.file	"problem24.cc"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C++17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.section	.text._ZN9__gnu_cxx5__ops16__iter_less_iterEv,"axG",@progbits,_ZN9__gnu_cxx5__ops16__iter_less_iterEv,comdat
	.align	1
	.weak	_ZN9__gnu_cxx5__ops16__iter_less_iterEv
	.type	_ZN9__gnu_cxx5__ops16__iter_less_iterEv, @function
_ZN9__gnu_cxx5__ops16__iter_less_iterEv:
.LFB554:
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sd	s0,8(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
# /usr/riscv64-linux-gnu/include/c++/13/bits/predefined_ops.h:51:   { return _Iter_less_iter(); }
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/predefined_ops.h:51:   { return _Iter_less_iter(); }
	mv	a0,a5	#, <retval>
	ld	s0,8(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE554:
	.size	_ZN9__gnu_cxx5__ops16__iter_less_iterEv, .-_ZN9__gnu_cxx5__ops16__iter_less_iterEv
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
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
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB2240:
	.cfi_startproc
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
# problem24.cc:12: {
	la	a5,__stack_chk_guard		# tmp138,
	ld	a4, 0(a5)	# tmp168, __stack_chk_guard
	sd	a4, -24(s0)	# tmp168, D.58648
	li	a4, 0	# tmp168
# problem24.cc:15:   int a[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
	lla	a5,.LC0	# tmp139,
	ld	a1,0(a5)		# tmp140,
	ld	a2,8(a5)		# tmp141,
	ld	a3,16(a5)		# tmp142,
	ld	a4,24(a5)		# tmp143,
	ld	a5,32(a5)		# tmp144,
	sd	a1,-64(s0)	# tmp140, a
	sd	a2,-56(s0)	# tmp141, a
	sd	a3,-48(s0)	# tmp142, a
	sd	a4,-40(s0)	# tmp143, a
	sd	a5,-32(s0)	# tmp144, a
# problem24.cc:18:   for (i = 0; i <= N; i++) {
	sw	zero,-68(s0)	#, i
# problem24.cc:18:   for (i = 0; i <= N; i++) {
	j	.L4		#
.L5:
# problem24.cc:19:     next_permutation(a, a + sizeof a/sizeof *a);
	addi	a5,s0,-64	#, _1,
	addi	a5,a5,40	#, _1, _1
	addi	a4,s0,-64	#, tmp145,
	mv	a1,a5	#, _1
	mv	a0,a4	#, tmp145
	call	_ZSt16next_permutationIPiEbT_S1_		#
# problem24.cc:18:   for (i = 0; i <= N; i++) {
	lw	a5,-68(s0)		# tmp148, i
	addiw	a5,a5,1	#, tmp146, tmp147
	sw	a5,-68(s0)	# tmp146, i
.L4:
# problem24.cc:18:   for (i = 0; i <= N; i++) {
	lw	a5,-68(s0)		# tmp152, i
	sext.w	a4,a5	# tmp153, tmp151
	li	a5,999424		# tmp155,
	addi	a5,a5,576	#, tmp154, tmp155
	ble	a4,a5,.L5	#, tmp153, tmp154,
# problem24.cc:21:   for (i = 0; i < 10; i++) {
	sw	zero,-68(s0)	#, i
# problem24.cc:21:   for (i = 0; i < 10; i++) {
	j	.L6		#
.L7:
# problem24.cc:22:     cout << a[i];
	lw	a5,-68(s0)		# tmp156, i
	slli	a5,a5,2	#, tmp157, tmp156
	addi	a5,a5,-16	#, tmp172, tmp157
	add	a5,a5,s0	#, tmp157, tmp172
	lw	a5,-48(a5)		# _2, a[i_4]
	mv	a1,a5	#, _2
	la	a0,_ZSt4cout		#,
	call	_ZNSolsEi@plt	#
# problem24.cc:21:   for (i = 0; i < 10; i++) {
	lw	a5,-68(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-68(s0)	# tmp158, i
.L6:
# problem24.cc:21:   for (i = 0; i < 10; i++) {
	lw	a5,-68(s0)		# tmp162, i
	sext.w	a4,a5	# tmp163, tmp161
	li	a5,9		# tmp164,
	ble	a4,a5,.L7	#, tmp163, tmp164,
# problem24.cc:24:   cout << endl;
	la	a1,_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_		#,
	la	a0,_ZSt4cout		#,
	call	_ZNSolsEPFRSoS_E@plt	#
# problem24.cc:26:   return 0;
	li	a5,0		# _13,
# problem24.cc:27: }
	mv	a4,a5	# <retval>, _13
	la	a5,__stack_chk_guard		# tmp166,
	ld	a3, -24(s0)	# tmp169, D.58648
	ld	a5, 0(a5)	# tmp167, __stack_chk_guard
	xor	a5, a3, a5	# tmp167, tmp169
	li	a3, 0	# tmp169
	beq	a5,zero,.L9	#, tmp167,,
	call	__stack_chk_fail@plt	#
.L9:
	mv	a0,a4	#, <retval>
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2240:
	.size	main, .-main
	.section	.text._ZSt16next_permutationIPiEbT_S1_,"axG",@progbits,_ZSt16next_permutationIPiEbT_S1_,comdat
	.align	1
	.weak	_ZSt16next_permutationIPiEbT_S1_
	.type	_ZSt16next_permutationIPiEbT_S1_, @function
_ZSt16next_permutationIPiEbT_S1_:
.LFB2495:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	sd	s1,24(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# __first, __first
	sd	a1,-48(s0)	# __last, __last
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2993: 	(__first, __last, __gnu_cxx::__ops::__iter_less_iter());
	call	_ZN9__gnu_cxx5__ops16__iter_less_iterEv		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2993: 	(__first, __last, __gnu_cxx::__ops::__iter_less_iter());
	mv	a2,s1	#, D.58603
	ld	a1,-48(s0)		#, __last
	ld	a0,-40(s0)		#, __first
	call	_ZSt18__next_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_		#
	mv	a5,a0	# tmp137,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2994:     }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	ld	s1,24(sp)		#,
	.cfi_restore 9
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2495:
	.size	_ZSt16next_permutationIPiEbT_S1_, .-_ZSt16next_permutationIPiEbT_S1_
	.section	.text._ZSt18__next_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_,"axG",@progbits,_ZSt18__next_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_,comdat
	.align	1
	.weak	_ZSt18__next_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	.type	_ZSt18__next_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_, @function
_ZSt18__next_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_:
.LFB2597:
	.cfi_startproc
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	sd	s1,72(sp)	#,
	sd	s2,64(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)	# __first, __first
	sd	a1,-80(s0)	# __last, __last
	sb	a2,-88(s0)	# __comp, __comp
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2934:       if (__first == __last)
	ld	a5,-72(s0)		# __first.0_1, __first
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2934:       if (__first == __last)
	ld	a4,-80(s0)		# tmp148, __last
	bne	a4,a5,.L13	#, tmp148, __first.0_1,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2935: 	return false;
	li	a5,0		# _7,
	j	.L14		#
.L13:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2936:       _BidirectionalIterator __i = __first;
	ld	a5,-72(s0)		# tmp149, __first
	sd	a5,-56(s0)	# tmp149, __i
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2937:       ++__i;
	ld	a5,-56(s0)		# tmp151, __i
	addi	a5,a5,4	#, tmp150, tmp151
	sd	a5,-56(s0)	# tmp150, __i
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2938:       if (__i == __last)
	ld	a4,-56(s0)		# tmp152, __i
	ld	a5,-80(s0)		# tmp153, __last
	bne	a4,a5,.L15	#, tmp152, tmp153,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2939: 	return false;
	li	a5,0		# _7,
	j	.L14		#
.L15:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2940:       __i = __last;
	ld	a5,-80(s0)		# tmp154, __last
	sd	a5,-56(s0)	# tmp154, __i
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2941:       --__i;
	ld	a5,-56(s0)		# tmp156, __i
	addi	a5,a5,-4	#, tmp155, tmp156
	sd	a5,-56(s0)	# tmp155, __i
.L21:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2945: 	  _BidirectionalIterator __ii = __i;
	ld	a5,-56(s0)		# tmp157, __i
	sd	a5,-40(s0)	# tmp157, __ii
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2946: 	  --__i;
	ld	a5,-56(s0)		# tmp159, __i
	addi	a5,a5,-4	#, tmp158, tmp159
	sd	a5,-56(s0)	# tmp158, __i
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2947: 	  if (__comp(__i, __ii))
	addi	a5,s0,-88	#, tmp160,
	ld	a2,-40(s0)		#, __ii
	ld	a1,-56(s0)		#, __i
	mv	a0,a5	#, tmp160
	call	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_		#
	mv	a5,a0	# tmp161,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2947: 	  if (__comp(__i, __ii))
	beq	a5,zero,.L16	#, retval.1_20,,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2949: 	      _BidirectionalIterator __j = __last;
	ld	a5,-80(s0)		# tmp162, __last
	sd	a5,-48(s0)	# tmp162, __j
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2950: 	      while (!__comp(__i, --__j))
	nop	
.L17:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2950: 	      while (!__comp(__i, --__j))
	ld	a5,-48(s0)		# tmp164, __j
	addi	a5,a5,-4	#, tmp163, tmp164
	sd	a5,-48(s0)	# tmp163, __j
	addi	a5,s0,-88	#, tmp165,
	ld	a2,-48(s0)		#, __j
	ld	a1,-56(s0)		#, __i
	mv	a0,a5	#, tmp165
	call	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_		#
	mv	a5,a0	# tmp166,
	xori	a5,a5,1	#, tmp167, _2
	andi	a5,a5,0xff	# retval.2_26, tmp167
	bne	a5,zero,.L17	#, retval.2_26,,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2952: 	      std::iter_swap(__i, __j);
	ld	a1,-48(s0)		#, __j
	ld	a0,-56(s0)		#, __i
	call	_ZSt9iter_swapIPiS0_EvT_T0_		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator_base_types.h:240:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2953: 	      std::__reverse(__ii, __last,
	mv	a2,s2	#, D.58616
	ld	a1,-80(s0)		#, __last
	ld	a0,-40(s0)		#, __ii
	call	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2955: 	      return true;
	li	a5,1		# _7,
	j	.L14		#
.L16:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2957: 	  if (__i == __first)
	ld	a5,-72(s0)		# __first.3_3, __first
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2957: 	  if (__i == __first)
	ld	a4,-56(s0)		# tmp168, __i
	bne	a4,a5,.L21	#, tmp168, __first.3_3,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2959: 	      std::__reverse(__first, __last,
	ld	a5,-72(s0)		# __first.4_4, __first
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator_base_types.h:240:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2959: 	      std::__reverse(__first, __last,
	mv	a2,s1	#, D.58619
	ld	a1,-80(s0)		#, __last
	mv	a0,a5	#, __first.4_4
	call	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2961: 	      return false;
	li	a5,0		# _7,
.L14:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2964:     }
	mv	a0,a5	#, <retval>
	ld	ra,88(sp)		#,
	.cfi_restore 1
	ld	s0,80(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	ld	s1,72(sp)		#,
	.cfi_restore 9
	ld	s2,64(sp)		#,
	.cfi_restore 18
	addi	sp,sp,96	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2597:
	.size	_ZSt18__next_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_, .-_ZSt18__next_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	.section	.text._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_,"axG",@progbits,_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_,comdat
	.align	1
	.weak	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	.type	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_, @function
_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_:
.LFB2665:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# this, this
	sd	a1,-32(s0)	# __it1, __it1
	sd	a2,-40(s0)	# __it2, __it2
# /usr/riscv64-linux-gnu/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	ld	a5,-32(s0)		# tmp138, __it1
	lw	a4,0(a5)		# _1, *__it1_4(D)
	ld	a5,-40(s0)		# tmp139, __it2
	lw	a5,0(a5)		# _2, *__it2_5(D)
# /usr/riscv64-linux-gnu/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	slt	a5,a4,a5	# tmp143, tmp141, tmp142
	andi	a5,a5,0xff	# _6, tmp140
# /usr/riscv64-linux-gnu/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2665:
	.size	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_, .-_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	.section	.text._ZSt9iter_swapIPiS0_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIPiS0_EvT_T0_,comdat
	.align	1
	.weak	_ZSt9iter_swapIPiS0_EvT_T0_
	.type	_ZSt9iter_swapIPiS0_EvT_T0_, @function
_ZSt9iter_swapIPiS0_EvT_T0_:
.LFB2666:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# __a, __a
	sd	a1,-32(s0)	# __b, __b
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:185:       swap(*__a, *__b);
	ld	a1,-32(s0)		#, __b
	ld	a0,-24(s0)		#, __a
	call	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:187:     }
	nop	
	ld	ra,24(sp)		#,
	.cfi_restore 1
	ld	s0,16(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2666:
	.size	_ZSt9iter_swapIPiS0_EvT_T0_, .-_ZSt9iter_swapIPiS0_EvT_T0_
	.section	.text._ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag,"axG",@progbits,_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag,comdat
	.align	1
	.weak	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag
	.type	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag, @function
_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag:
.LFB2669:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# __first, __first
	sd	a1,-32(s0)	# __last, __last
	sb	a2,-40(s0)	# D.58176, D.58176
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1105:       if (__first == __last)
	ld	a4,-24(s0)		# tmp134, __first
	ld	a5,-32(s0)		# tmp135, __last
	beq	a4,a5,.L30	#, tmp134, tmp135,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1107:       --__last;
	ld	a5,-32(s0)		# tmp137, __last
	addi	a5,a5,-4	#, tmp136, tmp137
	sd	a5,-32(s0)	# tmp136, __last
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1108:       while (__first < __last)
	j	.L28		#
.L29:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1110: 	  std::iter_swap(__first, __last);
	ld	a1,-32(s0)		#, __last
	ld	a0,-24(s0)		#, __first
	call	_ZSt9iter_swapIPiS0_EvT_T0_		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1111: 	  ++__first;
	ld	a5,-24(s0)		# tmp139, __first
	addi	a5,a5,4	#, tmp138, tmp139
	sd	a5,-24(s0)	# tmp138, __first
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1112: 	  --__last;
	ld	a5,-32(s0)		# tmp141, __last
	addi	a5,a5,-4	#, tmp140, tmp141
	sd	a5,-32(s0)	# tmp140, __last
.L28:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1108:       while (__first < __last)
	ld	a4,-24(s0)		# tmp142, __first
	ld	a5,-32(s0)		# tmp143, __last
	bltu	a4,a5,.L29	#, tmp142, tmp143,
	j	.L25		#
.L30:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1106: 	return;
	nop	
.L25:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1114:     }
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2669:
	.size	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag, .-_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag
	.section	.text._ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.align	1
	.weak	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, @function
_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB2723:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# __a, __a
	sd	a1,-48(s0)	# __b, __b
# /usr/riscv64-linux-gnu/include/c++/13/bits/move.h:189:     swap(_Tp& __a, _Tp& __b)
	la	a5,__stack_chk_guard		# tmp140,
	ld	a4, 0(a5)	# tmp146, __stack_chk_guard
	sd	a4, -24(s0)	# tmp146, D.58651
	li	a4, 0	# tmp146
# /usr/riscv64-linux-gnu/include/c++/13/bits/move.h:197:       _Tp __tmp = _GLIBCXX_MOVE(__a);
	ld	a0,-40(s0)		#, __a
	call	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_		#
	mv	a5,a0	# _1,
# /usr/riscv64-linux-gnu/include/c++/13/bits/move.h:197:       _Tp __tmp = _GLIBCXX_MOVE(__a);
	lw	a5,0(a5)		# _2, *_1
	sw	a5,-28(s0)	# _2, __tmp
# /usr/riscv64-linux-gnu/include/c++/13/bits/move.h:198:       __a = _GLIBCXX_MOVE(__b);
	ld	a0,-48(s0)		#, __b
	call	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_		#
	mv	a5,a0	# _3,
# /usr/riscv64-linux-gnu/include/c++/13/bits/move.h:198:       __a = _GLIBCXX_MOVE(__b);
	lw	a4,0(a5)		# _4, *_3
	ld	a5,-40(s0)		# tmp141, __a
	sw	a4,0(a5)	# _4, *__a_8(D)
# /usr/riscv64-linux-gnu/include/c++/13/bits/move.h:199:       __b = _GLIBCXX_MOVE(__tmp);
	addi	a5,s0,-28	#, tmp142,
	mv	a0,a5	#, tmp142
	call	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_		#
	mv	a5,a0	# _5,
# /usr/riscv64-linux-gnu/include/c++/13/bits/move.h:199:       __b = _GLIBCXX_MOVE(__tmp);
	lw	a4,0(a5)		# _6, *_5
	ld	a5,-48(s0)		# tmp143, __b
	sw	a4,0(a5)	# _6, *__b_11(D)
# /usr/riscv64-linux-gnu/include/c++/13/bits/move.h:200:     }
	nop	
	la	a5,__stack_chk_guard		# tmp144,
	ld	a4, -24(s0)	# tmp147, D.58651
	ld	a5, 0(a5)	# tmp145, __stack_chk_guard
	xor	a5, a4, a5	# tmp145, tmp147
	li	a4, 0	# tmp147
	beq	a5,zero,.L32	#, tmp145,,
	call	__stack_chk_fail@plt	#
.L32:
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2723:
	.size	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.align	1
	.weak	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_:
.LFB2744:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# __t, __t
# /usr/riscv64-linux-gnu/include/c++/13/bits/move.h:98:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	ld	a5,-24(s0)		# _2, __t
# /usr/riscv64-linux-gnu/include/c++/13/bits/move.h:98:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2744:
	.size	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.section	.rodata
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
