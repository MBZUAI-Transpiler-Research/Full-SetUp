	.file	"code.c"
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
# eval/problem59//code.c:5:     int *out = malloc(size1 * sizeof(int));
	lw	a5,-60(s0)		# _1, size1
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp131,
	sd	a5,-24(s0)	# tmp131, out
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
	ld	a4,-24(s0)		# tmp132, out
	add	a5,a4,a5	# _4, _5, tmp132
	lw	a3,0(a5)		# _6, *_5
# eval/problem59//code.c:11:             if (out[m] == l1[i]) {
	lw	a5,-44(s0)		# _7, i
	slli	a5,a5,2	#, _8, _7
	ld	a4,-56(s0)		# tmp133, l1
	add	a5,a4,a5	# _8, _9, tmp133
	lw	a5,0(a5)		# _10, *_9
# eval/problem59//code.c:11:             if (out[m] == l1[i]) {
	mv	a4,a3	# tmp134, _6
	bne	a4,a5,.L4	#, tmp134, tmp135,
# eval/problem59//code.c:12:                 exists_in_out = 1;
	li	a5,1		# tmp136,
	sw	a5,-32(s0)	# tmp136, exists_in_out
# eval/problem59//code.c:13:                 break;
	j	.L5		#
.L4:
# eval/problem59//code.c:10:         for (m = 0; m < k; m++) {
	lw	a5,-36(s0)		# tmp139, m
	addiw	a5,a5,1	#, tmp137, tmp138
	sw	a5,-36(s0)	# tmp137, m
.L3:
# eval/problem59//code.c:10:         for (m = 0; m < k; m++) {
	lw	a5,-36(s0)		# tmp141, m
	mv	a4,a5	# tmp140, tmp141
	lw	a5,-48(s0)		# tmp143, k
	sext.w	a4,a4	# tmp144, tmp140
	sext.w	a5,a5	# tmp145, tmp142
	blt	a4,a5,.L6	#, tmp144, tmp145,
.L5:
# eval/problem59//code.c:16:         if (!exists_in_out) {
	lw	a5,-32(s0)		# tmp147, exists_in_out
	sext.w	a5,a5	# tmp148, tmp146
	bne	a5,zero,.L7	#, tmp148,,
# eval/problem59//code.c:17:             for (j = 0; j < size2; j++) {
	sw	zero,-40(s0)	#, j
# eval/problem59//code.c:17:             for (j = 0; j < size2; j++) {
	j	.L8		#
.L10:
# eval/problem59//code.c:18:                 if (l1[i] == l2[j]) {
	lw	a5,-44(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-56(s0)		# tmp149, l1
	add	a5,a4,a5	# _12, _13, tmp149
	lw	a3,0(a5)		# _14, *_13
# eval/problem59//code.c:18:                 if (l1[i] == l2[j]) {
	lw	a5,-40(s0)		# _15, j
	slli	a5,a5,2	#, _16, _15
	ld	a4,-72(s0)		# tmp150, l2
	add	a5,a4,a5	# _16, _17, tmp150
	lw	a5,0(a5)		# _18, *_17
# eval/problem59//code.c:18:                 if (l1[i] == l2[j]) {
	mv	a4,a3	# tmp151, _14
	bne	a4,a5,.L9	#, tmp151, tmp152,
# eval/problem59//code.c:19:                     out[k++] = l1[i];
	lw	a5,-44(s0)		# _19, i
	slli	a5,a5,2	#, _20, _19
	ld	a4,-56(s0)		# tmp153, l1
	add	a4,a4,a5	# _20, _21, tmp153
# eval/problem59//code.c:19:                     out[k++] = l1[i];
	lw	a5,-48(s0)		# k.0_22, k
	addiw	a3,a5,1	#, tmp154, k.0_22
	sw	a3,-48(s0)	# tmp154, k
# eval/problem59//code.c:19:                     out[k++] = l1[i];
	slli	a5,a5,2	#, _24, _23
	ld	a3,-24(s0)		# tmp155, out
	add	a5,a3,a5	# _24, _25, tmp155
# eval/problem59//code.c:19:                     out[k++] = l1[i];
	lw	a4,0(a4)		# _26, *_21
# eval/problem59//code.c:19:                     out[k++] = l1[i];
	sw	a4,0(a5)	# _26, *_25
# eval/problem59//code.c:20:                     break;
	j	.L7		#
.L9:
# eval/problem59//code.c:17:             for (j = 0; j < size2; j++) {
	lw	a5,-40(s0)		# tmp158, j
	addiw	a5,a5,1	#, tmp156, tmp157
	sw	a5,-40(s0)	# tmp156, j
.L8:
# eval/problem59//code.c:17:             for (j = 0; j < size2; j++) {
	lw	a5,-40(s0)		# tmp160, j
	mv	a4,a5	# tmp159, tmp160
	lw	a5,-64(s0)		# tmp162, size2
	sext.w	a4,a4	# tmp163, tmp159
	sext.w	a5,a5	# tmp164, tmp161
	blt	a4,a5,.L10	#, tmp163, tmp164,
.L7:
# eval/problem59//code.c:8:     for (i = 0; i < size1; i++) {
	lw	a5,-44(s0)		# tmp167, i
	addiw	a5,a5,1	#, tmp165, tmp166
	sw	a5,-44(s0)	# tmp165, i
.L2:
# eval/problem59//code.c:8:     for (i = 0; i < size1; i++) {
	lw	a5,-44(s0)		# tmp169, i
	mv	a4,a5	# tmp168, tmp169
	lw	a5,-60(s0)		# tmp171, size1
	sext.w	a4,a4	# tmp172, tmp168
	sext.w	a5,a5	# tmp173, tmp170
	blt	a4,a5,.L11	#, tmp172, tmp173,
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
	ld	a4,-24(s0)		# tmp174, out
	add	a5,a4,a5	# _28, _29, tmp174
	lw	a3,0(a5)		# _30, *_29
# eval/problem59//code.c:28:             if (out[j] > out[j + 1]) {
	lw	a5,-40(s0)		# _31, j
	addi	a5,a5,1	#, _32, _31
	slli	a5,a5,2	#, _33, _32
	ld	a4,-24(s0)		# tmp175, out
	add	a5,a4,a5	# _33, _34, tmp175
	lw	a5,0(a5)		# _35, *_34
# eval/problem59//code.c:28:             if (out[j] > out[j + 1]) {
	mv	a4,a3	# tmp176, _30
	ble	a4,a5,.L14	#, tmp176, tmp177,
# eval/problem59//code.c:29:                 int temp = out[j];
	lw	a5,-40(s0)		# _36, j
	slli	a5,a5,2	#, _37, _36
	ld	a4,-24(s0)		# tmp178, out
	add	a5,a4,a5	# _37, _38, tmp178
# eval/problem59//code.c:29:                 int temp = out[j];
	lw	a5,0(a5)		# tmp179, *_38
	sw	a5,-28(s0)	# tmp179, temp
# eval/problem59//code.c:30:                 out[j] = out[j + 1];
	lw	a5,-40(s0)		# _39, j
	addi	a5,a5,1	#, _40, _39
	slli	a5,a5,2	#, _41, _40
	ld	a4,-24(s0)		# tmp180, out
	add	a4,a4,a5	# _41, _42, tmp180
# eval/problem59//code.c:30:                 out[j] = out[j + 1];
	lw	a5,-40(s0)		# _43, j
	slli	a5,a5,2	#, _44, _43
	ld	a3,-24(s0)		# tmp181, out
	add	a5,a3,a5	# _44, _45, tmp181
# eval/problem59//code.c:30:                 out[j] = out[j + 1];
	lw	a4,0(a4)		# _46, *_42
# eval/problem59//code.c:30:                 out[j] = out[j + 1];
	sw	a4,0(a5)	# _46, *_45
# eval/problem59//code.c:31:                 out[j + 1] = temp;
	lw	a5,-40(s0)		# _47, j
	addi	a5,a5,1	#, _48, _47
	slli	a5,a5,2	#, _49, _48
	ld	a4,-24(s0)		# tmp182, out
	add	a5,a4,a5	# _49, _50, tmp182
# eval/problem59//code.c:31:                 out[j + 1] = temp;
	lw	a4,-28(s0)		# tmp183, temp
	sw	a4,0(a5)	# tmp183, *_50
.L14:
# eval/problem59//code.c:27:         for (j = 0; j < k - i - 1; j++) {
	lw	a5,-40(s0)		# tmp186, j
	addiw	a5,a5,1	#, tmp184, tmp185
	sw	a5,-40(s0)	# tmp184, j
.L13:
# eval/problem59//code.c:27:         for (j = 0; j < k - i - 1; j++) {
	lw	a5,-48(s0)		# tmp189, k
	mv	a4,a5	# tmp188, tmp189
	lw	a5,-44(s0)		# tmp191, i
	subw	a5,a4,a5	# tmp187, tmp188, tmp190
	sext.w	a5,a5	# _51, tmp187
# eval/problem59//code.c:27:         for (j = 0; j < k - i - 1; j++) {
	addiw	a5,a5,-1	#, tmp192, _51
	sext.w	a4,a5	# _52, tmp192
# eval/problem59//code.c:27:         for (j = 0; j < k - i - 1; j++) {
	lw	a5,-40(s0)		# tmp194, j
	sext.w	a5,a5	# tmp195, tmp193
	blt	a5,a4,.L15	#, tmp195, tmp196,
# eval/problem59//code.c:26:     for (i = 0; i < k - 1; i++) {
	lw	a5,-44(s0)		# tmp199, i
	addiw	a5,a5,1	#, tmp197, tmp198
	sw	a5,-44(s0)	# tmp197, i
.L12:
# eval/problem59//code.c:26:     for (i = 0; i < k - 1; i++) {
	lw	a5,-48(s0)		# tmp202, k
	addiw	a5,a5,-1	#, tmp200, tmp201
	sext.w	a4,a5	# _53, tmp200
# eval/problem59//code.c:26:     for (i = 0; i < k - 1; i++) {
	lw	a5,-44(s0)		# tmp204, i
	sext.w	a5,a5	# tmp205, tmp203
	blt	a5,a4,.L16	#, tmp205, tmp206,
# eval/problem59//code.c:36:     *out_size = k;
	ld	a5,-80(s0)		# tmp207, out_size
	lw	a4,-48(s0)		# tmp208, k
	sw	a4,0(a5)	# tmp208, *out_size_74(D)
# eval/problem59//code.c:37:     return out;
	ld	a5,-24(s0)		# _76, out
# eval/problem59//code.c:38: }
	mv	a0,a5	#, <retval>
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
