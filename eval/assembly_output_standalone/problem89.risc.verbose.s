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
	sd	a0,-56(s0)	# array, array
	mv	a5,a1	# tmp210, size
	sd	a2,-72(s0)	# out_array, out_array
	sd	a3,-80(s0)	# out_size, out_size
	sw	a5,-60(s0)	# tmp211, size
# eval/problem89//code.c:5:     *out_size = size;
	ld	a5,-80(s0)		# tmp212, out_size
	lw	a4,-60(s0)		# tmp213, size
	sw	a4,0(a5)	# tmp213, *out_size_86(D)
# eval/problem89//code.c:6:     if (size == 0) {
	lw	a5,-60(s0)		# tmp215, size
	sext.w	a5,a5	# tmp216, tmp214
	bne	a5,zero,.L2	#, tmp216,,
# eval/problem89//code.c:7:         *out_array = NULL;
	ld	a5,-72(s0)		# tmp217, out_array
	sd	zero,0(a5)	#, *out_array_90(D)
# eval/problem89//code.c:8:         return;
	j	.L1		#
.L2:
# eval/problem89//code.c:11:     *out_array = (int *)malloc(sizeof(int) * size);
	lw	a5,-60(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp218,
	mv	a4,a5	# _3, tmp218
# eval/problem89//code.c:11:     *out_array = (int *)malloc(sizeof(int) * size);
	ld	a5,-72(s0)		# tmp219, out_array
	sd	a4,0(a5)	# _3, *out_array_90(D)
# eval/problem89//code.c:12:     if (*out_array == NULL) {
	ld	a5,-72(s0)		# tmp220, out_array
	ld	a5,0(a5)		# _4, *out_array_90(D)
# eval/problem89//code.c:12:     if (*out_array == NULL) {
	bne	a5,zero,.L4	#, _4,,
# eval/problem89//code.c:13:         exit(1);
	li	a0,1		#,
	call	exit@plt	#
.L4:
# eval/problem89//code.c:16:     for (int i = 0; i < size; i++) {
	sw	zero,-40(s0)	#, i
# eval/problem89//code.c:16:     for (int i = 0; i < size; i++) {
	j	.L5		#
.L6:
# eval/problem89//code.c:17:         (*out_array)[i] = array[i];
	lw	a5,-40(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp221, array
	add	a4,a4,a5	# _6, _7, tmp221
# eval/problem89//code.c:17:         (*out_array)[i] = array[i];
	ld	a5,-72(s0)		# tmp222, out_array
	ld	a3,0(a5)		# _8, *out_array_90(D)
# eval/problem89//code.c:17:         (*out_array)[i] = array[i];
	lw	a5,-40(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	add	a5,a3,a5	# _10, _11, _8
# eval/problem89//code.c:17:         (*out_array)[i] = array[i];
	lw	a4,0(a4)		# _12, *_7
# eval/problem89//code.c:17:         (*out_array)[i] = array[i];
	sw	a4,0(a5)	# _12, *_11
# eval/problem89//code.c:16:     for (int i = 0; i < size; i++) {
	lw	a5,-40(s0)		# tmp225, i
	addiw	a5,a5,1	#, tmp223, tmp224
	sw	a5,-40(s0)	# tmp223, i
.L5:
# eval/problem89//code.c:16:     for (int i = 0; i < size; i++) {
	lw	a5,-40(s0)		# tmp227, i
	mv	a4,a5	# tmp226, tmp227
	lw	a5,-60(s0)		# tmp229, size
	sext.w	a4,a4	# tmp230, tmp226
	sext.w	a5,a5	# tmp231, tmp228
	blt	a4,a5,.L6	#, tmp230, tmp231,
# eval/problem89//code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	ld	a5,-56(s0)		# tmp232, array
	lw	a4,0(a5)		# _13, *array_93(D)
# eval/problem89//code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	lw	a5,-60(s0)		# _14, size
	slli	a5,a5,2	#, _15, _14
	addi	a5,a5,-4	#, _16, _15
	ld	a3,-56(s0)		# tmp233, array
	add	a5,a3,a5	# _16, _17, tmp233
	lw	a5,0(a5)		# _18, *_17
# eval/problem89//code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	addw	a5,a4,a5	# _18, tmp234, _13
	sext.w	a5,a5	# _19, tmp234
# eval/problem89//code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	mv	a4,a5	# tmp236, _19
	sraiw	a5,a4,31	#, tmp237, tmp236
	srliw	a5,a5,31	#, tmp238, tmp237
	addw	a4,a4,a5	# tmp238, tmp239, tmp236
	andi	a4,a4,1	#, tmp240, tmp239
	subw	a5,a4,a5	# tmp241, tmp240, tmp238
	sext.w	a5,a5	# _20, tmp241
# eval/problem89//code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	mv	a4,a5	# tmp244, _20
	li	a5,1		# tmp246,
	sub	a5,a4,a5	# tmp245, tmp244, tmp246
	seqz	a5,a5	# tmp243, tmp245
	andi	a5,a5,0xff	# _21, tmp242
# eval/problem89//code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	sw	a5,-28(s0)	# _21, shouldSortAscending
# eval/problem89//code.c:22:     for (int i = 0; i < size - 1; i++) {
	sw	zero,-36(s0)	#, i
# eval/problem89//code.c:22:     for (int i = 0; i < size - 1; i++) {
	j	.L7		#
.L12:
# eval/problem89//code.c:23:         for (int j = i + 1; j < size; j++) {
	lw	a5,-36(s0)		# tmp249, i
	addiw	a5,a5,1	#, tmp247, tmp248
	sw	a5,-32(s0)	# tmp247, j
# eval/problem89//code.c:23:         for (int j = i + 1; j < size; j++) {
	j	.L8		#
.L11:
# eval/problem89//code.c:24:             if (shouldSortAscending) {
	lw	a5,-28(s0)		# tmp251, shouldSortAscending
	sext.w	a5,a5	# tmp252, tmp250
	beq	a5,zero,.L9	#, tmp252,,
# eval/problem89//code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	ld	a5,-72(s0)		# tmp253, out_array
	ld	a4,0(a5)		# _22, *out_array_90(D)
# eval/problem89//code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	lw	a5,-36(s0)		# _23, i
	slli	a5,a5,2	#, _24, _23
	add	a5,a4,a5	# _24, _25, _22
	lw	a3,0(a5)		# _26, *_25
# eval/problem89//code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	ld	a5,-72(s0)		# tmp254, out_array
	ld	a4,0(a5)		# _27, *out_array_90(D)
# eval/problem89//code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	lw	a5,-32(s0)		# _28, j
	slli	a5,a5,2	#, _29, _28
	add	a5,a4,a5	# _29, _30, _27
	lw	a5,0(a5)		# _31, *_30
# eval/problem89//code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	mv	a4,a3	# tmp255, _26
	ble	a4,a5,.L10	#, tmp255, tmp256,
# eval/problem89//code.c:26:                     int temp = (*out_array)[i];
	ld	a5,-72(s0)		# tmp257, out_array
	ld	a4,0(a5)		# _32, *out_array_90(D)
# eval/problem89//code.c:26:                     int temp = (*out_array)[i];
	lw	a5,-36(s0)		# _33, i
	slli	a5,a5,2	#, _34, _33
	add	a5,a4,a5	# _34, _35, _32
# eval/problem89//code.c:26:                     int temp = (*out_array)[i];
	lw	a5,0(a5)		# tmp258, *_35
	sw	a5,-20(s0)	# tmp258, temp
# eval/problem89//code.c:27:                     (*out_array)[i] = (*out_array)[j];
	ld	a5,-72(s0)		# tmp259, out_array
	ld	a4,0(a5)		# _36, *out_array_90(D)
# eval/problem89//code.c:27:                     (*out_array)[i] = (*out_array)[j];
	lw	a5,-32(s0)		# _37, j
	slli	a5,a5,2	#, _38, _37
	add	a4,a4,a5	# _38, _39, _36
# eval/problem89//code.c:27:                     (*out_array)[i] = (*out_array)[j];
	ld	a5,-72(s0)		# tmp260, out_array
	ld	a3,0(a5)		# _40, *out_array_90(D)
# eval/problem89//code.c:27:                     (*out_array)[i] = (*out_array)[j];
	lw	a5,-36(s0)		# _41, i
	slli	a5,a5,2	#, _42, _41
	add	a5,a3,a5	# _42, _43, _40
# eval/problem89//code.c:27:                     (*out_array)[i] = (*out_array)[j];
	lw	a4,0(a4)		# _44, *_39
# eval/problem89//code.c:27:                     (*out_array)[i] = (*out_array)[j];
	sw	a4,0(a5)	# _44, *_43
# eval/problem89//code.c:28:                     (*out_array)[j] = temp;
	ld	a5,-72(s0)		# tmp261, out_array
	ld	a4,0(a5)		# _45, *out_array_90(D)
# eval/problem89//code.c:28:                     (*out_array)[j] = temp;
	lw	a5,-32(s0)		# _46, j
	slli	a5,a5,2	#, _47, _46
	add	a5,a4,a5	# _47, _48, _45
# eval/problem89//code.c:28:                     (*out_array)[j] = temp;
	lw	a4,-20(s0)		# tmp262, temp
	sw	a4,0(a5)	# tmp262, *_48
	j	.L10		#
.L9:
# eval/problem89//code.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	ld	a5,-72(s0)		# tmp263, out_array
	ld	a4,0(a5)		# _49, *out_array_90(D)
# eval/problem89//code.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	lw	a5,-36(s0)		# _50, i
	slli	a5,a5,2	#, _51, _50
	add	a5,a4,a5	# _51, _52, _49
	lw	a3,0(a5)		# _53, *_52
# eval/problem89//code.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	ld	a5,-72(s0)		# tmp264, out_array
	ld	a4,0(a5)		# _54, *out_array_90(D)
# eval/problem89//code.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	lw	a5,-32(s0)		# _55, j
	slli	a5,a5,2	#, _56, _55
	add	a5,a4,a5	# _56, _57, _54
	lw	a5,0(a5)		# _58, *_57
# eval/problem89//code.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	mv	a4,a3	# tmp265, _53
	bge	a4,a5,.L10	#, tmp265, tmp266,
# eval/problem89//code.c:32:                     int temp = (*out_array)[i];
	ld	a5,-72(s0)		# tmp267, out_array
	ld	a4,0(a5)		# _59, *out_array_90(D)
# eval/problem89//code.c:32:                     int temp = (*out_array)[i];
	lw	a5,-36(s0)		# _60, i
	slli	a5,a5,2	#, _61, _60
	add	a5,a4,a5	# _61, _62, _59
# eval/problem89//code.c:32:                     int temp = (*out_array)[i];
	lw	a5,0(a5)		# tmp268, *_62
	sw	a5,-24(s0)	# tmp268, temp
# eval/problem89//code.c:33:                     (*out_array)[i] = (*out_array)[j];
	ld	a5,-72(s0)		# tmp269, out_array
	ld	a4,0(a5)		# _63, *out_array_90(D)
# eval/problem89//code.c:33:                     (*out_array)[i] = (*out_array)[j];
	lw	a5,-32(s0)		# _64, j
	slli	a5,a5,2	#, _65, _64
	add	a4,a4,a5	# _65, _66, _63
# eval/problem89//code.c:33:                     (*out_array)[i] = (*out_array)[j];
	ld	a5,-72(s0)		# tmp270, out_array
	ld	a3,0(a5)		# _67, *out_array_90(D)
# eval/problem89//code.c:33:                     (*out_array)[i] = (*out_array)[j];
	lw	a5,-36(s0)		# _68, i
	slli	a5,a5,2	#, _69, _68
	add	a5,a3,a5	# _69, _70, _67
# eval/problem89//code.c:33:                     (*out_array)[i] = (*out_array)[j];
	lw	a4,0(a4)		# _71, *_66
# eval/problem89//code.c:33:                     (*out_array)[i] = (*out_array)[j];
	sw	a4,0(a5)	# _71, *_70
# eval/problem89//code.c:34:                     (*out_array)[j] = temp;
	ld	a5,-72(s0)		# tmp271, out_array
	ld	a4,0(a5)		# _72, *out_array_90(D)
# eval/problem89//code.c:34:                     (*out_array)[j] = temp;
	lw	a5,-32(s0)		# _73, j
	slli	a5,a5,2	#, _74, _73
	add	a5,a4,a5	# _74, _75, _72
# eval/problem89//code.c:34:                     (*out_array)[j] = temp;
	lw	a4,-24(s0)		# tmp272, temp
	sw	a4,0(a5)	# tmp272, *_75
.L10:
# eval/problem89//code.c:23:         for (int j = i + 1; j < size; j++) {
	lw	a5,-32(s0)		# tmp275, j
	addiw	a5,a5,1	#, tmp273, tmp274
	sw	a5,-32(s0)	# tmp273, j
.L8:
# eval/problem89//code.c:23:         for (int j = i + 1; j < size; j++) {
	lw	a5,-32(s0)		# tmp277, j
	mv	a4,a5	# tmp276, tmp277
	lw	a5,-60(s0)		# tmp279, size
	sext.w	a4,a4	# tmp280, tmp276
	sext.w	a5,a5	# tmp281, tmp278
	blt	a4,a5,.L11	#, tmp280, tmp281,
# eval/problem89//code.c:22:     for (int i = 0; i < size - 1; i++) {
	lw	a5,-36(s0)		# tmp284, i
	addiw	a5,a5,1	#, tmp282, tmp283
	sw	a5,-36(s0)	# tmp282, i
.L7:
# eval/problem89//code.c:22:     for (int i = 0; i < size - 1; i++) {
	lw	a5,-60(s0)		# tmp287, size
	addiw	a5,a5,-1	#, tmp285, tmp286
	sext.w	a4,a5	# _76, tmp285
# eval/problem89//code.c:22:     for (int i = 0; i < size - 1; i++) {
	lw	a5,-36(s0)		# tmp289, i
	sext.w	a5,a5	# tmp290, tmp288
	blt	a5,a4,.L12	#, tmp290, tmp291,
.L1:
# eval/problem89//code.c:39: }
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
