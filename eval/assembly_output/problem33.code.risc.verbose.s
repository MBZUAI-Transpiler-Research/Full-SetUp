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
	sd	a0,-72(s0)	# xs, xs
	mv	a5,a1	# tmp155, size
	sw	a5,-76(s0)	# tmp156, size
# code.c:5:     double ans = 0.0;
	fmv.d.x	fa5,zero	# tmp157,
	fsd	fa5,-48(s0)	# tmp157, ans
# code.c:9:     value = xs[0];
	ld	a5,-72(s0)		# tmp158, xs
	fld	fa5,0(a5)	# tmp159, *xs_36(D)
	fsd	fa5,-40(s0)	# tmp159, value
# code.c:10:     for (i = 1; i < size; i++) {
	li	a5,1		# tmp160,
	sw	a5,-64(s0)	# tmp160, i
# code.c:10:     for (i = 1; i < size; i++) {
	j	.L2		#
.L5:
# code.c:11:         x_pow = 1.0;
	lla	a5,.LC0	# tmp161,
	fld	fa5,0(a5)	# tmp162,
	fsd	fa5,-24(s0)	# tmp162, x_pow
# code.c:12:         for (int j = 0; j < i; j++) {
	sw	zero,-60(s0)	#, j
# code.c:12:         for (int j = 0; j < i; j++) {
	j	.L3		#
.L4:
# code.c:13:             x_pow *= ans;
	fld	fa4,-24(s0)	# tmp164, x_pow
	fld	fa5,-48(s0)	# tmp165, ans
	fmul.d	fa5,fa4,fa5	# tmp163, tmp164, tmp165
	fsd	fa5,-24(s0)	# tmp163, x_pow
# code.c:12:         for (int j = 0; j < i; j++) {
	lw	a5,-60(s0)		# tmp168, j
	addiw	a5,a5,1	#, tmp166, tmp167
	sw	a5,-60(s0)	# tmp166, j
.L3:
# code.c:12:         for (int j = 0; j < i; j++) {
	lw	a5,-60(s0)		# tmp170, j
	mv	a4,a5	# tmp169, tmp170
	lw	a5,-64(s0)		# tmp172, i
	sext.w	a4,a4	# tmp173, tmp169
	sext.w	a5,a5	# tmp174, tmp171
	blt	a4,a5,.L4	#, tmp173, tmp174,
# code.c:15:         value += xs[i] * x_pow;
	lw	a5,-64(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-72(s0)		# tmp175, xs
	add	a5,a4,a5	# _2, _3, tmp175
	fld	fa4,0(a5)	# _4, *_3
# code.c:15:         value += xs[i] * x_pow;
	fld	fa5,-24(s0)	# tmp176, x_pow
	fmul.d	fa5,fa4,fa5	# _5, _4, tmp176
# code.c:15:         value += xs[i] * x_pow;
	fld	fa4,-40(s0)	# tmp178, value
	fadd.d	fa5,fa4,fa5	# tmp177, tmp178, _5
	fsd	fa5,-40(s0)	# tmp177, value
# code.c:10:     for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp181, i
	addiw	a5,a5,1	#, tmp179, tmp180
	sw	a5,-64(s0)	# tmp179, i
.L2:
# code.c:10:     for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp183, i
	mv	a4,a5	# tmp182, tmp183
	lw	a5,-76(s0)		# tmp185, size
	sext.w	a4,a4	# tmp186, tmp182
	sext.w	a5,a5	# tmp187, tmp184
	blt	a4,a5,.L5	#, tmp186, tmp187,
# code.c:18:     while (fabs(value) > 1e-6) {
	j	.L6		#
.L15:
# code.c:19:         driv = 0.0;
	fmv.d.x	fa5,zero	# tmp188,
	fsd	fa5,-32(s0)	# tmp188, driv
# code.c:20:         for (i = 1; i < size; i++) {
	li	a5,1		# tmp189,
	sw	a5,-64(s0)	# tmp189, i
# code.c:20:         for (i = 1; i < size; i++) {
	j	.L7		#
.L10:
# code.c:21:             x_pow = 1.0;
	lla	a5,.LC0	# tmp190,
	fld	fa5,0(a5)	# tmp191,
	fsd	fa5,-24(s0)	# tmp191, x_pow
# code.c:22:             for (int j = 1; j < i; j++) {
	li	a5,1		# tmp192,
	sw	a5,-56(s0)	# tmp192, j
# code.c:22:             for (int j = 1; j < i; j++) {
	j	.L8		#
.L9:
# code.c:23:                 x_pow *= ans;
	fld	fa4,-24(s0)	# tmp194, x_pow
	fld	fa5,-48(s0)	# tmp195, ans
	fmul.d	fa5,fa4,fa5	# tmp193, tmp194, tmp195
	fsd	fa5,-24(s0)	# tmp193, x_pow
# code.c:22:             for (int j = 1; j < i; j++) {
	lw	a5,-56(s0)		# tmp198, j
	addiw	a5,a5,1	#, tmp196, tmp197
	sw	a5,-56(s0)	# tmp196, j
.L8:
# code.c:22:             for (int j = 1; j < i; j++) {
	lw	a5,-56(s0)		# tmp200, j
	mv	a4,a5	# tmp199, tmp200
	lw	a5,-64(s0)		# tmp202, i
	sext.w	a4,a4	# tmp203, tmp199
	sext.w	a5,a5	# tmp204, tmp201
	blt	a4,a5,.L9	#, tmp203, tmp204,
# code.c:25:             driv += i * xs[i] * x_pow;
	lw	a5,-64(s0)		# tmp206, i
	fcvt.d.w	fa4,a5	# _6, tmp205
# code.c:25:             driv += i * xs[i] * x_pow;
	lw	a5,-64(s0)		# _7, i
	slli	a5,a5,3	#, _8, _7
	ld	a4,-72(s0)		# tmp207, xs
	add	a5,a4,a5	# _8, _9, tmp207
	fld	fa5,0(a5)	# _10, *_9
# code.c:25:             driv += i * xs[i] * x_pow;
	fmul.d	fa4,fa4,fa5	# _11, _6, _10
# code.c:25:             driv += i * xs[i] * x_pow;
	fld	fa5,-24(s0)	# tmp208, x_pow
	fmul.d	fa5,fa4,fa5	# _12, _11, tmp208
# code.c:25:             driv += i * xs[i] * x_pow;
	fld	fa4,-32(s0)	# tmp210, driv
	fadd.d	fa5,fa4,fa5	# tmp209, tmp210, _12
	fsd	fa5,-32(s0)	# tmp209, driv
# code.c:20:         for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp213, i
	addiw	a5,a5,1	#, tmp211, tmp212
	sw	a5,-64(s0)	# tmp211, i
.L7:
# code.c:20:         for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp215, i
	mv	a4,a5	# tmp214, tmp215
	lw	a5,-76(s0)		# tmp217, size
	sext.w	a4,a4	# tmp218, tmp214
	sext.w	a5,a5	# tmp219, tmp216
	blt	a4,a5,.L10	#, tmp218, tmp219,
# code.c:27:         ans = ans - value / driv;
	fld	fa4,-40(s0)	# tmp220, value
	fld	fa5,-32(s0)	# tmp221, driv
	fdiv.d	fa5,fa4,fa5	# _13, tmp220, tmp221
# code.c:27:         ans = ans - value / driv;
	fld	fa4,-48(s0)	# tmp223, ans
	fsub.d	fa5,fa4,fa5	# tmp222, tmp223, _13
	fsd	fa5,-48(s0)	# tmp222, ans
# code.c:29:         value = xs[0];
	ld	a5,-72(s0)		# tmp224, xs
	fld	fa5,0(a5)	# tmp225, *xs_36(D)
	fsd	fa5,-40(s0)	# tmp225, value
# code.c:30:         for (i = 1; i < size; i++) {
	li	a5,1		# tmp226,
	sw	a5,-64(s0)	# tmp226, i
# code.c:30:         for (i = 1; i < size; i++) {
	j	.L11		#
.L14:
# code.c:31:             x_pow = 1.0;
	lla	a5,.LC0	# tmp227,
	fld	fa5,0(a5)	# tmp228,
	fsd	fa5,-24(s0)	# tmp228, x_pow
# code.c:32:             for (int j = 0; j < i; j++) {
	sw	zero,-52(s0)	#, j
# code.c:32:             for (int j = 0; j < i; j++) {
	j	.L12		#
.L13:
# code.c:33:                 x_pow *= ans;
	fld	fa4,-24(s0)	# tmp230, x_pow
	fld	fa5,-48(s0)	# tmp231, ans
	fmul.d	fa5,fa4,fa5	# tmp229, tmp230, tmp231
	fsd	fa5,-24(s0)	# tmp229, x_pow
# code.c:32:             for (int j = 0; j < i; j++) {
	lw	a5,-52(s0)		# tmp234, j
	addiw	a5,a5,1	#, tmp232, tmp233
	sw	a5,-52(s0)	# tmp232, j
.L12:
# code.c:32:             for (int j = 0; j < i; j++) {
	lw	a5,-52(s0)		# tmp236, j
	mv	a4,a5	# tmp235, tmp236
	lw	a5,-64(s0)		# tmp238, i
	sext.w	a4,a4	# tmp239, tmp235
	sext.w	a5,a5	# tmp240, tmp237
	blt	a4,a5,.L13	#, tmp239, tmp240,
# code.c:35:             value += xs[i] * x_pow;
	lw	a5,-64(s0)		# _14, i
	slli	a5,a5,3	#, _15, _14
	ld	a4,-72(s0)		# tmp241, xs
	add	a5,a4,a5	# _15, _16, tmp241
	fld	fa4,0(a5)	# _17, *_16
# code.c:35:             value += xs[i] * x_pow;
	fld	fa5,-24(s0)	# tmp242, x_pow
	fmul.d	fa5,fa4,fa5	# _18, _17, tmp242
# code.c:35:             value += xs[i] * x_pow;
	fld	fa4,-40(s0)	# tmp244, value
	fadd.d	fa5,fa4,fa5	# tmp243, tmp244, _18
	fsd	fa5,-40(s0)	# tmp243, value
# code.c:30:         for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp247, i
	addiw	a5,a5,1	#, tmp245, tmp246
	sw	a5,-64(s0)	# tmp245, i
.L11:
# code.c:30:         for (i = 1; i < size; i++) {
	lw	a5,-64(s0)		# tmp249, i
	mv	a4,a5	# tmp248, tmp249
	lw	a5,-76(s0)		# tmp251, size
	sext.w	a4,a4	# tmp252, tmp248
	sext.w	a5,a5	# tmp253, tmp250
	blt	a4,a5,.L14	#, tmp252, tmp253,
.L6:
# code.c:18:     while (fabs(value) > 1e-6) {
	fld	fa5,-40(s0)	# tmp254, value
	fabs.d	fa4,fa5	# _19, tmp254
# code.c:18:     while (fabs(value) > 1e-6) {
	lla	a5,.LC1	# tmp256,
	fld	fa5,0(a5)	# tmp255,
	fgt.d	a5,fa4,fa5	#, tmp257, _19, tmp255
	bne	a5,zero,.L15	#, tmp257,,
# code.c:39:     return ans;
	fld	fa5,-48(s0)	# _40, ans
# code.c:40: }
	fmv.d	fa0,fa5	#, <retval>
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
	.align	3
.LC0:
	.word	0
	.word	1072693248
	.align	3
.LC1:
	.word	-1598689907
	.word	1051772663
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
