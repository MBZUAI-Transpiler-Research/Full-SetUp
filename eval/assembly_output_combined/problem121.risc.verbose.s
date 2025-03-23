	.file	"problem121.c"
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
	sd	a0,-40(s0)	# arr, arr
	mv	a5,a1	# tmp108, arr_size
	mv	a4,a2	# tmp110, k
	sd	a3,-56(s0)	# out, out
	sw	a5,-44(s0)	# tmp109, arr_size
	mv	a5,a4	# tmp111, tmp110
	sw	a5,-48(s0)	# tmp111, k
# problem121.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	sw	zero,-32(s0)	#, i
# problem121.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	j	.L2		#
.L6:
# problem121.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	sw	zero,-28(s0)	#, j
# problem121.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	j	.L3		#
.L5:
# problem121.c:7:             if (arr[j] > arr[j + 1]) {
	lw	a5,-28(s0)		# _1, j
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp112, arr
	add	a5,a4,a5	# _2, _3, tmp112
	lw	a3,0(a5)		# _4, *_3
# problem121.c:7:             if (arr[j] > arr[j + 1]) {
	lw	a5,-28(s0)		# _5, j
	addi	a5,a5,1	#, _6, _5
	slli	a5,a5,2	#, _7, _6
	ld	a4,-40(s0)		# tmp113, arr
	add	a5,a4,a5	# _7, _8, tmp113
	lw	a5,0(a5)		# _9, *_8
# problem121.c:7:             if (arr[j] > arr[j + 1]) {
	mv	a4,a3	# tmp114, _4
	ble	a4,a5,.L4	#, tmp114, tmp115,
# problem121.c:8:                 int temp = arr[j];
	lw	a5,-28(s0)		# _10, j
	slli	a5,a5,2	#, _11, _10
	ld	a4,-40(s0)		# tmp116, arr
	add	a5,a4,a5	# _11, _12, tmp116
# problem121.c:8:                 int temp = arr[j];
	lw	a5,0(a5)		# tmp117, *_12
	sw	a5,-20(s0)	# tmp117, temp
# problem121.c:9:                 arr[j] = arr[j + 1];
	lw	a5,-28(s0)		# _13, j
	addi	a5,a5,1	#, _14, _13
	slli	a5,a5,2	#, _15, _14
	ld	a4,-40(s0)		# tmp118, arr
	add	a4,a4,a5	# _15, _16, tmp118
# problem121.c:9:                 arr[j] = arr[j + 1];
	lw	a5,-28(s0)		# _17, j
	slli	a5,a5,2	#, _18, _17
	ld	a3,-40(s0)		# tmp119, arr
	add	a5,a3,a5	# _18, _19, tmp119
# problem121.c:9:                 arr[j] = arr[j + 1];
	lw	a4,0(a4)		# _20, *_16
# problem121.c:9:                 arr[j] = arr[j + 1];
	sw	a4,0(a5)	# _20, *_19
# problem121.c:10:                 arr[j + 1] = temp;
	lw	a5,-28(s0)		# _21, j
	addi	a5,a5,1	#, _22, _21
	slli	a5,a5,2	#, _23, _22
	ld	a4,-40(s0)		# tmp120, arr
	add	a5,a4,a5	# _23, _24, tmp120
# problem121.c:10:                 arr[j + 1] = temp;
	lw	a4,-20(s0)		# tmp121, temp
	sw	a4,0(a5)	# tmp121, *_24
.L4:
# problem121.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	lw	a5,-28(s0)		# tmp124, j
	addiw	a5,a5,1	#, tmp122, tmp123
	sw	a5,-28(s0)	# tmp122, j
.L3:
# problem121.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	lw	a5,-44(s0)		# tmp127, arr_size
	mv	a4,a5	# tmp126, tmp127
	lw	a5,-32(s0)		# tmp129, i
	subw	a5,a4,a5	# tmp125, tmp126, tmp128
	sext.w	a5,a5	# _25, tmp125
# problem121.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	addiw	a5,a5,-1	#, tmp130, _25
	sext.w	a4,a5	# _26, tmp130
# problem121.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	lw	a5,-28(s0)		# tmp132, j
	sext.w	a5,a5	# tmp133, tmp131
	blt	a5,a4,.L5	#, tmp133, tmp134,
# problem121.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	lw	a5,-32(s0)		# tmp137, i
	addiw	a5,a5,1	#, tmp135, tmp136
	sw	a5,-32(s0)	# tmp135, i
.L2:
# problem121.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	lw	a5,-44(s0)		# tmp140, arr_size
	addiw	a5,a5,-1	#, tmp138, tmp139
	sext.w	a4,a5	# _27, tmp138
# problem121.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	lw	a5,-32(s0)		# tmp142, i
	sext.w	a5,a5	# tmp143, tmp141
	blt	a5,a4,.L6	#, tmp143, tmp144,
# problem121.c:15:     for (int i = 0; i < k; i++) {
	sw	zero,-24(s0)	#, i
# problem121.c:15:     for (int i = 0; i < k; i++) {
	j	.L7		#
.L8:
# problem121.c:16:         out[i] = arr[arr_size - k + i];
	lw	a5,-44(s0)		# tmp147, arr_size
	mv	a4,a5	# tmp146, tmp147
	lw	a5,-48(s0)		# tmp149, k
	subw	a5,a4,a5	# tmp145, tmp146, tmp148
	sext.w	a5,a5	# _28, tmp145
# problem121.c:16:         out[i] = arr[arr_size - k + i];
	lw	a4,-24(s0)		# tmp152, i
	addw	a5,a4,a5	# _28, tmp150, tmp151
	sext.w	a5,a5	# _29, tmp150
# problem121.c:16:         out[i] = arr[arr_size - k + i];
	slli	a5,a5,2	#, _31, _30
	ld	a4,-40(s0)		# tmp153, arr
	add	a4,a4,a5	# _31, _32, tmp153
# problem121.c:16:         out[i] = arr[arr_size - k + i];
	lw	a5,-24(s0)		# _33, i
	slli	a5,a5,2	#, _34, _33
	ld	a3,-56(s0)		# tmp154, out
	add	a5,a3,a5	# _34, _35, tmp154
# problem121.c:16:         out[i] = arr[arr_size - k + i];
	lw	a4,0(a4)		# _36, *_32
# problem121.c:16:         out[i] = arr[arr_size - k + i];
	sw	a4,0(a5)	# _36, *_35
# problem121.c:15:     for (int i = 0; i < k; i++) {
	lw	a5,-24(s0)		# tmp157, i
	addiw	a5,a5,1	#, tmp155, tmp156
	sw	a5,-24(s0)	# tmp155, i
.L7:
# problem121.c:15:     for (int i = 0; i < k; i++) {
	lw	a5,-24(s0)		# tmp159, i
	mv	a4,a5	# tmp158, tmp159
	lw	a5,-48(s0)		# tmp161, k
	sext.w	a4,a4	# tmp162, tmp158
	sext.w	a5,a5	# tmp163, tmp160
	blt	a4,a5,.L8	#, tmp162, tmp163,
# problem121.c:18: }
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
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp82, size
	sw	a5,-52(s0)	# tmp83, size
# problem121.c:27:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem121.c:27:     for (int i = 0; i < size; i++) {
	j	.L10		#
.L13:
# problem121.c:28:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp84, a
	add	a5,a4,a5	# _2, _3, tmp84
	lw	a3,0(a5)		# _4, *_3
# problem121.c:28:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp85, b
	add	a5,a4,a5	# _6, _7, tmp85
	lw	a5,0(a5)		# _8, *_7
# problem121.c:28:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp86, _4
	beq	a4,a5,.L11	#, tmp86, tmp87,
# problem121.c:28:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L12		#
.L11:
# problem121.c:27:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp90, i
	addiw	a5,a5,1	#, tmp88, tmp89
	sw	a5,-20(s0)	# tmp88, i
.L10:
# problem121.c:27:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp92, i
	mv	a4,a5	# tmp91, tmp92
	lw	a5,-52(s0)		# tmp94, size
	sext.w	a4,a4	# tmp95, tmp91
	sext.w	a5,a5	# tmp96, tmp93
	blt	a4,a5,.L13	#, tmp95, tmp96,
# problem121.c:30:     return 1;
	li	a5,1		# _10,
.L12:
# problem121.c:31: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC9:
	.string	"problem121.c"
	.align	3
.LC10:
	.string	"issame(out1, expected1, 3)"
	.align	3
.LC11:
	.string	"issame(out2, expected2, 2)"
	.align	3
.LC12:
	.string	"issame(out3, expected3, 1)"
	.align	3
.LC13:
	.string	"issame(out4, expected4, 3)"
	.align	3
.LC14:
	.string	"issame(out5, expected5, 4)"
	.align	3
.LC15:
	.string	"issame(out6, expected6, 7)"
	.align	3
.LC16:
	.string	"issame(out7, expected7, 2)"
	.align	3
.LC17:
	.string	"issame(out8, expected8, 1)"
	.align	3
.LC18:
	.string	"issame(out9, expected9, 2)"
	.align	3
.LC19:
	.string	"issame(out10, expected10, 2)"
	.align	3
.LC20:
	.string	"issame(out11, expected11, 0)"
	.align	3
.LC0:
	.word	-3
	.word	2
	.word	1
	.word	2
	.word	-1
	.word	-2
	.word	1
	.align	3
.LC1:
	.word	123
	.word	-123
	.word	20
	.word	0
	.word	1
	.word	2
	.word	-3
	.align	3
.LC2:
	.word	-123
	.word	20
	.word	0
	.word	1
	.word	2
	.word	-3
	.align	3
.LC3:
	.word	0
	.word	1
	.word	2
	.word	20
	.align	3
.LC4:
	.word	5
	.word	15
	.word	0
	.word	3
	.word	-13
	.word	-8
	.word	0
	.align	3
.LC5:
	.word	-13
	.word	-8
	.word	0
	.word	0
	.word	3
	.word	5
	.word	15
	.align	3
.LC6:
	.word	-1
	.word	0
	.word	2
	.word	5
	.word	3
	.word	-10
	.align	3
.LC7:
	.word	1
	.word	0
	.word	5
	.word	-7
	.align	3
.LC8:
	.word	1
	.word	2
	.word	3
	.word	-23
	.word	243
	.word	-400
	.word	0
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-544	#,,
	sd	ra,536(sp)	#,
	sd	s0,528(sp)	#,
	addi	s0,sp,544	#,,
# problem121.c:33: int main() {
	la	a5,__stack_chk_guard		# tmp85,
	ld	a4, 0(a5)	# tmp209, __stack_chk_guard
	sd	a4, -24(s0)	# tmp209, D.2550
	li	a4, 0	# tmp209
# problem121.c:34:     int arr1[] = {-3, -4, 5};
	li	a5,-3		# tmp86,
	sw	a5,-408(s0)	# tmp86, arr1[0]
	li	a5,-4		# tmp87,
	sw	a5,-404(s0)	# tmp87, arr1[1]
	li	a5,5		# tmp88,
	sw	a5,-400(s0)	# tmp88, arr1[2]
# problem121.c:36:     func0(arr1, 3, 3, out1);
	addi	a4,s0,-392	#, tmp89,
	addi	a5,s0,-408	#, tmp90,
	mv	a3,a4	#, tmp89
	li	a2,3		#,
	li	a1,3		#,
	mv	a0,a5	#, tmp90
	call	func0		#
# problem121.c:37:     int expected1[] = {-4, -3, 5};
	li	a5,-4		# tmp91,
	sw	a5,-376(s0)	# tmp91, expected1[0]
	li	a5,-3		# tmp92,
	sw	a5,-372(s0)	# tmp92, expected1[1]
	li	a5,5		# tmp93,
	sw	a5,-368(s0)	# tmp93, expected1[2]
# problem121.c:38:     assert(issame(out1, expected1, 3));
	addi	a4,s0,-376	#, tmp94,
	addi	a5,s0,-392	#, tmp95,
	li	a2,3		#,
	mv	a1,a4	#, tmp94
	mv	a0,a5	#, tmp95
	call	issame		#
	mv	a5,a0	# tmp96,
	bne	a5,zero,.L15	#, _1,,
# problem121.c:38:     assert(issame(out1, expected1, 3));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC9	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L15:
# problem121.c:40:     int arr2[] = {4, -4, 4};
	li	a5,4		# tmp97,
	sw	a5,-360(s0)	# tmp97, arr2[0]
	li	a5,-4		# tmp98,
	sw	a5,-356(s0)	# tmp98, arr2[1]
	li	a5,4		# tmp99,
	sw	a5,-352(s0)	# tmp99, arr2[2]
# problem121.c:42:     func0(arr2, 3, 2, out2);
	addi	a4,s0,-488	#, tmp100,
	addi	a5,s0,-360	#, tmp101,
	mv	a3,a4	#, tmp100
	li	a2,2		#,
	li	a1,3		#,
	mv	a0,a5	#, tmp101
	call	func0		#
# problem121.c:43:     int expected2[] = {4, 4};
	li	a5,4		# tmp102,
	sw	a5,-480(s0)	# tmp102, expected2[0]
	li	a5,4		# tmp103,
	sw	a5,-476(s0)	# tmp103, expected2[1]
# problem121.c:44:     assert(issame(out2, expected2, 2));
	addi	a4,s0,-480	#, tmp104,
	addi	a5,s0,-488	#, tmp105,
	li	a2,2		#,
	mv	a1,a4	#, tmp104
	mv	a0,a5	#, tmp105
	call	issame		#
	mv	a5,a0	# tmp106,
	bne	a5,zero,.L16	#, _2,,
# problem121.c:44:     assert(issame(out2, expected2, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,44		#,
	lla	a1,.LC9	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L16:
# problem121.c:46:     int arr3[] = {-3, 2, 1, 2, -1, -2, 1};
	lla	a5,.LC0	# tmp107,
	ld	a2,0(a5)		# tmp108,
	ld	a3,8(a5)		# tmp109,
	ld	a4,16(a5)		# tmp110,
	sd	a2,-216(s0)	# tmp108, arr3
	sd	a3,-208(s0)	# tmp109, arr3
	sd	a4,-200(s0)	# tmp110, arr3
	lw	a5,24(a5)		# tmp111,
	sw	a5,-192(s0)	# tmp111, arr3
# problem121.c:48:     func0(arr3, 7, 1, out3);
	addi	a4,s0,-520	#, tmp112,
	addi	a5,s0,-216	#, tmp113,
	mv	a3,a4	#, tmp112
	li	a2,1		#,
	li	a1,7		#,
	mv	a0,a5	#, tmp113
	call	func0		#
# problem121.c:49:     int expected3[] = {2};
	li	a5,2		# tmp114,
	sw	a5,-512(s0)	# tmp114, expected3[0]
# problem121.c:50:     assert(issame(out3, expected3, 1));
	addi	a4,s0,-512	#, tmp115,
	addi	a5,s0,-520	#, tmp116,
	li	a2,1		#,
	mv	a1,a4	#, tmp115
	mv	a0,a5	#, tmp116
	call	issame		#
	mv	a5,a0	# tmp117,
	bne	a5,zero,.L17	#, _3,,
# problem121.c:50:     assert(issame(out3, expected3, 1));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC9	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L17:
# problem121.c:52:     int arr4[] = {123, -123, 20, 0, 1, 2, -3};
	lla	a5,.LC1	# tmp118,
	ld	a2,0(a5)		# tmp119,
	ld	a3,8(a5)		# tmp120,
	ld	a4,16(a5)		# tmp121,
	sd	a2,-184(s0)	# tmp119, arr4
	sd	a3,-176(s0)	# tmp120, arr4
	sd	a4,-168(s0)	# tmp121, arr4
	lw	a5,24(a5)		# tmp122,
	sw	a5,-160(s0)	# tmp122, arr4
# problem121.c:54:     func0(arr4, 7, 3, out4);
	addi	a4,s0,-344	#, tmp123,
	addi	a5,s0,-184	#, tmp124,
	mv	a3,a4	#, tmp123
	li	a2,3		#,
	li	a1,7		#,
	mv	a0,a5	#, tmp124
	call	func0		#
# problem121.c:55:     int expected4[] = {2, 20, 123};
	li	a5,2		# tmp125,
	sw	a5,-328(s0)	# tmp125, expected4[0]
	li	a5,20		# tmp126,
	sw	a5,-324(s0)	# tmp126, expected4[1]
	li	a5,123		# tmp127,
	sw	a5,-320(s0)	# tmp127, expected4[2]
# problem121.c:56:     assert(issame(out4, expected4, 3));
	addi	a4,s0,-328	#, tmp128,
	addi	a5,s0,-344	#, tmp129,
	li	a2,3		#,
	mv	a1,a4	#, tmp128
	mv	a0,a5	#, tmp129
	call	issame		#
	mv	a5,a0	# tmp130,
	bne	a5,zero,.L18	#, _4,,
# problem121.c:56:     assert(issame(out4, expected4, 3));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,56		#,
	lla	a1,.LC9	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L18:
# problem121.c:58:     int arr5[] = {-123, 20, 0, 1, 2, -3};
	lla	a5,.LC2	# tmp131,
	ld	a4,0(a5)		# tmp132,
	sd	a4,-264(s0)	# tmp132, arr5
	ld	a4,8(a5)		# tmp133,
	sd	a4,-256(s0)	# tmp133, arr5
	ld	a5,16(a5)		# tmp134,
	sd	a5,-248(s0)	# tmp134, arr5
# problem121.c:60:     func0(arr5, 6, 4, out5);
	addi	a4,s0,-312	#, tmp135,
	addi	a5,s0,-264	#, tmp136,
	mv	a3,a4	#, tmp135
	li	a2,4		#,
	li	a1,6		#,
	mv	a0,a5	#, tmp136
	call	func0		#
# problem121.c:61:     int expected5[] = {0, 1, 2, 20};
	lla	a5,.LC3	# tmp137,
	ld	a4,0(a5)		# tmp138,
	sd	a4,-296(s0)	# tmp138, expected5
	ld	a5,8(a5)		# tmp139,
	sd	a5,-288(s0)	# tmp139, expected5
# problem121.c:62:     assert(issame(out5, expected5, 4));
	addi	a4,s0,-296	#, tmp140,
	addi	a5,s0,-312	#, tmp141,
	li	a2,4		#,
	mv	a1,a4	#, tmp140
	mv	a0,a5	#, tmp141
	call	issame		#
	mv	a5,a0	# tmp142,
	bne	a5,zero,.L19	#, _5,,
# problem121.c:62:     assert(issame(out5, expected5, 4));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,62		#,
	lla	a1,.LC9	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L19:
# problem121.c:64:     int arr6[] = {5, 15, 0, 3, -13, -8, 0};
	lla	a5,.LC4	# tmp143,
	ld	a2,0(a5)		# tmp144,
	ld	a3,8(a5)		# tmp145,
	ld	a4,16(a5)		# tmp146,
	sd	a2,-152(s0)	# tmp144, arr6
	sd	a3,-144(s0)	# tmp145, arr6
	sd	a4,-136(s0)	# tmp146, arr6
	lw	a5,24(a5)		# tmp147,
	sw	a5,-128(s0)	# tmp147, arr6
# problem121.c:66:     func0(arr6, 7, 7, out6);
	addi	a4,s0,-120	#, tmp148,
	addi	a5,s0,-152	#, tmp149,
	mv	a3,a4	#, tmp148
	li	a2,7		#,
	li	a1,7		#,
	mv	a0,a5	#, tmp149
	call	func0		#
# problem121.c:67:     int expected6[] = {-13, -8, 0, 0, 3, 5, 15};
	lla	a5,.LC5	# tmp150,
	ld	a2,0(a5)		# tmp151,
	ld	a3,8(a5)		# tmp152,
	ld	a4,16(a5)		# tmp153,
	sd	a2,-88(s0)	# tmp151, expected6
	sd	a3,-80(s0)	# tmp152, expected6
	sd	a4,-72(s0)	# tmp153, expected6
	lw	a5,24(a5)		# tmp154,
	sw	a5,-64(s0)	# tmp154, expected6
# problem121.c:68:     assert(issame(out6, expected6, 7));
	addi	a4,s0,-88	#, tmp155,
	addi	a5,s0,-120	#, tmp156,
	li	a2,7		#,
	mv	a1,a4	#, tmp155
	mv	a0,a5	#, tmp156
	call	issame		#
	mv	a5,a0	# tmp157,
	bne	a5,zero,.L20	#, _6,,
# problem121.c:68:     assert(issame(out6, expected6, 7));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,68		#,
	lla	a1,.LC9	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L20:
# problem121.c:70:     int arr7[] = {-1, 0, 2, 5, 3, -10};
	lla	a5,.LC6	# tmp158,
	ld	a4,0(a5)		# tmp159,
	sd	a4,-240(s0)	# tmp159, arr7
	ld	a4,8(a5)		# tmp160,
	sd	a4,-232(s0)	# tmp160, arr7
	ld	a5,16(a5)		# tmp161,
	sd	a5,-224(s0)	# tmp161, arr7
# problem121.c:72:     func0(arr7, 6, 2, out7);
	addi	a4,s0,-472	#, tmp162,
	addi	a5,s0,-240	#, tmp163,
	mv	a3,a4	#, tmp162
	li	a2,2		#,
	li	a1,6		#,
	mv	a0,a5	#, tmp163
	call	func0		#
# problem121.c:73:     int expected7[] = {3, 5};
	li	a5,3		# tmp164,
	sw	a5,-464(s0)	# tmp164, expected7[0]
	li	a5,5		# tmp165,
	sw	a5,-460(s0)	# tmp165, expected7[1]
# problem121.c:74:     assert(issame(out7, expected7, 2));
	addi	a4,s0,-464	#, tmp166,
	addi	a5,s0,-472	#, tmp167,
	li	a2,2		#,
	mv	a1,a4	#, tmp166
	mv	a0,a5	#, tmp167
	call	issame		#
	mv	a5,a0	# tmp168,
	bne	a5,zero,.L21	#, _7,,
# problem121.c:74:     assert(issame(out7, expected7, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,74		#,
	lla	a1,.LC9	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L21:
# problem121.c:76:     int arr8[] = {1, 0, 5, -7};
	lla	a5,.LC7	# tmp169,
	ld	a4,0(a5)		# tmp170,
	sd	a4,-280(s0)	# tmp170, arr8
	ld	a5,8(a5)		# tmp171,
	sd	a5,-272(s0)	# tmp171, arr8
# problem121.c:78:     func0(arr8, 4, 1, out8);
	addi	a4,s0,-504	#, tmp172,
	addi	a5,s0,-280	#, tmp173,
	mv	a3,a4	#, tmp172
	li	a2,1		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp173
	call	func0		#
# problem121.c:79:     int expected8[] = {5};
	li	a5,5		# tmp174,
	sw	a5,-496(s0)	# tmp174, expected8[0]
# problem121.c:80:     assert(issame(out8, expected8, 1));
	addi	a4,s0,-496	#, tmp175,
	addi	a5,s0,-504	#, tmp176,
	li	a2,1		#,
	mv	a1,a4	#, tmp175
	mv	a0,a5	#, tmp176
	call	issame		#
	mv	a5,a0	# tmp177,
	bne	a5,zero,.L22	#, _8,,
# problem121.c:80:     assert(issame(out8, expected8, 1));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,80		#,
	lla	a1,.LC9	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L22:
# problem121.c:82:     int arr9[] = {4, -4};
	li	a5,4		# tmp178,
	sw	a5,-456(s0)	# tmp178, arr9[0]
	li	a5,-4		# tmp179,
	sw	a5,-452(s0)	# tmp179, arr9[1]
# problem121.c:84:     func0(arr9, 2, 2, out9);
	addi	a4,s0,-448	#, tmp180,
	addi	a5,s0,-456	#, tmp181,
	mv	a3,a4	#, tmp180
	li	a2,2		#,
	li	a1,2		#,
	mv	a0,a5	#, tmp181
	call	func0		#
# problem121.c:85:     int expected9[] = {-4, 4};
	li	a5,-4		# tmp182,
	sw	a5,-440(s0)	# tmp182, expected9[0]
	li	a5,4		# tmp183,
	sw	a5,-436(s0)	# tmp183, expected9[1]
# problem121.c:86:     assert(issame(out9, expected9, 2));
	addi	a4,s0,-440	#, tmp184,
	addi	a5,s0,-448	#, tmp185,
	li	a2,2		#,
	mv	a1,a4	#, tmp184
	mv	a0,a5	#, tmp185
	call	issame		#
	mv	a5,a0	# tmp186,
	bne	a5,zero,.L23	#, _9,,
# problem121.c:86:     assert(issame(out9, expected9, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,86		#,
	lla	a1,.LC9	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L23:
# problem121.c:88:     int arr10[] = {-10, 10};
	li	a5,-10		# tmp187,
	sw	a5,-432(s0)	# tmp187, arr10[0]
	li	a5,10		# tmp188,
	sw	a5,-428(s0)	# tmp188, arr10[1]
# problem121.c:90:     func0(arr10, 2, 2, out10);
	addi	a4,s0,-424	#, tmp189,
	addi	a5,s0,-432	#, tmp190,
	mv	a3,a4	#, tmp189
	li	a2,2		#,
	li	a1,2		#,
	mv	a0,a5	#, tmp190
	call	func0		#
# problem121.c:91:     int expected10[] = {-10, 10};
	li	a5,-10		# tmp191,
	sw	a5,-416(s0)	# tmp191, expected10[0]
	li	a5,10		# tmp192,
	sw	a5,-412(s0)	# tmp192, expected10[1]
# problem121.c:92:     assert(issame(out10, expected10, 2));
	addi	a4,s0,-416	#, tmp193,
	addi	a5,s0,-424	#, tmp194,
	li	a2,2		#,
	mv	a1,a4	#, tmp193
	mv	a0,a5	#, tmp194
	call	issame		#
	mv	a5,a0	# tmp195,
	bne	a5,zero,.L24	#, _10,,
# problem121.c:92:     assert(issame(out10, expected10, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,92		#,
	lla	a1,.LC9	#,
	lla	a0,.LC19	#,
	call	__assert_fail@plt	#
.L24:
# problem121.c:94:     int arr11[] = {1, 2, 3, -23, 243, -400, 0};
	lla	a5,.LC8	# tmp196,
	ld	a2,0(a5)		# tmp197,
	ld	a3,8(a5)		# tmp198,
	ld	a4,16(a5)		# tmp199,
	sd	a2,-56(s0)	# tmp197, arr11
	sd	a3,-48(s0)	# tmp198, arr11
	sd	a4,-40(s0)	# tmp199, arr11
	lw	a5,24(a5)		# tmp200,
	sw	a5,-32(s0)	# tmp200, arr11
# problem121.c:96:     func0(arr11, 7, 0, out11); // Empty output expected
	addi	a4,s0,-536	#, tmp201,
	addi	a5,s0,-56	#, tmp202,
	mv	a3,a4	#, tmp201
	li	a2,0		#,
	li	a1,7		#,
	mv	a0,a5	#, tmp202
	call	func0		#
# problem121.c:98:     assert(issame(out11, expected11, 0));
	addi	a4,s0,-528	#, tmp203,
	addi	a5,s0,-536	#, tmp204,
	li	a2,0		#,
	mv	a1,a4	#, tmp203
	mv	a0,a5	#, tmp204
	call	issame		#
	mv	a5,a0	# tmp205,
	bne	a5,zero,.L25	#, _11,,
# problem121.c:98:     assert(issame(out11, expected11, 0));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,98		#,
	lla	a1,.LC9	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L25:
# problem121.c:100:     return 0;
	li	a5,0		# _82,
# problem121.c:101: }
	mv	a4,a5	# <retval>, _82
	la	a5,__stack_chk_guard		# tmp207,
	ld	a3, -24(s0)	# tmp210, D.2550
	ld	a5, 0(a5)	# tmp208, __stack_chk_guard
	xor	a5, a3, a5	# tmp208, tmp210
	li	a3, 0	# tmp210
	beq	a5,zero,.L27	#, tmp208,,
	call	__stack_chk_fail@plt	#
.L27:
	mv	a0,a4	#, <retval>
	ld	ra,536(sp)		#,
	ld	s0,528(sp)		#,
	addi	sp,sp,544	#,,
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
