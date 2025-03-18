	.file	"code.c"
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
.LC0:
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
# eval/problem146//code.c:5: int* func0(int nums[], int size) {
	la	a5,__stack_chk_guard		# tmp201,
	ld	a4, 0(a5)	# tmp284, __stack_chk_guard
	sd	a4, -24(s0)	# tmp284, D.3478
	li	a4, 0	# tmp284
# eval/problem146//code.c:6:     int* sumdigit = (int*)malloc(size * sizeof(int));
	lw	a5,-92(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp202,
	sd	a5,-48(s0)	# tmp202, sumdigit
# eval/problem146//code.c:7:     for (int i = 0; i < size; i++) {
	sw	zero,-76(s0)	#, i
# eval/problem146//code.c:7:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L7:
# eval/problem146//code.c:9:         sprintf(w, "%d", abs(nums[i]));
	lw	a5,-76(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
	ld	a4,-88(s0)		# tmp203, nums
	add	a5,a4,a5	# _4, _5, tmp203
	lw	a4,0(a5)		# _6, *_5
# eval/problem146//code.c:9:         sprintf(w, "%d", abs(nums[i]));
	sraiw	a5,a4,31	#, tmp204, _6
	xor	a4,a4,a5	# tmp204, tmp205, _6
	subw	a5,a4,a5	# tmp206, tmp205, tmp204
	sext.w	a4,a5	# _7, tmp206
	addi	a5,s0,-40	#, tmp207,
	mv	a2,a4	#, _7
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp207
	call	sprintf@plt	#
# eval/problem146//code.c:10:         int sum = 0, length = strlen(w);
	sw	zero,-72(s0)	#, sum
# eval/problem146//code.c:10:         int sum = 0, length = strlen(w);
	addi	a5,s0,-40	#, tmp208,
	mv	a0,a5	#, tmp208
	call	strlen@plt	#
	mv	a5,a0	# _8,
# eval/problem146//code.c:10:         int sum = 0, length = strlen(w);
	sw	a5,-52(s0)	# _8, length
# eval/problem146//code.c:11:         for (int j = 1; j < length; j++)
	li	a5,1		# tmp209,
	sw	a5,-68(s0)	# tmp209, j
# eval/problem146//code.c:11:         for (int j = 1; j < length; j++)
	j	.L3		#
.L4:
# eval/problem146//code.c:12:             sum += w[j] - '0';
	lw	a5,-68(s0)		# tmp210, j
	addi	a5,a5,-16	#, tmp288, tmp210
	add	a5,a5,s0	#, tmp211, tmp288
	lbu	a5,-24(a5)	# _9, w[j_67]
	sext.w	a5,a5	# _10, _9
# eval/problem146//code.c:12:             sum += w[j] - '0';
	addiw	a5,a5,-48	#, tmp212, _10
	sext.w	a5,a5	# _11, tmp212
# eval/problem146//code.c:12:             sum += w[j] - '0';
	lw	a4,-72(s0)		# tmp215, sum
	addw	a5,a4,a5	# _11, tmp213, tmp214
	sw	a5,-72(s0)	# tmp213, sum
# eval/problem146//code.c:11:         for (int j = 1; j < length; j++)
	lw	a5,-68(s0)		# tmp218, j
	addiw	a5,a5,1	#, tmp216, tmp217
	sw	a5,-68(s0)	# tmp216, j
.L3:
# eval/problem146//code.c:11:         for (int j = 1; j < length; j++)
	lw	a5,-68(s0)		# tmp220, j
	mv	a4,a5	# tmp219, tmp220
	lw	a5,-52(s0)		# tmp222, length
	sext.w	a4,a4	# tmp223, tmp219
	sext.w	a5,a5	# tmp224, tmp221
	blt	a4,a5,.L4	#, tmp223, tmp224,
# eval/problem146//code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	lw	a5,-76(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-88(s0)		# tmp225, nums
	add	a5,a4,a5	# _13, _14, tmp225
	lw	a5,0(a5)		# _15, *_14
# eval/problem146//code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	ble	a5,zero,.L5	#, tmp226,,
# eval/problem146//code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	lbu	a5,-40(s0)	# _16, w[0]
	sext.w	a5,a5	# _17, _16
# eval/problem146//code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	addiw	a5,a5,-48	#, tmp227, _17
	sext.w	a5,a5	# _18, tmp227
# eval/problem146//code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	lw	a4,-72(s0)		# tmp230, sum
	addw	a5,a4,a5	# _18, tmp228, tmp229
	sw	a5,-72(s0)	# tmp228, sum
	j	.L6		#
.L5:
# eval/problem146//code.c:14:         else sum -= w[0] - '0';
	lbu	a5,-40(s0)	# _19, w[0]
	sext.w	a5,a5	# _20, _19
# eval/problem146//code.c:14:         else sum -= w[0] - '0';
	addiw	a5,a5,-48	#, tmp231, _20
	sext.w	a5,a5	# _21, tmp231
# eval/problem146//code.c:14:         else sum -= w[0] - '0';
	lw	a4,-72(s0)		# tmp234, sum
	subw	a5,a4,a5	# tmp232, tmp233, _21
	sw	a5,-72(s0)	# tmp232, sum
.L6:
# eval/problem146//code.c:15:         sumdigit[i] = sum;
	lw	a5,-76(s0)		# _22, i
	slli	a5,a5,2	#, _23, _22
	ld	a4,-48(s0)		# tmp235, sumdigit
	add	a5,a4,a5	# _23, _24, tmp235
# eval/problem146//code.c:15:         sumdigit[i] = sum;
	lw	a4,-72(s0)		# tmp236, sum
	sw	a4,0(a5)	# tmp236, *_24
# eval/problem146//code.c:7:     for (int i = 0; i < size; i++) {
	lw	a5,-76(s0)		# tmp239, i
	addiw	a5,a5,1	#, tmp237, tmp238
	sw	a5,-76(s0)	# tmp237, i
.L2:
# eval/problem146//code.c:7:     for (int i = 0; i < size; i++) {
	lw	a5,-76(s0)		# tmp241, i
	mv	a4,a5	# tmp240, tmp241
	lw	a5,-92(s0)		# tmp243, size
	sext.w	a4,a4	# tmp244, tmp240
	sext.w	a5,a5	# tmp245, tmp242
	blt	a4,a5,.L7	#, tmp244, tmp245,
# eval/problem146//code.c:18:     for (int i = 0; i < size; i++)
	sw	zero,-64(s0)	#, i
# eval/problem146//code.c:18:     for (int i = 0; i < size; i++)
	j	.L8		#
.L12:
# eval/problem146//code.c:19:         for (int j = 1; j < size; j++)
	li	a5,1		# tmp246,
	sw	a5,-60(s0)	# tmp246, j
# eval/problem146//code.c:19:         for (int j = 1; j < size; j++)
	j	.L9		#
.L11:
# eval/problem146//code.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	lw	a5,-60(s0)		# _25, j
	slli	a5,a5,2	#, _26, _25
	addi	a5,a5,-4	#, _27, _26
	ld	a4,-48(s0)		# tmp247, sumdigit
	add	a5,a4,a5	# _27, _28, tmp247
	lw	a3,0(a5)		# _29, *_28
# eval/problem146//code.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	lw	a5,-60(s0)		# _30, j
	slli	a5,a5,2	#, _31, _30
	ld	a4,-48(s0)		# tmp248, sumdigit
	add	a5,a4,a5	# _31, _32, tmp248
	lw	a5,0(a5)		# _33, *_32
# eval/problem146//code.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	mv	a4,a3	# tmp249, _29
	ble	a4,a5,.L10	#, tmp249, tmp250,
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a5,-60(s0)		# _34, j
	slli	a5,a5,2	#, _35, _34
	ld	a4,-48(s0)		# tmp251, sumdigit
	add	a5,a4,a5	# _35, _36, tmp251
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a5,0(a5)		# tmp252, *_36
	sw	a5,-56(s0)	# tmp252, m
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a5,-60(s0)		# _37, j
	slli	a5,a5,2	#, _38, _37
	addi	a5,a5,-4	#, _39, _38
	ld	a4,-48(s0)		# tmp253, sumdigit
	add	a4,a4,a5	# _39, _40, tmp253
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a5,-60(s0)		# _41, j
	slli	a5,a5,2	#, _42, _41
	ld	a3,-48(s0)		# tmp254, sumdigit
	add	a5,a3,a5	# _42, _43, tmp254
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a4,0(a4)		# _44, *_40
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	sw	a4,0(a5)	# _44, *_43
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a5,-60(s0)		# _45, j
	slli	a5,a5,2	#, _46, _45
	addi	a5,a5,-4	#, _47, _46
	ld	a4,-48(s0)		# tmp255, sumdigit
	add	a5,a4,a5	# _47, _48, tmp255
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a4,-56(s0)		# tmp256, m
	sw	a4,0(a5)	# tmp256, *_48
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a5,-60(s0)		# _49, j
	slli	a5,a5,2	#, _50, _49
	ld	a4,-88(s0)		# tmp257, nums
	add	a5,a4,a5	# _50, _51, tmp257
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a5,0(a5)		# tmp258, *_51
	sw	a5,-56(s0)	# tmp258, m
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a5,-60(s0)		# _52, j
	slli	a5,a5,2	#, _53, _52
	addi	a5,a5,-4	#, _54, _53
	ld	a4,-88(s0)		# tmp259, nums
	add	a4,a4,a5	# _54, _55, tmp259
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a5,-60(s0)		# _56, j
	slli	a5,a5,2	#, _57, _56
	ld	a3,-88(s0)		# tmp260, nums
	add	a5,a3,a5	# _57, _58, tmp260
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a4,0(a4)		# _59, *_55
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	sw	a4,0(a5)	# _59, *_58
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a5,-60(s0)		# _60, j
	slli	a5,a5,2	#, _61, _60
	addi	a5,a5,-4	#, _62, _61
	ld	a4,-88(s0)		# tmp261, nums
	add	a5,a4,a5	# _62, _63, tmp261
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a4,-56(s0)		# tmp262, m
	sw	a4,0(a5)	# tmp262, *_63
.L10:
# eval/problem146//code.c:19:         for (int j = 1; j < size; j++)
	lw	a5,-60(s0)		# tmp265, j
	addiw	a5,a5,1	#, tmp263, tmp264
	sw	a5,-60(s0)	# tmp263, j
.L9:
# eval/problem146//code.c:19:         for (int j = 1; j < size; j++)
	lw	a5,-60(s0)		# tmp267, j
	mv	a4,a5	# tmp266, tmp267
	lw	a5,-92(s0)		# tmp269, size
	sext.w	a4,a4	# tmp270, tmp266
	sext.w	a5,a5	# tmp271, tmp268
	blt	a4,a5,.L11	#, tmp270, tmp271,
# eval/problem146//code.c:18:     for (int i = 0; i < size; i++)
	lw	a5,-64(s0)		# tmp274, i
	addiw	a5,a5,1	#, tmp272, tmp273
	sw	a5,-64(s0)	# tmp272, i
.L8:
# eval/problem146//code.c:18:     for (int i = 0; i < size; i++)
	lw	a5,-64(s0)		# tmp276, i
	mv	a4,a5	# tmp275, tmp276
	lw	a5,-92(s0)		# tmp278, size
	sext.w	a4,a4	# tmp279, tmp275
	sext.w	a5,a5	# tmp280, tmp277
	blt	a4,a5,.L12	#, tmp279, tmp280,
# eval/problem146//code.c:25:     free(sumdigit);
	ld	a0,-48(s0)		#, sumdigit
	call	free@plt	#
# eval/problem146//code.c:26:     return nums;
	ld	a5,-88(s0)		# _82, nums
# eval/problem146//code.c:26:     return nums;
	mv	a4,a5	# <retval>, _82
# eval/problem146//code.c:27: }
	la	a5,__stack_chk_guard		# tmp282,
	ld	a3, -24(s0)	# tmp285, D.3478
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
