	.file	"problem38.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
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
# problem38.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	lw	a5,-60(s0)		# tmp194, size
	srliw	a4,a5,31	#, tmp195, tmp193
	addw	a5,a4,a5	# tmp193, tmp196, tmp195
	sraiw	a5,a5,1	#, tmp197, tmp196
	sext.w	a5,a5	# _1, tmp197
# problem38.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	addiw	a5,a5,1	#, tmp198, _1
	sext.w	a5,a5	# _2, tmp198
# problem38.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	slli	a5,a5,2	#, _4, _3
	mv	a0,a5	#, _4
	call	malloc@plt	#
	mv	a5,a0	# tmp199,
	sd	a5,-24(s0)	# tmp199, even
# problem38.c:7:     int i, j, even_count = 0;
	sw	zero,-32(s0)	#, even_count
# problem38.c:9:     for (i = 0; i < size; i += 2) {
	sw	zero,-40(s0)	#, i
# problem38.c:9:     for (i = 0; i < size; i += 2) {
	j	.L2		#
.L3:
# problem38.c:10:         even[even_count++] = l[i];
	lw	a5,-40(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp200, l
	add	a4,a4,a5	# _6, _7, tmp200
# problem38.c:10:         even[even_count++] = l[i];
	lw	a5,-32(s0)		# even_count.0_8, even_count
	addiw	a3,a5,1	#, tmp201, even_count.0_8
	sw	a3,-32(s0)	# tmp201, even_count
# problem38.c:10:         even[even_count++] = l[i];
	slli	a5,a5,2	#, _10, _9
	ld	a3,-24(s0)		# tmp202, even
	add	a5,a3,a5	# _10, _11, tmp202
# problem38.c:10:         even[even_count++] = l[i];
	flw	fa5,0(a4)	# _12, *_7
# problem38.c:10:         even[even_count++] = l[i];
	fsw	fa5,0(a5)	# _12, *_11
# problem38.c:9:     for (i = 0; i < size; i += 2) {
	lw	a5,-40(s0)		# tmp205, i
	addiw	a5,a5,2	#, tmp203, tmp204
	sw	a5,-40(s0)	# tmp203, i
.L2:
# problem38.c:9:     for (i = 0; i < size; i += 2) {
	lw	a5,-40(s0)		# tmp207, i
	mv	a4,a5	# tmp206, tmp207
	lw	a5,-60(s0)		# tmp209, size
	sext.w	a4,a4	# tmp210, tmp206
	sext.w	a5,a5	# tmp211, tmp208
	blt	a4,a5,.L3	#, tmp210, tmp211,
# problem38.c:13:     for (i = 0; i < even_count - 1; i++) {
	sw	zero,-40(s0)	#, i
# problem38.c:13:     for (i = 0; i < even_count - 1; i++) {
	j	.L4		#
.L9:
# problem38.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	sw	zero,-36(s0)	#, j
# problem38.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	j	.L5		#
.L8:
# problem38.c:15:             if (even[j] > even[j + 1]) {
	lw	a5,-36(s0)		# _13, j
	slli	a5,a5,2	#, _14, _13
	ld	a4,-24(s0)		# tmp212, even
	add	a5,a4,a5	# _14, _15, tmp212
	flw	fa4,0(a5)	# _16, *_15
# problem38.c:15:             if (even[j] > even[j + 1]) {
	lw	a5,-36(s0)		# _17, j
	addi	a5,a5,1	#, _18, _17
	slli	a5,a5,2	#, _19, _18
	ld	a4,-24(s0)		# tmp213, even
	add	a5,a4,a5	# _19, _20, tmp213
	flw	fa5,0(a5)	# _21, *_20
# problem38.c:15:             if (even[j] > even[j + 1]) {
	fgt.s	a5,fa4,fa5	#, tmp214, _16, _21
	beq	a5,zero,.L6	#, tmp214,,
# problem38.c:16:                 float temp = even[j];
	lw	a5,-36(s0)		# _22, j
	slli	a5,a5,2	#, _23, _22
	ld	a4,-24(s0)		# tmp215, even
	add	a5,a4,a5	# _23, _24, tmp215
# problem38.c:16:                 float temp = even[j];
	flw	fa5,0(a5)	# tmp216, *_24
	fsw	fa5,-28(s0)	# tmp216, temp
# problem38.c:17:                 even[j] = even[j + 1];
	lw	a5,-36(s0)		# _25, j
	addi	a5,a5,1	#, _26, _25
	slli	a5,a5,2	#, _27, _26
	ld	a4,-24(s0)		# tmp217, even
	add	a4,a4,a5	# _27, _28, tmp217
# problem38.c:17:                 even[j] = even[j + 1];
	lw	a5,-36(s0)		# _29, j
	slli	a5,a5,2	#, _30, _29
	ld	a3,-24(s0)		# tmp218, even
	add	a5,a3,a5	# _30, _31, tmp218
# problem38.c:17:                 even[j] = even[j + 1];
	flw	fa5,0(a4)	# _32, *_28
# problem38.c:17:                 even[j] = even[j + 1];
	fsw	fa5,0(a5)	# _32, *_31
# problem38.c:18:                 even[j + 1] = temp;
	lw	a5,-36(s0)		# _33, j
	addi	a5,a5,1	#, _34, _33
	slli	a5,a5,2	#, _35, _34
	ld	a4,-24(s0)		# tmp219, even
	add	a5,a4,a5	# _35, _36, tmp219
# problem38.c:18:                 even[j + 1] = temp;
	flw	fa5,-28(s0)	# tmp220, temp
	fsw	fa5,0(a5)	# tmp220, *_36
.L6:
# problem38.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	lw	a5,-36(s0)		# tmp223, j
	addiw	a5,a5,1	#, tmp221, tmp222
	sw	a5,-36(s0)	# tmp221, j
.L5:
# problem38.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	lw	a5,-32(s0)		# tmp226, even_count
	mv	a4,a5	# tmp225, tmp226
	lw	a5,-40(s0)		# tmp228, i
	subw	a5,a4,a5	# tmp224, tmp225, tmp227
	sext.w	a5,a5	# _37, tmp224
# problem38.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	addiw	a5,a5,-1	#, tmp229, _37
	sext.w	a4,a5	# _38, tmp229
# problem38.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	lw	a5,-36(s0)		# tmp231, j
	sext.w	a5,a5	# tmp232, tmp230
	blt	a5,a4,.L8	#, tmp232, tmp233,
# problem38.c:13:     for (i = 0; i < even_count - 1; i++) {
	lw	a5,-40(s0)		# tmp236, i
	addiw	a5,a5,1	#, tmp234, tmp235
	sw	a5,-40(s0)	# tmp234, i
.L4:
# problem38.c:13:     for (i = 0; i < even_count - 1; i++) {
	lw	a5,-32(s0)		# tmp239, even_count
	addiw	a5,a5,-1	#, tmp237, tmp238
	sext.w	a4,a5	# _39, tmp237
# problem38.c:13:     for (i = 0; i < even_count - 1; i++) {
	lw	a5,-40(s0)		# tmp241, i
	sext.w	a5,a5	# tmp242, tmp240
	blt	a5,a4,.L9	#, tmp242, tmp243,
# problem38.c:24:     for (i = 0; i < size; i++) {
	sw	zero,-40(s0)	#, i
# problem38.c:24:     for (i = 0; i < size; i++) {
	j	.L10		#
.L13:
# problem38.c:25:         if (i % 2 == 0) {
	lw	a5,-40(s0)		# i.1_40, i
	andi	a5,a5,1	#, tmp245, tmp244
	sext.w	a5,a5	# _41, tmp245
# problem38.c:25:         if (i % 2 == 0) {
	bne	a5,zero,.L11	#, _41,,
# problem38.c:26:             out[i] = even[i / 2];
	lw	a5,-40(s0)		# tmp248, i
	srliw	a4,a5,31	#, tmp249, tmp247
	addw	a5,a4,a5	# tmp247, tmp250, tmp249
	sraiw	a5,a5,1	#, tmp251, tmp250
	sext.w	a5,a5	# _42, tmp251
# problem38.c:26:             out[i] = even[i / 2];
	slli	a5,a5,2	#, _44, _43
	ld	a4,-24(s0)		# tmp252, even
	add	a4,a4,a5	# _44, _45, tmp252
# problem38.c:26:             out[i] = even[i / 2];
	lw	a5,-40(s0)		# _46, i
	slli	a5,a5,2	#, _47, _46
	ld	a3,-72(s0)		# tmp253, out
	add	a5,a3,a5	# _47, _48, tmp253
# problem38.c:26:             out[i] = even[i / 2];
	flw	fa5,0(a4)	# _49, *_45
# problem38.c:26:             out[i] = even[i / 2];
	fsw	fa5,0(a5)	# _49, *_48
	j	.L12		#
.L11:
# problem38.c:28:             out[i] = l[i];
	lw	a5,-40(s0)		# _50, i
	slli	a5,a5,2	#, _51, _50
	ld	a4,-56(s0)		# tmp254, l
	add	a4,a4,a5	# _51, _52, tmp254
# problem38.c:28:             out[i] = l[i];
	lw	a5,-40(s0)		# _53, i
	slli	a5,a5,2	#, _54, _53
	ld	a3,-72(s0)		# tmp255, out
	add	a5,a3,a5	# _54, _55, tmp255
# problem38.c:28:             out[i] = l[i];
	flw	fa5,0(a4)	# _56, *_52
# problem38.c:28:             out[i] = l[i];
	fsw	fa5,0(a5)	# _56, *_55
.L12:
# problem38.c:24:     for (i = 0; i < size; i++) {
	lw	a5,-40(s0)		# tmp258, i
	addiw	a5,a5,1	#, tmp256, tmp257
	sw	a5,-40(s0)	# tmp256, i
.L10:
# problem38.c:24:     for (i = 0; i < size; i++) {
	lw	a5,-40(s0)		# tmp260, i
	mv	a4,a5	# tmp259, tmp260
	lw	a5,-60(s0)		# tmp262, size
	sext.w	a4,a4	# tmp263, tmp259
	sext.w	a5,a5	# tmp264, tmp261
	blt	a4,a5,.L13	#, tmp263, tmp264,
# problem38.c:32:     free(even);
	ld	a0,-24(s0)		#, even
	call	free@plt	#
# problem38.c:33: }
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
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp147, size
	sw	a5,-52(s0)	# tmp148, size
# problem38.c:42:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem38.c:42:     for (int i = 0; i < size; i++) {
	j	.L16		#
.L20:
# problem38.c:43:         if (fabs(a[i] - b[i]) > 1e-4) {
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp149, a
	add	a5,a4,a5	# _2, _3, tmp149
	flw	fa4,0(a5)	# _4, *_3
# problem38.c:43:         if (fabs(a[i] - b[i]) > 1e-4) {
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp150, b
	add	a5,a4,a5	# _6, _7, tmp150
	flw	fa5,0(a5)	# _8, *_7
# problem38.c:43:         if (fabs(a[i] - b[i]) > 1e-4) {
	fsub.s	fa5,fa4,fa5	# _9, _4, _8
# problem38.c:43:         if (fabs(a[i] - b[i]) > 1e-4) {
	fabs.s	fa5,fa5	# _10, _9
	fcvt.d.s	fa4,fa5	# _11, _10
# problem38.c:43:         if (fabs(a[i] - b[i]) > 1e-4) {
	lla	a5,.LC4	# tmp152,
	fld	fa5,0(a5)	# tmp151,
	fgt.d	a5,fa4,fa5	#, tmp153, _11, tmp151
	beq	a5,zero,.L22	#, tmp153,,
# problem38.c:44:             return 0;
	li	a5,0		# _13,
	j	.L19		#
.L22:
# problem38.c:42:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp156, i
	addiw	a5,a5,1	#, tmp154, tmp155
	sw	a5,-20(s0)	# tmp154, i
.L16:
# problem38.c:42:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp158, i
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-52(s0)		# tmp160, size
	sext.w	a4,a4	# tmp161, tmp157
	sext.w	a5,a5	# tmp162, tmp159
	blt	a4,a5,.L20	#, tmp161, tmp162,
# problem38.c:47:     return 1;
	li	a5,1		# _13,
.L19:
# problem38.c:48: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC8:
	.string	"problem38.c"
	.align	3
.LC9:
	.string	"issame(result1, expected1, 3)"
	.align	3
.LC10:
	.string	"issame(result2, expected2, 11)"
	.align	3
.LC11:
	.string	"issame(result3, expected3, 10)"
	.align	3
.LC0:
	.word	1084227584
	.word	1077936128
	.word	-1063256064
	.word	1073741824
	.word	-1069547520
	.word	1077936128
	.word	1091567616
	.word	0
	.word	1123418112
	.word	1065353216
	.word	-1054867456
	.align	3
.LC1:
	.word	-1054867456
	.word	1077936128
	.word	-1063256064
	.word	1073741824
	.word	-1069547520
	.word	1077936128
	.word	1084227584
	.word	0
	.word	1091567616
	.word	1065353216
	.word	1123418112
	.align	3
.LC2:
	.word	1084227584
	.word	1090519040
	.word	-1052770304
	.word	1082130432
	.word	1102577664
	.word	1073741824
	.word	1077936128
	.word	1093664768
	.word	1094713344
	.word	-1054867456
	.align	3
.LC3:
	.word	-1052770304
	.word	1090519040
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.word	1073741824
	.word	1094713344
	.word	1093664768
	.word	1102577664
	.word	-1054867456
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-336	#,,
	.cfi_def_cfa_offset 336
	sd	ra,328(sp)	#,
	sd	s0,320(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,336	#,,
	.cfi_def_cfa 8, 0
# problem38.c:50: int main() {
	la	a5,__stack_chk_guard		# tmp139,
	ld	a4, 0(a5)	# tmp196, __stack_chk_guard
	sd	a4, -24(s0)	# tmp196, D.4365
	li	a4, 0	# tmp196
# problem38.c:51:     float test1[] = {1, 2, 3};
	lla	a5,.LC5	# tmp140,
	flw	fa5,0(a5)	# tmp141,
	fsw	fa5,-336(s0)	# tmp141, test1[0]
	lla	a5,.LC6	# tmp142,
	flw	fa5,0(a5)	# tmp143,
	fsw	fa5,-332(s0)	# tmp143, test1[1]
	lla	a5,.LC7	# tmp144,
	flw	fa5,0(a5)	# tmp145,
	fsw	fa5,-328(s0)	# tmp145, test1[2]
# problem38.c:53:     func0(test1, 3, result1);
	addi	a4,s0,-320	#, tmp146,
	addi	a5,s0,-336	#, tmp147,
	mv	a2,a4	#, tmp146
	li	a1,3		#,
	mv	a0,a5	#, tmp147
	call	func0		#
# problem38.c:54:     float expected1[] = {1, 2, 3};
	lla	a5,.LC5	# tmp148,
	flw	fa5,0(a5)	# tmp149,
	fsw	fa5,-304(s0)	# tmp149, expected1[0]
	lla	a5,.LC6	# tmp150,
	flw	fa5,0(a5)	# tmp151,
	fsw	fa5,-300(s0)	# tmp151, expected1[1]
	lla	a5,.LC7	# tmp152,
	flw	fa5,0(a5)	# tmp153,
	fsw	fa5,-296(s0)	# tmp153, expected1[2]
# problem38.c:55:     assert(issame(result1, expected1, 3));
	addi	a4,s0,-304	#, tmp154,
	addi	a5,s0,-320	#, tmp155,
	li	a2,3		#,
	mv	a1,a4	#, tmp154
	mv	a0,a5	#, tmp155
	call	issame		#
	mv	a5,a0	# tmp156,
# problem38.c:55:     assert(issame(result1, expected1, 3));
	bne	a5,zero,.L24	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,55		#,
	lla	a1,.LC8	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L24:
# problem38.c:57:     float test2[] = {5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10};
	lla	a5,.LC0	# tmp157,
	ld	a0,0(a5)		# tmp158,
	ld	a1,8(a5)		# tmp159,
	ld	a2,16(a5)		# tmp160,
	ld	a3,24(a5)		# tmp161,
	ld	a4,32(a5)		# tmp162,
	sd	a0,-168(s0)	# tmp158, test2
	sd	a1,-160(s0)	# tmp159, test2
	sd	a2,-152(s0)	# tmp160, test2
	sd	a3,-144(s0)	# tmp161, test2
	sd	a4,-136(s0)	# tmp162, test2
	lw	a5,40(a5)		# tmp163,
	sw	a5,-128(s0)	# tmp163, test2
# problem38.c:59:     func0(test2, 11, result2);
	addi	a4,s0,-120	#, tmp164,
	addi	a5,s0,-168	#, tmp165,
	mv	a2,a4	#, tmp164
	li	a1,11		#,
	mv	a0,a5	#, tmp165
	call	func0		#
# problem38.c:60:     float expected2[] = {-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123};
	lla	a5,.LC1	# tmp166,
	ld	a0,0(a5)		# tmp167,
	ld	a1,8(a5)		# tmp168,
	ld	a2,16(a5)		# tmp169,
	ld	a3,24(a5)		# tmp170,
	ld	a4,32(a5)		# tmp171,
	sd	a0,-72(s0)	# tmp167, expected2
	sd	a1,-64(s0)	# tmp168, expected2
	sd	a2,-56(s0)	# tmp169, expected2
	sd	a3,-48(s0)	# tmp170, expected2
	sd	a4,-40(s0)	# tmp171, expected2
	lw	a5,40(a5)		# tmp172,
	sw	a5,-32(s0)	# tmp172, expected2
# problem38.c:61:     assert(issame(result2, expected2, 11));
	addi	a4,s0,-72	#, tmp173,
	addi	a5,s0,-120	#, tmp174,
	li	a2,11		#,
	mv	a1,a4	#, tmp173
	mv	a0,a5	#, tmp174
	call	issame		#
	mv	a5,a0	# tmp175,
# problem38.c:61:     assert(issame(result2, expected2, 11));
	bne	a5,zero,.L25	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,61		#,
	lla	a1,.LC8	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L25:
# problem38.c:63:     float test3[] = {5, 8, -12, 4, 23, 2, 3, 11, 12, -10};
	lla	a5,.LC2	# tmp176,
	ld	a1,0(a5)		# tmp177,
	ld	a2,8(a5)		# tmp178,
	ld	a3,16(a5)		# tmp179,
	ld	a4,24(a5)		# tmp180,
	ld	a5,32(a5)		# tmp181,
	sd	a1,-288(s0)	# tmp177, test3
	sd	a2,-280(s0)	# tmp178, test3
	sd	a3,-272(s0)	# tmp179, test3
	sd	a4,-264(s0)	# tmp180, test3
	sd	a5,-256(s0)	# tmp181, test3
# problem38.c:65:     func0(test3, 10, result3);
	addi	a4,s0,-248	#, tmp182,
	addi	a5,s0,-288	#, tmp183,
	mv	a2,a4	#, tmp182
	li	a1,10		#,
	mv	a0,a5	#, tmp183
	call	func0		#
# problem38.c:66:     float expected3[] = {-12, 8, 3, 4, 5, 2, 12, 11, 23, -10};
	lla	a5,.LC3	# tmp184,
	ld	a1,0(a5)		# tmp185,
	ld	a2,8(a5)		# tmp186,
	ld	a3,16(a5)		# tmp187,
	ld	a4,24(a5)		# tmp188,
	ld	a5,32(a5)		# tmp189,
	sd	a1,-208(s0)	# tmp185, expected3
	sd	a2,-200(s0)	# tmp186, expected3
	sd	a3,-192(s0)	# tmp187, expected3
	sd	a4,-184(s0)	# tmp188, expected3
	sd	a5,-176(s0)	# tmp189, expected3
# problem38.c:67:     assert(issame(result3, expected3, 10));
	addi	a4,s0,-208	#, tmp190,
	addi	a5,s0,-248	#, tmp191,
	li	a2,10		#,
	mv	a1,a4	#, tmp190
	mv	a0,a5	#, tmp191
	call	issame		#
	mv	a5,a0	# tmp192,
# problem38.c:67:     assert(issame(result3, expected3, 10));
	bne	a5,zero,.L26	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,67		#,
	lla	a1,.LC8	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L26:
# problem38.c:69:     return 0;
	li	a5,0		# _24,
# problem38.c:70: }
	mv	a4,a5	# <retval>, _24
	la	a5,__stack_chk_guard		# tmp194,
	ld	a3, -24(s0)	# tmp197, D.4365
	ld	a5, 0(a5)	# tmp195, __stack_chk_guard
	xor	a5, a3, a5	# tmp195, tmp197
	li	a3, 0	# tmp197
	beq	a5,zero,.L28	#, tmp195,,
	call	__stack_chk_fail@plt	#
.L28:
	mv	a0,a4	#, <retval>
	ld	ra,328(sp)		#,
	.cfi_restore 1
	ld	s0,320(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 336
	addi	sp,sp,336	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC4:
	.word	-350469331
	.word	1058682594
	.align	2
.LC5:
	.word	1065353216
	.align	2
.LC6:
	.word	1073741824
	.align	2
.LC7:
	.word	1077936128
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
