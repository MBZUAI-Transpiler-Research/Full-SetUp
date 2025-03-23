	.file	"problem89.c"
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
	addi	sp,sp,-80	#,,
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	addi	s0,sp,80	#,,
	sd	a0,-56(s0)	# array, array
	mv	a5,a1	# tmp148, size
	sd	a2,-72(s0)	# out_array, out_array
	sd	a3,-80(s0)	# out_size, out_size
	sw	a5,-60(s0)	# tmp149, size
# problem89.c:5:     *out_size = size;
	ld	a5,-80(s0)		# tmp150, out_size
	lw	a4,-60(s0)		# tmp151, size
	sw	a4,0(a5)	# tmp151, *out_size_86(D)
# problem89.c:6:     if (size == 0) {
	lw	a5,-60(s0)		# tmp153, size
	sext.w	a5,a5	# tmp154, tmp152
	bne	a5,zero,.L2	#, tmp154,,
# problem89.c:7:         *out_array = NULL;
	ld	a5,-72(s0)		# tmp155, out_array
	sd	zero,0(a5)	#, *out_array_90(D)
# problem89.c:8:         return;
	j	.L1		#
.L2:
# problem89.c:11:     *out_array = (int *)malloc(sizeof(int) * size);
	lw	a5,-60(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp156,
	mv	a4,a5	# _3, tmp156
# problem89.c:11:     *out_array = (int *)malloc(sizeof(int) * size);
	ld	a5,-72(s0)		# tmp157, out_array
	sd	a4,0(a5)	# _3, *out_array_90(D)
# problem89.c:12:     if (*out_array == NULL) {
	ld	a5,-72(s0)		# tmp158, out_array
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
	ld	a4,-56(s0)		# tmp159, array
	add	a4,a4,a5	# _6, _7, tmp159
# problem89.c:17:         (*out_array)[i] = array[i];
	ld	a5,-72(s0)		# tmp160, out_array
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
	lw	a5,-40(s0)		# tmp163, i
	addiw	a5,a5,1	#, tmp161, tmp162
	sw	a5,-40(s0)	# tmp161, i
.L5:
# problem89.c:16:     for (int i = 0; i < size; i++) {
	lw	a5,-40(s0)		# tmp165, i
	mv	a4,a5	# tmp164, tmp165
	lw	a5,-60(s0)		# tmp167, size
	sext.w	a4,a4	# tmp168, tmp164
	sext.w	a5,a5	# tmp169, tmp166
	blt	a4,a5,.L6	#, tmp168, tmp169,
# problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	ld	a5,-56(s0)		# tmp170, array
	lw	a4,0(a5)		# _13, *array_93(D)
# problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	lw	a5,-60(s0)		# _14, size
	slli	a5,a5,2	#, _15, _14
	addi	a5,a5,-4	#, _16, _15
	ld	a3,-56(s0)		# tmp171, array
	add	a5,a3,a5	# _16, _17, tmp171
	lw	a5,0(a5)		# _18, *_17
# problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	addw	a5,a4,a5	# _18, tmp172, _13
	sext.w	a5,a5	# _19, tmp172
# problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	mv	a4,a5	# tmp174, _19
	sraiw	a5,a4,31	#, tmp175, tmp174
	srliw	a5,a5,31	#, tmp176, tmp175
	addw	a4,a4,a5	# tmp176, tmp177, tmp174
	andi	a4,a4,1	#, tmp178, tmp177
	subw	a5,a4,a5	# tmp179, tmp178, tmp176
	sext.w	a5,a5	# _20, tmp179
# problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	mv	a4,a5	# tmp182, _20
	li	a5,1		# tmp184,
	sub	a5,a4,a5	# tmp183, tmp182, tmp184
	seqz	a5,a5	# tmp181, tmp183
	andi	a5,a5,0xff	# _21, tmp180
# problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	sw	a5,-28(s0)	# _21, shouldSortAscending
# problem89.c:22:     for (int i = 0; i < size - 1; i++) {
	sw	zero,-36(s0)	#, i
# problem89.c:22:     for (int i = 0; i < size - 1; i++) {
	j	.L7		#
.L12:
# problem89.c:23:         for (int j = i + 1; j < size; j++) {
	lw	a5,-36(s0)		# tmp187, i
	addiw	a5,a5,1	#, tmp185, tmp186
	sw	a5,-32(s0)	# tmp185, j
# problem89.c:23:         for (int j = i + 1; j < size; j++) {
	j	.L8		#
.L11:
# problem89.c:24:             if (shouldSortAscending) {
	lw	a5,-28(s0)		# tmp189, shouldSortAscending
	sext.w	a5,a5	# tmp190, tmp188
	beq	a5,zero,.L9	#, tmp190,,
# problem89.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	ld	a5,-72(s0)		# tmp191, out_array
	ld	a4,0(a5)		# _22, *out_array_90(D)
# problem89.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	lw	a5,-36(s0)		# _23, i
	slli	a5,a5,2	#, _24, _23
	add	a5,a4,a5	# _24, _25, _22
	lw	a3,0(a5)		# _26, *_25
# problem89.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	ld	a5,-72(s0)		# tmp192, out_array
	ld	a4,0(a5)		# _27, *out_array_90(D)
# problem89.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	lw	a5,-32(s0)		# _28, j
	slli	a5,a5,2	#, _29, _28
	add	a5,a4,a5	# _29, _30, _27
	lw	a5,0(a5)		# _31, *_30
# problem89.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	mv	a4,a3	# tmp193, _26
	ble	a4,a5,.L10	#, tmp193, tmp194,
# problem89.c:26:                     int temp = (*out_array)[i];
	ld	a5,-72(s0)		# tmp195, out_array
	ld	a4,0(a5)		# _32, *out_array_90(D)
# problem89.c:26:                     int temp = (*out_array)[i];
	lw	a5,-36(s0)		# _33, i
	slli	a5,a5,2	#, _34, _33
	add	a5,a4,a5	# _34, _35, _32
# problem89.c:26:                     int temp = (*out_array)[i];
	lw	a5,0(a5)		# tmp196, *_35
	sw	a5,-20(s0)	# tmp196, temp
# problem89.c:27:                     (*out_array)[i] = (*out_array)[j];
	ld	a5,-72(s0)		# tmp197, out_array
	ld	a4,0(a5)		# _36, *out_array_90(D)
# problem89.c:27:                     (*out_array)[i] = (*out_array)[j];
	lw	a5,-32(s0)		# _37, j
	slli	a5,a5,2	#, _38, _37
	add	a4,a4,a5	# _38, _39, _36
# problem89.c:27:                     (*out_array)[i] = (*out_array)[j];
	ld	a5,-72(s0)		# tmp198, out_array
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
	ld	a5,-72(s0)		# tmp199, out_array
	ld	a4,0(a5)		# _45, *out_array_90(D)
# problem89.c:28:                     (*out_array)[j] = temp;
	lw	a5,-32(s0)		# _46, j
	slli	a5,a5,2	#, _47, _46
	add	a5,a4,a5	# _47, _48, _45
# problem89.c:28:                     (*out_array)[j] = temp;
	lw	a4,-20(s0)		# tmp200, temp
	sw	a4,0(a5)	# tmp200, *_48
	j	.L10		#
.L9:
# problem89.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	ld	a5,-72(s0)		# tmp201, out_array
	ld	a4,0(a5)		# _49, *out_array_90(D)
# problem89.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	lw	a5,-36(s0)		# _50, i
	slli	a5,a5,2	#, _51, _50
	add	a5,a4,a5	# _51, _52, _49
	lw	a3,0(a5)		# _53, *_52
# problem89.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	ld	a5,-72(s0)		# tmp202, out_array
	ld	a4,0(a5)		# _54, *out_array_90(D)
# problem89.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	lw	a5,-32(s0)		# _55, j
	slli	a5,a5,2	#, _56, _55
	add	a5,a4,a5	# _56, _57, _54
	lw	a5,0(a5)		# _58, *_57
# problem89.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	mv	a4,a3	# tmp203, _53
	bge	a4,a5,.L10	#, tmp203, tmp204,
# problem89.c:32:                     int temp = (*out_array)[i];
	ld	a5,-72(s0)		# tmp205, out_array
	ld	a4,0(a5)		# _59, *out_array_90(D)
# problem89.c:32:                     int temp = (*out_array)[i];
	lw	a5,-36(s0)		# _60, i
	slli	a5,a5,2	#, _61, _60
	add	a5,a4,a5	# _61, _62, _59
# problem89.c:32:                     int temp = (*out_array)[i];
	lw	a5,0(a5)		# tmp206, *_62
	sw	a5,-24(s0)	# tmp206, temp
# problem89.c:33:                     (*out_array)[i] = (*out_array)[j];
	ld	a5,-72(s0)		# tmp207, out_array
	ld	a4,0(a5)		# _63, *out_array_90(D)
# problem89.c:33:                     (*out_array)[i] = (*out_array)[j];
	lw	a5,-32(s0)		# _64, j
	slli	a5,a5,2	#, _65, _64
	add	a4,a4,a5	# _65, _66, _63
# problem89.c:33:                     (*out_array)[i] = (*out_array)[j];
	ld	a5,-72(s0)		# tmp208, out_array
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
	ld	a5,-72(s0)		# tmp209, out_array
	ld	a4,0(a5)		# _72, *out_array_90(D)
# problem89.c:34:                     (*out_array)[j] = temp;
	lw	a5,-32(s0)		# _73, j
	slli	a5,a5,2	#, _74, _73
	add	a5,a4,a5	# _74, _75, _72
# problem89.c:34:                     (*out_array)[j] = temp;
	lw	a4,-24(s0)		# tmp210, temp
	sw	a4,0(a5)	# tmp210, *_75
.L10:
# problem89.c:23:         for (int j = i + 1; j < size; j++) {
	lw	a5,-32(s0)		# tmp213, j
	addiw	a5,a5,1	#, tmp211, tmp212
	sw	a5,-32(s0)	# tmp211, j
.L8:
# problem89.c:23:         for (int j = i + 1; j < size; j++) {
	lw	a5,-32(s0)		# tmp215, j
	mv	a4,a5	# tmp214, tmp215
	lw	a5,-60(s0)		# tmp217, size
	sext.w	a4,a4	# tmp218, tmp214
	sext.w	a5,a5	# tmp219, tmp216
	blt	a4,a5,.L11	#, tmp218, tmp219,
# problem89.c:22:     for (int i = 0; i < size - 1; i++) {
	lw	a5,-36(s0)		# tmp222, i
	addiw	a5,a5,1	#, tmp220, tmp221
	sw	a5,-36(s0)	# tmp220, i
.L7:
# problem89.c:22:     for (int i = 0; i < size - 1; i++) {
	lw	a5,-60(s0)		# tmp225, size
	addiw	a5,a5,-1	#, tmp223, tmp224
	sext.w	a4,a5	# _76, tmp223
# problem89.c:22:     for (int i = 0; i < size - 1; i++) {
	lw	a5,-36(s0)		# tmp227, i
	sext.w	a5,a5	# tmp228, tmp226
	blt	a5,a4,.L12	#, tmp228, tmp229,
.L1:
# problem89.c:39: }
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
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
	mv	a5,a1	# tmp82, aSize
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp84, bSize
	sw	a5,-44(s0)	# tmp83, aSize
	mv	a5,a4	# tmp85, tmp84
	sw	a5,-48(s0)	# tmp85, bSize
# problem89.c:48:     if (aSize != bSize) return 0;
	lw	a5,-44(s0)		# tmp87, aSize
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-48(s0)		# tmp89, bSize
	sext.w	a4,a4	# tmp90, tmp86
	sext.w	a5,a5	# tmp91, tmp88
	beq	a4,a5,.L14	#, tmp90, tmp91,
# problem89.c:48:     if (aSize != bSize) return 0;
	li	a5,0		# _10,
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
	ld	a4,-40(s0)		# tmp92, a
	add	a5,a4,a5	# _2, _3, tmp92
	lw	a3,0(a5)		# _4, *_3
# problem89.c:50:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp93, b
	add	a5,a4,a5	# _6, _7, tmp93
	lw	a5,0(a5)		# _8, *_7
# problem89.c:50:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp94, _4
	beq	a4,a5,.L17	#, tmp94, tmp95,
# problem89.c:50:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L15		#
.L17:
# problem89.c:49:     for (int i = 0; i < aSize; i++) {
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L16:
# problem89.c:49:     for (int i = 0; i < aSize; i++) {
	lw	a5,-20(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-44(s0)		# tmp102, aSize
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L18	#, tmp103, tmp104,
# problem89.c:52:     return 1;
	li	a5,1		# _10,
.L15:
# problem89.c:53: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
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
	addi	sp,sp,-192	#,,
	sd	ra,184(sp)	#,
	sd	s0,176(sp)	#,
	addi	s0,sp,192	#,,
# problem89.c:55: int main() {
	la	a5,__stack_chk_guard		# tmp102,
	ld	a4, 0(a5)	# tmp179, __stack_chk_guard
	sd	a4, -24(s0)	# tmp179, D.2543
	li	a4, 0	# tmp179
# problem89.c:58:     func0((int[]){}, 0, &result, &result_size);
	addi	a3,s0,-188	#, tmp103,
	addi	a4,s0,-184	#, tmp104,
	addi	a5,s0,-176	#, tmp105,
	mv	a2,a4	#, tmp104
	li	a1,0		#,
	mv	a0,a5	#, tmp105
	call	func0		#
# problem89.c:59:     assert(issame(result, result_size, (int[]){}, 0));
	ld	a5,-184(s0)		# result.0_1, result
	lw	a4,-188(s0)		# result_size.1_2, result_size
	addi	a2,s0,-56	#, tmp106,
	li	a3,0		#,
	mv	a1,a4	#, result_size.1_2
	mv	a0,a5	#, result.0_1
	call	issame		#
	mv	a5,a0	# tmp107,
	bne	a5,zero,.L20	#, _3,,
# problem89.c:59:     assert(issame(result, result_size, (int[]){}, 0));
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
	li	a5,5		# tmp108,
	sw	a5,-168(s0)	# tmp108, D.2470[0]
# problem89.c:62:     func0((int[]){5}, 1, &result, &result_size);
	addi	a3,s0,-188	#, tmp109,
	addi	a4,s0,-184	#, tmp110,
	addi	a5,s0,-168	#, tmp111,
	mv	a2,a4	#, tmp110
	li	a1,1		#,
	mv	a0,a5	#, tmp111
	call	func0		#
# problem89.c:63:     assert(issame(result, result_size, (int[]){5}, 1));
	ld	a4,-184(s0)		# result.3_5, result
	lw	a1,-188(s0)		# result_size.4_6, result_size
	li	a5,5		# tmp112,
	sw	a5,-56(s0)	# tmp112, MEM[(int[1] *)_99][0]
	addi	a5,s0,-56	#, tmp113,
	li	a3,1		#,
	mv	a2,a5	#, tmp113
	mv	a0,a4	#, result.3_5
	call	issame		#
	mv	a5,a0	# tmp114,
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
	lla	a5,.LC0	# tmp115,
	ld	a4,0(a5)		# tmp116,
	sd	a4,-136(s0)	# tmp116, D.2473
	ld	a4,8(a5)		# tmp117,
	sd	a4,-128(s0)	# tmp117, D.2473
	ld	a5,16(a5)		# tmp118,
	sd	a5,-120(s0)	# tmp118, D.2473
# problem89.c:66:     func0((int[]){2, 4, 3, 0, 1, 5}, 6, &result, &result_size);
	addi	a3,s0,-188	#, tmp119,
	addi	a4,s0,-184	#, tmp120,
	addi	a5,s0,-136	#, tmp121,
	mv	a2,a4	#, tmp120
	li	a1,6		#,
	mv	a0,a5	#, tmp121
	call	func0		#
# problem89.c:67:     assert(issame(result, result_size, (int[]){0, 1, 2, 3, 4, 5}, 6));
	ld	a0,-184(s0)		# result.6_9, result
	lw	a1,-188(s0)		# result_size.7_10, result_size
	lla	a5,.LC1	# tmp122,
	ld	a4,0(a5)		# tmp123,
	sd	a4,-56(s0)	# tmp123, MEM[(int[6] *)_99]
	ld	a4,8(a5)		# tmp124,
	sd	a4,-48(s0)	# tmp124, MEM[(int[6] *)_99]
	ld	a5,16(a5)		# tmp125,
	sd	a5,-40(s0)	# tmp125, MEM[(int[6] *)_99]
	addi	a5,s0,-56	#, tmp126,
	li	a3,6		#,
	mv	a2,a5	#, tmp126
	call	issame		#
	mv	a5,a0	# tmp127,
	bne	a5,zero,.L22	#, _11,,
# problem89.c:67:     assert(issame(result, result_size, (int[]){0, 1, 2, 3, 4, 5}, 6));
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
	lla	a5,.LC2	# tmp128,
	ld	a2,0(a5)		# tmp129,
	ld	a3,8(a5)		# tmp130,
	ld	a4,16(a5)		# tmp131,
	sd	a2,-88(s0)	# tmp129, D.2476
	sd	a3,-80(s0)	# tmp130, D.2476
	sd	a4,-72(s0)	# tmp131, D.2476
	lw	a5,24(a5)		# tmp132,
	sw	a5,-64(s0)	# tmp132, D.2476
# problem89.c:70:     func0((int[]){2, 4, 3, 0, 1, 5, 6}, 7, &result, &result_size);
	addi	a3,s0,-188	#, tmp133,
	addi	a4,s0,-184	#, tmp134,
	addi	a5,s0,-88	#, tmp135,
	mv	a2,a4	#, tmp134
	li	a1,7		#,
	mv	a0,a5	#, tmp135
	call	func0		#
# problem89.c:71:     assert(issame(result, result_size, (int[]){6, 5, 4, 3, 2, 1, 0}, 7));
	ld	a0,-184(s0)		# result.9_13, result
	lw	a1,-188(s0)		# result_size.10_14, result_size
	lla	a5,.LC3	# tmp136,
	ld	a2,0(a5)		# tmp137,
	ld	a3,8(a5)		# tmp138,
	ld	a4,16(a5)		# tmp139,
	sd	a2,-56(s0)	# tmp137, MEM[(int[7] *)_99]
	sd	a3,-48(s0)	# tmp138, MEM[(int[7] *)_99]
	sd	a4,-40(s0)	# tmp139, MEM[(int[7] *)_99]
	lw	a5,24(a5)		# tmp140,
	sw	a5,-32(s0)	# tmp140, MEM[(int[7] *)_99]
	addi	a5,s0,-56	#, tmp141,
	li	a3,7		#,
	mv	a2,a5	#, tmp141
	call	issame		#
	mv	a5,a0	# tmp142,
	bne	a5,zero,.L23	#, _15,,
# problem89.c:71:     assert(issame(result, result_size, (int[]){6, 5, 4, 3, 2, 1, 0}, 7));
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
	li	a5,2		# tmp143,
	sw	a5,-160(s0)	# tmp143, D.2479[0]
	li	a5,1		# tmp144,
	sw	a5,-156(s0)	# tmp144, D.2479[1]
# problem89.c:74:     func0((int[]){2, 1}, 2, &result, &result_size);
	addi	a3,s0,-188	#, tmp145,
	addi	a4,s0,-184	#, tmp146,
	addi	a5,s0,-160	#, tmp147,
	mv	a2,a4	#, tmp146
	li	a1,2		#,
	mv	a0,a5	#, tmp147
	call	func0		#
# problem89.c:75:     assert(issame(result, result_size, (int[]){1, 2}, 2));
	ld	a4,-184(s0)		# result.12_17, result
	lw	a1,-188(s0)		# result_size.13_18, result_size
	li	a5,1		# tmp148,
	sw	a5,-56(s0)	# tmp148, MEM[(int[2] *)_99][0]
	li	a5,2		# tmp149,
	sw	a5,-52(s0)	# tmp149, MEM[(int[2] *)_99][1]
	addi	a5,s0,-56	#, tmp150,
	li	a3,2		#,
	mv	a2,a5	#, tmp150
	mv	a0,a4	#, result.12_17
	call	issame		#
	mv	a5,a0	# tmp151,
	bne	a5,zero,.L24	#, _19,,
# problem89.c:75:     assert(issame(result, result_size, (int[]){1, 2}, 2));
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
	lla	a5,.LC4	# tmp152,
	ld	a4,0(a5)		# tmp153,
	sd	a4,-112(s0)	# tmp153, D.2482
	ld	a4,8(a5)		# tmp154,
	sd	a4,-104(s0)	# tmp154, D.2482
	ld	a5,16(a5)		# tmp155,
	sd	a5,-96(s0)	# tmp155, D.2482
# problem89.c:78:     func0((int[]){15, 42, 87, 32, 11, 0}, 6, &result, &result_size);
	addi	a3,s0,-188	#, tmp156,
	addi	a4,s0,-184	#, tmp157,
	addi	a5,s0,-112	#, tmp158,
	mv	a2,a4	#, tmp157
	li	a1,6		#,
	mv	a0,a5	#, tmp158
	call	func0		#
# problem89.c:79:     assert(issame(result, result_size, (int[]){0, 11, 15, 32, 42, 87}, 6));
	ld	a0,-184(s0)		# result.15_21, result
	lw	a1,-188(s0)		# result_size.16_22, result_size
	lla	a5,.LC5	# tmp159,
	ld	a4,0(a5)		# tmp160,
	sd	a4,-56(s0)	# tmp160, MEM[(int[6] *)_99]
	ld	a4,8(a5)		# tmp161,
	sd	a4,-48(s0)	# tmp161, MEM[(int[6] *)_99]
	ld	a5,16(a5)		# tmp162,
	sd	a5,-40(s0)	# tmp162, MEM[(int[6] *)_99]
	addi	a5,s0,-56	#, tmp163,
	li	a3,6		#,
	mv	a2,a5	#, tmp163
	call	issame		#
	mv	a5,a0	# tmp164,
	bne	a5,zero,.L25	#, _23,,
# problem89.c:79:     assert(issame(result, result_size, (int[]){0, 11, 15, 32, 42, 87}, 6));
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
	lla	a5,.LC6	# tmp165,
	ld	a4,0(a5)		# tmp166,
	sd	a4,-152(s0)	# tmp166, D.2485
	ld	a5,8(a5)		# tmp167,
	sd	a5,-144(s0)	# tmp167, D.2485
# problem89.c:82:     func0((int[]){21, 14, 23, 11}, 4, &result, &result_size);
	addi	a3,s0,-188	#, tmp168,
	addi	a4,s0,-184	#, tmp169,
	addi	a5,s0,-152	#, tmp170,
	mv	a2,a4	#, tmp169
	li	a1,4		#,
	mv	a0,a5	#, tmp170
	call	func0		#
# problem89.c:83:     assert(issame(result, result_size, (int[]){23, 21, 14, 11}, 4));
	ld	a0,-184(s0)		# result.18_25, result
	lw	a1,-188(s0)		# result_size.19_26, result_size
	lla	a5,.LC7	# tmp171,
	ld	a4,0(a5)		# tmp172,
	sd	a4,-56(s0)	# tmp172, MEM[(int[4] *)_99]
	ld	a5,8(a5)		# tmp173,
	sd	a5,-48(s0)	# tmp173, MEM[(int[4] *)_99]
	addi	a5,s0,-56	#, tmp174,
	li	a3,4		#,
	mv	a2,a5	#, tmp174
	call	issame		#
	mv	a5,a0	# tmp175,
	bne	a5,zero,.L26	#, _27,,
# problem89.c:83:     assert(issame(result, result_size, (int[]){23, 21, 14, 11}, 4));
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
	li	a5,0		# _81,
# problem89.c:87: }
	mv	a4,a5	# <retval>, _81
	la	a5,__stack_chk_guard		# tmp177,
	ld	a3, -24(s0)	# tmp180, D.2543
	ld	a5, 0(a5)	# tmp178, __stack_chk_guard
	xor	a5, a3, a5	# tmp178, tmp180
	li	a3, 0	# tmp180
	beq	a5,zero,.L28	#, tmp178,,
# problem89.c:87: }
	call	__stack_chk_fail@plt	#
.L28:
	mv	a0,a4	#, <retval>
	ld	ra,184(sp)		#,
	ld	s0,176(sp)		#,
	addi	sp,sp,192	#,,
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
