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
	sd	a0,-56(s0)	# l, l
	mv	a5,a1	# tmp185, size
	sd	a2,-72(s0)	# out, out
	sw	a5,-60(s0)	# tmp186, size
# eval/problem34//code.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	lw	a5,-60(s0)		# tmp189, size
	mv	a4,a5	# tmp188, tmp189
	li	a5,3		# tmp191,
	divw	a5,a4,a5	# tmp191, tmp190, tmp188
	sext.w	a5,a5	# _1, tmp190
# eval/problem34//code.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	addiw	a5,a5,1	#, tmp192, _1
	sext.w	a5,a5	# _2, tmp192
# eval/problem34//code.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	slli	a5,a5,2	#, _4, _3
	mv	a0,a5	#, _4
	call	malloc@plt	#
	mv	a5,a0	# tmp193,
	sd	a5,-24(s0)	# tmp193, third
# eval/problem34//code.c:6:     int i, k = 0, third_size = 0;
	sw	zero,-40(s0)	#, k
# eval/problem34//code.c:6:     int i, k = 0, third_size = 0;
	sw	zero,-36(s0)	#, third_size
# eval/problem34//code.c:8:     for (i = 0; i * 3 < size; i++) {
	sw	zero,-44(s0)	#, i
# eval/problem34//code.c:8:     for (i = 0; i * 3 < size; i++) {
	j	.L2		#
.L3:
# eval/problem34//code.c:9:         third[i] = l[i * 3];
	lw	a5,-44(s0)		# tmp195, i
	mv	a4,a5	# tmp194, tmp195
	mv	a5,a4	# tmp196, tmp194
	slliw	a5,a5,1	#, tmp197, tmp196
	addw	a5,a5,a4	# tmp194, tmp196, tmp196
	sext.w	a5,a5	# _5, tmp196
# eval/problem34//code.c:9:         third[i] = l[i * 3];
	slli	a5,a5,2	#, _7, _6
	ld	a4,-56(s0)		# tmp198, l
	add	a4,a4,a5	# _7, _8, tmp198
# eval/problem34//code.c:9:         third[i] = l[i * 3];
	lw	a5,-44(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a3,-24(s0)		# tmp199, third
	add	a5,a3,a5	# _10, _11, tmp199
# eval/problem34//code.c:9:         third[i] = l[i * 3];
	lw	a4,0(a4)		# _12, *_8
# eval/problem34//code.c:9:         third[i] = l[i * 3];
	sw	a4,0(a5)	# _12, *_11
# eval/problem34//code.c:10:         third_size++;
	lw	a5,-36(s0)		# tmp202, third_size
	addiw	a5,a5,1	#, tmp200, tmp201
	sw	a5,-36(s0)	# tmp200, third_size
# eval/problem34//code.c:8:     for (i = 0; i * 3 < size; i++) {
	lw	a5,-44(s0)		# tmp205, i
	addiw	a5,a5,1	#, tmp203, tmp204
	sw	a5,-44(s0)	# tmp203, i
.L2:
# eval/problem34//code.c:8:     for (i = 0; i * 3 < size; i++) {
	lw	a5,-44(s0)		# tmp207, i
	mv	a4,a5	# tmp206, tmp207
	mv	a5,a4	# tmp208, tmp206
	slliw	a5,a5,1	#, tmp209, tmp208
	addw	a5,a5,a4	# tmp206, tmp208, tmp208
	sext.w	a4,a5	# _13, tmp208
# eval/problem34//code.c:8:     for (i = 0; i * 3 < size; i++) {
	lw	a5,-60(s0)		# tmp211, size
	sext.w	a5,a5	# tmp212, tmp210
	bgt	a5,a4,.L3	#, tmp212, tmp213,
# eval/problem34//code.c:13:     for (i = 0; i < third_size - 1; i++) {
	sw	zero,-44(s0)	#, i
# eval/problem34//code.c:13:     for (i = 0; i < third_size - 1; i++) {
	j	.L4		#
.L9:
# eval/problem34//code.c:14:         int min_idx = i;
	lw	a5,-44(s0)		# tmp214, i
	sw	a5,-32(s0)	# tmp214, min_idx
# eval/problem34//code.c:15:         for (k = i + 1; k < third_size; k++) {
	lw	a5,-44(s0)		# tmp217, i
	addiw	a5,a5,1	#, tmp215, tmp216
	sw	a5,-40(s0)	# tmp215, k
# eval/problem34//code.c:15:         for (k = i + 1; k < third_size; k++) {
	j	.L5		#
.L7:
# eval/problem34//code.c:16:             if (third[k] < third[min_idx])
	lw	a5,-40(s0)		# _14, k
	slli	a5,a5,2	#, _15, _14
	ld	a4,-24(s0)		# tmp218, third
	add	a5,a4,a5	# _15, _16, tmp218
	lw	a3,0(a5)		# _17, *_16
# eval/problem34//code.c:16:             if (third[k] < third[min_idx])
	lw	a5,-32(s0)		# _18, min_idx
	slli	a5,a5,2	#, _19, _18
	ld	a4,-24(s0)		# tmp219, third
	add	a5,a4,a5	# _19, _20, tmp219
	lw	a5,0(a5)		# _21, *_20
# eval/problem34//code.c:16:             if (third[k] < third[min_idx])
	mv	a4,a3	# tmp220, _17
	bge	a4,a5,.L6	#, tmp220, tmp221,
# eval/problem34//code.c:17:                 min_idx = k;
	lw	a5,-40(s0)		# tmp222, k
	sw	a5,-32(s0)	# tmp222, min_idx
.L6:
# eval/problem34//code.c:15:         for (k = i + 1; k < third_size; k++) {
	lw	a5,-40(s0)		# tmp225, k
	addiw	a5,a5,1	#, tmp223, tmp224
	sw	a5,-40(s0)	# tmp223, k
.L5:
# eval/problem34//code.c:15:         for (k = i + 1; k < third_size; k++) {
	lw	a5,-40(s0)		# tmp227, k
	mv	a4,a5	# tmp226, tmp227
	lw	a5,-36(s0)		# tmp229, third_size
	sext.w	a4,a4	# tmp230, tmp226
	sext.w	a5,a5	# tmp231, tmp228
	blt	a4,a5,.L7	#, tmp230, tmp231,
# eval/problem34//code.c:19:         if (min_idx != i) {
	lw	a5,-32(s0)		# tmp233, min_idx
	mv	a4,a5	# tmp232, tmp233
	lw	a5,-44(s0)		# tmp235, i
	sext.w	a4,a4	# tmp236, tmp232
	sext.w	a5,a5	# tmp237, tmp234
	beq	a4,a5,.L8	#, tmp236, tmp237,
# eval/problem34//code.c:20:             int temp = third[i];
	lw	a5,-44(s0)		# _22, i
	slli	a5,a5,2	#, _23, _22
	ld	a4,-24(s0)		# tmp238, third
	add	a5,a4,a5	# _23, _24, tmp238
# eval/problem34//code.c:20:             int temp = third[i];
	lw	a5,0(a5)		# tmp239, *_24
	sw	a5,-28(s0)	# tmp239, temp
# eval/problem34//code.c:21:             third[i] = third[min_idx];
	lw	a5,-32(s0)		# _25, min_idx
	slli	a5,a5,2	#, _26, _25
	ld	a4,-24(s0)		# tmp240, third
	add	a4,a4,a5	# _26, _27, tmp240
# eval/problem34//code.c:21:             third[i] = third[min_idx];
	lw	a5,-44(s0)		# _28, i
	slli	a5,a5,2	#, _29, _28
	ld	a3,-24(s0)		# tmp241, third
	add	a5,a3,a5	# _29, _30, tmp241
# eval/problem34//code.c:21:             third[i] = third[min_idx];
	lw	a4,0(a4)		# _31, *_27
# eval/problem34//code.c:21:             third[i] = third[min_idx];
	sw	a4,0(a5)	# _31, *_30
# eval/problem34//code.c:22:             third[min_idx] = temp;
	lw	a5,-32(s0)		# _32, min_idx
	slli	a5,a5,2	#, _33, _32
	ld	a4,-24(s0)		# tmp242, third
	add	a5,a4,a5	# _33, _34, tmp242
# eval/problem34//code.c:22:             third[min_idx] = temp;
	lw	a4,-28(s0)		# tmp243, temp
	sw	a4,0(a5)	# tmp243, *_34
.L8:
# eval/problem34//code.c:13:     for (i = 0; i < third_size - 1; i++) {
	lw	a5,-44(s0)		# tmp246, i
	addiw	a5,a5,1	#, tmp244, tmp245
	sw	a5,-44(s0)	# tmp244, i
.L4:
# eval/problem34//code.c:13:     for (i = 0; i < third_size - 1; i++) {
	lw	a5,-36(s0)		# tmp249, third_size
	addiw	a5,a5,-1	#, tmp247, tmp248
	sext.w	a4,a5	# _35, tmp247
# eval/problem34//code.c:13:     for (i = 0; i < third_size - 1; i++) {
	lw	a5,-44(s0)		# tmp251, i
	sext.w	a5,a5	# tmp252, tmp250
	blt	a5,a4,.L9	#, tmp252, tmp253,
# eval/problem34//code.c:26:     for (i = 0; i < size; i++) {
	sw	zero,-44(s0)	#, i
# eval/problem34//code.c:26:     for (i = 0; i < size; i++) {
	j	.L10		#
.L13:
# eval/problem34//code.c:27:         if (i % 3 == 0) {
	lw	a5,-44(s0)		# tmp256, i
	mv	a4,a5	# tmp255, tmp256
	li	a5,3		# tmp258,
	remw	a5,a4,a5	# tmp258, tmp257, tmp255
	sext.w	a5,a5	# _36, tmp257
# eval/problem34//code.c:27:         if (i % 3 == 0) {
	bne	a5,zero,.L11	#, _36,,
# eval/problem34//code.c:28:             out[i] = third[i / 3];
	lw	a5,-44(s0)		# tmp261, i
	mv	a4,a5	# tmp260, tmp261
	li	a5,3		# tmp263,
	divw	a5,a4,a5	# tmp263, tmp262, tmp260
	sext.w	a5,a5	# _37, tmp262
# eval/problem34//code.c:28:             out[i] = third[i / 3];
	slli	a5,a5,2	#, _39, _38
	ld	a4,-24(s0)		# tmp264, third
	add	a4,a4,a5	# _39, _40, tmp264
# eval/problem34//code.c:28:             out[i] = third[i / 3];
	lw	a5,-44(s0)		# _41, i
	slli	a5,a5,2	#, _42, _41
	ld	a3,-72(s0)		# tmp265, out
	add	a5,a3,a5	# _42, _43, tmp265
# eval/problem34//code.c:28:             out[i] = third[i / 3];
	lw	a4,0(a4)		# _44, *_40
# eval/problem34//code.c:28:             out[i] = third[i / 3];
	sw	a4,0(a5)	# _44, *_43
	j	.L12		#
.L11:
# eval/problem34//code.c:30:             out[i] = l[i];
	lw	a5,-44(s0)		# _45, i
	slli	a5,a5,2	#, _46, _45
	ld	a4,-56(s0)		# tmp266, l
	add	a4,a4,a5	# _46, _47, tmp266
# eval/problem34//code.c:30:             out[i] = l[i];
	lw	a5,-44(s0)		# _48, i
	slli	a5,a5,2	#, _49, _48
	ld	a3,-72(s0)		# tmp267, out
	add	a5,a3,a5	# _49, _50, tmp267
# eval/problem34//code.c:30:             out[i] = l[i];
	lw	a4,0(a4)		# _51, *_47
# eval/problem34//code.c:30:             out[i] = l[i];
	sw	a4,0(a5)	# _51, *_50
.L12:
# eval/problem34//code.c:26:     for (i = 0; i < size; i++) {
	lw	a5,-44(s0)		# tmp270, i
	addiw	a5,a5,1	#, tmp268, tmp269
	sw	a5,-44(s0)	# tmp268, i
.L10:
# eval/problem34//code.c:26:     for (i = 0; i < size; i++) {
	lw	a5,-44(s0)		# tmp272, i
	mv	a4,a5	# tmp271, tmp272
	lw	a5,-60(s0)		# tmp274, size
	sext.w	a4,a4	# tmp275, tmp271
	sext.w	a5,a5	# tmp276, tmp273
	blt	a4,a5,.L13	#, tmp275, tmp276,
# eval/problem34//code.c:34:     free(third);
	ld	a0,-24(s0)		#, third
	call	free@plt	#
# eval/problem34//code.c:35: }
	nop	
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
