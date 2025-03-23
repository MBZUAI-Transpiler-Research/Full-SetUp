	.file	"problem34.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-80	#,,
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	addi	s0,sp,80	#,,
	sd	a0,-56(s0)	# l, l
	mv	a5,a1	# tmp123, size
	sd	a2,-72(s0)	# out, out
	sw	a5,-60(s0)	# tmp124, size
# problem34.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	lw	a5,-60(s0)		# tmp127, size
	mv	a4,a5	# tmp126, tmp127
	li	a5,3		# tmp129,
	divw	a5,a4,a5	# tmp129, tmp128, tmp126
	sext.w	a5,a5	# _1, tmp128
# problem34.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	addiw	a5,a5,1	#, tmp130, _1
	sext.w	a5,a5	# _2, tmp130
# problem34.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	slli	a5,a5,2	#, _4, _3
	mv	a0,a5	#, _4
	call	malloc@plt	#
	mv	a5,a0	# tmp131,
	sd	a5,-24(s0)	# tmp131, third
# problem34.c:6:     int i, k = 0, third_size = 0;
	sw	zero,-40(s0)	#, k
# problem34.c:6:     int i, k = 0, third_size = 0;
	sw	zero,-36(s0)	#, third_size
# problem34.c:8:     for (i = 0; i * 3 < size; i++) {
	sw	zero,-44(s0)	#, i
# problem34.c:8:     for (i = 0; i * 3 < size; i++) {
	j	.L2		#
.L3:
# problem34.c:9:         third[i] = l[i * 3];
	lw	a5,-44(s0)		# tmp133, i
	mv	a4,a5	# tmp132, tmp133
	mv	a5,a4	# tmp134, tmp132
	slliw	a5,a5,1	#, tmp135, tmp134
	addw	a5,a5,a4	# tmp132, tmp134, tmp134
	sext.w	a5,a5	# _5, tmp134
# problem34.c:9:         third[i] = l[i * 3];
	slli	a5,a5,2	#, _7, _6
	ld	a4,-56(s0)		# tmp136, l
	add	a4,a4,a5	# _7, _8, tmp136
# problem34.c:9:         third[i] = l[i * 3];
	lw	a5,-44(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a3,-24(s0)		# tmp137, third
	add	a5,a3,a5	# _10, _11, tmp137
# problem34.c:9:         third[i] = l[i * 3];
	lw	a4,0(a4)		# _12, *_8
# problem34.c:9:         third[i] = l[i * 3];
	sw	a4,0(a5)	# _12, *_11
# problem34.c:10:         third_size++;
	lw	a5,-36(s0)		# tmp140, third_size
	addiw	a5,a5,1	#, tmp138, tmp139
	sw	a5,-36(s0)	# tmp138, third_size
# problem34.c:8:     for (i = 0; i * 3 < size; i++) {
	lw	a5,-44(s0)		# tmp143, i
	addiw	a5,a5,1	#, tmp141, tmp142
	sw	a5,-44(s0)	# tmp141, i
.L2:
# problem34.c:8:     for (i = 0; i * 3 < size; i++) {
	lw	a5,-44(s0)		# tmp145, i
	mv	a4,a5	# tmp144, tmp145
	mv	a5,a4	# tmp146, tmp144
	slliw	a5,a5,1	#, tmp147, tmp146
	addw	a5,a5,a4	# tmp144, tmp146, tmp146
	sext.w	a4,a5	# _13, tmp146
# problem34.c:8:     for (i = 0; i * 3 < size; i++) {
	lw	a5,-60(s0)		# tmp149, size
	sext.w	a5,a5	# tmp150, tmp148
	bgt	a5,a4,.L3	#, tmp150, tmp151,
# problem34.c:13:     for (i = 0; i < third_size - 1; i++) {
	sw	zero,-44(s0)	#, i
# problem34.c:13:     for (i = 0; i < third_size - 1; i++) {
	j	.L4		#
.L9:
# problem34.c:14:         int min_idx = i;
	lw	a5,-44(s0)		# tmp152, i
	sw	a5,-32(s0)	# tmp152, min_idx
# problem34.c:15:         for (k = i + 1; k < third_size; k++) {
	lw	a5,-44(s0)		# tmp155, i
	addiw	a5,a5,1	#, tmp153, tmp154
	sw	a5,-40(s0)	# tmp153, k
# problem34.c:15:         for (k = i + 1; k < third_size; k++) {
	j	.L5		#
.L7:
# problem34.c:16:             if (third[k] < third[min_idx])
	lw	a5,-40(s0)		# _14, k
	slli	a5,a5,2	#, _15, _14
	ld	a4,-24(s0)		# tmp156, third
	add	a5,a4,a5	# _15, _16, tmp156
	lw	a3,0(a5)		# _17, *_16
# problem34.c:16:             if (third[k] < third[min_idx])
	lw	a5,-32(s0)		# _18, min_idx
	slli	a5,a5,2	#, _19, _18
	ld	a4,-24(s0)		# tmp157, third
	add	a5,a4,a5	# _19, _20, tmp157
	lw	a5,0(a5)		# _21, *_20
# problem34.c:16:             if (third[k] < third[min_idx])
	mv	a4,a3	# tmp158, _17
	bge	a4,a5,.L6	#, tmp158, tmp159,
# problem34.c:17:                 min_idx = k;
	lw	a5,-40(s0)		# tmp160, k
	sw	a5,-32(s0)	# tmp160, min_idx
.L6:
# problem34.c:15:         for (k = i + 1; k < third_size; k++) {
	lw	a5,-40(s0)		# tmp163, k
	addiw	a5,a5,1	#, tmp161, tmp162
	sw	a5,-40(s0)	# tmp161, k
.L5:
# problem34.c:15:         for (k = i + 1; k < third_size; k++) {
	lw	a5,-40(s0)		# tmp165, k
	mv	a4,a5	# tmp164, tmp165
	lw	a5,-36(s0)		# tmp167, third_size
	sext.w	a4,a4	# tmp168, tmp164
	sext.w	a5,a5	# tmp169, tmp166
	blt	a4,a5,.L7	#, tmp168, tmp169,
# problem34.c:19:         if (min_idx != i) {
	lw	a5,-32(s0)		# tmp171, min_idx
	mv	a4,a5	# tmp170, tmp171
	lw	a5,-44(s0)		# tmp173, i
	sext.w	a4,a4	# tmp174, tmp170
	sext.w	a5,a5	# tmp175, tmp172
	beq	a4,a5,.L8	#, tmp174, tmp175,
# problem34.c:20:             int temp = third[i];
	lw	a5,-44(s0)		# _22, i
	slli	a5,a5,2	#, _23, _22
	ld	a4,-24(s0)		# tmp176, third
	add	a5,a4,a5	# _23, _24, tmp176
# problem34.c:20:             int temp = third[i];
	lw	a5,0(a5)		# tmp177, *_24
	sw	a5,-28(s0)	# tmp177, temp
# problem34.c:21:             third[i] = third[min_idx];
	lw	a5,-32(s0)		# _25, min_idx
	slli	a5,a5,2	#, _26, _25
	ld	a4,-24(s0)		# tmp178, third
	add	a4,a4,a5	# _26, _27, tmp178
# problem34.c:21:             third[i] = third[min_idx];
	lw	a5,-44(s0)		# _28, i
	slli	a5,a5,2	#, _29, _28
	ld	a3,-24(s0)		# tmp179, third
	add	a5,a3,a5	# _29, _30, tmp179
# problem34.c:21:             third[i] = third[min_idx];
	lw	a4,0(a4)		# _31, *_27
# problem34.c:21:             third[i] = third[min_idx];
	sw	a4,0(a5)	# _31, *_30
# problem34.c:22:             third[min_idx] = temp;
	lw	a5,-32(s0)		# _32, min_idx
	slli	a5,a5,2	#, _33, _32
	ld	a4,-24(s0)		# tmp180, third
	add	a5,a4,a5	# _33, _34, tmp180
# problem34.c:22:             third[min_idx] = temp;
	lw	a4,-28(s0)		# tmp181, temp
	sw	a4,0(a5)	# tmp181, *_34
.L8:
# problem34.c:13:     for (i = 0; i < third_size - 1; i++) {
	lw	a5,-44(s0)		# tmp184, i
	addiw	a5,a5,1	#, tmp182, tmp183
	sw	a5,-44(s0)	# tmp182, i
.L4:
# problem34.c:13:     for (i = 0; i < third_size - 1; i++) {
	lw	a5,-36(s0)		# tmp187, third_size
	addiw	a5,a5,-1	#, tmp185, tmp186
	sext.w	a4,a5	# _35, tmp185
# problem34.c:13:     for (i = 0; i < third_size - 1; i++) {
	lw	a5,-44(s0)		# tmp189, i
	sext.w	a5,a5	# tmp190, tmp188
	blt	a5,a4,.L9	#, tmp190, tmp191,
# problem34.c:26:     for (i = 0; i < size; i++) {
	sw	zero,-44(s0)	#, i
# problem34.c:26:     for (i = 0; i < size; i++) {
	j	.L10		#
.L13:
# problem34.c:27:         if (i % 3 == 0) {
	lw	a5,-44(s0)		# tmp194, i
	mv	a4,a5	# tmp193, tmp194
	li	a5,3		# tmp196,
	remw	a5,a4,a5	# tmp196, tmp195, tmp193
	sext.w	a5,a5	# _36, tmp195
# problem34.c:27:         if (i % 3 == 0) {
	bne	a5,zero,.L11	#, _36,,
# problem34.c:28:             out[i] = third[i / 3];
	lw	a5,-44(s0)		# tmp199, i
	mv	a4,a5	# tmp198, tmp199
	li	a5,3		# tmp201,
	divw	a5,a4,a5	# tmp201, tmp200, tmp198
	sext.w	a5,a5	# _37, tmp200
# problem34.c:28:             out[i] = third[i / 3];
	slli	a5,a5,2	#, _39, _38
	ld	a4,-24(s0)		# tmp202, third
	add	a4,a4,a5	# _39, _40, tmp202
# problem34.c:28:             out[i] = third[i / 3];
	lw	a5,-44(s0)		# _41, i
	slli	a5,a5,2	#, _42, _41
	ld	a3,-72(s0)		# tmp203, out
	add	a5,a3,a5	# _42, _43, tmp203
# problem34.c:28:             out[i] = third[i / 3];
	lw	a4,0(a4)		# _44, *_40
# problem34.c:28:             out[i] = third[i / 3];
	sw	a4,0(a5)	# _44, *_43
	j	.L12		#
.L11:
# problem34.c:30:             out[i] = l[i];
	lw	a5,-44(s0)		# _45, i
	slli	a5,a5,2	#, _46, _45
	ld	a4,-56(s0)		# tmp204, l
	add	a4,a4,a5	# _46, _47, tmp204
# problem34.c:30:             out[i] = l[i];
	lw	a5,-44(s0)		# _48, i
	slli	a5,a5,2	#, _49, _48
	ld	a3,-72(s0)		# tmp205, out
	add	a5,a3,a5	# _49, _50, tmp205
# problem34.c:30:             out[i] = l[i];
	lw	a4,0(a4)		# _51, *_47
# problem34.c:30:             out[i] = l[i];
	sw	a4,0(a5)	# _51, *_50
.L12:
# problem34.c:26:     for (i = 0; i < size; i++) {
	lw	a5,-44(s0)		# tmp208, i
	addiw	a5,a5,1	#, tmp206, tmp207
	sw	a5,-44(s0)	# tmp206, i
.L10:
# problem34.c:26:     for (i = 0; i < size; i++) {
	lw	a5,-44(s0)		# tmp210, i
	mv	a4,a5	# tmp209, tmp210
	lw	a5,-60(s0)		# tmp212, size
	sext.w	a4,a4	# tmp213, tmp209
	sext.w	a5,a5	# tmp214, tmp211
	blt	a4,a5,.L13	#, tmp213, tmp214,
# problem34.c:34:     free(third);
	ld	a0,-24(s0)		#, third
	call	free@plt	#
# problem34.c:35: }
	nop	
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
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
	mv	a5,a2	# tmp82, size
	sw	a5,-52(s0)	# tmp83, size
# problem34.c:43:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem34.c:43:     for (int i = 0; i < size; i++) {
	j	.L15		#
.L18:
# problem34.c:44:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp84, a
	add	a5,a4,a5	# _2, _3, tmp84
	lw	a3,0(a5)		# _4, *_3
# problem34.c:44:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp85, b
	add	a5,a4,a5	# _6, _7, tmp85
	lw	a5,0(a5)		# _8, *_7
# problem34.c:44:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp86, _4
	beq	a4,a5,.L16	#, tmp86, tmp87,
# problem34.c:44:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L17		#
.L16:
# problem34.c:43:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp90, i
	addiw	a5,a5,1	#, tmp88, tmp89
	sw	a5,-20(s0)	# tmp88, i
.L15:
# problem34.c:43:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp92, i
	mv	a4,a5	# tmp91, tmp92
	lw	a5,-52(s0)		# tmp94, size
	sext.w	a4,a4	# tmp95, tmp91
	sext.w	a5,a5	# tmp96, tmp93
	blt	a4,a5,.L18	#, tmp95, tmp96,
# problem34.c:46:     return 1;
	li	a5,1		# _10,
.L17:
# problem34.c:47: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC10:
	.string	"problem34.c"
	.align	3
.LC11:
	.string	"issame(result1, result1, 3)"
	.align	3
.LC12:
	.string	"issame(result2, result2, 11)"
	.align	3
.LC13:
	.string	"issame(result3, result3, 10)"
	.align	3
.LC14:
	.string	"issame(result4, correct4, 7)"
	.align	3
.LC15:
	.string	"issame(result5, correct5, 7)"
	.align	3
.LC16:
	.string	"issame(result6, correct6, 7)"
	.align	3
.LC17:
	.string	"issame(result7, correct7, 8)"
	.align	3
.LC18:
	.string	"All tests passed!"
	.align	3
.LC0:
	.word	5
	.word	3
	.word	-5
	.word	2
	.word	-3
	.word	3
	.word	9
	.word	0
	.word	123
	.word	1
	.word	-10
	.align	3
.LC1:
	.word	5
	.word	8
	.word	-12
	.word	4
	.word	23
	.word	2
	.word	3
	.word	11
	.word	12
	.word	-10
	.align	3
.LC2:
	.word	5
	.word	6
	.word	3
	.word	4
	.word	8
	.word	9
	.word	2
	.align	3
.LC3:
	.word	2
	.word	6
	.word	3
	.word	4
	.word	8
	.word	9
	.word	5
	.align	3
.LC4:
	.word	5
	.word	8
	.word	3
	.word	4
	.word	6
	.word	9
	.word	2
	.align	3
.LC5:
	.word	2
	.word	8
	.word	3
	.word	4
	.word	6
	.word	9
	.word	5
	.align	3
.LC6:
	.word	5
	.word	6
	.word	9
	.word	4
	.word	8
	.word	3
	.word	2
	.align	3
.LC7:
	.word	2
	.word	6
	.word	9
	.word	4
	.word	8
	.word	3
	.word	5
	.align	3
.LC8:
	.word	5
	.word	6
	.word	3
	.word	4
	.word	8
	.word	9
	.word	2
	.word	1
	.align	3
.LC9:
	.word	2
	.word	6
	.word	3
	.word	4
	.word	8
	.word	9
	.word	5
	.word	1
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-624	#,,
	sd	ra,616(sp)	#,
	sd	s0,608(sp)	#,
	addi	s0,sp,624	#,,
# problem34.c:49: int main() {
	la	a5,__stack_chk_guard		# tmp81,
	ld	a4, 0(a5)	# tmp176, __stack_chk_guard
	sd	a4, -24(s0)	# tmp176, D.2532
	li	a4, 0	# tmp176
# problem34.c:50:     int test1[] = {1, 2, 3};
	li	a5,1		# tmp82,
	sw	a5,-616(s0)	# tmp82, test1[0]
	li	a5,2		# tmp83,
	sw	a5,-612(s0)	# tmp83, test1[1]
	li	a5,3		# tmp84,
	sw	a5,-608(s0)	# tmp84, test1[2]
# problem34.c:52:     func0(test1, 3, result1);
	addi	a4,s0,-600	#, tmp85,
	addi	a5,s0,-616	#, tmp86,
	mv	a2,a4	#, tmp85
	li	a1,3		#,
	mv	a0,a5	#, tmp86
	call	func0		#
# problem34.c:53:     assert(issame(result1, result1, 3));
	addi	a4,s0,-600	#, tmp87,
	addi	a5,s0,-600	#, tmp88,
	li	a2,3		#,
	mv	a1,a4	#, tmp87
	mv	a0,a5	#, tmp88
	call	issame		#
	mv	a5,a0	# tmp89,
	bne	a5,zero,.L20	#, _1,,
# problem34.c:53:     assert(issame(result1, result1, 3));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,53		#,
	lla	a1,.LC10	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L20:
# problem34.c:55:     int test2[] = {5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10};
	lla	a5,.LC0	# tmp90,
	ld	a0,0(a5)		# tmp91,
	ld	a1,8(a5)		# tmp92,
	ld	a2,16(a5)		# tmp93,
	ld	a3,24(a5)		# tmp94,
	ld	a4,32(a5)		# tmp95,
	sd	a0,-120(s0)	# tmp91, test2
	sd	a1,-112(s0)	# tmp92, test2
	sd	a2,-104(s0)	# tmp93, test2
	sd	a3,-96(s0)	# tmp94, test2
	sd	a4,-88(s0)	# tmp95, test2
	lw	a5,40(a5)		# tmp96,
	sw	a5,-80(s0)	# tmp96, test2
# problem34.c:57:     func0(test2, 11, result2);
	addi	a4,s0,-72	#, tmp97,
	addi	a5,s0,-120	#, tmp98,
	mv	a2,a4	#, tmp97
	li	a1,11		#,
	mv	a0,a5	#, tmp98
	call	func0		#
# problem34.c:58:     assert(issame(result2, result2, 11));
	addi	a4,s0,-72	#, tmp99,
	addi	a5,s0,-72	#, tmp100,
	li	a2,11		#,
	mv	a1,a4	#, tmp99
	mv	a0,a5	#, tmp100
	call	issame		#
	mv	a5,a0	# tmp101,
	bne	a5,zero,.L21	#, _2,,
# problem34.c:58:     assert(issame(result2, result2, 11));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,58		#,
	lla	a1,.LC10	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L21:
# problem34.c:60:     int test3[] = {5, 8, -12, 4, 23, 2, 3, 11, 12, -10};
	lla	a5,.LC1	# tmp102,
	ld	a1,0(a5)		# tmp103,
	ld	a2,8(a5)		# tmp104,
	ld	a3,16(a5)		# tmp105,
	ld	a4,24(a5)		# tmp106,
	ld	a5,32(a5)		# tmp107,
	sd	a1,-200(s0)	# tmp103, test3
	sd	a2,-192(s0)	# tmp104, test3
	sd	a3,-184(s0)	# tmp105, test3
	sd	a4,-176(s0)	# tmp106, test3
	sd	a5,-168(s0)	# tmp107, test3
# problem34.c:62:     func0(test3, 10, result3);
	addi	a4,s0,-160	#, tmp108,
	addi	a5,s0,-200	#, tmp109,
	mv	a2,a4	#, tmp108
	li	a1,10		#,
	mv	a0,a5	#, tmp109
	call	func0		#
# problem34.c:63:     assert(issame(result3, result3, 10));
	addi	a4,s0,-160	#, tmp110,
	addi	a5,s0,-160	#, tmp111,
	li	a2,10		#,
	mv	a1,a4	#, tmp110
	mv	a0,a5	#, tmp111
	call	issame		#
	mv	a5,a0	# tmp112,
	bne	a5,zero,.L22	#, _3,,
# problem34.c:63:     assert(issame(result3, result3, 10));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,63		#,
	lla	a1,.LC10	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L22:
# problem34.c:65:     int test4[] = {5, 6, 3, 4, 8, 9, 2};
	lla	a5,.LC2	# tmp113,
	ld	a2,0(a5)		# tmp114,
	ld	a3,8(a5)		# tmp115,
	ld	a4,16(a5)		# tmp116,
	sd	a2,-584(s0)	# tmp114, test4
	sd	a3,-576(s0)	# tmp115, test4
	sd	a4,-568(s0)	# tmp116, test4
	lw	a5,24(a5)		# tmp117,
	sw	a5,-560(s0)	# tmp117, test4
# problem34.c:66:     int correct4[] = {2, 6, 3, 4, 8, 9, 5};
	lla	a5,.LC3	# tmp118,
	ld	a2,0(a5)		# tmp119,
	ld	a3,8(a5)		# tmp120,
	ld	a4,16(a5)		# tmp121,
	sd	a2,-552(s0)	# tmp119, correct4
	sd	a3,-544(s0)	# tmp120, correct4
	sd	a4,-536(s0)	# tmp121, correct4
	lw	a5,24(a5)		# tmp122,
	sw	a5,-528(s0)	# tmp122, correct4
# problem34.c:68:     func0(test4, 7, result4);
	addi	a4,s0,-520	#, tmp123,
	addi	a5,s0,-584	#, tmp124,
	mv	a2,a4	#, tmp123
	li	a1,7		#,
	mv	a0,a5	#, tmp124
	call	func0		#
# problem34.c:69:     assert(issame(result4, correct4, 7));
	addi	a4,s0,-552	#, tmp125,
	addi	a5,s0,-520	#, tmp126,
	li	a2,7		#,
	mv	a1,a4	#, tmp125
	mv	a0,a5	#, tmp126
	call	issame		#
	mv	a5,a0	# tmp127,
	bne	a5,zero,.L23	#, _4,,
# problem34.c:69:     assert(issame(result4, correct4, 7));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,69		#,
	lla	a1,.LC10	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L23:
# problem34.c:71:     int test5[] = {5, 8, 3, 4, 6, 9, 2};
	lla	a5,.LC4	# tmp128,
	ld	a2,0(a5)		# tmp129,
	ld	a3,8(a5)		# tmp130,
	ld	a4,16(a5)		# tmp131,
	sd	a2,-488(s0)	# tmp129, test5
	sd	a3,-480(s0)	# tmp130, test5
	sd	a4,-472(s0)	# tmp131, test5
	lw	a5,24(a5)		# tmp132,
	sw	a5,-464(s0)	# tmp132, test5
# problem34.c:72:     int correct5[] = {2, 8, 3, 4, 6, 9, 5};
	lla	a5,.LC5	# tmp133,
	ld	a2,0(a5)		# tmp134,
	ld	a3,8(a5)		# tmp135,
	ld	a4,16(a5)		# tmp136,
	sd	a2,-456(s0)	# tmp134, correct5
	sd	a3,-448(s0)	# tmp135, correct5
	sd	a4,-440(s0)	# tmp136, correct5
	lw	a5,24(a5)		# tmp137,
	sw	a5,-432(s0)	# tmp137, correct5
# problem34.c:74:     func0(test5, 7, result5);
	addi	a4,s0,-424	#, tmp138,
	addi	a5,s0,-488	#, tmp139,
	mv	a2,a4	#, tmp138
	li	a1,7		#,
	mv	a0,a5	#, tmp139
	call	func0		#
# problem34.c:75:     assert(issame(result5, correct5, 7));
	addi	a4,s0,-456	#, tmp140,
	addi	a5,s0,-424	#, tmp141,
	li	a2,7		#,
	mv	a1,a4	#, tmp140
	mv	a0,a5	#, tmp141
	call	issame		#
	mv	a5,a0	# tmp142,
	bne	a5,zero,.L24	#, _5,,
# problem34.c:75:     assert(issame(result5, correct5, 7));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,75		#,
	lla	a1,.LC10	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L24:
# problem34.c:77:     int test6[] = {5, 6, 9, 4, 8, 3, 2};
	lla	a5,.LC6	# tmp143,
	ld	a2,0(a5)		# tmp144,
	ld	a3,8(a5)		# tmp145,
	ld	a4,16(a5)		# tmp146,
	sd	a2,-392(s0)	# tmp144, test6
	sd	a3,-384(s0)	# tmp145, test6
	sd	a4,-376(s0)	# tmp146, test6
	lw	a5,24(a5)		# tmp147,
	sw	a5,-368(s0)	# tmp147, test6
# problem34.c:78:     int correct6[] = {2, 6, 9, 4, 8, 3, 5};
	lla	a5,.LC7	# tmp148,
	ld	a2,0(a5)		# tmp149,
	ld	a3,8(a5)		# tmp150,
	ld	a4,16(a5)		# tmp151,
	sd	a2,-360(s0)	# tmp149, correct6
	sd	a3,-352(s0)	# tmp150, correct6
	sd	a4,-344(s0)	# tmp151, correct6
	lw	a5,24(a5)		# tmp152,
	sw	a5,-336(s0)	# tmp152, correct6
# problem34.c:80:     func0(test6, 7, result6);
	addi	a4,s0,-328	#, tmp153,
	addi	a5,s0,-392	#, tmp154,
	mv	a2,a4	#, tmp153
	li	a1,7		#,
	mv	a0,a5	#, tmp154
	call	func0		#
# problem34.c:81:     assert(issame(result6, correct6, 7));
	addi	a4,s0,-360	#, tmp155,
	addi	a5,s0,-328	#, tmp156,
	li	a2,7		#,
	mv	a1,a4	#, tmp155
	mv	a0,a5	#, tmp156
	call	issame		#
	mv	a5,a0	# tmp157,
	bne	a5,zero,.L25	#, _6,,
# problem34.c:81:     assert(issame(result6, correct6, 7));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,81		#,
	lla	a1,.LC10	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L25:
# problem34.c:83:     int test7[] = {5, 6, 3, 4, 8, 9, 2, 1};
	lla	a5,.LC8	# tmp158,
	ld	a2,0(a5)		# tmp159,
	ld	a3,8(a5)		# tmp160,
	ld	a4,16(a5)		# tmp161,
	ld	a5,24(a5)		# tmp162,
	sd	a2,-296(s0)	# tmp159, test7
	sd	a3,-288(s0)	# tmp160, test7
	sd	a4,-280(s0)	# tmp161, test7
	sd	a5,-272(s0)	# tmp162, test7
# problem34.c:84:     int correct7[] = {2, 6, 3, 4, 8, 9, 5, 1};
	lla	a5,.LC9	# tmp163,
	ld	a2,0(a5)		# tmp164,
	ld	a3,8(a5)		# tmp165,
	ld	a4,16(a5)		# tmp166,
	ld	a5,24(a5)		# tmp167,
	sd	a2,-264(s0)	# tmp164, correct7
	sd	a3,-256(s0)	# tmp165, correct7
	sd	a4,-248(s0)	# tmp166, correct7
	sd	a5,-240(s0)	# tmp167, correct7
# problem34.c:86:     func0(test7, 8, result7);
	addi	a4,s0,-232	#, tmp168,
	addi	a5,s0,-296	#, tmp169,
	mv	a2,a4	#, tmp168
	li	a1,8		#,
	mv	a0,a5	#, tmp169
	call	func0		#
# problem34.c:87:     assert(issame(result7, correct7, 8));
	addi	a4,s0,-264	#, tmp170,
	addi	a5,s0,-232	#, tmp171,
	li	a2,8		#,
	mv	a1,a4	#, tmp170
	mv	a0,a5	#, tmp171
	call	issame		#
	mv	a5,a0	# tmp172,
	bne	a5,zero,.L26	#, _7,,
# problem34.c:87:     assert(issame(result7, correct7, 8));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,87		#,
	lla	a1,.LC10	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L26:
# problem34.c:89:     printf("All tests passed!\n");
	lla	a0,.LC18	#,
	call	puts@plt	#
# problem34.c:90:     return 0;
	li	a5,0		# _44,
# problem34.c:91: }
	mv	a4,a5	# <retval>, _44
	la	a5,__stack_chk_guard		# tmp174,
	ld	a3, -24(s0)	# tmp177, D.2532
	ld	a5, 0(a5)	# tmp175, __stack_chk_guard
	xor	a5, a3, a5	# tmp175, tmp177
	li	a3, 0	# tmp177
	beq	a5,zero,.L28	#, tmp175,,
	call	__stack_chk_fail@plt	#
.L28:
	mv	a0,a4	#, <retval>
	ld	ra,616(sp)		#,
	ld	s0,608(sp)		#,
	addi	sp,sp,624	#,,
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
