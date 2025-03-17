	.file	"problem117.c"
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
	sd	a0,-56(s0)	# arr, arr
	mv	a5,a1	# tmp163, size
	sw	a5,-60(s0)	# tmp164, size
# problem117.c:6:     for (int i = 0; i < size; i++) {
	sw	zero,-28(s0)	#, i
# problem117.c:6:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L11:
# problem117.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-28(s0)		# tmp167, i
	addiw	a5,a5,1	#, tmp165, tmp166
	sw	a5,-24(s0)	# tmp165, j
# problem117.c:7:         for (int j = i + 1; j < size; j++) {
	j	.L3		#
.L10:
# problem117.c:8:             count_ones = 0;
	sw	zero,-40(s0)	#, count_ones
# problem117.c:9:             x = arr[i];
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-56(s0)		# tmp168, arr
	add	a5,a4,a5	# _2, _3, tmp168
# problem117.c:9:             x = arr[i];
	lw	a5,0(a5)		# tmp169, *_3
	sw	a5,-36(s0)	# tmp169, x
# problem117.c:10:             y = arr[j];
	lw	a5,-24(s0)		# _4, j
	slli	a5,a5,2	#, _5, _4
	ld	a4,-56(s0)		# tmp170, arr
	add	a5,a4,a5	# _5, _6, tmp170
# problem117.c:10:             y = arr[j];
	lw	a5,0(a5)		# tmp171, *_6
	sw	a5,-32(s0)	# tmp171, y
# problem117.c:11:             while (x > 0) {
	j	.L4		#
.L5:
# problem117.c:12:                 count_ones += x & 1;
	lw	a5,-36(s0)		# tmp173, x
	andi	a5,a5,1	#, tmp174, tmp172
	sext.w	a5,a5	# _7, tmp174
# problem117.c:12:                 count_ones += x & 1;
	lw	a4,-40(s0)		# tmp177, count_ones
	addw	a5,a4,a5	# _7, tmp175, tmp176
	sw	a5,-40(s0)	# tmp175, count_ones
# problem117.c:13:                 x >>= 1;
	lw	a5,-36(s0)		# tmp180, x
	sraiw	a5,a5,1	#, tmp178, tmp179
	sw	a5,-36(s0)	# tmp178, x
.L4:
# problem117.c:11:             while (x > 0) {
	lw	a5,-36(s0)		# tmp182, x
	sext.w	a5,a5	# tmp183, tmp181
	bgt	a5,zero,.L5	#, tmp183,,
# problem117.c:15:             x = count_ones;
	lw	a5,-40(s0)		# tmp184, count_ones
	sw	a5,-36(s0)	# tmp184, x
# problem117.c:16:             count_ones = 0;
	sw	zero,-40(s0)	#, count_ones
# problem117.c:17:             while (y > 0) {
	j	.L6		#
.L7:
# problem117.c:18:                 count_ones += y & 1;
	lw	a5,-32(s0)		# tmp186, y
	andi	a5,a5,1	#, tmp187, tmp185
	sext.w	a5,a5	# _8, tmp187
# problem117.c:18:                 count_ones += y & 1;
	lw	a4,-40(s0)		# tmp190, count_ones
	addw	a5,a4,a5	# _8, tmp188, tmp189
	sw	a5,-40(s0)	# tmp188, count_ones
# problem117.c:19:                 y >>= 1;
	lw	a5,-32(s0)		# tmp193, y
	sraiw	a5,a5,1	#, tmp191, tmp192
	sw	a5,-32(s0)	# tmp191, y
.L6:
# problem117.c:17:             while (y > 0) {
	lw	a5,-32(s0)		# tmp195, y
	sext.w	a5,a5	# tmp196, tmp194
	bgt	a5,zero,.L7	#, tmp196,,
# problem117.c:21:             y = count_ones;
	lw	a5,-40(s0)		# tmp197, count_ones
	sw	a5,-32(s0)	# tmp197, y
# problem117.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	lw	a5,-32(s0)		# tmp199, y
	mv	a4,a5	# tmp198, tmp199
	lw	a5,-36(s0)		# tmp201, x
	sext.w	a4,a4	# tmp202, tmp198
	sext.w	a5,a5	# tmp203, tmp200
	blt	a4,a5,.L8	#, tmp202, tmp203,
# problem117.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	lw	a5,-32(s0)		# tmp205, y
	mv	a4,a5	# tmp204, tmp205
	lw	a5,-36(s0)		# tmp207, x
	sext.w	a4,a4	# tmp208, tmp204
	sext.w	a5,a5	# tmp209, tmp206
	bne	a4,a5,.L9	#, tmp208, tmp209,
# problem117.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	lw	a5,-24(s0)		# _9, j
	slli	a5,a5,2	#, _10, _9
	ld	a4,-56(s0)		# tmp210, arr
	add	a5,a4,a5	# _10, _11, tmp210
	lw	a3,0(a5)		# _12, *_11
# problem117.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	lw	a5,-28(s0)		# _13, i
	slli	a5,a5,2	#, _14, _13
	ld	a4,-56(s0)		# tmp211, arr
	add	a5,a4,a5	# _14, _15, tmp211
	lw	a5,0(a5)		# _16, *_15
# problem117.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	mv	a4,a3	# tmp212, _12
	bge	a4,a5,.L9	#, tmp212, tmp213,
.L8:
# problem117.c:23:                 temp = arr[i];
	lw	a5,-28(s0)		# _17, i
	slli	a5,a5,2	#, _18, _17
	ld	a4,-56(s0)		# tmp214, arr
	add	a5,a4,a5	# _18, _19, tmp214
# problem117.c:23:                 temp = arr[i];
	lw	a5,0(a5)		# tmp215, *_19
	sw	a5,-20(s0)	# tmp215, temp
# problem117.c:24:                 arr[i] = arr[j];
	lw	a5,-24(s0)		# _20, j
	slli	a5,a5,2	#, _21, _20
	ld	a4,-56(s0)		# tmp216, arr
	add	a4,a4,a5	# _21, _22, tmp216
# problem117.c:24:                 arr[i] = arr[j];
	lw	a5,-28(s0)		# _23, i
	slli	a5,a5,2	#, _24, _23
	ld	a3,-56(s0)		# tmp217, arr
	add	a5,a3,a5	# _24, _25, tmp217
# problem117.c:24:                 arr[i] = arr[j];
	lw	a4,0(a4)		# _26, *_22
# problem117.c:24:                 arr[i] = arr[j];
	sw	a4,0(a5)	# _26, *_25
# problem117.c:25:                 arr[j] = temp;
	lw	a5,-24(s0)		# _27, j
	slli	a5,a5,2	#, _28, _27
	ld	a4,-56(s0)		# tmp218, arr
	add	a5,a4,a5	# _28, _29, tmp218
# problem117.c:25:                 arr[j] = temp;
	lw	a4,-20(s0)		# tmp219, temp
	sw	a4,0(a5)	# tmp219, *_29
.L9:
# problem117.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-24(s0)		# tmp222, j
	addiw	a5,a5,1	#, tmp220, tmp221
	sw	a5,-24(s0)	# tmp220, j
.L3:
# problem117.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-24(s0)		# tmp224, j
	mv	a4,a5	# tmp223, tmp224
	lw	a5,-60(s0)		# tmp226, size
	sext.w	a4,a4	# tmp227, tmp223
	sext.w	a5,a5	# tmp228, tmp225
	blt	a4,a5,.L10	#, tmp227, tmp228,
# problem117.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp231, i
	addiw	a5,a5,1	#, tmp229, tmp230
	sw	a5,-28(s0)	# tmp229, i
.L2:
# problem117.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp233, i
	mv	a4,a5	# tmp232, tmp233
	lw	a5,-60(s0)		# tmp235, size
	sext.w	a4,a4	# tmp236, tmp232
	sext.w	a5,a5	# tmp237, tmp234
	blt	a4,a5,.L11	#, tmp236, tmp237,
# problem117.c:29: }
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
	mv	a5,a1	# tmp144, size_a
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp146, size_b
	sw	a5,-44(s0)	# tmp145, size_a
	mv	a5,a4	# tmp147, tmp146
	sw	a5,-48(s0)	# tmp147, size_b
# problem117.c:37:     if (size_a != size_b) return 0;
	lw	a5,-44(s0)		# tmp149, size_a
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-48(s0)		# tmp151, size_b
	sext.w	a4,a4	# tmp152, tmp148
	sext.w	a5,a5	# tmp153, tmp150
	beq	a4,a5,.L13	#, tmp152, tmp153,
# problem117.c:37:     if (size_a != size_b) return 0;
	li	a5,0		# _10,
# problem117.c:37:     if (size_a != size_b) return 0;
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
	ld	a4,-40(s0)		# tmp154, a
	add	a5,a4,a5	# _2, _3, tmp154
	lw	a3,0(a5)		# _4, *_3
# problem117.c:39:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp155, b
	add	a5,a4,a5	# _6, _7, tmp155
	lw	a5,0(a5)		# _8, *_7
# problem117.c:39:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp156, _4
	beq	a4,a5,.L16	#, tmp156, tmp157,
# problem117.c:39:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem117.c:39:         if (a[i] != b[i]) return 0;
	j	.L14		#
.L16:
# problem117.c:38:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L15:
# problem117.c:38:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-44(s0)		# tmp164, size_a
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L17	#, tmp165, tmp166,
# problem117.c:41:     return 1;
	li	a5,1		# _10,
.L14:
# problem117.c:42: }
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
.LFB8:
	.cfi_startproc
	addi	sp,sp,-320	#,,
	.cfi_def_cfa_offset 320
	sd	ra,312(sp)	#,
	sd	s0,304(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,320	#,,
	.cfi_def_cfa 8, 0
# problem117.c:44: int main() {
	la	a5,__stack_chk_guard		# tmp141,
	ld	a4, 0(a5)	# tmp211, __stack_chk_guard
	sd	a4, -24(s0)	# tmp211, D.3337
	li	a4, 0	# tmp211
# problem117.c:45:     int test1[] = {1, 5, 2, 3, 4};
	lla	a5,.LC0	# tmp142,
	ld	a4,0(a5)		# tmp143,
	sd	a4,-312(s0)	# tmp143, test1
	ld	a4,8(a5)		# tmp144,
	sd	a4,-304(s0)	# tmp144, test1
	lw	a5,16(a5)		# tmp145,
	sw	a5,-296(s0)	# tmp145, test1
# problem117.c:46:     int expected1[] = {1, 2, 4, 3, 5};
	lla	a5,.LC1	# tmp146,
	ld	a4,0(a5)		# tmp147,
	sd	a4,-288(s0)	# tmp147, expected1
	ld	a4,8(a5)		# tmp148,
	sd	a4,-280(s0)	# tmp148, expected1
	lw	a5,16(a5)		# tmp149,
	sw	a5,-272(s0)	# tmp149, expected1
# problem117.c:47:     func0(test1, 5);
	addi	a5,s0,-312	#, tmp150,
	li	a1,5		#,
	mv	a0,a5	#, tmp150
	call	func0		#
# problem117.c:48:     assert(issame(test1, 5, expected1, 5));
	addi	a4,s0,-288	#, tmp151,
	addi	a5,s0,-312	#, tmp152,
	li	a3,5		#,
	mv	a2,a4	#, tmp151
	li	a1,5		#,
	mv	a0,a5	#, tmp152
	call	issame		#
	mv	a5,a0	# tmp153,
# problem117.c:48:     assert(issame(test1, 5, expected1, 5));
	bne	a5,zero,.L19	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,48		#,
	lla	a1,.LC9	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L19:
# problem117.c:50:     int test3[] = {1, 0, 2, 3, 4};
	lla	a5,.LC2	# tmp154,
	ld	a4,0(a5)		# tmp155,
	sd	a4,-264(s0)	# tmp155, test3
	ld	a4,8(a5)		# tmp156,
	sd	a4,-256(s0)	# tmp156, test3
	lw	a5,16(a5)		# tmp157,
	sw	a5,-248(s0)	# tmp157, test3
# problem117.c:51:     int expected3[] = {0, 1, 2, 4, 3};
	lla	a5,.LC3	# tmp158,
	ld	a4,0(a5)		# tmp159,
	sd	a4,-240(s0)	# tmp159, expected3
	ld	a4,8(a5)		# tmp160,
	sd	a4,-232(s0)	# tmp160, expected3
	lw	a5,16(a5)		# tmp161,
	sw	a5,-224(s0)	# tmp161, expected3
# problem117.c:52:     func0(test3, 5);
	addi	a5,s0,-264	#, tmp162,
	li	a1,5		#,
	mv	a0,a5	#, tmp162
	call	func0		#
# problem117.c:53:     assert(issame(test3, 5, expected3, 5));
	addi	a4,s0,-240	#, tmp163,
	addi	a5,s0,-264	#, tmp164,
	li	a3,5		#,
	mv	a2,a4	#, tmp163
	li	a1,5		#,
	mv	a0,a5	#, tmp164
	call	issame		#
	mv	a5,a0	# tmp165,
# problem117.c:53:     assert(issame(test3, 5, expected3, 5));
	bne	a5,zero,.L20	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,53		#,
	lla	a1,.LC9	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L20:
# problem117.c:55:     int test4[] = {2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4};
	lla	a5,.LC4	# tmp166,
	ld	a0,0(a5)		# tmp167,
	ld	a1,8(a5)		# tmp168,
	ld	a2,16(a5)		# tmp169,
	ld	a3,24(a5)		# tmp170,
	ld	a4,32(a5)		# tmp171,
	sd	a0,-120(s0)	# tmp167, test4
	sd	a1,-112(s0)	# tmp168, test4
	sd	a2,-104(s0)	# tmp169, test4
	sd	a3,-96(s0)	# tmp170, test4
	sd	a4,-88(s0)	# tmp171, test4
	lw	a5,40(a5)		# tmp172,
	sw	a5,-80(s0)	# tmp172, test4
# problem117.c:56:     int expected4[] = {2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77};
	lla	a5,.LC5	# tmp173,
	ld	a0,0(a5)		# tmp174,
	ld	a1,8(a5)		# tmp175,
	ld	a2,16(a5)		# tmp176,
	ld	a3,24(a5)		# tmp177,
	ld	a4,32(a5)		# tmp178,
	sd	a0,-72(s0)	# tmp174, expected4
	sd	a1,-64(s0)	# tmp175, expected4
	sd	a2,-56(s0)	# tmp176, expected4
	sd	a3,-48(s0)	# tmp177, expected4
	sd	a4,-40(s0)	# tmp178, expected4
	lw	a5,40(a5)		# tmp179,
	sw	a5,-32(s0)	# tmp179, expected4
# problem117.c:57:     func0(test4, 11);
	addi	a5,s0,-120	#, tmp180,
	li	a1,11		#,
	mv	a0,a5	#, tmp180
	call	func0		#
# problem117.c:58:     assert(issame(test4, 11, expected4, 11));
	addi	a4,s0,-72	#, tmp181,
	addi	a5,s0,-120	#, tmp182,
	li	a3,11		#,
	mv	a2,a4	#, tmp181
	li	a1,11		#,
	mv	a0,a5	#, tmp182
	call	issame		#
	mv	a5,a0	# tmp183,
# problem117.c:58:     assert(issame(test4, 11, expected4, 11));
	bne	a5,zero,.L21	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,58		#,
	lla	a1,.LC9	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L21:
# problem117.c:60:     int test5[] = {3, 6, 44, 12, 32, 5};
	lla	a5,.LC6	# tmp184,
	ld	a4,0(a5)		# tmp185,
	sd	a4,-168(s0)	# tmp185, test5
	ld	a4,8(a5)		# tmp186,
	sd	a4,-160(s0)	# tmp186, test5
	ld	a5,16(a5)		# tmp187,
	sd	a5,-152(s0)	# tmp187, test5
# problem117.c:61:     int expected5[] = {32, 3, 5, 6, 12, 44};
	lla	a5,.LC7	# tmp188,
	ld	a4,0(a5)		# tmp189,
	sd	a4,-144(s0)	# tmp189, expected5
	ld	a4,8(a5)		# tmp190,
	sd	a4,-136(s0)	# tmp190, expected5
	ld	a5,16(a5)		# tmp191,
	sd	a5,-128(s0)	# tmp191, expected5
# problem117.c:62:     func0(test5, 6);
	addi	a5,s0,-168	#, tmp192,
	li	a1,6		#,
	mv	a0,a5	#, tmp192
	call	func0		#
# problem117.c:63:     assert(issame(test5, 6, expected5, 6));
	addi	a4,s0,-144	#, tmp193,
	addi	a5,s0,-168	#, tmp194,
	li	a3,6		#,
	mv	a2,a4	#, tmp193
	li	a1,6		#,
	mv	a0,a5	#, tmp194
	call	issame		#
	mv	a5,a0	# tmp195,
# problem117.c:63:     assert(issame(test5, 6, expected5, 6));
	bne	a5,zero,.L22	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,63		#,
	lla	a1,.LC9	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L22:
# problem117.c:65:     int test6[] = {2, 4, 8, 16, 32};
	lla	a5,.LC8	# tmp196,
	ld	a4,0(a5)		# tmp197,
	sd	a4,-216(s0)	# tmp197, test6
	ld	a4,8(a5)		# tmp198,
	sd	a4,-208(s0)	# tmp198, test6
	lw	a5,16(a5)		# tmp199,
	sw	a5,-200(s0)	# tmp199, test6
# problem117.c:66:     int expected6[] = {2, 4, 8, 16, 32};
	lla	a5,.LC8	# tmp200,
	ld	a4,0(a5)		# tmp201,
	sd	a4,-192(s0)	# tmp201, expected6
	ld	a4,8(a5)		# tmp202,
	sd	a4,-184(s0)	# tmp202, expected6
	lw	a5,16(a5)		# tmp203,
	sw	a5,-176(s0)	# tmp203, expected6
# problem117.c:67:     func0(test6, 5);
	addi	a5,s0,-216	#, tmp204,
	li	a1,5		#,
	mv	a0,a5	#, tmp204
	call	func0		#
# problem117.c:68:     assert(issame(test6, 5, expected6, 5));
	addi	a4,s0,-192	#, tmp205,
	addi	a5,s0,-216	#, tmp206,
	li	a3,5		#,
	mv	a2,a4	#, tmp205
	li	a1,5		#,
	mv	a0,a5	#, tmp206
	call	issame		#
	mv	a5,a0	# tmp207,
# problem117.c:68:     assert(issame(test6, 5, expected6, 5));
	bne	a5,zero,.L23	#, _5,,
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
	la	a5,__stack_chk_guard		# tmp209,
	ld	a3, -24(s0)	# tmp212, D.3337
	ld	a5, 0(a5)	# tmp210, __stack_chk_guard
	xor	a5, a3, a5	# tmp210, tmp212
	li	a3, 0	# tmp212
	beq	a5,zero,.L25	#, tmp210,,
	call	__stack_chk_fail@plt	#
.L25:
	mv	a0,a4	#, <retval>
	ld	ra,312(sp)		#,
	.cfi_restore 1
	ld	s0,304(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 320
	addi	sp,sp,320	#,,
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
