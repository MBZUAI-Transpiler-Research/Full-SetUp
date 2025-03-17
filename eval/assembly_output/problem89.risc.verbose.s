	.file	"problem89.c"
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
# problem89.c:5:     *out_size = size;
	ld	a5,-80(s0)		# tmp212, out_size
	lw	a4,-60(s0)		# tmp213, size
	sw	a4,0(a5)	# tmp213, *out_size_86(D)
# problem89.c:6:     if (size == 0) {
	lw	a5,-60(s0)		# tmp215, size
	sext.w	a5,a5	# tmp216, tmp214
	bne	a5,zero,.L2	#, tmp216,,
# problem89.c:7:         *out_array = NULL;
	ld	a5,-72(s0)		# tmp217, out_array
	sd	zero,0(a5)	#, *out_array_90(D)
# problem89.c:8:         return;
	j	.L1		#
.L2:
# problem89.c:11:     *out_array = (int *)malloc(sizeof(int) * size);
	lw	a5,-60(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp218,
	mv	a4,a5	# _3, tmp218
# problem89.c:11:     *out_array = (int *)malloc(sizeof(int) * size);
	ld	a5,-72(s0)		# tmp219, out_array
	sd	a4,0(a5)	# _3, *out_array_90(D)
# problem89.c:12:     if (*out_array == NULL) {
	ld	a5,-72(s0)		# tmp220, out_array
	ld	a5,0(a5)		# _4, *out_array_90(D)
# problem89.c:12:     if (*out_array == NULL) {
	bne	a5,zero,.L4	#, _4,,
# problem89.c:13:         exit(1);
	li	a0,1		#,
	call	exit@plt	#
.L4:
# problem89.c:16:     for (int i = 0; i < size; i++) {
	sw	zero,-40(s0)	#, i
# problem89.c:16:     for (int i = 0; i < size; i++) {
	j	.L5		#
.L6:
# problem89.c:17:         (*out_array)[i] = array[i];
	lw	a5,-40(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp221, array
	add	a4,a4,a5	# _6, _7, tmp221
# problem89.c:17:         (*out_array)[i] = array[i];
	ld	a5,-72(s0)		# tmp222, out_array
	ld	a3,0(a5)		# _8, *out_array_90(D)
# problem89.c:17:         (*out_array)[i] = array[i];
	lw	a5,-40(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	add	a5,a3,a5	# _10, _11, _8
# problem89.c:17:         (*out_array)[i] = array[i];
	lw	a4,0(a4)		# _12, *_7
# problem89.c:17:         (*out_array)[i] = array[i];
	sw	a4,0(a5)	# _12, *_11
# problem89.c:16:     for (int i = 0; i < size; i++) {
	lw	a5,-40(s0)		# tmp225, i
	addiw	a5,a5,1	#, tmp223, tmp224
	sw	a5,-40(s0)	# tmp223, i
.L5:
# problem89.c:16:     for (int i = 0; i < size; i++) {
	lw	a5,-40(s0)		# tmp227, i
	mv	a4,a5	# tmp226, tmp227
	lw	a5,-60(s0)		# tmp229, size
	sext.w	a4,a4	# tmp230, tmp226
	sext.w	a5,a5	# tmp231, tmp228
	blt	a4,a5,.L6	#, tmp230, tmp231,
# problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	ld	a5,-56(s0)		# tmp232, array
	lw	a4,0(a5)		# _13, *array_93(D)
# problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	lw	a5,-60(s0)		# _14, size
	slli	a5,a5,2	#, _15, _14
	addi	a5,a5,-4	#, _16, _15
	ld	a3,-56(s0)		# tmp233, array
	add	a5,a3,a5	# _16, _17, tmp233
	lw	a5,0(a5)		# _18, *_17
# problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	addw	a5,a4,a5	# _18, tmp234, _13
	sext.w	a5,a5	# _19, tmp234
# problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	mv	a4,a5	# tmp236, _19
	sraiw	a5,a4,31	#, tmp237, tmp236
	srliw	a5,a5,31	#, tmp238, tmp237
	addw	a4,a4,a5	# tmp238, tmp239, tmp236
	andi	a4,a4,1	#, tmp240, tmp239
	subw	a5,a4,a5	# tmp241, tmp240, tmp238
	sext.w	a5,a5	# _20, tmp241
# problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	mv	a4,a5	# tmp244, _20
	li	a5,1		# tmp246,
	sub	a5,a4,a5	# tmp245, tmp244, tmp246
	seqz	a5,a5	# tmp243, tmp245
	andi	a5,a5,0xff	# _21, tmp242
# problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	sw	a5,-28(s0)	# _21, shouldSortAscending
# problem89.c:22:     for (int i = 0; i < size - 1; i++) {
	sw	zero,-36(s0)	#, i
# problem89.c:22:     for (int i = 0; i < size - 1; i++) {
	j	.L7		#
.L12:
# problem89.c:23:         for (int j = i + 1; j < size; j++) {
	lw	a5,-36(s0)		# tmp249, i
	addiw	a5,a5,1	#, tmp247, tmp248
	sw	a5,-32(s0)	# tmp247, j
# problem89.c:23:         for (int j = i + 1; j < size; j++) {
	j	.L8		#
.L11:
# problem89.c:24:             if (shouldSortAscending) {
	lw	a5,-28(s0)		# tmp251, shouldSortAscending
	sext.w	a5,a5	# tmp252, tmp250
	beq	a5,zero,.L9	#, tmp252,,
# problem89.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	ld	a5,-72(s0)		# tmp253, out_array
	ld	a4,0(a5)		# _22, *out_array_90(D)
# problem89.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	lw	a5,-36(s0)		# _23, i
	slli	a5,a5,2	#, _24, _23
	add	a5,a4,a5	# _24, _25, _22
	lw	a3,0(a5)		# _26, *_25
# problem89.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	ld	a5,-72(s0)		# tmp254, out_array
	ld	a4,0(a5)		# _27, *out_array_90(D)
# problem89.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	lw	a5,-32(s0)		# _28, j
	slli	a5,a5,2	#, _29, _28
	add	a5,a4,a5	# _29, _30, _27
	lw	a5,0(a5)		# _31, *_30
# problem89.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	mv	a4,a3	# tmp255, _26
	ble	a4,a5,.L10	#, tmp255, tmp256,
# problem89.c:26:                     int temp = (*out_array)[i];
	ld	a5,-72(s0)		# tmp257, out_array
	ld	a4,0(a5)		# _32, *out_array_90(D)
# problem89.c:26:                     int temp = (*out_array)[i];
	lw	a5,-36(s0)		# _33, i
	slli	a5,a5,2	#, _34, _33
	add	a5,a4,a5	# _34, _35, _32
# problem89.c:26:                     int temp = (*out_array)[i];
	lw	a5,0(a5)		# tmp258, *_35
	sw	a5,-20(s0)	# tmp258, temp
# problem89.c:27:                     (*out_array)[i] = (*out_array)[j];
	ld	a5,-72(s0)		# tmp259, out_array
	ld	a4,0(a5)		# _36, *out_array_90(D)
# problem89.c:27:                     (*out_array)[i] = (*out_array)[j];
	lw	a5,-32(s0)		# _37, j
	slli	a5,a5,2	#, _38, _37
	add	a4,a4,a5	# _38, _39, _36
# problem89.c:27:                     (*out_array)[i] = (*out_array)[j];
	ld	a5,-72(s0)		# tmp260, out_array
	ld	a3,0(a5)		# _40, *out_array_90(D)
# problem89.c:27:                     (*out_array)[i] = (*out_array)[j];
	lw	a5,-36(s0)		# _41, i
	slli	a5,a5,2	#, _42, _41
	add	a5,a3,a5	# _42, _43, _40
# problem89.c:27:                     (*out_array)[i] = (*out_array)[j];
	lw	a4,0(a4)		# _44, *_39
# problem89.c:27:                     (*out_array)[i] = (*out_array)[j];
	sw	a4,0(a5)	# _44, *_43
# problem89.c:28:                     (*out_array)[j] = temp;
	ld	a5,-72(s0)		# tmp261, out_array
	ld	a4,0(a5)		# _45, *out_array_90(D)
# problem89.c:28:                     (*out_array)[j] = temp;
	lw	a5,-32(s0)		# _46, j
	slli	a5,a5,2	#, _47, _46
	add	a5,a4,a5	# _47, _48, _45
# problem89.c:28:                     (*out_array)[j] = temp;
	lw	a4,-20(s0)		# tmp262, temp
	sw	a4,0(a5)	# tmp262, *_48
	j	.L10		#
.L9:
# problem89.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	ld	a5,-72(s0)		# tmp263, out_array
	ld	a4,0(a5)		# _49, *out_array_90(D)
# problem89.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	lw	a5,-36(s0)		# _50, i
	slli	a5,a5,2	#, _51, _50
	add	a5,a4,a5	# _51, _52, _49
	lw	a3,0(a5)		# _53, *_52
# problem89.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	ld	a5,-72(s0)		# tmp264, out_array
	ld	a4,0(a5)		# _54, *out_array_90(D)
# problem89.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	lw	a5,-32(s0)		# _55, j
	slli	a5,a5,2	#, _56, _55
	add	a5,a4,a5	# _56, _57, _54
	lw	a5,0(a5)		# _58, *_57
# problem89.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	mv	a4,a3	# tmp265, _53
	bge	a4,a5,.L10	#, tmp265, tmp266,
# problem89.c:32:                     int temp = (*out_array)[i];
	ld	a5,-72(s0)		# tmp267, out_array
	ld	a4,0(a5)		# _59, *out_array_90(D)
# problem89.c:32:                     int temp = (*out_array)[i];
	lw	a5,-36(s0)		# _60, i
	slli	a5,a5,2	#, _61, _60
	add	a5,a4,a5	# _61, _62, _59
# problem89.c:32:                     int temp = (*out_array)[i];
	lw	a5,0(a5)		# tmp268, *_62
	sw	a5,-24(s0)	# tmp268, temp
# problem89.c:33:                     (*out_array)[i] = (*out_array)[j];
	ld	a5,-72(s0)		# tmp269, out_array
	ld	a4,0(a5)		# _63, *out_array_90(D)
# problem89.c:33:                     (*out_array)[i] = (*out_array)[j];
	lw	a5,-32(s0)		# _64, j
	slli	a5,a5,2	#, _65, _64
	add	a4,a4,a5	# _65, _66, _63
# problem89.c:33:                     (*out_array)[i] = (*out_array)[j];
	ld	a5,-72(s0)		# tmp270, out_array
	ld	a3,0(a5)		# _67, *out_array_90(D)
# problem89.c:33:                     (*out_array)[i] = (*out_array)[j];
	lw	a5,-36(s0)		# _68, i
	slli	a5,a5,2	#, _69, _68
	add	a5,a3,a5	# _69, _70, _67
# problem89.c:33:                     (*out_array)[i] = (*out_array)[j];
	lw	a4,0(a4)		# _71, *_66
# problem89.c:33:                     (*out_array)[i] = (*out_array)[j];
	sw	a4,0(a5)	# _71, *_70
# problem89.c:34:                     (*out_array)[j] = temp;
	ld	a5,-72(s0)		# tmp271, out_array
	ld	a4,0(a5)		# _72, *out_array_90(D)
# problem89.c:34:                     (*out_array)[j] = temp;
	lw	a5,-32(s0)		# _73, j
	slli	a5,a5,2	#, _74, _73
	add	a5,a4,a5	# _74, _75, _72
# problem89.c:34:                     (*out_array)[j] = temp;
	lw	a4,-24(s0)		# tmp272, temp
	sw	a4,0(a5)	# tmp272, *_75
.L10:
# problem89.c:23:         for (int j = i + 1; j < size; j++) {
	lw	a5,-32(s0)		# tmp275, j
	addiw	a5,a5,1	#, tmp273, tmp274
	sw	a5,-32(s0)	# tmp273, j
.L8:
# problem89.c:23:         for (int j = i + 1; j < size; j++) {
	lw	a5,-32(s0)		# tmp277, j
	mv	a4,a5	# tmp276, tmp277
	lw	a5,-60(s0)		# tmp279, size
	sext.w	a4,a4	# tmp280, tmp276
	sext.w	a5,a5	# tmp281, tmp278
	blt	a4,a5,.L11	#, tmp280, tmp281,
# problem89.c:22:     for (int i = 0; i < size - 1; i++) {
	lw	a5,-36(s0)		# tmp284, i
	addiw	a5,a5,1	#, tmp282, tmp283
	sw	a5,-36(s0)	# tmp282, i
.L7:
# problem89.c:22:     for (int i = 0; i < size - 1; i++) {
	lw	a5,-60(s0)		# tmp287, size
	addiw	a5,a5,-1	#, tmp285, tmp286
	sext.w	a4,a5	# _76, tmp285
# problem89.c:22:     for (int i = 0; i < size - 1; i++) {
	lw	a5,-36(s0)		# tmp289, i
	sext.w	a5,a5	# tmp290, tmp288
	blt	a5,a4,.L12	#, tmp290, tmp291,
.L1:
# problem89.c:39: }
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
	mv	a5,a1	# tmp144, aSize
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp146, bSize
	sw	a5,-44(s0)	# tmp145, aSize
	mv	a5,a4	# tmp147, tmp146
	sw	a5,-48(s0)	# tmp147, bSize
# problem89.c:48:     if (aSize != bSize) return 0;
	lw	a5,-44(s0)		# tmp149, aSize
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-48(s0)		# tmp151, bSize
	sext.w	a4,a4	# tmp152, tmp148
	sext.w	a5,a5	# tmp153, tmp150
	beq	a4,a5,.L14	#, tmp152, tmp153,
# problem89.c:48:     if (aSize != bSize) return 0;
	li	a5,0		# _10,
# problem89.c:48:     if (aSize != bSize) return 0;
	j	.L15		#
.L14:
# problem89.c:49:     for (int i = 0; i < aSize; i++) {
	sw	zero,-20(s0)	#, i
# problem89.c:49:     for (int i = 0; i < aSize; i++) {
	j	.L16		#
.L18:
# problem89.c:50:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp154, a
	add	a5,a4,a5	# _2, _3, tmp154
	lw	a3,0(a5)		# _4, *_3
# problem89.c:50:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp155, b
	add	a5,a4,a5	# _6, _7, tmp155
	lw	a5,0(a5)		# _8, *_7
# problem89.c:50:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp156, _4
	beq	a4,a5,.L17	#, tmp156, tmp157,
# problem89.c:50:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem89.c:50:         if (a[i] != b[i]) return 0;
	j	.L15		#
.L17:
# problem89.c:49:     for (int i = 0; i < aSize; i++) {
	lw	a5,-20(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L16:
# problem89.c:49:     for (int i = 0; i < aSize; i++) {
	lw	a5,-20(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-44(s0)		# tmp164, aSize
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L18	#, tmp165, tmp166,
# problem89.c:52:     return 1;
	li	a5,1		# _10,
.L15:
# problem89.c:53: }
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
.LC8:
	.string	"problem89.c"
	.align	3
.LC9:
	.string	"issame(result, result_size, (int[]){}, 0)"
	.align	3
.LC10:
	.string	"issame(result, result_size, (int[]){5}, 1)"
	.align	3
.LC11:
	.string	"issame(result, result_size, (int[]){0, 1, 2, 3, 4, 5}, 6)"
	.align	3
.LC12:
	.string	"issame(result, result_size, (int[]){6, 5, 4, 3, 2, 1, 0}, 7)"
	.align	3
.LC13:
	.string	"issame(result, result_size, (int[]){1, 2}, 2)"
	.align	3
.LC14:
	.string	"issame(result, result_size, (int[]){0, 11, 15, 32, 42, 87}, 6)"
	.align	3
.LC15:
	.string	"issame(result, result_size, (int[]){23, 21, 14, 11}, 4)"
	.align	3
.LC0:
	.word	2
	.word	4
	.word	3
	.word	0
	.word	1
	.word	5
	.align	3
.LC1:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.align	3
.LC2:
	.word	2
	.word	4
	.word	3
	.word	0
	.word	1
	.word	5
	.word	6
	.align	3
.LC3:
	.word	6
	.word	5
	.word	4
	.word	3
	.word	2
	.word	1
	.word	0
	.align	3
.LC4:
	.word	15
	.word	42
	.word	87
	.word	32
	.word	11
	.word	0
	.align	3
.LC5:
	.word	0
	.word	11
	.word	15
	.word	32
	.word	42
	.word	87
	.align	3
.LC6:
	.word	21
	.word	14
	.word	23
	.word	11
	.align	3
.LC7:
	.word	23
	.word	21
	.word	14
	.word	11
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-192	#,,
	.cfi_def_cfa_offset 192
	sd	ra,184(sp)	#,
	sd	s0,176(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,192	#,,
	.cfi_def_cfa 8, 0
# problem89.c:55: int main() {
	la	a5,__stack_chk_guard		# tmp164,
	ld	a4, 0(a5)	# tmp241, __stack_chk_guard
	sd	a4, -24(s0)	# tmp241, D.3368
	li	a4, 0	# tmp241
# problem89.c:58:     func0((int[]){}, 0, &result, &result_size);
	addi	a3,s0,-188	#, tmp165,
	addi	a4,s0,-184	#, tmp166,
	addi	a5,s0,-176	#, tmp167,
	mv	a2,a4	#, tmp166
	li	a1,0		#,
	mv	a0,a5	#, tmp167
	call	func0		#
# problem89.c:59:     assert(issame(result, result_size, (int[]){}, 0));
	ld	a5,-184(s0)		# result.0_1, result
	lw	a4,-188(s0)		# result_size.1_2, result_size
	addi	a2,s0,-56	#, tmp168,
	li	a3,0		#,
	mv	a1,a4	#, result_size.1_2
	mv	a0,a5	#, result.0_1
	call	issame		#
	mv	a5,a0	# tmp169,
# problem89.c:59:     assert(issame(result, result_size, (int[]){}, 0));
	bne	a5,zero,.L20	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,59		#,
	lla	a1,.LC8	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L20:
# problem89.c:60:     free(result);
	ld	a5,-184(s0)		# result.2_4, result
	mv	a0,a5	#, result.2_4
	call	free@plt	#
# problem89.c:62:     func0((int[]){5}, 1, &result, &result_size);
	li	a5,5		# tmp170,
	sw	a5,-168(s0)	# tmp170, D.3295[0]
# problem89.c:62:     func0((int[]){5}, 1, &result, &result_size);
	addi	a3,s0,-188	#, tmp171,
	addi	a4,s0,-184	#, tmp172,
	addi	a5,s0,-168	#, tmp173,
	mv	a2,a4	#, tmp172
	li	a1,1		#,
	mv	a0,a5	#, tmp173
	call	func0		#
# problem89.c:63:     assert(issame(result, result_size, (int[]){5}, 1));
	ld	a4,-184(s0)		# result.3_5, result
	lw	a1,-188(s0)		# result_size.4_6, result_size
	li	a5,5		# tmp174,
	sw	a5,-56(s0)	# tmp174, MEM[(int[1] *)_97][0]
	addi	a5,s0,-56	#, tmp175,
	li	a3,1		#,
	mv	a2,a5	#, tmp175
	mv	a0,a4	#, result.3_5
	call	issame		#
	mv	a5,a0	# tmp176,
# problem89.c:63:     assert(issame(result, result_size, (int[]){5}, 1));
	bne	a5,zero,.L21	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,63		#,
	lla	a1,.LC8	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L21:
# problem89.c:64:     free(result);
	ld	a5,-184(s0)		# result.5_8, result
	mv	a0,a5	#, result.5_8
	call	free@plt	#
# problem89.c:66:     func0((int[]){2, 4, 3, 0, 1, 5}, 6, &result, &result_size);
	lla	a5,.LC0	# tmp177,
	ld	a4,0(a5)		# tmp178,
	sd	a4,-136(s0)	# tmp178, D.3298
	ld	a4,8(a5)		# tmp179,
	sd	a4,-128(s0)	# tmp179, D.3298
	ld	a5,16(a5)		# tmp180,
	sd	a5,-120(s0)	# tmp180, D.3298
# problem89.c:66:     func0((int[]){2, 4, 3, 0, 1, 5}, 6, &result, &result_size);
	addi	a3,s0,-188	#, tmp181,
	addi	a4,s0,-184	#, tmp182,
	addi	a5,s0,-136	#, tmp183,
	mv	a2,a4	#, tmp182
	li	a1,6		#,
	mv	a0,a5	#, tmp183
	call	func0		#
# problem89.c:67:     assert(issame(result, result_size, (int[]){0, 1, 2, 3, 4, 5}, 6));
	ld	a0,-184(s0)		# result.6_9, result
	lw	a1,-188(s0)		# result_size.7_10, result_size
	lla	a5,.LC1	# tmp184,
	ld	a4,0(a5)		# tmp185,
	sd	a4,-56(s0)	# tmp185, MEM[(int[6] *)_97]
	ld	a4,8(a5)		# tmp186,
	sd	a4,-48(s0)	# tmp186, MEM[(int[6] *)_97]
	ld	a5,16(a5)		# tmp187,
	sd	a5,-40(s0)	# tmp187, MEM[(int[6] *)_97]
	addi	a5,s0,-56	#, tmp188,
	li	a3,6		#,
	mv	a2,a5	#, tmp188
	call	issame		#
	mv	a5,a0	# tmp189,
# problem89.c:67:     assert(issame(result, result_size, (int[]){0, 1, 2, 3, 4, 5}, 6));
	bne	a5,zero,.L22	#, _11,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,67		#,
	lla	a1,.LC8	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L22:
# problem89.c:68:     free(result);
	ld	a5,-184(s0)		# result.8_12, result
	mv	a0,a5	#, result.8_12
	call	free@plt	#
# problem89.c:70:     func0((int[]){2, 4, 3, 0, 1, 5, 6}, 7, &result, &result_size);
	lla	a5,.LC2	# tmp190,
	ld	a2,0(a5)		# tmp191,
	ld	a3,8(a5)		# tmp192,
	ld	a4,16(a5)		# tmp193,
	sd	a2,-88(s0)	# tmp191, D.3301
	sd	a3,-80(s0)	# tmp192, D.3301
	sd	a4,-72(s0)	# tmp193, D.3301
	lw	a5,24(a5)		# tmp194,
	sw	a5,-64(s0)	# tmp194, D.3301
# problem89.c:70:     func0((int[]){2, 4, 3, 0, 1, 5, 6}, 7, &result, &result_size);
	addi	a3,s0,-188	#, tmp195,
	addi	a4,s0,-184	#, tmp196,
	addi	a5,s0,-88	#, tmp197,
	mv	a2,a4	#, tmp196
	li	a1,7		#,
	mv	a0,a5	#, tmp197
	call	func0		#
# problem89.c:71:     assert(issame(result, result_size, (int[]){6, 5, 4, 3, 2, 1, 0}, 7));
	ld	a0,-184(s0)		# result.9_13, result
	lw	a1,-188(s0)		# result_size.10_14, result_size
	lla	a5,.LC3	# tmp198,
	ld	a2,0(a5)		# tmp199,
	ld	a3,8(a5)		# tmp200,
	ld	a4,16(a5)		# tmp201,
	sd	a2,-56(s0)	# tmp199, MEM[(int[7] *)_97]
	sd	a3,-48(s0)	# tmp200, MEM[(int[7] *)_97]
	sd	a4,-40(s0)	# tmp201, MEM[(int[7] *)_97]
	lw	a5,24(a5)		# tmp202,
	sw	a5,-32(s0)	# tmp202, MEM[(int[7] *)_97]
	addi	a5,s0,-56	#, tmp203,
	li	a3,7		#,
	mv	a2,a5	#, tmp203
	call	issame		#
	mv	a5,a0	# tmp204,
# problem89.c:71:     assert(issame(result, result_size, (int[]){6, 5, 4, 3, 2, 1, 0}, 7));
	bne	a5,zero,.L23	#, _15,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,71		#,
	lla	a1,.LC8	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L23:
# problem89.c:72:     free(result);
	ld	a5,-184(s0)		# result.11_16, result
	mv	a0,a5	#, result.11_16
	call	free@plt	#
# problem89.c:74:     func0((int[]){2, 1}, 2, &result, &result_size);
	li	a5,2		# tmp205,
	sw	a5,-160(s0)	# tmp205, D.3304[0]
	li	a5,1		# tmp206,
	sw	a5,-156(s0)	# tmp206, D.3304[1]
# problem89.c:74:     func0((int[]){2, 1}, 2, &result, &result_size);
	addi	a3,s0,-188	#, tmp207,
	addi	a4,s0,-184	#, tmp208,
	addi	a5,s0,-160	#, tmp209,
	mv	a2,a4	#, tmp208
	li	a1,2		#,
	mv	a0,a5	#, tmp209
	call	func0		#
# problem89.c:75:     assert(issame(result, result_size, (int[]){1, 2}, 2));
	ld	a4,-184(s0)		# result.12_17, result
	lw	a1,-188(s0)		# result_size.13_18, result_size
	li	a5,1		# tmp210,
	sw	a5,-56(s0)	# tmp210, MEM[(int[2] *)_97][0]
	li	a5,2		# tmp211,
	sw	a5,-52(s0)	# tmp211, MEM[(int[2] *)_97][1]
	addi	a5,s0,-56	#, tmp212,
	li	a3,2		#,
	mv	a2,a5	#, tmp212
	mv	a0,a4	#, result.12_17
	call	issame		#
	mv	a5,a0	# tmp213,
# problem89.c:75:     assert(issame(result, result_size, (int[]){1, 2}, 2));
	bne	a5,zero,.L24	#, _19,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,75		#,
	lla	a1,.LC8	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L24:
# problem89.c:76:     free(result);
	ld	a5,-184(s0)		# result.14_20, result
	mv	a0,a5	#, result.14_20
	call	free@plt	#
# problem89.c:78:     func0((int[]){15, 42, 87, 32, 11, 0}, 6, &result, &result_size);
	lla	a5,.LC4	# tmp214,
	ld	a4,0(a5)		# tmp215,
	sd	a4,-112(s0)	# tmp215, D.3307
	ld	a4,8(a5)		# tmp216,
	sd	a4,-104(s0)	# tmp216, D.3307
	ld	a5,16(a5)		# tmp217,
	sd	a5,-96(s0)	# tmp217, D.3307
# problem89.c:78:     func0((int[]){15, 42, 87, 32, 11, 0}, 6, &result, &result_size);
	addi	a3,s0,-188	#, tmp218,
	addi	a4,s0,-184	#, tmp219,
	addi	a5,s0,-112	#, tmp220,
	mv	a2,a4	#, tmp219
	li	a1,6		#,
	mv	a0,a5	#, tmp220
	call	func0		#
# problem89.c:79:     assert(issame(result, result_size, (int[]){0, 11, 15, 32, 42, 87}, 6));
	ld	a0,-184(s0)		# result.15_21, result
	lw	a1,-188(s0)		# result_size.16_22, result_size
	lla	a5,.LC5	# tmp221,
	ld	a4,0(a5)		# tmp222,
	sd	a4,-56(s0)	# tmp222, MEM[(int[6] *)_97]
	ld	a4,8(a5)		# tmp223,
	sd	a4,-48(s0)	# tmp223, MEM[(int[6] *)_97]
	ld	a5,16(a5)		# tmp224,
	sd	a5,-40(s0)	# tmp224, MEM[(int[6] *)_97]
	addi	a5,s0,-56	#, tmp225,
	li	a3,6		#,
	mv	a2,a5	#, tmp225
	call	issame		#
	mv	a5,a0	# tmp226,
# problem89.c:79:     assert(issame(result, result_size, (int[]){0, 11, 15, 32, 42, 87}, 6));
	bne	a5,zero,.L25	#, _23,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,79		#,
	lla	a1,.LC8	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L25:
# problem89.c:80:     free(result);
	ld	a5,-184(s0)		# result.17_24, result
	mv	a0,a5	#, result.17_24
	call	free@plt	#
# problem89.c:82:     func0((int[]){21, 14, 23, 11}, 4, &result, &result_size);
	lla	a5,.LC6	# tmp227,
	ld	a4,0(a5)		# tmp228,
	sd	a4,-152(s0)	# tmp228, D.3310
	ld	a5,8(a5)		# tmp229,
	sd	a5,-144(s0)	# tmp229, D.3310
# problem89.c:82:     func0((int[]){21, 14, 23, 11}, 4, &result, &result_size);
	addi	a3,s0,-188	#, tmp230,
	addi	a4,s0,-184	#, tmp231,
	addi	a5,s0,-152	#, tmp232,
	mv	a2,a4	#, tmp231
	li	a1,4		#,
	mv	a0,a5	#, tmp232
	call	func0		#
# problem89.c:83:     assert(issame(result, result_size, (int[]){23, 21, 14, 11}, 4));
	ld	a0,-184(s0)		# result.18_25, result
	lw	a1,-188(s0)		# result_size.19_26, result_size
	lla	a5,.LC7	# tmp233,
	ld	a4,0(a5)		# tmp234,
	sd	a4,-56(s0)	# tmp234, MEM[(int[4] *)_97]
	ld	a5,8(a5)		# tmp235,
	sd	a5,-48(s0)	# tmp235, MEM[(int[4] *)_97]
	addi	a5,s0,-56	#, tmp236,
	li	a3,4		#,
	mv	a2,a5	#, tmp236
	call	issame		#
	mv	a5,a0	# tmp237,
# problem89.c:83:     assert(issame(result, result_size, (int[]){23, 21, 14, 11}, 4));
	bne	a5,zero,.L26	#, _27,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,83		#,
	lla	a1,.LC8	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L26:
# problem89.c:84:     free(result);
	ld	a5,-184(s0)		# result.20_28, result
	mv	a0,a5	#, result.20_28
	call	free@plt	#
# problem89.c:86:     return 0;
	li	a5,0		# _79,
# problem89.c:87: }
	mv	a4,a5	# <retval>, _79
	la	a5,__stack_chk_guard		# tmp239,
	ld	a3, -24(s0)	# tmp242, D.3368
	ld	a5, 0(a5)	# tmp240, __stack_chk_guard
	xor	a5, a3, a5	# tmp240, tmp242
	li	a3, 0	# tmp242
	beq	a5,zero,.L28	#, tmp240,,
	call	__stack_chk_fail@plt	#
.L28:
	mv	a0,a4	#, <retval>
	ld	ra,184(sp)		#,
	.cfi_restore 1
	ld	s0,176(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 192
	addi	sp,sp,192	#,,
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
