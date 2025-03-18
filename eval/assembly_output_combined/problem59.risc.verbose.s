	.file	"problem59.c"
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
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# l1, l1
	mv	a5,a1	# tmp189, size1
	sd	a2,-72(s0)	# l2, l2
	sd	a4,-80(s0)	# out_size, out_size
	sw	a5,-60(s0)	# tmp190, size1
	mv	a5,a3	# tmp192, tmp191
	sw	a5,-64(s0)	# tmp192, size2
# problem59.c:5:     int *out = malloc(size1 * sizeof(int));
	lw	a5,-60(s0)		# _1, size1
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp193,
	sd	a5,-24(s0)	# tmp193, out
# problem59.c:6:     int k = 0, i, j, m;
	sw	zero,-48(s0)	#, k
# problem59.c:8:     for (i = 0; i < size1; i++) {
	sw	zero,-44(s0)	#, i
# problem59.c:8:     for (i = 0; i < size1; i++) {
	j	.L2		#
.L11:
# problem59.c:9:         int exists_in_out = 0;
	sw	zero,-32(s0)	#, exists_in_out
# problem59.c:10:         for (m = 0; m < k; m++) {
	sw	zero,-36(s0)	#, m
# problem59.c:10:         for (m = 0; m < k; m++) {
	j	.L3		#
.L6:
# problem59.c:11:             if (out[m] == l1[i]) {
	lw	a5,-36(s0)		# _3, m
	slli	a5,a5,2	#, _4, _3
	ld	a4,-24(s0)		# tmp194, out
	add	a5,a4,a5	# _4, _5, tmp194
	lw	a3,0(a5)		# _6, *_5
# problem59.c:11:             if (out[m] == l1[i]) {
	lw	a5,-44(s0)		# _7, i
	slli	a5,a5,2	#, _8, _7
	ld	a4,-56(s0)		# tmp195, l1
	add	a5,a4,a5	# _8, _9, tmp195
	lw	a5,0(a5)		# _10, *_9
# problem59.c:11:             if (out[m] == l1[i]) {
	mv	a4,a3	# tmp196, _6
	bne	a4,a5,.L4	#, tmp196, tmp197,
# problem59.c:12:                 exists_in_out = 1;
	li	a5,1		# tmp198,
	sw	a5,-32(s0)	# tmp198, exists_in_out
# problem59.c:13:                 break;
	j	.L5		#
.L4:
# problem59.c:10:         for (m = 0; m < k; m++) {
	lw	a5,-36(s0)		# tmp201, m
	addiw	a5,a5,1	#, tmp199, tmp200
	sw	a5,-36(s0)	# tmp199, m
.L3:
# problem59.c:10:         for (m = 0; m < k; m++) {
	lw	a5,-36(s0)		# tmp203, m
	mv	a4,a5	# tmp202, tmp203
	lw	a5,-48(s0)		# tmp205, k
	sext.w	a4,a4	# tmp206, tmp202
	sext.w	a5,a5	# tmp207, tmp204
	blt	a4,a5,.L6	#, tmp206, tmp207,
.L5:
# problem59.c:16:         if (!exists_in_out) {
	lw	a5,-32(s0)		# tmp209, exists_in_out
	sext.w	a5,a5	# tmp210, tmp208
	bne	a5,zero,.L7	#, tmp210,,
# problem59.c:17:             for (j = 0; j < size2; j++) {
	sw	zero,-40(s0)	#, j
# problem59.c:17:             for (j = 0; j < size2; j++) {
	j	.L8		#
.L10:
# problem59.c:18:                 if (l1[i] == l2[j]) {
	lw	a5,-44(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-56(s0)		# tmp211, l1
	add	a5,a4,a5	# _12, _13, tmp211
	lw	a3,0(a5)		# _14, *_13
# problem59.c:18:                 if (l1[i] == l2[j]) {
	lw	a5,-40(s0)		# _15, j
	slli	a5,a5,2	#, _16, _15
	ld	a4,-72(s0)		# tmp212, l2
	add	a5,a4,a5	# _16, _17, tmp212
	lw	a5,0(a5)		# _18, *_17
# problem59.c:18:                 if (l1[i] == l2[j]) {
	mv	a4,a3	# tmp213, _14
	bne	a4,a5,.L9	#, tmp213, tmp214,
# problem59.c:19:                     out[k++] = l1[i];
	lw	a5,-44(s0)		# _19, i
	slli	a5,a5,2	#, _20, _19
	ld	a4,-56(s0)		# tmp215, l1
	add	a4,a4,a5	# _20, _21, tmp215
# problem59.c:19:                     out[k++] = l1[i];
	lw	a5,-48(s0)		# k.0_22, k
	addiw	a3,a5,1	#, tmp216, k.0_22
	sw	a3,-48(s0)	# tmp216, k
# problem59.c:19:                     out[k++] = l1[i];
	slli	a5,a5,2	#, _24, _23
	ld	a3,-24(s0)		# tmp217, out
	add	a5,a3,a5	# _24, _25, tmp217
# problem59.c:19:                     out[k++] = l1[i];
	lw	a4,0(a4)		# _26, *_21
# problem59.c:19:                     out[k++] = l1[i];
	sw	a4,0(a5)	# _26, *_25
# problem59.c:20:                     break;
	j	.L7		#
.L9:
# problem59.c:17:             for (j = 0; j < size2; j++) {
	lw	a5,-40(s0)		# tmp220, j
	addiw	a5,a5,1	#, tmp218, tmp219
	sw	a5,-40(s0)	# tmp218, j
.L8:
# problem59.c:17:             for (j = 0; j < size2; j++) {
	lw	a5,-40(s0)		# tmp222, j
	mv	a4,a5	# tmp221, tmp222
	lw	a5,-64(s0)		# tmp224, size2
	sext.w	a4,a4	# tmp225, tmp221
	sext.w	a5,a5	# tmp226, tmp223
	blt	a4,a5,.L10	#, tmp225, tmp226,
.L7:
# problem59.c:8:     for (i = 0; i < size1; i++) {
	lw	a5,-44(s0)		# tmp229, i
	addiw	a5,a5,1	#, tmp227, tmp228
	sw	a5,-44(s0)	# tmp227, i
.L2:
# problem59.c:8:     for (i = 0; i < size1; i++) {
	lw	a5,-44(s0)		# tmp231, i
	mv	a4,a5	# tmp230, tmp231
	lw	a5,-60(s0)		# tmp233, size1
	sext.w	a4,a4	# tmp234, tmp230
	sext.w	a5,a5	# tmp235, tmp232
	blt	a4,a5,.L11	#, tmp234, tmp235,
# problem59.c:26:     for (i = 0; i < k - 1; i++) {
	sw	zero,-44(s0)	#, i
# problem59.c:26:     for (i = 0; i < k - 1; i++) {
	j	.L12		#
.L16:
# problem59.c:27:         for (j = 0; j < k - i - 1; j++) {
	sw	zero,-40(s0)	#, j
# problem59.c:27:         for (j = 0; j < k - i - 1; j++) {
	j	.L13		#
.L15:
# problem59.c:28:             if (out[j] > out[j + 1]) {
	lw	a5,-40(s0)		# _27, j
	slli	a5,a5,2	#, _28, _27
	ld	a4,-24(s0)		# tmp236, out
	add	a5,a4,a5	# _28, _29, tmp236
	lw	a3,0(a5)		# _30, *_29
# problem59.c:28:             if (out[j] > out[j + 1]) {
	lw	a5,-40(s0)		# _31, j
	addi	a5,a5,1	#, _32, _31
	slli	a5,a5,2	#, _33, _32
	ld	a4,-24(s0)		# tmp237, out
	add	a5,a4,a5	# _33, _34, tmp237
	lw	a5,0(a5)		# _35, *_34
# problem59.c:28:             if (out[j] > out[j + 1]) {
	mv	a4,a3	# tmp238, _30
	ble	a4,a5,.L14	#, tmp238, tmp239,
# problem59.c:29:                 int temp = out[j];
	lw	a5,-40(s0)		# _36, j
	slli	a5,a5,2	#, _37, _36
	ld	a4,-24(s0)		# tmp240, out
	add	a5,a4,a5	# _37, _38, tmp240
# problem59.c:29:                 int temp = out[j];
	lw	a5,0(a5)		# tmp241, *_38
	sw	a5,-28(s0)	# tmp241, temp
# problem59.c:30:                 out[j] = out[j + 1];
	lw	a5,-40(s0)		# _39, j
	addi	a5,a5,1	#, _40, _39
	slli	a5,a5,2	#, _41, _40
	ld	a4,-24(s0)		# tmp242, out
	add	a4,a4,a5	# _41, _42, tmp242
# problem59.c:30:                 out[j] = out[j + 1];
	lw	a5,-40(s0)		# _43, j
	slli	a5,a5,2	#, _44, _43
	ld	a3,-24(s0)		# tmp243, out
	add	a5,a3,a5	# _44, _45, tmp243
# problem59.c:30:                 out[j] = out[j + 1];
	lw	a4,0(a4)		# _46, *_42
# problem59.c:30:                 out[j] = out[j + 1];
	sw	a4,0(a5)	# _46, *_45
# problem59.c:31:                 out[j + 1] = temp;
	lw	a5,-40(s0)		# _47, j
	addi	a5,a5,1	#, _48, _47
	slli	a5,a5,2	#, _49, _48
	ld	a4,-24(s0)		# tmp244, out
	add	a5,a4,a5	# _49, _50, tmp244
# problem59.c:31:                 out[j + 1] = temp;
	lw	a4,-28(s0)		# tmp245, temp
	sw	a4,0(a5)	# tmp245, *_50
.L14:
# problem59.c:27:         for (j = 0; j < k - i - 1; j++) {
	lw	a5,-40(s0)		# tmp248, j
	addiw	a5,a5,1	#, tmp246, tmp247
	sw	a5,-40(s0)	# tmp246, j
.L13:
# problem59.c:27:         for (j = 0; j < k - i - 1; j++) {
	lw	a5,-48(s0)		# tmp251, k
	mv	a4,a5	# tmp250, tmp251
	lw	a5,-44(s0)		# tmp253, i
	subw	a5,a4,a5	# tmp249, tmp250, tmp252
	sext.w	a5,a5	# _51, tmp249
# problem59.c:27:         for (j = 0; j < k - i - 1; j++) {
	addiw	a5,a5,-1	#, tmp254, _51
	sext.w	a4,a5	# _52, tmp254
# problem59.c:27:         for (j = 0; j < k - i - 1; j++) {
	lw	a5,-40(s0)		# tmp256, j
	sext.w	a5,a5	# tmp257, tmp255
	blt	a5,a4,.L15	#, tmp257, tmp258,
# problem59.c:26:     for (i = 0; i < k - 1; i++) {
	lw	a5,-44(s0)		# tmp261, i
	addiw	a5,a5,1	#, tmp259, tmp260
	sw	a5,-44(s0)	# tmp259, i
.L12:
# problem59.c:26:     for (i = 0; i < k - 1; i++) {
	lw	a5,-48(s0)		# tmp264, k
	addiw	a5,a5,-1	#, tmp262, tmp263
	sext.w	a4,a5	# _53, tmp262
# problem59.c:26:     for (i = 0; i < k - 1; i++) {
	lw	a5,-44(s0)		# tmp266, i
	sext.w	a5,a5	# tmp267, tmp265
	blt	a5,a4,.L16	#, tmp267, tmp268,
# problem59.c:36:     *out_size = k;
	ld	a5,-80(s0)		# tmp269, out_size
	lw	a4,-48(s0)		# tmp270, k
	sw	a4,0(a5)	# tmp270, *out_size_74(D)
# problem59.c:37:     return out;
	ld	a5,-24(s0)		# _76, out
# problem59.c:38: }
	mv	a0,a5	#, <retval>
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"problem59.c"
	.align	3
.LC5:
	.string	"result1[i] == expected1[i]"
	.align	3
.LC6:
	.string	"result2[i] == expected2[i]"
	.align	3
.LC7:
	.string	"result3[i] == expected3[i]"
	.align	3
.LC8:
	.string	"size == 0"
	.align	3
.LC0:
	.word	1
	.word	4
	.word	3
	.word	34
	.word	653
	.word	2
	.word	5
	.align	3
.LC1:
	.word	5
	.word	7
	.word	1
	.word	5
	.word	9
	.word	653
	.word	121
	.align	3
.LC2:
	.word	5
	.word	3
	.word	2
	.word	8
	.align	3
.LC3:
	.word	4
	.word	3
	.word	2
	.word	8
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-256	#,,
	.cfi_def_cfa_offset 256
	sd	ra,248(sp)	#,
	sd	s0,240(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,256	#,,
	.cfi_def_cfa 8, 0
# problem59.c:46: int main() {
	la	a5,__stack_chk_guard		# tmp155,
	ld	a4, 0(a5)	# tmp239, __stack_chk_guard
	sd	a4, -24(s0)	# tmp239, D.3565
	li	a4, 0	# tmp239
# problem59.c:49:     int l1[] = {1, 4, 3, 34, 653, 2, 5};
	lla	a5,.LC0	# tmp156,
	ld	a2,0(a5)		# tmp157,
	ld	a3,8(a5)		# tmp158,
	ld	a4,16(a5)		# tmp159,
	sd	a2,-88(s0)	# tmp157, l1
	sd	a3,-80(s0)	# tmp158, l1
	sd	a4,-72(s0)	# tmp159, l1
	lw	a5,24(a5)		# tmp160,
	sw	a5,-64(s0)	# tmp160, l1
# problem59.c:50:     int l2[] = {5, 7, 1, 5, 9, 653, 121};
	lla	a5,.LC1	# tmp161,
	ld	a2,0(a5)		# tmp162,
	ld	a3,8(a5)		# tmp163,
	ld	a4,16(a5)		# tmp164,
	sd	a2,-56(s0)	# tmp162, l2
	sd	a3,-48(s0)	# tmp163, l2
	sd	a4,-40(s0)	# tmp164, l2
	lw	a5,24(a5)		# tmp165,
	sw	a5,-32(s0)	# tmp165, l2
# problem59.c:51:     int expected1[] = {1, 5, 653};
	li	a5,1		# tmp166,
	sw	a5,-184(s0)	# tmp166, expected1[0]
	li	a5,5		# tmp167,
	sw	a5,-180(s0)	# tmp167, expected1[1]
	li	a5,653		# tmp168,
	sw	a5,-176(s0)	# tmp168, expected1[2]
# problem59.c:52:     int *result1 = func0(l1, 7, l2, 7, &size);
	addi	a4,s0,-256	#, tmp169,
	addi	a2,s0,-56	#, tmp170,
	addi	a5,s0,-88	#, tmp171,
	li	a3,7		#,
	li	a1,7		#,
	mv	a0,a5	#, tmp171
	call	func0		#
	sd	a0,-240(s0)	#, result1
# problem59.c:53:     for (int i = 0; i < size; i++) {
	sw	zero,-252(s0)	#, i
# problem59.c:53:     for (int i = 0; i < size; i++) {
	j	.L19		#
.L21:
# problem59.c:54:         assert(result1[i] == expected1[i]);
	lw	a5,-252(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-240(s0)		# tmp172, result1
	add	a5,a4,a5	# _2, _3, tmp172
	lw	a4,0(a5)		# _4, *_3
	lw	a5,-252(s0)		# tmp173, i
	slli	a5,a5,2	#, tmp174, tmp173
	addi	a5,a5,-16	#, tmp243, tmp174
	add	a5,a5,s0	#, tmp174, tmp243
	lw	a5,-168(a5)		# _5, expected1[i_20]
	beq	a4,a5,.L20	#, tmp175, tmp176,
# problem59.c:54:         assert(result1[i] == expected1[i]);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,54		#,
	lla	a1,.LC4	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L20:
# problem59.c:53:     for (int i = 0; i < size; i++) {
	lw	a5,-252(s0)		# tmp179, i
	addiw	a5,a5,1	#, tmp177, tmp178
	sw	a5,-252(s0)	# tmp177, i
.L19:
# problem59.c:53:     for (int i = 0; i < size; i++) {
	lw	a4,-256(s0)		# size.1_6, size
	lw	a5,-252(s0)		# tmp181, i
	sext.w	a5,a5	# tmp182, tmp180
	blt	a5,a4,.L21	#, tmp182, tmp183,
# problem59.c:56:     free(result1);
	ld	a0,-240(s0)		#, result1
	call	free@plt	#
# problem59.c:58:     int l3[] = {5, 3, 2, 8};
	lla	a5,.LC2	# tmp184,
	ld	a4,0(a5)		# tmp185,
	sd	a4,-136(s0)	# tmp185, l3
	ld	a5,8(a5)		# tmp186,
	sd	a5,-128(s0)	# tmp186, l3
# problem59.c:59:     int l4[] = {3, 2};
	li	a5,3		# tmp187,
	sw	a5,-200(s0)	# tmp187, l4[0]
	li	a5,2		# tmp188,
	sw	a5,-196(s0)	# tmp188, l4[1]
# problem59.c:60:     int expected2[] = {2, 3};
	li	a5,2		# tmp189,
	sw	a5,-192(s0)	# tmp189, expected2[0]
	li	a5,3		# tmp190,
	sw	a5,-188(s0)	# tmp190, expected2[1]
# problem59.c:61:     int *result2 = func0(l3, 4, l4, 2, &size);
	addi	a4,s0,-256	#, tmp191,
	addi	a2,s0,-200	#, tmp192,
	addi	a5,s0,-136	#, tmp193,
	li	a3,2		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp193
	call	func0		#
	sd	a0,-232(s0)	#, result2
# problem59.c:62:     for (int i = 0; i < size; i++) {
	sw	zero,-248(s0)	#, i
# problem59.c:62:     for (int i = 0; i < size; i++) {
	j	.L22		#
.L24:
# problem59.c:63:         assert(result2[i] == expected2[i]);
	lw	a5,-248(s0)		# _7, i
	slli	a5,a5,2	#, _8, _7
	ld	a4,-232(s0)		# tmp194, result2
	add	a5,a4,a5	# _8, _9, tmp194
	lw	a4,0(a5)		# _10, *_9
	lw	a5,-248(s0)		# tmp195, i
	slli	a5,a5,2	#, tmp196, tmp195
	addi	a5,a5,-16	#, tmp244, tmp196
	add	a5,a5,s0	#, tmp196, tmp244
	lw	a5,-176(a5)		# _11, expected2[i_21]
	beq	a4,a5,.L23	#, tmp197, tmp198,
# problem59.c:63:         assert(result2[i] == expected2[i]);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,63		#,
	lla	a1,.LC4	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L23:
# problem59.c:62:     for (int i = 0; i < size; i++) {
	lw	a5,-248(s0)		# tmp201, i
	addiw	a5,a5,1	#, tmp199, tmp200
	sw	a5,-248(s0)	# tmp199, i
.L22:
# problem59.c:62:     for (int i = 0; i < size; i++) {
	lw	a4,-256(s0)		# size.2_12, size
	lw	a5,-248(s0)		# tmp203, i
	sext.w	a5,a5	# tmp204, tmp202
	blt	a5,a4,.L24	#, tmp204, tmp205,
# problem59.c:65:     free(result2);
	ld	a0,-232(s0)		#, result2
	call	free@plt	#
# problem59.c:67:     int l5[] = {4, 3, 2, 8};
	lla	a5,.LC3	# tmp206,
	ld	a4,0(a5)		# tmp207,
	sd	a4,-120(s0)	# tmp207, l5
	ld	a5,8(a5)		# tmp208,
	sd	a5,-112(s0)	# tmp208, l5
# problem59.c:68:     int l6[] = {3, 2, 4};
	li	a5,3		# tmp209,
	sw	a5,-168(s0)	# tmp209, l6[0]
	li	a5,2		# tmp210,
	sw	a5,-164(s0)	# tmp210, l6[1]
	li	a5,4		# tmp211,
	sw	a5,-160(s0)	# tmp211, l6[2]
# problem59.c:69:     int expected3[] = {2, 3, 4};
	li	a5,2		# tmp212,
	sw	a5,-152(s0)	# tmp212, expected3[0]
	li	a5,3		# tmp213,
	sw	a5,-148(s0)	# tmp213, expected3[1]
	li	a5,4		# tmp214,
	sw	a5,-144(s0)	# tmp214, expected3[2]
# problem59.c:70:     int *result3 = func0(l5, 4, l6, 3, &size);
	addi	a4,s0,-256	#, tmp215,
	addi	a2,s0,-168	#, tmp216,
	addi	a5,s0,-120	#, tmp217,
	li	a3,3		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp217
	call	func0		#
	sd	a0,-224(s0)	#, result3
# problem59.c:71:     for (int i = 0; i < size; i++) {
	sw	zero,-244(s0)	#, i
# problem59.c:71:     for (int i = 0; i < size; i++) {
	j	.L25		#
.L27:
# problem59.c:72:         assert(result3[i] == expected3[i]);
	lw	a5,-244(s0)		# _13, i
	slli	a5,a5,2	#, _14, _13
	ld	a4,-224(s0)		# tmp218, result3
	add	a5,a4,a5	# _14, _15, tmp218
	lw	a4,0(a5)		# _16, *_15
	lw	a5,-244(s0)		# tmp219, i
	slli	a5,a5,2	#, tmp220, tmp219
	addi	a5,a5,-16	#, tmp245, tmp220
	add	a5,a5,s0	#, tmp220, tmp245
	lw	a5,-136(a5)		# _17, expected3[i_22]
	beq	a4,a5,.L26	#, tmp221, tmp222,
# problem59.c:72:         assert(result3[i] == expected3[i]);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,72		#,
	lla	a1,.LC4	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L26:
# problem59.c:71:     for (int i = 0; i < size; i++) {
	lw	a5,-244(s0)		# tmp225, i
	addiw	a5,a5,1	#, tmp223, tmp224
	sw	a5,-244(s0)	# tmp223, i
.L25:
# problem59.c:71:     for (int i = 0; i < size; i++) {
	lw	a4,-256(s0)		# size.3_18, size
	lw	a5,-244(s0)		# tmp227, i
	sext.w	a5,a5	# tmp228, tmp226
	blt	a5,a4,.L27	#, tmp228, tmp229,
# problem59.c:74:     free(result3);
	ld	a0,-224(s0)		#, result3
	call	free@plt	#
# problem59.c:76:     int l7[] = {4, 3, 2, 8};
	lla	a5,.LC3	# tmp230,
	ld	a4,0(a5)		# tmp231,
	sd	a4,-104(s0)	# tmp231, l7
	ld	a5,8(a5)		# tmp232,
	sd	a5,-96(s0)	# tmp232, l7
# problem59.c:78:     int *result4 = func0(l7, 4, l8, 0, &size);
	addi	a4,s0,-256	#, tmp233,
	addi	a2,s0,-208	#, tmp234,
	addi	a5,s0,-104	#, tmp235,
	li	a3,0		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp235
	call	func0		#
	sd	a0,-216(s0)	#, result4
# problem59.c:79:     assert(size == 0); // Since l8 is empty, result4 should be empty as well
	lw	a5,-256(s0)		# size.4_19, size
	beq	a5,zero,.L28	#, size.4_19,,
# problem59.c:79:     assert(size == 0); // Since l8 is empty, result4 should be empty as well
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,79		#,
	lla	a1,.LC4	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L28:
# problem59.c:80:     free(result4);
	ld	a0,-216(s0)		#, result4
	call	free@plt	#
# problem59.c:82:     return 0;
	li	a5,0		# _58,
# problem59.c:83: }
	mv	a4,a5	# <retval>, _58
	la	a5,__stack_chk_guard		# tmp237,
	ld	a3, -24(s0)	# tmp240, D.3565
	ld	a5, 0(a5)	# tmp238, __stack_chk_guard
	xor	a5, a3, a5	# tmp238, tmp240
	li	a3, 0	# tmp240
	beq	a5,zero,.L30	#, tmp238,,
	call	__stack_chk_fail@plt	#
.L30:
	mv	a0,a4	#, <retval>
	ld	ra,248(sp)		#,
	.cfi_restore 1
	ld	s0,240(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 256
	addi	sp,sp,256	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
