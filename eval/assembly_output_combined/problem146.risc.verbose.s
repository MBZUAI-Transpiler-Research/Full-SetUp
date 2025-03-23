	.file	"problem146.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-96	#,,
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	addi	s0,sp,96	#,,
	sd	a0,-88(s0)	# nums, nums
	mv	a5,a1	# tmp137, size
	sw	a5,-92(s0)	# tmp138, size
# problem146.c:5: int* func0(int nums[], int size) {
	la	a5,__stack_chk_guard		# tmp139,
	ld	a4, 0(a5)	# tmp222, __stack_chk_guard
	sd	a4, -24(s0)	# tmp222, D.2710
	li	a4, 0	# tmp222
# problem146.c:6:     int* sumdigit = (int*)malloc(size * sizeof(int));
	lw	a5,-92(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp140,
	sd	a5,-48(s0)	# tmp140, sumdigit
# problem146.c:7:     for (int i = 0; i < size; i++) {
	sw	zero,-76(s0)	#, i
# problem146.c:7:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L7:
# problem146.c:9:         sprintf(w, "%d", abs(nums[i]));
	lw	a5,-76(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
	ld	a4,-88(s0)		# tmp141, nums
	add	a5,a4,a5	# _4, _5, tmp141
	lw	a4,0(a5)		# _6, *_5
# problem146.c:9:         sprintf(w, "%d", abs(nums[i]));
	sraiw	a5,a4,31	#, tmp142, _6
	xor	a4,a4,a5	# tmp142, tmp143, _6
	subw	a5,a4,a5	# tmp144, tmp143, tmp142
	sext.w	a4,a5	# _7, tmp144
	addi	a5,s0,-40	#, tmp145,
	mv	a2,a4	#, _7
	lla	a1,.LC10	#,
	mv	a0,a5	#, tmp145
	call	sprintf@plt	#
# problem146.c:10:         int sum = 0, length = strlen(w);
	sw	zero,-72(s0)	#, sum
# problem146.c:10:         int sum = 0, length = strlen(w);
	addi	a5,s0,-40	#, tmp146,
	mv	a0,a5	#, tmp146
	call	strlen@plt	#
	mv	a5,a0	# _8,
# problem146.c:10:         int sum = 0, length = strlen(w);
	sw	a5,-52(s0)	# _8, length
# problem146.c:11:         for (int j = 1; j < length; j++)
	li	a5,1		# tmp147,
	sw	a5,-68(s0)	# tmp147, j
# problem146.c:11:         for (int j = 1; j < length; j++)
	j	.L3		#
.L4:
# problem146.c:12:             sum += w[j] - '0';
	lw	a5,-68(s0)		# tmp148, j
	addi	a5,a5,-16	#, tmp226, tmp148
	add	a5,a5,s0	#, tmp149, tmp226
	lbu	a5,-24(a5)	# _9, w[j_67]
	sext.w	a5,a5	# _10, _9
# problem146.c:12:             sum += w[j] - '0';
	addiw	a5,a5,-48	#, tmp150, _10
	sext.w	a5,a5	# _11, tmp150
# problem146.c:12:             sum += w[j] - '0';
	lw	a4,-72(s0)		# tmp153, sum
	addw	a5,a4,a5	# _11, tmp151, tmp152
	sw	a5,-72(s0)	# tmp151, sum
# problem146.c:11:         for (int j = 1; j < length; j++)
	lw	a5,-68(s0)		# tmp156, j
	addiw	a5,a5,1	#, tmp154, tmp155
	sw	a5,-68(s0)	# tmp154, j
.L3:
# problem146.c:11:         for (int j = 1; j < length; j++)
	lw	a5,-68(s0)		# tmp158, j
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-52(s0)		# tmp160, length
	sext.w	a4,a4	# tmp161, tmp157
	sext.w	a5,a5	# tmp162, tmp159
	blt	a4,a5,.L4	#, tmp161, tmp162,
# problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	lw	a5,-76(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-88(s0)		# tmp163, nums
	add	a5,a4,a5	# _13, _14, tmp163
	lw	a5,0(a5)		# _15, *_14
# problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	ble	a5,zero,.L5	#, tmp164,,
# problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	lbu	a5,-40(s0)	# _16, w[0]
	sext.w	a5,a5	# _17, _16
# problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	addiw	a5,a5,-48	#, tmp165, _17
	sext.w	a5,a5	# _18, tmp165
# problem146.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	lw	a4,-72(s0)		# tmp168, sum
	addw	a5,a4,a5	# _18, tmp166, tmp167
	sw	a5,-72(s0)	# tmp166, sum
	j	.L6		#
.L5:
# problem146.c:14:         else sum -= w[0] - '0';
	lbu	a5,-40(s0)	# _19, w[0]
	sext.w	a5,a5	# _20, _19
# problem146.c:14:         else sum -= w[0] - '0';
	addiw	a5,a5,-48	#, tmp169, _20
	sext.w	a5,a5	# _21, tmp169
# problem146.c:14:         else sum -= w[0] - '0';
	lw	a4,-72(s0)		# tmp172, sum
	subw	a5,a4,a5	# tmp170, tmp171, _21
	sw	a5,-72(s0)	# tmp170, sum
.L6:
# problem146.c:15:         sumdigit[i] = sum;
	lw	a5,-76(s0)		# _22, i
	slli	a5,a5,2	#, _23, _22
	ld	a4,-48(s0)		# tmp173, sumdigit
	add	a5,a4,a5	# _23, _24, tmp173
# problem146.c:15:         sumdigit[i] = sum;
	lw	a4,-72(s0)		# tmp174, sum
	sw	a4,0(a5)	# tmp174, *_24
# problem146.c:7:     for (int i = 0; i < size; i++) {
	lw	a5,-76(s0)		# tmp177, i
	addiw	a5,a5,1	#, tmp175, tmp176
	sw	a5,-76(s0)	# tmp175, i
.L2:
# problem146.c:7:     for (int i = 0; i < size; i++) {
	lw	a5,-76(s0)		# tmp179, i
	mv	a4,a5	# tmp178, tmp179
	lw	a5,-92(s0)		# tmp181, size
	sext.w	a4,a4	# tmp182, tmp178
	sext.w	a5,a5	# tmp183, tmp180
	blt	a4,a5,.L7	#, tmp182, tmp183,
# problem146.c:18:     for (int i = 0; i < size; i++)
	sw	zero,-64(s0)	#, i
# problem146.c:18:     for (int i = 0; i < size; i++)
	j	.L8		#
.L12:
# problem146.c:19:         for (int j = 1; j < size; j++)
	li	a5,1		# tmp184,
	sw	a5,-60(s0)	# tmp184, j
# problem146.c:19:         for (int j = 1; j < size; j++)
	j	.L9		#
.L11:
# problem146.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	lw	a5,-60(s0)		# _25, j
	slli	a5,a5,2	#, _26, _25
	addi	a5,a5,-4	#, _27, _26
	ld	a4,-48(s0)		# tmp185, sumdigit
	add	a5,a4,a5	# _27, _28, tmp185
	lw	a3,0(a5)		# _29, *_28
# problem146.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	lw	a5,-60(s0)		# _30, j
	slli	a5,a5,2	#, _31, _30
	ld	a4,-48(s0)		# tmp186, sumdigit
	add	a5,a4,a5	# _31, _32, tmp186
	lw	a5,0(a5)		# _33, *_32
# problem146.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	mv	a4,a3	# tmp187, _29
	ble	a4,a5,.L10	#, tmp187, tmp188,
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a5,-60(s0)		# _34, j
	slli	a5,a5,2	#, _35, _34
	ld	a4,-48(s0)		# tmp189, sumdigit
	add	a5,a4,a5	# _35, _36, tmp189
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a5,0(a5)		# tmp190, *_36
	sw	a5,-56(s0)	# tmp190, m
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a5,-60(s0)		# _37, j
	slli	a5,a5,2	#, _38, _37
	addi	a5,a5,-4	#, _39, _38
	ld	a4,-48(s0)		# tmp191, sumdigit
	add	a4,a4,a5	# _39, _40, tmp191
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a5,-60(s0)		# _41, j
	slli	a5,a5,2	#, _42, _41
	ld	a3,-48(s0)		# tmp192, sumdigit
	add	a5,a3,a5	# _42, _43, tmp192
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a4,0(a4)		# _44, *_40
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	sw	a4,0(a5)	# _44, *_43
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a5,-60(s0)		# _45, j
	slli	a5,a5,2	#, _46, _45
	addi	a5,a5,-4	#, _47, _46
	ld	a4,-48(s0)		# tmp193, sumdigit
	add	a5,a4,a5	# _47, _48, tmp193
# problem146.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	lw	a4,-56(s0)		# tmp194, m
	sw	a4,0(a5)	# tmp194, *_48
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a5,-60(s0)		# _49, j
	slli	a5,a5,2	#, _50, _49
	ld	a4,-88(s0)		# tmp195, nums
	add	a5,a4,a5	# _50, _51, tmp195
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a5,0(a5)		# tmp196, *_51
	sw	a5,-56(s0)	# tmp196, m
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a5,-60(s0)		# _52, j
	slli	a5,a5,2	#, _53, _52
	addi	a5,a5,-4	#, _54, _53
	ld	a4,-88(s0)		# tmp197, nums
	add	a4,a4,a5	# _54, _55, tmp197
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a5,-60(s0)		# _56, j
	slli	a5,a5,2	#, _57, _56
	ld	a3,-88(s0)		# tmp198, nums
	add	a5,a3,a5	# _57, _58, tmp198
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a4,0(a4)		# _59, *_55
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	sw	a4,0(a5)	# _59, *_58
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a5,-60(s0)		# _60, j
	slli	a5,a5,2	#, _61, _60
	addi	a5,a5,-4	#, _62, _61
	ld	a4,-88(s0)		# tmp199, nums
	add	a5,a4,a5	# _62, _63, tmp199
# problem146.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	lw	a4,-56(s0)		# tmp200, m
	sw	a4,0(a5)	# tmp200, *_63
.L10:
# problem146.c:19:         for (int j = 1; j < size; j++)
	lw	a5,-60(s0)		# tmp203, j
	addiw	a5,a5,1	#, tmp201, tmp202
	sw	a5,-60(s0)	# tmp201, j
.L9:
# problem146.c:19:         for (int j = 1; j < size; j++)
	lw	a5,-60(s0)		# tmp205, j
	mv	a4,a5	# tmp204, tmp205
	lw	a5,-92(s0)		# tmp207, size
	sext.w	a4,a4	# tmp208, tmp204
	sext.w	a5,a5	# tmp209, tmp206
	blt	a4,a5,.L11	#, tmp208, tmp209,
# problem146.c:18:     for (int i = 0; i < size; i++)
	lw	a5,-64(s0)		# tmp212, i
	addiw	a5,a5,1	#, tmp210, tmp211
	sw	a5,-64(s0)	# tmp210, i
.L8:
# problem146.c:18:     for (int i = 0; i < size; i++)
	lw	a5,-64(s0)		# tmp214, i
	mv	a4,a5	# tmp213, tmp214
	lw	a5,-92(s0)		# tmp216, size
	sext.w	a4,a4	# tmp217, tmp213
	sext.w	a5,a5	# tmp218, tmp215
	blt	a4,a5,.L12	#, tmp217, tmp218,
# problem146.c:25:     free(sumdigit);
	ld	a0,-48(s0)		#, sumdigit
	call	free@plt	#
# problem146.c:26:     return nums;
	ld	a5,-88(s0)		# _82, nums
	mv	a4,a5	# <retval>, _82
# problem146.c:27: }
	la	a5,__stack_chk_guard		# tmp220,
	ld	a3, -24(s0)	# tmp223, D.2710
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
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-64	#,,
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp82, size_a
	mv	a4,a3	# tmp84, size_b
	sw	a5,-52(s0)	# tmp83, size_a
	mv	a5,a4	# tmp85, tmp84
	sw	a5,-56(s0)	# tmp85, size_b
# problem146.c:35:     if (size_a != size_b) return 0;
	lw	a5,-52(s0)		# tmp87, size_a
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-56(s0)		# tmp89, size_b
	sext.w	a4,a4	# tmp90, tmp86
	sext.w	a5,a5	# tmp91, tmp88
	beq	a4,a5,.L16	#, tmp90, tmp91,
# problem146.c:35:     if (size_a != size_b) return 0;
	li	a5,0		# _10,
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
	ld	a4,-40(s0)		# tmp92, a
	add	a5,a4,a5	# _2, _3, tmp92
	lw	a3,0(a5)		# _4, *_3
# problem146.c:37:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp93, b
	add	a5,a4,a5	# _6, _7, tmp93
	lw	a5,0(a5)		# _8, *_7
# problem146.c:37:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp94, _4
	beq	a4,a5,.L19	#, tmp94, tmp95,
# problem146.c:37:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L17		#
.L19:
# problem146.c:36:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L18:
# problem146.c:36:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-52(s0)		# tmp102, size_a
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L20	#, tmp103, tmp104,
# problem146.c:39:     return 1;
	li	a5,1		# _10,
.L17:
# problem146.c:40: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
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
	addi	sp,sp,-448	#,,
	sd	ra,440(sp)	#,
	sd	s0,432(sp)	#,
	addi	s0,sp,448	#,,
# problem146.c:42: int main() {
	la	a5,__stack_chk_guard		# tmp86,
	ld	a4, 0(a5)	# tmp168, __stack_chk_guard
	sd	a4, -24(s0)	# tmp168, D.2714
	li	a4, 0	# tmp168
# problem146.c:43:     int test1[] = {1, 11, -1, -11, -12};
	lla	a5,.LC0	# tmp87,
	ld	a4,0(a5)		# tmp88,
	sd	a4,-424(s0)	# tmp88, test1
	ld	a4,8(a5)		# tmp89,
	sd	a4,-416(s0)	# tmp89, test1
	lw	a5,16(a5)		# tmp90,
	sw	a5,-408(s0)	# tmp90, test1
# problem146.c:44:     int expected1[] = {-1, -11, 1, -12, 11};
	lla	a5,.LC1	# tmp91,
	ld	a4,0(a5)		# tmp92,
	sd	a4,-400(s0)	# tmp92, expected1
	ld	a4,8(a5)		# tmp93,
	sd	a4,-392(s0)	# tmp93, expected1
	lw	a5,16(a5)		# tmp94,
	sw	a5,-384(s0)	# tmp94, expected1
# problem146.c:45:     assert(issame(func0(test1, 5), expected1, 5, 5));
	addi	a5,s0,-424	#, tmp95,
	li	a1,5		#,
	mv	a0,a5	#, tmp95
	call	func0		#
	mv	a4,a0	# _1,
	addi	a5,s0,-400	#, tmp96,
	li	a3,5		#,
	li	a2,5		#,
	mv	a1,a5	#, tmp96
	mv	a0,a4	#, _1
	call	issame		#
	mv	a5,a0	# tmp97,
	bne	a5,zero,.L22	#, _2,,
# problem146.c:45:     assert(issame(func0(test1, 5), expected1, 5, 5));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC11	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L22:
# problem146.c:47:     int test2[] = {1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46};
	lla	a5,.LC2	# tmp98,
	ld	a7,0(a5)		# tmp99,
	ld	a6,8(a5)		# tmp100,
	ld	a0,16(a5)		# tmp101,
	ld	a1,24(a5)		# tmp102,
	ld	a2,32(a5)		# tmp103,
	ld	a3,40(a5)		# tmp104,
	ld	a4,48(a5)		# tmp105,
	sd	a7,-152(s0)	# tmp99, test2
	sd	a6,-144(s0)	# tmp100, test2
	sd	a0,-136(s0)	# tmp101, test2
	sd	a1,-128(s0)	# tmp102, test2
	sd	a2,-120(s0)	# tmp103, test2
	sd	a3,-112(s0)	# tmp104, test2
	sd	a4,-104(s0)	# tmp105, test2
	lw	a5,56(a5)		# tmp106,
	sw	a5,-96(s0)	# tmp106, test2
# problem146.c:48:     int expected2[] = {0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457};
	lla	a5,.LC3	# tmp107,
	ld	a7,0(a5)		# tmp108,
	ld	a6,8(a5)		# tmp109,
	ld	a0,16(a5)		# tmp110,
	ld	a1,24(a5)		# tmp111,
	ld	a2,32(a5)		# tmp112,
	ld	a3,40(a5)		# tmp113,
	ld	a4,48(a5)		# tmp114,
	sd	a7,-88(s0)	# tmp108, expected2
	sd	a6,-80(s0)	# tmp109, expected2
	sd	a0,-72(s0)	# tmp110, expected2
	sd	a1,-64(s0)	# tmp111, expected2
	sd	a2,-56(s0)	# tmp112, expected2
	sd	a3,-48(s0)	# tmp113, expected2
	sd	a4,-40(s0)	# tmp114, expected2
	lw	a5,56(a5)		# tmp115,
	sw	a5,-32(s0)	# tmp115, expected2
# problem146.c:49:     assert(issame(func0(test2, 15), expected2, 15, 15));
	addi	a5,s0,-152	#, tmp116,
	li	a1,15		#,
	mv	a0,a5	#, tmp116
	call	func0		#
	mv	a4,a0	# _3,
	addi	a5,s0,-88	#, tmp117,
	li	a3,15		#,
	li	a2,15		#,
	mv	a1,a5	#, tmp117
	mv	a0,a4	#, _3
	call	issame		#
	mv	a5,a0	# tmp118,
	bne	a5,zero,.L23	#, _4,,
# problem146.c:49:     assert(issame(func0(test2, 15), expected2, 15, 15));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,49		#,
	lla	a1,.LC11	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L23:
# problem146.c:53:     assert(issame(func0(test3, 0), expected3, 0, 0));
	addi	a5,s0,-440	#, tmp119,
	li	a1,0		#,
	mv	a0,a5	#, tmp119
	call	func0		#
	mv	a4,a0	# _5,
	addi	a5,s0,-432	#, tmp120,
	li	a3,0		#,
	li	a2,0		#,
	mv	a1,a5	#, tmp120
	mv	a0,a4	#, _5
	call	issame		#
	mv	a5,a0	# tmp121,
	bne	a5,zero,.L24	#, _6,,
# problem146.c:53:     assert(issame(func0(test3, 0), expected3, 0, 0));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,53		#,
	lla	a1,.LC11	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L24:
# problem146.c:55:     int test4[] = {1, -11, -32, 43, 54, -98, 2, -3};
	lla	a5,.LC4	# tmp122,
	ld	a2,0(a5)		# tmp123,
	ld	a3,8(a5)		# tmp124,
	ld	a4,16(a5)		# tmp125,
	ld	a5,24(a5)		# tmp126,
	sd	a2,-312(s0)	# tmp123, test4
	sd	a3,-304(s0)	# tmp124, test4
	sd	a4,-296(s0)	# tmp125, test4
	sd	a5,-288(s0)	# tmp126, test4
# problem146.c:56:     int expected4[] = {-3, -32, -98, -11, 1, 2, 43, 54};
	lla	a5,.LC5	# tmp127,
	ld	a2,0(a5)		# tmp128,
	ld	a3,8(a5)		# tmp129,
	ld	a4,16(a5)		# tmp130,
	ld	a5,24(a5)		# tmp131,
	sd	a2,-280(s0)	# tmp128, expected4
	sd	a3,-272(s0)	# tmp129, expected4
	sd	a4,-264(s0)	# tmp130, expected4
	sd	a5,-256(s0)	# tmp131, expected4
# problem146.c:57:     assert(issame(func0(test4, 8), expected4, 8, 8));
	addi	a5,s0,-312	#, tmp132,
	li	a1,8		#,
	mv	a0,a5	#, tmp132
	call	func0		#
	mv	a4,a0	# _7,
	addi	a5,s0,-280	#, tmp133,
	li	a3,8		#,
	li	a2,8		#,
	mv	a1,a5	#, tmp133
	mv	a0,a4	#, _7
	call	issame		#
	mv	a5,a0	# tmp134,
	bne	a5,zero,.L25	#, _8,,
# problem146.c:57:     assert(issame(func0(test4, 8), expected4, 8, 8));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,57		#,
	lla	a1,.LC11	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L25:
# problem146.c:59:     int test5[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
	lla	a5,.LC6	# tmp135,
	ld	a0,0(a5)		# tmp136,
	ld	a1,8(a5)		# tmp137,
	ld	a2,16(a5)		# tmp138,
	ld	a3,24(a5)		# tmp139,
	ld	a4,32(a5)		# tmp140,
	sd	a0,-248(s0)	# tmp136, test5
	sd	a1,-240(s0)	# tmp137, test5
	sd	a2,-232(s0)	# tmp138, test5
	sd	a3,-224(s0)	# tmp139, test5
	sd	a4,-216(s0)	# tmp140, test5
	lw	a5,40(a5)		# tmp141,
	sw	a5,-208(s0)	# tmp141, test5
# problem146.c:60:     int expected5[] = {1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9};
	lla	a5,.LC7	# tmp142,
	ld	a0,0(a5)		# tmp143,
	ld	a1,8(a5)		# tmp144,
	ld	a2,16(a5)		# tmp145,
	ld	a3,24(a5)		# tmp146,
	ld	a4,32(a5)		# tmp147,
	sd	a0,-200(s0)	# tmp143, expected5
	sd	a1,-192(s0)	# tmp144, expected5
	sd	a2,-184(s0)	# tmp145, expected5
	sd	a3,-176(s0)	# tmp146, expected5
	sd	a4,-168(s0)	# tmp147, expected5
	lw	a5,40(a5)		# tmp148,
	sw	a5,-160(s0)	# tmp148, expected5
# problem146.c:61:     assert(issame(func0(test5, 11), expected5, 11, 11));
	addi	a5,s0,-248	#, tmp149,
	li	a1,11		#,
	mv	a0,a5	#, tmp149
	call	func0		#
	mv	a4,a0	# _9,
	addi	a5,s0,-200	#, tmp150,
	li	a3,11		#,
	li	a2,11		#,
	mv	a1,a5	#, tmp150
	mv	a0,a4	#, _9
	call	issame		#
	mv	a5,a0	# tmp151,
	bne	a5,zero,.L26	#, _10,,
# problem146.c:61:     assert(issame(func0(test5, 11), expected5, 11, 11));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,61		#,
	lla	a1,.LC11	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L26:
# problem146.c:63:     int test6[] = {0, 6, 6, -76, -21, 23, 4};
	lla	a5,.LC8	# tmp152,
	ld	a2,0(a5)		# tmp153,
	ld	a3,8(a5)		# tmp154,
	ld	a4,16(a5)		# tmp155,
	sd	a2,-376(s0)	# tmp153, test6
	sd	a3,-368(s0)	# tmp154, test6
	sd	a4,-360(s0)	# tmp155, test6
	lw	a5,24(a5)		# tmp156,
	sw	a5,-352(s0)	# tmp156, test6
# problem146.c:64:     int expected6[] = {-76, -21, 0, 4, 23, 6, 6};
	lla	a5,.LC9	# tmp157,
	ld	a2,0(a5)		# tmp158,
	ld	a3,8(a5)		# tmp159,
	ld	a4,16(a5)		# tmp160,
	sd	a2,-344(s0)	# tmp158, expected6
	sd	a3,-336(s0)	# tmp159, expected6
	sd	a4,-328(s0)	# tmp160, expected6
	lw	a5,24(a5)		# tmp161,
	sw	a5,-320(s0)	# tmp161, expected6
# problem146.c:65:     assert(issame(func0(test6, 7), expected6, 7, 7));
	addi	a5,s0,-376	#, tmp162,
	li	a1,7		#,
	mv	a0,a5	#, tmp162
	call	func0		#
	mv	a4,a0	# _11,
	addi	a5,s0,-344	#, tmp163,
	li	a3,7		#,
	li	a2,7		#,
	mv	a1,a5	#, tmp163
	mv	a0,a4	#, _11
	call	issame		#
	mv	a5,a0	# tmp164,
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
	li	a5,0		# _45,
# problem146.c:70: }
	mv	a4,a5	# <retval>, _45
	la	a5,__stack_chk_guard		# tmp166,
	ld	a3, -24(s0)	# tmp169, D.2714
	ld	a5, 0(a5)	# tmp167, __stack_chk_guard
	xor	a5, a3, a5	# tmp167, tmp169
	li	a3, 0	# tmp169
	beq	a5,zero,.L29	#, tmp167,,
	call	__stack_chk_fail@plt	#
.L29:
	mv	a0,a4	#, <retval>
	ld	ra,440(sp)		#,
	ld	s0,432(sp)		#,
	addi	sp,sp,448	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
