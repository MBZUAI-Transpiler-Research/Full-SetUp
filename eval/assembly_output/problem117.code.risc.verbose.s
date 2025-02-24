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
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# arr, arr
	mv	a5,a1	# tmp163, size
	sw	a5,-60(s0)	# tmp164, size
# code.c:6:     for (int i = 0; i < size; i++) {
	sw	zero,-28(s0)	#, i
# code.c:6:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L11:
# code.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-28(s0)		# tmp167, i
	addiw	a5,a5,1	#, tmp165, tmp166
	sw	a5,-24(s0)	# tmp165, j
# code.c:7:         for (int j = i + 1; j < size; j++) {
	j	.L3		#
.L10:
# code.c:8:             count_ones = 0;
	sw	zero,-40(s0)	#, count_ones
# code.c:9:             x = arr[i];
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-56(s0)		# tmp168, arr
	add	a5,a4,a5	# _2, _3, tmp168
# code.c:9:             x = arr[i];
	lw	a5,0(a5)		# tmp169, *_3
	sw	a5,-36(s0)	# tmp169, x
# code.c:10:             y = arr[j];
	lw	a5,-24(s0)		# _4, j
	slli	a5,a5,2	#, _5, _4
	ld	a4,-56(s0)		# tmp170, arr
	add	a5,a4,a5	# _5, _6, tmp170
# code.c:10:             y = arr[j];
	lw	a5,0(a5)		# tmp171, *_6
	sw	a5,-32(s0)	# tmp171, y
# code.c:11:             while (x > 0) {
	j	.L4		#
.L5:
# code.c:12:                 count_ones += x & 1;
	lw	a5,-36(s0)		# tmp173, x
	andi	a5,a5,1	#, tmp174, tmp172
	sext.w	a5,a5	# _7, tmp174
# code.c:12:                 count_ones += x & 1;
	lw	a4,-40(s0)		# tmp177, count_ones
	addw	a5,a4,a5	# _7, tmp175, tmp176
	sw	a5,-40(s0)	# tmp175, count_ones
# code.c:13:                 x >>= 1;
	lw	a5,-36(s0)		# tmp180, x
	sraiw	a5,a5,1	#, tmp178, tmp179
	sw	a5,-36(s0)	# tmp178, x
.L4:
# code.c:11:             while (x > 0) {
	lw	a5,-36(s0)		# tmp182, x
	sext.w	a5,a5	# tmp183, tmp181
	bgt	a5,zero,.L5	#, tmp183,,
# code.c:15:             x = count_ones;
	lw	a5,-40(s0)		# tmp184, count_ones
	sw	a5,-36(s0)	# tmp184, x
# code.c:16:             count_ones = 0;
	sw	zero,-40(s0)	#, count_ones
# code.c:17:             while (y > 0) {
	j	.L6		#
.L7:
# code.c:18:                 count_ones += y & 1;
	lw	a5,-32(s0)		# tmp186, y
	andi	a5,a5,1	#, tmp187, tmp185
	sext.w	a5,a5	# _8, tmp187
# code.c:18:                 count_ones += y & 1;
	lw	a4,-40(s0)		# tmp190, count_ones
	addw	a5,a4,a5	# _8, tmp188, tmp189
	sw	a5,-40(s0)	# tmp188, count_ones
# code.c:19:                 y >>= 1;
	lw	a5,-32(s0)		# tmp193, y
	sraiw	a5,a5,1	#, tmp191, tmp192
	sw	a5,-32(s0)	# tmp191, y
.L6:
# code.c:17:             while (y > 0) {
	lw	a5,-32(s0)		# tmp195, y
	sext.w	a5,a5	# tmp196, tmp194
	bgt	a5,zero,.L7	#, tmp196,,
# code.c:21:             y = count_ones;
	lw	a5,-40(s0)		# tmp197, count_ones
	sw	a5,-32(s0)	# tmp197, y
# code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	lw	a5,-32(s0)		# tmp199, y
	mv	a4,a5	# tmp198, tmp199
	lw	a5,-36(s0)		# tmp201, x
	sext.w	a4,a4	# tmp202, tmp198
	sext.w	a5,a5	# tmp203, tmp200
	blt	a4,a5,.L8	#, tmp202, tmp203,
# code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	lw	a5,-32(s0)		# tmp205, y
	mv	a4,a5	# tmp204, tmp205
	lw	a5,-36(s0)		# tmp207, x
	sext.w	a4,a4	# tmp208, tmp204
	sext.w	a5,a5	# tmp209, tmp206
	bne	a4,a5,.L9	#, tmp208, tmp209,
# code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	lw	a5,-24(s0)		# _9, j
	slli	a5,a5,2	#, _10, _9
	ld	a4,-56(s0)		# tmp210, arr
	add	a5,a4,a5	# _10, _11, tmp210
	lw	a3,0(a5)		# _12, *_11
# code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	lw	a5,-28(s0)		# _13, i
	slli	a5,a5,2	#, _14, _13
	ld	a4,-56(s0)		# tmp211, arr
	add	a5,a4,a5	# _14, _15, tmp211
	lw	a5,0(a5)		# _16, *_15
# code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	mv	a4,a3	# tmp212, _12
	bge	a4,a5,.L9	#, tmp212, tmp213,
.L8:
# code.c:23:                 temp = arr[i];
	lw	a5,-28(s0)		# _17, i
	slli	a5,a5,2	#, _18, _17
	ld	a4,-56(s0)		# tmp214, arr
	add	a5,a4,a5	# _18, _19, tmp214
# code.c:23:                 temp = arr[i];
	lw	a5,0(a5)		# tmp215, *_19
	sw	a5,-20(s0)	# tmp215, temp
# code.c:24:                 arr[i] = arr[j];
	lw	a5,-24(s0)		# _20, j
	slli	a5,a5,2	#, _21, _20
	ld	a4,-56(s0)		# tmp216, arr
	add	a4,a4,a5	# _21, _22, tmp216
# code.c:24:                 arr[i] = arr[j];
	lw	a5,-28(s0)		# _23, i
	slli	a5,a5,2	#, _24, _23
	ld	a3,-56(s0)		# tmp217, arr
	add	a5,a3,a5	# _24, _25, tmp217
# code.c:24:                 arr[i] = arr[j];
	lw	a4,0(a4)		# _26, *_22
# code.c:24:                 arr[i] = arr[j];
	sw	a4,0(a5)	# _26, *_25
# code.c:25:                 arr[j] = temp;
	lw	a5,-24(s0)		# _27, j
	slli	a5,a5,2	#, _28, _27
	ld	a4,-56(s0)		# tmp218, arr
	add	a5,a4,a5	# _28, _29, tmp218
# code.c:25:                 arr[j] = temp;
	lw	a4,-20(s0)		# tmp219, temp
	sw	a4,0(a5)	# tmp219, *_29
.L9:
# code.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-24(s0)		# tmp222, j
	addiw	a5,a5,1	#, tmp220, tmp221
	sw	a5,-24(s0)	# tmp220, j
.L3:
# code.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-24(s0)		# tmp224, j
	mv	a4,a5	# tmp223, tmp224
	lw	a5,-60(s0)		# tmp226, size
	sext.w	a4,a4	# tmp227, tmp223
	sext.w	a5,a5	# tmp228, tmp225
	blt	a4,a5,.L10	#, tmp227, tmp228,
# code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp231, i
	addiw	a5,a5,1	#, tmp229, tmp230
	sw	a5,-28(s0)	# tmp229, i
.L2:
# code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp233, i
	mv	a4,a5	# tmp232, tmp233
	lw	a5,-60(s0)		# tmp235, size
	sext.w	a4,a4	# tmp236, tmp232
	sext.w	a5,a5	# tmp237, tmp234
	blt	a4,a5,.L11	#, tmp236, tmp237,
# code.c:29: }
	nop	
	nop	
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
