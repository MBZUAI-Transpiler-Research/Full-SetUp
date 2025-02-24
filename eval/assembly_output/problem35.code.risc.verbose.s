	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -O0 -fstack-protector-strong
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
	sd	a0,-56(s0)	# l, l
	mv	a5,a1	# tmp176, size
	sd	a2,-72(s0)	# out_size, out_size
	sw	a5,-60(s0)	# tmp177, size
# code.c:5:     int *out = malloc(size * sizeof(int));
	lw	a5,-60(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp178,
	sd	a5,-24(s0)	# tmp178, out
# code.c:6:     int found, out_count = 0, i, j;
	sw	zero,-40(s0)	#, out_count
# code.c:7:     for (i = 0; i < size; i++) {
	sw	zero,-36(s0)	#, i
# code.c:7:     for (i = 0; i < size; i++) {
	j	.L2		#
.L8:
# code.c:8:         found = 0;
	sw	zero,-44(s0)	#, found
# code.c:9:         for (j = 0; j < out_count; j++) {
	sw	zero,-32(s0)	#, j
# code.c:9:         for (j = 0; j < out_count; j++) {
	j	.L3		#
.L6:
# code.c:10:             if (l[i] == out[j]) {
	lw	a5,-36(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
	ld	a4,-56(s0)		# tmp179, l
	add	a5,a4,a5	# _4, _5, tmp179
	lw	a3,0(a5)		# _6, *_5
# code.c:10:             if (l[i] == out[j]) {
	lw	a5,-32(s0)		# _7, j
	slli	a5,a5,2	#, _8, _7
	ld	a4,-24(s0)		# tmp180, out
	add	a5,a4,a5	# _8, _9, tmp180
	lw	a5,0(a5)		# _10, *_9
# code.c:10:             if (l[i] == out[j]) {
	mv	a4,a3	# tmp181, _6
	bne	a4,a5,.L4	#, tmp181, tmp182,
# code.c:11:                 found = 1;
	li	a5,1		# tmp183,
	sw	a5,-44(s0)	# tmp183, found
# code.c:12:                 break;
	j	.L5		#
.L4:
# code.c:9:         for (j = 0; j < out_count; j++) {
	lw	a5,-32(s0)		# tmp186, j
	addiw	a5,a5,1	#, tmp184, tmp185
	sw	a5,-32(s0)	# tmp184, j
.L3:
# code.c:9:         for (j = 0; j < out_count; j++) {
	lw	a5,-32(s0)		# tmp188, j
	mv	a4,a5	# tmp187, tmp188
	lw	a5,-40(s0)		# tmp190, out_count
	sext.w	a4,a4	# tmp191, tmp187
	sext.w	a5,a5	# tmp192, tmp189
	blt	a4,a5,.L6	#, tmp191, tmp192,
.L5:
# code.c:15:         if (!found) {
	lw	a5,-44(s0)		# tmp194, found
	sext.w	a5,a5	# tmp195, tmp193
	bne	a5,zero,.L7	#, tmp195,,
# code.c:16:             out[out_count++] = l[i];
	lw	a5,-36(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-56(s0)		# tmp196, l
	add	a4,a4,a5	# _12, _13, tmp196
# code.c:16:             out[out_count++] = l[i];
	lw	a5,-40(s0)		# out_count.0_14, out_count
	addiw	a3,a5,1	#, tmp197, out_count.0_14
	sw	a3,-40(s0)	# tmp197, out_count
# code.c:16:             out[out_count++] = l[i];
	slli	a5,a5,2	#, _16, _15
	ld	a3,-24(s0)		# tmp198, out
	add	a5,a3,a5	# _16, _17, tmp198
# code.c:16:             out[out_count++] = l[i];
	lw	a4,0(a4)		# _18, *_13
# code.c:16:             out[out_count++] = l[i];
	sw	a4,0(a5)	# _18, *_17
.L7:
# code.c:7:     for (i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp201, i
	addiw	a5,a5,1	#, tmp199, tmp200
	sw	a5,-36(s0)	# tmp199, i
.L2:
# code.c:7:     for (i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp203, i
	mv	a4,a5	# tmp202, tmp203
	lw	a5,-60(s0)		# tmp205, size
	sext.w	a4,a4	# tmp206, tmp202
	sext.w	a5,a5	# tmp207, tmp204
	blt	a4,a5,.L8	#, tmp206, tmp207,
# code.c:20:     for (i = 0; i < out_count - 1; i++) {
	sw	zero,-36(s0)	#, i
# code.c:20:     for (i = 0; i < out_count - 1; i++) {
	j	.L9		#
.L13:
# code.c:21:         for (j = i + 1; j < out_count; j++) {
	lw	a5,-36(s0)		# tmp210, i
	addiw	a5,a5,1	#, tmp208, tmp209
	sw	a5,-32(s0)	# tmp208, j
# code.c:21:         for (j = i + 1; j < out_count; j++) {
	j	.L10		#
.L12:
# code.c:22:             if (out[i] > out[j]) {
	lw	a5,-36(s0)		# _19, i
	slli	a5,a5,2	#, _20, _19
	ld	a4,-24(s0)		# tmp211, out
	add	a5,a4,a5	# _20, _21, tmp211
	lw	a3,0(a5)		# _22, *_21
# code.c:22:             if (out[i] > out[j]) {
	lw	a5,-32(s0)		# _23, j
	slli	a5,a5,2	#, _24, _23
	ld	a4,-24(s0)		# tmp212, out
	add	a5,a4,a5	# _24, _25, tmp212
	lw	a5,0(a5)		# _26, *_25
# code.c:22:             if (out[i] > out[j]) {
	mv	a4,a3	# tmp213, _22
	ble	a4,a5,.L11	#, tmp213, tmp214,
# code.c:23:                 int temp = out[i];
	lw	a5,-36(s0)		# _27, i
	slli	a5,a5,2	#, _28, _27
	ld	a4,-24(s0)		# tmp215, out
	add	a5,a4,a5	# _28, _29, tmp215
# code.c:23:                 int temp = out[i];
	lw	a5,0(a5)		# tmp216, *_29
	sw	a5,-28(s0)	# tmp216, temp
# code.c:24:                 out[i] = out[j];
	lw	a5,-32(s0)		# _30, j
	slli	a5,a5,2	#, _31, _30
	ld	a4,-24(s0)		# tmp217, out
	add	a4,a4,a5	# _31, _32, tmp217
# code.c:24:                 out[i] = out[j];
	lw	a5,-36(s0)		# _33, i
	slli	a5,a5,2	#, _34, _33
	ld	a3,-24(s0)		# tmp218, out
	add	a5,a3,a5	# _34, _35, tmp218
# code.c:24:                 out[i] = out[j];
	lw	a4,0(a4)		# _36, *_32
# code.c:24:                 out[i] = out[j];
	sw	a4,0(a5)	# _36, *_35
# code.c:25:                 out[j] = temp;
	lw	a5,-32(s0)		# _37, j
	slli	a5,a5,2	#, _38, _37
	ld	a4,-24(s0)		# tmp219, out
	add	a5,a4,a5	# _38, _39, tmp219
# code.c:25:                 out[j] = temp;
	lw	a4,-28(s0)		# tmp220, temp
	sw	a4,0(a5)	# tmp220, *_39
.L11:
# code.c:21:         for (j = i + 1; j < out_count; j++) {
	lw	a5,-32(s0)		# tmp223, j
	addiw	a5,a5,1	#, tmp221, tmp222
	sw	a5,-32(s0)	# tmp221, j
.L10:
# code.c:21:         for (j = i + 1; j < out_count; j++) {
	lw	a5,-32(s0)		# tmp225, j
	mv	a4,a5	# tmp224, tmp225
	lw	a5,-40(s0)		# tmp227, out_count
	sext.w	a4,a4	# tmp228, tmp224
	sext.w	a5,a5	# tmp229, tmp226
	blt	a4,a5,.L12	#, tmp228, tmp229,
# code.c:20:     for (i = 0; i < out_count - 1; i++) {
	lw	a5,-36(s0)		# tmp232, i
	addiw	a5,a5,1	#, tmp230, tmp231
	sw	a5,-36(s0)	# tmp230, i
.L9:
# code.c:20:     for (i = 0; i < out_count - 1; i++) {
	lw	a5,-40(s0)		# tmp235, out_count
	addiw	a5,a5,-1	#, tmp233, tmp234
	sext.w	a4,a5	# _40, tmp233
# code.c:20:     for (i = 0; i < out_count - 1; i++) {
	lw	a5,-36(s0)		# tmp237, i
	sext.w	a5,a5	# tmp238, tmp236
	blt	a5,a4,.L13	#, tmp238, tmp239,
# code.c:30:     *out_size = out_count;
	ld	a5,-72(s0)		# tmp240, out_size
	lw	a4,-40(s0)		# tmp241, out_count
	sw	a4,0(a5)	# tmp241, *out_size_60(D)
# code.c:31:     return out;
	ld	a5,-24(s0)		# _62, out
# code.c:32: }
	mv	a0,a5	#, <retval>
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
