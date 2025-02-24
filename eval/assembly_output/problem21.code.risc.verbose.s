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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# numbers, numbers
	mv	a5,a1	# tmp160, size
	sd	a2,-72(s0)	# out, out
	sw	a5,-60(s0)	# tmp161, size
# code.c:6:     float min_diff = FLT_MAX;
	lla	a5,.LC0	# tmp162,
	flw	fa5,0(a5)	# tmp163,
	fsw	fa5,-36(s0)	# tmp163, min_diff
# code.c:9:     out[0] = numbers[0];
	ld	a5,-56(s0)		# tmp164, numbers
	flw	fa5,0(a5)	# _1, *numbers_38(D)
# code.c:9:     out[0] = numbers[0];
	ld	a5,-72(s0)		# tmp165, out
	fsw	fa5,0(a5)	# _1, *out_39(D)
# code.c:10:     out[1] = numbers[1];
	ld	a5,-72(s0)		# tmp166, out
	addi	a5,a5,4	#, _2, tmp166
# code.c:10:     out[1] = numbers[1];
	ld	a4,-56(s0)		# tmp167, numbers
	flw	fa5,4(a4)	# _3, MEM[(float *)numbers_38(D) + 4B]
	fsw	fa5,0(a5)	# _3, *_2
# code.c:12:     for (i = 0; i < size; i++) {
	sw	zero,-32(s0)	#, i
# code.c:12:     for (i = 0; i < size; i++) {
	j	.L2		#
.L7:
# code.c:13:         for (j = i + 1; j < size; j++) {
	lw	a5,-32(s0)		# tmp170, i
	addiw	a5,a5,1	#, tmp168, tmp169
	sw	a5,-28(s0)	# tmp168, j
# code.c:13:         for (j = i + 1; j < size; j++) {
	j	.L3		#
.L6:
# code.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	lw	a5,-32(s0)		# _4, i
	slli	a5,a5,2	#, _5, _4
	ld	a4,-56(s0)		# tmp171, numbers
	add	a5,a4,a5	# _5, _6, tmp171
	flw	fa4,0(a5)	# _7, *_6
# code.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	lw	a5,-28(s0)		# _8, j
	slli	a5,a5,2	#, _9, _8
	ld	a4,-56(s0)		# tmp172, numbers
	add	a5,a4,a5	# _9, _10, tmp172
	flw	fa5,0(a5)	# _11, *_10
# code.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	fsub.s	fa5,fa4,fa5	# _12, _7, _11
# code.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	fabs.s	fa5,fa5	# tmp173, _12
	fsw	fa5,-20(s0)	# tmp173, diff
# code.c:15:             if (diff < min_diff) {
	flw	fa4,-20(s0)	# tmp174, diff
	flw	fa5,-36(s0)	# tmp175, min_diff
	flt.s	a5,fa4,fa5	#, tmp176, tmp174, tmp175
	beq	a5,zero,.L4	#, tmp176,,
# code.c:16:                 min_diff = diff;
	flw	fa5,-20(s0)	# tmp177, diff
	fsw	fa5,-36(s0)	# tmp177, min_diff
# code.c:17:                 out[0] = numbers[i];
	lw	a5,-32(s0)		# _13, i
	slli	a5,a5,2	#, _14, _13
	ld	a4,-56(s0)		# tmp178, numbers
	add	a5,a4,a5	# _14, _15, tmp178
	flw	fa5,0(a5)	# _16, *_15
# code.c:17:                 out[0] = numbers[i];
	ld	a5,-72(s0)		# tmp179, out
	fsw	fa5,0(a5)	# _16, *out_39(D)
# code.c:18:                 out[1] = numbers[j];
	lw	a5,-28(s0)		# _17, j
	slli	a5,a5,2	#, _18, _17
	ld	a4,-56(s0)		# tmp180, numbers
	add	a4,a4,a5	# _18, _19, tmp180
# code.c:18:                 out[1] = numbers[j];
	ld	a5,-72(s0)		# tmp181, out
	addi	a5,a5,4	#, _20, tmp181
# code.c:18:                 out[1] = numbers[j];
	flw	fa5,0(a4)	# _21, *_19
# code.c:18:                 out[1] = numbers[j];
	fsw	fa5,0(a5)	# _21, *_20
.L4:
# code.c:13:         for (j = i + 1; j < size; j++) {
	lw	a5,-28(s0)		# tmp184, j
	addiw	a5,a5,1	#, tmp182, tmp183
	sw	a5,-28(s0)	# tmp182, j
.L3:
# code.c:13:         for (j = i + 1; j < size; j++) {
	lw	a5,-28(s0)		# tmp186, j
	mv	a4,a5	# tmp185, tmp186
	lw	a5,-60(s0)		# tmp188, size
	sext.w	a4,a4	# tmp189, tmp185
	sext.w	a5,a5	# tmp190, tmp187
	blt	a4,a5,.L6	#, tmp189, tmp190,
# code.c:12:     for (i = 0; i < size; i++) {
	lw	a5,-32(s0)		# tmp193, i
	addiw	a5,a5,1	#, tmp191, tmp192
	sw	a5,-32(s0)	# tmp191, i
.L2:
# code.c:12:     for (i = 0; i < size; i++) {
	lw	a5,-32(s0)		# tmp195, i
	mv	a4,a5	# tmp194, tmp195
	lw	a5,-60(s0)		# tmp197, size
	sext.w	a4,a4	# tmp198, tmp194
	sext.w	a5,a5	# tmp199, tmp196
	blt	a4,a5,.L7	#, tmp198, tmp199,
# code.c:23:     if (out[0] > out[1]) {
	ld	a5,-72(s0)		# tmp200, out
	flw	fa4,0(a5)	# _22, *out_39(D)
# code.c:23:     if (out[0] > out[1]) {
	ld	a5,-72(s0)		# tmp201, out
	addi	a5,a5,4	#, _23, tmp201
	flw	fa5,0(a5)	# _24, *_23
# code.c:23:     if (out[0] > out[1]) {
	fgt.s	a5,fa4,fa5	#, tmp202, _22, _24
	bne	a5,zero,.L11	#, tmp202,,
# code.c:28: }
	j	.L12		#
.L11:
# code.c:24:         float temp = out[0];
	ld	a5,-72(s0)		# tmp203, out
	flw	fa5,0(a5)	# tmp204, *out_39(D)
	fsw	fa5,-24(s0)	# tmp204, temp
# code.c:25:         out[0] = out[1];
	ld	a5,-72(s0)		# tmp205, out
	flw	fa5,4(a5)	# _25, MEM[(float *)out_39(D) + 4B]
	ld	a5,-72(s0)		# tmp206, out
	fsw	fa5,0(a5)	# _25, *out_39(D)
# code.c:26:         out[1] = temp;
	ld	a5,-72(s0)		# tmp207, out
	addi	a5,a5,4	#, _26, tmp207
# code.c:26:         out[1] = temp;
	flw	fa5,-24(s0)	# tmp208, temp
	fsw	fa5,0(a5)	# tmp208, *_26
.L12:
# code.c:28: }
	nop	
	ld	s0,72(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	2
.LC0:
	.word	2139095039
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
