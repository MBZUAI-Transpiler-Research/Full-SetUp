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
	addi	sp,sp,-128	#,,
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-104(s0)	# numbers, numbers
	mv	a5,a1	# tmp170, size
	sd	a2,-120(s0)	# new_size, new_size
	sw	a5,-108(s0)	# tmp171, size
# eval/problem27//code.c:5:     int* out = (int*)malloc(size * sizeof(int));
	lw	a5,-108(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp172,
	sd	a5,-40(s0)	# tmp172, out
# eval/problem27//code.c:6:     int* has1 = (int*)calloc(size, sizeof(int));
	lw	a5,-108(s0)		# _3, size
	li	a1,4		#,
	mv	a0,a5	#, _3
	call	calloc@plt	#
	mv	a5,a0	# tmp173,
	sd	a5,-32(s0)	# tmp173, has1
# eval/problem27//code.c:7:     int* has2 = (int*)calloc(size, sizeof(int));
	lw	a5,-108(s0)		# _4, size
	li	a1,4		#,
	mv	a0,a5	#, _4
	call	calloc@plt	#
	mv	a5,a0	# tmp174,
	sd	a5,-24(s0)	# tmp174, has2
# eval/problem27//code.c:8:     int has1_count = 0;
	sw	zero,-92(s0)	#, has1_count
# eval/problem27//code.c:9:     int has2_count = 0;
	sw	zero,-88(s0)	#, has2_count
# eval/problem27//code.c:10:     int out_count = 0;
	sw	zero,-84(s0)	#, out_count
# eval/problem27//code.c:12:     for (int i = 0; i < size; i++) {
	sw	zero,-80(s0)	#, i
# eval/problem27//code.c:12:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L14:
# eval/problem27//code.c:13:         int num = numbers[i];
	lw	a5,-80(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-104(s0)		# tmp175, numbers
	add	a5,a4,a5	# _6, _7, tmp175
# eval/problem27//code.c:13:         int num = numbers[i];
	lw	a5,0(a5)		# tmp176, *_7
	sw	a5,-44(s0)	# tmp176, num
# eval/problem27//code.c:14:         int in_has2 = 0;
	sw	zero,-76(s0)	#, in_has2
# eval/problem27//code.c:16:         for (int j = 0; j < has2_count; j++) {
	sw	zero,-72(s0)	#, j
# eval/problem27//code.c:16:         for (int j = 0; j < has2_count; j++) {
	j	.L3		#
.L6:
# eval/problem27//code.c:17:             if (has2[j] == num) {
	lw	a5,-72(s0)		# _8, j
	slli	a5,a5,2	#, _9, _8
	ld	a4,-24(s0)		# tmp177, has2
	add	a5,a4,a5	# _9, _10, tmp177
	lw	a4,0(a5)		# _11, *_10
# eval/problem27//code.c:17:             if (has2[j] == num) {
	lw	a5,-44(s0)		# tmp179, num
	sext.w	a5,a5	# tmp180, tmp178
	bne	a5,a4,.L4	#, tmp180, tmp181,
# eval/problem27//code.c:18:                 in_has2 = 1;
	li	a5,1		# tmp182,
	sw	a5,-76(s0)	# tmp182, in_has2
# eval/problem27//code.c:19:                 break;
	j	.L5		#
.L4:
# eval/problem27//code.c:16:         for (int j = 0; j < has2_count; j++) {
	lw	a5,-72(s0)		# tmp185, j
	addiw	a5,a5,1	#, tmp183, tmp184
	sw	a5,-72(s0)	# tmp183, j
.L3:
# eval/problem27//code.c:16:         for (int j = 0; j < has2_count; j++) {
	lw	a5,-72(s0)		# tmp187, j
	mv	a4,a5	# tmp186, tmp187
	lw	a5,-88(s0)		# tmp189, has2_count
	sext.w	a4,a4	# tmp190, tmp186
	sext.w	a5,a5	# tmp191, tmp188
	blt	a4,a5,.L6	#, tmp190, tmp191,
.L5:
# eval/problem27//code.c:22:         if (in_has2) continue;
	lw	a5,-76(s0)		# tmp193, in_has2
	sext.w	a5,a5	# tmp194, tmp192
	bne	a5,zero,.L23	#, tmp194,,
# eval/problem27//code.c:24:         int in_has1 = 0;
	sw	zero,-68(s0)	#, in_has1
# eval/problem27//code.c:25:         for (int j = 0; j < has1_count; j++) {
	sw	zero,-64(s0)	#, j
# eval/problem27//code.c:25:         for (int j = 0; j < has1_count; j++) {
	j	.L9		#
.L12:
# eval/problem27//code.c:26:             if (has1[j] == num) {
	lw	a5,-64(s0)		# _12, j
	slli	a5,a5,2	#, _13, _12
	ld	a4,-32(s0)		# tmp195, has1
	add	a5,a4,a5	# _13, _14, tmp195
	lw	a4,0(a5)		# _15, *_14
# eval/problem27//code.c:26:             if (has1[j] == num) {
	lw	a5,-44(s0)		# tmp197, num
	sext.w	a5,a5	# tmp198, tmp196
	bne	a5,a4,.L10	#, tmp198, tmp199,
# eval/problem27//code.c:27:                 in_has1 = 1;
	li	a5,1		# tmp200,
	sw	a5,-68(s0)	# tmp200, in_has1
# eval/problem27//code.c:28:                 break;
	j	.L11		#
.L10:
# eval/problem27//code.c:25:         for (int j = 0; j < has1_count; j++) {
	lw	a5,-64(s0)		# tmp203, j
	addiw	a5,a5,1	#, tmp201, tmp202
	sw	a5,-64(s0)	# tmp201, j
.L9:
# eval/problem27//code.c:25:         for (int j = 0; j < has1_count; j++) {
	lw	a5,-64(s0)		# tmp205, j
	mv	a4,a5	# tmp204, tmp205
	lw	a5,-92(s0)		# tmp207, has1_count
	sext.w	a4,a4	# tmp208, tmp204
	sext.w	a5,a5	# tmp209, tmp206
	blt	a4,a5,.L12	#, tmp208, tmp209,
.L11:
# eval/problem27//code.c:31:         if (in_has1) {
	lw	a5,-68(s0)		# tmp211, in_has1
	sext.w	a5,a5	# tmp212, tmp210
	beq	a5,zero,.L13	#, tmp212,,
# eval/problem27//code.c:32:             has2[has2_count++] = num;
	lw	a5,-88(s0)		# has2_count.0_16, has2_count
	addiw	a4,a5,1	#, tmp213, has2_count.0_16
	sw	a4,-88(s0)	# tmp213, has2_count
# eval/problem27//code.c:32:             has2[has2_count++] = num;
	slli	a5,a5,2	#, _18, _17
	ld	a4,-24(s0)		# tmp214, has2
	add	a5,a4,a5	# _18, _19, tmp214
# eval/problem27//code.c:32:             has2[has2_count++] = num;
	lw	a4,-44(s0)		# tmp215, num
	sw	a4,0(a5)	# tmp215, *_19
	j	.L8		#
.L13:
# eval/problem27//code.c:34:             has1[has1_count++] = num;
	lw	a5,-92(s0)		# has1_count.1_20, has1_count
	addiw	a4,a5,1	#, tmp216, has1_count.1_20
	sw	a4,-92(s0)	# tmp216, has1_count
# eval/problem27//code.c:34:             has1[has1_count++] = num;
	slli	a5,a5,2	#, _22, _21
	ld	a4,-32(s0)		# tmp217, has1
	add	a5,a4,a5	# _22, _23, tmp217
# eval/problem27//code.c:34:             has1[has1_count++] = num;
	lw	a4,-44(s0)		# tmp218, num
	sw	a4,0(a5)	# tmp218, *_23
	j	.L8		#
.L23:
# eval/problem27//code.c:22:         if (in_has2) continue;
	nop	
.L8:
# eval/problem27//code.c:12:     for (int i = 0; i < size; i++) {
	lw	a5,-80(s0)		# tmp221, i
	addiw	a5,a5,1	#, tmp219, tmp220
	sw	a5,-80(s0)	# tmp219, i
.L2:
# eval/problem27//code.c:12:     for (int i = 0; i < size; i++) {
	lw	a5,-80(s0)		# tmp223, i
	mv	a4,a5	# tmp222, tmp223
	lw	a5,-108(s0)		# tmp225, size
	sext.w	a4,a4	# tmp226, tmp222
	sext.w	a5,a5	# tmp227, tmp224
	blt	a4,a5,.L14	#, tmp226, tmp227,
# eval/problem27//code.c:38:     for (int i = 0; i < size; i++) {
	sw	zero,-60(s0)	#, i
# eval/problem27//code.c:38:     for (int i = 0; i < size; i++) {
	j	.L15		#
.L21:
# eval/problem27//code.c:39:         int num = numbers[i];
	lw	a5,-60(s0)		# _24, i
	slli	a5,a5,2	#, _25, _24
	ld	a4,-104(s0)		# tmp228, numbers
	add	a5,a4,a5	# _25, _26, tmp228
# eval/problem27//code.c:39:         int num = numbers[i];
	lw	a5,0(a5)		# tmp229, *_26
	sw	a5,-48(s0)	# tmp229, num
# eval/problem27//code.c:40:         int in_has2 = 0;
	sw	zero,-56(s0)	#, in_has2
# eval/problem27//code.c:41:         for (int j = 0; j < has2_count; j++) {
	sw	zero,-52(s0)	#, j
# eval/problem27//code.c:41:         for (int j = 0; j < has2_count; j++) {
	j	.L16		#
.L19:
# eval/problem27//code.c:42:             if (has2[j] == num) {
	lw	a5,-52(s0)		# _27, j
	slli	a5,a5,2	#, _28, _27
	ld	a4,-24(s0)		# tmp230, has2
	add	a5,a4,a5	# _28, _29, tmp230
	lw	a4,0(a5)		# _30, *_29
# eval/problem27//code.c:42:             if (has2[j] == num) {
	lw	a5,-48(s0)		# tmp232, num
	sext.w	a5,a5	# tmp233, tmp231
	bne	a5,a4,.L17	#, tmp233, tmp234,
# eval/problem27//code.c:43:                 in_has2 = 1;
	li	a5,1		# tmp235,
	sw	a5,-56(s0)	# tmp235, in_has2
# eval/problem27//code.c:44:                 break;
	j	.L18		#
.L17:
# eval/problem27//code.c:41:         for (int j = 0; j < has2_count; j++) {
	lw	a5,-52(s0)		# tmp238, j
	addiw	a5,a5,1	#, tmp236, tmp237
	sw	a5,-52(s0)	# tmp236, j
.L16:
# eval/problem27//code.c:41:         for (int j = 0; j < has2_count; j++) {
	lw	a5,-52(s0)		# tmp240, j
	mv	a4,a5	# tmp239, tmp240
	lw	a5,-88(s0)		# tmp242, has2_count
	sext.w	a4,a4	# tmp243, tmp239
	sext.w	a5,a5	# tmp244, tmp241
	blt	a4,a5,.L19	#, tmp243, tmp244,
.L18:
# eval/problem27//code.c:47:         if (!in_has2) {
	lw	a5,-56(s0)		# tmp246, in_has2
	sext.w	a5,a5	# tmp247, tmp245
	bne	a5,zero,.L20	#, tmp247,,
# eval/problem27//code.c:48:             out[out_count++] = num;
	lw	a5,-84(s0)		# out_count.2_31, out_count
	addiw	a4,a5,1	#, tmp248, out_count.2_31
	sw	a4,-84(s0)	# tmp248, out_count
# eval/problem27//code.c:48:             out[out_count++] = num;
	slli	a5,a5,2	#, _33, _32
	ld	a4,-40(s0)		# tmp249, out
	add	a5,a4,a5	# _33, _34, tmp249
# eval/problem27//code.c:48:             out[out_count++] = num;
	lw	a4,-48(s0)		# tmp250, num
	sw	a4,0(a5)	# tmp250, *_34
.L20:
# eval/problem27//code.c:38:     for (int i = 0; i < size; i++) {
	lw	a5,-60(s0)		# tmp253, i
	addiw	a5,a5,1	#, tmp251, tmp252
	sw	a5,-60(s0)	# tmp251, i
.L15:
# eval/problem27//code.c:38:     for (int i = 0; i < size; i++) {
	lw	a5,-60(s0)		# tmp255, i
	mv	a4,a5	# tmp254, tmp255
	lw	a5,-108(s0)		# tmp257, size
	sext.w	a4,a4	# tmp258, tmp254
	sext.w	a5,a5	# tmp259, tmp256
	blt	a4,a5,.L21	#, tmp258, tmp259,
# eval/problem27//code.c:52:     *new_size = out_count;
	ld	a5,-120(s0)		# tmp260, new_size
	lw	a4,-84(s0)		# tmp261, out_count
	sw	a4,0(a5)	# tmp261, *new_size_66(D)
# eval/problem27//code.c:53:     free(has1);
	ld	a0,-32(s0)		#, has1
	call	free@plt	#
# eval/problem27//code.c:54:     free(has2);
	ld	a0,-24(s0)		#, has2
	call	free@plt	#
# eval/problem27//code.c:55:     return out;
	ld	a5,-40(s0)		# _70, out
# eval/problem27//code.c:56: }
	mv	a0,a5	#, <retval>
	ld	ra,120(sp)		#,
	.cfi_restore 1
	ld	s0,112(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
