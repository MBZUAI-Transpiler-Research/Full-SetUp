	.file	"problem59.c"
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
	sd	a0,-56(s0)	# l1, l1
	mv	a5,a1	# tmp127, size1
	sd	a2,-72(s0)	# l2, l2
	sd	a4,-80(s0)	# out_size, out_size
	sw	a5,-60(s0)	# tmp128, size1
	mv	a5,a3	# tmp130, tmp129
	sw	a5,-64(s0)	# tmp130, size2
# problem59.c:5:     int *out = malloc(size1 * sizeof(int));
	lw	a5,-60(s0)		# _1, size1
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp131,
	sd	a5,-24(s0)	# tmp131, out
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
	ld	a4,-24(s0)		# tmp132, out
	add	a5,a4,a5	# _4, _5, tmp132
	lw	a3,0(a5)		# _6, *_5
# problem59.c:11:             if (out[m] == l1[i]) {
	lw	a5,-44(s0)		# _7, i
	slli	a5,a5,2	#, _8, _7
	ld	a4,-56(s0)		# tmp133, l1
	add	a5,a4,a5	# _8, _9, tmp133
	lw	a5,0(a5)		# _10, *_9
# problem59.c:11:             if (out[m] == l1[i]) {
	mv	a4,a3	# tmp134, _6
	bne	a4,a5,.L4	#, tmp134, tmp135,
# problem59.c:12:                 exists_in_out = 1;
	li	a5,1		# tmp136,
	sw	a5,-32(s0)	# tmp136, exists_in_out
# problem59.c:13:                 break;
	j	.L5		#
.L4:
# problem59.c:10:         for (m = 0; m < k; m++) {
	lw	a5,-36(s0)		# tmp139, m
	addiw	a5,a5,1	#, tmp137, tmp138
	sw	a5,-36(s0)	# tmp137, m
.L3:
# problem59.c:10:         for (m = 0; m < k; m++) {
	lw	a5,-36(s0)		# tmp141, m
	mv	a4,a5	# tmp140, tmp141
	lw	a5,-48(s0)		# tmp143, k
	sext.w	a4,a4	# tmp144, tmp140
	sext.w	a5,a5	# tmp145, tmp142
	blt	a4,a5,.L6	#, tmp144, tmp145,
.L5:
# problem59.c:16:         if (!exists_in_out) {
	lw	a5,-32(s0)		# tmp147, exists_in_out
	sext.w	a5,a5	# tmp148, tmp146
	bne	a5,zero,.L7	#, tmp148,,
# problem59.c:17:             for (j = 0; j < size2; j++) {
	sw	zero,-40(s0)	#, j
# problem59.c:17:             for (j = 0; j < size2; j++) {
	j	.L8		#
.L10:
# problem59.c:18:                 if (l1[i] == l2[j]) {
	lw	a5,-44(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-56(s0)		# tmp149, l1
	add	a5,a4,a5	# _12, _13, tmp149
	lw	a3,0(a5)		# _14, *_13
# problem59.c:18:                 if (l1[i] == l2[j]) {
	lw	a5,-40(s0)		# _15, j
	slli	a5,a5,2	#, _16, _15
	ld	a4,-72(s0)		# tmp150, l2
	add	a5,a4,a5	# _16, _17, tmp150
	lw	a5,0(a5)		# _18, *_17
# problem59.c:18:                 if (l1[i] == l2[j]) {
	mv	a4,a3	# tmp151, _14
	bne	a4,a5,.L9	#, tmp151, tmp152,
# problem59.c:19:                     out[k++] = l1[i];
	lw	a5,-44(s0)		# _19, i
	slli	a5,a5,2	#, _20, _19
	ld	a4,-56(s0)		# tmp153, l1
	add	a4,a4,a5	# _20, _21, tmp153
# problem59.c:19:                     out[k++] = l1[i];
	lw	a5,-48(s0)		# k.0_22, k
	addiw	a3,a5,1	#, tmp154, k.0_22
	sw	a3,-48(s0)	# tmp154, k
# problem59.c:19:                     out[k++] = l1[i];
	slli	a5,a5,2	#, _24, _23
	ld	a3,-24(s0)		# tmp155, out
	add	a5,a3,a5	# _24, _25, tmp155
# problem59.c:19:                     out[k++] = l1[i];
	lw	a4,0(a4)		# _26, *_21
# problem59.c:19:                     out[k++] = l1[i];
	sw	a4,0(a5)	# _26, *_25
# problem59.c:20:                     break;
	j	.L7		#
.L9:
# problem59.c:17:             for (j = 0; j < size2; j++) {
	lw	a5,-40(s0)		# tmp158, j
	addiw	a5,a5,1	#, tmp156, tmp157
	sw	a5,-40(s0)	# tmp156, j
.L8:
# problem59.c:17:             for (j = 0; j < size2; j++) {
	lw	a5,-40(s0)		# tmp160, j
	mv	a4,a5	# tmp159, tmp160
	lw	a5,-64(s0)		# tmp162, size2
	sext.w	a4,a4	# tmp163, tmp159
	sext.w	a5,a5	# tmp164, tmp161
	blt	a4,a5,.L10	#, tmp163, tmp164,
.L7:
# problem59.c:8:     for (i = 0; i < size1; i++) {
	lw	a5,-44(s0)		# tmp167, i
	addiw	a5,a5,1	#, tmp165, tmp166
	sw	a5,-44(s0)	# tmp165, i
.L2:
# problem59.c:8:     for (i = 0; i < size1; i++) {
	lw	a5,-44(s0)		# tmp169, i
	mv	a4,a5	# tmp168, tmp169
	lw	a5,-60(s0)		# tmp171, size1
	sext.w	a4,a4	# tmp172, tmp168
	sext.w	a5,a5	# tmp173, tmp170
	blt	a4,a5,.L11	#, tmp172, tmp173,
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
	ld	a4,-24(s0)		# tmp174, out
	add	a5,a4,a5	# _28, _29, tmp174
	lw	a3,0(a5)		# _30, *_29
# problem59.c:28:             if (out[j] > out[j + 1]) {
	lw	a5,-40(s0)		# _31, j
	addi	a5,a5,1	#, _32, _31
	slli	a5,a5,2	#, _33, _32
	ld	a4,-24(s0)		# tmp175, out
	add	a5,a4,a5	# _33, _34, tmp175
	lw	a5,0(a5)		# _35, *_34
# problem59.c:28:             if (out[j] > out[j + 1]) {
	mv	a4,a3	# tmp176, _30
	ble	a4,a5,.L14	#, tmp176, tmp177,
# problem59.c:29:                 int temp = out[j];
	lw	a5,-40(s0)		# _36, j
	slli	a5,a5,2	#, _37, _36
	ld	a4,-24(s0)		# tmp178, out
	add	a5,a4,a5	# _37, _38, tmp178
# problem59.c:29:                 int temp = out[j];
	lw	a5,0(a5)		# tmp179, *_38
	sw	a5,-28(s0)	# tmp179, temp
# problem59.c:30:                 out[j] = out[j + 1];
	lw	a5,-40(s0)		# _39, j
	addi	a5,a5,1	#, _40, _39
	slli	a5,a5,2	#, _41, _40
	ld	a4,-24(s0)		# tmp180, out
	add	a4,a4,a5	# _41, _42, tmp180
# problem59.c:30:                 out[j] = out[j + 1];
	lw	a5,-40(s0)		# _43, j
	slli	a5,a5,2	#, _44, _43
	ld	a3,-24(s0)		# tmp181, out
	add	a5,a3,a5	# _44, _45, tmp181
# problem59.c:30:                 out[j] = out[j + 1];
	lw	a4,0(a4)		# _46, *_42
# problem59.c:30:                 out[j] = out[j + 1];
	sw	a4,0(a5)	# _46, *_45
# problem59.c:31:                 out[j + 1] = temp;
	lw	a5,-40(s0)		# _47, j
	addi	a5,a5,1	#, _48, _47
	slli	a5,a5,2	#, _49, _48
	ld	a4,-24(s0)		# tmp182, out
	add	a5,a4,a5	# _49, _50, tmp182
# problem59.c:31:                 out[j + 1] = temp;
	lw	a4,-28(s0)		# tmp183, temp
	sw	a4,0(a5)	# tmp183, *_50
.L14:
# problem59.c:27:         for (j = 0; j < k - i - 1; j++) {
	lw	a5,-40(s0)		# tmp186, j
	addiw	a5,a5,1	#, tmp184, tmp185
	sw	a5,-40(s0)	# tmp184, j
.L13:
# problem59.c:27:         for (j = 0; j < k - i - 1; j++) {
	lw	a5,-48(s0)		# tmp189, k
	mv	a4,a5	# tmp188, tmp189
	lw	a5,-44(s0)		# tmp191, i
	subw	a5,a4,a5	# tmp187, tmp188, tmp190
	sext.w	a5,a5	# _51, tmp187
# problem59.c:27:         for (j = 0; j < k - i - 1; j++) {
	addiw	a5,a5,-1	#, tmp192, _51
	sext.w	a4,a5	# _52, tmp192
# problem59.c:27:         for (j = 0; j < k - i - 1; j++) {
	lw	a5,-40(s0)		# tmp194, j
	sext.w	a5,a5	# tmp195, tmp193
	blt	a5,a4,.L15	#, tmp195, tmp196,
# problem59.c:26:     for (i = 0; i < k - 1; i++) {
	lw	a5,-44(s0)		# tmp199, i
	addiw	a5,a5,1	#, tmp197, tmp198
	sw	a5,-44(s0)	# tmp197, i
.L12:
# problem59.c:26:     for (i = 0; i < k - 1; i++) {
	lw	a5,-48(s0)		# tmp202, k
	addiw	a5,a5,-1	#, tmp200, tmp201
	sext.w	a4,a5	# _53, tmp200
# problem59.c:26:     for (i = 0; i < k - 1; i++) {
	lw	a5,-44(s0)		# tmp204, i
	sext.w	a5,a5	# tmp205, tmp203
	blt	a5,a4,.L16	#, tmp205, tmp206,
# problem59.c:36:     *out_size = k;
	ld	a5,-80(s0)		# tmp207, out_size
	lw	a4,-48(s0)		# tmp208, k
	sw	a4,0(a5)	# tmp208, *out_size_74(D)
# problem59.c:37:     return out;
	ld	a5,-24(s0)		# _76, out
# problem59.c:38: }
	mv	a0,a5	#, <retval>
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
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
	addi	sp,sp,-256	#,,
	sd	ra,248(sp)	#,
	sd	s0,240(sp)	#,
	addi	s0,sp,256	#,,
# problem59.c:46: int main() {
	la	a5,__stack_chk_guard		# tmp93,
	ld	a4, 0(a5)	# tmp177, __stack_chk_guard
	sd	a4, -24(s0)	# tmp177, D.2713
	li	a4, 0	# tmp177
# problem59.c:49:     int l1[] = {1, 4, 3, 34, 653, 2, 5};
	lla	a5,.LC0	# tmp94,
	ld	a2,0(a5)		# tmp95,
	ld	a3,8(a5)		# tmp96,
	ld	a4,16(a5)		# tmp97,
	sd	a2,-88(s0)	# tmp95, l1
	sd	a3,-80(s0)	# tmp96, l1
	sd	a4,-72(s0)	# tmp97, l1
	lw	a5,24(a5)		# tmp98,
	sw	a5,-64(s0)	# tmp98, l1
# problem59.c:50:     int l2[] = {5, 7, 1, 5, 9, 653, 121};
	lla	a5,.LC1	# tmp99,
	ld	a2,0(a5)		# tmp100,
	ld	a3,8(a5)		# tmp101,
	ld	a4,16(a5)		# tmp102,
	sd	a2,-56(s0)	# tmp100, l2
	sd	a3,-48(s0)	# tmp101, l2
	sd	a4,-40(s0)	# tmp102, l2
	lw	a5,24(a5)		# tmp103,
	sw	a5,-32(s0)	# tmp103, l2
# problem59.c:51:     int expected1[] = {1, 5, 653};
	li	a5,1		# tmp104,
	sw	a5,-184(s0)	# tmp104, expected1[0]
	li	a5,5		# tmp105,
	sw	a5,-180(s0)	# tmp105, expected1[1]
	li	a5,653		# tmp106,
	sw	a5,-176(s0)	# tmp106, expected1[2]
# problem59.c:52:     int *result1 = func0(l1, 7, l2, 7, &size);
	addi	a4,s0,-256	#, tmp107,
	addi	a2,s0,-56	#, tmp108,
	addi	a5,s0,-88	#, tmp109,
	li	a3,7		#,
	li	a1,7		#,
	mv	a0,a5	#, tmp109
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
	ld	a4,-240(s0)		# tmp110, result1
	add	a5,a4,a5	# _2, _3, tmp110
	lw	a4,0(a5)		# _4, *_3
	lw	a5,-252(s0)		# tmp111, i
	slli	a5,a5,2	#, tmp112, tmp111
	addi	a5,a5,-16	#, tmp181, tmp112
	add	a5,a5,s0	#, tmp112, tmp181
	lw	a5,-168(a5)		# _5, expected1[i_20]
	beq	a4,a5,.L20	#, tmp113, tmp114,
# problem59.c:54:         assert(result1[i] == expected1[i]);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,54		#,
	lla	a1,.LC4	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L20:
# problem59.c:53:     for (int i = 0; i < size; i++) {
	lw	a5,-252(s0)		# tmp117, i
	addiw	a5,a5,1	#, tmp115, tmp116
	sw	a5,-252(s0)	# tmp115, i
.L19:
# problem59.c:53:     for (int i = 0; i < size; i++) {
	lw	a4,-256(s0)		# size.1_6, size
	lw	a5,-252(s0)		# tmp119, i
	sext.w	a5,a5	# tmp120, tmp118
	blt	a5,a4,.L21	#, tmp120, tmp121,
# problem59.c:56:     free(result1);
	ld	a0,-240(s0)		#, result1
	call	free@plt	#
# problem59.c:58:     int l3[] = {5, 3, 2, 8};
	lla	a5,.LC2	# tmp122,
	ld	a4,0(a5)		# tmp123,
	sd	a4,-136(s0)	# tmp123, l3
	ld	a5,8(a5)		# tmp124,
	sd	a5,-128(s0)	# tmp124, l3
# problem59.c:59:     int l4[] = {3, 2};
	li	a5,3		# tmp125,
	sw	a5,-200(s0)	# tmp125, l4[0]
	li	a5,2		# tmp126,
	sw	a5,-196(s0)	# tmp126, l4[1]
# problem59.c:60:     int expected2[] = {2, 3};
	li	a5,2		# tmp127,
	sw	a5,-192(s0)	# tmp127, expected2[0]
	li	a5,3		# tmp128,
	sw	a5,-188(s0)	# tmp128, expected2[1]
# problem59.c:61:     int *result2 = func0(l3, 4, l4, 2, &size);
	addi	a4,s0,-256	#, tmp129,
	addi	a2,s0,-200	#, tmp130,
	addi	a5,s0,-136	#, tmp131,
	li	a3,2		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp131
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
	ld	a4,-232(s0)		# tmp132, result2
	add	a5,a4,a5	# _8, _9, tmp132
	lw	a4,0(a5)		# _10, *_9
	lw	a5,-248(s0)		# tmp133, i
	slli	a5,a5,2	#, tmp134, tmp133
	addi	a5,a5,-16	#, tmp182, tmp134
	add	a5,a5,s0	#, tmp134, tmp182
	lw	a5,-176(a5)		# _11, expected2[i_21]
	beq	a4,a5,.L23	#, tmp135, tmp136,
# problem59.c:63:         assert(result2[i] == expected2[i]);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,63		#,
	lla	a1,.LC4	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L23:
# problem59.c:62:     for (int i = 0; i < size; i++) {
	lw	a5,-248(s0)		# tmp139, i
	addiw	a5,a5,1	#, tmp137, tmp138
	sw	a5,-248(s0)	# tmp137, i
.L22:
# problem59.c:62:     for (int i = 0; i < size; i++) {
	lw	a4,-256(s0)		# size.2_12, size
	lw	a5,-248(s0)		# tmp141, i
	sext.w	a5,a5	# tmp142, tmp140
	blt	a5,a4,.L24	#, tmp142, tmp143,
# problem59.c:65:     free(result2);
	ld	a0,-232(s0)		#, result2
	call	free@plt	#
# problem59.c:67:     int l5[] = {4, 3, 2, 8};
	lla	a5,.LC3	# tmp144,
	ld	a4,0(a5)		# tmp145,
	sd	a4,-120(s0)	# tmp145, l5
	ld	a5,8(a5)		# tmp146,
	sd	a5,-112(s0)	# tmp146, l5
# problem59.c:68:     int l6[] = {3, 2, 4};
	li	a5,3		# tmp147,
	sw	a5,-168(s0)	# tmp147, l6[0]
	li	a5,2		# tmp148,
	sw	a5,-164(s0)	# tmp148, l6[1]
	li	a5,4		# tmp149,
	sw	a5,-160(s0)	# tmp149, l6[2]
# problem59.c:69:     int expected3[] = {2, 3, 4};
	li	a5,2		# tmp150,
	sw	a5,-152(s0)	# tmp150, expected3[0]
	li	a5,3		# tmp151,
	sw	a5,-148(s0)	# tmp151, expected3[1]
	li	a5,4		# tmp152,
	sw	a5,-144(s0)	# tmp152, expected3[2]
# problem59.c:70:     int *result3 = func0(l5, 4, l6, 3, &size);
	addi	a4,s0,-256	#, tmp153,
	addi	a2,s0,-168	#, tmp154,
	addi	a5,s0,-120	#, tmp155,
	li	a3,3		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp155
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
	ld	a4,-224(s0)		# tmp156, result3
	add	a5,a4,a5	# _14, _15, tmp156
	lw	a4,0(a5)		# _16, *_15
	lw	a5,-244(s0)		# tmp157, i
	slli	a5,a5,2	#, tmp158, tmp157
	addi	a5,a5,-16	#, tmp183, tmp158
	add	a5,a5,s0	#, tmp158, tmp183
	lw	a5,-136(a5)		# _17, expected3[i_22]
	beq	a4,a5,.L26	#, tmp159, tmp160,
# problem59.c:72:         assert(result3[i] == expected3[i]);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,72		#,
	lla	a1,.LC4	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L26:
# problem59.c:71:     for (int i = 0; i < size; i++) {
	lw	a5,-244(s0)		# tmp163, i
	addiw	a5,a5,1	#, tmp161, tmp162
	sw	a5,-244(s0)	# tmp161, i
.L25:
# problem59.c:71:     for (int i = 0; i < size; i++) {
	lw	a4,-256(s0)		# size.3_18, size
	lw	a5,-244(s0)		# tmp165, i
	sext.w	a5,a5	# tmp166, tmp164
	blt	a5,a4,.L27	#, tmp166, tmp167,
# problem59.c:74:     free(result3);
	ld	a0,-224(s0)		#, result3
	call	free@plt	#
# problem59.c:76:     int l7[] = {4, 3, 2, 8};
	lla	a5,.LC3	# tmp168,
	ld	a4,0(a5)		# tmp169,
	sd	a4,-104(s0)	# tmp169, l7
	ld	a5,8(a5)		# tmp170,
	sd	a5,-96(s0)	# tmp170, l7
# problem59.c:78:     int *result4 = func0(l7, 4, l8, 0, &size);
	addi	a4,s0,-256	#, tmp171,
	addi	a2,s0,-208	#, tmp172,
	addi	a5,s0,-104	#, tmp173,
	li	a3,0		#,
	li	a1,4		#,
	mv	a0,a5	#, tmp173
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
	li	a5,0		# _59,
# problem59.c:83: }
	mv	a4,a5	# <retval>, _59
	la	a5,__stack_chk_guard		# tmp175,
	ld	a3, -24(s0)	# tmp178, D.2713
	ld	a5, 0(a5)	# tmp176, __stack_chk_guard
	xor	a5, a3, a5	# tmp176, tmp178
	li	a3, 0	# tmp178
	beq	a5,zero,.L30	#, tmp176,,
	call	__stack_chk_fail@plt	#
.L30:
	mv	a0,a4	#, <retval>
	ld	ra,248(sp)		#,
	ld	s0,240(sp)		#,
	addi	sp,sp,256	#,,
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
