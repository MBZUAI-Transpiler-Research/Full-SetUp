	.file	"problem41.cc"
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
	.type	_ZZ4mainE1N, @object
	.size	_ZZ4mainE1N, 8
_ZZ4mainE1N:
	.dword	9
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
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB2268:
	.cfi_startproc
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	sd	s1,72(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
# problem41.cc:21: {
	la	a5,__stack_chk_guard		# tmp150,
	ld	a4, 0(a5)	# tmp173, __stack_chk_guard
	sd	a4, -40(s0)	# tmp173, D.59277
	li	a4, 0	# tmp173
# problem41.cc:24:   int a[] = {9,8,7,6,5,4,3,2,1};
	lla	a5,.LC0	# tmp151,
	ld	a1,0(a5)		# tmp152,
	ld	a2,8(a5)		# tmp153,
	ld	a3,16(a5)		# tmp154,
	ld	a4,24(a5)		# tmp155,
	sd	a1,-80(s0)	# tmp152, a
	sd	a2,-72(s0)	# tmp153, a
	sd	a3,-64(s0)	# tmp154, a
	sd	a4,-56(s0)	# tmp155, a
	lw	a5,32(a5)		# tmp156,
	sw	a5,-48(s0)	# tmp156, a
# problem41.cc:27:   for (unsigned i = 0; i < N; i++) {
	sw	zero,-88(s0)	#, i
# problem41.cc:27:   for (unsigned i = 0; i < N; i++) {
	j	.L4		#
.L7:
# problem41.cc:29:       int n = accumulate(a+i, a+N, 0, func<int>());
	lwu	a5,-88(s0)	# _1, i
# problem41.cc:29:       int n = accumulate(a+i, a+N, 0, func<int>());
	slli	a5,a5,2	#, _2, _1
# problem41.cc:29:       int n = accumulate(a+i, a+N, 0, func<int>());
	addi	a4,s0,-80	#, tmp157,
	add	a4,a4,a5	# _2, _3, tmp157
	addi	a5,s0,-80	#, _4,
	addi	a5,a5,36	#, _4, _4
	mv	a3,s1	#, D.59203
	li	a2,0		#,
	mv	a1,a5	#, _4
	mv	a0,a4	#, _3
	call	_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_		#
	mv	a5,a0	# tmp158,
# problem41.cc:29:       int n = accumulate(a+i, a+N, 0, func<int>());
	sw	a5,-84(s0)	# _20, n
# problem41.cc:30:       if (is_prime(n)) {
	lw	a5,-84(s0)		# n.1_5, n
	mv	a0,a5	#, n.1_5
	call	_ZL8is_primej		#
	mv	a5,a0	# tmp159,
# problem41.cc:30:       if (is_prime(n)) {
	beq	a5,zero,.L5	#, retval.0_23,,
# problem41.cc:31:         cout << n << endl;
	lw	a5,-84(s0)		# tmp160, n
	mv	a1,a5	#, tmp160
	la	a0,_ZSt4cout		#,
	call	_ZNSolsEi@plt	#
	mv	a5,a0	# _6,
# problem41.cc:31:         cout << n << endl;
	la	a1,_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_		#,
	mv	a0,a5	#, _6
	call	_ZNSolsEPFRSoS_E@plt	#
# problem41.cc:32:         goto FINISH;
	j	.L6		#
.L5:
# problem41.cc:34:     } while (prev_permutation(a+i, a+N));
	lwu	a5,-88(s0)	# _7, i
# problem41.cc:34:     } while (prev_permutation(a+i, a+N));
	slli	a5,a5,2	#, _8, _7
# problem41.cc:34:     } while (prev_permutation(a+i, a+N));
	addi	a4,s0,-80	#, tmp161,
	add	a4,a4,a5	# _8, _9, tmp161
	addi	a5,s0,-80	#, _10,
	addi	a5,a5,36	#, _10, _10
	mv	a1,a5	#, _10
	mv	a0,a4	#, _9
	call	_ZSt16prev_permutationIPiEbT_S1_		#
	mv	a5,a0	# tmp162,
# problem41.cc:34:     } while (prev_permutation(a+i, a+N));
	bne	a5,zero,.L7	#, _25,,
# problem41.cc:27:   for (unsigned i = 0; i < N; i++) {
	lw	a5,-88(s0)		# tmp165, i
	addiw	a5,a5,1	#, tmp163, tmp164
	sw	a5,-88(s0)	# tmp163, i
.L4:
# problem41.cc:27:   for (unsigned i = 0; i < N; i++) {
	lw	a5,-88(s0)		# tmp167, i
	sext.w	a4,a5	# tmp168, tmp166
	li	a5,8		# tmp169,
	bleu	a4,a5,.L7	#, tmp168, tmp169,
# problem41.cc:37: FINISH:
	nop	
.L6:
# problem41.cc:38:   return 0;
	li	a5,0		# _32,
# problem41.cc:39: }
	mv	a4,a5	# <retval>, _32
	la	a5,__stack_chk_guard		# tmp171,
	ld	a3, -40(s0)	# tmp174, D.59277
	ld	a5, 0(a5)	# tmp172, __stack_chk_guard
	xor	a5, a3, a5	# tmp172, tmp174
	li	a3, 0	# tmp174
	beq	a5,zero,.L9	#, tmp172,,
	call	__stack_chk_fail@plt	#
.L9:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	.cfi_restore 1
	ld	s0,80(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	ld	s1,72(sp)		#,
	.cfi_restore 9
	addi	sp,sp,96	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2268:
	.size	main, .-main
	.align	1
	.type	_ZL8is_primej, @function
_ZL8is_primej:
.LFB2269:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp139, n
	sw	a5,-36(s0)	# tmp140, n
# problem41.cc:43:   if (n == 1) {
	lw	a5,-36(s0)		# tmp142, n
	sext.w	a4,a5	# tmp143, tmp141
	li	a5,1		# tmp144,
	bne	a4,a5,.L11	#, tmp143, tmp144,
# problem41.cc:44:     return false;
	li	a5,0		# _5,
	j	.L12		#
.L11:
# problem41.cc:46:   else if (n % 2 == 0) {
	lw	a5,-36(s0)		# tmp146, n
	andi	a5,a5,1	#, tmp147, tmp145
	sext.w	a5,a5	# _1, tmp147
# problem41.cc:46:   else if (n % 2 == 0) {
	bne	a5,zero,.L13	#, _1,,
# problem41.cc:47:     return n == 2;
	lw	a5,-36(s0)		# tmp150, n
	sext.w	a4,a5	# tmp152, tmp149
	li	a5,2		# tmp154,
	sub	a5,a4,a5	# tmp153, tmp152, tmp154
	seqz	a5,a5	# tmp151, tmp153
	andi	a5,a5,0xff	# _5, tmp148
	j	.L12		#
.L13:
# problem41.cc:50:     for (unsigned d = 3; d*d < n; d += 2) {
	li	a5,3		# tmp155,
	sw	a5,-20(s0)	# tmp155, d
# problem41.cc:50:     for (unsigned d = 3; d*d < n; d += 2) {
	j	.L14		#
.L16:
# problem41.cc:51:       if (n % d == 0) {
	lw	a5,-36(s0)		# tmp158, n
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-20(s0)		# tmp161, d
	remuw	a5,a4,a5	# tmp160, tmp159, tmp157
	sext.w	a5,a5	# _2, tmp159
# problem41.cc:51:       if (n % d == 0) {
	bne	a5,zero,.L15	#, _2,,
# problem41.cc:52:         return false;
	li	a5,0		# _5,
	j	.L12		#
.L15:
# problem41.cc:50:     for (unsigned d = 3; d*d < n; d += 2) {
	lw	a5,-20(s0)		# tmp164, d
	addiw	a5,a5,2	#, tmp162, tmp163
	sw	a5,-20(s0)	# tmp162, d
.L14:
# problem41.cc:50:     for (unsigned d = 3; d*d < n; d += 2) {
	lw	a5,-20(s0)		# tmp167, d
	mulw	a5,a5,a5	# tmp165, tmp166, tmp166
	sext.w	a4,a5	# _3, tmp165
# problem41.cc:50:     for (unsigned d = 3; d*d < n; d += 2) {
	lw	a5,-36(s0)		# tmp169, n
	sext.w	a5,a5	# tmp170, tmp168
	bgtu	a5,a4,.L16	#, tmp170, tmp171,
# problem41.cc:55:     return true;
	li	a5,1		# _5,
.L12:
# problem41.cc:57: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2269:
	.size	_ZL8is_primej, .-_ZL8is_primej
	.section	.text._ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_,"axG",@progbits,_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_,comdat
	.align	1
	.weak	_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_
	.type	_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_, @function
_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_:
.LFB2524:
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
	mv	a5,a2	# tmp137, __init
	sb	a3,-40(s0)	# __binary_op, __binary_op
	sw	a5,-36(s0)	# tmp138, __init
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_numeric.h:168:       for (; __first != __last; ++__first)
	j	.L18		#
.L19:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_numeric.h:169: 	__init = __binary_op(_GLIBCXX_MOVE_IF_20(__init), *__first);
	ld	a5,-24(s0)		# tmp139, __first
	lw	a3,0(a5)		# _1, *__first_2
	lw	a4,-36(s0)		# tmp140, __init
	addi	a5,s0,-40	#, tmp141,
	mv	a2,a3	#, _1
	mv	a1,a4	#, tmp140
	mv	a0,a5	#, tmp141
	call	_ZNK4funcIiEclEii		#
	mv	a5,a0	# tmp142,
	sw	a5,-36(s0)	# tmp142, __init
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_numeric.h:168:       for (; __first != __last; ++__first)
	ld	a5,-24(s0)		# tmp144, __first
	addi	a5,a5,4	#, tmp143, tmp144
	sd	a5,-24(s0)	# tmp143, __first
.L18:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_numeric.h:168:       for (; __first != __last; ++__first)
	ld	a4,-24(s0)		# tmp145, __first
	ld	a5,-32(s0)		# tmp146, __last
	bne	a4,a5,.L19	#, tmp145, tmp146,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_numeric.h:170:       return __init;
	lw	a5,-36(s0)		# _9, __init
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_numeric.h:171:     }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2524:
	.size	_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_, .-_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_
	.section	.text._ZSt16prev_permutationIPiEbT_S1_,"axG",@progbits,_ZSt16prev_permutationIPiEbT_S1_,comdat
	.align	1
	.weak	_ZSt16prev_permutationIPiEbT_S1_
	.type	_ZSt16prev_permutationIPiEbT_S1_, @function
_ZSt16prev_permutationIPiEbT_S1_:
.LFB2527:
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
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3096: 				     __gnu_cxx::__ops::__iter_less_iter());
	call	_ZN9__gnu_cxx5__ops16__iter_less_iterEv		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3095:       return std::__prev_permutation(__first, __last,
	mv	a2,s1	#, D.59221
	ld	a1,-48(s0)		#, __last
	ld	a0,-40(s0)		#, __first
	call	_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_		#
	mv	a5,a0	# tmp137,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3097:     }
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
.LFE2527:
	.size	_ZSt16prev_permutationIPiEbT_S1_, .-_ZSt16prev_permutationIPiEbT_S1_
	.section	.text._ZNK4funcIiEclEii,"axG",@progbits,_ZNK4funcIiEclEii,comdat
	.align	1
	.weak	_ZNK4funcIiEclEii
	.type	_ZNK4funcIiEclEii, @function
_ZNK4funcIiEclEii:
.LFB2627:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# this, this
	mv	a5,a1	# tmp137, a
	mv	a4,a2	# tmp139, b
	sw	a5,-28(s0)	# tmp138, a
	mv	a5,a4	# tmp140, tmp139
	sw	a5,-32(s0)	# tmp140, b
# problem41.cc:14:     return 10*a + b;
	lw	a5,-28(s0)		# tmp142, a
	mv	a4,a5	# tmp141, tmp142
	mv	a5,a4	# tmp143, tmp141
	slliw	a5,a5,2	#, tmp144, tmp143
	addw	a5,a5,a4	# tmp141, tmp143, tmp143
	slliw	a5,a5,1	#, tmp145, tmp143
	sext.w	a5,a5	# _1, tmp143
# problem41.cc:14:     return 10*a + b;
	lw	a4,-32(s0)		# tmp148, b
	addw	a5,a4,a5	# _1, tmp146, tmp147
	sext.w	a5,a5	# _4, tmp146
# problem41.cc:15:   }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2627:
	.size	_ZNK4funcIiEclEii, .-_ZNK4funcIiEclEii
	.section	.text._ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_,"axG",@progbits,_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_,comdat
	.align	1
	.weak	_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	.type	_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_, @function
_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_:
.LFB2630:
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
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3036:       if (__first == __last)
	ld	a5,-72(s0)		# __first.3_1, __first
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3036:       if (__first == __last)
	ld	a4,-80(s0)		# tmp148, __last
	bne	a4,a5,.L26	#, tmp148, __first.3_1,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3037: 	return false;
	li	a5,0		# _7,
	j	.L27		#
.L26:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3038:       _BidirectionalIterator __i = __first;
	ld	a5,-72(s0)		# tmp149, __first
	sd	a5,-56(s0)	# tmp149, __i
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3039:       ++__i;
	ld	a5,-56(s0)		# tmp151, __i
	addi	a5,a5,4	#, tmp150, tmp151
	sd	a5,-56(s0)	# tmp150, __i
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3040:       if (__i == __last)
	ld	a4,-56(s0)		# tmp152, __i
	ld	a5,-80(s0)		# tmp153, __last
	bne	a4,a5,.L28	#, tmp152, tmp153,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3041: 	return false;
	li	a5,0		# _7,
	j	.L27		#
.L28:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3042:       __i = __last;
	ld	a5,-80(s0)		# tmp154, __last
	sd	a5,-56(s0)	# tmp154, __i
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3043:       --__i;
	ld	a5,-56(s0)		# tmp156, __i
	addi	a5,a5,-4	#, tmp155, tmp156
	sd	a5,-56(s0)	# tmp155, __i
.L34:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3047: 	  _BidirectionalIterator __ii = __i;
	ld	a5,-56(s0)		# tmp157, __i
	sd	a5,-40(s0)	# tmp157, __ii
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3048: 	  --__i;
	ld	a5,-56(s0)		# tmp159, __i
	addi	a5,a5,-4	#, tmp158, tmp159
	sd	a5,-56(s0)	# tmp158, __i
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3049: 	  if (__comp(__ii, __i))
	addi	a5,s0,-88	#, tmp160,
	ld	a2,-56(s0)		#, __i
	ld	a1,-40(s0)		#, __ii
	mv	a0,a5	#, tmp160
	call	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_		#
	mv	a5,a0	# tmp161,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3049: 	  if (__comp(__ii, __i))
	beq	a5,zero,.L29	#, retval.4_20,,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3051: 	      _BidirectionalIterator __j = __last;
	ld	a5,-80(s0)		# tmp162, __last
	sd	a5,-48(s0)	# tmp162, __j
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3052: 	      while (!__comp(--__j, __i))
	nop	
.L30:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3052: 	      while (!__comp(--__j, __i))
	ld	a5,-48(s0)		# tmp164, __j
	addi	a5,a5,-4	#, tmp163, tmp164
	sd	a5,-48(s0)	# tmp163, __j
	addi	a5,s0,-88	#, tmp165,
	ld	a2,-56(s0)		#, __i
	ld	a1,-48(s0)		#, __j
	mv	a0,a5	#, tmp165
	call	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_		#
	mv	a5,a0	# tmp166,
	xori	a5,a5,1	#, tmp167, _2
	andi	a5,a5,0xff	# retval.5_26, tmp167
	bne	a5,zero,.L30	#, retval.5_26,,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3054: 	      std::iter_swap(__i, __j);
	ld	a1,-48(s0)		#, __j
	ld	a0,-56(s0)		#, __i
	call	_ZSt9iter_swapIPiS0_EvT_T0_		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator_base_types.h:240:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3055: 	      std::__reverse(__ii, __last,
	mv	a2,s2	#, D.59234
	ld	a1,-80(s0)		#, __last
	ld	a0,-40(s0)		#, __ii
	call	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3057: 	      return true;
	li	a5,1		# _7,
	j	.L27		#
.L29:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3059: 	  if (__i == __first)
	ld	a5,-72(s0)		# __first.6_3, __first
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3059: 	  if (__i == __first)
	ld	a4,-56(s0)		# tmp168, __i
	bne	a4,a5,.L34	#, tmp168, __first.6_3,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3061: 	      std::__reverse(__first, __last,
	ld	a5,-72(s0)		# __first.7_4, __first
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator_base_types.h:240:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3061: 	      std::__reverse(__first, __last,
	mv	a2,s1	#, D.59237
	ld	a1,-80(s0)		#, __last
	mv	a0,a5	#, __first.7_4
	call	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3063: 	      return false;
	li	a5,0		# _7,
.L27:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:3066:     }
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
.LFE2630:
	.size	_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_, .-_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	.section	.text._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_,"axG",@progbits,_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_,comdat
	.align	1
	.weak	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	.type	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_, @function
_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_:
.LFB2697:
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
.LFE2697:
	.size	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_, .-_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	.section	.text._ZSt9iter_swapIPiS0_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIPiS0_EvT_T0_,comdat
	.align	1
	.weak	_ZSt9iter_swapIPiS0_EvT_T0_
	.type	_ZSt9iter_swapIPiS0_EvT_T0_, @function
_ZSt9iter_swapIPiS0_EvT_T0_:
.LFB2698:
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
.LFE2698:
	.size	_ZSt9iter_swapIPiS0_EvT_T0_, .-_ZSt9iter_swapIPiS0_EvT_T0_
	.section	.text._ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag,"axG",@progbits,_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag,comdat
	.align	1
	.weak	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag
	.type	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag, @function
_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag:
.LFB2701:
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
	sb	a2,-40(s0)	# D.58784, D.58784
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1105:       if (__first == __last)
	ld	a4,-24(s0)		# tmp134, __first
	ld	a5,-32(s0)		# tmp135, __last
	beq	a4,a5,.L43	#, tmp134, tmp135,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1107:       --__last;
	ld	a5,-32(s0)		# tmp137, __last
	addi	a5,a5,-4	#, tmp136, tmp137
	sd	a5,-32(s0)	# tmp136, __last
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1108:       while (__first < __last)
	j	.L41		#
.L42:
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
.L41:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1108:       while (__first < __last)
	ld	a4,-24(s0)		# tmp142, __first
	ld	a5,-32(s0)		# tmp143, __last
	bltu	a4,a5,.L42	#, tmp142, tmp143,
	j	.L38		#
.L43:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1106: 	return;
	nop	
.L38:
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
.LFE2701:
	.size	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag, .-_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag
	.section	.text._ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.align	1
	.weak	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, @function
_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB2754:
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
	sd	a4, -24(s0)	# tmp146, D.59280
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
	ld	a4, -24(s0)	# tmp147, D.59280
	ld	a5, 0(a5)	# tmp145, __stack_chk_guard
	xor	a5, a4, a5	# tmp145, tmp147
	li	a4, 0	# tmp147
	beq	a5,zero,.L45	#, tmp145,,
	call	__stack_chk_fail@plt	#
.L45:
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2754:
	.size	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.align	1
	.weak	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_:
.LFB2775:
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
.LFE2775:
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
