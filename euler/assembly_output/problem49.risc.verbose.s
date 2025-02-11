	.file	"problem49.cc"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C++17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.align	1
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB40:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# D.3769, D.3769
	sd	a1,-32(s0)	# __p, __p
# /usr/riscv64-linux-gnu/include/c++/13/new:175: { return __p; }
	ld	a5,-32(s0)		# _2, __p
# /usr/riscv64-linux-gnu/include/c++/13/new:175: { return __p; }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE40:
	.size	_ZnwmPv, .-_ZnwmPv
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
	.section	.text._ZSt17__size_to_integerm,"axG",@progbits,_ZSt17__size_to_integerm,comdat
	.align	1
	.weak	_ZSt17__size_to_integerm
	.type	_ZSt17__size_to_integerm, @function
_ZSt17__size_to_integerm:
.LFB658:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# __n, __n
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:1018:   __size_to_integer(unsigned long __n) { return __n; }
	ld	a5,-24(s0)		# _2, __n
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:1018:   __size_to_integer(unsigned long __n) { return __n; }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE658:
	.size	_ZSt17__size_to_integerm, .-_ZSt17__size_to_integerm
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD5Ev,comdat
	.align	1
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev:
.LFB2636:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# this, this
	ld	a5,-40(s0)		# tmp134, this
	sd	a5,-24(s0)	# tmp134, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/allocator.h:184:       ~allocator() _GLIBCXX_NOTHROW { }
	ld	a0,-24(s0)		#, this
	call	_ZNSt15__new_allocatorIiED2Ev		#
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:133:       struct _Vector_impl
	nop	
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2636:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC5Ev,comdat
	.align	1
	.weak	_ZNSt12_Vector_baseIiSaIiEEC2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEEC2Ev, @function
_ZNSt12_Vector_baseIiSaIiEEC2Ev:
.LFB2638:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# this, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:315:       _Vector_base() = default;
	ld	a5,-24(s0)		# _1, this
	mv	a0,a5	#, _1
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev		#
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
.LFE2638:
	.size	_ZNSt12_Vector_baseIiSaIiEEC2Ev, .-_ZNSt12_Vector_baseIiSaIiEEC2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEEC1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEEC1Ev,_ZNSt12_Vector_baseIiSaIiEEC2Ev
	.section	.text._ZNSt6vectorIiSaIiEEC2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5Ev,comdat
	.align	1
	.weak	_ZNSt6vectorIiSaIiEEC2Ev
	.type	_ZNSt6vectorIiSaIiEEC2Ev, @function
_ZNSt6vectorIiSaIiEEC2Ev:
.LFB2640:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# this, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:531:       vector() = default;
	ld	a5,-24(s0)		# _1, this
	mv	a0,a5	#, _1
	call	_ZNSt12_Vector_baseIiSaIiEEC2Ev		#
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
.LFE2640:
	.size	_ZNSt6vectorIiSaIiEEC2Ev, .-_ZNSt6vectorIiSaIiEEC2Ev
	.weak	_ZNSt6vectorIiSaIiEEC1Ev
	.set	_ZNSt6vectorIiSaIiEEC1Ev,_ZNSt6vectorIiSaIiEEC2Ev
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB2631:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2631
	addi	sp,sp,-1952	#,,
	.cfi_def_cfa_offset 1952
	sd	ra,1944(sp)	#,
	sd	s0,1936(sp)	#,
	sd	s1,1928(sp)	#,
	sd	s2,1920(sp)	#,
	sd	s3,1912(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	addi	s0,sp,1952	#,,
	.cfi_def_cfa 8, 0
	li	t0,-8192		#,
	add	sp,sp,t0	#,,
# problem49.cc:22: {
	la	a5,__stack_chk_guard		# tmp196,
	ld	a4, 0(a5)	# tmp458, __stack_chk_guard
	sd	a4, -56(s0)	# tmp458, D.65608
	li	a4, 0	# tmp458
# problem49.cc:26:   fill(seen, seen+10000, false);
	li	a5,-8192		# tmp198,
	addi	a5,a5,-1816	#, tmp197, tmp198
	addi	a5,a5,-48	#, tmp464, tmp197
	add	a5,a5,s0	#, _1, tmp464
	li	a4,8192		# tmp200,
	addi	a4,a4,1808	#, tmp199, tmp200
	add	a5,a5,a4	# tmp199, _1, _1
# problem49.cc:26:   fill(seen, seen+10000, false);
	li	a4,-8192		# tmp201,
	addi	a4,a4,-48	#, tmp465, tmp201
	add	a4,a4,s0	#, tmp202, tmp465
	sb	zero,-1840(a4)	#, MEM[(bool *)_145]
# problem49.cc:26:   fill(seen, seen+10000, false);
	li	a4,-8192		# tmp205,
	addi	a4,a4,-1840	#, tmp204, tmp205
	addi	a4,a4,-48	#, tmp466, tmp204
	add	a3,a4,s0	#, tmp203, tmp466
	li	a4,-8192		# tmp208,
	addi	a4,a4,-1816	#, tmp207, tmp208
	addi	a4,a4,-48	#, tmp467, tmp207
	add	a4,a4,s0	#, tmp206, tmp467
	mv	a2,a3	#, tmp203
	mv	a1,a5	#, _1
	mv	a0,a4	#, tmp206
.LEHB0:
	call	_ZSt4fillIPbbEvT_S1_RKT0_		#
.LEHE0:
# problem49.cc:28:   for (int i = 1000; i < 10000; i++) {
	li	a5,-8192		# tmp209,
	addi	a5,a5,-48	#, tmp468, tmp209
	add	a5,a5,s0	#, tmp210, tmp468
	li	a4,1000		# tmp211,
	sw	a4,-1896(a5)	# tmp211, i
# problem49.cc:28:   for (int i = 1000; i < 10000; i++) {
	j	.L11		#
.L27:
	li	a5,-8192		# tmp212,
	addi	a5,a5,-48	#, tmp469, tmp212
	add	a5,a5,s0	#, tmp213, tmp469
	li	a4,-8192		# tmp216,
	addi	a4,a4,-1840	#, tmp215, tmp216
	addi	a4,a4,-48	#, tmp470, tmp215
	add	a4,a4,s0	#, tmp214, tmp470
	sd	a4,-1872(a5)	# tmp214, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:88:       __new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/allocator.h:163:       allocator() _GLIBCXX_NOTHROW { }
	nop	
# problem49.cc:30:     vector<int> a(4);
	li	a5,-8192		# tmp219,
	addi	a5,a5,-1840	#, tmp218, tmp219
	addi	a5,a5,-48	#, tmp471, tmp218
	add	a4,a5,s0	#, tmp217, tmp471
	li	a5,-8192		# tmp222,
	addi	a5,a5,-1864	#, tmp221, tmp222
	addi	a5,a5,-48	#, tmp472, tmp221
	add	a5,a5,s0	#, tmp220, tmp472
	mv	a2,a4	#, tmp217
	li	a1,4		#,
	mv	a0,a5	#, tmp220
.LEHB1:
	call	_ZNSt6vectorIiSaIiEEC1EmRKS0_		#
.LEHE1:
# /usr/riscv64-linux-gnu/include/c++/13/bits/allocator.h:184:       ~allocator() _GLIBCXX_NOTHROW { }
	li	a5,-8192		# tmp225,
	addi	a5,a5,-1840	#, tmp224, tmp225
	addi	a5,a5,-48	#, tmp473, tmp224
	add	a5,a5,s0	#, tmp223, tmp473
	mv	a0,a5	#, tmp223
	call	_ZNSt15__new_allocatorIiED2Ev		#
	nop	
# problem49.cc:31:     for (int j = 0, t = i; j < 4; j++, t /= 10) {
	li	a5,-8192		# tmp226,
	addi	a5,a5,-48	#, tmp474, tmp226
	add	a5,a5,s0	#, tmp227, tmp474
	sw	zero,-1892(a5)	#, j
# problem49.cc:31:     for (int j = 0, t = i; j < 4; j++, t /= 10) {
	li	a5,-8192		# tmp228,
	addi	a5,a5,-48	#, tmp475, tmp228
	add	a5,a5,s0	#, tmp229, tmp475
	li	a4,-8192		# tmp230,
	addi	a4,a4,-48	#, tmp476, tmp230
	add	a4,a4,s0	#, tmp231, tmp476
	lw	a4,-1896(a4)		# tmp232, i
	sw	a4,-1888(a5)	# tmp232, t
# problem49.cc:31:     for (int j = 0, t = i; j < 4; j++, t /= 10) {
	j	.L12		#
.L13:
# problem49.cc:32:       a[3-j] = t % 10;
	li	a5,-8192		# tmp233,
	addi	a5,a5,-48	#, tmp477, tmp233
	add	a5,a5,s0	#, tmp234, tmp477
	lw	a5,-1888(a5)		# tmp237, t
	mv	a4,a5	# tmp236, tmp237
	li	a5,10		# tmp239,
	remw	a5,a4,a5	# tmp239, tmp238, tmp236
	sext.w	s1,a5	# _2, tmp238
# problem49.cc:32:       a[3-j] = t % 10;
	li	a5,-8192		# tmp240,
	addi	a5,a5,-48	#, tmp478, tmp240
	add	a4,a5,s0	#, tmp241, tmp478
	li	a5,3		# tmp243,
	lw	a4,-1892(a4)		# tmp245, j
	subw	a5,a5,a4	# tmp242, tmp243, tmp244
	sext.w	a5,a5	# _3, tmp242
# problem49.cc:32:       a[3-j] = t % 10;
	mv	a4,a5	# _4, _3
	li	a5,-8192		# tmp248,
	addi	a5,a5,-1864	#, tmp247, tmp248
	addi	a5,a5,-48	#, tmp479, tmp247
	add	a5,a5,s0	#, tmp246, tmp479
	mv	a1,a4	#, _4
	mv	a0,a5	#, tmp246
	call	_ZNSt6vectorIiSaIiEEixEm		#
	mv	a5,a0	# _5,
# problem49.cc:32:       a[3-j] = t % 10;
	sw	s1,0(a5)	# _2, *_5
# problem49.cc:31:     for (int j = 0, t = i; j < 4; j++, t /= 10) {
	li	a5,-8192		# tmp249,
	addi	a5,a5,-48	#, tmp480, tmp249
	add	a5,a5,s0	#, tmp250, tmp480
	li	a4,-8192		# tmp251,
	addi	a4,a4,-48	#, tmp481, tmp251
	add	a4,a4,s0	#, tmp252, tmp481
	lw	a4,-1892(a4)		# tmp255, j
	addiw	a4,a4,1	#, tmp253, tmp254
	sw	a4,-1892(a5)	# tmp253, j
# problem49.cc:31:     for (int j = 0, t = i; j < 4; j++, t /= 10) {
	li	a5,-8192		# tmp256,
	addi	a5,a5,-48	#, tmp482, tmp256
	add	a5,a5,s0	#, tmp257, tmp482
	li	a4,-8192		# tmp258,
	addi	a4,a4,-48	#, tmp483, tmp258
	add	a4,a4,s0	#, tmp259, tmp483
	lw	a4,-1888(a4)		# tmp262, t
	mv	a3,a4	# tmp261, tmp262
	li	a4,10		# tmp264,
	divw	a4,a3,a4	# tmp264, tmp263, tmp261
	sw	a4,-1888(a5)	# tmp263, t
.L12:
# problem49.cc:31:     for (int j = 0, t = i; j < 4; j++, t /= 10) {
	li	a5,-8192		# tmp265,
	addi	a5,a5,-48	#, tmp484, tmp265
	add	a5,a5,s0	#, tmp266, tmp484
	lw	a5,-1892(a5)		# tmp268, j
	sext.w	a4,a5	# tmp269, tmp267
	li	a5,3		# tmp270,
	ble	a4,a5,.L13	#, tmp269, tmp270,
# problem49.cc:35:     vector<int> s;
	li	a5,-8192		# tmp273,
	addi	a5,a5,-1840	#, tmp272, tmp273
	addi	a5,a5,-48	#, tmp485, tmp272
	add	a5,a5,s0	#, tmp271, tmp485
	mv	a0,a5	#, tmp271
	call	_ZNSt6vectorIiSaIiEEC1Ev		#
.L17:
# problem49.cc:38:       int n = accumulate(a.begin(), a.end(), 0, func<int>());
	li	a5,-8192		# tmp276,
	addi	a5,a5,-1864	#, tmp275, tmp276
	addi	a5,a5,-48	#, tmp486, tmp275
	add	a5,a5,s0	#, tmp274, tmp486
	mv	a0,a5	#, tmp274
	call	_ZNSt6vectorIiSaIiEE5beginEv		#
	mv	s1,a0	# D.65176,
# problem49.cc:38:       int n = accumulate(a.begin(), a.end(), 0, func<int>());
	li	a5,-8192		# tmp279,
	addi	a5,a5,-1864	#, tmp278, tmp279
	addi	a5,a5,-48	#, tmp487, tmp278
	add	a5,a5,s0	#, tmp277, tmp487
	mv	a0,a5	#, tmp277
	call	_ZNSt6vectorIiSaIiEE3endEv		#
	mv	a5,a0	# D.65177,
# problem49.cc:38:       int n = accumulate(a.begin(), a.end(), 0, func<int>());
	mv	a3,s3	#, D.65178
	li	a2,0		#,
	mv	a1,a5	#, D.65177
	mv	a0,s1	#, D.65176
.LEHB2:
	call	_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_		#
	mv	a5,a0	# tmp280,
	mv	a4,a5	# _6, tmp280
# problem49.cc:38:       int n = accumulate(a.begin(), a.end(), 0, func<int>());
	li	a5,-8192		# tmp281,
	addi	a5,a5,-48	#, tmp488, tmp281
	add	a5,a5,s0	#, tmp282, tmp488
	sw	a4,-1900(a5)	# _6, n
# problem49.cc:40:       if (!seen[n] && is_prime(n)) {
	li	a5,-8192		# tmp283,
	addi	a5,a5,-48	#, tmp489, tmp283
	add	a5,a5,s0	#, tmp284, tmp489
	lw	a5,-1900(a5)		# n.2_7, n
	li	a4,-8192		# tmp285,
	addi	a4,a4,-48	#, tmp490, tmp285
	add	a4,a4,s0	#, tmp286, tmp490
	add	a5,a4,a5	# n.2_7, tmp287, tmp286
	lbu	a5,-1816(a5)	# _8, seen[n.2_7]
# problem49.cc:40:       if (!seen[n] && is_prime(n)) {
	xori	a5,a5,1	#, tmp288, _8
	andi	a5,a5,0xff	# _9, tmp288
# problem49.cc:40:       if (!seen[n] && is_prime(n)) {
	beq	a5,zero,.L14	#, _9,,
# problem49.cc:40:       if (!seen[n] && is_prime(n)) {
	li	a5,-8192		# tmp289,
	addi	a5,a5,-48	#, tmp491, tmp289
	add	a5,a5,s0	#, tmp290, tmp491
	lw	a5,-1900(a5)		# n.3_10, n
	mv	a0,a5	#, n.3_10
	call	_ZL8is_primei		#
	mv	a5,a0	# tmp291,
# problem49.cc:40:       if (!seen[n] && is_prime(n)) {
	beq	a5,zero,.L14	#, _11,,
# problem49.cc:40:       if (!seen[n] && is_prime(n)) {
	li	a5,1		# iftmp.1_54,
# problem49.cc:40:       if (!seen[n] && is_prime(n)) {
	j	.L15		#
.L14:
# problem49.cc:40:       if (!seen[n] && is_prime(n)) {
	li	a5,0		# iftmp.1_54,
.L15:
# problem49.cc:40:       if (!seen[n] && is_prime(n)) {
	beq	a5,zero,.L16	#, iftmp.1_54,,
# problem49.cc:41:         s.push_back(n);
	li	a5,-8192		# tmp294,
	addi	a5,a5,-1900	#, tmp293, tmp294
	addi	a5,a5,-48	#, tmp492, tmp293
	add	a4,a5,s0	#, tmp292, tmp492
	li	a5,-8192		# tmp297,
	addi	a5,a5,-1840	#, tmp296, tmp297
	addi	a5,a5,-48	#, tmp493, tmp296
	add	a5,a5,s0	#, tmp295, tmp493
	mv	a1,a4	#, tmp292
	mv	a0,a5	#, tmp295
	call	_ZNSt6vectorIiSaIiEE9push_backERKi		#
# problem49.cc:42:         seen[n] = true;
	li	a5,-8192		# tmp298,
	addi	a5,a5,-48	#, tmp494, tmp298
	add	a5,a5,s0	#, tmp299, tmp494
	lw	a5,-1900(a5)		# n.4_12, n
# problem49.cc:42:         seen[n] = true;
	li	a4,-8192		# tmp300,
	addi	a4,a4,-48	#, tmp495, tmp300
	add	a4,a4,s0	#, tmp301, tmp495
	add	a5,a4,a5	# n.4_12, tmp302, tmp301
	li	a4,1		# tmp303,
	sb	a4,-1816(a5)	# tmp303, seen[n.4_12]
.L16:
# problem49.cc:44:     } while (next_permutation(a.begin(), a.end()));
	li	a5,-8192		# tmp306,
	addi	a5,a5,-1864	#, tmp305, tmp306
	addi	a5,a5,-48	#, tmp496, tmp305
	add	a5,a5,s0	#, tmp304, tmp496
	mv	a0,a5	#, tmp304
	call	_ZNSt6vectorIiSaIiEE5beginEv		#
	mv	s1,a0	# D.65189,
# problem49.cc:44:     } while (next_permutation(a.begin(), a.end()));
	li	a5,-8192		# tmp309,
	addi	a5,a5,-1864	#, tmp308, tmp309
	addi	a5,a5,-48	#, tmp497, tmp308
	add	a5,a5,s0	#, tmp307, tmp497
	mv	a0,a5	#, tmp307
	call	_ZNSt6vectorIiSaIiEE3endEv		#
	mv	a5,a0	# D.65190,
# problem49.cc:44:     } while (next_permutation(a.begin(), a.end()));
	mv	a1,a5	#, D.65190
	mv	a0,s1	#, D.65189
	call	_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_		#
	mv	a5,a0	# tmp310,
# problem49.cc:44:     } while (next_permutation(a.begin(), a.end()));
	bne	a5,zero,.L17	#, _99,,
# problem49.cc:46:     for (int j = 0; j < s.size(); j++) {
	li	a5,-8192		# tmp311,
	addi	a5,a5,-48	#, tmp498, tmp311
	add	a5,a5,s0	#, tmp312, tmp498
	sw	zero,-1884(a5)	#, j
# problem49.cc:46:     for (int j = 0; j < s.size(); j++) {
	j	.L18		#
.L26:
# problem49.cc:47:       for (int k = j+1; k < s.size(); k++) {
	li	a5,-8192		# tmp313,
	addi	a5,a5,-48	#, tmp499, tmp313
	add	a5,a5,s0	#, tmp314, tmp499
	li	a4,-8192		# tmp315,
	addi	a4,a4,-48	#, tmp500, tmp315
	add	a4,a4,s0	#, tmp316, tmp500
	lw	a4,-1884(a4)		# tmp319, j
	addiw	a4,a4,1	#, tmp317, tmp318
	sw	a4,-1880(a5)	# tmp317, k
# problem49.cc:47:       for (int k = j+1; k < s.size(); k++) {
	j	.L19		#
.L25:
# problem49.cc:48:         for (int l = k+1; l < s.size(); l++) {
	li	a5,-8192		# tmp320,
	addi	a5,a5,-48	#, tmp501, tmp320
	add	a5,a5,s0	#, tmp321, tmp501
	li	a4,-8192		# tmp322,
	addi	a4,a4,-48	#, tmp502, tmp322
	add	a4,a4,s0	#, tmp323, tmp502
	lw	a4,-1880(a4)		# tmp326, k
	addiw	a4,a4,1	#, tmp324, tmp325
	sw	a4,-1876(a5)	# tmp324, l
# problem49.cc:48:         for (int l = k+1; l < s.size(); l++) {
	j	.L20		#
.L24:
# problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	li	a5,-8192		# tmp327,
	addi	a5,a5,-48	#, tmp503, tmp327
	add	a5,a5,s0	#, tmp328, tmp503
	lw	a4,-1884(a5)		# _13, j
	li	a5,-8192		# tmp331,
	addi	a5,a5,-1840	#, tmp330, tmp331
	addi	a5,a5,-48	#, tmp504, tmp330
	add	a5,a5,s0	#, tmp329, tmp504
	mv	a1,a4	#, _13
	mv	a0,a5	#, tmp329
	call	_ZNSt6vectorIiSaIiEEixEm		#
	mv	a5,a0	# _14,
# problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	lw	a5,0(a5)		# _15, *_14
# problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	mv	a4,a5	# tmp332, _15
	li	a5,1487		# tmp333,
	beq	a4,a5,.L21	#, tmp332, tmp333,
# problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	li	a5,-8192		# tmp334,
	addi	a5,a5,-48	#, tmp505, tmp334
	add	a5,a5,s0	#, tmp335, tmp505
	lw	a4,-1876(a5)		# _16, l
	li	a5,-8192		# tmp338,
	addi	a5,a5,-1840	#, tmp337, tmp338
	addi	a5,a5,-48	#, tmp506, tmp337
	add	a5,a5,s0	#, tmp336, tmp506
	mv	a1,a4	#, _16
	mv	a0,a5	#, tmp336
	call	_ZNSt6vectorIiSaIiEEixEm		#
	mv	a5,a0	# _17,
# problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	lw	s1,0(a5)		# _18, *_17
# problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	li	a5,-8192		# tmp339,
	addi	a5,a5,-48	#, tmp507, tmp339
	add	a5,a5,s0	#, tmp340, tmp507
	lw	a4,-1880(a5)		# _19, k
	li	a5,-8192		# tmp343,
	addi	a5,a5,-1840	#, tmp342, tmp343
	addi	a5,a5,-48	#, tmp508, tmp342
	add	a5,a5,s0	#, tmp341, tmp508
	mv	a1,a4	#, _19
	mv	a0,a5	#, tmp341
	call	_ZNSt6vectorIiSaIiEEixEm		#
	mv	a5,a0	# _20,
# problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	lw	a5,0(a5)		# _21, *_20
	subw	a5,s1,a5	# tmp344, _18, _21
	sext.w	s2,a5	# _22, tmp344
# problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	li	a5,-8192		# tmp345,
	addi	a5,a5,-48	#, tmp509, tmp345
	add	a5,a5,s0	#, tmp346, tmp509
	lw	a4,-1880(a5)		# _23, k
	li	a5,-8192		# tmp349,
	addi	a5,a5,-1840	#, tmp348, tmp349
	addi	a5,a5,-48	#, tmp510, tmp348
	add	a5,a5,s0	#, tmp347, tmp510
	mv	a1,a4	#, _23
	mv	a0,a5	#, tmp347
	call	_ZNSt6vectorIiSaIiEEixEm		#
	mv	a5,a0	# _24,
# problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	lw	s1,0(a5)		# _25, *_24
# problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	li	a5,-8192		# tmp350,
	addi	a5,a5,-48	#, tmp511, tmp350
	add	a5,a5,s0	#, tmp351, tmp511
	lw	a4,-1884(a5)		# _26, j
	li	a5,-8192		# tmp354,
	addi	a5,a5,-1840	#, tmp353, tmp354
	addi	a5,a5,-48	#, tmp512, tmp353
	add	a5,a5,s0	#, tmp352, tmp512
	mv	a1,a4	#, _26
	mv	a0,a5	#, tmp352
	call	_ZNSt6vectorIiSaIiEEixEm		#
	mv	a5,a0	# _27,
# problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	lw	a5,0(a5)		# _28, *_27
	subw	a5,s1,a5	# tmp355, _25, _28
	sext.w	a5,a5	# _29, tmp355
# problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	mv	a4,s2	# tmp356, _22
	bne	a4,a5,.L21	#, tmp356, tmp357,
# problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	li	a5,1		# iftmp.7_55,
# problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	j	.L22		#
.L21:
# problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	li	a5,0		# iftmp.7_55,
.L22:
# problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	beq	a5,zero,.L23	#, iftmp.7_55,,
# problem49.cc:50:             cout << s[j] << s[k] << s[l] << endl;
	li	a5,-8192		# tmp358,
	addi	a5,a5,-48	#, tmp513, tmp358
	add	a5,a5,s0	#, tmp359, tmp513
	lw	a4,-1884(a5)		# _30, j
	li	a5,-8192		# tmp362,
	addi	a5,a5,-1840	#, tmp361, tmp362
	addi	a5,a5,-48	#, tmp514, tmp361
	add	a5,a5,s0	#, tmp360, tmp514
	mv	a1,a4	#, _30
	mv	a0,a5	#, tmp360
	call	_ZNSt6vectorIiSaIiEEixEm		#
	mv	a5,a0	# _31,
# problem49.cc:50:             cout << s[j] << s[k] << s[l] << endl;
	lw	a5,0(a5)		# _32, *_31
	mv	a1,a5	#, _32
	la	a0,_ZSt4cout		#,
	call	_ZNSolsEi@plt	#
	mv	s1,a0	# _33,
# problem49.cc:50:             cout << s[j] << s[k] << s[l] << endl;
	li	a5,-8192		# tmp363,
	addi	a5,a5,-48	#, tmp515, tmp363
	add	a5,a5,s0	#, tmp364, tmp515
	lw	a4,-1880(a5)		# _34, k
	li	a5,-8192		# tmp367,
	addi	a5,a5,-1840	#, tmp366, tmp367
	addi	a5,a5,-48	#, tmp516, tmp366
	add	a5,a5,s0	#, tmp365, tmp516
	mv	a1,a4	#, _34
	mv	a0,a5	#, tmp365
	call	_ZNSt6vectorIiSaIiEEixEm		#
	mv	a5,a0	# _35,
	lw	a5,0(a5)		# _36, *_35
	mv	a1,a5	#, _36
	mv	a0,s1	#, _33
	call	_ZNSolsEi@plt	#
	mv	s1,a0	# _37,
# problem49.cc:50:             cout << s[j] << s[k] << s[l] << endl;
	li	a5,-8192		# tmp368,
	addi	a5,a5,-48	#, tmp517, tmp368
	add	a5,a5,s0	#, tmp369, tmp517
	lw	a4,-1876(a5)		# _38, l
	li	a5,-8192		# tmp372,
	addi	a5,a5,-1840	#, tmp371, tmp372
	addi	a5,a5,-48	#, tmp518, tmp371
	add	a5,a5,s0	#, tmp370, tmp518
	mv	a1,a4	#, _38
	mv	a0,a5	#, tmp370
	call	_ZNSt6vectorIiSaIiEEixEm		#
	mv	a5,a0	# _39,
# problem49.cc:50:             cout << s[j] << s[k] << s[l] << endl;
	lw	a5,0(a5)		# _40, *_39
	mv	a1,a5	#, _40
	mv	a0,s1	#, _37
	call	_ZNSolsEi@plt	#
	mv	a5,a0	# _41,
# problem49.cc:50:             cout << s[j] << s[k] << s[l] << endl;
	la	a1,_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_		#,
	mv	a0,a5	#, _41
	call	_ZNSolsEPFRSoS_E@plt	#
.LEHE2:
.L23:
# problem49.cc:48:         for (int l = k+1; l < s.size(); l++) {
	li	a5,-8192		# tmp373,
	addi	a5,a5,-48	#, tmp519, tmp373
	add	a5,a5,s0	#, tmp374, tmp519
	li	a4,-8192		# tmp375,
	addi	a4,a4,-48	#, tmp520, tmp375
	add	a4,a4,s0	#, tmp376, tmp520
	lw	a4,-1876(a4)		# tmp379, l
	addiw	a4,a4,1	#, tmp377, tmp378
	sw	a4,-1876(a5)	# tmp377, l
.L20:
# problem49.cc:48:         for (int l = k+1; l < s.size(); l++) {
	li	a5,-8192		# tmp380,
	addi	a5,a5,-48	#, tmp521, tmp380
	add	a5,a5,s0	#, tmp381, tmp521
	lw	s1,-1876(a5)		# _42, l
# problem49.cc:48:         for (int l = k+1; l < s.size(); l++) {
	li	a5,-8192		# tmp384,
	addi	a5,a5,-1840	#, tmp383, tmp384
	addi	a5,a5,-48	#, tmp522, tmp383
	add	a5,a5,s0	#, tmp382, tmp522
	mv	a0,a5	#, tmp382
	call	_ZNKSt6vectorIiSaIiEE4sizeEv		#
	mv	a5,a0	# _43,
# problem49.cc:48:         for (int l = k+1; l < s.size(); l++) {
	sltu	a5,s1,a5	# _43, tmp386, _42
	andi	a5,a5,0xff	# retval.8_115, tmp385
	bne	a5,zero,.L24	#, retval.8_115,,
# problem49.cc:47:       for (int k = j+1; k < s.size(); k++) {
	li	a5,-8192		# tmp387,
	addi	a5,a5,-48	#, tmp523, tmp387
	add	a5,a5,s0	#, tmp388, tmp523
	li	a4,-8192		# tmp389,
	addi	a4,a4,-48	#, tmp524, tmp389
	add	a4,a4,s0	#, tmp390, tmp524
	lw	a4,-1880(a4)		# tmp393, k
	addiw	a4,a4,1	#, tmp391, tmp392
	sw	a4,-1880(a5)	# tmp391, k
.L19:
# problem49.cc:47:       for (int k = j+1; k < s.size(); k++) {
	li	a5,-8192		# tmp394,
	addi	a5,a5,-48	#, tmp525, tmp394
	add	a5,a5,s0	#, tmp395, tmp525
	lw	s1,-1880(a5)		# _44, k
# problem49.cc:47:       for (int k = j+1; k < s.size(); k++) {
	li	a5,-8192		# tmp398,
	addi	a5,a5,-1840	#, tmp397, tmp398
	addi	a5,a5,-48	#, tmp526, tmp397
	add	a5,a5,s0	#, tmp396, tmp526
	mv	a0,a5	#, tmp396
	call	_ZNKSt6vectorIiSaIiEE4sizeEv		#
	mv	a5,a0	# _45,
# problem49.cc:47:       for (int k = j+1; k < s.size(); k++) {
	sltu	a5,s1,a5	# _45, tmp400, _44
	andi	a5,a5,0xff	# retval.9_111, tmp399
	bne	a5,zero,.L25	#, retval.9_111,,
# problem49.cc:46:     for (int j = 0; j < s.size(); j++) {
	li	a5,-8192		# tmp401,
	addi	a5,a5,-48	#, tmp527, tmp401
	add	a5,a5,s0	#, tmp402, tmp527
	li	a4,-8192		# tmp403,
	addi	a4,a4,-48	#, tmp528, tmp403
	add	a4,a4,s0	#, tmp404, tmp528
	lw	a4,-1884(a4)		# tmp407, j
	addiw	a4,a4,1	#, tmp405, tmp406
	sw	a4,-1884(a5)	# tmp405, j
.L18:
# problem49.cc:46:     for (int j = 0; j < s.size(); j++) {
	li	a5,-8192		# tmp408,
	addi	a5,a5,-48	#, tmp529, tmp408
	add	a5,a5,s0	#, tmp409, tmp529
	lw	s1,-1884(a5)		# _46, j
# problem49.cc:46:     for (int j = 0; j < s.size(); j++) {
	li	a5,-8192		# tmp412,
	addi	a5,a5,-1840	#, tmp411, tmp412
	addi	a5,a5,-48	#, tmp530, tmp411
	add	a5,a5,s0	#, tmp410, tmp530
	mv	a0,a5	#, tmp410
	call	_ZNKSt6vectorIiSaIiEE4sizeEv		#
	mv	a5,a0	# _47,
# problem49.cc:46:     for (int j = 0; j < s.size(); j++) {
	sltu	a5,s1,a5	# _47, tmp414, _46
	andi	a5,a5,0xff	# retval.10_103, tmp413
	bne	a5,zero,.L26	#, retval.10_103,,
# problem49.cc:55:   }
	li	a5,-8192		# tmp417,
	addi	a5,a5,-1840	#, tmp416, tmp417
	addi	a5,a5,-48	#, tmp531, tmp416
	add	a5,a5,s0	#, tmp415, tmp531
	mv	a0,a5	#, tmp415
	call	_ZNSt6vectorIiSaIiEED1Ev		#
# problem49.cc:55:   }
	li	a5,-8192		# tmp420,
	addi	a5,a5,-1864	#, tmp419, tmp420
	addi	a5,a5,-48	#, tmp532, tmp419
	add	a5,a5,s0	#, tmp418, tmp532
	mv	a0,a5	#, tmp418
	call	_ZNSt6vectorIiSaIiEED1Ev		#
# problem49.cc:28:   for (int i = 1000; i < 10000; i++) {
	li	a5,-8192		# tmp421,
	addi	a5,a5,-48	#, tmp533, tmp421
	add	a5,a5,s0	#, tmp422, tmp533
	li	a4,-8192		# tmp423,
	addi	a4,a4,-48	#, tmp534, tmp423
	add	a4,a4,s0	#, tmp424, tmp534
	lw	a4,-1896(a4)		# tmp427, i
	addiw	a4,a4,1	#, tmp425, tmp426
	sw	a4,-1896(a5)	# tmp425, i
.L11:
# problem49.cc:28:   for (int i = 1000; i < 10000; i++) {
	li	a5,-8192		# tmp428,
	addi	a5,a5,-48	#, tmp535, tmp428
	add	a5,a5,s0	#, tmp429, tmp535
	lw	a5,-1896(a5)		# tmp433, i
	sext.w	a4,a5	# tmp434, tmp432
	li	a5,8192		# tmp436,
	addi	a5,a5,1807	#, tmp435, tmp436
	ble	a4,a5,.L27	#, tmp434, tmp435,
# problem49.cc:57:   return 0;
	li	a5,0		# _77,
# problem49.cc:58: }
	mv	a4,a5	# <retval>, _77
	la	a5,__stack_chk_guard		# tmp456,
	ld	a3, -56(s0)	# tmp459, D.65608
	ld	a5, 0(a5)	# tmp457, __stack_chk_guard
	xor	a5, a3, a5	# tmp457, tmp459
	li	a3, 0	# tmp459
	beq	a5,zero,.L33	#, tmp457,,
	j	.L36		#
.L34:
# /usr/riscv64-linux-gnu/include/c++/13/bits/allocator.h:184:       ~allocator() _GLIBCXX_NOTHROW { }
	mv	s1,a0	# tmp441,
	li	a5,-8192		# tmp440,
	addi	a5,a5,-1840	#, tmp439, tmp440
	addi	a5,a5,-48	#, tmp536, tmp439
	add	a5,a5,s0	#, tmp438, tmp536
	mv	a0,a5	#, tmp438
	call	_ZNSt15__new_allocatorIiED2Ev		#
	nop	
	mv	a4,s1	# D.65605, tmp441
	la	a5,__stack_chk_guard		# tmp442,
	ld	a3, -56(s0)	# tmp460, D.65608
	ld	a5, 0(a5)	# tmp443, __stack_chk_guard
	xor	a5, a3, a5	# tmp443, tmp460
	li	a3, 0	# tmp460
	beq	a5,zero,.L30	#, tmp443,,
	call	__stack_chk_fail@plt	#
.L30:
	mv	a0,a4	#, D.65605
.LEHB3:
	call	_Unwind_Resume@plt	#
.L35:
# problem49.cc:55:   }
	mv	s1,a0	# tmp448,
	li	a5,-8192		# tmp446,
	addi	a5,a5,-1840	#, tmp445, tmp446
	addi	a5,a5,-48	#, tmp537, tmp445
	add	a5,a5,s0	#, tmp444, tmp537
	mv	a0,a5	#, tmp444
	call	_ZNSt6vectorIiSaIiEED1Ev		#
	li	a5,-8192		# tmp453,
	addi	a5,a5,-1864	#, tmp452, tmp453
	addi	a5,a5,-48	#, tmp538, tmp452
	add	a5,a5,s0	#, tmp451, tmp538
	mv	a0,a5	#, tmp451
	call	_ZNSt6vectorIiSaIiEED1Ev		#
	mv	a4,s1	# D.65606, tmp447
	la	a5,__stack_chk_guard		# tmp454,
	ld	a3, -56(s0)	# tmp461, D.65608
	ld	a5, 0(a5)	# tmp455, __stack_chk_guard
	xor	a5, a3, a5	# tmp455, tmp461
	li	a3, 0	# tmp461
	beq	a5,zero,.L32	#, tmp455,,
	call	__stack_chk_fail@plt	#
.L32:
	mv	a0,a4	#, D.65606
	call	_Unwind_Resume@plt	#
.LEHE3:
.L36:
# problem49.cc:58: }
	call	__stack_chk_fail@plt	#
.L33:
	mv	a0,a4	#, <retval>
	li	t0,8192		#,
	add	sp,sp,t0	#,,
	.cfi_def_cfa 2, 1952
	ld	ra,1944(sp)		#,
	.cfi_restore 1
	ld	s0,1936(sp)		#,
	.cfi_restore 8
	ld	s1,1928(sp)		#,
	.cfi_restore 9
	ld	s2,1920(sp)		#,
	.cfi_restore 18
	ld	s3,1912(sp)		#,
	.cfi_restore 19
	addi	sp,sp,1952	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2631:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2631:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2631-.LLSDACSB2631
.LLSDACSB2631:
	.uleb128 .LEHB0-.LFB2631
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2631
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L34-.LFB2631
	.uleb128 0
	.uleb128 .LEHB2-.LFB2631
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L35-.LFB2631
	.uleb128 0
	.uleb128 .LEHB3-.LFB2631
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE2631:
	.text
	.size	main, .-main
	.align	1
	.type	_ZL8is_primei, @function
_ZL8is_primei:
.LFB2642:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp140, n
	sw	a5,-36(s0)	# tmp141, n
# problem49.cc:62:   if (n < 2) {
	lw	a5,-36(s0)		# tmp143, n
	sext.w	a4,a5	# tmp144, tmp142
	li	a5,1		# tmp145,
	bgt	a4,a5,.L38	#, tmp144, tmp145,
# problem49.cc:63:     return false;
	li	a5,0		# _6,
	j	.L39		#
.L38:
# problem49.cc:65:   else if (n % 2 == 0) {
	lw	a5,-36(s0)		# n.28_1, n
	andi	a5,a5,1	#, tmp147, tmp146
	sext.w	a5,a5	# _2, tmp147
# problem49.cc:65:   else if (n % 2 == 0) {
	bne	a5,zero,.L40	#, _2,,
# problem49.cc:66:     return n == 2;
	lw	a5,-36(s0)		# tmp150, n
	sext.w	a4,a5	# tmp152, tmp149
	li	a5,2		# tmp154,
	sub	a5,a4,a5	# tmp153, tmp152, tmp154
	seqz	a5,a5	# tmp151, tmp153
	andi	a5,a5,0xff	# _6, tmp148
	j	.L39		#
.L40:
# problem49.cc:69:     for (int d = 3; d*d <= n; d += 2) {
	li	a5,3		# tmp155,
	sw	a5,-20(s0)	# tmp155, d
# problem49.cc:69:     for (int d = 3; d*d <= n; d += 2) {
	j	.L41		#
.L43:
# problem49.cc:70:       if (n % d == 0) {
	lw	a5,-36(s0)		# tmp158, n
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-20(s0)		# tmp161, d
	remw	a5,a4,a5	# tmp160, tmp159, tmp157
	sext.w	a5,a5	# _3, tmp159
# problem49.cc:70:       if (n % d == 0) {
	bne	a5,zero,.L42	#, _3,,
# problem49.cc:71:         return false;
	li	a5,0		# _6,
	j	.L39		#
.L42:
# problem49.cc:69:     for (int d = 3; d*d <= n; d += 2) {
	lw	a5,-20(s0)		# tmp164, d
	addiw	a5,a5,2	#, tmp162, tmp163
	sw	a5,-20(s0)	# tmp162, d
.L41:
# problem49.cc:69:     for (int d = 3; d*d <= n; d += 2) {
	lw	a5,-20(s0)		# tmp167, d
	mulw	a5,a5,a5	# tmp165, tmp166, tmp166
	sext.w	a4,a5	# _4, tmp165
# problem49.cc:69:     for (int d = 3; d*d <= n; d += 2) {
	lw	a5,-36(s0)		# tmp169, n
	sext.w	a5,a5	# tmp170, tmp168
	bge	a5,a4,.L43	#, tmp170, tmp171,
# problem49.cc:74:     return true;
	li	a5,1		# _6,
.L39:
# problem49.cc:76: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2642:
	.size	_ZL8is_primei, .-_ZL8is_primei
	.section	.text._ZSt4fillIPbbEvT_S1_RKT0_,"axG",@progbits,_ZSt4fillIPbbEvT_S1_RKT0_,comdat
	.align	1
	.weak	_ZSt4fillIPbbEvT_S1_RKT0_
	.type	_ZSt4fillIPbbEvT_S1_RKT0_, @function
_ZSt4fillIPbbEvT_S1_RKT0_:
.LFB2897:
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
	sd	a2,-40(s0)	# __value, __value
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:1007:       std::__fill_a(__first, __last, __value);
	ld	a2,-40(s0)		#, __value
	ld	a1,-32(s0)		#, __last
	ld	a0,-24(s0)		#, __first
	call	_ZSt8__fill_aIPbbEvT_S1_RKT0_		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:1008:     }
	nop	
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2897:
	.size	_ZSt4fillIPbbEvT_S1_RKT0_, .-_ZSt4fillIPbbEvT_S1_RKT0_
	.section	.text._ZNSt6vectorIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5EmRKS0_,comdat
	.align	1
	.weak	_ZNSt6vectorIiSaIiEEC2EmRKS0_
	.type	_ZNSt6vectorIiSaIiEEC2EmRKS0_, @function
_ZNSt6vectorIiSaIiEEC2EmRKS0_:
.LFB2905:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2905
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	sd	s1,40(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# this, this
	sd	a1,-48(s0)	# __n, __n
	sd	a2,-56(s0)	# __a, __a
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:557:       : _Base(_S_check_init_len(__n, __a), __a)
	ld	s1,-40(s0)		# _1, this
	ld	a1,-56(s0)		#, __a
	ld	a0,-48(s0)		#, __n
.LEHB4:
	call	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_		#
	mv	a5,a0	# _2,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:557:       : _Base(_S_check_init_len(__n, __a), __a)
	ld	a2,-56(s0)		#, __a
	mv	a1,a5	#, _2
	mv	a0,s1	#, _1
	call	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_		#
.LEHE4:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:558:       { _M_default_initialize(__n); }
	ld	a1,-48(s0)		#, __n
	ld	a0,-40(s0)		#, this
.LEHB5:
	call	_ZNSt6vectorIiSaIiEE21_M_default_initializeEm		#
.LEHE5:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:558:       { _M_default_initialize(__n); }
	j	.L48		#
.L47:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:558:       { _M_default_initialize(__n); }
	mv	s1,a0	# tmp138,
	ld	a5,-40(s0)		# _3, this
	mv	a0,a5	#, _3
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev		#
	mv	a5,s1	# D.65611, tmp138
	mv	a0,a5	#, D.65611
.LEHB6:
	call	_Unwind_Resume@plt	#
.LEHE6:
.L48:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:558:       { _M_default_initialize(__n); }
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	ld	s1,40(sp)		#,
	.cfi_restore 9
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2905:
	.section	.gcc_except_table
.LLSDA2905:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2905-.LLSDACSB2905
.LLSDACSB2905:
	.uleb128 .LEHB4-.LFB2905
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB2905
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L47-.LFB2905
	.uleb128 0
	.uleb128 .LEHB6-.LFB2905
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE2905:
	.section	.text._ZNSt6vectorIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5EmRKS0_,comdat
	.size	_ZNSt6vectorIiSaIiEEC2EmRKS0_, .-_ZNSt6vectorIiSaIiEEC2EmRKS0_
	.weak	_ZNSt6vectorIiSaIiEEC1EmRKS0_
	.set	_ZNSt6vectorIiSaIiEEC1EmRKS0_,_ZNSt6vectorIiSaIiEEC2EmRKS0_
	.section	.text._ZNSt6vectorIiSaIiEED2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEED5Ev,comdat
	.align	1
	.weak	_ZNSt6vectorIiSaIiEED2Ev
	.type	_ZNSt6vectorIiSaIiEED2Ev, @function
_ZNSt6vectorIiSaIiEED2Ev:
.LFB2908:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2908
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	sd	s1,56(sp)	#,
	sd	s2,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)	# this, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:735: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	ld	a5,-72(s0)		# tmp139, this
	ld	s2,0(a5)		# _1, this_7(D)->D.59566._M_impl.D.58873._M_start
	ld	a5,-72(s0)		# tmp140, this
	ld	s1,8(a5)		# _2, this_7(D)->D.59566._M_impl.D.58873._M_finish
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:736: 		      _M_get_Tp_allocator());
	ld	a5,-72(s0)		# _3, this
	mv	a0,a5	#, _3
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv		#
	mv	a5,a0	# _4,
	sd	s2,-56(s0)	# _1, __first
	sd	s1,-48(s0)	# _2, __last
	sd	a5,-40(s0)	# _4, D.65519
# /usr/riscv64-linux-gnu/include/c++/13/bits/alloc_traits.h:948:       std::_Destroy(__first, __last);
	ld	a1,-48(s0)		#, __last
	ld	a0,-56(s0)		#, __first
	call	_ZSt8_DestroyIPiEvT_S1_		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/alloc_traits.h:949:     }
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:738:       }
	ld	a5,-72(s0)		# _5, this
	mv	a0,a5	#, _5
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev		#
	nop	
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	ld	s1,56(sp)		#,
	.cfi_restore 9
	ld	s2,48(sp)		#,
	.cfi_restore 18
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2908:
	.section	.gcc_except_table
.LLSDA2908:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2908-.LLSDACSB2908
.LLSDACSB2908:
.LLSDACSE2908:
	.section	.text._ZNSt6vectorIiSaIiEED2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEED5Ev,comdat
	.size	_ZNSt6vectorIiSaIiEED2Ev, .-_ZNSt6vectorIiSaIiEED2Ev
	.weak	_ZNSt6vectorIiSaIiEED1Ev
	.set	_ZNSt6vectorIiSaIiEED1Ev,_ZNSt6vectorIiSaIiEED2Ev
	.section	.text._ZNSt6vectorIiSaIiEEixEm,"axG",@progbits,_ZNSt6vectorIiSaIiEEixEm,comdat
	.align	1
	.weak	_ZNSt6vectorIiSaIiEEixEm
	.type	_ZNSt6vectorIiSaIiEEixEm, @function
_ZNSt6vectorIiSaIiEEixEm:
.LFB2910:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# this, this
	sd	a1,-32(s0)	# __n, __n
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	ld	a5,-24(s0)		# tmp138, this
	ld	a4,0(a5)		# _1, this_4(D)->D.59566._M_impl.D.58873._M_start
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	ld	a5,-32(s0)		# tmp139, __n
	slli	a5,a5,2	#, _2, tmp139
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	add	a5,a4,a5	# _2, _6, _1
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1130:       }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2910:
	.size	_ZNSt6vectorIiSaIiEEixEm, .-_ZNSt6vectorIiSaIiEEixEm
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC5Ev,comdat
	.align	1
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev:
.LFB2912:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# this, this
	ld	a5,-40(s0)		# tmp135, this
	sd	a5,-32(s0)	# tmp135, this
	ld	a5,-32(s0)		# tmp136, this
	sd	a5,-24(s0)	# tmp136, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:88:       __new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/allocator.h:163:       allocator() _GLIBCXX_NOTHROW { }
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:142: 	: _Tp_alloc_type()
	ld	a5,-40(s0)		# _1, this
	mv	a0,a5	#, _1
	call	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:143: 	{ }
	nop	
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2912:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEED5Ev,comdat
	.align	1
	.weak	_ZNSt12_Vector_baseIiSaIiEED2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEED2Ev, @function
_ZNSt12_Vector_baseIiSaIiEED2Ev:
.LFB2915:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2915
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# this, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:369: 	_M_deallocate(_M_impl._M_start,
	ld	a5,-24(s0)		# tmp141, this
	ld	a3,0(a5)		# _1, this_9(D)->_M_impl.D.58873._M_start
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:370: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ld	a5,-24(s0)		# tmp142, this
	ld	a4,16(a5)		# _2, this_9(D)->_M_impl.D.58873._M_end_of_storage
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:370: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ld	a5,-24(s0)		# tmp143, this
	ld	a5,0(a5)		# _3, this_9(D)->_M_impl.D.58873._M_start
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:370: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	a5,a4,a5	# _4, _2, _3
	srai	a5,a5,2	#, tmp144, _4
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:369: 	_M_deallocate(_M_impl._M_start,
	mv	a2,a5	#, _6
	mv	a1,a3	#, _1
	ld	a0,-24(s0)		#, this
	call	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:371:       }
	ld	a5,-24(s0)		# _7, this
	mv	a0,a5	#, _7
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev		#
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
.LFE2915:
	.section	.gcc_except_table
.LLSDA2915:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2915-.LLSDACSB2915
.LLSDACSB2915:
.LLSDACSE2915:
	.section	.text._ZNSt12_Vector_baseIiSaIiEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIiSaIiEED2Ev, .-_ZNSt12_Vector_baseIiSaIiEED2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEED1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEED1Ev,_ZNSt12_Vector_baseIiSaIiEED2Ev
	.section	.text._ZNSt6vectorIiSaIiEE5beginEv,"axG",@progbits,_ZNSt6vectorIiSaIiEE5beginEv,comdat
	.align	1
	.weak	_ZNSt6vectorIiSaIiEE5beginEv
	.type	_ZNSt6vectorIiSaIiEE5beginEv, @function
_ZNSt6vectorIiSaIiEE5beginEv:
.LFB2917:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# this, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:873:       begin() _GLIBCXX_NOEXCEPT
	la	a5,__stack_chk_guard		# tmp137,
	ld	a4, 0(a5)	# tmp142, __stack_chk_guard
	sd	a4, -24(s0)	# tmp142, D.65612
	li	a4, 0	# tmp142
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:874:       { return iterator(this->_M_impl._M_start); }
	ld	a4,-40(s0)		# _1, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:874:       { return iterator(this->_M_impl._M_start); }
	addi	a5,s0,-32	#, tmp138,
	mv	a1,a4	#, _1
	mv	a0,a5	#, tmp138
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:874:       { return iterator(this->_M_impl._M_start); }
	ld	a5,-32(s0)		# D.65361, D.62027
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:874:       { return iterator(this->_M_impl._M_start); }
	mv	a4,a5	# <retval>, D.65361
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:874:       { return iterator(this->_M_impl._M_start); }
	la	a5,__stack_chk_guard		# tmp140,
	ld	a3, -24(s0)	# tmp143, D.65612
	ld	a5, 0(a5)	# tmp141, __stack_chk_guard
	xor	a5, a3, a5	# tmp141, tmp143
	li	a3, 0	# tmp143
	beq	a5,zero,.L56	#, tmp141,,
	call	__stack_chk_fail@plt	#
.L56:
	mv	a0,a4	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2917:
	.size	_ZNSt6vectorIiSaIiEE5beginEv, .-_ZNSt6vectorIiSaIiEE5beginEv
	.section	.text._ZNSt6vectorIiSaIiEE3endEv,"axG",@progbits,_ZNSt6vectorIiSaIiEE3endEv,comdat
	.align	1
	.weak	_ZNSt6vectorIiSaIiEE3endEv
	.type	_ZNSt6vectorIiSaIiEE3endEv, @function
_ZNSt6vectorIiSaIiEE3endEv:
.LFB2918:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# this, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:893:       end() _GLIBCXX_NOEXCEPT
	la	a5,__stack_chk_guard		# tmp137,
	ld	a4, 0(a5)	# tmp143, __stack_chk_guard
	sd	a4, -24(s0)	# tmp143, D.65613
	li	a4, 0	# tmp143
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:894:       { return iterator(this->_M_impl._M_finish); }
	ld	a5,-40(s0)		# tmp138, this
	addi	a4,a5,8	#, _1, tmp138
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:894:       { return iterator(this->_M_impl._M_finish); }
	addi	a5,s0,-32	#, tmp139,
	mv	a1,a4	#, _1
	mv	a0,a5	#, tmp139
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:894:       { return iterator(this->_M_impl._M_finish); }
	ld	a5,-32(s0)		# D.65364, D.62029
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:894:       { return iterator(this->_M_impl._M_finish); }
	mv	a4,a5	# <retval>, D.65364
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:894:       { return iterator(this->_M_impl._M_finish); }
	la	a5,__stack_chk_guard		# tmp141,
	ld	a3, -24(s0)	# tmp144, D.65613
	ld	a5, 0(a5)	# tmp142, __stack_chk_guard
	xor	a5, a3, a5	# tmp142, tmp144
	li	a3, 0	# tmp144
	beq	a5,zero,.L59	#, tmp142,,
	call	__stack_chk_fail@plt	#
.L59:
	mv	a0,a4	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2918:
	.size	_ZNSt6vectorIiSaIiEE3endEv, .-_ZNSt6vectorIiSaIiEE3endEv
	.section	.text._ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_,"axG",@progbits,_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_,comdat
	.align	1
	.weak	_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_
	.type	_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_, @function
_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_:
.LFB2919:
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
	mv	a5,a2	# tmp139, __init
	sb	a3,-40(s0)	# __binary_op, __binary_op
	sw	a5,-36(s0)	# tmp140, __init
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_numeric.h:168:       for (; __first != __last; ++__first)
	j	.L61		#
.L62:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_numeric.h:169: 	__init = __binary_op(_GLIBCXX_MOVE_IF_20(__init), *__first);
	addi	a5,s0,-24	#, tmp141,
	mv	a0,a5	#, tmp141
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv		#
	mv	a5,a0	# _1,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_numeric.h:169: 	__init = __binary_op(_GLIBCXX_MOVE_IF_20(__init), *__first);
	lw	a3,0(a5)		# _2, *_1
	lw	a4,-36(s0)		# tmp142, __init
	addi	a5,s0,-40	#, tmp143,
	mv	a2,a3	#, _2
	mv	a1,a4	#, tmp142
	mv	a0,a5	#, tmp143
	call	_ZNK4funcIiEclEii		#
	mv	a5,a0	# tmp144,
	sw	a5,-36(s0)	# tmp144, __init
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_numeric.h:168:       for (; __first != __last; ++__first)
	addi	a5,s0,-24	#, tmp145,
	mv	a0,a5	#, tmp145
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv		#
.L61:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_numeric.h:168:       for (; __first != __last; ++__first)
	addi	a4,s0,-32	#, tmp146,
	addi	a5,s0,-24	#, tmp147,
	mv	a1,a4	#, tmp146
	mv	a0,a5	#, tmp147
	call	_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_		#
	mv	a5,a0	# tmp148,
	bne	a5,zero,.L62	#, retval.15_8,,
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
.LFE2919:
	.size	_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_, .-_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_
	.section	.text._ZNSt6vectorIiSaIiEE9push_backERKi,"axG",@progbits,_ZNSt6vectorIiSaIiEE9push_backERKi,comdat
	.align	1
	.weak	_ZNSt6vectorIiSaIiEE9push_backERKi
	.type	_ZNSt6vectorIiSaIiEE9push_backERKi, @function
_ZNSt6vectorIiSaIiEE9push_backERKi:
.LFB2920:
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
	sd	a0,-88(s0)	# this, this
	sd	a1,-96(s0)	# __x, __x
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1283: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	ld	a5,-88(s0)		# tmp148, this
	ld	a4,8(a5)		# _1, this_9(D)->D.59566._M_impl.D.58873._M_finish
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1283: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	ld	a5,-88(s0)		# tmp149, this
	ld	a5,16(a5)		# _2, this_9(D)->D.59566._M_impl.D.58873._M_end_of_storage
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1283: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	beq	a4,a5,.L65	#, _1, _2,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1286: 	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
	ld	a4,-88(s0)		# _3, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1286: 	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
	ld	a5,-88(s0)		# tmp150, this
	ld	a5,8(a5)		# _4, this_9(D)->D.59566._M_impl.D.58873._M_finish
	sd	a4,-80(s0)	# _3, __a
	sd	a5,-72(s0)	# _4, __p
	ld	a5,-96(s0)		# tmp151, __x
	sd	a5,-64(s0)	# tmp151, __args#0
# /usr/riscv64-linux-gnu/include/c++/13/bits/alloc_traits.h:538: 	  __a.construct(__p, std::forward<_Args>(__args)...);
	ld	a0,-64(s0)		#, __args#0
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE		#
	mv	a4,a0	# _17,
	ld	a5,-80(s0)		# tmp152, __a
	sd	a5,-56(s0)	# tmp152, this
	ld	a5,-72(s0)		# tmp153, __p
	sd	a5,-48(s0)	# tmp153, __p
	sd	a4,-40(s0)	# _17, __args#0
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	ld	a5,-48(s0)		# _21, __p
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	mv	a1,a5	#, _21
	li	a0,4		#,
	call	_ZnwmPv		#
	mv	s1,a0	# _22,
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	ld	a0,-40(s0)		#, __args#0
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE		#
	mv	a5,a0	# _24,
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	lw	a5,0(a5)		# _25, *_24
	sw	a5,0(s1)	# _25, MEM[(int *)_22]
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/alloc_traits.h:542: 	}
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1288: 	    ++this->_M_impl._M_finish;
	ld	a5,-88(s0)		# tmp154, this
	ld	a5,8(a5)		# _5, this_9(D)->D.59566._M_impl.D.58873._M_finish
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1288: 	    ++this->_M_impl._M_finish;
	addi	a4,a5,4	#, _6, _5
	ld	a5,-88(s0)		# tmp155, this
	sd	a4,8(a5)	# _6, this_9(D)->D.59566._M_impl.D.58873._M_finish
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1293:       }
	j	.L67		#
.L65:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1292: 	  _M_realloc_insert(end(), __x);
	ld	a0,-88(s0)		#, this
	call	_ZNSt6vectorIiSaIiEE3endEv		#
	mv	a5,a0	# D.65319,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1292: 	  _M_realloc_insert(end(), __x);
	ld	a2,-96(s0)		#, __x
	mv	a1,a5	#, D.65319
	ld	a0,-88(s0)		#, this
	call	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_		#
.L67:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1293:       }
	nop	
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
.LFE2920:
	.size	_ZNSt6vectorIiSaIiEE9push_backERKi, .-_ZNSt6vectorIiSaIiEE9push_backERKi
	.section	.text._ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_,"axG",@progbits,_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_,comdat
	.align	1
	.weak	_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_
	.type	_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_, @function
_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_:
.LFB2922:
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
	mv	a2,s1	#, D.65368
	ld	a1,-48(s0)		#, __last
	ld	a0,-40(s0)		#, __first
	call	_ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_		#
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
.LFE2922:
	.size	_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_, .-_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_
	.section	.text._ZNKSt6vectorIiSaIiEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE4sizeEv,comdat
	.align	1
	.weak	_ZNKSt6vectorIiSaIiEE4sizeEv
	.type	_ZNKSt6vectorIiSaIiEE4sizeEv, @function
_ZNKSt6vectorIiSaIiEE4sizeEv:
.LFB2923:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# this, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ld	a5,-24(s0)		# tmp140, this
	ld	a4,8(a5)		# _1, this_6(D)->D.59566._M_impl.D.58873._M_finish
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ld	a5,-24(s0)		# tmp141, this
	ld	a5,0(a5)		# _2, this_6(D)->D.59566._M_impl.D.58873._M_start
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	a5,a4,a5	# _3, _1, _2
	srai	a5,a5,2	#, tmp142, _3
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2923:
	.size	_ZNKSt6vectorIiSaIiEE4sizeEv, .-_ZNKSt6vectorIiSaIiEE4sizeEv
	.section	.text._ZSt8__fill_aIPbbEvT_S1_RKT0_,"axG",@progbits,_ZSt8__fill_aIPbbEvT_S1_RKT0_,comdat
	.align	1
	.weak	_ZSt8__fill_aIPbbEvT_S1_RKT0_
	.type	_ZSt8__fill_aIPbbEvT_S1_RKT0_, @function
_ZSt8__fill_aIPbbEvT_S1_RKT0_:
.LFB3025:
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
	sd	a2,-40(s0)	# __value, __value
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:977:     { std::__fill_a1(__first, __last, __value); }
	ld	a2,-40(s0)		#, __value
	ld	a1,-32(s0)		#, __last
	ld	a0,-24(s0)		#, __first
	call	_ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:977:     { std::__fill_a1(__first, __last, __value); }
	nop	
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3025:
	.size	_ZSt8__fill_aIPbbEvT_S1_RKT0_, .-_ZSt8__fill_aIPbbEvT_S1_RKT0_
	.section	.text._ZNSt15__new_allocatorIiED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIiED5Ev,comdat
	.align	1
	.weak	_ZNSt15__new_allocatorIiED2Ev
	.type	_ZNSt15__new_allocatorIiED2Ev, @function
_ZNSt15__new_allocatorIiED2Ev:
.LFB3030:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# this, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:104:       ~__new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3030:
	.size	_ZNSt15__new_allocatorIiED2Ev, .-_ZNSt15__new_allocatorIiED2Ev
	.weak	_ZNSt15__new_allocatorIiED1Ev
	.set	_ZNSt15__new_allocatorIiED1Ev,_ZNSt15__new_allocatorIiED2Ev
	.section	.rodata
	.align	3
.LC0:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_,comdat
	.align	1
	.weak	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_, @function
_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_:
.LFB3032:
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
	sd	a0,-88(s0)	# __n, __n
	sd	a1,-96(s0)	# __a, __a
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1907:       _S_check_init_len(size_type __n, const allocator_type& __a)
	la	a5,__stack_chk_guard		# tmp138,
	ld	a4, 0(a5)	# tmp152, __stack_chk_guard
	sd	a4, -40(s0)	# tmp152, D.65614
	li	a4, 0	# tmp152
	ld	a5,-96(s0)		# tmp139, __a
	sd	a5,-64(s0)	# tmp139, __a
	addi	a5,s0,-72	#, tmp140,
	sd	a5,-56(s0)	# tmp140, this
	ld	a5,-64(s0)		# tmp141, __a
	sd	a5,-48(s0)	# tmp141, D.65573
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:92:       __new_allocator(const __new_allocator&) _GLIBCXX_USE_NOEXCEPT { }
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/allocator.h:168:       : __allocator_base<_Tp>(__a) { }
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1909: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	addi	a5,s0,-72	#, tmp142,
	mv	a0,a5	#, tmp142
	call	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_		#
	mv	a4,a0	# _1,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1909: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	ld	a5,-88(s0)		# tmp144, __n
	sgtu	a5,a5,a4	# tmp145, tmp144, _1
	andi	s1,a5,0xff	# retval.11_6, tmp143
# /usr/riscv64-linux-gnu/include/c++/13/bits/allocator.h:184:       ~allocator() _GLIBCXX_NOTHROW { }
	addi	a5,s0,-72	#, tmp146,
	mv	a0,a5	#, tmp146
	call	_ZNSt15__new_allocatorIiED2Ev		#
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1909: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	beq	s1,zero,.L75	#, retval.11_6,,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1910: 	  __throw_length_error(
	la	a5,__stack_chk_guard		# tmp147,
	ld	a4, -40(s0)	# tmp153, D.65614
	ld	a5, 0(a5)	# tmp148, __stack_chk_guard
	xor	a5, a4, a5	# tmp148, tmp153
	li	a4, 0	# tmp153
	beq	a5,zero,.L76	#, tmp148,,
	call	__stack_chk_fail@plt	#
.L76:
	lla	a0,.LC0	#,
	call	_ZSt20__throw_length_errorPKc@plt	#
.L75:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1912: 	return __n;
	ld	a5,-88(s0)		# _8, __n
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1912: 	return __n;
	mv	a4,a5	# <retval>, _8
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1913:       }
	la	a5,__stack_chk_guard		# tmp150,
	ld	a3, -40(s0)	# tmp154, D.65614
	ld	a5, 0(a5)	# tmp151, __stack_chk_guard
	xor	a5, a3, a5	# tmp151, tmp154
	li	a3, 0	# tmp154
	beq	a5,zero,.L78	#, tmp151,,
	call	__stack_chk_fail@plt	#
.L78:
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
.LFE3032:
	.size	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_, .-_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC5EmRKS0_,comdat
	.align	1
	.weak	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
	.type	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, @function
_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_:
.LFB3034:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3034
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	sd	s1,40(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# this, this
	sd	a1,-48(s0)	# __n, __n
	sd	a2,-56(s0)	# __a, __a
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:334:       : _M_impl(__a)
	ld	a5,-40(s0)		# _1, this
	ld	a1,-56(s0)		#, __a
	mv	a0,a5	#, _1
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:335:       { _M_create_storage(__n); }
	ld	a1,-48(s0)		#, __n
	ld	a0,-40(s0)		#, this
.LEHB7:
	call	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm		#
.LEHE7:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:335:       { _M_create_storage(__n); }
	j	.L82		#
.L81:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:335:       { _M_create_storage(__n); }
	mv	s1,a0	# tmp137,
	ld	a5,-40(s0)		# _2, this
	mv	a0,a5	#, _2
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev		#
	mv	a5,s1	# D.65616, tmp137
	mv	a0,a5	#, D.65616
.LEHB8:
	call	_Unwind_Resume@plt	#
.LEHE8:
.L82:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:335:       { _M_create_storage(__n); }
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	ld	s1,40(sp)		#,
	.cfi_restore 9
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3034:
	.section	.gcc_except_table
.LLSDA3034:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3034-.LLSDACSB3034
.LLSDACSB3034:
	.uleb128 .LEHB7-.LFB3034
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L81-.LFB3034
	.uleb128 0
	.uleb128 .LEHB8-.LFB3034
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE3034:
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC5EmRKS0_,comdat
	.size	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, .-_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
	.weak	_ZNSt12_Vector_baseIiSaIiEEC1EmRKS0_
	.set	_ZNSt12_Vector_baseIiSaIiEEC1EmRKS0_,_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
	.section	.text._ZNSt6vectorIiSaIiEE21_M_default_initializeEm,"axG",@progbits,_ZNSt6vectorIiSaIiEE21_M_default_initializeEm,comdat
	.align	1
	.weak	_ZNSt6vectorIiSaIiEE21_M_default_initializeEm
	.type	_ZNSt6vectorIiSaIiEE21_M_default_initializeEm, @function
_ZNSt6vectorIiSaIiEE21_M_default_initializeEm:
.LFB3036:
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
	sd	a0,-40(s0)	# this, this
	sd	a1,-48(s0)	# __n, __n
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1718: 	  std::__uninitialized_default_n_a(this->_M_impl._M_start, __n,
	ld	a5,-40(s0)		# tmp138, this
	ld	s1,0(a5)		# _1, this_6(D)->D.59566._M_impl.D.58873._M_start
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1719: 					   _M_get_Tp_allocator());
	ld	a5,-40(s0)		# _2, this
	mv	a0,a5	#, _2
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv		#
	mv	a5,a0	# _3,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1718: 	  std::__uninitialized_default_n_a(this->_M_impl._M_start, __n,
	mv	a2,a5	#, _3
	ld	a1,-48(s0)		#, __n
	mv	a0,s1	#, _1
	call	_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E		#
	mv	a4,a0	# _4,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1717: 	this->_M_impl._M_finish =
	ld	a5,-40(s0)		# tmp139, this
	sd	a4,8(a5)	# _4, this_6(D)->D.59566._M_impl.D.58873._M_finish
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1720:       }
	nop	
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
.LFE3036:
	.size	_ZNSt6vectorIiSaIiEE21_M_default_initializeEm, .-_ZNSt6vectorIiSaIiEE21_M_default_initializeEm
	.section	.text._ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.align	1
	.weak	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv:
.LFB3037:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# this, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:302:       { return this->_M_impl; }
	ld	a5,-24(s0)		# _2, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:302:       { return this->_M_impl; }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3037:
	.size	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC5Ev,comdat
	.align	1
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev:
.LFB3040:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# this, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	ld	a5,-24(s0)		# tmp134, this
	sd	zero,0(a5)	#, this_2(D)->_M_start
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	ld	a5,-24(s0)		# tmp135, this
	sd	zero,8(a5)	#, this_2(D)->_M_finish
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	ld	a5,-24(s0)		# tmp136, this
	sd	zero,16(a5)	#, this_2(D)->_M_end_of_storage
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:101: 	{ }
	nop	
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3040:
	.size	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,comdat
	.align	1
	.weak	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.type	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, @function
_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim:
.LFB3042:
	.cfi_startproc
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# this, this
	sd	a1,-64(s0)	# __p, __p
	sd	a2,-72(s0)	# __n, __n
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:389: 	if (__p)
	ld	a5,-64(s0)		# tmp135, __p
	beq	a5,zero,.L89	#, tmp135,,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:390: 	  _Tr::deallocate(_M_impl, __p, __n);
	ld	a5,-56(s0)		# _1, this
	sd	a5,-40(s0)	# _1, __a
	ld	a5,-64(s0)		# tmp136, __p
	sd	a5,-32(s0)	# tmp136, __p
	ld	a5,-72(s0)		# tmp137, __n
	sd	a5,-24(s0)	# tmp137, __n
# /usr/riscv64-linux-gnu/include/c++/13/bits/alloc_traits.h:517:       { __a.deallocate(__p, __n); }
	ld	a2,-24(s0)		#, __n
	ld	a1,-32(s0)		#, __p
	ld	a0,-40(s0)		#, __a
	call	_ZNSt15__new_allocatorIiE10deallocateEPim		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/alloc_traits.h:517:       { __a.deallocate(__p, __n); }
	nop	
.L89:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:391:       }
	nop	
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3042:
	.size	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, .-_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC5ERKS1_,comdat
	.align	1
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, @function
_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_:
.LFB3044:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# this, this
	sd	a1,-32(s0)	# __i, __i
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1077:       : _M_current(__i) { }
	ld	a5,-32(s0)		# tmp135, __i
	ld	a4,0(a5)		# _1, *__i_5(D)
	ld	a5,-24(s0)		# tmp136, this
	sd	a4,0(a5)	# _1, this_3(D)->_M_current
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1077:       : _M_current(__i) { }
	nop	
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3044:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, .-_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_,_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	.section	.text._ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@progbits,_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,comdat
	.align	1
	.weak	_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.type	_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, @function
_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_:
.LFB3046:
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
	sd	a0,-40(s0)	# __lhs, __lhs
	sd	a1,-48(s0)	# __rhs, __rhs
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1244:     { return __lhs.base() != __rhs.base(); }
	ld	a0,-40(s0)		#, __lhs
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv		#
	mv	a5,a0	# _1,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1244:     { return __lhs.base() != __rhs.base(); }
	ld	s1,0(a5)		# _2, *_1
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1244:     { return __lhs.base() != __rhs.base(); }
	ld	a0,-48(s0)		#, __rhs
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv		#
	mv	a5,a0	# _3,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1244:     { return __lhs.base() != __rhs.base(); }
	ld	a5,0(a5)		# _4, *_3
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1244:     { return __lhs.base() != __rhs.base(); }
	sub	a5,s1,a5	# tmp142, _2, _4
	snez	a5,a5	# tmp141, tmp142
	andi	a5,a5,0xff	# _10, tmp140
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1244:     { return __lhs.base() != __rhs.base(); }
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
.LFE3046:
	.size	_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, .-_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv,comdat
	.align	1
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv, @function
_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv:
.LFB3047:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# this, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1111: 	++_M_current;
	ld	a5,-24(s0)		# tmp138, this
	ld	a5,0(a5)		# _1, this_4(D)->_M_current
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1111: 	++_M_current;
	addi	a4,a5,4	#, _2, _1
	ld	a5,-24(s0)		# tmp139, this
	sd	a4,0(a5)	# _2, this_4(D)->_M_current
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1112: 	return *this;
	ld	a5,-24(s0)		# _6, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1113:       }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3047:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv,comdat
	.align	1
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv:
.LFB3048:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# this, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1100:       { return *_M_current; }
	ld	a5,-24(s0)		# tmp136, this
	ld	a5,0(a5)		# _3, this_2(D)->_M_current
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1100:       { return *_M_current; }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3048:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv
	.section	.text._ZNK4funcIiEclEii,"axG",@progbits,_ZNK4funcIiEclEii,comdat
	.align	1
	.weak	_ZNK4funcIiEclEii
	.type	_ZNK4funcIiEclEii, @function
_ZNK4funcIiEclEii:
.LFB3049:
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
# problem49.cc:15:     return 10*a + b;
	lw	a5,-28(s0)		# tmp142, a
	mv	a4,a5	# tmp141, tmp142
	mv	a5,a4	# tmp143, tmp141
	slliw	a5,a5,2	#, tmp144, tmp143
	addw	a5,a5,a4	# tmp141, tmp143, tmp143
	slliw	a5,a5,1	#, tmp145, tmp143
	sext.w	a5,a5	# _1, tmp143
# problem49.cc:15:     return 10*a + b;
	lw	a4,-32(s0)		# tmp148, b
	addw	a5,a4,a5	# _1, tmp146, tmp147
	sext.w	a5,a5	# _4, tmp146
# problem49.cc:16:   }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3049:
	.size	_ZNK4funcIiEclEii, .-_ZNK4funcIiEclEii
	.section	.rodata
	.align	3
.LC1:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,comdat
	.align	1
	.weak	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.type	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, @function
_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_:
.LFB3051:
	.cfi_startproc
	addi	sp,sp,-176	#,,
	.cfi_def_cfa_offset 176
	sd	ra,168(sp)	#,
	sd	s0,160(sp)	#,
	sd	s1,152(sp)	#,
	sd	s2,144(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	addi	s0,sp,176	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-152(s0)	# this, this
	sd	a1,-160(s0)	# __position, __position
	sd	a2,-168(s0)	# __args#0, __args#0
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:445:       vector<_Tp, _Alloc>::
	la	a5,__stack_chk_guard		# tmp171,
	ld	a4, 0(a5)	# tmp200, __stack_chk_guard
	sd	a4, -40(s0)	# tmp200, D.65617
	li	a4, 0	# tmp200
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:455: 	_M_check_len(size_type(1), "vector::_M_realloc_insert");
	lla	a2,.LC1	#,
	li	a1,1		#,
	ld	a0,-152(s0)		#, this
	call	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc		#
	mv	a5,a0	# _32,
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:455: 	_M_check_len(size_type(1), "vector::_M_realloc_insert");
	sd	a5,-136(s0)	# _32, __len
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:456:       pointer __old_start = this->_M_impl._M_start;
	ld	a5,-152(s0)		# tmp172, this
	ld	a5,0(a5)		# tmp173, this_30(D)->D.59566._M_impl.D.58873._M_start
	sd	a5,-128(s0)	# tmp173, __old_start
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:457:       pointer __old_finish = this->_M_impl._M_finish;
	ld	a5,-152(s0)		# tmp174, this
	ld	a5,8(a5)		# tmp175, this_30(D)->D.59566._M_impl.D.58873._M_finish
	sd	a5,-120(s0)	# tmp175, __old_finish
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:458:       const size_type __elems_before = __position - begin();
	ld	a0,-152(s0)		#, this
	call	_ZNSt6vectorIiSaIiEE5beginEv		#
	mv	a5,a0	# tmp176,
	sd	a5,-144(s0)	# tmp176, D.63536
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:458:       const size_type __elems_before = __position - begin();
	addi	a4,s0,-144	#, tmp177,
	addi	a5,s0,-160	#, tmp178,
	mv	a1,a4	#, tmp177
	mv	a0,a5	#, tmp178
	call	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_		#
	mv	a5,a0	# _1,
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:458:       const size_type __elems_before = __position - begin();
	sd	a5,-112(s0)	# _1, __elems_before
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:459:       pointer __new_start(this->_M_allocate(__len));
	ld	a5,-152(s0)		# _2, this
	ld	a1,-136(s0)		#, __len
	mv	a0,a5	#, _2
	call	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm		#
	mv	a5,a0	# _41,
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:459:       pointer __new_start(this->_M_allocate(__len));
	sd	a5,-104(s0)	# _41, __new_start
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:460:       pointer __new_finish(__new_start);
	ld	a5,-104(s0)		# tmp179, __new_start
	sd	a5,-96(s0)	# tmp179, __new_finish
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:468: 	  _Alloc_traits::construct(this->_M_impl,
	ld	s2,-152(s0)		# _3, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:469: 				   __new_start + __elems_before,
	ld	a5,-112(s0)		# tmp180, __elems_before
	slli	a5,a5,2	#, _4, tmp180
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:468: 	  _Alloc_traits::construct(this->_M_impl,
	ld	a4,-104(s0)		# tmp181, __new_start
	add	s1,a4,a5	# _4, _5, tmp181
	ld	a0,-168(s0)		#, __args#0
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE		#
	mv	a5,a0	# _6,
	sd	s2,-88(s0)	# _3, __a
	sd	s1,-80(s0)	# _5, __p
	sd	a5,-72(s0)	# _6, __args#0
# /usr/riscv64-linux-gnu/include/c++/13/bits/alloc_traits.h:538: 	  __a.construct(__p, std::forward<_Args>(__args)...);
	ld	a0,-72(s0)		#, __args#0
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE		#
	mv	a4,a0	# _63,
	ld	a5,-88(s0)		# tmp182, __a
	sd	a5,-64(s0)	# tmp182, this
	ld	a5,-80(s0)		# tmp183, __p
	sd	a5,-56(s0)	# tmp183, __p
	sd	a4,-48(s0)	# _63, __args#0
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	ld	a5,-56(s0)		# _67, __p
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	mv	a1,a5	#, _67
	li	a0,4		#,
	call	_ZnwmPv		#
	mv	s1,a0	# _68,
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	ld	a0,-48(s0)		#, __args#0
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE		#
	mv	a5,a0	# _70,
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	lw	a5,0(a5)		# _71, *_70
	sw	a5,0(s1)	# _71, MEM[(int *)_68]
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/alloc_traits.h:542: 	}
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:475: 	  __new_finish = pointer();
	sd	zero,-96(s0)	#, __new_finish
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:480: 	      __new_finish = _S_relocate(__old_start, __position.base(),
	addi	a5,s0,-160	#, tmp184,
	mv	a0,a5	#, tmp184
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv		#
	mv	a5,a0	# _7,
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:480: 	      __new_finish = _S_relocate(__old_start, __position.base(),
	ld	s1,0(a5)		# _8, *_7
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:481: 					 __new_start, _M_get_Tp_allocator());
	ld	a5,-152(s0)		# _9, this
	mv	a0,a5	#, _9
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv		#
	mv	a5,a0	# _10,
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:480: 	      __new_finish = _S_relocate(__old_start, __position.base(),
	mv	a3,a5	#, _10
	ld	a2,-104(s0)		#, __new_start
	mv	a1,s1	#, _8
	ld	a0,-128(s0)		#, __old_start
	call	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_		#
	sd	a0,-96(s0)	#, __new_finish
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:483: 	      ++__new_finish;
	ld	a5,-96(s0)		# tmp186, __new_finish
	addi	a5,a5,4	#, tmp185, tmp186
	sd	a5,-96(s0)	# tmp185, __new_finish
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:485: 	      __new_finish = _S_relocate(__position.base(), __old_finish,
	addi	a5,s0,-160	#, tmp187,
	mv	a0,a5	#, tmp187
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv		#
	mv	a5,a0	# _11,
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:485: 	      __new_finish = _S_relocate(__position.base(), __old_finish,
	ld	s1,0(a5)		# _12, *_11
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:486: 					 __new_finish, _M_get_Tp_allocator());
	ld	a5,-152(s0)		# _13, this
	mv	a0,a5	#, _13
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv		#
	mv	a5,a0	# _14,
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:485: 	      __new_finish = _S_relocate(__position.base(), __old_finish,
	mv	a3,a5	#, _14
	ld	a2,-96(s0)		#, __new_finish
	ld	a1,-120(s0)		#, __old_finish
	mv	a0,s1	#, _12
	call	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_		#
	sd	a0,-96(s0)	#, __new_finish
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:519:       _M_deallocate(__old_start,
	ld	a3,-152(s0)		# _22, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:520: 		    this->_M_impl._M_end_of_storage - __old_start);
	ld	a5,-152(s0)		# tmp188, this
	ld	a4,16(a5)		# _23, this_30(D)->D.59566._M_impl.D.58873._M_end_of_storage
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:520: 		    this->_M_impl._M_end_of_storage - __old_start);
	ld	a5,-128(s0)		# tmp189, __old_start
	sub	a5,a4,a5	# _24, _23, tmp189
	srai	a5,a5,2	#, tmp190, _24
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:519:       _M_deallocate(__old_start,
	mv	a2,a5	#, _26
	ld	a1,-128(s0)		#, __old_start
	mv	a0,a3	#, _22
	call	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:521:       this->_M_impl._M_start = __new_start;
	ld	a5,-152(s0)		# tmp191, this
	ld	a4,-104(s0)		# tmp192, __new_start
	sd	a4,0(a5)	# tmp192, this_30(D)->D.59566._M_impl.D.58873._M_start
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:522:       this->_M_impl._M_finish = __new_finish;
	ld	a5,-152(s0)		# tmp193, this
	ld	a4,-96(s0)		# tmp194, __new_finish
	sd	a4,8(a5)	# tmp194, this_30(D)->D.59566._M_impl.D.58873._M_finish
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:523:       this->_M_impl._M_end_of_storage = __new_start + __len;
	ld	a5,-136(s0)		# tmp195, __len
	slli	a5,a5,2	#, _27, tmp195
	ld	a4,-104(s0)		# tmp196, __new_start
	add	a4,a4,a5	# _27, _28, tmp196
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:523:       this->_M_impl._M_end_of_storage = __new_start + __len;
	ld	a5,-152(s0)		# tmp197, this
	sd	a4,16(a5)	# _28, this_30(D)->D.59566._M_impl.D.58873._M_end_of_storage
# /usr/riscv64-linux-gnu/include/c++/13/bits/vector.tcc:524:     }
	nop	
	la	a5,__stack_chk_guard		# tmp198,
	ld	a4, -40(s0)	# tmp201, D.65617
	ld	a5, 0(a5)	# tmp199, __stack_chk_guard
	xor	a5, a4, a5	# tmp199, tmp201
	li	a4, 0	# tmp201
	beq	a5,zero,.L100	#, tmp199,,
	call	__stack_chk_fail@plt	#
.L100:
	ld	ra,168(sp)		#,
	.cfi_restore 1
	ld	s0,160(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	ld	s1,152(sp)		#,
	.cfi_restore 9
	ld	s2,144(sp)		#,
	.cfi_restore 18
	addi	sp,sp,176	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3051:
	.size	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, .-_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.section	.text._ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_,"axG",@progbits,_ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_,comdat
	.align	1
	.weak	_ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_
	.type	_ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_, @function
_ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_:
.LFB3055:
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
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2931:     __next_permutation(_BidirectionalIterator __first,
	la	a5,__stack_chk_guard		# tmp149,
	ld	a4, 0(a5)	# tmp175, __stack_chk_guard
	sd	a4, -40(s0)	# tmp175, D.65619
	li	a4, 0	# tmp175
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2934:       if (__first == __last)
	addi	a4,s0,-80	#, tmp150,
	addi	a5,s0,-72	#, tmp151,
	mv	a1,a4	#, tmp150
	mv	a0,a5	#, tmp151
	call	_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_		#
	mv	a5,a0	# tmp152,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2934:       if (__first == __last)
	beq	a5,zero,.L102	#, retval.21_11,,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2935: 	return false;
	li	a5,0		# _3,
	j	.L112		#
.L102:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2936:       _BidirectionalIterator __i = __first;
	ld	a5,-72(s0)		# tmp153, __first
	sd	a5,-64(s0)	# tmp153, __i
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2937:       ++__i;
	addi	a5,s0,-64	#, tmp154,
	mv	a0,a5	#, tmp154
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2938:       if (__i == __last)
	addi	a4,s0,-80	#, tmp155,
	addi	a5,s0,-64	#, tmp156,
	mv	a1,a4	#, tmp155
	mv	a0,a5	#, tmp156
	call	_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_		#
	mv	a5,a0	# tmp157,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2938:       if (__i == __last)
	beq	a5,zero,.L104	#, retval.22_15,,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2939: 	return false;
	li	a5,0		# _3,
	j	.L112		#
.L104:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2940:       __i = __last;
	ld	a5,-80(s0)		# tmp158, __last
	sd	a5,-64(s0)	# tmp158, __i
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2941:       --__i;
	addi	a5,s0,-64	#, tmp159,
	mv	a0,a5	#, tmp159
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv		#
.L111:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2945: 	  _BidirectionalIterator __ii = __i;
	ld	a5,-64(s0)		# tmp160, __i
	sd	a5,-56(s0)	# tmp160, __ii
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2946: 	  --__i;
	addi	a5,s0,-64	#, tmp161,
	mv	a0,a5	#, tmp161
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2947: 	  if (__comp(__i, __ii))
	addi	a5,s0,-88	#, tmp162,
	ld	a2,-56(s0)		#, __ii
	ld	a1,-64(s0)		#, __i
	mv	a0,a5	#, tmp162
	call	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_		#
	mv	a5,a0	# tmp163,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2947: 	  if (__comp(__i, __ii))
	beq	a5,zero,.L105	#, retval.23_21,,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2949: 	      _BidirectionalIterator __j = __last;
	ld	a5,-80(s0)		# tmp164, __last
	sd	a5,-48(s0)	# tmp164, __j
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2950: 	      while (!__comp(__i, --__j))
	nop	
.L106:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2950: 	      while (!__comp(__i, --__j))
	addi	a5,s0,-48	#, tmp165,
	mv	a0,a5	#, tmp165
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv		#
	mv	a4,a0	# _1,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2950: 	      while (!__comp(__i, --__j))
	addi	a5,s0,-88	#, tmp166,
	ld	a2,0(a4)		#, MEM[(const struct __normal_iterator &)_1]
	ld	a1,-64(s0)		#, __i
	mv	a0,a5	#, tmp166
	call	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_		#
	mv	a5,a0	# tmp167,
	xori	a5,a5,1	#, tmp168, _2
	andi	a5,a5,0xff	# retval.24_30, tmp168
	bne	a5,zero,.L106	#, retval.24_30,,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2952: 	      std::iter_swap(__i, __j);
	ld	a1,-48(s0)		#, __j
	ld	a0,-64(s0)		#, __i
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator_base_types.h:240:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2953: 	      std::__reverse(__ii, __last,
	mv	a2,s2	#, D.65383
	ld	a1,-80(s0)		#, __last
	ld	a0,-56(s0)		#, __ii
	call	_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2955: 	      return true;
	li	a5,1		# _3,
	j	.L112		#
.L105:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2957: 	  if (__i == __first)
	addi	a4,s0,-72	#, tmp169,
	addi	a5,s0,-64	#, tmp170,
	mv	a1,a4	#, tmp169
	mv	a0,a5	#, tmp170
	call	_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_		#
	mv	a5,a0	# tmp171,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2957: 	  if (__i == __first)
	beq	a5,zero,.L111	#, retval.25_23,,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator_base_types.h:240:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2959: 	      std::__reverse(__first, __last,
	mv	a2,s1	#, D.65387
	ld	a1,-80(s0)		#, __last
	ld	a0,-72(s0)		#, __first
	call	_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2961: 	      return false;
	li	a5,0		# _3,
.L112:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2964:     }
	mv	a4,a5	# <retval>, _3
	la	a5,__stack_chk_guard		# tmp173,
	ld	a3, -40(s0)	# tmp176, D.65619
	ld	a5, 0(a5)	# tmp174, __stack_chk_guard
	xor	a5, a3, a5	# tmp174, tmp176
	li	a3, 0	# tmp176
	beq	a5,zero,.L113	#, tmp174,,
	call	__stack_chk_fail@plt	#
.L113:
	mv	a0,a4	#, <retval>
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
.LFE3055:
	.size	_ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_, .-_ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_
	.section	.text._ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,"axG",@progbits,_ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,comdat
	.align	1
	.weak	_ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.type	_ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, @function
_ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_:
.LFB3123:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# __first, __first
	sd	a1,-48(s0)	# __last, __last
	sd	a2,-56(s0)	# __value, __value
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:929:       const _Tp __tmp = __value;
	ld	a5,-56(s0)		# tmp134, __value
	lbu	a5,0(a5)	# tmp135, *__value_4(D)
	sb	a5,-17(s0)	# tmp135, __tmp
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:930:       for (; __first != __last; ++__first)
	j	.L115		#
.L116:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:931: 	*__first = __tmp;
	ld	a5,-40(s0)		# tmp136, __first
	lbu	a4,-17(s0)	# tmp137, __tmp
	sb	a4,0(a5)	# tmp137, *__first_1
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:930:       for (; __first != __last; ++__first)
	ld	a5,-40(s0)		# tmp139, __first
	addi	a5,a5,1	#, tmp138, tmp139
	sd	a5,-40(s0)	# tmp138, __first
.L115:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:930:       for (; __first != __last; ++__first)
	ld	a4,-40(s0)		# tmp140, __first
	ld	a5,-48(s0)		# tmp141, __last
	bne	a4,a5,.L116	#, tmp140, tmp141,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:932:     }
	nop	
	nop	
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3123:
	.size	_ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, .-_ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.section	.text._ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_,comdat
	.align	1
	.weak	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, @function
_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_:
.LFB3124:
	.cfi_startproc
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)	# __a, __a
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1916:       _S_max_size(const _Tp_alloc_type& __a) _GLIBCXX_NOEXCEPT
	la	a5,__stack_chk_guard		# tmp138,
	ld	a4, 0(a5)	# tmp150, __stack_chk_guard
	sd	a4, -24(s0)	# tmp150, D.65620
	li	a4, 0	# tmp150
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1921: 	const size_t __diffmax
	li	a5,-1		# tmp140,
	srli	a5,a5,3	#, tmp139, tmp140
	sd	a5,-64(s0)	# tmp139, __diffmax
	ld	a5,-72(s0)		# tmp141, __a
	sd	a5,-48(s0)	# tmp141, __a
	ld	a5,-48(s0)		# tmp142, __a
	sd	a5,-40(s0)	# tmp142, this
	ld	a5,-40(s0)		# tmp143, this
	sd	a5,-32(s0)	# tmp143, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:233: 	return std::size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
	li	a5,-1		# tmp144,
	srli	a5,a5,3	#, D.65563, tmp144
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:183:       { return _M_max_size(); }
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/alloc_traits.h:574: 	return __a.max_size();
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1923: 	const size_t __allocmax = _Alloc_traits::max_size(__a);
	sd	a5,-56(s0)	# D.65563, __allocmax
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1924: 	return (std::min)(__diffmax, __allocmax);
	addi	a4,s0,-56	#, tmp145,
	addi	a5,s0,-64	#, tmp146,
	mv	a1,a4	#, tmp145
	mv	a0,a5	#, tmp146
	call	_ZSt3minImERKT_S2_S2_		#
	mv	a5,a0	# _2,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1924: 	return (std::min)(__diffmax, __allocmax);
	ld	a5,0(a5)		# _8, *_2
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1924: 	return (std::min)(__diffmax, __allocmax);
	mv	a4,a5	# <retval>, _8
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1925:       }
	la	a5,__stack_chk_guard		# tmp148,
	ld	a3, -24(s0)	# tmp151, D.65620
	ld	a5, 0(a5)	# tmp149, __stack_chk_guard
	xor	a5, a3, a5	# tmp149, tmp151
	li	a3, 0	# tmp151
	beq	a5,zero,.L122	#, tmp149,,
	call	__stack_chk_fail@plt	#
.L122:
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
.LFE3124:
	.size	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC5ERKS0_,comdat
	.align	1
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, @function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_:
.LFB3129:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# this, this
	sd	a1,-64(s0)	# __a, __a
	ld	a5,-56(s0)		# tmp135, this
	sd	a5,-48(s0)	# tmp135, this
	ld	a5,-64(s0)		# tmp136, __a
	sd	a5,-40(s0)	# tmp136, __a
	ld	a5,-48(s0)		# tmp137, this
	sd	a5,-32(s0)	# tmp137, this
	ld	a5,-40(s0)		# tmp138, __a
	sd	a5,-24(s0)	# tmp138, D.65530
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:92:       __new_allocator(const __new_allocator&) _GLIBCXX_USE_NOEXCEPT { }
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/allocator.h:168:       : __allocator_base<_Tp>(__a) { }
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:147: 	: _Tp_alloc_type(__a)
	ld	a5,-56(s0)		# _1, this
	mv	a0,a5	#, _1
	call	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:148: 	{ }
	nop	
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3129:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm,comdat
	.align	1
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, @function
_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm:
.LFB3131:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# this, this
	sd	a1,-32(s0)	# __n, __n
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:398: 	this->_M_impl._M_start = this->_M_allocate(__n);
	ld	a1,-32(s0)		#, __n
	ld	a0,-24(s0)		#, this
	call	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm		#
	mv	a4,a0	# _1,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:398: 	this->_M_impl._M_start = this->_M_allocate(__n);
	ld	a5,-24(s0)		# tmp139, this
	sd	a4,0(a5)	# _1, this_7(D)->_M_impl.D.58873._M_start
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:399: 	this->_M_impl._M_finish = this->_M_impl._M_start;
	ld	a5,-24(s0)		# tmp140, this
	ld	a4,0(a5)		# _2, this_7(D)->_M_impl.D.58873._M_start
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:399: 	this->_M_impl._M_finish = this->_M_impl._M_start;
	ld	a5,-24(s0)		# tmp141, this
	sd	a4,8(a5)	# _2, this_7(D)->_M_impl.D.58873._M_finish
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:400: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	ld	a5,-24(s0)		# tmp142, this
	ld	a4,0(a5)		# _3, this_7(D)->_M_impl.D.58873._M_start
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:400: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	ld	a5,-32(s0)		# tmp143, __n
	slli	a5,a5,2	#, _4, tmp143
	add	a4,a4,a5	# _4, _5, _3
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:400: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	ld	a5,-24(s0)		# tmp144, this
	sd	a4,16(a5)	# _5, this_7(D)->_M_impl.D.58873._M_end_of_storage
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:401:       }
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
.LFE3131:
	.size	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, .-_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
	.section	.text._ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E,comdat
	.align	1
	.weak	_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E, @function
_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E:
.LFB3132:
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
	sd	a1,-32(s0)	# __n, __n
	sd	a2,-40(s0)	# D.64358, D.64358
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:779:     { return std::__uninitialized_default_n(__first, __n); }
	ld	a1,-32(s0)		#, __n
	ld	a0,-24(s0)		#, __first
	call	_ZSt25__uninitialized_default_nIPimET_S1_T0_		#
	mv	a5,a0	# _5,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:779:     { return std::__uninitialized_default_n(__first, __n); }
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
.LFE3132:
	.size	_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E
	.section	.text._ZSt8_DestroyIPiEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPiEvT_S1_,comdat
	.align	1
	.weak	_ZSt8_DestroyIPiEvT_S1_
	.type	_ZSt8_DestroyIPiEvT_S1_, @function
_ZSt8_DestroyIPiEvT_S1_:
.LFB3133:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# __first, __first
	sd	a1,-32(s0)	# __last, __last
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_construct.h:196: 	__destroy(__first, __last);
	ld	a1,-32(s0)		#, __last
	ld	a0,-24(s0)		#, __first
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_construct.h:197:     }
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
.LFE3133:
	.size	_ZSt8_DestroyIPiEvT_S1_, .-_ZSt8_DestroyIPiEvT_S1_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv,comdat
	.align	1
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv:
.LFB3135:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# this, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1163:       { return _M_current; }
	ld	a5,-24(s0)		# _2, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1163:       { return _M_current; }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3135:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	.section	.text._ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.align	1
	.weak	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB3136:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# __t, __t
# /usr/riscv64-linux-gnu/include/c++/13/bits/move.h:71:     { return static_cast<_Tp&&>(__t); }
	ld	a5,-24(s0)		# _2, __t
# /usr/riscv64-linux-gnu/include/c++/13/bits/move.h:71:     { return static_cast<_Tp&&>(__t); }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3136:
	.size	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc,comdat
	.align	1
	.weak	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, @function
_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc:
.LFB3138:
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
	sd	a0,-72(s0)	# this, this
	sd	a1,-80(s0)	# __n, __n
	sd	a2,-88(s0)	# __s, __s
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1896:       _M_check_len(size_type __n, const char* __s) const
	la	a5,__stack_chk_guard		# tmp147,
	ld	a4, 0(a5)	# tmp160, __stack_chk_guard
	sd	a4, -40(s0)	# tmp160, D.65621
	li	a4, 0	# tmp160
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1898: 	if (max_size() - size() < __n)
	ld	a0,-72(s0)		#, this
	call	_ZNKSt6vectorIiSaIiEE8max_sizeEv		#
	mv	s1,a0	# _1,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1898: 	if (max_size() - size() < __n)
	ld	a0,-72(s0)		#, this
	call	_ZNKSt6vectorIiSaIiEE4sizeEv		#
	mv	a5,a0	# _2,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1898: 	if (max_size() - size() < __n)
	sub	a4,s1,a5	# _3, _1, _2
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1898: 	if (max_size() - size() < __n)
	ld	a5,-80(s0)		# __n.17_4, __n
	sltu	a5,a4,a5	# __n.17_4, tmp149, _3
	andi	a5,a5,0xff	# retval.16_18, tmp148
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1898: 	if (max_size() - size() < __n)
	beq	a5,zero,.L133	#, retval.16_18,,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1899: 	  __throw_length_error(__N(__s));
	la	a5,__stack_chk_guard		# tmp150,
	ld	a4, -40(s0)	# tmp161, D.65621
	ld	a5, 0(a5)	# tmp151, __stack_chk_guard
	xor	a5, a4, a5	# tmp151, tmp161
	li	a4, 0	# tmp161
	beq	a5,zero,.L134	#, tmp151,,
	call	__stack_chk_fail@plt	#
.L134:
	ld	a0,-88(s0)		#, __s
	call	_ZSt20__throw_length_errorPKc@plt	#
.L133:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1901: 	const size_type __len = size() + (std::max)(size(), __n);
	ld	a0,-72(s0)		#, this
	call	_ZNKSt6vectorIiSaIiEE4sizeEv		#
	mv	s1,a0	# _5,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1901: 	const size_type __len = size() + (std::max)(size(), __n);
	ld	a0,-72(s0)		#, this
	call	_ZNKSt6vectorIiSaIiEE4sizeEv		#
	mv	a5,a0	# _6,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1901: 	const size_type __len = size() + (std::max)(size(), __n);
	sd	a5,-56(s0)	# _6, D.64404
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1901: 	const size_type __len = size() + (std::max)(size(), __n);
	addi	a4,s0,-80	#, tmp152,
	addi	a5,s0,-56	#, tmp153,
	mv	a1,a4	#, tmp152
	mv	a0,a5	#, tmp153
	call	_ZSt3maxImERKT_S2_S2_		#
	mv	a5,a0	# _7,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1901: 	const size_type __len = size() + (std::max)(size(), __n);
	ld	a5,0(a5)		# _8, *_7
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1901: 	const size_type __len = size() + (std::max)(size(), __n);
	add	a5,s1,a5	# _8, tmp154, _5
	sd	a5,-48(s0)	# tmp154, __len
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1902: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	ld	a0,-72(s0)		#, this
	call	_ZNKSt6vectorIiSaIiEE4sizeEv		#
	mv	a4,a0	# _9,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1902: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	ld	a5,-48(s0)		# tmp155, __len
	bltu	a5,a4,.L135	#, tmp155, _9,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1902: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	ld	a0,-72(s0)		#, this
	call	_ZNKSt6vectorIiSaIiEE8max_sizeEv		#
	mv	a4,a0	# _10,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1902: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	ld	a5,-48(s0)		# tmp156, __len
	bleu	a5,a4,.L136	#, tmp156, _10,
.L135:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1902: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	ld	a0,-72(s0)		#, this
	call	_ZNKSt6vectorIiSaIiEE8max_sizeEv		#
	mv	a5,a0	# iftmp.18_11,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1902: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	j	.L137		#
.L136:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1902: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	ld	a5,-48(s0)		# iftmp.18_11, __len
.L137:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1902: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	mv	a4,a5	# <retval>, iftmp.18_11
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:1903:       }
	la	a5,__stack_chk_guard		# tmp158,
	ld	a3, -40(s0)	# tmp162, D.65621
	ld	a5, 0(a5)	# tmp159, __stack_chk_guard
	xor	a5, a3, a5	# tmp159, tmp162
	li	a3, 0	# tmp162
	beq	a5,zero,.L139	#, tmp159,,
	call	__stack_chk_fail@plt	#
.L139:
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
.LFE3138:
	.size	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, .-_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc
	.section	.text._ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,"axG",@progbits,_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,comdat
	.align	1
	.weak	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.type	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, @function
_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_:
.LFB3139:
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
	sd	a0,-40(s0)	# __lhs, __lhs
	sd	a1,-48(s0)	# __rhs, __rhs
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1337:     { return __lhs.base() - __rhs.base(); }
	ld	a0,-40(s0)		#, __lhs
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv		#
	mv	a5,a0	# _1,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1337:     { return __lhs.base() - __rhs.base(); }
	ld	s1,0(a5)		# _2, *_1
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1337:     { return __lhs.base() - __rhs.base(); }
	ld	a0,-48(s0)		#, __rhs
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv		#
	mv	a5,a0	# _3,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1337:     { return __lhs.base() - __rhs.base(); }
	ld	a5,0(a5)		# _4, *_3
	sub	a5,s1,a5	# _5, _2, _4
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1337:     { return __lhs.base() - __rhs.base(); }
	srai	a5,a5,2	#, tmp141, _5
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1337:     { return __lhs.base() - __rhs.base(); }
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
.LFE3139:
	.size	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, .-_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,comdat
	.align	1
	.weak	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, @function
_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm:
.LFB3140:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# this, this
	sd	a1,-48(s0)	# __n, __n
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:381: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	ld	a5,-48(s0)		# tmp137, __n
	beq	a5,zero,.L143	#, tmp137,,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:381: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	ld	a5,-40(s0)		# _1, this
	sd	a5,-32(s0)	# _1, __a
	ld	a5,-48(s0)		# tmp138, __n
	sd	a5,-24(s0)	# tmp138, __n
# /usr/riscv64-linux-gnu/include/c++/13/bits/alloc_traits.h:482:       { return __a.allocate(__n); }
	li	a2,0		#,
	ld	a1,-24(s0)		#, __n
	ld	a0,-32(s0)		#, __a
	call	_ZNSt15__new_allocatorIiE8allocateEmPKv		#
	mv	a5,a0	# D.65534,
# /usr/riscv64-linux-gnu/include/c++/13/bits/alloc_traits.h:482:       { return __a.allocate(__n); }
	nop	
	j	.L145		#
.L143:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:381: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	li	a5,0		# D.65534,
.L145:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:382:       }
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
.LFE3140:
	.size	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, .-_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.section	.text._ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_,comdat
	.align	1
	.weak	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	.type	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, @function
_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_:
.LFB3141:
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
	sd	a2,-40(s0)	# __result, __result
	sd	a3,-48(s0)	# __alloc, __alloc
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:509: 	return std::__relocate_a(__first, __last, __result, __alloc);
	ld	a3,-48(s0)		#, __alloc
	ld	a2,-40(s0)		#, __result
	ld	a1,-32(s0)		#, __last
	ld	a0,-24(s0)		#, __first
	call	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_		#
	mv	a5,a0	# _7,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:514:       }
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
.LFE3141:
	.size	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, .-_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	.section	.text._ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@progbits,_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,comdat
	.align	1
	.weak	_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.type	_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, @function
_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_:
.LFB3143:
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
	sd	a0,-40(s0)	# __lhs, __lhs
	sd	a1,-48(s0)	# __rhs, __rhs
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1228:     { return __lhs.base() == __rhs.base(); }
	ld	a0,-40(s0)		#, __lhs
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv		#
	mv	a5,a0	# _1,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1228:     { return __lhs.base() == __rhs.base(); }
	ld	s1,0(a5)		# _2, *_1
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1228:     { return __lhs.base() == __rhs.base(); }
	ld	a0,-48(s0)		#, __rhs
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv		#
	mv	a5,a0	# _3,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1228:     { return __lhs.base() == __rhs.base(); }
	ld	a5,0(a5)		# _4, *_3
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1228:     { return __lhs.base() == __rhs.base(); }
	sub	a5,s1,a5	# tmp142, _2, _4
	seqz	a5,a5	# tmp141, tmp142
	andi	a5,a5,0xff	# _10, tmp140
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1228:     { return __lhs.base() == __rhs.base(); }
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
.LFE3143:
	.size	_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, .-_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv,comdat
	.align	1
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv, @function
_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv:
.LFB3144:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# this, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1125: 	--_M_current;
	ld	a5,-24(s0)		# tmp138, this
	ld	a5,0(a5)		# _1, this_4(D)->_M_current
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1125: 	--_M_current;
	addi	a4,a5,-4	#, _2, _1
	ld	a5,-24(s0)		# tmp139, this
	sd	a4,0(a5)	# _2, this_4(D)->_M_current
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1126: 	return *this;
	ld	a5,-24(s0)		# _6, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1127:       }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3144:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv, .-_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv
	.section	.text._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_,"axG",@progbits,_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_,comdat
	.align	1
	.weak	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_
	.type	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_, @function
_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_:
.LFB3145:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	sd	s1,40(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# this, this
	sd	a1,-48(s0)	# __it1, __it1
	sd	a2,-56(s0)	# __it2, __it2
# /usr/riscv64-linux-gnu/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	addi	a5,s0,-48	#, tmp140,
	mv	a0,a5	#, tmp140
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv		#
	mv	a5,a0	# _1,
# /usr/riscv64-linux-gnu/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	lw	s1,0(a5)		# _2, *_1
# /usr/riscv64-linux-gnu/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	addi	a5,s0,-56	#, tmp141,
	mv	a0,a5	#, tmp141
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv		#
	mv	a5,a0	# _3,
# /usr/riscv64-linux-gnu/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	lw	a5,0(a5)		# _4, *_3
# /usr/riscv64-linux-gnu/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	mv	a4,s1	# tmp144, _2
	slt	a5,a4,a5	# tmp145, tmp143, tmp144
	andi	a5,a5,0xff	# _8, tmp142
# /usr/riscv64-linux-gnu/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	ld	s1,40(sp)		#,
	.cfi_restore 9
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3145:
	.size	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_, .-_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_
	.section	.text._ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_,comdat
	.align	1
	.weak	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_
	.type	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_, @function
_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_:
.LFB3146:
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
	sd	a0,-40(s0)	# __a, __a
	sd	a1,-48(s0)	# __b, __b
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:185:       swap(*__a, *__b);
	addi	a5,s0,-40	#, tmp136,
	mv	a0,a5	#, tmp136
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv		#
	mv	s1,a0	# _1,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:185:       swap(*__a, *__b);
	addi	a5,s0,-48	#, tmp137,
	mv	a0,a5	#, tmp137
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv		#
	mv	a5,a0	# _2,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:185:       swap(*__a, *__b);
	mv	a1,a5	#, _2
	mv	a0,s1	#, _1
	call	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:187:     }
	nop	
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
.LFE3146:
	.size	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_, .-_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_
	.section	.text._ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag,"axG",@progbits,_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag,comdat
	.align	1
	.weak	_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag
	.type	_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag, @function
_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag:
.LFB3148:
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
	sb	a2,-40(s0)	# D.64515, D.64515
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1105:       if (__first == __last)
	addi	a4,s0,-32	#, tmp136,
	addi	a5,s0,-24	#, tmp137,
	mv	a1,a4	#, tmp136
	mv	a0,a5	#, tmp137
	call	_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_		#
	mv	a5,a0	# tmp138,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1105:       if (__first == __last)
	bne	a5,zero,.L161	#, retval.26_5,,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1107:       --__last;
	addi	a5,s0,-32	#, tmp139,
	mv	a0,a5	#, tmp139
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1108:       while (__first < __last)
	j	.L159		#
.L160:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1110: 	  std::iter_swap(__first, __last);
	ld	a1,-32(s0)		#, __last
	ld	a0,-24(s0)		#, __first
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1111: 	  ++__first;
	addi	a5,s0,-24	#, tmp140,
	mv	a0,a5	#, tmp140
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1112: 	  --__last;
	addi	a5,s0,-32	#, tmp141,
	mv	a0,a5	#, tmp141
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv		#
.L159:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1108:       while (__first < __last)
	addi	a4,s0,-32	#, tmp142,
	addi	a5,s0,-24	#, tmp143,
	mv	a1,a4	#, tmp142
	mv	a0,a5	#, tmp143
	call	_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_		#
	mv	a5,a0	# tmp144,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1108:       while (__first < __last)
	bne	a5,zero,.L160	#, retval.27_8,,
	j	.L156		#
.L161:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:1106: 	return;
	nop	
.L156:
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
.LFE3148:
	.size	_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag, .-_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.align	1
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB3203:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# __a, __a
	sd	a1,-32(s0)	# __b, __b
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	ld	a5,-32(s0)		# tmp138, __b
	ld	a4,0(a5)		# _1, *__b_5(D)
	ld	a5,-24(s0)		# tmp139, __a
	ld	a5,0(a5)		# _2, *__a_6(D)
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	bgeu	a4,a5,.L163	#, _1, _2,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:239: 	return __b;
	ld	a5,-32(s0)		# _3, __b
	j	.L164		#
.L163:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:240:       return __a;
	ld	a5,-24(s0)		# _3, __a
.L164:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:241:     }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3203:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZSt25__uninitialized_default_nIPimET_S1_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIPimET_S1_T0_,comdat
	.align	1
	.weak	_ZSt25__uninitialized_default_nIPimET_S1_T0_
	.type	_ZSt25__uninitialized_default_nIPimET_S1_T0_, @function
_ZSt25__uninitialized_default_nIPimET_S1_T0_:
.LFB3207:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# __first, __first
	sd	a1,-48(s0)	# __n, __n
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:707:       constexpr bool __can_fill
	li	a5,1		# tmp136,
	sb	a5,-17(s0)	# tmp136, __can_fill
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:712: 	__uninit_default_n(__first, __n);
	ld	a1,-48(s0)		#, __n
	ld	a0,-40(s0)		#, __first
	call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_		#
	mv	a5,a0	# _6,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:713:     }
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
.LFE3207:
	.size	_ZSt25__uninitialized_default_nIPimET_S1_T0_, .-_ZSt25__uninitialized_default_nIPimET_S1_T0_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,comdat
	.align	1
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_:
.LFB3208:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# D.64868, D.64868
	sd	a1,-32(s0)	# D.64869, D.64869
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_construct.h:172:         __destroy(_ForwardIterator, _ForwardIterator) { }
	nop	
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3208:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.section	.text._ZNSt15__new_allocatorIiE10deallocateEPim,"axG",@progbits,_ZNSt15__new_allocatorIiE10deallocateEPim,comdat
	.align	1
	.weak	_ZNSt15__new_allocatorIiE10deallocateEPim
	.type	_ZNSt15__new_allocatorIiE10deallocateEPim, @function
_ZNSt15__new_allocatorIiE10deallocateEPim:
.LFB3209:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# this, this
	sd	a1,-32(s0)	# __p, __p
	sd	a2,-40(s0)	# __n, __n
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	ld	a5,-40(s0)		# tmp135, __n
	slli	a5,a5,2	#, _2, tmp135
	mv	a1,a5	#, _2
	ld	a0,-32(s0)		#, __p
	call	_ZdlPvm@plt	#
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:173:       }
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3209:
	.size	_ZNSt15__new_allocatorIiE10deallocateEPim, .-_ZNSt15__new_allocatorIiE10deallocateEPim
	.section	.text._ZNKSt6vectorIiSaIiEE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE8max_sizeEv,comdat
	.align	1
	.weak	_ZNKSt6vectorIiSaIiEE8max_sizeEv
	.type	_ZNKSt6vectorIiSaIiEE8max_sizeEv, @function
_ZNKSt6vectorIiSaIiEE8max_sizeEv:
.LFB3210:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# this, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:999:       { return _S_max_size(_M_get_Tp_allocator()); }
	ld	a5,-24(s0)		# _1, this
	mv	a0,a5	#, _1
	call	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv		#
	mv	a5,a0	# _2,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:999:       { return _S_max_size(_M_get_Tp_allocator()); }
	mv	a0,a5	#, _2
	call	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_		#
	mv	a5,a0	# _7,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:999:       { return _S_max_size(_M_get_Tp_allocator()); }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	.cfi_restore 1
	ld	s0,16(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3210:
	.size	_ZNKSt6vectorIiSaIiEE8max_sizeEv, .-_ZNKSt6vectorIiSaIiEE8max_sizeEv
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.align	1
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB3211:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# __a, __a
	sd	a1,-32(s0)	# __b, __b
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:262:       if (__a < __b)
	ld	a5,-24(s0)		# tmp138, __a
	ld	a4,0(a5)		# _1, *__a_5(D)
	ld	a5,-32(s0)		# tmp139, __b
	ld	a5,0(a5)		# _2, *__b_6(D)
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:262:       if (__a < __b)
	bgeu	a4,a5,.L173	#, _1, _2,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:263: 	return __b;
	ld	a5,-32(s0)		# _3, __b
	j	.L174		#
.L173:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:264:       return __a;
	ld	a5,-24(s0)		# _3, __a
.L174:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:265:     }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3211:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_,"axG",@progbits,_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_,comdat
	.align	1
	.weak	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_
	.type	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, @function
_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_:
.LFB3213:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	sd	s1,40(sp)	#,
	sd	s2,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# __first, __first
	sd	a1,-48(s0)	# __last, __last
	sd	a2,-56(s0)	# __result, __result
	sd	a3,-64(s0)	# __alloc, __alloc
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1147:       return std::__relocate_a_1(std::__niter_base(__first),
	ld	a0,-40(s0)		#, __first
	call	_ZSt12__niter_baseIPiET_S1_		#
	mv	s1,a0	# _1,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1147:       return std::__relocate_a_1(std::__niter_base(__first),
	ld	a0,-48(s0)		#, __last
	call	_ZSt12__niter_baseIPiET_S1_		#
	mv	s2,a0	# _2,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1147:       return std::__relocate_a_1(std::__niter_base(__first),
	ld	a0,-56(s0)		#, __result
	call	_ZSt12__niter_baseIPiET_S1_		#
	mv	a5,a0	# _3,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1147:       return std::__relocate_a_1(std::__niter_base(__first),
	ld	a3,-64(s0)		#, __alloc
	mv	a2,a5	#, _3
	mv	a1,s2	#, _2
	mv	a0,s1	#, _1
	call	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E		#
	mv	a5,a0	# _13,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1150:     }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	ld	s1,40(sp)		#,
	.cfi_restore 9
	ld	s2,32(sp)		#,
	.cfi_restore 18
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3213:
	.size	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, .-_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_
	.section	.text._ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.align	1
	.weak	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, @function
_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB3215:
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
	sd	a4, -24(s0)	# tmp146, D.65622
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
	ld	a4, -24(s0)	# tmp147, D.65622
	ld	a5, 0(a5)	# tmp145, __stack_chk_guard
	xor	a5, a4, a5	# tmp145, tmp147
	li	a4, 0	# tmp147
	beq	a5,zero,.L178	#, tmp145,,
	call	__stack_chk_fail@plt	#
.L178:
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3215:
	.size	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@progbits,_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,comdat
	.align	1
	.weak	_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.type	_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, @function
_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_:
.LFB3216:
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
	sd	a0,-40(s0)	# __lhs, __lhs
	sd	a1,-48(s0)	# __rhs, __rhs
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1261:     { return __lhs.base() < __rhs.base(); }
	ld	a0,-40(s0)		#, __lhs
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv		#
	mv	a5,a0	# _1,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1261:     { return __lhs.base() < __rhs.base(); }
	ld	s1,0(a5)		# _2, *_1
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1261:     { return __lhs.base() < __rhs.base(); }
	ld	a0,-48(s0)		#, __rhs
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv		#
	mv	a5,a0	# _3,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1261:     { return __lhs.base() < __rhs.base(); }
	ld	a5,0(a5)		# _4, *_3
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1261:     { return __lhs.base() < __rhs.base(); }
	sltu	a5,s1,a5	# _4, tmp141, _2
	andi	a5,a5,0xff	# _10, tmp140
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator.h:1261:     { return __lhs.base() < __rhs.base(); }
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
.LFE3216:
	.size	_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, .-_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_,comdat
	.align	1
	.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_, @function
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_:
.LFB3238:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# __first, __first
	sd	a1,-48(s0)	# __n, __n
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:662: 	  if (__n > 0)
	ld	a5,-48(s0)		# tmp138, __n
	beq	a5,zero,.L182	#, tmp138,,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:665: 		= std::__addressof(*__first);
	ld	a0,-40(s0)		#, __first
	call	_ZSt11__addressofIiEPT_RS0_		#
	sd	a0,-24(s0)	#, __val
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:666: 	      std::_Construct(__val);
	ld	a0,-24(s0)		#, __val
	call	_ZSt10_ConstructIiJEEvPT_DpOT0_		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:667: 	      ++__first;
	ld	a5,-40(s0)		# tmp140, __first
	addi	a5,a5,4	#, tmp139, tmp140
	sd	a5,-40(s0)	# tmp139, __first
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:668: 	      __first = std::fill_n(__first, __n - 1, *__val);
	ld	a5,-48(s0)		# tmp141, __n
	addi	a5,a5,-1	#, _1, tmp141
	ld	a2,-24(s0)		#, __val
	mv	a1,a5	#, _1
	ld	a0,-40(s0)		#, __first
	call	_ZSt6fill_nIPimiET_S1_T0_RKT1_		#
	mv	a5,a0	# _12,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:668: 	      __first = std::fill_n(__first, __n - 1, *__val);
	sd	a5,-40(s0)	# _12, __first
.L182:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:670: 	  return __first;
	ld	a5,-40(s0)		# _14, __first
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:671: 	}
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
.LFE3238:
	.size	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_, .-_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_
	.section	.text._ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.align	1
	.weak	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv:
.LFB3239:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# this, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:307:       { return this->_M_impl; }
	ld	a5,-24(s0)		# _2, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_vector.h:307:       { return this->_M_impl; }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3239:
	.size	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt15__new_allocatorIiE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorIiE8allocateEmPKv,comdat
	.align	1
	.weak	_ZNSt15__new_allocatorIiE8allocateEmPKv
	.type	_ZNSt15__new_allocatorIiE8allocateEmPKv, @function
_ZNSt15__new_allocatorIiE8allocateEmPKv:
.LFB3240:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# this, this
	sd	a1,-48(s0)	# __n, __n
	sd	a2,-56(s0)	# D.64994, D.64994
	ld	a5,-40(s0)		# tmp142, this
	sd	a5,-24(s0)	# tmp142, this
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:233: 	return std::size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
	li	a5,-1		# tmp143,
	srli	a5,a5,3	#, D.65594, tmp143
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	ld	a4,-48(s0)		# tmp145, __n
	sgtu	a5,a4,a5	# tmp146, tmp145, D.65594
	andi	a5,a5,0xff	# _2, tmp144
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	snez	a5,a5	# tmp148, _4
	andi	a5,a5,0xff	# retval.13_9, tmp147
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	beq	a5,zero,.L188	#, retval.13_9,,
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:138: 	    if (__n > (std::size_t(-1) / sizeof(_Tp)))
	ld	a4,-48(s0)		# tmp151, __n
	li	a5,-1		# tmp153,
	srli	a5,a5,2	#, tmp152, tmp153
	bleu	a4,a5,.L189	#, tmp151, tmp152,
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:139: 	      std::__throw_bad_array_new_length();
	call	_ZSt28__throw_bad_array_new_lengthv@plt	#
.L189:
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:140: 	    std::__throw_bad_alloc();
	call	_ZSt17__throw_bad_allocv@plt	#
.L188:
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	ld	a5,-48(s0)		# tmp154, __n
	slli	a5,a5,2	#, _6, tmp154
	mv	a0,a5	#, _6
	call	_Znwm@plt	#
	mv	a5,a0	# tmp155,
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/new_allocator.h:152:       }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3240:
	.size	_ZNSt15__new_allocatorIiE8allocateEmPKv, .-_ZNSt15__new_allocatorIiE8allocateEmPKv
	.section	.text._ZSt12__niter_baseIPiET_S1_,"axG",@progbits,_ZSt12__niter_baseIPiET_S1_,comdat
	.align	1
	.weak	_ZSt12__niter_baseIPiET_S1_
	.type	_ZSt12__niter_baseIPiET_S1_, @function
_ZSt12__niter_baseIPiET_S1_:
.LFB3241:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# __it, __it
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:318:     { return __it; }
	ld	a5,-24(s0)		# _2, __it
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:318:     { return __it; }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3241:
	.size	_ZSt12__niter_baseIPiET_S1_, .-_ZSt12__niter_baseIPiET_S1_
	.section	.text._ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,comdat
	.align	1
	.weak	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.type	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E, @function
_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E:
.LFB3242:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# __first, __first
	sd	a1,-48(s0)	# __last, __last
	sd	a2,-56(s0)	# __result, __result
	sd	a3,-64(s0)	# __alloc, __alloc
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1118:       ptrdiff_t __count = __last - __first;
	ld	a4,-48(s0)		# tmp141, __last
	ld	a5,-40(s0)		# tmp142, __first
	sub	a5,a4,a5	# _1, tmp141, tmp142
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1118:       ptrdiff_t __count = __last - __first;
	srai	a5,a5,2	#, tmp143, _1
	sd	a5,-24(s0)	# tmp143, __count
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1119:       if (__count > 0)
	ld	a5,-24(s0)		# tmp144, __count
	ble	a5,zero,.L194	#, tmp144,,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1131: 	  __builtin_memmove(__result, __first, __count * sizeof(_Tp));
	ld	a5,-24(s0)		# __count.19_2, __count
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1131: 	  __builtin_memmove(__result, __first, __count * sizeof(_Tp));
	slli	a5,a5,2	#, _3, __count.19_2
	mv	a2,a5	#, _3
	ld	a1,-40(s0)		#, __first
	ld	a0,-56(s0)		#, __result
	call	memmove@plt	#
.L194:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1133:       return __result + __count;
	ld	a5,-24(s0)		# __count.20_4, __count
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1133:       return __result + __count;
	slli	a5,a5,2	#, _5, __count.20_4
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1133:       return __result + __count;
	ld	a4,-56(s0)		# tmp147, __result
	add	a5,a4,a5	# _5, _13, tmp147
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1134:     }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3242:
	.size	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E, .-_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.section	.text._ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.align	1
	.weak	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_:
.LFB3243:
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
.LFE3243:
	.size	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.section	.text._ZSt11__addressofIiEPT_RS0_,"axG",@progbits,_ZSt11__addressofIiEPT_RS0_,comdat
	.align	1
	.weak	_ZSt11__addressofIiEPT_RS0_
	.type	_ZSt11__addressofIiEPT_RS0_, @function
_ZSt11__addressofIiEPT_RS0_:
.LFB3253:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# __r, __r
# /usr/riscv64-linux-gnu/include/c++/13/bits/move.h:52:     { return __builtin_addressof(__r); }
	ld	a5,-24(s0)		# _2, __r
# /usr/riscv64-linux-gnu/include/c++/13/bits/move.h:52:     { return __builtin_addressof(__r); }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3253:
	.size	_ZSt11__addressofIiEPT_RS0_, .-_ZSt11__addressofIiEPT_RS0_
	.section	.text._ZSt10_ConstructIiJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIiJEEvPT_DpOT0_,comdat
	.align	1
	.weak	_ZSt10_ConstructIiJEEvPT_DpOT0_
	.type	_ZSt10_ConstructIiJEEvPT_DpOT0_, @function
_ZSt10_ConstructIiJEEvPT_DpOT0_:
.LFB3254:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# __p, __p
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	ld	a5,-24(s0)		# _2, __p
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	mv	a1,a5	#, _2
	li	a0,4		#,
	call	_ZnwmPv		#
	mv	a5,a0	# _5,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	sw	zero,0(a5)	#, MEM[(int *)_5]
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_construct.h:120:     }
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
.LFE3254:
	.size	_ZSt10_ConstructIiJEEvPT_DpOT0_, .-_ZSt10_ConstructIiJEEvPT_DpOT0_
	.section	.text._ZSt6fill_nIPimiET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPimiET_S1_T0_RKT1_,comdat
	.align	1
	.weak	_ZSt6fill_nIPimiET_S1_T0_RKT1_
	.type	_ZSt6fill_nIPimiET_S1_T0_RKT1_, @function
_ZSt6fill_nIPimiET_S1_T0_RKT1_:
.LFB3255:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	sd	s1,40(sp)	#,
	sd	s2,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# __first, __first
	sd	a1,-48(s0)	# __n, __n
	sd	a2,-56(s0)	# __value, __value
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:1157:       return std::__fill_n_a(__first, std::__size_to_integer(__n), __value,
	ld	s1,-40(s0)		# __first.14_1, __first
	ld	a0,-48(s0)		#, __n
	call	_ZSt17__size_to_integerm		#
	mv	a5,a0	# _2,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator_base_types.h:240:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:1157:       return std::__fill_n_a(__first, std::__size_to_integer(__n), __value,
	mv	a3,s2	#, D.65286
	ld	a2,-56(s0)		#, __value
	mv	a1,a5	#, _2
	mv	a0,s1	#, __first.14_1
	call	_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag		#
	mv	a5,a0	# _8,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:1159:     }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	ld	s1,40(sp)		#,
	.cfi_restore 9
	ld	s2,32(sp)		#,
	.cfi_restore 18
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3255:
	.size	_ZSt6fill_nIPimiET_S1_T0_RKT1_, .-_ZSt6fill_nIPimiET_S1_T0_RKT1_
	.section	.text._ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag,comdat
	.align	1
	.weak	_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag
	.type	_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag, @function
_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag:
.LFB3262:
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
	sd	a1,-32(s0)	# __n, __n
	sd	a2,-40(s0)	# __value, __value
	sb	a3,-48(s0)	# D.65098, D.65098
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:1123:       if (__n <= 0)
	ld	a5,-32(s0)		# tmp139, __n
	bne	a5,zero,.L205	#, tmp139,,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:1124: 	return __first;
	ld	a5,-24(s0)		# _4, __first
	j	.L206		#
.L205:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:1128:       std::__fill_a(__first, __first + __n, __value);
	ld	a5,-32(s0)		# tmp140, __n
	slli	a5,a5,2	#, _1, tmp140
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:1128:       std::__fill_a(__first, __first + __n, __value);
	ld	a4,-24(s0)		# tmp141, __first
	add	a5,a4,a5	# _1, _2, tmp141
	ld	a2,-40(s0)		#, __value
	mv	a1,a5	#, _2
	ld	a0,-24(s0)		#, __first
	call	_ZSt8__fill_aIPiiEvT_S1_RKT0_		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:1129:       return __first + __n;
	ld	a5,-32(s0)		# tmp142, __n
	slli	a5,a5,2	#, _3, tmp142
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:1129:       return __first + __n;
	ld	a4,-24(s0)		# tmp143, __first
	add	a5,a4,a5	# _3, _4, tmp143
.L206:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:1130:     }
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
.LFE3262:
	.size	_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag, .-_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag
	.section	.text._ZSt8__fill_aIPiiEvT_S1_RKT0_,"axG",@progbits,_ZSt8__fill_aIPiiEvT_S1_RKT0_,comdat
	.align	1
	.weak	_ZSt8__fill_aIPiiEvT_S1_RKT0_
	.type	_ZSt8__fill_aIPiiEvT_S1_RKT0_, @function
_ZSt8__fill_aIPiiEvT_S1_RKT0_:
.LFB3263:
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
	sd	a2,-40(s0)	# __value, __value
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:977:     { std::__fill_a1(__first, __last, __value); }
	ld	a2,-40(s0)		#, __value
	ld	a1,-32(s0)		#, __last
	ld	a0,-24(s0)		#, __first
	call	_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:977:     { std::__fill_a1(__first, __last, __value); }
	nop	
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3263:
	.size	_ZSt8__fill_aIPiiEvT_S1_RKT0_, .-_ZSt8__fill_aIPiiEvT_S1_RKT0_
	.section	.text._ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,"axG",@progbits,_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,comdat
	.align	1
	.weak	_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.type	_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, @function
_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_:
.LFB3264:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# __first, __first
	sd	a1,-48(s0)	# __last, __last
	sd	a2,-56(s0)	# __value, __value
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:929:       const _Tp __tmp = __value;
	ld	a5,-56(s0)		# tmp134, __value
	lw	a5,0(a5)		# tmp135, *__value_4(D)
	sw	a5,-20(s0)	# tmp135, __tmp
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:930:       for (; __first != __last; ++__first)
	j	.L209		#
.L210:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:931: 	*__first = __tmp;
	ld	a5,-40(s0)		# tmp136, __first
	lw	a4,-20(s0)		# tmp137, __tmp
	sw	a4,0(a5)	# tmp137, *__first_1
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:930:       for (; __first != __last; ++__first)
	ld	a5,-40(s0)		# tmp139, __first
	addi	a5,a5,4	#, tmp138, tmp139
	sd	a5,-40(s0)	# tmp138, __first
.L209:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:930:       for (; __first != __last; ++__first)
	ld	a4,-40(s0)		# tmp140, __first
	ld	a5,-48(s0)		# tmp141, __last
	bne	a4,a5,.L210	#, tmp140, tmp141,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algobase.h:932:     }
	nop	
	nop	
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3264:
	.size	_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, .-_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
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
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	3
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.dword	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
