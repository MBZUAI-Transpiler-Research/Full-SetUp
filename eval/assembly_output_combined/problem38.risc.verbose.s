	.file	"problem38.c"
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
# problem38.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	lw	a5,-60(s0)		# tmp132, size
	srliw	a4,a5,31	#, tmp133, tmp131
	addw	a5,a4,a5	# tmp131, tmp134, tmp133
	sraiw	a5,a5,1	#, tmp135, tmp134
	sext.w	a5,a5	# _1, tmp135
# problem38.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	addiw	a5,a5,1	#, tmp136, _1
	sext.w	a5,a5	# _2, tmp136
# problem38.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	slli	a5,a5,2	#, _4, _3
	mv	a0,a5	#, _4
	call	malloc@plt	#
	mv	a5,a0	# tmp137,
	sd	a5,-24(s0)	# tmp137, even
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
	ld	a4,-56(s0)		# tmp138, l
	add	a4,a4,a5	# _6, _7, tmp138
# problem38.c:10:         even[even_count++] = l[i];
	lw	a5,-32(s0)		# even_count.0_8, even_count
	addiw	a3,a5,1	#, tmp139, even_count.0_8
	sw	a3,-32(s0)	# tmp139, even_count
# problem38.c:10:         even[even_count++] = l[i];
	slli	a5,a5,2	#, _10, _9
	ld	a3,-24(s0)		# tmp140, even
	add	a5,a3,a5	# _10, _11, tmp140
# problem38.c:10:         even[even_count++] = l[i];
	flw	fa5,0(a4)	# _12, *_7
# problem38.c:10:         even[even_count++] = l[i];
	fsw	fa5,0(a5)	# _12, *_11
# problem38.c:9:     for (i = 0; i < size; i += 2) {
	lw	a5,-40(s0)		# tmp143, i
	addiw	a5,a5,2	#, tmp141, tmp142
	sw	a5,-40(s0)	# tmp141, i
.L2:
# problem38.c:9:     for (i = 0; i < size; i += 2) {
	lw	a5,-40(s0)		# tmp145, i
	mv	a4,a5	# tmp144, tmp145
	lw	a5,-60(s0)		# tmp147, size
	sext.w	a4,a4	# tmp148, tmp144
	sext.w	a5,a5	# tmp149, tmp146
	blt	a4,a5,.L3	#, tmp148, tmp149,
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
	ld	a4,-24(s0)		# tmp150, even
	add	a5,a4,a5	# _14, _15, tmp150
	flw	fa4,0(a5)	# _16, *_15
# problem38.c:15:             if (even[j] > even[j + 1]) {
	lw	a5,-36(s0)		# _17, j
	addi	a5,a5,1	#, _18, _17
	slli	a5,a5,2	#, _19, _18
	ld	a4,-24(s0)		# tmp151, even
	add	a5,a4,a5	# _19, _20, tmp151
	flw	fa5,0(a5)	# _21, *_20
# problem38.c:15:             if (even[j] > even[j + 1]) {
	fgt.s	a5,fa4,fa5	#, tmp152, _16, _21
	beq	a5,zero,.L6	#, tmp152,,
# problem38.c:16:                 float temp = even[j];
	lw	a5,-36(s0)		# _22, j
	slli	a5,a5,2	#, _23, _22
	ld	a4,-24(s0)		# tmp153, even
	add	a5,a4,a5	# _23, _24, tmp153
# problem38.c:16:                 float temp = even[j];
	flw	fa5,0(a5)	# tmp154, *_24
	fsw	fa5,-28(s0)	# tmp154, temp
# problem38.c:17:                 even[j] = even[j + 1];
	lw	a5,-36(s0)		# _25, j
	addi	a5,a5,1	#, _26, _25
	slli	a5,a5,2	#, _27, _26
	ld	a4,-24(s0)		# tmp155, even
	add	a4,a4,a5	# _27, _28, tmp155
# problem38.c:17:                 even[j] = even[j + 1];
	lw	a5,-36(s0)		# _29, j
	slli	a5,a5,2	#, _30, _29
	ld	a3,-24(s0)		# tmp156, even
	add	a5,a3,a5	# _30, _31, tmp156
# problem38.c:17:                 even[j] = even[j + 1];
	flw	fa5,0(a4)	# _32, *_28
# problem38.c:17:                 even[j] = even[j + 1];
	fsw	fa5,0(a5)	# _32, *_31
# problem38.c:18:                 even[j + 1] = temp;
	lw	a5,-36(s0)		# _33, j
	addi	a5,a5,1	#, _34, _33
	slli	a5,a5,2	#, _35, _34
	ld	a4,-24(s0)		# tmp157, even
	add	a5,a4,a5	# _35, _36, tmp157
# problem38.c:18:                 even[j + 1] = temp;
	flw	fa5,-28(s0)	# tmp158, temp
	fsw	fa5,0(a5)	# tmp158, *_36
.L6:
# problem38.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	lw	a5,-36(s0)		# tmp161, j
	addiw	a5,a5,1	#, tmp159, tmp160
	sw	a5,-36(s0)	# tmp159, j
.L5:
# problem38.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	lw	a5,-32(s0)		# tmp164, even_count
	mv	a4,a5	# tmp163, tmp164
	lw	a5,-40(s0)		# tmp166, i
	subw	a5,a4,a5	# tmp162, tmp163, tmp165
	sext.w	a5,a5	# _37, tmp162
# problem38.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	addiw	a5,a5,-1	#, tmp167, _37
	sext.w	a4,a5	# _38, tmp167
# problem38.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	lw	a5,-36(s0)		# tmp169, j
	sext.w	a5,a5	# tmp170, tmp168
	blt	a5,a4,.L8	#, tmp170, tmp171,
# problem38.c:13:     for (i = 0; i < even_count - 1; i++) {
	lw	a5,-40(s0)		# tmp174, i
	addiw	a5,a5,1	#, tmp172, tmp173
	sw	a5,-40(s0)	# tmp172, i
.L4:
# problem38.c:13:     for (i = 0; i < even_count - 1; i++) {
	lw	a5,-32(s0)		# tmp177, even_count
	addiw	a5,a5,-1	#, tmp175, tmp176
	sext.w	a4,a5	# _39, tmp175
# problem38.c:13:     for (i = 0; i < even_count - 1; i++) {
	lw	a5,-40(s0)		# tmp179, i
	sext.w	a5,a5	# tmp180, tmp178
	blt	a5,a4,.L9	#, tmp180, tmp181,
# problem38.c:24:     for (i = 0; i < size; i++) {
	sw	zero,-40(s0)	#, i
# problem38.c:24:     for (i = 0; i < size; i++) {
	j	.L10		#
.L13:
# problem38.c:25:         if (i % 2 == 0) {
	lw	a5,-40(s0)		# i.1_40, i
	andi	a5,a5,1	#, tmp183, tmp182
	sext.w	a5,a5	# _41, tmp183
# problem38.c:25:         if (i % 2 == 0) {
	bne	a5,zero,.L11	#, _41,,
# problem38.c:26:             out[i] = even[i / 2];
	lw	a5,-40(s0)		# tmp186, i
	srliw	a4,a5,31	#, tmp187, tmp185
	addw	a5,a4,a5	# tmp185, tmp188, tmp187
	sraiw	a5,a5,1	#, tmp189, tmp188
	sext.w	a5,a5	# _42, tmp189
# problem38.c:26:             out[i] = even[i / 2];
	slli	a5,a5,2	#, _44, _43
	ld	a4,-24(s0)		# tmp190, even
	add	a4,a4,a5	# _44, _45, tmp190
# problem38.c:26:             out[i] = even[i / 2];
	lw	a5,-40(s0)		# _46, i
	slli	a5,a5,2	#, _47, _46
	ld	a3,-72(s0)		# tmp191, out
	add	a5,a3,a5	# _47, _48, tmp191
# problem38.c:26:             out[i] = even[i / 2];
	flw	fa5,0(a4)	# _49, *_45
# problem38.c:26:             out[i] = even[i / 2];
	fsw	fa5,0(a5)	# _49, *_48
	j	.L12		#
.L11:
# problem38.c:28:             out[i] = l[i];
	lw	a5,-40(s0)		# _50, i
	slli	a5,a5,2	#, _51, _50
	ld	a4,-56(s0)		# tmp192, l
	add	a4,a4,a5	# _51, _52, tmp192
# problem38.c:28:             out[i] = l[i];
	lw	a5,-40(s0)		# _53, i
	slli	a5,a5,2	#, _54, _53
	ld	a3,-72(s0)		# tmp193, out
	add	a5,a3,a5	# _54, _55, tmp193
# problem38.c:28:             out[i] = l[i];
	flw	fa5,0(a4)	# _56, *_52
# problem38.c:28:             out[i] = l[i];
	fsw	fa5,0(a5)	# _56, *_55
.L12:
# problem38.c:24:     for (i = 0; i < size; i++) {
	lw	a5,-40(s0)		# tmp196, i
	addiw	a5,a5,1	#, tmp194, tmp195
	sw	a5,-40(s0)	# tmp194, i
.L10:
# problem38.c:24:     for (i = 0; i < size; i++) {
	lw	a5,-40(s0)		# tmp198, i
	mv	a4,a5	# tmp197, tmp198
	lw	a5,-60(s0)		# tmp200, size
	sext.w	a4,a4	# tmp201, tmp197
	sext.w	a5,a5	# tmp202, tmp199
	blt	a4,a5,.L13	#, tmp201, tmp202,
# problem38.c:32:     free(even);
	ld	a0,-24(s0)		#, even
	call	free@plt	#
# problem38.c:33: }
	nop	
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-64	#,,
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp85, size
	sw	a5,-52(s0)	# tmp86, size
# problem38.c:42:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem38.c:42:     for (int i = 0; i < size; i++) {
	j	.L16		#
.L20:
# problem38.c:43:         if (fabs(a[i] - b[i]) > 1e-4) {
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp87, a
	add	a5,a4,a5	# _2, _3, tmp87
	flw	fa4,0(a5)	# _4, *_3
# problem38.c:43:         if (fabs(a[i] - b[i]) > 1e-4) {
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp88, b
	add	a5,a4,a5	# _6, _7, tmp88
	flw	fa5,0(a5)	# _8, *_7
# problem38.c:43:         if (fabs(a[i] - b[i]) > 1e-4) {
	fsub.s	fa5,fa4,fa5	# _9, _4, _8
# problem38.c:43:         if (fabs(a[i] - b[i]) > 1e-4) {
	fabs.s	fa5,fa5	# _10, _9
	fcvt.d.s	fa4,fa5	# _11, _10
# problem38.c:43:         if (fabs(a[i] - b[i]) > 1e-4) {
	lla	a5,.LC4	# tmp90,
	fld	fa5,0(a5)	# tmp89,
	fgt.d	a5,fa4,fa5	#, tmp91, _11, tmp89
	beq	a5,zero,.L22	#, tmp91,,
# problem38.c:44:             return 0;
	li	a5,0		# _13,
	j	.L19		#
.L22:
# problem38.c:42:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp94, i
	addiw	a5,a5,1	#, tmp92, tmp93
	sw	a5,-20(s0)	# tmp92, i
.L16:
# problem38.c:42:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp96, i
	mv	a4,a5	# tmp95, tmp96
	lw	a5,-52(s0)		# tmp98, size
	sext.w	a4,a4	# tmp99, tmp95
	sext.w	a5,a5	# tmp100, tmp97
	blt	a4,a5,.L20	#, tmp99, tmp100,
# problem38.c:47:     return 1;
	li	a5,1		# _13,
.L19:
# problem38.c:48: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
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
	addi	sp,sp,-336	#,,
	sd	ra,328(sp)	#,
	sd	s0,320(sp)	#,
	addi	s0,sp,336	#,,
# problem38.c:50: int main() {
	la	a5,__stack_chk_guard		# tmp77,
	ld	a4, 0(a5)	# tmp134, __stack_chk_guard
	sd	a4, -24(s0)	# tmp134, D.3540
	li	a4, 0	# tmp134
# problem38.c:51:     float test1[] = {1, 2, 3};
	lla	a5,.LC5	# tmp78,
	flw	fa5,0(a5)	# tmp79,
	fsw	fa5,-336(s0)	# tmp79, test1[0]
	lla	a5,.LC6	# tmp80,
	flw	fa5,0(a5)	# tmp81,
	fsw	fa5,-332(s0)	# tmp81, test1[1]
	lla	a5,.LC7	# tmp82,
	flw	fa5,0(a5)	# tmp83,
	fsw	fa5,-328(s0)	# tmp83, test1[2]
# problem38.c:53:     func0(test1, 3, result1);
	addi	a4,s0,-320	#, tmp84,
	addi	a5,s0,-336	#, tmp85,
	mv	a2,a4	#, tmp84
	li	a1,3		#,
	mv	a0,a5	#, tmp85
	call	func0		#
# problem38.c:54:     float expected1[] = {1, 2, 3};
	lla	a5,.LC5	# tmp86,
	flw	fa5,0(a5)	# tmp87,
	fsw	fa5,-304(s0)	# tmp87, expected1[0]
	lla	a5,.LC6	# tmp88,
	flw	fa5,0(a5)	# tmp89,
	fsw	fa5,-300(s0)	# tmp89, expected1[1]
	lla	a5,.LC7	# tmp90,
	flw	fa5,0(a5)	# tmp91,
	fsw	fa5,-296(s0)	# tmp91, expected1[2]
# problem38.c:55:     assert(issame(result1, expected1, 3));
	addi	a4,s0,-304	#, tmp92,
	addi	a5,s0,-320	#, tmp93,
	li	a2,3		#,
	mv	a1,a4	#, tmp92
	mv	a0,a5	#, tmp93
	call	issame		#
	mv	a5,a0	# tmp94,
	bne	a5,zero,.L24	#, _1,,
# problem38.c:55:     assert(issame(result1, expected1, 3));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,55		#,
	lla	a1,.LC8	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L24:
# problem38.c:57:     float test2[] = {5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10};
	lla	a5,.LC0	# tmp95,
	ld	a0,0(a5)		# tmp96,
	ld	a1,8(a5)		# tmp97,
	ld	a2,16(a5)		# tmp98,
	ld	a3,24(a5)		# tmp99,
	ld	a4,32(a5)		# tmp100,
	sd	a0,-168(s0)	# tmp96, test2
	sd	a1,-160(s0)	# tmp97, test2
	sd	a2,-152(s0)	# tmp98, test2
	sd	a3,-144(s0)	# tmp99, test2
	sd	a4,-136(s0)	# tmp100, test2
	lw	a5,40(a5)		# tmp101,
	sw	a5,-128(s0)	# tmp101, test2
# problem38.c:59:     func0(test2, 11, result2);
	addi	a4,s0,-120	#, tmp102,
	addi	a5,s0,-168	#, tmp103,
	mv	a2,a4	#, tmp102
	li	a1,11		#,
	mv	a0,a5	#, tmp103
	call	func0		#
# problem38.c:60:     float expected2[] = {-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123};
	lla	a5,.LC1	# tmp104,
	ld	a0,0(a5)		# tmp105,
	ld	a1,8(a5)		# tmp106,
	ld	a2,16(a5)		# tmp107,
	ld	a3,24(a5)		# tmp108,
	ld	a4,32(a5)		# tmp109,
	sd	a0,-72(s0)	# tmp105, expected2
	sd	a1,-64(s0)	# tmp106, expected2
	sd	a2,-56(s0)	# tmp107, expected2
	sd	a3,-48(s0)	# tmp108, expected2
	sd	a4,-40(s0)	# tmp109, expected2
	lw	a5,40(a5)		# tmp110,
	sw	a5,-32(s0)	# tmp110, expected2
# problem38.c:61:     assert(issame(result2, expected2, 11));
	addi	a4,s0,-72	#, tmp111,
	addi	a5,s0,-120	#, tmp112,
	li	a2,11		#,
	mv	a1,a4	#, tmp111
	mv	a0,a5	#, tmp112
	call	issame		#
	mv	a5,a0	# tmp113,
	bne	a5,zero,.L25	#, _2,,
# problem38.c:61:     assert(issame(result2, expected2, 11));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,61		#,
	lla	a1,.LC8	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L25:
# problem38.c:63:     float test3[] = {5, 8, -12, 4, 23, 2, 3, 11, 12, -10};
	lla	a5,.LC2	# tmp114,
	ld	a1,0(a5)		# tmp115,
	ld	a2,8(a5)		# tmp116,
	ld	a3,16(a5)		# tmp117,
	ld	a4,24(a5)		# tmp118,
	ld	a5,32(a5)		# tmp119,
	sd	a1,-288(s0)	# tmp115, test3
	sd	a2,-280(s0)	# tmp116, test3
	sd	a3,-272(s0)	# tmp117, test3
	sd	a4,-264(s0)	# tmp118, test3
	sd	a5,-256(s0)	# tmp119, test3
# problem38.c:65:     func0(test3, 10, result3);
	addi	a4,s0,-248	#, tmp120,
	addi	a5,s0,-288	#, tmp121,
	mv	a2,a4	#, tmp120
	li	a1,10		#,
	mv	a0,a5	#, tmp121
	call	func0		#
# problem38.c:66:     float expected3[] = {-12, 8, 3, 4, 5, 2, 12, 11, 23, -10};
	lla	a5,.LC3	# tmp122,
	ld	a1,0(a5)		# tmp123,
	ld	a2,8(a5)		# tmp124,
	ld	a3,16(a5)		# tmp125,
	ld	a4,24(a5)		# tmp126,
	ld	a5,32(a5)		# tmp127,
	sd	a1,-208(s0)	# tmp123, expected3
	sd	a2,-200(s0)	# tmp124, expected3
	sd	a3,-192(s0)	# tmp125, expected3
	sd	a4,-184(s0)	# tmp126, expected3
	sd	a5,-176(s0)	# tmp127, expected3
# problem38.c:67:     assert(issame(result3, expected3, 10));
	addi	a4,s0,-208	#, tmp128,
	addi	a5,s0,-248	#, tmp129,
	li	a2,10		#,
	mv	a1,a4	#, tmp128
	mv	a0,a5	#, tmp129
	call	issame		#
	mv	a5,a0	# tmp130,
	bne	a5,zero,.L26	#, _3,,
# problem38.c:67:     assert(issame(result3, expected3, 10));
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
	la	a5,__stack_chk_guard		# tmp132,
	ld	a3, -24(s0)	# tmp135, D.3540
	ld	a5, 0(a5)	# tmp133, __stack_chk_guard
	xor	a5, a3, a5	# tmp133, tmp135
	li	a3, 0	# tmp135
	beq	a5,zero,.L28	#, tmp133,,
	call	__stack_chk_fail@plt	#
.L28:
	mv	a0,a4	#, <retval>
	ld	ra,328(sp)		#,
	ld	s0,320(sp)		#,
	addi	sp,sp,336	#,,
	jr	ra		#
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
