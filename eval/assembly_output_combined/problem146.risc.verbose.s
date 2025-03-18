	.file	"problem146.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC10:
	.string	"%d"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-88(s0)	# nums, nums
	mv	a5,a1	# tmp199, size
	sw	a5,-92(s0)	# tmp200, size
# problem146.c:5: int* func0(int nums[], int size) {
	la	a5,__stack_chk_guard		# tmp201,
	ld	a4, 0(a5)	# tmp284, __stack_chk_guard
	sd	a4, -24(s0)	# tmp284, D.3562
	li	a4, 0	# tmp284
# problem146.c:6:     int* sumdigit = (int*)malloc(size * sizeof(int));
	lw	a5,-92(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp202,
	sd	a5,-48(s0)	# tmp202, sumdigit
# problem146.c:7:     for (int i = 0; i < size; i++) {
	sw	zero,-76(s0)	#, i
# problem146.c:7:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L7:
# problem146.c:9:         sprintf(w, "%d", abs(nums[i]));
	lw	a5,-76(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
	ld	a4,-88(s0)		# tmp203, nums
	add	a5,a4,a5	# _4, _5, tmp203
	lw	a4,0(a5)		# _6, *_5
# problem146.c:9:         sprintf(w, "%d", abs(nums[i]));
	sraiw	a5,a4,31	#, tmp204, _6
	xor	a4,a4,a5	# tmp204, tmp205, _6
	subw	a5,a4,a5	# tmp206, tmp205, tmp204
	sext.w	a4,a5	# _7, tmp206
	addi	a5,s0,-40	#, tmp207,
	mv	a2,a4	#, _7
	lla	a1,.LC10	#,
	mv	a0,a5	#, tmp207
	call	sprintf@plt	#
# problem146.c:10:         int sum = 0, length = strlen(w);
	sw	zero,-72(s0)	#, sum
# problem146.c:10:         int sum = 0, length = strlen(w);
	addi	a5,s0,-40	#, tmp208,
	mv	a0,a5	#, tmp208
	call	strlen@plt	#
	mv	a5,a0	# _8,
# problem146.c:10:         int sum = 0, length = strlen(w);
	sw	a5,-52(s0)	# _8, length
# problem146.c:11:         for (int j = 1; j < length; j++)
	li	a5,1		# tmp209,
	sw	a5,-68(s0)	# tmp209, j
# problem146.c:11:         for (int j = 1; j < length; j++)
	j	.L3		#
.L4:
# problem146.c:12:             sum += w[j] - '0';
	lw	a5,-68(s0)		# tmp210, j
	addi	a5,a5,-16	#, tmp288, tmp210
	add	a5,a5,s0	#, tmp211, tmp288
	lbu	a5,-24(a5)	# _9, w[j_67]
	sext.w	a5,a5	# _10, _9
# problem146.c:12:             sum += w[j] - '0';
	addiw	a5,a5,-48	#, tmp212, _10
	sext.w	a5,a5	# _11, tmp212
# problem146.c:12:             sum += w[j] - '0';
	lw	a4,-72(s0)		# tmp215, sum
	addw	a5,a4,a5	# _11, tmp213, tmp214
	sw	a5,-72(s0)	# tmp213, sum
# problem146.c:11:         for (int j = 1; j < length; j++)
	lw	a5,-68(s0)		# tmp218, j
	addiw	a5,a5,1	#, tmp216, tmp217
	sw	a5,-68(s0)	# tmp216, j
.L3:
# problem146.c:11:         for (int j = 1; j < length; j++)
	lw	a5,-68(s0)		# tmp220, j
	mv	a4,a5	# tmp219, tmp220
	lw	a5,-52(s0)		# tmp222, length
	sext.w	a4,a4	# tmp223, tmp219
	sext.w	a5,a5	# tmp224, tmp221
	blt	a4,a5,.L4	#, tmp223, tmp224,
# problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	lw	a5,-76(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-88(s0)		# tmp225, nums
	add	a5,a4,a5	# _13, _14, tmp225
	lw	a5,0(a5)		# _15, *_14
# problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	ble	a5,zero,.L5	#, tmp226,,
# problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	lbu	a5,-40(s0)	# _16, w[0]
	sext.w	a5,a5	# _17, _16
# problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	addiw	a5,a5,-48	#, tmp227, _17
	sext.w	a5,a5	# _18, tmp227
# problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	lw	a4,-72(s0)		# tmp230, sum
	addw	a5,a4,a5	# _18, tmp228, tmp229
	sw	a5,-72(s0)	# tmp228, sum
	j	.L6		#
.L5:
# problem146.c:14:         else sum -= w[0] - '0';
	lbu	a5,-40(s0)	# _19, w[0]
	sext.w	a5,a5	# _20, _19
# problem146.c:14:         else sum -= w[0] - '0';
	addiw	a5,a5,-48	#, tmp231, _20
	sext.w	a5,a5	# _21, tmp231
# problem146.c:14:         else sum -= w[0] - '0';
	lw	a4,-72(s0)		# tmp234, sum
	subw	a5,a4,a5	# tmp232, tmp233, _21
	sw	a5,-72(s0)	# tmp232, sum
.L6:
# problem146.c:15:         sumdigit[i] = sum;
	lw	a5,-76(s0)		# _22, i
	slli	a5,a5,2	#, _23, _22
	ld	a4,-48(s0)		# tmp235, sumdigit
	add	a5,a4,a5	# _23, _24, tmp235
# problem146.c:15:         sumdigit[i] = sum;
	lw	a4,-72(s0)		# tmp236, sum
	sw	a4,0(a5)	# tmp236, *_24
# problem146.c:7:     for (int i = 0; i < size; i++) {
	lw	a5,-76(s0)		# tmp239, i
	addiw	a5,a5,1	#, tmp237, tmp238
	sw	a5,-76(s0)	# tmp237, i
.L2:
# problem146.c:7:     for (int i = 0; i < size; i++) {
	lw	a5,-76(s0)		# tmp241, i
	mv	a4,a5	# tmp240, tmp241
	lw	a5,-92(s0)		# tmp243, size
	sext.w	a4,a4	# tmp244, tmp240
	sext.w	a5,a5	# tmp245, tmp242
	blt	a4,a5,.L7	#, tmp244, tmp245,
# problem146.c:18:     for (int i = 0; i < size; i++)
	sw	zero,-64(s0)	#, i
# problem146.c:18:     for (int i = 0; i < size; i++)
	j	.L8		#
.L12:
# problem146.c:19:         for (int j = 1; j < size; j++)
	li	a5,1		# tmp246,
	sw	a5,-60(s0)	# tmp246, j
# problem146.c:19:         for (int j = 1; j < size; j++)
	j	.L9		#
.L11:
# problem146.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	lw	a5,-60(s0)		# _25, j
	slli	a5,a5,2	#, _26, _25
	addi	a5,a5,-4	#, _27, _26
	ld	a4,-48(s0)		# tmp247, sumdigit
	add	a5,a4,a5	# _27, _28, tmp247
	lw	a3,0(a5)		# _29, *_28
# problem146.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	lw	a5,-60(s0)		# _30, j
	slli	a5,a5,2	#, _31, _30
	ld	a4,-48(s0)		# tmp248, sumdigit
	add	a5,a4,a5	# _31, _32, tmp248
	lw	a5,0(a5)		# _33, *_32
# problem146.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	mv	a4,a3	# tmp249, _29
	ble	a4,a5,.L10	#, tmp249, tmp250,
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a5,-60(s0)		# _34, j
	slli	a5,a5,2	#, _35, _34
	ld	a4,-48(s0)		# tmp251, sumdigit
	add	a5,a4,a5	# _35, _36, tmp251
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a5,0(a5)		# tmp252, *_36
	sw	a5,-56(s0)	# tmp252, m
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a5,-60(s0)		# _37, j
	slli	a5,a5,2	#, _38, _37
	addi	a5,a5,-4	#, _39, _38
	ld	a4,-48(s0)		# tmp253, sumdigit
	add	a4,a4,a5	# _39, _40, tmp253
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a5,-60(s0)		# _41, j
	slli	a5,a5,2	#, _42, _41
	ld	a3,-48(s0)		# tmp254, sumdigit
	add	a5,a3,a5	# _42, _43, tmp254
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a4,0(a4)		# _44, *_40
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	sw	a4,0(a5)	# _44, *_43
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a5,-60(s0)		# _45, j
	slli	a5,a5,2	#, _46, _45
	addi	a5,a5,-4	#, _47, _46
	ld	a4,-48(s0)		# tmp255, sumdigit
	add	a5,a4,a5	# _47, _48, tmp255
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a4,-56(s0)		# tmp256, m
	sw	a4,0(a5)	# tmp256, *_48
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a5,-60(s0)		# _49, j
	slli	a5,a5,2	#, _50, _49
	ld	a4,-88(s0)		# tmp257, nums
	add	a5,a4,a5	# _50, _51, tmp257
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a5,0(a5)		# tmp258, *_51
	sw	a5,-56(s0)	# tmp258, m
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a5,-60(s0)		# _52, j
	slli	a5,a5,2	#, _53, _52
	addi	a5,a5,-4	#, _54, _53
	ld	a4,-88(s0)		# tmp259, nums
	add	a4,a4,a5	# _54, _55, tmp259
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a5,-60(s0)		# _56, j
	slli	a5,a5,2	#, _57, _56
	ld	a3,-88(s0)		# tmp260, nums
	add	a5,a3,a5	# _57, _58, tmp260
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a4,0(a4)		# _59, *_55
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	sw	a4,0(a5)	# _59, *_58
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a5,-60(s0)		# _60, j
	slli	a5,a5,2	#, _61, _60
	addi	a5,a5,-4	#, _62, _61
	ld	a4,-88(s0)		# tmp261, nums
	add	a5,a4,a5	# _62, _63, tmp261
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a4,-56(s0)		# tmp262, m
	sw	a4,0(a5)	# tmp262, *_63
.L10:
# problem146.c:19:         for (int j = 1; j < size; j++)
	lw	a5,-60(s0)		# tmp265, j
	addiw	a5,a5,1	#, tmp263, tmp264
	sw	a5,-60(s0)	# tmp263, j
.L9:
# problem146.c:19:         for (int j = 1; j < size; j++)
	lw	a5,-60(s0)		# tmp267, j
	mv	a4,a5	# tmp266, tmp267
	lw	a5,-92(s0)		# tmp269, size
	sext.w	a4,a4	# tmp270, tmp266
	sext.w	a5,a5	# tmp271, tmp268
	blt	a4,a5,.L11	#, tmp270, tmp271,
# problem146.c:18:     for (int i = 0; i < size; i++)
	lw	a5,-64(s0)		# tmp274, i
	addiw	a5,a5,1	#, tmp272, tmp273
	sw	a5,-64(s0)	# tmp272, i
.L8:
# problem146.c:18:     for (int i = 0; i < size; i++)
	lw	a5,-64(s0)		# tmp276, i
	mv	a4,a5	# tmp275, tmp276
	lw	a5,-92(s0)		# tmp278, size
	sext.w	a4,a4	# tmp279, tmp275
	sext.w	a5,a5	# tmp280, tmp277
	blt	a4,a5,.L12	#, tmp279, tmp280,
# problem146.c:25:     free(sumdigit);
	ld	a0,-48(s0)		#, sumdigit
	call	free@plt	#
# problem146.c:26:     return nums;
	ld	a5,-88(s0)		# _82, nums
# problem146.c:26:     return nums;
	mv	a4,a5	# <retval>, _82
# problem146.c:27: }
	la	a5,__stack_chk_guard		# tmp282,
	ld	a3, -24(s0)	# tmp285, D.3562
	ld	a5, 0(a5)	# tmp283, __stack_chk_guard
	xor	a5, a3, a5	# tmp283, tmp285
	li	a3, 0	# tmp285
	beq	a5,zero,.L14	#, tmp283,,
	call	__stack_chk_fail@plt	#
.L14:
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
.LFE6:
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp144, size_a
	mv	a4,a3	# tmp146, size_b
	sw	a5,-52(s0)	# tmp145, size_a
	mv	a5,a4	# tmp147, tmp146
	sw	a5,-56(s0)	# tmp147, size_b
# problem146.c:35:     if (size_a != size_b) return 0;
	lw	a5,-52(s0)		# tmp149, size_a
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-56(s0)		# tmp151, size_b
	sext.w	a4,a4	# tmp152, tmp148
	sext.w	a5,a5	# tmp153, tmp150
	beq	a4,a5,.L16	#, tmp152, tmp153,
# problem146.c:35:     if (size_a != size_b) return 0;
	li	a5,0		# _10,
# problem146.c:35:     if (size_a != size_b) return 0;
	j	.L17		#
.L16:
# problem146.c:36:     for (int i = 0; i < size_a; i++) {
	sw	zero,-20(s0)	#, i
# problem146.c:36:     for (int i = 0; i < size_a; i++) {
	j	.L18		#
.L20:
# problem146.c:37:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp154, a
	add	a5,a4,a5	# _2, _3, tmp154
	lw	a3,0(a5)		# _4, *_3
# problem146.c:37:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp155, b
	add	a5,a4,a5	# _6, _7, tmp155
	lw	a5,0(a5)		# _8, *_7
# problem146.c:37:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp156, _4
	beq	a4,a5,.L19	#, tmp156, tmp157,
# problem146.c:37:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem146.c:37:         if (a[i] != b[i]) return 0;
	j	.L17		#
.L19:
# problem146.c:36:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L18:
# problem146.c:36:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-52(s0)		# tmp164, size_a
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L20	#, tmp165, tmp166,
# problem146.c:39:     return 1;
	li	a5,1		# _10,
.L17:
# problem146.c:40: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC11:
	.string	"problem146.c"
	.align	3
.LC12:
	.string	"issame(func0(test1, 5), expected1, 5, 5)"
	.align	3
.LC13:
	.string	"issame(func0(test2, 15), expected2, 15, 15)"
	.align	3
.LC14:
	.string	"issame(func0(test3, 0), expected3, 0, 0)"
	.align	3
.LC15:
	.string	"issame(func0(test4, 8), expected4, 8, 8)"
	.align	3
.LC16:
	.string	"issame(func0(test5, 11), expected5, 11, 11)"
	.align	3
.LC17:
	.string	"issame(func0(test6, 7), expected6, 7, 7)"
	.align	3
.LC18:
	.string	"All tests passed!"
	.align	3
.LC0:
	.word	1
	.word	11
	.word	-1
	.word	-11
	.word	-12
	.align	3
.LC1:
	.word	-1
	.word	-11
	.word	1
	.word	-12
	.word	11
	.align	3
.LC2:
	.word	1234
	.word	423
	.word	463
	.word	145
	.word	2
	.word	423
	.word	423
	.word	53
	.word	6
	.word	37
	.word	3457
	.word	3
	.word	56
	.word	0
	.word	46
	.align	3
.LC3:
	.word	0
	.word	2
	.word	3
	.word	6
	.word	53
	.word	423
	.word	423
	.word	423
	.word	1234
	.word	145
	.word	37
	.word	46
	.word	56
	.word	463
	.word	3457
	.align	3
.LC4:
	.word	1
	.word	-11
	.word	-32
	.word	43
	.word	54
	.word	-98
	.word	2
	.word	-3
	.align	3
.LC5:
	.word	-3
	.word	-32
	.word	-98
	.word	-11
	.word	1
	.word	2
	.word	43
	.word	54
	.align	3
.LC6:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.align	3
.LC7:
	.word	1
	.word	10
	.word	2
	.word	11
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.align	3
.LC8:
	.word	0
	.word	6
	.word	6
	.word	-76
	.word	-21
	.word	23
	.word	4
	.align	3
.LC9:
	.word	-76
	.word	-21
	.word	0
	.word	4
	.word	23
	.word	6
	.word	6
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-448	#,,
	.cfi_def_cfa_offset 448
	sd	ra,440(sp)	#,
	sd	s0,432(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,448	#,,
	.cfi_def_cfa 8, 0
# problem146.c:42: int main() {
	la	a5,__stack_chk_guard		# tmp148,
	ld	a4, 0(a5)	# tmp230, __stack_chk_guard
	sd	a4, -24(s0)	# tmp230, D.3566
	li	a4, 0	# tmp230
# problem146.c:43:     int test1[] = {1, 11, -1, -11, -12};
	lla	a5,.LC0	# tmp149,
	ld	a4,0(a5)		# tmp150,
	sd	a4,-424(s0)	# tmp150, test1
	ld	a4,8(a5)		# tmp151,
	sd	a4,-416(s0)	# tmp151, test1
	lw	a5,16(a5)		# tmp152,
	sw	a5,-408(s0)	# tmp152, test1
# problem146.c:44:     int expected1[] = {-1, -11, 1, -12, 11};
	lla	a5,.LC1	# tmp153,
	ld	a4,0(a5)		# tmp154,
	sd	a4,-400(s0)	# tmp154, expected1
	ld	a4,8(a5)		# tmp155,
	sd	a4,-392(s0)	# tmp155, expected1
	lw	a5,16(a5)		# tmp156,
	sw	a5,-384(s0)	# tmp156, expected1
# problem146.c:45:     assert(issame(func0(test1, 5), expected1, 5, 5));
	addi	a5,s0,-424	#, tmp157,
	li	a1,5		#,
	mv	a0,a5	#, tmp157
	call	func0		#
	mv	a4,a0	# _1,
# problem146.c:45:     assert(issame(func0(test1, 5), expected1, 5, 5));
	addi	a5,s0,-400	#, tmp158,
	li	a3,5		#,
	li	a2,5		#,
	mv	a1,a5	#, tmp158
	mv	a0,a4	#, _1
	call	issame		#
	mv	a5,a0	# tmp159,
# problem146.c:45:     assert(issame(func0(test1, 5), expected1, 5, 5));
	bne	a5,zero,.L22	#, _2,,
# problem146.c:45:     assert(issame(func0(test1, 5), expected1, 5, 5));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC11	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L22:
# problem146.c:47:     int test2[] = {1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46};
	lla	a5,.LC2	# tmp160,
	ld	a7,0(a5)		# tmp161,
	ld	a6,8(a5)		# tmp162,
	ld	a0,16(a5)		# tmp163,
	ld	a1,24(a5)		# tmp164,
	ld	a2,32(a5)		# tmp165,
	ld	a3,40(a5)		# tmp166,
	ld	a4,48(a5)		# tmp167,
	sd	a7,-152(s0)	# tmp161, test2
	sd	a6,-144(s0)	# tmp162, test2
	sd	a0,-136(s0)	# tmp163, test2
	sd	a1,-128(s0)	# tmp164, test2
	sd	a2,-120(s0)	# tmp165, test2
	sd	a3,-112(s0)	# tmp166, test2
	sd	a4,-104(s0)	# tmp167, test2
	lw	a5,56(a5)		# tmp168,
	sw	a5,-96(s0)	# tmp168, test2
# problem146.c:48:     int expected2[] = {0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457};
	lla	a5,.LC3	# tmp169,
	ld	a7,0(a5)		# tmp170,
	ld	a6,8(a5)		# tmp171,
	ld	a0,16(a5)		# tmp172,
	ld	a1,24(a5)		# tmp173,
	ld	a2,32(a5)		# tmp174,
	ld	a3,40(a5)		# tmp175,
	ld	a4,48(a5)		# tmp176,
	sd	a7,-88(s0)	# tmp170, expected2
	sd	a6,-80(s0)	# tmp171, expected2
	sd	a0,-72(s0)	# tmp172, expected2
	sd	a1,-64(s0)	# tmp173, expected2
	sd	a2,-56(s0)	# tmp174, expected2
	sd	a3,-48(s0)	# tmp175, expected2
	sd	a4,-40(s0)	# tmp176, expected2
	lw	a5,56(a5)		# tmp177,
	sw	a5,-32(s0)	# tmp177, expected2
# problem146.c:49:     assert(issame(func0(test2, 15), expected2, 15, 15));
	addi	a5,s0,-152	#, tmp178,
	li	a1,15		#,
	mv	a0,a5	#, tmp178
	call	func0		#
	mv	a4,a0	# _3,
# problem146.c:49:     assert(issame(func0(test2, 15), expected2, 15, 15));
	addi	a5,s0,-88	#, tmp179,
	li	a3,15		#,
	li	a2,15		#,
	mv	a1,a5	#, tmp179
	mv	a0,a4	#, _3
	call	issame		#
	mv	a5,a0	# tmp180,
# problem146.c:49:     assert(issame(func0(test2, 15), expected2, 15, 15));
	bne	a5,zero,.L23	#, _4,,
# problem146.c:49:     assert(issame(func0(test2, 15), expected2, 15, 15));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,49		#,
	lla	a1,.LC11	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L23:
# problem146.c:53:     assert(issame(func0(test3, 0), expected3, 0, 0));
	addi	a5,s0,-440	#, tmp181,
	li	a1,0		#,
	mv	a0,a5	#, tmp181
	call	func0		#
	mv	a4,a0	# _5,
# problem146.c:53:     assert(issame(func0(test3, 0), expected3, 0, 0));
	addi	a5,s0,-432	#, tmp182,
	li	a3,0		#,
	li	a2,0		#,
	mv	a1,a5	#, tmp182
	mv	a0,a4	#, _5
	call	issame		#
	mv	a5,a0	# tmp183,
# problem146.c:53:     assert(issame(func0(test3, 0), expected3, 0, 0));
	bne	a5,zero,.L24	#, _6,,
# problem146.c:53:     assert(issame(func0(test3, 0), expected3, 0, 0));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,53		#,
	lla	a1,.LC11	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L24:
# problem146.c:55:     int test4[] = {1, -11, -32, 43, 54, -98, 2, -3};
	lla	a5,.LC4	# tmp184,
	ld	a2,0(a5)		# tmp185,
	ld	a3,8(a5)		# tmp186,
	ld	a4,16(a5)		# tmp187,
	ld	a5,24(a5)		# tmp188,
	sd	a2,-312(s0)	# tmp185, test4
	sd	a3,-304(s0)	# tmp186, test4
	sd	a4,-296(s0)	# tmp187, test4
	sd	a5,-288(s0)	# tmp188, test4
# problem146.c:56:     int expected4[] = {-3, -32, -98, -11, 1, 2, 43, 54};
	lla	a5,.LC5	# tmp189,
	ld	a2,0(a5)		# tmp190,
	ld	a3,8(a5)		# tmp191,
	ld	a4,16(a5)		# tmp192,
	ld	a5,24(a5)		# tmp193,
	sd	a2,-280(s0)	# tmp190, expected4
	sd	a3,-272(s0)	# tmp191, expected4
	sd	a4,-264(s0)	# tmp192, expected4
	sd	a5,-256(s0)	# tmp193, expected4
# problem146.c:57:     assert(issame(func0(test4, 8), expected4, 8, 8));
	addi	a5,s0,-312	#, tmp194,
	li	a1,8		#,
	mv	a0,a5	#, tmp194
	call	func0		#
	mv	a4,a0	# _7,
# problem146.c:57:     assert(issame(func0(test4, 8), expected4, 8, 8));
	addi	a5,s0,-280	#, tmp195,
	li	a3,8		#,
	li	a2,8		#,
	mv	a1,a5	#, tmp195
	mv	a0,a4	#, _7
	call	issame		#
	mv	a5,a0	# tmp196,
# problem146.c:57:     assert(issame(func0(test4, 8), expected4, 8, 8));
	bne	a5,zero,.L25	#, _8,,
# problem146.c:57:     assert(issame(func0(test4, 8), expected4, 8, 8));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,57		#,
	lla	a1,.LC11	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L25:
# problem146.c:59:     int test5[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
	lla	a5,.LC6	# tmp197,
	ld	a0,0(a5)		# tmp198,
	ld	a1,8(a5)		# tmp199,
	ld	a2,16(a5)		# tmp200,
	ld	a3,24(a5)		# tmp201,
	ld	a4,32(a5)		# tmp202,
	sd	a0,-248(s0)	# tmp198, test5
	sd	a1,-240(s0)	# tmp199, test5
	sd	a2,-232(s0)	# tmp200, test5
	sd	a3,-224(s0)	# tmp201, test5
	sd	a4,-216(s0)	# tmp202, test5
	lw	a5,40(a5)		# tmp203,
	sw	a5,-208(s0)	# tmp203, test5
# problem146.c:60:     int expected5[] = {1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9};
	lla	a5,.LC7	# tmp204,
	ld	a0,0(a5)		# tmp205,
	ld	a1,8(a5)		# tmp206,
	ld	a2,16(a5)		# tmp207,
	ld	a3,24(a5)		# tmp208,
	ld	a4,32(a5)		# tmp209,
	sd	a0,-200(s0)	# tmp205, expected5
	sd	a1,-192(s0)	# tmp206, expected5
	sd	a2,-184(s0)	# tmp207, expected5
	sd	a3,-176(s0)	# tmp208, expected5
	sd	a4,-168(s0)	# tmp209, expected5
	lw	a5,40(a5)		# tmp210,
	sw	a5,-160(s0)	# tmp210, expected5
# problem146.c:61:     assert(issame(func0(test5, 11), expected5, 11, 11));
	addi	a5,s0,-248	#, tmp211,
	li	a1,11		#,
	mv	a0,a5	#, tmp211
	call	func0		#
	mv	a4,a0	# _9,
# problem146.c:61:     assert(issame(func0(test5, 11), expected5, 11, 11));
	addi	a5,s0,-200	#, tmp212,
	li	a3,11		#,
	li	a2,11		#,
	mv	a1,a5	#, tmp212
	mv	a0,a4	#, _9
	call	issame		#
	mv	a5,a0	# tmp213,
# problem146.c:61:     assert(issame(func0(test5, 11), expected5, 11, 11));
	bne	a5,zero,.L26	#, _10,,
# problem146.c:61:     assert(issame(func0(test5, 11), expected5, 11, 11));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,61		#,
	lla	a1,.LC11	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L26:
# problem146.c:63:     int test6[] = {0, 6, 6, -76, -21, 23, 4};
	lla	a5,.LC8	# tmp214,
	ld	a2,0(a5)		# tmp215,
	ld	a3,8(a5)		# tmp216,
	ld	a4,16(a5)		# tmp217,
	sd	a2,-376(s0)	# tmp215, test6
	sd	a3,-368(s0)	# tmp216, test6
	sd	a4,-360(s0)	# tmp217, test6
	lw	a5,24(a5)		# tmp218,
	sw	a5,-352(s0)	# tmp218, test6
# problem146.c:64:     int expected6[] = {-76, -21, 0, 4, 23, 6, 6};
	lla	a5,.LC9	# tmp219,
	ld	a2,0(a5)		# tmp220,
	ld	a3,8(a5)		# tmp221,
	ld	a4,16(a5)		# tmp222,
	sd	a2,-344(s0)	# tmp220, expected6
	sd	a3,-336(s0)	# tmp221, expected6
	sd	a4,-328(s0)	# tmp222, expected6
	lw	a5,24(a5)		# tmp223,
	sw	a5,-320(s0)	# tmp223, expected6
# problem146.c:65:     assert(issame(func0(test6, 7), expected6, 7, 7));
	addi	a5,s0,-376	#, tmp224,
	li	a1,7		#,
	mv	a0,a5	#, tmp224
	call	func0		#
	mv	a4,a0	# _11,
# problem146.c:65:     assert(issame(func0(test6, 7), expected6, 7, 7));
	addi	a5,s0,-344	#, tmp225,
	li	a3,7		#,
	li	a2,7		#,
	mv	a1,a5	#, tmp225
	mv	a0,a4	#, _11
	call	issame		#
	mv	a5,a0	# tmp226,
# problem146.c:65:     assert(issame(func0(test6, 7), expected6, 7, 7));
	bne	a5,zero,.L27	#, _12,,
# problem146.c:65:     assert(issame(func0(test6, 7), expected6, 7, 7));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,65		#,
	lla	a1,.LC11	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L27:
# problem146.c:67:     printf("All tests passed!\n");
	lla	a0,.LC18	#,
	call	puts@plt	#
# problem146.c:69:     return 0;
	li	a5,0		# _43,
# problem146.c:70: }
	mv	a4,a5	# <retval>, _43
	la	a5,__stack_chk_guard		# tmp228,
	ld	a3, -24(s0)	# tmp231, D.3566
	ld	a5, 0(a5)	# tmp229, __stack_chk_guard
	xor	a5, a3, a5	# tmp229, tmp231
	li	a3, 0	# tmp231
	beq	a5,zero,.L29	#, tmp229,,
	call	__stack_chk_fail@plt	#
.L29:
	mv	a0,a4	#, <retval>
	ld	ra,440(sp)		#,
	.cfi_restore 1
	ld	s0,432(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 448
	addi	sp,sp,448	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
