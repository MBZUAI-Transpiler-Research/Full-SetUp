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
	mv	a5,a1	# tmp128, size
	sd	a2,-72(s0)	# out, out
	sw	a5,-60(s0)	# tmp129, size
# eval/problem38//code.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	lw	a5,-60(s0)		# tmp132, size
	srliw	a4,a5,31	#, tmp133, tmp131
	addw	a5,a4,a5	# tmp131, tmp134, tmp133
	sraiw	a5,a5,1	#, tmp135, tmp134
	sext.w	a5,a5	# _1, tmp135
# eval/problem38//code.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	addiw	a5,a5,1	#, tmp136, _1
	sext.w	a5,a5	# _2, tmp136
# eval/problem38//code.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	slli	a5,a5,2	#, _4, _3
	mv	a0,a5	#, _4
	call	malloc@plt	#
	mv	a5,a0	# tmp137,
	sd	a5,-24(s0)	# tmp137, even
# eval/problem38//code.c:7:     int i, j, even_count = 0;
	sw	zero,-32(s0)	#, even_count
# eval/problem38//code.c:9:     for (i = 0; i < size; i += 2) {
	sw	zero,-40(s0)	#, i
# eval/problem38//code.c:9:     for (i = 0; i < size; i += 2) {
	j	.L2		#
.L3:
# eval/problem38//code.c:10:         even[even_count++] = l[i];
	lw	a5,-40(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp138, l
	add	a4,a4,a5	# _6, _7, tmp138
# eval/problem38//code.c:10:         even[even_count++] = l[i];
	lw	a5,-32(s0)		# even_count.0_8, even_count
	addiw	a3,a5,1	#, tmp139, even_count.0_8
	sw	a3,-32(s0)	# tmp139, even_count
# eval/problem38//code.c:10:         even[even_count++] = l[i];
	slli	a5,a5,2	#, _10, _9
	ld	a3,-24(s0)		# tmp140, even
	add	a5,a3,a5	# _10, _11, tmp140
# eval/problem38//code.c:10:         even[even_count++] = l[i];
	flw	fa5,0(a4)	# _12, *_7
# eval/problem38//code.c:10:         even[even_count++] = l[i];
	fsw	fa5,0(a5)	# _12, *_11
# eval/problem38//code.c:9:     for (i = 0; i < size; i += 2) {
	lw	a5,-40(s0)		# tmp143, i
	addiw	a5,a5,2	#, tmp141, tmp142
	sw	a5,-40(s0)	# tmp141, i
.L2:
# eval/problem38//code.c:9:     for (i = 0; i < size; i += 2) {
	lw	a5,-40(s0)		# tmp145, i
	mv	a4,a5	# tmp144, tmp145
	lw	a5,-60(s0)		# tmp147, size
	sext.w	a4,a4	# tmp148, tmp144
	sext.w	a5,a5	# tmp149, tmp146
	blt	a4,a5,.L3	#, tmp148, tmp149,
# eval/problem38//code.c:13:     for (i = 0; i < even_count - 1; i++) {
	sw	zero,-40(s0)	#, i
# eval/problem38//code.c:13:     for (i = 0; i < even_count - 1; i++) {
	j	.L4		#
.L9:
# eval/problem38//code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	sw	zero,-36(s0)	#, j
# eval/problem38//code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	j	.L5		#
.L8:
# eval/problem38//code.c:15:             if (even[j] > even[j + 1]) {
	lw	a5,-36(s0)		# _13, j
	slli	a5,a5,2	#, _14, _13
	ld	a4,-24(s0)		# tmp150, even
	add	a5,a4,a5	# _14, _15, tmp150
	flw	fa4,0(a5)	# _16, *_15
# eval/problem38//code.c:15:             if (even[j] > even[j + 1]) {
	lw	a5,-36(s0)		# _17, j
	addi	a5,a5,1	#, _18, _17
	slli	a5,a5,2	#, _19, _18
	ld	a4,-24(s0)		# tmp151, even
	add	a5,a4,a5	# _19, _20, tmp151
	flw	fa5,0(a5)	# _21, *_20
# eval/problem38//code.c:15:             if (even[j] > even[j + 1]) {
	fgt.s	a5,fa4,fa5	#, tmp152, _16, _21
	beq	a5,zero,.L6	#, tmp152,,
# eval/problem38//code.c:16:                 float temp = even[j];
	lw	a5,-36(s0)		# _22, j
	slli	a5,a5,2	#, _23, _22
	ld	a4,-24(s0)		# tmp153, even
	add	a5,a4,a5	# _23, _24, tmp153
# eval/problem38//code.c:16:                 float temp = even[j];
	flw	fa5,0(a5)	# tmp154, *_24
	fsw	fa5,-28(s0)	# tmp154, temp
# eval/problem38//code.c:17:                 even[j] = even[j + 1];
	lw	a5,-36(s0)		# _25, j
	addi	a5,a5,1	#, _26, _25
	slli	a5,a5,2	#, _27, _26
	ld	a4,-24(s0)		# tmp155, even
	add	a4,a4,a5	# _27, _28, tmp155
# eval/problem38//code.c:17:                 even[j] = even[j + 1];
	lw	a5,-36(s0)		# _29, j
	slli	a5,a5,2	#, _30, _29
	ld	a3,-24(s0)		# tmp156, even
	add	a5,a3,a5	# _30, _31, tmp156
# eval/problem38//code.c:17:                 even[j] = even[j + 1];
	flw	fa5,0(a4)	# _32, *_28
# eval/problem38//code.c:17:                 even[j] = even[j + 1];
	fsw	fa5,0(a5)	# _32, *_31
# eval/problem38//code.c:18:                 even[j + 1] = temp;
	lw	a5,-36(s0)		# _33, j
	addi	a5,a5,1	#, _34, _33
	slli	a5,a5,2	#, _35, _34
	ld	a4,-24(s0)		# tmp157, even
	add	a5,a4,a5	# _35, _36, tmp157
# eval/problem38//code.c:18:                 even[j + 1] = temp;
	flw	fa5,-28(s0)	# tmp158, temp
	fsw	fa5,0(a5)	# tmp158, *_36
.L6:
# eval/problem38//code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	lw	a5,-36(s0)		# tmp161, j
	addiw	a5,a5,1	#, tmp159, tmp160
	sw	a5,-36(s0)	# tmp159, j
.L5:
# eval/problem38//code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	lw	a5,-32(s0)		# tmp164, even_count
	mv	a4,a5	# tmp163, tmp164
	lw	a5,-40(s0)		# tmp166, i
	subw	a5,a4,a5	# tmp162, tmp163, tmp165
	sext.w	a5,a5	# _37, tmp162
# eval/problem38//code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	addiw	a5,a5,-1	#, tmp167, _37
	sext.w	a4,a5	# _38, tmp167
# eval/problem38//code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	lw	a5,-36(s0)		# tmp169, j
	sext.w	a5,a5	# tmp170, tmp168
	blt	a5,a4,.L8	#, tmp170, tmp171,
# eval/problem38//code.c:13:     for (i = 0; i < even_count - 1; i++) {
	lw	a5,-40(s0)		# tmp174, i
	addiw	a5,a5,1	#, tmp172, tmp173
	sw	a5,-40(s0)	# tmp172, i
.L4:
# eval/problem38//code.c:13:     for (i = 0; i < even_count - 1; i++) {
	lw	a5,-32(s0)		# tmp177, even_count
	addiw	a5,a5,-1	#, tmp175, tmp176
	sext.w	a4,a5	# _39, tmp175
# eval/problem38//code.c:13:     for (i = 0; i < even_count - 1; i++) {
	lw	a5,-40(s0)		# tmp179, i
	sext.w	a5,a5	# tmp180, tmp178
	blt	a5,a4,.L9	#, tmp180, tmp181,
# eval/problem38//code.c:24:     for (i = 0; i < size; i++) {
	sw	zero,-40(s0)	#, i
# eval/problem38//code.c:24:     for (i = 0; i < size; i++) {
	j	.L10		#
.L13:
# eval/problem38//code.c:25:         if (i % 2 == 0) {
	lw	a5,-40(s0)		# i.1_40, i
	andi	a5,a5,1	#, tmp183, tmp182
	sext.w	a5,a5	# _41, tmp183
# eval/problem38//code.c:25:         if (i % 2 == 0) {
	bne	a5,zero,.L11	#, _41,,
# eval/problem38//code.c:26:             out[i] = even[i / 2];
	lw	a5,-40(s0)		# tmp186, i
	srliw	a4,a5,31	#, tmp187, tmp185
	addw	a5,a4,a5	# tmp185, tmp188, tmp187
	sraiw	a5,a5,1	#, tmp189, tmp188
	sext.w	a5,a5	# _42, tmp189
# eval/problem38//code.c:26:             out[i] = even[i / 2];
	slli	a5,a5,2	#, _44, _43
	ld	a4,-24(s0)		# tmp190, even
	add	a4,a4,a5	# _44, _45, tmp190
# eval/problem38//code.c:26:             out[i] = even[i / 2];
	lw	a5,-40(s0)		# _46, i
	slli	a5,a5,2	#, _47, _46
	ld	a3,-72(s0)		# tmp191, out
	add	a5,a3,a5	# _47, _48, tmp191
# eval/problem38//code.c:26:             out[i] = even[i / 2];
	flw	fa5,0(a4)	# _49, *_45
# eval/problem38//code.c:26:             out[i] = even[i / 2];
	fsw	fa5,0(a5)	# _49, *_48
	j	.L12		#
.L11:
# eval/problem38//code.c:28:             out[i] = l[i];
	lw	a5,-40(s0)		# _50, i
	slli	a5,a5,2	#, _51, _50
	ld	a4,-56(s0)		# tmp192, l
	add	a4,a4,a5	# _51, _52, tmp192
# eval/problem38//code.c:28:             out[i] = l[i];
	lw	a5,-40(s0)		# _53, i
	slli	a5,a5,2	#, _54, _53
	ld	a3,-72(s0)		# tmp193, out
	add	a5,a3,a5	# _54, _55, tmp193
# eval/problem38//code.c:28:             out[i] = l[i];
	flw	fa5,0(a4)	# _56, *_52
# eval/problem38//code.c:28:             out[i] = l[i];
	fsw	fa5,0(a5)	# _56, *_55
.L12:
# eval/problem38//code.c:24:     for (i = 0; i < size; i++) {
	lw	a5,-40(s0)		# tmp196, i
	addiw	a5,a5,1	#, tmp194, tmp195
	sw	a5,-40(s0)	# tmp194, i
.L10:
# eval/problem38//code.c:24:     for (i = 0; i < size; i++) {
	lw	a5,-40(s0)		# tmp198, i
	mv	a4,a5	# tmp197, tmp198
	lw	a5,-60(s0)		# tmp200, size
	sext.w	a4,a4	# tmp201, tmp197
	sext.w	a5,a5	# tmp202, tmp199
	blt	a4,a5,.L13	#, tmp201, tmp202,
# eval/problem38//code.c:32:     free(even);
	ld	a0,-24(s0)		#, even
	call	free@plt	#
# eval/problem38//code.c:33: }
	nop	
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
