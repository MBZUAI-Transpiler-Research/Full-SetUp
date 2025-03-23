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
	sd	a0,-56(s0)	# l, l
	mv	a5,a1	# tmp123, size
	sd	a2,-72(s0)	# out, out
	sw	a5,-60(s0)	# tmp124, size
# eval/problem34//code.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	lw	a5,-60(s0)		# tmp127, size
	mv	a4,a5	# tmp126, tmp127
	li	a5,3		# tmp129,
	divw	a5,a4,a5	# tmp129, tmp128, tmp126
	sext.w	a5,a5	# _1, tmp128
# eval/problem34//code.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	addiw	a5,a5,1	#, tmp130, _1
	sext.w	a5,a5	# _2, tmp130
# eval/problem34//code.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	slli	a5,a5,2	#, _4, _3
	mv	a0,a5	#, _4
	call	malloc@plt	#
	mv	a5,a0	# tmp131,
	sd	a5,-24(s0)	# tmp131, third
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
	lw	a5,-44(s0)		# tmp133, i
	mv	a4,a5	# tmp132, tmp133
	mv	a5,a4	# tmp134, tmp132
	slliw	a5,a5,1	#, tmp135, tmp134
	addw	a5,a5,a4	# tmp132, tmp134, tmp134
	sext.w	a5,a5	# _5, tmp134
# eval/problem34//code.c:9:         third[i] = l[i * 3];
	slli	a5,a5,2	#, _7, _6
	ld	a4,-56(s0)		# tmp136, l
	add	a4,a4,a5	# _7, _8, tmp136
# eval/problem34//code.c:9:         third[i] = l[i * 3];
	lw	a5,-44(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a3,-24(s0)		# tmp137, third
	add	a5,a3,a5	# _10, _11, tmp137
# eval/problem34//code.c:9:         third[i] = l[i * 3];
	lw	a4,0(a4)		# _12, *_8
# eval/problem34//code.c:9:         third[i] = l[i * 3];
	sw	a4,0(a5)	# _12, *_11
# eval/problem34//code.c:10:         third_size++;
	lw	a5,-36(s0)		# tmp140, third_size
	addiw	a5,a5,1	#, tmp138, tmp139
	sw	a5,-36(s0)	# tmp138, third_size
# eval/problem34//code.c:8:     for (i = 0; i * 3 < size; i++) {
	lw	a5,-44(s0)		# tmp143, i
	addiw	a5,a5,1	#, tmp141, tmp142
	sw	a5,-44(s0)	# tmp141, i
.L2:
# eval/problem34//code.c:8:     for (i = 0; i * 3 < size; i++) {
	lw	a5,-44(s0)		# tmp145, i
	mv	a4,a5	# tmp144, tmp145
	mv	a5,a4	# tmp146, tmp144
	slliw	a5,a5,1	#, tmp147, tmp146
	addw	a5,a5,a4	# tmp144, tmp146, tmp146
	sext.w	a4,a5	# _13, tmp146
# eval/problem34//code.c:8:     for (i = 0; i * 3 < size; i++) {
	lw	a5,-60(s0)		# tmp149, size
	sext.w	a5,a5	# tmp150, tmp148
	bgt	a5,a4,.L3	#, tmp150, tmp151,
# eval/problem34//code.c:13:     for (i = 0; i < third_size - 1; i++) {
	sw	zero,-44(s0)	#, i
# eval/problem34//code.c:13:     for (i = 0; i < third_size - 1; i++) {
	j	.L4		#
.L9:
# eval/problem34//code.c:14:         int min_idx = i;
	lw	a5,-44(s0)		# tmp152, i
	sw	a5,-32(s0)	# tmp152, min_idx
# eval/problem34//code.c:15:         for (k = i + 1; k < third_size; k++) {
	lw	a5,-44(s0)		# tmp155, i
	addiw	a5,a5,1	#, tmp153, tmp154
	sw	a5,-40(s0)	# tmp153, k
# eval/problem34//code.c:15:         for (k = i + 1; k < third_size; k++) {
	j	.L5		#
.L7:
# eval/problem34//code.c:16:             if (third[k] < third[min_idx])
	lw	a5,-40(s0)		# _14, k
	slli	a5,a5,2	#, _15, _14
	ld	a4,-24(s0)		# tmp156, third
	add	a5,a4,a5	# _15, _16, tmp156
	lw	a3,0(a5)		# _17, *_16
# eval/problem34//code.c:16:             if (third[k] < third[min_idx])
	lw	a5,-32(s0)		# _18, min_idx
	slli	a5,a5,2	#, _19, _18
	ld	a4,-24(s0)		# tmp157, third
	add	a5,a4,a5	# _19, _20, tmp157
	lw	a5,0(a5)		# _21, *_20
# eval/problem34//code.c:16:             if (third[k] < third[min_idx])
	mv	a4,a3	# tmp158, _17
	bge	a4,a5,.L6	#, tmp158, tmp159,
# eval/problem34//code.c:17:                 min_idx = k;
	lw	a5,-40(s0)		# tmp160, k
	sw	a5,-32(s0)	# tmp160, min_idx
.L6:
# eval/problem34//code.c:15:         for (k = i + 1; k < third_size; k++) {
	lw	a5,-40(s0)		# tmp163, k
	addiw	a5,a5,1	#, tmp161, tmp162
	sw	a5,-40(s0)	# tmp161, k
.L5:
# eval/problem34//code.c:15:         for (k = i + 1; k < third_size; k++) {
	lw	a5,-40(s0)		# tmp165, k
	mv	a4,a5	# tmp164, tmp165
	lw	a5,-36(s0)		# tmp167, third_size
	sext.w	a4,a4	# tmp168, tmp164
	sext.w	a5,a5	# tmp169, tmp166
	blt	a4,a5,.L7	#, tmp168, tmp169,
# eval/problem34//code.c:19:         if (min_idx != i) {
	lw	a5,-32(s0)		# tmp171, min_idx
	mv	a4,a5	# tmp170, tmp171
	lw	a5,-44(s0)		# tmp173, i
	sext.w	a4,a4	# tmp174, tmp170
	sext.w	a5,a5	# tmp175, tmp172
	beq	a4,a5,.L8	#, tmp174, tmp175,
# eval/problem34//code.c:20:             int temp = third[i];
	lw	a5,-44(s0)		# _22, i
	slli	a5,a5,2	#, _23, _22
	ld	a4,-24(s0)		# tmp176, third
	add	a5,a4,a5	# _23, _24, tmp176
# eval/problem34//code.c:20:             int temp = third[i];
	lw	a5,0(a5)		# tmp177, *_24
	sw	a5,-28(s0)	# tmp177, temp
# eval/problem34//code.c:21:             third[i] = third[min_idx];
	lw	a5,-32(s0)		# _25, min_idx
	slli	a5,a5,2	#, _26, _25
	ld	a4,-24(s0)		# tmp178, third
	add	a4,a4,a5	# _26, _27, tmp178
# eval/problem34//code.c:21:             third[i] = third[min_idx];
	lw	a5,-44(s0)		# _28, i
	slli	a5,a5,2	#, _29, _28
	ld	a3,-24(s0)		# tmp179, third
	add	a5,a3,a5	# _29, _30, tmp179
# eval/problem34//code.c:21:             third[i] = third[min_idx];
	lw	a4,0(a4)		# _31, *_27
# eval/problem34//code.c:21:             third[i] = third[min_idx];
	sw	a4,0(a5)	# _31, *_30
# eval/problem34//code.c:22:             third[min_idx] = temp;
	lw	a5,-32(s0)		# _32, min_idx
	slli	a5,a5,2	#, _33, _32
	ld	a4,-24(s0)		# tmp180, third
	add	a5,a4,a5	# _33, _34, tmp180
# eval/problem34//code.c:22:             third[min_idx] = temp;
	lw	a4,-28(s0)		# tmp181, temp
	sw	a4,0(a5)	# tmp181, *_34
.L8:
# eval/problem34//code.c:13:     for (i = 0; i < third_size - 1; i++) {
	lw	a5,-44(s0)		# tmp184, i
	addiw	a5,a5,1	#, tmp182, tmp183
	sw	a5,-44(s0)	# tmp182, i
.L4:
# eval/problem34//code.c:13:     for (i = 0; i < third_size - 1; i++) {
	lw	a5,-36(s0)		# tmp187, third_size
	addiw	a5,a5,-1	#, tmp185, tmp186
	sext.w	a4,a5	# _35, tmp185
# eval/problem34//code.c:13:     for (i = 0; i < third_size - 1; i++) {
	lw	a5,-44(s0)		# tmp189, i
	sext.w	a5,a5	# tmp190, tmp188
	blt	a5,a4,.L9	#, tmp190, tmp191,
# eval/problem34//code.c:26:     for (i = 0; i < size; i++) {
	sw	zero,-44(s0)	#, i
# eval/problem34//code.c:26:     for (i = 0; i < size; i++) {
	j	.L10		#
.L13:
# eval/problem34//code.c:27:         if (i % 3 == 0) {
	lw	a5,-44(s0)		# tmp194, i
	mv	a4,a5	# tmp193, tmp194
	li	a5,3		# tmp196,
	remw	a5,a4,a5	# tmp196, tmp195, tmp193
	sext.w	a5,a5	# _36, tmp195
# eval/problem34//code.c:27:         if (i % 3 == 0) {
	bne	a5,zero,.L11	#, _36,,
# eval/problem34//code.c:28:             out[i] = third[i / 3];
	lw	a5,-44(s0)		# tmp199, i
	mv	a4,a5	# tmp198, tmp199
	li	a5,3		# tmp201,
	divw	a5,a4,a5	# tmp201, tmp200, tmp198
	sext.w	a5,a5	# _37, tmp200
# eval/problem34//code.c:28:             out[i] = third[i / 3];
	slli	a5,a5,2	#, _39, _38
	ld	a4,-24(s0)		# tmp202, third
	add	a4,a4,a5	# _39, _40, tmp202
# eval/problem34//code.c:28:             out[i] = third[i / 3];
	lw	a5,-44(s0)		# _41, i
	slli	a5,a5,2	#, _42, _41
	ld	a3,-72(s0)		# tmp203, out
	add	a5,a3,a5	# _42, _43, tmp203
# eval/problem34//code.c:28:             out[i] = third[i / 3];
	lw	a4,0(a4)		# _44, *_40
# eval/problem34//code.c:28:             out[i] = third[i / 3];
	sw	a4,0(a5)	# _44, *_43
	j	.L12		#
.L11:
# eval/problem34//code.c:30:             out[i] = l[i];
	lw	a5,-44(s0)		# _45, i
	slli	a5,a5,2	#, _46, _45
	ld	a4,-56(s0)		# tmp204, l
	add	a4,a4,a5	# _46, _47, tmp204
# eval/problem34//code.c:30:             out[i] = l[i];
	lw	a5,-44(s0)		# _48, i
	slli	a5,a5,2	#, _49, _48
	ld	a3,-72(s0)		# tmp205, out
	add	a5,a3,a5	# _49, _50, tmp205
# eval/problem34//code.c:30:             out[i] = l[i];
	lw	a4,0(a4)		# _51, *_47
# eval/problem34//code.c:30:             out[i] = l[i];
	sw	a4,0(a5)	# _51, *_50
.L12:
# eval/problem34//code.c:26:     for (i = 0; i < size; i++) {
	lw	a5,-44(s0)		# tmp208, i
	addiw	a5,a5,1	#, tmp206, tmp207
	sw	a5,-44(s0)	# tmp206, i
.L10:
# eval/problem34//code.c:26:     for (i = 0; i < size; i++) {
	lw	a5,-44(s0)		# tmp210, i
	mv	a4,a5	# tmp209, tmp210
	lw	a5,-60(s0)		# tmp212, size
	sext.w	a4,a4	# tmp213, tmp209
	sext.w	a5,a5	# tmp214, tmp211
	blt	a4,a5,.L13	#, tmp213, tmp214,
# eval/problem34//code.c:34:     free(third);
	ld	a0,-24(s0)		#, third
	call	free@plt	#
# eval/problem34//code.c:35: }
	nop	
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
