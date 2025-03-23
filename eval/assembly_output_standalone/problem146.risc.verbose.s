	.file	"code.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-96	#,,
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	addi	s0,sp,96	#,,
	sd	a0,-88(s0)	# nums, nums
	mv	a5,a1	# tmp137, size
	sw	a5,-92(s0)	# tmp138, size
# eval/problem146//code.c:5: int* func0(int nums[], int size) {
	la	a5,__stack_chk_guard		# tmp139,
	ld	a4, 0(a5)	# tmp222, __stack_chk_guard
	sd	a4, -24(s0)	# tmp222, D.2626
	li	a4, 0	# tmp222
# eval/problem146//code.c:6:     int* sumdigit = (int*)malloc(size * sizeof(int));
	lw	a5,-92(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp140,
	sd	a5,-48(s0)	# tmp140, sumdigit
# eval/problem146//code.c:7:     for (int i = 0; i < size; i++) {
	sw	zero,-76(s0)	#, i
# eval/problem146//code.c:7:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L7:
# eval/problem146//code.c:9:         sprintf(w, "%d", abs(nums[i]));
	lw	a5,-76(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
	ld	a4,-88(s0)		# tmp141, nums
	add	a5,a4,a5	# _4, _5, tmp141
	lw	a4,0(a5)		# _6, *_5
# eval/problem146//code.c:9:         sprintf(w, "%d", abs(nums[i]));
	sraiw	a5,a4,31	#, tmp142, _6
	xor	a4,a4,a5	# tmp142, tmp143, _6
	subw	a5,a4,a5	# tmp144, tmp143, tmp142
	sext.w	a4,a5	# _7, tmp144
	addi	a5,s0,-40	#, tmp145,
	mv	a2,a4	#, _7
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp145
	call	sprintf@plt	#
# eval/problem146//code.c:10:         int sum = 0, length = strlen(w);
	sw	zero,-72(s0)	#, sum
# eval/problem146//code.c:10:         int sum = 0, length = strlen(w);
	addi	a5,s0,-40	#, tmp146,
	mv	a0,a5	#, tmp146
	call	strlen@plt	#
	mv	a5,a0	# _8,
# eval/problem146//code.c:10:         int sum = 0, length = strlen(w);
	sw	a5,-52(s0)	# _8, length
# eval/problem146//code.c:11:         for (int j = 1; j < length; j++)
	li	a5,1		# tmp147,
	sw	a5,-68(s0)	# tmp147, j
# eval/problem146//code.c:11:         for (int j = 1; j < length; j++)
	j	.L3		#
.L4:
# eval/problem146//code.c:12:             sum += w[j] - '0';
	lw	a5,-68(s0)		# tmp148, j
	addi	a5,a5,-16	#, tmp226, tmp148
	add	a5,a5,s0	#, tmp149, tmp226
	lbu	a5,-24(a5)	# _9, w[j_67]
	sext.w	a5,a5	# _10, _9
# eval/problem146//code.c:12:             sum += w[j] - '0';
	addiw	a5,a5,-48	#, tmp150, _10
	sext.w	a5,a5	# _11, tmp150
# eval/problem146//code.c:12:             sum += w[j] - '0';
	lw	a4,-72(s0)		# tmp153, sum
	addw	a5,a4,a5	# _11, tmp151, tmp152
	sw	a5,-72(s0)	# tmp151, sum
# eval/problem146//code.c:11:         for (int j = 1; j < length; j++)
	lw	a5,-68(s0)		# tmp156, j
	addiw	a5,a5,1	#, tmp154, tmp155
	sw	a5,-68(s0)	# tmp154, j
.L3:
# eval/problem146//code.c:11:         for (int j = 1; j < length; j++)
	lw	a5,-68(s0)		# tmp158, j
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-52(s0)		# tmp160, length
	sext.w	a4,a4	# tmp161, tmp157
	sext.w	a5,a5	# tmp162, tmp159
	blt	a4,a5,.L4	#, tmp161, tmp162,
# eval/problem146//code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	lw	a5,-76(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-88(s0)		# tmp163, nums
	add	a5,a4,a5	# _13, _14, tmp163
	lw	a5,0(a5)		# _15, *_14
# eval/problem146//code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	ble	a5,zero,.L5	#, tmp164,,
# eval/problem146//code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	lbu	a5,-40(s0)	# _16, w[0]
	sext.w	a5,a5	# _17, _16
# eval/problem146//code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	addiw	a5,a5,-48	#, tmp165, _17
	sext.w	a5,a5	# _18, tmp165
# eval/problem146//code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	lw	a4,-72(s0)		# tmp168, sum
	addw	a5,a4,a5	# _18, tmp166, tmp167
	sw	a5,-72(s0)	# tmp166, sum
	j	.L6		#
.L5:
# eval/problem146//code.c:14:         else sum -= w[0] - '0';
	lbu	a5,-40(s0)	# _19, w[0]
	sext.w	a5,a5	# _20, _19
# eval/problem146//code.c:14:         else sum -= w[0] - '0';
	addiw	a5,a5,-48	#, tmp169, _20
	sext.w	a5,a5	# _21, tmp169
# eval/problem146//code.c:14:         else sum -= w[0] - '0';
	lw	a4,-72(s0)		# tmp172, sum
	subw	a5,a4,a5	# tmp170, tmp171, _21
	sw	a5,-72(s0)	# tmp170, sum
.L6:
# eval/problem146//code.c:15:         sumdigit[i] = sum;
	lw	a5,-76(s0)		# _22, i
	slli	a5,a5,2	#, _23, _22
	ld	a4,-48(s0)		# tmp173, sumdigit
	add	a5,a4,a5	# _23, _24, tmp173
# eval/problem146//code.c:15:         sumdigit[i] = sum;
	lw	a4,-72(s0)		# tmp174, sum
	sw	a4,0(a5)	# tmp174, *_24
# eval/problem146//code.c:7:     for (int i = 0; i < size; i++) {
	lw	a5,-76(s0)		# tmp177, i
	addiw	a5,a5,1	#, tmp175, tmp176
	sw	a5,-76(s0)	# tmp175, i
.L2:
# eval/problem146//code.c:7:     for (int i = 0; i < size; i++) {
	lw	a5,-76(s0)		# tmp179, i
	mv	a4,a5	# tmp178, tmp179
	lw	a5,-92(s0)		# tmp181, size
	sext.w	a4,a4	# tmp182, tmp178
	sext.w	a5,a5	# tmp183, tmp180
	blt	a4,a5,.L7	#, tmp182, tmp183,
# eval/problem146//code.c:18:     for (int i = 0; i < size; i++)
	sw	zero,-64(s0)	#, i
# eval/problem146//code.c:18:     for (int i = 0; i < size; i++)
	j	.L8		#
.L12:
# eval/problem146//code.c:19:         for (int j = 1; j < size; j++)
	li	a5,1		# tmp184,
	sw	a5,-60(s0)	# tmp184, j
# eval/problem146//code.c:19:         for (int j = 1; j < size; j++)
	j	.L9		#
.L11:
# eval/problem146//code.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	lw	a5,-60(s0)		# _25, j
	slli	a5,a5,2	#, _26, _25
	addi	a5,a5,-4	#, _27, _26
	ld	a4,-48(s0)		# tmp185, sumdigit
	add	a5,a4,a5	# _27, _28, tmp185
	lw	a3,0(a5)		# _29, *_28
# eval/problem146//code.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	lw	a5,-60(s0)		# _30, j
	slli	a5,a5,2	#, _31, _30
	ld	a4,-48(s0)		# tmp186, sumdigit
	add	a5,a4,a5	# _31, _32, tmp186
	lw	a5,0(a5)		# _33, *_32
# eval/problem146//code.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	mv	a4,a3	# tmp187, _29
	ble	a4,a5,.L10	#, tmp187, tmp188,
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a5,-60(s0)		# _34, j
	slli	a5,a5,2	#, _35, _34
	ld	a4,-48(s0)		# tmp189, sumdigit
	add	a5,a4,a5	# _35, _36, tmp189
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a5,0(a5)		# tmp190, *_36
	sw	a5,-56(s0)	# tmp190, m
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a5,-60(s0)		# _37, j
	slli	a5,a5,2	#, _38, _37
	addi	a5,a5,-4	#, _39, _38
	ld	a4,-48(s0)		# tmp191, sumdigit
	add	a4,a4,a5	# _39, _40, tmp191
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a5,-60(s0)		# _41, j
	slli	a5,a5,2	#, _42, _41
	ld	a3,-48(s0)		# tmp192, sumdigit
	add	a5,a3,a5	# _42, _43, tmp192
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a4,0(a4)		# _44, *_40
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	sw	a4,0(a5)	# _44, *_43
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a5,-60(s0)		# _45, j
	slli	a5,a5,2	#, _46, _45
	addi	a5,a5,-4	#, _47, _46
	ld	a4,-48(s0)		# tmp193, sumdigit
	add	a5,a4,a5	# _47, _48, tmp193
# eval/problem146//code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a4,-56(s0)		# tmp194, m
	sw	a4,0(a5)	# tmp194, *_48
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a5,-60(s0)		# _49, j
	slli	a5,a5,2	#, _50, _49
	ld	a4,-88(s0)		# tmp195, nums
	add	a5,a4,a5	# _50, _51, tmp195
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a5,0(a5)		# tmp196, *_51
	sw	a5,-56(s0)	# tmp196, m
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a5,-60(s0)		# _52, j
	slli	a5,a5,2	#, _53, _52
	addi	a5,a5,-4	#, _54, _53
	ld	a4,-88(s0)		# tmp197, nums
	add	a4,a4,a5	# _54, _55, tmp197
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a5,-60(s0)		# _56, j
	slli	a5,a5,2	#, _57, _56
	ld	a3,-88(s0)		# tmp198, nums
	add	a5,a3,a5	# _57, _58, tmp198
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a4,0(a4)		# _59, *_55
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	sw	a4,0(a5)	# _59, *_58
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a5,-60(s0)		# _60, j
	slli	a5,a5,2	#, _61, _60
	addi	a5,a5,-4	#, _62, _61
	ld	a4,-88(s0)		# tmp199, nums
	add	a5,a4,a5	# _62, _63, tmp199
# eval/problem146//code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a4,-56(s0)		# tmp200, m
	sw	a4,0(a5)	# tmp200, *_63
.L10:
# eval/problem146//code.c:19:         for (int j = 1; j < size; j++)
	lw	a5,-60(s0)		# tmp203, j
	addiw	a5,a5,1	#, tmp201, tmp202
	sw	a5,-60(s0)	# tmp201, j
.L9:
# eval/problem146//code.c:19:         for (int j = 1; j < size; j++)
	lw	a5,-60(s0)		# tmp205, j
	mv	a4,a5	# tmp204, tmp205
	lw	a5,-92(s0)		# tmp207, size
	sext.w	a4,a4	# tmp208, tmp204
	sext.w	a5,a5	# tmp209, tmp206
	blt	a4,a5,.L11	#, tmp208, tmp209,
# eval/problem146//code.c:18:     for (int i = 0; i < size; i++)
	lw	a5,-64(s0)		# tmp212, i
	addiw	a5,a5,1	#, tmp210, tmp211
	sw	a5,-64(s0)	# tmp210, i
.L8:
# eval/problem146//code.c:18:     for (int i = 0; i < size; i++)
	lw	a5,-64(s0)		# tmp214, i
	mv	a4,a5	# tmp213, tmp214
	lw	a5,-92(s0)		# tmp216, size
	sext.w	a4,a4	# tmp217, tmp213
	sext.w	a5,a5	# tmp218, tmp215
	blt	a4,a5,.L12	#, tmp217, tmp218,
# eval/problem146//code.c:25:     free(sumdigit);
	ld	a0,-48(s0)		#, sumdigit
	call	free@plt	#
# eval/problem146//code.c:26:     return nums;
	ld	a5,-88(s0)		# _82, nums
	mv	a4,a5	# <retval>, _82
# eval/problem146//code.c:27: }
	la	a5,__stack_chk_guard		# tmp220,
	ld	a3, -24(s0)	# tmp223, D.2626
	ld	a5, 0(a5)	# tmp221, __stack_chk_guard
	xor	a5, a3, a5	# tmp221, tmp223
	li	a3, 0	# tmp223
	beq	a5,zero,.L14	#, tmp221,,
	call	__stack_chk_fail@plt	#
.L14:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	ld	s0,80(sp)		#,
	addi	sp,sp,96	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
