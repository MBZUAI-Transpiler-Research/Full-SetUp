	.file	"problem34.c"
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
	mv	a5,a1	# tmp185, size
	sd	a2,-72(s0)	# out, out
	sw	a5,-60(s0)	# tmp186, size
# problem34.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	lw	a5,-60(s0)		# tmp189, size
	mv	a4,a5	# tmp188, tmp189
	li	a5,3		# tmp191,
	divw	a5,a4,a5	# tmp191, tmp190, tmp188
	sext.w	a5,a5	# _1, tmp190
# problem34.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	addiw	a5,a5,1	#, tmp192, _1
	sext.w	a5,a5	# _2, tmp192
# problem34.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	slli	a5,a5,2	#, _4, _3
	mv	a0,a5	#, _4
	call	malloc@plt	#
	mv	a5,a0	# tmp193,
	sd	a5,-24(s0)	# tmp193, third
# problem34.c:6:     int i, k = 0, third_size = 0;
	sw	zero,-40(s0)	#, k
# problem34.c:6:     int i, k = 0, third_size = 0;
	sw	zero,-36(s0)	#, third_size
# problem34.c:8:     for (i = 0; i * 3 < size; i++) {
	sw	zero,-44(s0)	#, i
# problem34.c:8:     for (i = 0; i * 3 < size; i++) {
	j	.L2		#
.L3:
# problem34.c:9:         third[i] = l[i * 3];
	lw	a5,-44(s0)		# tmp195, i
	mv	a4,a5	# tmp194, tmp195
	mv	a5,a4	# tmp196, tmp194
	slliw	a5,a5,1	#, tmp197, tmp196
	addw	a5,a5,a4	# tmp194, tmp196, tmp196
	sext.w	a5,a5	# _5, tmp196
# problem34.c:9:         third[i] = l[i * 3];
	slli	a5,a5,2	#, _7, _6
	ld	a4,-56(s0)		# tmp198, l
	add	a4,a4,a5	# _7, _8, tmp198
# problem34.c:9:         third[i] = l[i * 3];
	lw	a5,-44(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a3,-24(s0)		# tmp199, third
	add	a5,a3,a5	# _10, _11, tmp199
# problem34.c:9:         third[i] = l[i * 3];
	lw	a4,0(a4)		# _12, *_8
# problem34.c:9:         third[i] = l[i * 3];
	sw	a4,0(a5)	# _12, *_11
# problem34.c:10:         third_size++;
	lw	a5,-36(s0)		# tmp202, third_size
	addiw	a5,a5,1	#, tmp200, tmp201
	sw	a5,-36(s0)	# tmp200, third_size
# problem34.c:8:     for (i = 0; i * 3 < size; i++) {
	lw	a5,-44(s0)		# tmp205, i
	addiw	a5,a5,1	#, tmp203, tmp204
	sw	a5,-44(s0)	# tmp203, i
.L2:
# problem34.c:8:     for (i = 0; i * 3 < size; i++) {
	lw	a5,-44(s0)		# tmp207, i
	mv	a4,a5	# tmp206, tmp207
	mv	a5,a4	# tmp208, tmp206
	slliw	a5,a5,1	#, tmp209, tmp208
	addw	a5,a5,a4	# tmp206, tmp208, tmp208
	sext.w	a4,a5	# _13, tmp208
# problem34.c:8:     for (i = 0; i * 3 < size; i++) {
	lw	a5,-60(s0)		# tmp211, size
	sext.w	a5,a5	# tmp212, tmp210
	bgt	a5,a4,.L3	#, tmp212, tmp213,
# problem34.c:13:     for (i = 0; i < third_size - 1; i++) {
	sw	zero,-44(s0)	#, i
# problem34.c:13:     for (i = 0; i < third_size - 1; i++) {
	j	.L4		#
.L9:
# problem34.c:14:         int min_idx = i;
	lw	a5,-44(s0)		# tmp214, i
	sw	a5,-32(s0)	# tmp214, min_idx
# problem34.c:15:         for (k = i + 1; k < third_size; k++) {
	lw	a5,-44(s0)		# tmp217, i
	addiw	a5,a5,1	#, tmp215, tmp216
	sw	a5,-40(s0)	# tmp215, k
# problem34.c:15:         for (k = i + 1; k < third_size; k++) {
	j	.L5		#
.L7:
# problem34.c:16:             if (third[k] < third[min_idx])
	lw	a5,-40(s0)		# _14, k
	slli	a5,a5,2	#, _15, _14
	ld	a4,-24(s0)		# tmp218, third
	add	a5,a4,a5	# _15, _16, tmp218
	lw	a3,0(a5)		# _17, *_16
# problem34.c:16:             if (third[k] < third[min_idx])
	lw	a5,-32(s0)		# _18, min_idx
	slli	a5,a5,2	#, _19, _18
	ld	a4,-24(s0)		# tmp219, third
	add	a5,a4,a5	# _19, _20, tmp219
	lw	a5,0(a5)		# _21, *_20
# problem34.c:16:             if (third[k] < third[min_idx])
	mv	a4,a3	# tmp220, _17
	bge	a4,a5,.L6	#, tmp220, tmp221,
# problem34.c:17:                 min_idx = k;
	lw	a5,-40(s0)		# tmp222, k
	sw	a5,-32(s0)	# tmp222, min_idx
.L6:
# problem34.c:15:         for (k = i + 1; k < third_size; k++) {
	lw	a5,-40(s0)		# tmp225, k
	addiw	a5,a5,1	#, tmp223, tmp224
	sw	a5,-40(s0)	# tmp223, k
.L5:
# problem34.c:15:         for (k = i + 1; k < third_size; k++) {
	lw	a5,-40(s0)		# tmp227, k
	mv	a4,a5	# tmp226, tmp227
	lw	a5,-36(s0)		# tmp229, third_size
	sext.w	a4,a4	# tmp230, tmp226
	sext.w	a5,a5	# tmp231, tmp228
	blt	a4,a5,.L7	#, tmp230, tmp231,
# problem34.c:19:         if (min_idx != i) {
	lw	a5,-32(s0)		# tmp233, min_idx
	mv	a4,a5	# tmp232, tmp233
	lw	a5,-44(s0)		# tmp235, i
	sext.w	a4,a4	# tmp236, tmp232
	sext.w	a5,a5	# tmp237, tmp234
	beq	a4,a5,.L8	#, tmp236, tmp237,
# problem34.c:20:             int temp = third[i];
	lw	a5,-44(s0)		# _22, i
	slli	a5,a5,2	#, _23, _22
	ld	a4,-24(s0)		# tmp238, third
	add	a5,a4,a5	# _23, _24, tmp238
# problem34.c:20:             int temp = third[i];
	lw	a5,0(a5)		# tmp239, *_24
	sw	a5,-28(s0)	# tmp239, temp
# problem34.c:21:             third[i] = third[min_idx];
	lw	a5,-32(s0)		# _25, min_idx
	slli	a5,a5,2	#, _26, _25
	ld	a4,-24(s0)		# tmp240, third
	add	a4,a4,a5	# _26, _27, tmp240
# problem34.c:21:             third[i] = third[min_idx];
	lw	a5,-44(s0)		# _28, i
	slli	a5,a5,2	#, _29, _28
	ld	a3,-24(s0)		# tmp241, third
	add	a5,a3,a5	# _29, _30, tmp241
# problem34.c:21:             third[i] = third[min_idx];
	lw	a4,0(a4)		# _31, *_27
# problem34.c:21:             third[i] = third[min_idx];
	sw	a4,0(a5)	# _31, *_30
# problem34.c:22:             third[min_idx] = temp;
	lw	a5,-32(s0)		# _32, min_idx
	slli	a5,a5,2	#, _33, _32
	ld	a4,-24(s0)		# tmp242, third
	add	a5,a4,a5	# _33, _34, tmp242
# problem34.c:22:             third[min_idx] = temp;
	lw	a4,-28(s0)		# tmp243, temp
	sw	a4,0(a5)	# tmp243, *_34
.L8:
# problem34.c:13:     for (i = 0; i < third_size - 1; i++) {
	lw	a5,-44(s0)		# tmp246, i
	addiw	a5,a5,1	#, tmp244, tmp245
	sw	a5,-44(s0)	# tmp244, i
.L4:
# problem34.c:13:     for (i = 0; i < third_size - 1; i++) {
	lw	a5,-36(s0)		# tmp249, third_size
	addiw	a5,a5,-1	#, tmp247, tmp248
	sext.w	a4,a5	# _35, tmp247
# problem34.c:13:     for (i = 0; i < third_size - 1; i++) {
	lw	a5,-44(s0)		# tmp251, i
	sext.w	a5,a5	# tmp252, tmp250
	blt	a5,a4,.L9	#, tmp252, tmp253,
# problem34.c:26:     for (i = 0; i < size; i++) {
	sw	zero,-44(s0)	#, i
# problem34.c:26:     for (i = 0; i < size; i++) {
	j	.L10		#
.L13:
# problem34.c:27:         if (i % 3 == 0) {
	lw	a5,-44(s0)		# tmp256, i
	mv	a4,a5	# tmp255, tmp256
	li	a5,3		# tmp258,
	remw	a5,a4,a5	# tmp258, tmp257, tmp255
	sext.w	a5,a5	# _36, tmp257
# problem34.c:27:         if (i % 3 == 0) {
	bne	a5,zero,.L11	#, _36,,
# problem34.c:28:             out[i] = third[i / 3];
	lw	a5,-44(s0)		# tmp261, i
	mv	a4,a5	# tmp260, tmp261
	li	a5,3		# tmp263,
	divw	a5,a4,a5	# tmp263, tmp262, tmp260
	sext.w	a5,a5	# _37, tmp262
# problem34.c:28:             out[i] = third[i / 3];
	slli	a5,a5,2	#, _39, _38
	ld	a4,-24(s0)		# tmp264, third
	add	a4,a4,a5	# _39, _40, tmp264
# problem34.c:28:             out[i] = third[i / 3];
	lw	a5,-44(s0)		# _41, i
	slli	a5,a5,2	#, _42, _41
	ld	a3,-72(s0)		# tmp265, out
	add	a5,a3,a5	# _42, _43, tmp265
# problem34.c:28:             out[i] = third[i / 3];
	lw	a4,0(a4)		# _44, *_40
# problem34.c:28:             out[i] = third[i / 3];
	sw	a4,0(a5)	# _44, *_43
	j	.L12		#
.L11:
# problem34.c:30:             out[i] = l[i];
	lw	a5,-44(s0)		# _45, i
	slli	a5,a5,2	#, _46, _45
	ld	a4,-56(s0)		# tmp266, l
	add	a4,a4,a5	# _46, _47, tmp266
# problem34.c:30:             out[i] = l[i];
	lw	a5,-44(s0)		# _48, i
	slli	a5,a5,2	#, _49, _48
	ld	a3,-72(s0)		# tmp267, out
	add	a5,a3,a5	# _49, _50, tmp267
# problem34.c:30:             out[i] = l[i];
	lw	a4,0(a4)		# _51, *_47
# problem34.c:30:             out[i] = l[i];
	sw	a4,0(a5)	# _51, *_50
.L12:
# problem34.c:26:     for (i = 0; i < size; i++) {
	lw	a5,-44(s0)		# tmp270, i
	addiw	a5,a5,1	#, tmp268, tmp269
	sw	a5,-44(s0)	# tmp268, i
.L10:
# problem34.c:26:     for (i = 0; i < size; i++) {
	lw	a5,-44(s0)		# tmp272, i
	mv	a4,a5	# tmp271, tmp272
	lw	a5,-60(s0)		# tmp274, size
	sext.w	a4,a4	# tmp275, tmp271
	sext.w	a5,a5	# tmp276, tmp273
	blt	a4,a5,.L13	#, tmp275, tmp276,
# problem34.c:34:     free(third);
	ld	a0,-24(s0)		#, third
	call	free@plt	#
# problem34.c:35: }
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
	mv	a5,a2	# tmp144, size
	sw	a5,-52(s0)	# tmp145, size
# problem34.c:43:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem34.c:43:     for (int i = 0; i < size; i++) {
	j	.L15		#
.L18:
# problem34.c:44:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp146, a
	add	a5,a4,a5	# _2, _3, tmp146
	lw	a3,0(a5)		# _4, *_3
# problem34.c:44:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp147, b
	add	a5,a4,a5	# _6, _7, tmp147
	lw	a5,0(a5)		# _8, *_7
# problem34.c:44:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp148, _4
	beq	a4,a5,.L16	#, tmp148, tmp149,
# problem34.c:44:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem34.c:44:         if (a[i] != b[i]) return 0;
	j	.L17		#
.L16:
# problem34.c:43:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp152, i
	addiw	a5,a5,1	#, tmp150, tmp151
	sw	a5,-20(s0)	# tmp150, i
.L15:
# problem34.c:43:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp154, i
	mv	a4,a5	# tmp153, tmp154
	lw	a5,-52(s0)		# tmp156, size
	sext.w	a4,a4	# tmp157, tmp153
	sext.w	a5,a5	# tmp158, tmp155
	blt	a4,a5,.L18	#, tmp157, tmp158,
# problem34.c:46:     return 1;
	li	a5,1		# _10,
.L17:
# problem34.c:47: }
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
.LC10:
	.string	"problem34.c"
	.align	3
.LC11:
	.string	"issame(result1, result1, 3)"
	.align	3
.LC12:
	.string	"issame(result2, result2, 11)"
	.align	3
.LC13:
	.string	"issame(result3, result3, 10)"
	.align	3
.LC14:
	.string	"issame(result4, correct4, 7)"
	.align	3
.LC15:
	.string	"issame(result5, correct5, 7)"
	.align	3
.LC16:
	.string	"issame(result6, correct6, 7)"
	.align	3
.LC17:
	.string	"issame(result7, correct7, 8)"
	.align	3
.LC18:
	.string	"All tests passed!"
	.align	3
.LC0:
	.word	5
	.word	3
	.word	-5
	.word	2
	.word	-3
	.word	3
	.word	9
	.word	0
	.word	123
	.word	1
	.word	-10
	.align	3
.LC1:
	.word	5
	.word	8
	.word	-12
	.word	4
	.word	23
	.word	2
	.word	3
	.word	11
	.word	12
	.word	-10
	.align	3
.LC2:
	.word	5
	.word	6
	.word	3
	.word	4
	.word	8
	.word	9
	.word	2
	.align	3
.LC3:
	.word	2
	.word	6
	.word	3
	.word	4
	.word	8
	.word	9
	.word	5
	.align	3
.LC4:
	.word	5
	.word	8
	.word	3
	.word	4
	.word	6
	.word	9
	.word	2
	.align	3
.LC5:
	.word	2
	.word	8
	.word	3
	.word	4
	.word	6
	.word	9
	.word	5
	.align	3
.LC6:
	.word	5
	.word	6
	.word	9
	.word	4
	.word	8
	.word	3
	.word	2
	.align	3
.LC7:
	.word	2
	.word	6
	.word	9
	.word	4
	.word	8
	.word	3
	.word	5
	.align	3
.LC8:
	.word	5
	.word	6
	.word	3
	.word	4
	.word	8
	.word	9
	.word	2
	.word	1
	.align	3
.LC9:
	.word	2
	.word	6
	.word	3
	.word	4
	.word	8
	.word	9
	.word	5
	.word	1
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-624	#,,
	.cfi_def_cfa_offset 624
	sd	ra,616(sp)	#,
	sd	s0,608(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,624	#,,
	.cfi_def_cfa 8, 0
# problem34.c:49: int main() {
	la	a5,__stack_chk_guard		# tmp143,
	ld	a4, 0(a5)	# tmp238, __stack_chk_guard
	sd	a4, -24(s0)	# tmp238, D.3357
	li	a4, 0	# tmp238
# problem34.c:50:     int test1[] = {1, 2, 3};
	li	a5,1		# tmp144,
	sw	a5,-616(s0)	# tmp144, test1[0]
	li	a5,2		# tmp145,
	sw	a5,-612(s0)	# tmp145, test1[1]
	li	a5,3		# tmp146,
	sw	a5,-608(s0)	# tmp146, test1[2]
# problem34.c:52:     func0(test1, 3, result1);
	addi	a4,s0,-600	#, tmp147,
	addi	a5,s0,-616	#, tmp148,
	mv	a2,a4	#, tmp147
	li	a1,3		#,
	mv	a0,a5	#, tmp148
	call	func0		#
# problem34.c:53:     assert(issame(result1, result1, 3));
	addi	a4,s0,-600	#, tmp149,
	addi	a5,s0,-600	#, tmp150,
	li	a2,3		#,
	mv	a1,a4	#, tmp149
	mv	a0,a5	#, tmp150
	call	issame		#
	mv	a5,a0	# tmp151,
# problem34.c:53:     assert(issame(result1, result1, 3));
	bne	a5,zero,.L20	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,53		#,
	lla	a1,.LC10	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L20:
# problem34.c:55:     int test2[] = {5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10};
	lla	a5,.LC0	# tmp152,
	ld	a0,0(a5)		# tmp153,
	ld	a1,8(a5)		# tmp154,
	ld	a2,16(a5)		# tmp155,
	ld	a3,24(a5)		# tmp156,
	ld	a4,32(a5)		# tmp157,
	sd	a0,-120(s0)	# tmp153, test2
	sd	a1,-112(s0)	# tmp154, test2
	sd	a2,-104(s0)	# tmp155, test2
	sd	a3,-96(s0)	# tmp156, test2
	sd	a4,-88(s0)	# tmp157, test2
	lw	a5,40(a5)		# tmp158,
	sw	a5,-80(s0)	# tmp158, test2
# problem34.c:57:     func0(test2, 11, result2);
	addi	a4,s0,-72	#, tmp159,
	addi	a5,s0,-120	#, tmp160,
	mv	a2,a4	#, tmp159
	li	a1,11		#,
	mv	a0,a5	#, tmp160
	call	func0		#
# problem34.c:58:     assert(issame(result2, result2, 11));
	addi	a4,s0,-72	#, tmp161,
	addi	a5,s0,-72	#, tmp162,
	li	a2,11		#,
	mv	a1,a4	#, tmp161
	mv	a0,a5	#, tmp162
	call	issame		#
	mv	a5,a0	# tmp163,
# problem34.c:58:     assert(issame(result2, result2, 11));
	bne	a5,zero,.L21	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,58		#,
	lla	a1,.LC10	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L21:
# problem34.c:60:     int test3[] = {5, 8, -12, 4, 23, 2, 3, 11, 12, -10};
	lla	a5,.LC1	# tmp164,
	ld	a1,0(a5)		# tmp165,
	ld	a2,8(a5)		# tmp166,
	ld	a3,16(a5)		# tmp167,
	ld	a4,24(a5)		# tmp168,
	ld	a5,32(a5)		# tmp169,
	sd	a1,-200(s0)	# tmp165, test3
	sd	a2,-192(s0)	# tmp166, test3
	sd	a3,-184(s0)	# tmp167, test3
	sd	a4,-176(s0)	# tmp168, test3
	sd	a5,-168(s0)	# tmp169, test3
# problem34.c:62:     func0(test3, 10, result3);
	addi	a4,s0,-160	#, tmp170,
	addi	a5,s0,-200	#, tmp171,
	mv	a2,a4	#, tmp170
	li	a1,10		#,
	mv	a0,a5	#, tmp171
	call	func0		#
# problem34.c:63:     assert(issame(result3, result3, 10));
	addi	a4,s0,-160	#, tmp172,
	addi	a5,s0,-160	#, tmp173,
	li	a2,10		#,
	mv	a1,a4	#, tmp172
	mv	a0,a5	#, tmp173
	call	issame		#
	mv	a5,a0	# tmp174,
# problem34.c:63:     assert(issame(result3, result3, 10));
	bne	a5,zero,.L22	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,63		#,
	lla	a1,.LC10	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L22:
# problem34.c:65:     int test4[] = {5, 6, 3, 4, 8, 9, 2};
	lla	a5,.LC2	# tmp175,
	ld	a2,0(a5)		# tmp176,
	ld	a3,8(a5)		# tmp177,
	ld	a4,16(a5)		# tmp178,
	sd	a2,-584(s0)	# tmp176, test4
	sd	a3,-576(s0)	# tmp177, test4
	sd	a4,-568(s0)	# tmp178, test4
	lw	a5,24(a5)		# tmp179,
	sw	a5,-560(s0)	# tmp179, test4
# problem34.c:66:     int correct4[] = {2, 6, 3, 4, 8, 9, 5};
	lla	a5,.LC3	# tmp180,
	ld	a2,0(a5)		# tmp181,
	ld	a3,8(a5)		# tmp182,
	ld	a4,16(a5)		# tmp183,
	sd	a2,-552(s0)	# tmp181, correct4
	sd	a3,-544(s0)	# tmp182, correct4
	sd	a4,-536(s0)	# tmp183, correct4
	lw	a5,24(a5)		# tmp184,
	sw	a5,-528(s0)	# tmp184, correct4
# problem34.c:68:     func0(test4, 7, result4);
	addi	a4,s0,-520	#, tmp185,
	addi	a5,s0,-584	#, tmp186,
	mv	a2,a4	#, tmp185
	li	a1,7		#,
	mv	a0,a5	#, tmp186
	call	func0		#
# problem34.c:69:     assert(issame(result4, correct4, 7));
	addi	a4,s0,-552	#, tmp187,
	addi	a5,s0,-520	#, tmp188,
	li	a2,7		#,
	mv	a1,a4	#, tmp187
	mv	a0,a5	#, tmp188
	call	issame		#
	mv	a5,a0	# tmp189,
# problem34.c:69:     assert(issame(result4, correct4, 7));
	bne	a5,zero,.L23	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,69		#,
	lla	a1,.LC10	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L23:
# problem34.c:71:     int test5[] = {5, 8, 3, 4, 6, 9, 2};
	lla	a5,.LC4	# tmp190,
	ld	a2,0(a5)		# tmp191,
	ld	a3,8(a5)		# tmp192,
	ld	a4,16(a5)		# tmp193,
	sd	a2,-488(s0)	# tmp191, test5
	sd	a3,-480(s0)	# tmp192, test5
	sd	a4,-472(s0)	# tmp193, test5
	lw	a5,24(a5)		# tmp194,
	sw	a5,-464(s0)	# tmp194, test5
# problem34.c:72:     int correct5[] = {2, 8, 3, 4, 6, 9, 5};
	lla	a5,.LC5	# tmp195,
	ld	a2,0(a5)		# tmp196,
	ld	a3,8(a5)		# tmp197,
	ld	a4,16(a5)		# tmp198,
	sd	a2,-456(s0)	# tmp196, correct5
	sd	a3,-448(s0)	# tmp197, correct5
	sd	a4,-440(s0)	# tmp198, correct5
	lw	a5,24(a5)		# tmp199,
	sw	a5,-432(s0)	# tmp199, correct5
# problem34.c:74:     func0(test5, 7, result5);
	addi	a4,s0,-424	#, tmp200,
	addi	a5,s0,-488	#, tmp201,
	mv	a2,a4	#, tmp200
	li	a1,7		#,
	mv	a0,a5	#, tmp201
	call	func0		#
# problem34.c:75:     assert(issame(result5, correct5, 7));
	addi	a4,s0,-456	#, tmp202,
	addi	a5,s0,-424	#, tmp203,
	li	a2,7		#,
	mv	a1,a4	#, tmp202
	mv	a0,a5	#, tmp203
	call	issame		#
	mv	a5,a0	# tmp204,
# problem34.c:75:     assert(issame(result5, correct5, 7));
	bne	a5,zero,.L24	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,75		#,
	lla	a1,.LC10	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L24:
# problem34.c:77:     int test6[] = {5, 6, 9, 4, 8, 3, 2};
	lla	a5,.LC6	# tmp205,
	ld	a2,0(a5)		# tmp206,
	ld	a3,8(a5)		# tmp207,
	ld	a4,16(a5)		# tmp208,
	sd	a2,-392(s0)	# tmp206, test6
	sd	a3,-384(s0)	# tmp207, test6
	sd	a4,-376(s0)	# tmp208, test6
	lw	a5,24(a5)		# tmp209,
	sw	a5,-368(s0)	# tmp209, test6
# problem34.c:78:     int correct6[] = {2, 6, 9, 4, 8, 3, 5};
	lla	a5,.LC7	# tmp210,
	ld	a2,0(a5)		# tmp211,
	ld	a3,8(a5)		# tmp212,
	ld	a4,16(a5)		# tmp213,
	sd	a2,-360(s0)	# tmp211, correct6
	sd	a3,-352(s0)	# tmp212, correct6
	sd	a4,-344(s0)	# tmp213, correct6
	lw	a5,24(a5)		# tmp214,
	sw	a5,-336(s0)	# tmp214, correct6
# problem34.c:80:     func0(test6, 7, result6);
	addi	a4,s0,-328	#, tmp215,
	addi	a5,s0,-392	#, tmp216,
	mv	a2,a4	#, tmp215
	li	a1,7		#,
	mv	a0,a5	#, tmp216
	call	func0		#
# problem34.c:81:     assert(issame(result6, correct6, 7));
	addi	a4,s0,-360	#, tmp217,
	addi	a5,s0,-328	#, tmp218,
	li	a2,7		#,
	mv	a1,a4	#, tmp217
	mv	a0,a5	#, tmp218
	call	issame		#
	mv	a5,a0	# tmp219,
# problem34.c:81:     assert(issame(result6, correct6, 7));
	bne	a5,zero,.L25	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,81		#,
	lla	a1,.LC10	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L25:
# problem34.c:83:     int test7[] = {5, 6, 3, 4, 8, 9, 2, 1};
	lla	a5,.LC8	# tmp220,
	ld	a2,0(a5)		# tmp221,
	ld	a3,8(a5)		# tmp222,
	ld	a4,16(a5)		# tmp223,
	ld	a5,24(a5)		# tmp224,
	sd	a2,-296(s0)	# tmp221, test7
	sd	a3,-288(s0)	# tmp222, test7
	sd	a4,-280(s0)	# tmp223, test7
	sd	a5,-272(s0)	# tmp224, test7
# problem34.c:84:     int correct7[] = {2, 6, 3, 4, 8, 9, 5, 1};
	lla	a5,.LC9	# tmp225,
	ld	a2,0(a5)		# tmp226,
	ld	a3,8(a5)		# tmp227,
	ld	a4,16(a5)		# tmp228,
	ld	a5,24(a5)		# tmp229,
	sd	a2,-264(s0)	# tmp226, correct7
	sd	a3,-256(s0)	# tmp227, correct7
	sd	a4,-248(s0)	# tmp228, correct7
	sd	a5,-240(s0)	# tmp229, correct7
# problem34.c:86:     func0(test7, 8, result7);
	addi	a4,s0,-232	#, tmp230,
	addi	a5,s0,-296	#, tmp231,
	mv	a2,a4	#, tmp230
	li	a1,8		#,
	mv	a0,a5	#, tmp231
	call	func0		#
# problem34.c:87:     assert(issame(result7, correct7, 8));
	addi	a4,s0,-264	#, tmp232,
	addi	a5,s0,-232	#, tmp233,
	li	a2,8		#,
	mv	a1,a4	#, tmp232
	mv	a0,a5	#, tmp233
	call	issame		#
	mv	a5,a0	# tmp234,
# problem34.c:87:     assert(issame(result7, correct7, 8));
	bne	a5,zero,.L26	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,87		#,
	lla	a1,.LC10	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L26:
# problem34.c:89:     printf("All tests passed!\n");
	lla	a0,.LC18	#,
	call	puts@plt	#
# problem34.c:90:     return 0;
	li	a5,0		# _44,
# problem34.c:91: }
	mv	a4,a5	# <retval>, _44
	la	a5,__stack_chk_guard		# tmp236,
	ld	a3, -24(s0)	# tmp239, D.3357
	ld	a5, 0(a5)	# tmp237, __stack_chk_guard
	xor	a5, a3, a5	# tmp237, tmp239
	li	a3, 0	# tmp239
	beq	a5,zero,.L28	#, tmp237,,
	call	__stack_chk_fail@plt	#
.L28:
	mv	a0,a4	#, <retval>
	ld	ra,616(sp)		#,
	.cfi_restore 1
	ld	s0,608(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 624
	addi	sp,sp,624	#,,
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
