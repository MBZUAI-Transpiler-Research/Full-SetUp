	.file	"code.c"
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
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# l, l
	mv	a5,a1	# tmp174, size
	sw	a5,-44(s0)	# tmp175, size
# eval/problem48//code.c:6:     for (int i = 0; i < size; i++) {
	sw	zero,-28(s0)	#, i
# eval/problem48//code.c:6:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L7:
# eval/problem48//code.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-28(s0)		# tmp178, i
	addiw	a5,a5,1	#, tmp176, tmp177
	sw	a5,-24(s0)	# tmp176, j
# eval/problem48//code.c:7:         for (int j = i + 1; j < size; j++) {
	j	.L3		#
.L6:
# eval/problem48//code.c:8:             if (l[i] > l[j]) {
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp179, l
	add	a5,a4,a5	# _2, _3, tmp179
	flw	fa4,0(a5)	# _4, *_3
# eval/problem48//code.c:8:             if (l[i] > l[j]) {
	lw	a5,-24(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp180, l
	add	a5,a4,a5	# _6, _7, tmp180
	flw	fa5,0(a5)	# _8, *_7
# eval/problem48//code.c:8:             if (l[i] > l[j]) {
	fgt.s	a5,fa4,fa5	#, tmp181, _4, _8
	beq	a5,zero,.L4	#, tmp181,,
# eval/problem48//code.c:9:                 float temp = l[i];
	lw	a5,-28(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a4,-40(s0)		# tmp182, l
	add	a5,a4,a5	# _10, _11, tmp182
# eval/problem48//code.c:9:                 float temp = l[i];
	flw	fa5,0(a5)	# tmp183, *_11
	fsw	fa5,-20(s0)	# tmp183, temp
# eval/problem48//code.c:10:                 l[i] = l[j];
	lw	a5,-24(s0)		# _12, j
	slli	a5,a5,2	#, _13, _12
	ld	a4,-40(s0)		# tmp184, l
	add	a4,a4,a5	# _13, _14, tmp184
# eval/problem48//code.c:10:                 l[i] = l[j];
	lw	a5,-28(s0)		# _15, i
	slli	a5,a5,2	#, _16, _15
	ld	a3,-40(s0)		# tmp185, l
	add	a5,a3,a5	# _16, _17, tmp185
# eval/problem48//code.c:10:                 l[i] = l[j];
	flw	fa5,0(a4)	# _18, *_14
# eval/problem48//code.c:10:                 l[i] = l[j];
	fsw	fa5,0(a5)	# _18, *_17
# eval/problem48//code.c:11:                 l[j] = temp;
	lw	a5,-24(s0)		# _19, j
	slli	a5,a5,2	#, _20, _19
	ld	a4,-40(s0)		# tmp186, l
	add	a5,a4,a5	# _20, _21, tmp186
# eval/problem48//code.c:11:                 l[j] = temp;
	flw	fa5,-20(s0)	# tmp187, temp
	fsw	fa5,0(a5)	# tmp187, *_21
.L4:
# eval/problem48//code.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-24(s0)		# tmp190, j
	addiw	a5,a5,1	#, tmp188, tmp189
	sw	a5,-24(s0)	# tmp188, j
.L3:
# eval/problem48//code.c:7:         for (int j = i + 1; j < size; j++) {
	lw	a5,-24(s0)		# tmp192, j
	mv	a4,a5	# tmp191, tmp192
	lw	a5,-44(s0)		# tmp194, size
	sext.w	a4,a4	# tmp195, tmp191
	sext.w	a5,a5	# tmp196, tmp193
	blt	a4,a5,.L6	#, tmp195, tmp196,
# eval/problem48//code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp199, i
	addiw	a5,a5,1	#, tmp197, tmp198
	sw	a5,-28(s0)	# tmp197, i
.L2:
# eval/problem48//code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp201, i
	mv	a4,a5	# tmp200, tmp201
	lw	a5,-44(s0)		# tmp203, size
	sext.w	a4,a4	# tmp204, tmp200
	sext.w	a5,a5	# tmp205, tmp202
	blt	a4,a5,.L7	#, tmp204, tmp205,
# eval/problem48//code.c:15:     if (size % 2 == 1) return l[size / 2];
	lw	a5,-44(s0)		# tmp208, size
	mv	a4,a5	# tmp207, tmp208
	sraiw	a5,a4,31	#, tmp209, tmp207
	srliw	a5,a5,31	#, tmp210, tmp209
	addw	a4,a4,a5	# tmp210, tmp211, tmp207
	andi	a4,a4,1	#, tmp212, tmp211
	subw	a5,a4,a5	# tmp213, tmp212, tmp210
	sext.w	a5,a5	# _22, tmp213
# eval/problem48//code.c:15:     if (size % 2 == 1) return l[size / 2];
	mv	a4,a5	# tmp214, _22
	li	a5,1		# tmp215,
	bne	a4,a5,.L8	#, tmp214, tmp215,
# eval/problem48//code.c:15:     if (size % 2 == 1) return l[size / 2];
	lw	a5,-44(s0)		# tmp218, size
	srliw	a4,a5,31	#, tmp219, tmp217
	addw	a5,a4,a5	# tmp217, tmp220, tmp219
	sraiw	a5,a5,1	#, tmp221, tmp220
	sext.w	a5,a5	# _23, tmp221
# eval/problem48//code.c:15:     if (size % 2 == 1) return l[size / 2];
	slli	a5,a5,2	#, _25, _24
	ld	a4,-40(s0)		# tmp222, l
	add	a5,a4,a5	# _25, _26, tmp222
	flw	fa5,0(a5)	# _41, *_26
# eval/problem48//code.c:15:     if (size % 2 == 1) return l[size / 2];
	j	.L9		#
.L8:
# eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	lw	a5,-44(s0)		# tmp225, size
	srliw	a4,a5,31	#, tmp226, tmp224
	addw	a5,a4,a5	# tmp224, tmp227, tmp226
	sraiw	a5,a5,1	#, tmp228, tmp227
	sext.w	a5,a5	# _27, tmp228
# eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	slli	a5,a5,2	#, _29, _28
	ld	a4,-40(s0)		# tmp229, l
	add	a5,a4,a5	# _29, _30, tmp229
	flw	fa4,0(a5)	# _31, *_30
# eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	lw	a5,-44(s0)		# tmp232, size
	srliw	a4,a5,31	#, tmp233, tmp231
	addw	a5,a4,a5	# tmp231, tmp234, tmp233
	sraiw	a5,a5,1	#, tmp235, tmp234
	sext.w	a5,a5	# _32, tmp235
# eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	slli	a5,a5,2	#, _34, _33
	addi	a5,a5,-4	#, _35, _34
	ld	a4,-40(s0)		# tmp236, l
	add	a5,a4,a5	# _35, _36, tmp236
	flw	fa5,0(a5)	# _37, *_36
# eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	fadd.s	fa4,fa4,fa5	# _38, _31, _37
# eval/problem48//code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	lla	a5,.LC0	# tmp238,
	flw	fa5,0(a5)	# tmp237,
	fmul.s	fa5,fa4,fa5	# _41, _38, tmp237
.L9:
# eval/problem48//code.c:17: }
	fmv.s	fa0,fa5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	2
.LC0:
	.word	1056964608
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
