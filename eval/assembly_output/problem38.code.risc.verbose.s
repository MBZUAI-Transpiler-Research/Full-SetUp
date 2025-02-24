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
	mv	a5,a1	# tmp190, size
	sd	a2,-72(s0)	# out, out
	sw	a5,-60(s0)	# tmp191, size
# code.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	lw	a5,-60(s0)		# tmp194, size
	srliw	a4,a5,31	#, tmp195, tmp193
	addw	a5,a4,a5	# tmp193, tmp196, tmp195
	sraiw	a5,a5,1	#, tmp197, tmp196
	sext.w	a5,a5	# _1, tmp197
# code.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	addiw	a5,a5,1	#, tmp198, _1
	sext.w	a5,a5	# _2, tmp198
# code.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	slli	a5,a5,2	#, _4, _3
	mv	a0,a5	#, _4
	call	malloc@plt	#
	mv	a5,a0	# tmp199,
	sd	a5,-24(s0)	# tmp199, even
# code.c:7:     int i, j, even_count = 0;
	sw	zero,-32(s0)	#, even_count
# code.c:9:     for (i = 0; i < size; i += 2) {
	sw	zero,-40(s0)	#, i
# code.c:9:     for (i = 0; i < size; i += 2) {
	j	.L2		#
.L3:
# code.c:10:         even[even_count++] = l[i];
	lw	a5,-40(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp200, l
	add	a4,a4,a5	# _6, _7, tmp200
# code.c:10:         even[even_count++] = l[i];
	lw	a5,-32(s0)		# even_count.0_8, even_count
	addiw	a3,a5,1	#, tmp201, even_count.0_8
	sw	a3,-32(s0)	# tmp201, even_count
# code.c:10:         even[even_count++] = l[i];
	slli	a5,a5,2	#, _10, _9
	ld	a3,-24(s0)		# tmp202, even
	add	a5,a3,a5	# _10, _11, tmp202
# code.c:10:         even[even_count++] = l[i];
	flw	fa5,0(a4)	# _12, *_7
# code.c:10:         even[even_count++] = l[i];
	fsw	fa5,0(a5)	# _12, *_11
# code.c:9:     for (i = 0; i < size; i += 2) {
	lw	a5,-40(s0)		# tmp205, i
	addiw	a5,a5,2	#, tmp203, tmp204
	sw	a5,-40(s0)	# tmp203, i
.L2:
# code.c:9:     for (i = 0; i < size; i += 2) {
	lw	a5,-40(s0)		# tmp207, i
	mv	a4,a5	# tmp206, tmp207
	lw	a5,-60(s0)		# tmp209, size
	sext.w	a4,a4	# tmp210, tmp206
	sext.w	a5,a5	# tmp211, tmp208
	blt	a4,a5,.L3	#, tmp210, tmp211,
# code.c:13:     for (i = 0; i < even_count - 1; i++) {
	sw	zero,-40(s0)	#, i
# code.c:13:     for (i = 0; i < even_count - 1; i++) {
	j	.L4		#
.L9:
# code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	sw	zero,-36(s0)	#, j
# code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	j	.L5		#
.L8:
# code.c:15:             if (even[j] > even[j + 1]) {
	lw	a5,-36(s0)		# _13, j
	slli	a5,a5,2	#, _14, _13
	ld	a4,-24(s0)		# tmp212, even
	add	a5,a4,a5	# _14, _15, tmp212
	flw	fa4,0(a5)	# _16, *_15
# code.c:15:             if (even[j] > even[j + 1]) {
	lw	a5,-36(s0)		# _17, j
	addi	a5,a5,1	#, _18, _17
	slli	a5,a5,2	#, _19, _18
	ld	a4,-24(s0)		# tmp213, even
	add	a5,a4,a5	# _19, _20, tmp213
	flw	fa5,0(a5)	# _21, *_20
# code.c:15:             if (even[j] > even[j + 1]) {
	fgt.s	a5,fa4,fa5	#, tmp214, _16, _21
	beq	a5,zero,.L6	#, tmp214,,
# code.c:16:                 float temp = even[j];
	lw	a5,-36(s0)		# _22, j
	slli	a5,a5,2	#, _23, _22
	ld	a4,-24(s0)		# tmp215, even
	add	a5,a4,a5	# _23, _24, tmp215
# code.c:16:                 float temp = even[j];
	flw	fa5,0(a5)	# tmp216, *_24
	fsw	fa5,-28(s0)	# tmp216, temp
# code.c:17:                 even[j] = even[j + 1];
	lw	a5,-36(s0)		# _25, j
	addi	a5,a5,1	#, _26, _25
	slli	a5,a5,2	#, _27, _26
	ld	a4,-24(s0)		# tmp217, even
	add	a4,a4,a5	# _27, _28, tmp217
# code.c:17:                 even[j] = even[j + 1];
	lw	a5,-36(s0)		# _29, j
	slli	a5,a5,2	#, _30, _29
	ld	a3,-24(s0)		# tmp218, even
	add	a5,a3,a5	# _30, _31, tmp218
# code.c:17:                 even[j] = even[j + 1];
	flw	fa5,0(a4)	# _32, *_28
# code.c:17:                 even[j] = even[j + 1];
	fsw	fa5,0(a5)	# _32, *_31
# code.c:18:                 even[j + 1] = temp;
	lw	a5,-36(s0)		# _33, j
	addi	a5,a5,1	#, _34, _33
	slli	a5,a5,2	#, _35, _34
	ld	a4,-24(s0)		# tmp219, even
	add	a5,a4,a5	# _35, _36, tmp219
# code.c:18:                 even[j + 1] = temp;
	flw	fa5,-28(s0)	# tmp220, temp
	fsw	fa5,0(a5)	# tmp220, *_36
.L6:
# code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	lw	a5,-36(s0)		# tmp223, j
	addiw	a5,a5,1	#, tmp221, tmp222
	sw	a5,-36(s0)	# tmp221, j
.L5:
# code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	lw	a5,-32(s0)		# tmp226, even_count
	mv	a4,a5	# tmp225, tmp226
	lw	a5,-40(s0)		# tmp228, i
	subw	a5,a4,a5	# tmp224, tmp225, tmp227
	sext.w	a5,a5	# _37, tmp224
# code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	addiw	a5,a5,-1	#, tmp229, _37
	sext.w	a4,a5	# _38, tmp229
# code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	lw	a5,-36(s0)		# tmp231, j
	sext.w	a5,a5	# tmp232, tmp230
	blt	a5,a4,.L8	#, tmp232, tmp233,
# code.c:13:     for (i = 0; i < even_count - 1; i++) {
	lw	a5,-40(s0)		# tmp236, i
	addiw	a5,a5,1	#, tmp234, tmp235
	sw	a5,-40(s0)	# tmp234, i
.L4:
# code.c:13:     for (i = 0; i < even_count - 1; i++) {
	lw	a5,-32(s0)		# tmp239, even_count
	addiw	a5,a5,-1	#, tmp237, tmp238
	sext.w	a4,a5	# _39, tmp237
# code.c:13:     for (i = 0; i < even_count - 1; i++) {
	lw	a5,-40(s0)		# tmp241, i
	sext.w	a5,a5	# tmp242, tmp240
	blt	a5,a4,.L9	#, tmp242, tmp243,
# code.c:24:     for (i = 0; i < size; i++) {
	sw	zero,-40(s0)	#, i
# code.c:24:     for (i = 0; i < size; i++) {
	j	.L10		#
.L13:
# code.c:25:         if (i % 2 == 0) {
	lw	a5,-40(s0)		# i.1_40, i
	andi	a5,a5,1	#, tmp245, tmp244
	sext.w	a5,a5	# _41, tmp245
# code.c:25:         if (i % 2 == 0) {
	bne	a5,zero,.L11	#, _41,,
# code.c:26:             out[i] = even[i / 2];
	lw	a5,-40(s0)		# tmp248, i
	srliw	a4,a5,31	#, tmp249, tmp247
	addw	a5,a4,a5	# tmp247, tmp250, tmp249
	sraiw	a5,a5,1	#, tmp251, tmp250
	sext.w	a5,a5	# _42, tmp251
# code.c:26:             out[i] = even[i / 2];
	slli	a5,a5,2	#, _44, _43
	ld	a4,-24(s0)		# tmp252, even
	add	a4,a4,a5	# _44, _45, tmp252
# code.c:26:             out[i] = even[i / 2];
	lw	a5,-40(s0)		# _46, i
	slli	a5,a5,2	#, _47, _46
	ld	a3,-72(s0)		# tmp253, out
	add	a5,a3,a5	# _47, _48, tmp253
# code.c:26:             out[i] = even[i / 2];
	flw	fa5,0(a4)	# _49, *_45
# code.c:26:             out[i] = even[i / 2];
	fsw	fa5,0(a5)	# _49, *_48
	j	.L12		#
.L11:
# code.c:28:             out[i] = l[i];
	lw	a5,-40(s0)		# _50, i
	slli	a5,a5,2	#, _51, _50
	ld	a4,-56(s0)		# tmp254, l
	add	a4,a4,a5	# _51, _52, tmp254
# code.c:28:             out[i] = l[i];
	lw	a5,-40(s0)		# _53, i
	slli	a5,a5,2	#, _54, _53
	ld	a3,-72(s0)		# tmp255, out
	add	a5,a3,a5	# _54, _55, tmp255
# code.c:28:             out[i] = l[i];
	flw	fa5,0(a4)	# _56, *_52
# code.c:28:             out[i] = l[i];
	fsw	fa5,0(a5)	# _56, *_55
.L12:
# code.c:24:     for (i = 0; i < size; i++) {
	lw	a5,-40(s0)		# tmp258, i
	addiw	a5,a5,1	#, tmp256, tmp257
	sw	a5,-40(s0)	# tmp256, i
.L10:
# code.c:24:     for (i = 0; i < size; i++) {
	lw	a5,-40(s0)		# tmp260, i
	mv	a4,a5	# tmp259, tmp260
	lw	a5,-60(s0)		# tmp262, size
	sext.w	a4,a4	# tmp263, tmp259
	sext.w	a5,a5	# tmp264, tmp261
	blt	a4,a5,.L13	#, tmp263, tmp264,
# code.c:32:     free(even);
	ld	a0,-24(s0)		#, even
	call	free@plt	#
# code.c:33: }
	nop	
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
