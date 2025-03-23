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
	addi	sp,sp,-128	#,,
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	addi	s0,sp,128	#,,
	sd	a0,-104(s0)	# numbers, numbers
	mv	a5,a1	# tmp108, size
	sd	a2,-120(s0)	# new_size, new_size
	sw	a5,-108(s0)	# tmp109, size
# eval/problem27//code.c:5:     int* out = (int*)malloc(size * sizeof(int));
	lw	a5,-108(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp110,
	sd	a5,-40(s0)	# tmp110, out
# eval/problem27//code.c:6:     int* has1 = (int*)calloc(size, sizeof(int));
	lw	a5,-108(s0)		# _3, size
	li	a1,4		#,
	mv	a0,a5	#, _3
	call	calloc@plt	#
	mv	a5,a0	# tmp111,
	sd	a5,-32(s0)	# tmp111, has1
# eval/problem27//code.c:7:     int* has2 = (int*)calloc(size, sizeof(int));
	lw	a5,-108(s0)		# _4, size
	li	a1,4		#,
	mv	a0,a5	#, _4
	call	calloc@plt	#
	mv	a5,a0	# tmp112,
	sd	a5,-24(s0)	# tmp112, has2
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
	ld	a4,-104(s0)		# tmp113, numbers
	add	a5,a4,a5	# _6, _7, tmp113
# eval/problem27//code.c:13:         int num = numbers[i];
	lw	a5,0(a5)		# tmp114, *_7
	sw	a5,-44(s0)	# tmp114, num
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
	ld	a4,-24(s0)		# tmp115, has2
	add	a5,a4,a5	# _9, _10, tmp115
	lw	a4,0(a5)		# _11, *_10
# eval/problem27//code.c:17:             if (has2[j] == num) {
	lw	a5,-44(s0)		# tmp117, num
	sext.w	a5,a5	# tmp118, tmp116
	bne	a5,a4,.L4	#, tmp118, tmp119,
# eval/problem27//code.c:18:                 in_has2 = 1;
	li	a5,1		# tmp120,
	sw	a5,-76(s0)	# tmp120, in_has2
# eval/problem27//code.c:19:                 break;
	j	.L5		#
.L4:
# eval/problem27//code.c:16:         for (int j = 0; j < has2_count; j++) {
	lw	a5,-72(s0)		# tmp123, j
	addiw	a5,a5,1	#, tmp121, tmp122
	sw	a5,-72(s0)	# tmp121, j
.L3:
# eval/problem27//code.c:16:         for (int j = 0; j < has2_count; j++) {
	lw	a5,-72(s0)		# tmp125, j
	mv	a4,a5	# tmp124, tmp125
	lw	a5,-88(s0)		# tmp127, has2_count
	sext.w	a4,a4	# tmp128, tmp124
	sext.w	a5,a5	# tmp129, tmp126
	blt	a4,a5,.L6	#, tmp128, tmp129,
.L5:
# eval/problem27//code.c:22:         if (in_has2) continue;
	lw	a5,-76(s0)		# tmp131, in_has2
	sext.w	a5,a5	# tmp132, tmp130
	bne	a5,zero,.L23	#, tmp132,,
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
	ld	a4,-32(s0)		# tmp133, has1
	add	a5,a4,a5	# _13, _14, tmp133
	lw	a4,0(a5)		# _15, *_14
# eval/problem27//code.c:26:             if (has1[j] == num) {
	lw	a5,-44(s0)		# tmp135, num
	sext.w	a5,a5	# tmp136, tmp134
	bne	a5,a4,.L10	#, tmp136, tmp137,
# eval/problem27//code.c:27:                 in_has1 = 1;
	li	a5,1		# tmp138,
	sw	a5,-68(s0)	# tmp138, in_has1
# eval/problem27//code.c:28:                 break;
	j	.L11		#
.L10:
# eval/problem27//code.c:25:         for (int j = 0; j < has1_count; j++) {
	lw	a5,-64(s0)		# tmp141, j
	addiw	a5,a5,1	#, tmp139, tmp140
	sw	a5,-64(s0)	# tmp139, j
.L9:
# eval/problem27//code.c:25:         for (int j = 0; j < has1_count; j++) {
	lw	a5,-64(s0)		# tmp143, j
	mv	a4,a5	# tmp142, tmp143
	lw	a5,-92(s0)		# tmp145, has1_count
	sext.w	a4,a4	# tmp146, tmp142
	sext.w	a5,a5	# tmp147, tmp144
	blt	a4,a5,.L12	#, tmp146, tmp147,
.L11:
# eval/problem27//code.c:31:         if (in_has1) {
	lw	a5,-68(s0)		# tmp149, in_has1
	sext.w	a5,a5	# tmp150, tmp148
	beq	a5,zero,.L13	#, tmp150,,
# eval/problem27//code.c:32:             has2[has2_count++] = num;
	lw	a5,-88(s0)		# has2_count.0_16, has2_count
	addiw	a4,a5,1	#, tmp151, has2_count.0_16
	sw	a4,-88(s0)	# tmp151, has2_count
# eval/problem27//code.c:32:             has2[has2_count++] = num;
	slli	a5,a5,2	#, _18, _17
	ld	a4,-24(s0)		# tmp152, has2
	add	a5,a4,a5	# _18, _19, tmp152
# eval/problem27//code.c:32:             has2[has2_count++] = num;
	lw	a4,-44(s0)		# tmp153, num
	sw	a4,0(a5)	# tmp153, *_19
	j	.L8		#
.L13:
# eval/problem27//code.c:34:             has1[has1_count++] = num;
	lw	a5,-92(s0)		# has1_count.1_20, has1_count
	addiw	a4,a5,1	#, tmp154, has1_count.1_20
	sw	a4,-92(s0)	# tmp154, has1_count
# eval/problem27//code.c:34:             has1[has1_count++] = num;
	slli	a5,a5,2	#, _22, _21
	ld	a4,-32(s0)		# tmp155, has1
	add	a5,a4,a5	# _22, _23, tmp155
# eval/problem27//code.c:34:             has1[has1_count++] = num;
	lw	a4,-44(s0)		# tmp156, num
	sw	a4,0(a5)	# tmp156, *_23
	j	.L8		#
.L23:
# eval/problem27//code.c:22:         if (in_has2) continue;
	nop	
.L8:
# eval/problem27//code.c:12:     for (int i = 0; i < size; i++) {
	lw	a5,-80(s0)		# tmp159, i
	addiw	a5,a5,1	#, tmp157, tmp158
	sw	a5,-80(s0)	# tmp157, i
.L2:
# eval/problem27//code.c:12:     for (int i = 0; i < size; i++) {
	lw	a5,-80(s0)		# tmp161, i
	mv	a4,a5	# tmp160, tmp161
	lw	a5,-108(s0)		# tmp163, size
	sext.w	a4,a4	# tmp164, tmp160
	sext.w	a5,a5	# tmp165, tmp162
	blt	a4,a5,.L14	#, tmp164, tmp165,
# eval/problem27//code.c:38:     for (int i = 0; i < size; i++) {
	sw	zero,-60(s0)	#, i
# eval/problem27//code.c:38:     for (int i = 0; i < size; i++) {
	j	.L15		#
.L21:
# eval/problem27//code.c:39:         int num = numbers[i];
	lw	a5,-60(s0)		# _24, i
	slli	a5,a5,2	#, _25, _24
	ld	a4,-104(s0)		# tmp166, numbers
	add	a5,a4,a5	# _25, _26, tmp166
# eval/problem27//code.c:39:         int num = numbers[i];
	lw	a5,0(a5)		# tmp167, *_26
	sw	a5,-48(s0)	# tmp167, num
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
	ld	a4,-24(s0)		# tmp168, has2
	add	a5,a4,a5	# _28, _29, tmp168
	lw	a4,0(a5)		# _30, *_29
# eval/problem27//code.c:42:             if (has2[j] == num) {
	lw	a5,-48(s0)		# tmp170, num
	sext.w	a5,a5	# tmp171, tmp169
	bne	a5,a4,.L17	#, tmp171, tmp172,
# eval/problem27//code.c:43:                 in_has2 = 1;
	li	a5,1		# tmp173,
	sw	a5,-56(s0)	# tmp173, in_has2
# eval/problem27//code.c:44:                 break;
	j	.L18		#
.L17:
# eval/problem27//code.c:41:         for (int j = 0; j < has2_count; j++) {
	lw	a5,-52(s0)		# tmp176, j
	addiw	a5,a5,1	#, tmp174, tmp175
	sw	a5,-52(s0)	# tmp174, j
.L16:
# eval/problem27//code.c:41:         for (int j = 0; j < has2_count; j++) {
	lw	a5,-52(s0)		# tmp178, j
	mv	a4,a5	# tmp177, tmp178
	lw	a5,-88(s0)		# tmp180, has2_count
	sext.w	a4,a4	# tmp181, tmp177
	sext.w	a5,a5	# tmp182, tmp179
	blt	a4,a5,.L19	#, tmp181, tmp182,
.L18:
# eval/problem27//code.c:47:         if (!in_has2) {
	lw	a5,-56(s0)		# tmp184, in_has2
	sext.w	a5,a5	# tmp185, tmp183
	bne	a5,zero,.L20	#, tmp185,,
# eval/problem27//code.c:48:             out[out_count++] = num;
	lw	a5,-84(s0)		# out_count.2_31, out_count
	addiw	a4,a5,1	#, tmp186, out_count.2_31
	sw	a4,-84(s0)	# tmp186, out_count
# eval/problem27//code.c:48:             out[out_count++] = num;
	slli	a5,a5,2	#, _33, _32
	ld	a4,-40(s0)		# tmp187, out
	add	a5,a4,a5	# _33, _34, tmp187
# eval/problem27//code.c:48:             out[out_count++] = num;
	lw	a4,-48(s0)		# tmp188, num
	sw	a4,0(a5)	# tmp188, *_34
.L20:
# eval/problem27//code.c:38:     for (int i = 0; i < size; i++) {
	lw	a5,-60(s0)		# tmp191, i
	addiw	a5,a5,1	#, tmp189, tmp190
	sw	a5,-60(s0)	# tmp189, i
.L15:
# eval/problem27//code.c:38:     for (int i = 0; i < size; i++) {
	lw	a5,-60(s0)		# tmp193, i
	mv	a4,a5	# tmp192, tmp193
	lw	a5,-108(s0)		# tmp195, size
	sext.w	a4,a4	# tmp196, tmp192
	sext.w	a5,a5	# tmp197, tmp194
	blt	a4,a5,.L21	#, tmp196, tmp197,
# eval/problem27//code.c:52:     *new_size = out_count;
	ld	a5,-120(s0)		# tmp198, new_size
	lw	a4,-84(s0)		# tmp199, out_count
	sw	a4,0(a5)	# tmp199, *new_size_66(D)
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
	ld	s0,112(sp)		#,
	addi	sp,sp,128	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
