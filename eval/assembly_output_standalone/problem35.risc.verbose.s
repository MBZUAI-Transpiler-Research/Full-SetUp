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
	mv	a5,a1	# tmp114, size
	sd	a2,-72(s0)	# out_size, out_size
	sw	a5,-60(s0)	# tmp115, size
# eval/problem35//code.c:5:     int *out = malloc(size * sizeof(int));
	lw	a5,-60(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp116,
	sd	a5,-24(s0)	# tmp116, out
# eval/problem35//code.c:6:     int found, out_count = 0, i, j;
	sw	zero,-40(s0)	#, out_count
# eval/problem35//code.c:7:     for (i = 0; i < size; i++) {
	sw	zero,-36(s0)	#, i
# eval/problem35//code.c:7:     for (i = 0; i < size; i++) {
	j	.L2		#
.L8:
# eval/problem35//code.c:8:         found = 0;
	sw	zero,-44(s0)	#, found
# eval/problem35//code.c:9:         for (j = 0; j < out_count; j++) {
	sw	zero,-32(s0)	#, j
# eval/problem35//code.c:9:         for (j = 0; j < out_count; j++) {
	j	.L3		#
.L6:
# eval/problem35//code.c:10:             if (l[i] == out[j]) {
	lw	a5,-36(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
	ld	a4,-56(s0)		# tmp117, l
	add	a5,a4,a5	# _4, _5, tmp117
	lw	a3,0(a5)		# _6, *_5
# eval/problem35//code.c:10:             if (l[i] == out[j]) {
	lw	a5,-32(s0)		# _7, j
	slli	a5,a5,2	#, _8, _7
	ld	a4,-24(s0)		# tmp118, out
	add	a5,a4,a5	# _8, _9, tmp118
	lw	a5,0(a5)		# _10, *_9
# eval/problem35//code.c:10:             if (l[i] == out[j]) {
	mv	a4,a3	# tmp119, _6
	bne	a4,a5,.L4	#, tmp119, tmp120,
# eval/problem35//code.c:11:                 found = 1;
	li	a5,1		# tmp121,
	sw	a5,-44(s0)	# tmp121, found
# eval/problem35//code.c:12:                 break;
	j	.L5		#
.L4:
# eval/problem35//code.c:9:         for (j = 0; j < out_count; j++) {
	lw	a5,-32(s0)		# tmp124, j
	addiw	a5,a5,1	#, tmp122, tmp123
	sw	a5,-32(s0)	# tmp122, j
.L3:
# eval/problem35//code.c:9:         for (j = 0; j < out_count; j++) {
	lw	a5,-32(s0)		# tmp126, j
	mv	a4,a5	# tmp125, tmp126
	lw	a5,-40(s0)		# tmp128, out_count
	sext.w	a4,a4	# tmp129, tmp125
	sext.w	a5,a5	# tmp130, tmp127
	blt	a4,a5,.L6	#, tmp129, tmp130,
.L5:
# eval/problem35//code.c:15:         if (!found) {
	lw	a5,-44(s0)		# tmp132, found
	sext.w	a5,a5	# tmp133, tmp131
	bne	a5,zero,.L7	#, tmp133,,
# eval/problem35//code.c:16:             out[out_count++] = l[i];
	lw	a5,-36(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-56(s0)		# tmp134, l
	add	a4,a4,a5	# _12, _13, tmp134
# eval/problem35//code.c:16:             out[out_count++] = l[i];
	lw	a5,-40(s0)		# out_count.0_14, out_count
	addiw	a3,a5,1	#, tmp135, out_count.0_14
	sw	a3,-40(s0)	# tmp135, out_count
# eval/problem35//code.c:16:             out[out_count++] = l[i];
	slli	a5,a5,2	#, _16, _15
	ld	a3,-24(s0)		# tmp136, out
	add	a5,a3,a5	# _16, _17, tmp136
# eval/problem35//code.c:16:             out[out_count++] = l[i];
	lw	a4,0(a4)		# _18, *_13
# eval/problem35//code.c:16:             out[out_count++] = l[i];
	sw	a4,0(a5)	# _18, *_17
.L7:
# eval/problem35//code.c:7:     for (i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp139, i
	addiw	a5,a5,1	#, tmp137, tmp138
	sw	a5,-36(s0)	# tmp137, i
.L2:
# eval/problem35//code.c:7:     for (i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp141, i
	mv	a4,a5	# tmp140, tmp141
	lw	a5,-60(s0)		# tmp143, size
	sext.w	a4,a4	# tmp144, tmp140
	sext.w	a5,a5	# tmp145, tmp142
	blt	a4,a5,.L8	#, tmp144, tmp145,
# eval/problem35//code.c:20:     for (i = 0; i < out_count - 1; i++) {
	sw	zero,-36(s0)	#, i
# eval/problem35//code.c:20:     for (i = 0; i < out_count - 1; i++) {
	j	.L9		#
.L13:
# eval/problem35//code.c:21:         for (j = i + 1; j < out_count; j++) {
	lw	a5,-36(s0)		# tmp148, i
	addiw	a5,a5,1	#, tmp146, tmp147
	sw	a5,-32(s0)	# tmp146, j
# eval/problem35//code.c:21:         for (j = i + 1; j < out_count; j++) {
	j	.L10		#
.L12:
# eval/problem35//code.c:22:             if (out[i] > out[j]) {
	lw	a5,-36(s0)		# _19, i
	slli	a5,a5,2	#, _20, _19
	ld	a4,-24(s0)		# tmp149, out
	add	a5,a4,a5	# _20, _21, tmp149
	lw	a3,0(a5)		# _22, *_21
# eval/problem35//code.c:22:             if (out[i] > out[j]) {
	lw	a5,-32(s0)		# _23, j
	slli	a5,a5,2	#, _24, _23
	ld	a4,-24(s0)		# tmp150, out
	add	a5,a4,a5	# _24, _25, tmp150
	lw	a5,0(a5)		# _26, *_25
# eval/problem35//code.c:22:             if (out[i] > out[j]) {
	mv	a4,a3	# tmp151, _22
	ble	a4,a5,.L11	#, tmp151, tmp152,
# eval/problem35//code.c:23:                 int temp = out[i];
	lw	a5,-36(s0)		# _27, i
	slli	a5,a5,2	#, _28, _27
	ld	a4,-24(s0)		# tmp153, out
	add	a5,a4,a5	# _28, _29, tmp153
# eval/problem35//code.c:23:                 int temp = out[i];
	lw	a5,0(a5)		# tmp154, *_29
	sw	a5,-28(s0)	# tmp154, temp
# eval/problem35//code.c:24:                 out[i] = out[j];
	lw	a5,-32(s0)		# _30, j
	slli	a5,a5,2	#, _31, _30
	ld	a4,-24(s0)		# tmp155, out
	add	a4,a4,a5	# _31, _32, tmp155
# eval/problem35//code.c:24:                 out[i] = out[j];
	lw	a5,-36(s0)		# _33, i
	slli	a5,a5,2	#, _34, _33
	ld	a3,-24(s0)		# tmp156, out
	add	a5,a3,a5	# _34, _35, tmp156
# eval/problem35//code.c:24:                 out[i] = out[j];
	lw	a4,0(a4)		# _36, *_32
# eval/problem35//code.c:24:                 out[i] = out[j];
	sw	a4,0(a5)	# _36, *_35
# eval/problem35//code.c:25:                 out[j] = temp;
	lw	a5,-32(s0)		# _37, j
	slli	a5,a5,2	#, _38, _37
	ld	a4,-24(s0)		# tmp157, out
	add	a5,a4,a5	# _38, _39, tmp157
# eval/problem35//code.c:25:                 out[j] = temp;
	lw	a4,-28(s0)		# tmp158, temp
	sw	a4,0(a5)	# tmp158, *_39
.L11:
# eval/problem35//code.c:21:         for (j = i + 1; j < out_count; j++) {
	lw	a5,-32(s0)		# tmp161, j
	addiw	a5,a5,1	#, tmp159, tmp160
	sw	a5,-32(s0)	# tmp159, j
.L10:
# eval/problem35//code.c:21:         for (j = i + 1; j < out_count; j++) {
	lw	a5,-32(s0)		# tmp163, j
	mv	a4,a5	# tmp162, tmp163
	lw	a5,-40(s0)		# tmp165, out_count
	sext.w	a4,a4	# tmp166, tmp162
	sext.w	a5,a5	# tmp167, tmp164
	blt	a4,a5,.L12	#, tmp166, tmp167,
# eval/problem35//code.c:20:     for (i = 0; i < out_count - 1; i++) {
	lw	a5,-36(s0)		# tmp170, i
	addiw	a5,a5,1	#, tmp168, tmp169
	sw	a5,-36(s0)	# tmp168, i
.L9:
# eval/problem35//code.c:20:     for (i = 0; i < out_count - 1; i++) {
	lw	a5,-40(s0)		# tmp173, out_count
	addiw	a5,a5,-1	#, tmp171, tmp172
	sext.w	a4,a5	# _40, tmp171
# eval/problem35//code.c:20:     for (i = 0; i < out_count - 1; i++) {
	lw	a5,-36(s0)		# tmp175, i
	sext.w	a5,a5	# tmp176, tmp174
	blt	a5,a4,.L13	#, tmp176, tmp177,
# eval/problem35//code.c:30:     *out_size = out_count;
	ld	a5,-72(s0)		# tmp178, out_size
	lw	a4,-40(s0)		# tmp179, out_count
	sw	a4,0(a5)	# tmp179, *out_size_60(D)
# eval/problem35//code.c:31:     return out;
	ld	a5,-24(s0)		# _62, out
# eval/problem35//code.c:32: }
	mv	a0,a5	#, <retval>
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
