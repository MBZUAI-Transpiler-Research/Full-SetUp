	.file	"problem121.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# arr, arr
	mv	a5,a1	# tmp170, arr_size
	mv	a4,a2	# tmp172, k
	sd	a3,-56(s0)	# out, out
	sw	a5,-44(s0)	# tmp171, arr_size
	mv	a5,a4	# tmp173, tmp172
	sw	a5,-48(s0)	# tmp173, k
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
	ld	a4,-40(s0)		# tmp174, arr
	add	a5,a4,a5	# _2, _3, tmp174
	lw	a3,0(a5)		# _4, *_3
# problem121.c:7:             if (arr[j] > arr[j + 1]) {
	lw	a5,-28(s0)		# _5, j
	addi	a5,a5,1	#, _6, _5
	slli	a5,a5,2	#, _7, _6
	ld	a4,-40(s0)		# tmp175, arr
	add	a5,a4,a5	# _7, _8, tmp175
	lw	a5,0(a5)		# _9, *_8
# problem121.c:7:             if (arr[j] > arr[j + 1]) {
	mv	a4,a3	# tmp176, _4
	ble	a4,a5,.L4	#, tmp176, tmp177,
# problem121.c:8:                 int temp = arr[j];
	lw	a5,-28(s0)		# _10, j
	slli	a5,a5,2	#, _11, _10
	ld	a4,-40(s0)		# tmp178, arr
	add	a5,a4,a5	# _11, _12, tmp178
# problem121.c:8:                 int temp = arr[j];
	lw	a5,0(a5)		# tmp179, *_12
	sw	a5,-20(s0)	# tmp179, temp
# problem121.c:9:                 arr[j] = arr[j + 1];
	lw	a5,-28(s0)		# _13, j
	addi	a5,a5,1	#, _14, _13
	slli	a5,a5,2	#, _15, _14
	ld	a4,-40(s0)		# tmp180, arr
	add	a4,a4,a5	# _15, _16, tmp180
# problem121.c:9:                 arr[j] = arr[j + 1];
	lw	a5,-28(s0)		# _17, j
	slli	a5,a5,2	#, _18, _17
	ld	a3,-40(s0)		# tmp181, arr
	add	a5,a3,a5	# _18, _19, tmp181
# problem121.c:9:                 arr[j] = arr[j + 1];
	lw	a4,0(a4)		# _20, *_16
# problem121.c:9:                 arr[j] = arr[j + 1];
	sw	a4,0(a5)	# _20, *_19
# problem121.c:10:                 arr[j + 1] = temp;
	lw	a5,-28(s0)		# _21, j
	addi	a5,a5,1	#, _22, _21
	slli	a5,a5,2	#, _23, _22
	ld	a4,-40(s0)		# tmp182, arr
	add	a5,a4,a5	# _23, _24, tmp182
# problem121.c:10:                 arr[j + 1] = temp;
	lw	a4,-20(s0)		# tmp183, temp
	sw	a4,0(a5)	# tmp183, *_24
.L4:
# problem121.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	lw	a5,-28(s0)		# tmp186, j
	addiw	a5,a5,1	#, tmp184, tmp185
	sw	a5,-28(s0)	# tmp184, j
.L3:
# problem121.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	lw	a5,-44(s0)		# tmp189, arr_size
	mv	a4,a5	# tmp188, tmp189
	lw	a5,-32(s0)		# tmp191, i
	subw	a5,a4,a5	# tmp187, tmp188, tmp190
	sext.w	a5,a5	# _25, tmp187
# problem121.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	addiw	a5,a5,-1	#, tmp192, _25
	sext.w	a4,a5	# _26, tmp192
# problem121.c:6:         for (int j = 0; j < arr_size - i - 1; j++) {
	lw	a5,-28(s0)		# tmp194, j
	sext.w	a5,a5	# tmp195, tmp193
	blt	a5,a4,.L5	#, tmp195, tmp196,
# problem121.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	lw	a5,-32(s0)		# tmp199, i
	addiw	a5,a5,1	#, tmp197, tmp198
	sw	a5,-32(s0)	# tmp197, i
.L2:
# problem121.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	lw	a5,-44(s0)		# tmp202, arr_size
	addiw	a5,a5,-1	#, tmp200, tmp201
	sext.w	a4,a5	# _27, tmp200
# problem121.c:5:     for (int i = 0; i < arr_size - 1; i++) {
	lw	a5,-32(s0)		# tmp204, i
	sext.w	a5,a5	# tmp205, tmp203
	blt	a5,a4,.L6	#, tmp205, tmp206,
# problem121.c:15:     for (int i = 0; i < k; i++) {
	sw	zero,-24(s0)	#, i
# problem121.c:15:     for (int i = 0; i < k; i++) {
	j	.L7		#
.L8:
# problem121.c:16:         out[i] = arr[arr_size - k + i];
	lw	a5,-44(s0)		# tmp209, arr_size
	mv	a4,a5	# tmp208, tmp209
	lw	a5,-48(s0)		# tmp211, k
	subw	a5,a4,a5	# tmp207, tmp208, tmp210
	sext.w	a5,a5	# _28, tmp207
# problem121.c:16:         out[i] = arr[arr_size - k + i];
	lw	a4,-24(s0)		# tmp214, i
	addw	a5,a4,a5	# _28, tmp212, tmp213
	sext.w	a5,a5	# _29, tmp212
# problem121.c:16:         out[i] = arr[arr_size - k + i];
	slli	a5,a5,2	#, _31, _30
	ld	a4,-40(s0)		# tmp215, arr
	add	a4,a4,a5	# _31, _32, tmp215
# problem121.c:16:         out[i] = arr[arr_size - k + i];
	lw	a5,-24(s0)		# _33, i
	slli	a5,a5,2	#, _34, _33
	ld	a3,-56(s0)		# tmp216, out
	add	a5,a3,a5	# _34, _35, tmp216
# problem121.c:16:         out[i] = arr[arr_size - k + i];
	lw	a4,0(a4)		# _36, *_32
# problem121.c:16:         out[i] = arr[arr_size - k + i];
	sw	a4,0(a5)	# _36, *_35
# problem121.c:15:     for (int i = 0; i < k; i++) {
	lw	a5,-24(s0)		# tmp219, i
	addiw	a5,a5,1	#, tmp217, tmp218
	sw	a5,-24(s0)	# tmp217, i
.L7:
# problem121.c:15:     for (int i = 0; i < k; i++) {
	lw	a5,-24(s0)		# tmp221, i
	mv	a4,a5	# tmp220, tmp221
	lw	a5,-48(s0)		# tmp223, k
	sext.w	a4,a4	# tmp224, tmp220
	sext.w	a5,a5	# tmp225, tmp222
	blt	a4,a5,.L8	#, tmp224, tmp225,
# problem121.c:18: }
	nop	
	nop	
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
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
	mv	a5,a2	# tmp144, size
	sw	a5,-52(s0)	# tmp145, size
# problem121.c:27:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem121.c:27:     for (int i = 0; i < size; i++) {
	j	.L10		#
.L13:
# problem121.c:28:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp146, a
	add	a5,a4,a5	# _2, _3, tmp146
	lw	a3,0(a5)		# _4, *_3
# problem121.c:28:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp147, b
	add	a5,a4,a5	# _6, _7, tmp147
	lw	a5,0(a5)		# _8, *_7
# problem121.c:28:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp148, _4
	beq	a4,a5,.L11	#, tmp148, tmp149,
# problem121.c:28:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem121.c:28:         if (a[i] != b[i]) return 0;
	j	.L12		#
.L11:
# problem121.c:27:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp152, i
	addiw	a5,a5,1	#, tmp150, tmp151
	sw	a5,-20(s0)	# tmp150, i
.L10:
# problem121.c:27:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp154, i
	mv	a4,a5	# tmp153, tmp154
	lw	a5,-52(s0)		# tmp156, size
	sext.w	a4,a4	# tmp157, tmp153
	sext.w	a5,a5	# tmp158, tmp155
	blt	a4,a5,.L13	#, tmp157, tmp158,
# problem121.c:30:     return 1;
	li	a5,1		# _10,
.L12:
# problem121.c:31: }
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
.LFB8:
	.cfi_startproc
	addi	sp,sp,-544	#,,
	.cfi_def_cfa_offset 544
	sd	ra,536(sp)	#,
	sd	s0,528(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,544	#,,
	.cfi_def_cfa 8, 0
# problem121.c:33: int main() {
	la	a5,__stack_chk_guard		# tmp147,
	ld	a4, 0(a5)	# tmp271, __stack_chk_guard
	sd	a4, -24(s0)	# tmp271, D.3375
	li	a4, 0	# tmp271
# problem121.c:34:     int arr1[] = {-3, -4, 5};
	li	a5,-3		# tmp148,
	sw	a5,-408(s0)	# tmp148, arr1[0]
	li	a5,-4		# tmp149,
	sw	a5,-404(s0)	# tmp149, arr1[1]
	li	a5,5		# tmp150,
	sw	a5,-400(s0)	# tmp150, arr1[2]
# problem121.c:36:     func0(arr1, 3, 3, out1);
	addi	a4,s0,-392	#, tmp151,
	addi	a5,s0,-408	#, tmp152,
	mv	a3,a4	#, tmp151
	li	a2,3		#,
	li	a1,3		#,
	mv	a0,a5	#, tmp152
	call	func0		#
# problem121.c:37:     int expected1[] = {-4, -3, 5};
	li	a5,-4		# tmp153,
	sw	a5,-376(s0)	# tmp153, expected1[0]
	li	a5,-3		# tmp154,
	sw	a5,-372(s0)	# tmp154, expected1[1]
	li	a5,5		# tmp155,
	sw	a5,-368(s0)	# tmp155, expected1[2]
# problem121.c:38:     assert(issame(out1, expected1, 3));
	addi	a4,s0,-376	#, tmp156,
	addi	a5,s0,-392	#, tmp157,
	li	a2,3		#,
	mv	a1,a4	#, tmp156
	mv	a0,a5	#, tmp157
	call	issame		#
	mv	a5,a0	# tmp158,
# problem121.c:38:     assert(issame(out1, expected1, 3));
	bne	a5,zero,.L15	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC9	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L15:
# problem121.c:40:     int arr2[] = {4, -4, 4};
	li	a5,4		# tmp159,
	sw	a5,-360(s0)	# tmp159, arr2[0]
	li	a5,-4		# tmp160,
	sw	a5,-356(s0)	# tmp160, arr2[1]
	li	a5,4		# tmp161,
	sw	a5,-352(s0)	# tmp161, arr2[2]
# problem121.c:42:     func0(arr2, 3, 2, out2);
	addi	a4,s0,-488	#, tmp162,
	addi	a5,s0,-360	#, tmp163,
	mv	a3,a4	#, tmp162
	li	a2,2		#,
	li	a1,3		#,
	mv	a0,a5	#, tmp163
	call	func0		#
# problem121.c:43:     int expected2[] = {4, 4};
	li	a5,4		# tmp164,
	sw	a5,-480(s0)	# tmp164, expected2[0]
	li	a5,4		# tmp165,
	sw	a5,-476(s0)	# tmp165, expected2[1]
# problem121.c:44:     assert(issame(out2, expected2, 2));
	addi	a4,s0,-480	#, tmp166,
	addi	a5,s0,-488	#, tmp167,
	li	a2,2		#,
	mv	a1,a4	#, tmp166
	mv	a0,a5	#, tmp167
	call	issame		#
	mv	a5,a0	# tmp168,
# problem121.c:44:     assert(issame(out2, expected2, 2));
	bne	a5,zero,.L16	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,44		#,
	lla	a1,.LC9	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L16:
# problem121.c:46:     int arr3[] = {-3, 2, 1, 2, -1, -2, 1};
	lla	a5,.LC0	# tmp169,
	ld	a2,0(a5)		# tmp170,
	ld	a3,8(a5)		# tmp171,
	ld	a4,16(a5)		# tmp172,
	sd	a2,-216(s0)	# tmp170, arr3
	sd	a3,-208(s0)	# tmp171, arr3
	sd	a4,-200(s0)	# tmp172, arr3
	lw	a5,24(a5)		# tmp173,
	sw	a5,-192(s0)	# tmp173, arr3
# problem121.c:48:     func0(arr3, 7, 1, out3);
	addi	a4,s0,-520	#, tmp174,
	addi	a5,s0,-216	#, tmp175,
	mv	a3,a4	#, tmp174
	li	a2,1		#,
	li	a1,7		#,
	mv	a0,a5	#, tmp175
	call	func0		#
# problem121.c:49:     int expected3[] = {2};
	li	a5,2		# tmp176,
	sw	a5,-512(s0)	# tmp176, expected3[0]
# problem121.c:50:     assert(issame(out3, expected3, 1));
	addi	a4,s0,-512	#, tmp177,
	addi	a5,s0,-520	#, tmp178,
	li	a2,1		#,
	mv	a1,a4	#, tmp177
	mv	a0,a5	#, tmp178
	call	issame		#
	mv	a5,a0	# tmp179,
# problem121.c:50:     assert(issame(out3, expected3, 1));
	bne	a5,zero,.L17	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC9	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L17:
# problem121.c:52:     int arr4[] = {123, -123, 20, 0, 1, 2, -3};
	lla	a5,.LC1	# tmp180,
	ld	a2,0(a5)		# tmp181,
	ld	a3,8(a5)		# tmp182,
	ld	a4,16(a5)		# tmp183,
	sd	a2,-184(s0)	# tmp181, arr4
	sd	a3,-176(s0)	# tmp182, arr4
	sd	a4,-168(s0)	# tmp183, arr4
	lw	a5,24(a5)		# tmp184,
	sw	a5,-160(s0)	# tmp184, arr4
# problem121.c:54:     func0(arr4, 7, 3, out4);
	addi	a4,s0,-344	#, tmp185,
	addi	a5,s0,-184	#, tmp186,
	mv	a3,a4	#, tmp185
	li	a2,3		#,
	li	a1,7		#,
	mv	a0,a5	#, tmp186
	call	func0		#
# problem121.c:55:     int expected4[] = {2, 20, 123};
	li	a5,2		# tmp187,
	sw	a5,-328(s0)	# tmp187, expected4[0]
	li	a5,20		# tmp188,
	sw	a5,-324(s0)	# tmp188, expected4[1]
	li	a5,123		# tmp189,
	sw	a5,-320(s0)	# tmp189, expected4[2]
# problem121.c:56:     assert(issame(out4, expected4, 3));
	addi	a4,s0,-328	#, tmp190,
	addi	a5,s0,-344	#, tmp191,
	li	a2,3		#,
	mv	a1,a4	#, tmp190
	mv	a0,a5	#, tmp191
	call	issame		#
	mv	a5,a0	# tmp192,
# problem121.c:56:     assert(issame(out4, expected4, 3));
	bne	a5,zero,.L18	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,56		#,
	lla	a1,.LC9	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L18:
# problem121.c:58:     int arr5[] = {-123, 20, 0, 1, 2, -3};
	lla	a5,.LC2	# tmp193,
	ld	a4,0(a5)		# tmp194,
	sd	a4,-264(s0)	# tmp194, arr5
	ld	a4,8(a5)		# tmp195,
	sd	a4,-256(s0)	# tmp195, arr5
	ld	a5,16(a5)		# tmp196,
	sd	a5,-248(s0)	# tmp196, arr5
# problem121.c:60:     func0(arr5, 6, 4, out5);
	addi	a4,s0,-312	#, tmp197,
	addi	a5,s0,-264	#, tmp198,
	mv	a3,a4	#, tmp197
	li	a2,4		#,
	li	a1,6		#,
	mv	a0,a5	#, tmp198
	call	func0		#
# problem121.c:61:     int expected5[] = {0, 1, 2, 20};
	lla	a5,.LC3	# tmp199,
	ld	a4,0(a5)		# tmp200,
	sd	a4,-296(s0)	# tmp200, expected5
	ld	a5,8(a5)		# tmp201,
	sd	a5,-288(s0)	# tmp201, expected5
# problem121.c:62:     assert(issame(out5, expected5, 4));
	addi	a4,s0,-296	#, tmp202,
	addi	a5,s0,-312	#, tmp203,
	li	a2,4		#,
	mv	a1,a4	#, tmp202
	mv	a0,a5	#, tmp203
	call	issame		#
	mv	a5,a0	# tmp204,
# problem121.c:62:     assert(issame(out5, expected5, 4));
	bne	a5,zero,.L19	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,62		#,
	lla	a1,.LC9	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L19:
# problem121.c:64:     int arr6[] = {5, 15, 0, 3, -13, -8, 0};
	lla	a5,.LC4	# tmp205,
	ld	a2,0(a5)		# tmp206,
	ld	a3,8(a5)		# tmp207,
	ld	a4,16(a5)		# tmp208,
	sd	a2,-152(s0)	# tmp206, arr6
	sd	a3,-144(s0)	# tmp207, arr6
	sd	a4,-136(s0)	# tmp208, arr6
	lw	a5,24(a5)		# tmp209,
	sw	a5,-128(s0)	# tmp209, arr6
# problem121.c:66:     func0(arr6, 7, 7, out6);
	addi	a4,s0,-120	#, tmp210,
	addi	a5,s0,-152	#, tmp211,
	mv	a3,a4	#, tmp210
	li	a2,7		#,
	li	a1,7		#,
	mv	a0,a5	#, tmp211
	call	func0		#
# problem121.c:67:     int expected6[] = {-13, -8, 0, 0, 3, 5, 15};
	lla	a5,.LC5	# tmp212,
	ld	a2,0(a5)		# tmp213,
	ld	a3,8(a5)		# tmp214,
	ld	a4,16(a5)		# tmp215,
	sd	a2,-88(s0)	# tmp213, expected6
	sd	a3,-80(s0)	# tmp214, expected6
	sd	a4,-72(s0)	# tmp215, expected6
	lw	a5,24(a5)		# tmp216,
	sw	a5,-64(s0)	# tmp216, expected6
# problem121.c:68:     assert(issame(out6, expected6, 7));
	addi	a4,s0,-88	#, tmp217,
	addi	a5,s0,-120	#, tmp218,
	li	a2,7		#,
	mv	a1,a4	#, tmp217
	mv	a0,a5	#, tmp218
	call	issame		#
	mv	a5,a0	# tmp219,
# problem121.c:68:     assert(issame(out6, expected6, 7));
	bne	a5,zero,.L20	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,68		#,
	lla	a1,.LC9	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L20:
# problem121.c:70:     int arr7[] = {-1, 0, 2, 5, 3, -10};
	lla	a5,.LC6	# tmp220,
	ld	a4,0(a5)		# tmp221,
	sd	a4,-240(s0)	# tmp221, arr7
	ld	a4,8(a5)		# tmp222,
	sd	a4,-232(s0)	# tmp222, arr7
	ld	a5,16(a5)		# tmp223,
	sd	a5,-224(s0)	# tmp223, arr7
# problem121.c:72:     func0(arr7, 6, 2, out7);
	addi	a4,s0,-472	#, tmp224,
	addi	a5,s0,-240	#, tmp225,
	mv	a3,a4	#, tmp224
	li	a2,2		#,
	li	a1,6		#,
	mv	a0,a5	#, tmp225
	call	func0		#
# problem121.c:73:     int expected7[] = {3, 5};
	li	a5,3		# tmp226,
	sw	a5,-464(s0)	# tmp226, expected7[0]
	li	a5,5		# tmp227,
	sw	a5,-460(s0)	# tmp227, expected7[1]
# problem121.c:74:     assert(issame(out7, expected7, 2));
	addi	a4,s0,-464	#, tmp228,
	addi	a5,s0,-472	#, tmp229,
	li	a2,2		#,
	mv	a1,a4	#, tmp228
	mv	a0,a5	#, tmp229
	call	issame		#
	mv	a5,a0	# tmp230,
# problem121.c:74:     assert(issame(out7, expected7, 2));
	bne	a5,zero,.L21	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,74		#,
	lla	a1,.LC9	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L21:
# problem121.c:76:     int arr8[] = {1, 0, 5, -7};
	lla	a5,.LC7	# tmp231,
	ld	a4,0(a5)		# tmp232,
	sd	a4,-280(s0)	# tmp232, arr8
	ld	a5,8(a5)		# tmp233,
	sd	a5,-272(s0)	# tmp233, arr8
# problem121.c:78:     func0(arr8, 4, 1, out8);
	addi	a4,s0,-504	#, tmp234,
	addi	a5,s0,-280	#, tmp235,
	mv	a3,a4	#, tmp234
	li	a2,1		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp235
	call	func0		#
# problem121.c:79:     int expected8[] = {5};
	li	a5,5		# tmp236,
	sw	a5,-496(s0)	# tmp236, expected8[0]
# problem121.c:80:     assert(issame(out8, expected8, 1));
	addi	a4,s0,-496	#, tmp237,
	addi	a5,s0,-504	#, tmp238,
	li	a2,1		#,
	mv	a1,a4	#, tmp237
	mv	a0,a5	#, tmp238
	call	issame		#
	mv	a5,a0	# tmp239,
# problem121.c:80:     assert(issame(out8, expected8, 1));
	bne	a5,zero,.L22	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,80		#,
	lla	a1,.LC9	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L22:
# problem121.c:82:     int arr9[] = {4, -4};
	li	a5,4		# tmp240,
	sw	a5,-456(s0)	# tmp240, arr9[0]
	li	a5,-4		# tmp241,
	sw	a5,-452(s0)	# tmp241, arr9[1]
# problem121.c:84:     func0(arr9, 2, 2, out9);
	addi	a4,s0,-448	#, tmp242,
	addi	a5,s0,-456	#, tmp243,
	mv	a3,a4	#, tmp242
	li	a2,2		#,
	li	a1,2		#,
	mv	a0,a5	#, tmp243
	call	func0		#
# problem121.c:85:     int expected9[] = {-4, 4};
	li	a5,-4		# tmp244,
	sw	a5,-440(s0)	# tmp244, expected9[0]
	li	a5,4		# tmp245,
	sw	a5,-436(s0)	# tmp245, expected9[1]
# problem121.c:86:     assert(issame(out9, expected9, 2));
	addi	a4,s0,-440	#, tmp246,
	addi	a5,s0,-448	#, tmp247,
	li	a2,2		#,
	mv	a1,a4	#, tmp246
	mv	a0,a5	#, tmp247
	call	issame		#
	mv	a5,a0	# tmp248,
# problem121.c:86:     assert(issame(out9, expected9, 2));
	bne	a5,zero,.L23	#, _9,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,86		#,
	lla	a1,.LC9	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L23:
# problem121.c:88:     int arr10[] = {-10, 10};
	li	a5,-10		# tmp249,
	sw	a5,-432(s0)	# tmp249, arr10[0]
	li	a5,10		# tmp250,
	sw	a5,-428(s0)	# tmp250, arr10[1]
# problem121.c:90:     func0(arr10, 2, 2, out10);
	addi	a4,s0,-424	#, tmp251,
	addi	a5,s0,-432	#, tmp252,
	mv	a3,a4	#, tmp251
	li	a2,2		#,
	li	a1,2		#,
	mv	a0,a5	#, tmp252
	call	func0		#
# problem121.c:91:     int expected10[] = {-10, 10};
	li	a5,-10		# tmp253,
	sw	a5,-416(s0)	# tmp253, expected10[0]
	li	a5,10		# tmp254,
	sw	a5,-412(s0)	# tmp254, expected10[1]
# problem121.c:92:     assert(issame(out10, expected10, 2));
	addi	a4,s0,-416	#, tmp255,
	addi	a5,s0,-424	#, tmp256,
	li	a2,2		#,
	mv	a1,a4	#, tmp255
	mv	a0,a5	#, tmp256
	call	issame		#
	mv	a5,a0	# tmp257,
# problem121.c:92:     assert(issame(out10, expected10, 2));
	bne	a5,zero,.L24	#, _10,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,92		#,
	lla	a1,.LC9	#,
	lla	a0,.LC19	#,
	call	__assert_fail@plt	#
.L24:
# problem121.c:94:     int arr11[] = {1, 2, 3, -23, 243, -400, 0};
	lla	a5,.LC8	# tmp258,
	ld	a2,0(a5)		# tmp259,
	ld	a3,8(a5)		# tmp260,
	ld	a4,16(a5)		# tmp261,
	sd	a2,-56(s0)	# tmp259, arr11
	sd	a3,-48(s0)	# tmp260, arr11
	sd	a4,-40(s0)	# tmp261, arr11
	lw	a5,24(a5)		# tmp262,
	sw	a5,-32(s0)	# tmp262, arr11
# problem121.c:96:     func0(arr11, 7, 0, out11); // Empty output expected
	addi	a4,s0,-536	#, tmp263,
	addi	a5,s0,-56	#, tmp264,
	mv	a3,a4	#, tmp263
	li	a2,0		#,
	li	a1,7		#,
	mv	a0,a5	#, tmp264
	call	func0		#
# problem121.c:98:     assert(issame(out11, expected11, 0));
	addi	a4,s0,-528	#, tmp265,
	addi	a5,s0,-536	#, tmp266,
	li	a2,0		#,
	mv	a1,a4	#, tmp265
	mv	a0,a5	#, tmp266
	call	issame		#
	mv	a5,a0	# tmp267,
# problem121.c:98:     assert(issame(out11, expected11, 0));
	bne	a5,zero,.L25	#, _11,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,98		#,
	lla	a1,.LC9	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L25:
# problem121.c:100:     return 0;
	li	a5,0		# _81,
# problem121.c:101: }
	mv	a4,a5	# <retval>, _81
	la	a5,__stack_chk_guard		# tmp269,
	ld	a3, -24(s0)	# tmp272, D.3375
	ld	a5, 0(a5)	# tmp270, __stack_chk_guard
	xor	a5, a3, a5	# tmp270, tmp272
	li	a3, 0	# tmp272
	beq	a5,zero,.L27	#, tmp270,,
	call	__stack_chk_fail@plt	#
.L27:
	mv	a0,a4	#, <retval>
	ld	ra,536(sp)		#,
	.cfi_restore 1
	ld	s0,528(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 544
	addi	sp,sp,544	#,,
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
