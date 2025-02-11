	.file	"problem43.cc"
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
	.align	2
	.type	_ZZ4mainE1N, @object
	.size	_ZZ4mainE1N, 4
_ZZ4mainE1N:
	.word	10
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
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
# problem43.cc:10: {
	la	a5,__stack_chk_guard		# tmp199,
	ld	a4, 0(a5)	# tmp314, __stack_chk_guard
	sd	a4, -24(s0)	# tmp314, D.58670
	li	a4, 0	# tmp314
# problem43.cc:13:   unsigned d[] = {0,1,2,3,4,5,6,7,8,9};
	lla	a5,.LC0	# tmp200,
	ld	a1,0(a5)		# tmp201,
	ld	a2,8(a5)		# tmp202,
	ld	a3,16(a5)		# tmp203,
	ld	a4,24(a5)		# tmp204,
	ld	a5,32(a5)		# tmp205,
	sd	a1,-64(s0)	# tmp201, d
	sd	a2,-56(s0)	# tmp202, d
	sd	a3,-48(s0)	# tmp203, d
	sd	a4,-40(s0)	# tmp204, d
	sd	a5,-32(s0)	# tmp205, d
# problem43.cc:15:   unsigned long long sum = 0;
	sd	zero,-80(s0)	#, sum
.L7:
# problem43.cc:18:     if (   (d[1]*100 + d[2]*10 + d[3]) % 2 == 0
	lw	a4,-60(s0)		# _1, d[1]
# problem43.cc:18:     if (   (d[1]*100 + d[2]*10 + d[3]) % 2 == 0
	li	a5,100		# tmp207,
	mulw	a5,a4,a5	# tmp206, _1, tmp207
	sext.w	a4,a5	# _2, tmp206
# problem43.cc:18:     if (   (d[1]*100 + d[2]*10 + d[3]) % 2 == 0
	lw	a5,-56(s0)		# _3, d[2]
# problem43.cc:18:     if (   (d[1]*100 + d[2]*10 + d[3]) % 2 == 0
	mv	a3,a5	# tmp208, _3
	mv	a5,a3	# tmp209, tmp208
	slliw	a5,a5,2	#, tmp210, tmp209
	addw	a5,a5,a3	# tmp208, tmp209, tmp209
	slliw	a5,a5,1	#, tmp211, tmp209
	sext.w	a5,a5	# _4, tmp209
# problem43.cc:18:     if (   (d[1]*100 + d[2]*10 + d[3]) % 2 == 0
	addw	a5,a4,a5	# _4, tmp212, _2
	sext.w	a4,a5	# _5, tmp212
# problem43.cc:18:     if (   (d[1]*100 + d[2]*10 + d[3]) % 2 == 0
	lw	a5,-52(s0)		# _6, d[3]
# problem43.cc:18:     if (   (d[1]*100 + d[2]*10 + d[3]) % 2 == 0
	addw	a5,a4,a5	# _6, tmp213, _5
	sext.w	a5,a5	# _7, tmp213
# problem43.cc:18:     if (   (d[1]*100 + d[2]*10 + d[3]) % 2 == 0
	andi	a5,a5,1	#, tmp215, tmp214
	sext.w	a5,a5	# _8, tmp215
# problem43.cc:18:     if (   (d[1]*100 + d[2]*10 + d[3]) % 2 == 0
	bne	a5,zero,.L4	#, _8,,
# problem43.cc:19:         && (d[2]*100 + d[3]*10 + d[4]) % 3 == 0
	lw	a4,-56(s0)		# _9, d[2]
# problem43.cc:19:         && (d[2]*100 + d[3]*10 + d[4]) % 3 == 0
	li	a5,100		# tmp217,
	mulw	a5,a4,a5	# tmp216, _9, tmp217
	sext.w	a4,a5	# _10, tmp216
# problem43.cc:19:         && (d[2]*100 + d[3]*10 + d[4]) % 3 == 0
	lw	a5,-52(s0)		# _11, d[3]
# problem43.cc:19:         && (d[2]*100 + d[3]*10 + d[4]) % 3 == 0
	mv	a3,a5	# tmp218, _11
	mv	a5,a3	# tmp219, tmp218
	slliw	a5,a5,2	#, tmp220, tmp219
	addw	a5,a5,a3	# tmp218, tmp219, tmp219
	slliw	a5,a5,1	#, tmp221, tmp219
	sext.w	a5,a5	# _12, tmp219
# problem43.cc:19:         && (d[2]*100 + d[3]*10 + d[4]) % 3 == 0
	addw	a5,a4,a5	# _12, tmp222, _10
	sext.w	a4,a5	# _13, tmp222
# problem43.cc:19:         && (d[2]*100 + d[3]*10 + d[4]) % 3 == 0
	lw	a5,-48(s0)		# _14, d[4]
# problem43.cc:19:         && (d[2]*100 + d[3]*10 + d[4]) % 3 == 0
	addw	a5,a4,a5	# _14, tmp223, _13
	sext.w	a5,a5	# _15, tmp223
# problem43.cc:19:         && (d[2]*100 + d[3]*10 + d[4]) % 3 == 0
	mv	a4,a5	# tmp225, _15
	li	a5,3		# tmp227,
	remuw	a5,a4,a5	# tmp227, tmp226, tmp225
	sext.w	a5,a5	# _16, tmp226
# problem43.cc:19:         && (d[2]*100 + d[3]*10 + d[4]) % 3 == 0
	bne	a5,zero,.L4	#, _16,,
# problem43.cc:20:         && (d[3]*100 + d[4]*10 + d[5]) % 5 == 0
	lw	a4,-52(s0)		# _17, d[3]
# problem43.cc:20:         && (d[3]*100 + d[4]*10 + d[5]) % 5 == 0
	li	a5,100		# tmp229,
	mulw	a5,a4,a5	# tmp228, _17, tmp229
	sext.w	a4,a5	# _18, tmp228
# problem43.cc:20:         && (d[3]*100 + d[4]*10 + d[5]) % 5 == 0
	lw	a5,-48(s0)		# _19, d[4]
# problem43.cc:20:         && (d[3]*100 + d[4]*10 + d[5]) % 5 == 0
	mv	a3,a5	# tmp230, _19
	mv	a5,a3	# tmp231, tmp230
	slliw	a5,a5,2	#, tmp232, tmp231
	addw	a5,a5,a3	# tmp230, tmp231, tmp231
	slliw	a5,a5,1	#, tmp233, tmp231
	sext.w	a5,a5	# _20, tmp231
# problem43.cc:20:         && (d[3]*100 + d[4]*10 + d[5]) % 5 == 0
	addw	a5,a4,a5	# _20, tmp234, _18
	sext.w	a4,a5	# _21, tmp234
# problem43.cc:20:         && (d[3]*100 + d[4]*10 + d[5]) % 5 == 0
	lw	a5,-44(s0)		# _22, d[5]
# problem43.cc:20:         && (d[3]*100 + d[4]*10 + d[5]) % 5 == 0
	addw	a5,a4,a5	# _22, tmp235, _21
	sext.w	a5,a5	# _23, tmp235
# problem43.cc:20:         && (d[3]*100 + d[4]*10 + d[5]) % 5 == 0
	mv	a4,a5	# tmp237, _23
	li	a5,5		# tmp239,
	remuw	a5,a4,a5	# tmp239, tmp238, tmp237
	sext.w	a5,a5	# _24, tmp238
# problem43.cc:20:         && (d[3]*100 + d[4]*10 + d[5]) % 5 == 0
	bne	a5,zero,.L4	#, _24,,
# problem43.cc:21:         && (d[4]*100 + d[5]*10 + d[6]) % 7 == 0
	lw	a4,-48(s0)		# _25, d[4]
# problem43.cc:21:         && (d[4]*100 + d[5]*10 + d[6]) % 7 == 0
	li	a5,100		# tmp241,
	mulw	a5,a4,a5	# tmp240, _25, tmp241
	sext.w	a4,a5	# _26, tmp240
# problem43.cc:21:         && (d[4]*100 + d[5]*10 + d[6]) % 7 == 0
	lw	a5,-44(s0)		# _27, d[5]
# problem43.cc:21:         && (d[4]*100 + d[5]*10 + d[6]) % 7 == 0
	mv	a3,a5	# tmp242, _27
	mv	a5,a3	# tmp243, tmp242
	slliw	a5,a5,2	#, tmp244, tmp243
	addw	a5,a5,a3	# tmp242, tmp243, tmp243
	slliw	a5,a5,1	#, tmp245, tmp243
	sext.w	a5,a5	# _28, tmp243
# problem43.cc:21:         && (d[4]*100 + d[5]*10 + d[6]) % 7 == 0
	addw	a5,a4,a5	# _28, tmp246, _26
	sext.w	a4,a5	# _29, tmp246
# problem43.cc:21:         && (d[4]*100 + d[5]*10 + d[6]) % 7 == 0
	lw	a5,-40(s0)		# _30, d[6]
# problem43.cc:21:         && (d[4]*100 + d[5]*10 + d[6]) % 7 == 0
	addw	a5,a4,a5	# _30, tmp247, _29
	sext.w	a5,a5	# _31, tmp247
# problem43.cc:21:         && (d[4]*100 + d[5]*10 + d[6]) % 7 == 0
	mv	a4,a5	# tmp249, _31
	li	a5,7		# tmp251,
	remuw	a5,a4,a5	# tmp251, tmp250, tmp249
	sext.w	a5,a5	# _32, tmp250
# problem43.cc:21:         && (d[4]*100 + d[5]*10 + d[6]) % 7 == 0
	bne	a5,zero,.L4	#, _32,,
# problem43.cc:22:         && (d[5]*100 + d[6]*10 + d[7]) % 11 == 0
	lw	a4,-44(s0)		# _33, d[5]
# problem43.cc:22:         && (d[5]*100 + d[6]*10 + d[7]) % 11 == 0
	li	a5,100		# tmp253,
	mulw	a5,a4,a5	# tmp252, _33, tmp253
	sext.w	a4,a5	# _34, tmp252
# problem43.cc:22:         && (d[5]*100 + d[6]*10 + d[7]) % 11 == 0
	lw	a5,-40(s0)		# _35, d[6]
# problem43.cc:22:         && (d[5]*100 + d[6]*10 + d[7]) % 11 == 0
	mv	a3,a5	# tmp254, _35
	mv	a5,a3	# tmp255, tmp254
	slliw	a5,a5,2	#, tmp256, tmp255
	addw	a5,a5,a3	# tmp254, tmp255, tmp255
	slliw	a5,a5,1	#, tmp257, tmp255
	sext.w	a5,a5	# _36, tmp255
# problem43.cc:22:         && (d[5]*100 + d[6]*10 + d[7]) % 11 == 0
	addw	a5,a4,a5	# _36, tmp258, _34
	sext.w	a4,a5	# _37, tmp258
# problem43.cc:22:         && (d[5]*100 + d[6]*10 + d[7]) % 11 == 0
	lw	a5,-36(s0)		# _38, d[7]
# problem43.cc:22:         && (d[5]*100 + d[6]*10 + d[7]) % 11 == 0
	addw	a5,a4,a5	# _38, tmp259, _37
	sext.w	a5,a5	# _39, tmp259
# problem43.cc:22:         && (d[5]*100 + d[6]*10 + d[7]) % 11 == 0
	mv	a4,a5	# tmp261, _39
	li	a5,11		# tmp263,
	remuw	a5,a4,a5	# tmp263, tmp262, tmp261
	sext.w	a5,a5	# _40, tmp262
# problem43.cc:22:         && (d[5]*100 + d[6]*10 + d[7]) % 11 == 0
	bne	a5,zero,.L4	#, _40,,
# problem43.cc:23:         && (d[6]*100 + d[7]*10 + d[8]) % 13 == 0
	lw	a4,-40(s0)		# _41, d[6]
# problem43.cc:23:         && (d[6]*100 + d[7]*10 + d[8]) % 13 == 0
	li	a5,100		# tmp265,
	mulw	a5,a4,a5	# tmp264, _41, tmp265
	sext.w	a4,a5	# _42, tmp264
# problem43.cc:23:         && (d[6]*100 + d[7]*10 + d[8]) % 13 == 0
	lw	a5,-36(s0)		# _43, d[7]
# problem43.cc:23:         && (d[6]*100 + d[7]*10 + d[8]) % 13 == 0
	mv	a3,a5	# tmp266, _43
	mv	a5,a3	# tmp267, tmp266
	slliw	a5,a5,2	#, tmp268, tmp267
	addw	a5,a5,a3	# tmp266, tmp267, tmp267
	slliw	a5,a5,1	#, tmp269, tmp267
	sext.w	a5,a5	# _44, tmp267
# problem43.cc:23:         && (d[6]*100 + d[7]*10 + d[8]) % 13 == 0
	addw	a5,a4,a5	# _44, tmp270, _42
	sext.w	a4,a5	# _45, tmp270
# problem43.cc:23:         && (d[6]*100 + d[7]*10 + d[8]) % 13 == 0
	lw	a5,-32(s0)		# _46, d[8]
# problem43.cc:23:         && (d[6]*100 + d[7]*10 + d[8]) % 13 == 0
	addw	a5,a4,a5	# _46, tmp271, _45
	sext.w	a5,a5	# _47, tmp271
# problem43.cc:23:         && (d[6]*100 + d[7]*10 + d[8]) % 13 == 0
	mv	a4,a5	# tmp273, _47
	li	a5,13		# tmp275,
	remuw	a5,a4,a5	# tmp275, tmp274, tmp273
	sext.w	a5,a5	# _48, tmp274
# problem43.cc:23:         && (d[6]*100 + d[7]*10 + d[8]) % 13 == 0
	bne	a5,zero,.L4	#, _48,,
# problem43.cc:24:         && (d[7]*100 + d[8]*10 + d[9]) % 17 == 0) {
	lw	a4,-36(s0)		# _49, d[7]
# problem43.cc:24:         && (d[7]*100 + d[8]*10 + d[9]) % 17 == 0) {
	li	a5,100		# tmp277,
	mulw	a5,a4,a5	# tmp276, _49, tmp277
	sext.w	a4,a5	# _50, tmp276
# problem43.cc:24:         && (d[7]*100 + d[8]*10 + d[9]) % 17 == 0) {
	lw	a5,-32(s0)		# _51, d[8]
# problem43.cc:24:         && (d[7]*100 + d[8]*10 + d[9]) % 17 == 0) {
	mv	a3,a5	# tmp278, _51
	mv	a5,a3	# tmp279, tmp278
	slliw	a5,a5,2	#, tmp280, tmp279
	addw	a5,a5,a3	# tmp278, tmp279, tmp279
	slliw	a5,a5,1	#, tmp281, tmp279
	sext.w	a5,a5	# _52, tmp279
# problem43.cc:24:         && (d[7]*100 + d[8]*10 + d[9]) % 17 == 0) {
	addw	a5,a4,a5	# _52, tmp282, _50
	sext.w	a4,a5	# _53, tmp282
# problem43.cc:24:         && (d[7]*100 + d[8]*10 + d[9]) % 17 == 0) {
	lw	a5,-28(s0)		# _54, d[9]
# problem43.cc:24:         && (d[7]*100 + d[8]*10 + d[9]) % 17 == 0) {
	addw	a5,a4,a5	# _54, tmp283, _53
	sext.w	a5,a5	# _55, tmp283
# problem43.cc:24:         && (d[7]*100 + d[8]*10 + d[9]) % 17 == 0) {
	mv	a4,a5	# tmp285, _55
	li	a5,17		# tmp287,
	remuw	a5,a4,a5	# tmp287, tmp286, tmp285
	sext.w	a5,a5	# _56, tmp286
# problem43.cc:24:         && (d[7]*100 + d[8]*10 + d[9]) % 17 == 0) {
	bne	a5,zero,.L4	#, _56,,
# problem43.cc:25:       unsigned long long p = 1;
	li	a5,1		# tmp288,
	sd	a5,-72(s0)	# tmp288, p
# problem43.cc:26:       for (unsigned i = 0; i < N; i++) {
	sw	zero,-84(s0)	#, i
# problem43.cc:26:       for (unsigned i = 0; i < N; i++) {
	j	.L5		#
.L6:
# problem43.cc:27:         sum += d[N-i-1]*p;
	li	a5,9		# tmp290,
	lw	a4,-84(s0)		# tmp292, i
	subw	a5,a5,a4	# tmp289, tmp290, tmp291
	sext.w	a5,a5	# _57, tmp289
# problem43.cc:27:         sum += d[N-i-1]*p;
	slli	a5,a5,32	#, tmp293, _57
	srli	a5,a5,32	#, tmp293, tmp293
	slli	a5,a5,2	#, tmp294, tmp293
	addi	a5,a5,-16	#, tmp318, tmp294
	add	a5,a5,s0	#, tmp294, tmp318
	lw	a5,-48(a5)		# _58, d[_57]
	slli	a4,a5,32	#, _59, _58
	srli	a4,a4,32	#, _59, _59
# problem43.cc:27:         sum += d[N-i-1]*p;
	ld	a5,-72(s0)		# tmp295, p
	mul	a5,a4,a5	# _60, _59, tmp295
# problem43.cc:27:         sum += d[N-i-1]*p;
	ld	a4,-80(s0)		# tmp297, sum
	add	a5,a4,a5	# _60, tmp296, tmp297
	sd	a5,-80(s0)	# tmp296, sum
# problem43.cc:28:         p *= 10;
	ld	a4,-72(s0)		# tmp298, p
	mv	a5,a4	# tmp299, tmp298
	slli	a5,a5,2	#, tmp300, tmp299
	add	a5,a5,a4	# tmp298, tmp299, tmp299
	slli	a5,a5,1	#, tmp301, tmp299
	sd	a5,-72(s0)	# tmp299, p
# problem43.cc:26:       for (unsigned i = 0; i < N; i++) {
	lw	a5,-84(s0)		# tmp304, i
	addiw	a5,a5,1	#, tmp302, tmp303
	sw	a5,-84(s0)	# tmp302, i
.L5:
# problem43.cc:26:       for (unsigned i = 0; i < N; i++) {
	lw	a5,-84(s0)		# tmp306, i
	sext.w	a4,a5	# tmp307, tmp305
	li	a5,9		# tmp308,
	bleu	a4,a5,.L6	#, tmp307, tmp308,
.L4:
# problem43.cc:31:   } while (next_permutation(d, d+N));
	addi	a5,s0,-64	#, _61,
	addi	a5,a5,40	#, _61, _61
	addi	a4,s0,-64	#, tmp309,
	mv	a1,a5	#, _61
	mv	a0,a4	#, tmp309
	call	_ZSt16next_permutationIPjEbT_S1_		#
	mv	a5,a0	# tmp310,
# problem43.cc:31:   } while (next_permutation(d, d+N));
	bne	a5,zero,.L7	#, _79,,
# problem43.cc:33:   cout << sum << endl;
	ld	a1,-80(s0)		#, sum
	la	a0,_ZSt4cout		#,
	call	_ZNSolsEy@plt	#
	mv	a5,a0	# _62,
# problem43.cc:33:   cout << sum << endl;
	la	a1,_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_		#,
	mv	a0,a5	#, _62
	call	_ZNSolsEPFRSoS_E@plt	#
# problem43.cc:35:   return 0;
	li	a5,0		# _84,
# problem43.cc:36: }
	mv	a4,a5	# <retval>, _84
	la	a5,__stack_chk_guard		# tmp312,
	ld	a3, -24(s0)	# tmp315, D.58670
	ld	a5, 0(a5)	# tmp313, __stack_chk_guard
	xor	a5, a3, a5	# tmp313, tmp315
	li	a3, 0	# tmp315
	beq	a5,zero,.L9	#, tmp313,,
	call	__stack_chk_fail@plt	#
.L9:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	.cfi_restore 1
	ld	s0,80(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2240:
	.size	main, .-main
	.section	.text._ZSt16next_permutationIPjEbT_S1_,"axG",@progbits,_ZSt16next_permutationIPjEbT_S1_,comdat
	.align	1
	.weak	_ZSt16next_permutationIPjEbT_S1_
	.type	_ZSt16next_permutationIPjEbT_S1_, @function
_ZSt16next_permutationIPjEbT_S1_:
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
	mv	a2,s1	#, D.58625
	ld	a1,-48(s0)		#, __last
	ld	a0,-40(s0)		#, __first
	call	_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_		#
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
	.size	_ZSt16next_permutationIPjEbT_S1_, .-_ZSt16next_permutationIPjEbT_S1_
	.section	.text._ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_,"axG",@progbits,_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_,comdat
	.align	1
	.weak	_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	.type	_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_, @function
_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_:
.LFB2598:
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
	ld	a5,-72(s0)		# __first.1_1, __first
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2934:       if (__first == __last)
	ld	a4,-80(s0)		# tmp148, __last
	bne	a4,a5,.L13	#, tmp148, __first.1_1,
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
	call	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_		#
	mv	a5,a0	# tmp161,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2947: 	  if (__comp(__i, __ii))
	beq	a5,zero,.L16	#, retval.2_20,,
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
	call	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_		#
	mv	a5,a0	# tmp166,
	xori	a5,a5,1	#, tmp167, _2
	andi	a5,a5,0xff	# retval.3_26, tmp167
	bne	a5,zero,.L17	#, retval.3_26,,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2952: 	      std::iter_swap(__i, __j);
	ld	a1,-48(s0)		#, __j
	ld	a0,-56(s0)		#, __i
	call	_ZSt9iter_swapIPjS0_EvT_T0_		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator_base_types.h:240:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2953: 	      std::__reverse(__ii, __last,
	mv	a2,s2	#, D.58638
	ld	a1,-80(s0)		#, __last
	ld	a0,-40(s0)		#, __ii
	call	_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag		#
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2955: 	      return true;
	li	a5,1		# _7,
	j	.L14		#
.L16:
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2957: 	  if (__i == __first)
	ld	a5,-72(s0)		# __first.4_3, __first
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2957: 	  if (__i == __first)
	ld	a4,-56(s0)		# tmp168, __i
	bne	a4,a5,.L21	#, tmp168, __first.4_3,
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2959: 	      std::__reverse(__first, __last,
	ld	a5,-72(s0)		# __first.5_4, __first
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_iterator_base_types.h:240:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
# /usr/riscv64-linux-gnu/include/c++/13/bits/stl_algo.h:2959: 	      std::__reverse(__first, __last,
	mv	a2,s1	#, D.58641
	ld	a1,-80(s0)		#, __last
	mv	a0,a5	#, __first.5_4
	call	_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag		#
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
.LFE2598:
	.size	_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_, .-_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	.section	.text._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_,"axG",@progbits,_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_,comdat
	.align	1
	.weak	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_
	.type	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_, @function
_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_:
.LFB2666:
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
	sltu	a5,a4,a5	# tmp143, tmp141, tmp142
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
.LFE2666:
	.size	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_, .-_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_
	.section	.text._ZSt9iter_swapIPjS0_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIPjS0_EvT_T0_,comdat
	.align	1
	.weak	_ZSt9iter_swapIPjS0_EvT_T0_
	.type	_ZSt9iter_swapIPjS0_EvT_T0_, @function
_ZSt9iter_swapIPjS0_EvT_T0_:
.LFB2667:
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
	call	_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_		#
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
.LFE2667:
	.size	_ZSt9iter_swapIPjS0_EvT_T0_, .-_ZSt9iter_swapIPjS0_EvT_T0_
	.section	.text._ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag,"axG",@progbits,_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag,comdat
	.align	1
	.weak	_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag
	.type	_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag, @function
_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag:
.LFB2670:
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
	sb	a2,-40(s0)	# D.58180, D.58180
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
	call	_ZSt9iter_swapIPjS0_EvT_T0_		#
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
.LFE2670:
	.size	_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag, .-_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag
	.section	.text._ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.align	1
	.weak	_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, @function
_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB2724:
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
	sd	a4, -24(s0)	# tmp146, D.58673
	li	a4, 0	# tmp146
# /usr/riscv64-linux-gnu/include/c++/13/bits/move.h:197:       _Tp __tmp = _GLIBCXX_MOVE(__a);
	ld	a0,-40(s0)		#, __a
	call	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_		#
	mv	a5,a0	# _1,
# /usr/riscv64-linux-gnu/include/c++/13/bits/move.h:197:       _Tp __tmp = _GLIBCXX_MOVE(__a);
	lw	a5,0(a5)		# _2, *_1
	sw	a5,-28(s0)	# _2, __tmp
# /usr/riscv64-linux-gnu/include/c++/13/bits/move.h:198:       __a = _GLIBCXX_MOVE(__b);
	ld	a0,-48(s0)		#, __b
	call	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_		#
	mv	a5,a0	# _3,
# /usr/riscv64-linux-gnu/include/c++/13/bits/move.h:198:       __a = _GLIBCXX_MOVE(__b);
	lw	a4,0(a5)		# _4, *_3
	ld	a5,-40(s0)		# tmp141, __a
	sw	a4,0(a5)	# _4, *__a_8(D)
# /usr/riscv64-linux-gnu/include/c++/13/bits/move.h:199:       __b = _GLIBCXX_MOVE(__tmp);
	addi	a5,s0,-28	#, tmp142,
	mv	a0,a5	#, tmp142
	call	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_		#
	mv	a5,a0	# _5,
# /usr/riscv64-linux-gnu/include/c++/13/bits/move.h:199:       __b = _GLIBCXX_MOVE(__tmp);
	lw	a4,0(a5)		# _6, *_5
	ld	a5,-48(s0)		# tmp143, __b
	sw	a4,0(a5)	# _6, *__b_11(D)
# /usr/riscv64-linux-gnu/include/c++/13/bits/move.h:200:     }
	nop	
	la	a5,__stack_chk_guard		# tmp144,
	ld	a4, -24(s0)	# tmp147, D.58673
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
.LFE2724:
	.size	_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.align	1
	.weak	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_:
.LFB2745:
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
.LFE2745:
	.size	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_
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
