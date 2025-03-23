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
# eval/problem59//code.c:5:     int *out = malloc(size1 * sizeof(int));
	lw	a5,-60(s0)		# _1, size1
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp193,
	sd	a5,-24(s0)	# tmp193, out
# eval/problem59//code.c:6:     int k = 0, i, j, m;
	sw	zero,-48(s0)	#, k
# eval/problem59//code.c:8:     for (i = 0; i < size1; i++) {
	sw	zero,-44(s0)	#, i
# eval/problem59//code.c:8:     for (i = 0; i < size1; i++) {
	j	.L2		#
.L11:
# eval/problem59//code.c:9:         int exists_in_out = 0;
	sw	zero,-32(s0)	#, exists_in_out
# eval/problem59//code.c:10:         for (m = 0; m < k; m++) {
	sw	zero,-36(s0)	#, m
# eval/problem59//code.c:10:         for (m = 0; m < k; m++) {
	j	.L3		#
.L6:
# eval/problem59//code.c:11:             if (out[m] == l1[i]) {
	lw	a5,-36(s0)		# _3, m
	slli	a5,a5,2	#, _4, _3
	ld	a4,-24(s0)		# tmp194, out
	add	a5,a4,a5	# _4, _5, tmp194
	lw	a3,0(a5)		# _6, *_5
# eval/problem59//code.c:11:             if (out[m] == l1[i]) {
	lw	a5,-44(s0)		# _7, i
	slli	a5,a5,2	#, _8, _7
	ld	a4,-56(s0)		# tmp195, l1
	add	a5,a4,a5	# _8, _9, tmp195
	lw	a5,0(a5)		# _10, *_9
# eval/problem59//code.c:11:             if (out[m] == l1[i]) {
	mv	a4,a3	# tmp196, _6
	bne	a4,a5,.L4	#, tmp196, tmp197,
# eval/problem59//code.c:12:                 exists_in_out = 1;
	li	a5,1		# tmp198,
	sw	a5,-32(s0)	# tmp198, exists_in_out
# eval/problem59//code.c:13:                 break;
	j	.L5		#
.L4:
# eval/problem59//code.c:10:         for (m = 0; m < k; m++) {
	lw	a5,-36(s0)		# tmp201, m
	addiw	a5,a5,1	#, tmp199, tmp200
	sw	a5,-36(s0)	# tmp199, m
.L3:
# eval/problem59//code.c:10:         for (m = 0; m < k; m++) {
	lw	a5,-36(s0)		# tmp203, m
	mv	a4,a5	# tmp202, tmp203
	lw	a5,-48(s0)		# tmp205, k
	sext.w	a4,a4	# tmp206, tmp202
	sext.w	a5,a5	# tmp207, tmp204
	blt	a4,a5,.L6	#, tmp206, tmp207,
.L5:
# eval/problem59//code.c:16:         if (!exists_in_out) {
	lw	a5,-32(s0)		# tmp209, exists_in_out
	sext.w	a5,a5	# tmp210, tmp208
	bne	a5,zero,.L7	#, tmp210,,
# eval/problem59//code.c:17:             for (j = 0; j < size2; j++) {
	sw	zero,-40(s0)	#, j
# eval/problem59//code.c:17:             for (j = 0; j < size2; j++) {
	j	.L8		#
.L10:
# eval/problem59//code.c:18:                 if (l1[i] == l2[j]) {
	lw	a5,-44(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-56(s0)		# tmp211, l1
	add	a5,a4,a5	# _12, _13, tmp211
	lw	a3,0(a5)		# _14, *_13
# eval/problem59//code.c:18:                 if (l1[i] == l2[j]) {
	lw	a5,-40(s0)		# _15, j
	slli	a5,a5,2	#, _16, _15
	ld	a4,-72(s0)		# tmp212, l2
	add	a5,a4,a5	# _16, _17, tmp212
	lw	a5,0(a5)		# _18, *_17
# eval/problem59//code.c:18:                 if (l1[i] == l2[j]) {
	mv	a4,a3	# tmp213, _14
	bne	a4,a5,.L9	#, tmp213, tmp214,
# eval/problem59//code.c:19:                     out[k++] = l1[i];
	lw	a5,-44(s0)		# _19, i
	slli	a5,a5,2	#, _20, _19
	ld	a4,-56(s0)		# tmp215, l1
	add	a4,a4,a5	# _20, _21, tmp215
# eval/problem59//code.c:19:                     out[k++] = l1[i];
	lw	a5,-48(s0)		# k.0_22, k
	addiw	a3,a5,1	#, tmp216, k.0_22
	sw	a3,-48(s0)	# tmp216, k
# eval/problem59//code.c:19:                     out[k++] = l1[i];
	slli	a5,a5,2	#, _24, _23
	ld	a3,-24(s0)		# tmp217, out
	add	a5,a3,a5	# _24, _25, tmp217
# eval/problem59//code.c:19:                     out[k++] = l1[i];
	lw	a4,0(a4)		# _26, *_21
# eval/problem59//code.c:19:                     out[k++] = l1[i];
	sw	a4,0(a5)	# _26, *_25
# eval/problem59//code.c:20:                     break;
	j	.L7		#
.L9:
# eval/problem59//code.c:17:             for (j = 0; j < size2; j++) {
	lw	a5,-40(s0)		# tmp220, j
	addiw	a5,a5,1	#, tmp218, tmp219
	sw	a5,-40(s0)	# tmp218, j
.L8:
# eval/problem59//code.c:17:             for (j = 0; j < size2; j++) {
	lw	a5,-40(s0)		# tmp222, j
	mv	a4,a5	# tmp221, tmp222
	lw	a5,-64(s0)		# tmp224, size2
	sext.w	a4,a4	# tmp225, tmp221
	sext.w	a5,a5	# tmp226, tmp223
	blt	a4,a5,.L10	#, tmp225, tmp226,
.L7:
# eval/problem59//code.c:8:     for (i = 0; i < size1; i++) {
	lw	a5,-44(s0)		# tmp229, i
	addiw	a5,a5,1	#, tmp227, tmp228
	sw	a5,-44(s0)	# tmp227, i
.L2:
# eval/problem59//code.c:8:     for (i = 0; i < size1; i++) {
	lw	a5,-44(s0)		# tmp231, i
	mv	a4,a5	# tmp230, tmp231
	lw	a5,-60(s0)		# tmp233, size1
	sext.w	a4,a4	# tmp234, tmp230
	sext.w	a5,a5	# tmp235, tmp232
	blt	a4,a5,.L11	#, tmp234, tmp235,
# eval/problem59//code.c:26:     for (i = 0; i < k - 1; i++) {
	sw	zero,-44(s0)	#, i
# eval/problem59//code.c:26:     for (i = 0; i < k - 1; i++) {
	j	.L12		#
.L16:
# eval/problem59//code.c:27:         for (j = 0; j < k - i - 1; j++) {
	sw	zero,-40(s0)	#, j
# eval/problem59//code.c:27:         for (j = 0; j < k - i - 1; j++) {
	j	.L13		#
.L15:
# eval/problem59//code.c:28:             if (out[j] > out[j + 1]) {
	lw	a5,-40(s0)		# _27, j
	slli	a5,a5,2	#, _28, _27
	ld	a4,-24(s0)		# tmp236, out
	add	a5,a4,a5	# _28, _29, tmp236
	lw	a3,0(a5)		# _30, *_29
# eval/problem59//code.c:28:             if (out[j] > out[j + 1]) {
	lw	a5,-40(s0)		# _31, j
	addi	a5,a5,1	#, _32, _31
	slli	a5,a5,2	#, _33, _32
	ld	a4,-24(s0)		# tmp237, out
	add	a5,a4,a5	# _33, _34, tmp237
	lw	a5,0(a5)		# _35, *_34
# eval/problem59//code.c:28:             if (out[j] > out[j + 1]) {
	mv	a4,a3	# tmp238, _30
	ble	a4,a5,.L14	#, tmp238, tmp239,
# eval/problem59//code.c:29:                 int temp = out[j];
	lw	a5,-40(s0)		# _36, j
	slli	a5,a5,2	#, _37, _36
	ld	a4,-24(s0)		# tmp240, out
	add	a5,a4,a5	# _37, _38, tmp240
# eval/problem59//code.c:29:                 int temp = out[j];
	lw	a5,0(a5)		# tmp241, *_38
	sw	a5,-28(s0)	# tmp241, temp
# eval/problem59//code.c:30:                 out[j] = out[j + 1];
	lw	a5,-40(s0)		# _39, j
	addi	a5,a5,1	#, _40, _39
	slli	a5,a5,2	#, _41, _40
	ld	a4,-24(s0)		# tmp242, out
	add	a4,a4,a5	# _41, _42, tmp242
# eval/problem59//code.c:30:                 out[j] = out[j + 1];
	lw	a5,-40(s0)		# _43, j
	slli	a5,a5,2	#, _44, _43
	ld	a3,-24(s0)		# tmp243, out
	add	a5,a3,a5	# _44, _45, tmp243
# eval/problem59//code.c:30:                 out[j] = out[j + 1];
	lw	a4,0(a4)		# _46, *_42
# eval/problem59//code.c:30:                 out[j] = out[j + 1];
	sw	a4,0(a5)	# _46, *_45
# eval/problem59//code.c:31:                 out[j + 1] = temp;
	lw	a5,-40(s0)		# _47, j
	addi	a5,a5,1	#, _48, _47
	slli	a5,a5,2	#, _49, _48
	ld	a4,-24(s0)		# tmp244, out
	add	a5,a4,a5	# _49, _50, tmp244
# eval/problem59//code.c:31:                 out[j + 1] = temp;
	lw	a4,-28(s0)		# tmp245, temp
	sw	a4,0(a5)	# tmp245, *_50
.L14:
# eval/problem59//code.c:27:         for (j = 0; j < k - i - 1; j++) {
	lw	a5,-40(s0)		# tmp248, j
	addiw	a5,a5,1	#, tmp246, tmp247
	sw	a5,-40(s0)	# tmp246, j
.L13:
# eval/problem59//code.c:27:         for (j = 0; j < k - i - 1; j++) {
	lw	a5,-48(s0)		# tmp251, k
	mv	a4,a5	# tmp250, tmp251
	lw	a5,-44(s0)		# tmp253, i
	subw	a5,a4,a5	# tmp249, tmp250, tmp252
	sext.w	a5,a5	# _51, tmp249
# eval/problem59//code.c:27:         for (j = 0; j < k - i - 1; j++) {
	addiw	a5,a5,-1	#, tmp254, _51
	sext.w	a4,a5	# _52, tmp254
# eval/problem59//code.c:27:         for (j = 0; j < k - i - 1; j++) {
	lw	a5,-40(s0)		# tmp256, j
	sext.w	a5,a5	# tmp257, tmp255
	blt	a5,a4,.L15	#, tmp257, tmp258,
# eval/problem59//code.c:26:     for (i = 0; i < k - 1; i++) {
	lw	a5,-44(s0)		# tmp261, i
	addiw	a5,a5,1	#, tmp259, tmp260
	sw	a5,-44(s0)	# tmp259, i
.L12:
# eval/problem59//code.c:26:     for (i = 0; i < k - 1; i++) {
	lw	a5,-48(s0)		# tmp264, k
	addiw	a5,a5,-1	#, tmp262, tmp263
	sext.w	a4,a5	# _53, tmp262
# eval/problem59//code.c:26:     for (i = 0; i < k - 1; i++) {
	lw	a5,-44(s0)		# tmp266, i
	sext.w	a5,a5	# tmp267, tmp265
	blt	a5,a4,.L16	#, tmp267, tmp268,
# eval/problem59//code.c:36:     *out_size = k;
	ld	a5,-80(s0)		# tmp269, out_size
	lw	a4,-48(s0)		# tmp270, k
	sw	a4,0(a5)	# tmp270, *out_size_74(D)
# eval/problem59//code.c:37:     return out;
	ld	a5,-24(s0)		# _76, out
# eval/problem59//code.c:38: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
