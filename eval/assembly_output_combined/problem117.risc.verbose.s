	.file	"problem117.c"
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
	addi	sp,sp,-64	#,,
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# arr, arr
	mv	a5,a1	# tmp101, size
	sw	a5,-60(s0)	# tmp102, size
# problem117.c:6:     for (int i = 0; i < size; i++) {
	sw	zero,-28(s0)	#, i
# problem117.c:6:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L11:
# problem117.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-28(s0)		# tmp105, i
	addiw	a5,a5,1	#, tmp103, tmp104
	sw	a5,-24(s0)	# tmp103, j
# problem117.c:7:         for (int j = i + 1; j < size; j++) {
	j	.L3		#
.L10:
# problem117.c:8:             count_ones = 0;
	sw	zero,-40(s0)	#, count_ones
# problem117.c:9:             x = arr[i];
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-56(s0)		# tmp106, arr
	add	a5,a4,a5	# _2, _3, tmp106
# problem117.c:9:             x = arr[i];
	lw	a5,0(a5)		# tmp107, *_3
	sw	a5,-36(s0)	# tmp107, x
# problem117.c:10:             y = arr[j];
	lw	a5,-24(s0)		# _4, j
	slli	a5,a5,2	#, _5, _4
	ld	a4,-56(s0)		# tmp108, arr
	add	a5,a4,a5	# _5, _6, tmp108
# problem117.c:10:             y = arr[j];
	lw	a5,0(a5)		# tmp109, *_6
	sw	a5,-32(s0)	# tmp109, y
# problem117.c:11:             while (x > 0) {
	j	.L4		#
.L5:
# problem117.c:12:                 count_ones += x & 1;
	lw	a5,-36(s0)		# tmp111, x
	andi	a5,a5,1	#, tmp112, tmp110
	sext.w	a5,a5	# _7, tmp112
# problem117.c:12:                 count_ones += x & 1;
	lw	a4,-40(s0)		# tmp115, count_ones
	addw	a5,a4,a5	# _7, tmp113, tmp114
	sw	a5,-40(s0)	# tmp113, count_ones
# problem117.c:13:                 x >>= 1;
	lw	a5,-36(s0)		# tmp118, x
	sraiw	a5,a5,1	#, tmp116, tmp117
	sw	a5,-36(s0)	# tmp116, x
.L4:
# problem117.c:11:             while (x > 0) {
	lw	a5,-36(s0)		# tmp120, x
	sext.w	a5,a5	# tmp121, tmp119
	bgt	a5,zero,.L5	#, tmp121,,
# problem117.c:15:             x = count_ones;
	lw	a5,-40(s0)		# tmp122, count_ones
	sw	a5,-36(s0)	# tmp122, x
# problem117.c:16:             count_ones = 0;
	sw	zero,-40(s0)	#, count_ones
# problem117.c:17:             while (y > 0) {
	j	.L6		#
.L7:
# problem117.c:18:                 count_ones += y & 1;
	lw	a5,-32(s0)		# tmp124, y
	andi	a5,a5,1	#, tmp125, tmp123
	sext.w	a5,a5	# _8, tmp125
# problem117.c:18:                 count_ones += y & 1;
	lw	a4,-40(s0)		# tmp128, count_ones
	addw	a5,a4,a5	# _8, tmp126, tmp127
	sw	a5,-40(s0)	# tmp126, count_ones
# problem117.c:19:                 y >>= 1;
	lw	a5,-32(s0)		# tmp131, y
	sraiw	a5,a5,1	#, tmp129, tmp130
	sw	a5,-32(s0)	# tmp129, y
.L6:
# problem117.c:17:             while (y > 0) {
	lw	a5,-32(s0)		# tmp133, y
	sext.w	a5,a5	# tmp134, tmp132
	bgt	a5,zero,.L7	#, tmp134,,
# problem117.c:21:             y = count_ones;
	lw	a5,-40(s0)		# tmp135, count_ones
	sw	a5,-32(s0)	# tmp135, y
# problem117.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	lw	a5,-32(s0)		# tmp137, y
	mv	a4,a5	# tmp136, tmp137
	lw	a5,-36(s0)		# tmp139, x
	sext.w	a4,a4	# tmp140, tmp136
	sext.w	a5,a5	# tmp141, tmp138
	blt	a4,a5,.L8	#, tmp140, tmp141,
# problem117.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	lw	a5,-32(s0)		# tmp143, y
	mv	a4,a5	# tmp142, tmp143
	lw	a5,-36(s0)		# tmp145, x
	sext.w	a4,a4	# tmp146, tmp142
	sext.w	a5,a5	# tmp147, tmp144
	bne	a4,a5,.L9	#, tmp146, tmp147,
# problem117.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	lw	a5,-24(s0)		# _9, j
	slli	a5,a5,2	#, _10, _9
	ld	a4,-56(s0)		# tmp148, arr
	add	a5,a4,a5	# _10, _11, tmp148
	lw	a3,0(a5)		# _12, *_11
# problem117.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	lw	a5,-28(s0)		# _13, i
	slli	a5,a5,2	#, _14, _13
	ld	a4,-56(s0)		# tmp149, arr
	add	a5,a4,a5	# _14, _15, tmp149
	lw	a5,0(a5)		# _16, *_15
# problem117.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	mv	a4,a3	# tmp150, _12
	bge	a4,a5,.L9	#, tmp150, tmp151,
.L8:
# problem117.c:23:                 temp = arr[i];
	lw	a5,-28(s0)		# _17, i
	slli	a5,a5,2	#, _18, _17
	ld	a4,-56(s0)		# tmp152, arr
	add	a5,a4,a5	# _18, _19, tmp152
# problem117.c:23:                 temp = arr[i];
	lw	a5,0(a5)		# tmp153, *_19
	sw	a5,-20(s0)	# tmp153, temp
# problem117.c:24:                 arr[i] = arr[j];
	lw	a5,-24(s0)		# _20, j
	slli	a5,a5,2	#, _21, _20
	ld	a4,-56(s0)		# tmp154, arr
	add	a4,a4,a5	# _21, _22, tmp154
# problem117.c:24:                 arr[i] = arr[j];
	lw	a5,-28(s0)		# _23, i
	slli	a5,a5,2	#, _24, _23
	ld	a3,-56(s0)		# tmp155, arr
	add	a5,a3,a5	# _24, _25, tmp155
# problem117.c:24:                 arr[i] = arr[j];
	lw	a4,0(a4)		# _26, *_22
# problem117.c:24:                 arr[i] = arr[j];
	sw	a4,0(a5)	# _26, *_25
# problem117.c:25:                 arr[j] = temp;
	lw	a5,-24(s0)		# _27, j
	slli	a5,a5,2	#, _28, _27
	ld	a4,-56(s0)		# tmp156, arr
	add	a5,a4,a5	# _28, _29, tmp156
# problem117.c:25:                 arr[j] = temp;
	lw	a4,-20(s0)		# tmp157, temp
	sw	a4,0(a5)	# tmp157, *_29
.L9:
# problem117.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-24(s0)		# tmp160, j
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-24(s0)	# tmp158, j
.L3:
# problem117.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-24(s0)		# tmp162, j
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-60(s0)		# tmp164, size
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L10	#, tmp165, tmp166,
# problem117.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp169, i
	addiw	a5,a5,1	#, tmp167, tmp168
	sw	a5,-28(s0)	# tmp167, i
.L2:
# problem117.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp171, i
	mv	a4,a5	# tmp170, tmp171
	lw	a5,-60(s0)		# tmp173, size
	sext.w	a4,a4	# tmp174, tmp170
	sext.w	a5,a5	# tmp175, tmp172
	blt	a4,a5,.L11	#, tmp174, tmp175,
# problem117.c:29: }
	nop	
	nop	
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
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
	mv	a5,a1	# tmp82, size_a
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp84, size_b
	sw	a5,-44(s0)	# tmp83, size_a
	mv	a5,a4	# tmp85, tmp84
	sw	a5,-48(s0)	# tmp85, size_b
# problem117.c:37:     if (size_a != size_b) return 0;
	lw	a5,-44(s0)		# tmp87, size_a
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-48(s0)		# tmp89, size_b
	sext.w	a4,a4	# tmp90, tmp86
	sext.w	a5,a5	# tmp91, tmp88
	beq	a4,a5,.L13	#, tmp90, tmp91,
# problem117.c:37:     if (size_a != size_b) return 0;
	li	a5,0		# _10,
	j	.L14		#
.L13:
# problem117.c:38:     for (int i = 0; i < size_a; i++) {
	sw	zero,-20(s0)	#, i
# problem117.c:38:     for (int i = 0; i < size_a; i++) {
	j	.L15		#
.L17:
# problem117.c:39:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp92, a
	add	a5,a4,a5	# _2, _3, tmp92
	lw	a3,0(a5)		# _4, *_3
# problem117.c:39:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp93, b
	add	a5,a4,a5	# _6, _7, tmp93
	lw	a5,0(a5)		# _8, *_7
# problem117.c:39:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp94, _4
	beq	a4,a5,.L16	#, tmp94, tmp95,
# problem117.c:39:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L14		#
.L16:
# problem117.c:38:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L15:
# problem117.c:38:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-44(s0)		# tmp102, size_a
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L17	#, tmp103, tmp104,
# problem117.c:41:     return 1;
	li	a5,1		# _10,
.L14:
# problem117.c:42: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC9:
	.string	"problem117.c"
	.align	3
.LC10:
	.string	"issame(test1, 5, expected1, 5)"
	.align	3
.LC11:
	.string	"issame(test3, 5, expected3, 5)"
	.align	3
.LC12:
	.string	"issame(test4, 11, expected4, 11)"
	.align	3
.LC13:
	.string	"issame(test5, 6, expected5, 6)"
	.align	3
.LC14:
	.string	"issame(test6, 5, expected6, 5)"
	.align	3
.LC15:
	.string	"All tests passed!"
	.align	3
.LC0:
	.word	1
	.word	5
	.word	2
	.word	3
	.word	4
	.align	3
.LC1:
	.word	1
	.word	2
	.word	4
	.word	3
	.word	5
	.align	3
.LC2:
	.word	1
	.word	0
	.word	2
	.word	3
	.word	4
	.align	3
.LC3:
	.word	0
	.word	1
	.word	2
	.word	4
	.word	3
	.align	3
.LC4:
	.word	2
	.word	5
	.word	77
	.word	4
	.word	5
	.word	3
	.word	5
	.word	7
	.word	2
	.word	3
	.word	4
	.align	3
.LC5:
	.word	2
	.word	2
	.word	4
	.word	4
	.word	3
	.word	3
	.word	5
	.word	5
	.word	5
	.word	7
	.word	77
	.align	3
.LC6:
	.word	3
	.word	6
	.word	44
	.word	12
	.word	32
	.word	5
	.align	3
.LC7:
	.word	32
	.word	3
	.word	5
	.word	6
	.word	12
	.word	44
	.align	3
.LC8:
	.word	2
	.word	4
	.word	8
	.word	16
	.word	32
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-320	#,,
	sd	ra,312(sp)	#,
	sd	s0,304(sp)	#,
	addi	s0,sp,320	#,,
# problem117.c:44: int main() {
	la	a5,__stack_chk_guard		# tmp79,
	ld	a4, 0(a5)	# tmp149, __stack_chk_guard
	sd	a4, -24(s0)	# tmp149, D.2512
	li	a4, 0	# tmp149
# problem117.c:45:     int test1[] = {1, 5, 2, 3, 4};
	lla	a5,.LC0	# tmp80,
	ld	a4,0(a5)		# tmp81,
	sd	a4,-312(s0)	# tmp81, test1
	ld	a4,8(a5)		# tmp82,
	sd	a4,-304(s0)	# tmp82, test1
	lw	a5,16(a5)		# tmp83,
	sw	a5,-296(s0)	# tmp83, test1
# problem117.c:46:     int expected1[] = {1, 2, 4, 3, 5};
	lla	a5,.LC1	# tmp84,
	ld	a4,0(a5)		# tmp85,
	sd	a4,-288(s0)	# tmp85, expected1
	ld	a4,8(a5)		# tmp86,
	sd	a4,-280(s0)	# tmp86, expected1
	lw	a5,16(a5)		# tmp87,
	sw	a5,-272(s0)	# tmp87, expected1
# problem117.c:47:     func0(test1, 5);
	addi	a5,s0,-312	#, tmp88,
	li	a1,5		#,
	mv	a0,a5	#, tmp88
	call	func0		#
# problem117.c:48:     assert(issame(test1, 5, expected1, 5));
	addi	a4,s0,-288	#, tmp89,
	addi	a5,s0,-312	#, tmp90,
	li	a3,5		#,
	mv	a2,a4	#, tmp89
	li	a1,5		#,
	mv	a0,a5	#, tmp90
	call	issame		#
	mv	a5,a0	# tmp91,
	bne	a5,zero,.L19	#, _1,,
# problem117.c:48:     assert(issame(test1, 5, expected1, 5));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,48		#,
	lla	a1,.LC9	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L19:
# problem117.c:50:     int test3[] = {1, 0, 2, 3, 4};
	lla	a5,.LC2	# tmp92,
	ld	a4,0(a5)		# tmp93,
	sd	a4,-264(s0)	# tmp93, test3
	ld	a4,8(a5)		# tmp94,
	sd	a4,-256(s0)	# tmp94, test3
	lw	a5,16(a5)		# tmp95,
	sw	a5,-248(s0)	# tmp95, test3
# problem117.c:51:     int expected3[] = {0, 1, 2, 4, 3};
	lla	a5,.LC3	# tmp96,
	ld	a4,0(a5)		# tmp97,
	sd	a4,-240(s0)	# tmp97, expected3
	ld	a4,8(a5)		# tmp98,
	sd	a4,-232(s0)	# tmp98, expected3
	lw	a5,16(a5)		# tmp99,
	sw	a5,-224(s0)	# tmp99, expected3
# problem117.c:52:     func0(test3, 5);
	addi	a5,s0,-264	#, tmp100,
	li	a1,5		#,
	mv	a0,a5	#, tmp100
	call	func0		#
# problem117.c:53:     assert(issame(test3, 5, expected3, 5));
	addi	a4,s0,-240	#, tmp101,
	addi	a5,s0,-264	#, tmp102,
	li	a3,5		#,
	mv	a2,a4	#, tmp101
	li	a1,5		#,
	mv	a0,a5	#, tmp102
	call	issame		#
	mv	a5,a0	# tmp103,
	bne	a5,zero,.L20	#, _2,,
# problem117.c:53:     assert(issame(test3, 5, expected3, 5));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,53		#,
	lla	a1,.LC9	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L20:
# problem117.c:55:     int test4[] = {2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4};
	lla	a5,.LC4	# tmp104,
	ld	a0,0(a5)		# tmp105,
	ld	a1,8(a5)		# tmp106,
	ld	a2,16(a5)		# tmp107,
	ld	a3,24(a5)		# tmp108,
	ld	a4,32(a5)		# tmp109,
	sd	a0,-120(s0)	# tmp105, test4
	sd	a1,-112(s0)	# tmp106, test4
	sd	a2,-104(s0)	# tmp107, test4
	sd	a3,-96(s0)	# tmp108, test4
	sd	a4,-88(s0)	# tmp109, test4
	lw	a5,40(a5)		# tmp110,
	sw	a5,-80(s0)	# tmp110, test4
# problem117.c:56:     int expected4[] = {2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77};
	lla	a5,.LC5	# tmp111,
	ld	a0,0(a5)		# tmp112,
	ld	a1,8(a5)		# tmp113,
	ld	a2,16(a5)		# tmp114,
	ld	a3,24(a5)		# tmp115,
	ld	a4,32(a5)		# tmp116,
	sd	a0,-72(s0)	# tmp112, expected4
	sd	a1,-64(s0)	# tmp113, expected4
	sd	a2,-56(s0)	# tmp114, expected4
	sd	a3,-48(s0)	# tmp115, expected4
	sd	a4,-40(s0)	# tmp116, expected4
	lw	a5,40(a5)		# tmp117,
	sw	a5,-32(s0)	# tmp117, expected4
# problem117.c:57:     func0(test4, 11);
	addi	a5,s0,-120	#, tmp118,
	li	a1,11		#,
	mv	a0,a5	#, tmp118
	call	func0		#
# problem117.c:58:     assert(issame(test4, 11, expected4, 11));
	addi	a4,s0,-72	#, tmp119,
	addi	a5,s0,-120	#, tmp120,
	li	a3,11		#,
	mv	a2,a4	#, tmp119
	li	a1,11		#,
	mv	a0,a5	#, tmp120
	call	issame		#
	mv	a5,a0	# tmp121,
	bne	a5,zero,.L21	#, _3,,
# problem117.c:58:     assert(issame(test4, 11, expected4, 11));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,58		#,
	lla	a1,.LC9	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L21:
# problem117.c:60:     int test5[] = {3, 6, 44, 12, 32, 5};
	lla	a5,.LC6	# tmp122,
	ld	a4,0(a5)		# tmp123,
	sd	a4,-168(s0)	# tmp123, test5
	ld	a4,8(a5)		# tmp124,
	sd	a4,-160(s0)	# tmp124, test5
	ld	a5,16(a5)		# tmp125,
	sd	a5,-152(s0)	# tmp125, test5
# problem117.c:61:     int expected5[] = {32, 3, 5, 6, 12, 44};
	lla	a5,.LC7	# tmp126,
	ld	a4,0(a5)		# tmp127,
	sd	a4,-144(s0)	# tmp127, expected5
	ld	a4,8(a5)		# tmp128,
	sd	a4,-136(s0)	# tmp128, expected5
	ld	a5,16(a5)		# tmp129,
	sd	a5,-128(s0)	# tmp129, expected5
# problem117.c:62:     func0(test5, 6);
	addi	a5,s0,-168	#, tmp130,
	li	a1,6		#,
	mv	a0,a5	#, tmp130
	call	func0		#
# problem117.c:63:     assert(issame(test5, 6, expected5, 6));
	addi	a4,s0,-144	#, tmp131,
	addi	a5,s0,-168	#, tmp132,
	li	a3,6		#,
	mv	a2,a4	#, tmp131
	li	a1,6		#,
	mv	a0,a5	#, tmp132
	call	issame		#
	mv	a5,a0	# tmp133,
	bne	a5,zero,.L22	#, _4,,
# problem117.c:63:     assert(issame(test5, 6, expected5, 6));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,63		#,
	lla	a1,.LC9	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L22:
# problem117.c:65:     int test6[] = {2, 4, 8, 16, 32};
	lla	a5,.LC8	# tmp134,
	ld	a4,0(a5)		# tmp135,
	sd	a4,-216(s0)	# tmp135, test6
	ld	a4,8(a5)		# tmp136,
	sd	a4,-208(s0)	# tmp136, test6
	lw	a5,16(a5)		# tmp137,
	sw	a5,-200(s0)	# tmp137, test6
# problem117.c:66:     int expected6[] = {2, 4, 8, 16, 32};
	lla	a5,.LC8	# tmp138,
	ld	a4,0(a5)		# tmp139,
	sd	a4,-192(s0)	# tmp139, expected6
	ld	a4,8(a5)		# tmp140,
	sd	a4,-184(s0)	# tmp140, expected6
	lw	a5,16(a5)		# tmp141,
	sw	a5,-176(s0)	# tmp141, expected6
# problem117.c:67:     func0(test6, 5);
	addi	a5,s0,-216	#, tmp142,
	li	a1,5		#,
	mv	a0,a5	#, tmp142
	call	func0		#
# problem117.c:68:     assert(issame(test6, 5, expected6, 5));
	addi	a4,s0,-192	#, tmp143,
	addi	a5,s0,-216	#, tmp144,
	li	a3,5		#,
	mv	a2,a4	#, tmp143
	li	a1,5		#,
	mv	a0,a5	#, tmp144
	call	issame		#
	mv	a5,a0	# tmp145,
	bne	a5,zero,.L23	#, _5,,
# problem117.c:68:     assert(issame(test6, 5, expected6, 5));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,68		#,
	lla	a1,.LC9	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L23:
# problem117.c:70:     printf("All tests passed!\n");
	lla	a0,.LC15	#,
	call	puts@plt	#
# problem117.c:71:     return 0;
	li	a5,0		# _33,
# problem117.c:72: }
	mv	a4,a5	# <retval>, _33
	la	a5,__stack_chk_guard		# tmp147,
	ld	a3, -24(s0)	# tmp150, D.2512
	ld	a5, 0(a5)	# tmp148, __stack_chk_guard
	xor	a5, a3, a5	# tmp148, tmp150
	li	a3, 0	# tmp150
	beq	a5,zero,.L25	#, tmp148,,
	call	__stack_chk_fail@plt	#
.L25:
	mv	a0,a4	#, <retval>
	ld	ra,312(sp)		#,
	ld	s0,304(sp)		#,
	addi	sp,sp,320	#,,
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
