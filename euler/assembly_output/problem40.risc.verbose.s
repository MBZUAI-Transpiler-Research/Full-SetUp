	.file	"problem40.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC2:
	.string	"%d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	fsd	fs0,72(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 40, -24
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
# problem40.c:10: {
	la	a5,__stack_chk_guard		# tmp151,
	ld	a4, 0(a5)	# tmp223, __stack_chk_guard
	sd	a4, -40(s0)	# tmp223, D.3772
	li	a4, 0	# tmp223
# problem40.c:11:   int nth = 1;
	li	a5,1		# tmp152,
	sw	a5,-96(s0)	# tmp152, nth
# problem40.c:14:   int p = 1;
	li	a5,1		# tmp153,
	sw	a5,-84(s0)	# tmp153, p
# problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	li	a5,1		# tmp154,
	sw	a5,-92(s0)	# tmp154, i
# problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	sw	zero,-88(s0)	#, l
# problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	j	.L2		#
.L6:
# problem40.c:17:     int digits = log10(i)+1;
	lw	a5,-92(s0)		# tmp156, i
	fcvt.d.w	fa5,a5	# _1, tmp155
	fmv.d	fa0,fa5	#, _1
	call	log10@plt	#
	fmv.d	fa4,fa0	# _2,
# problem40.c:17:     int digits = log10(i)+1;
	lla	a5,.LC0	# tmp158,
	fld	fa5,0(a5)	# tmp157,
	fadd.d	fa5,fa4,fa5	# _3, _2, tmp157
# problem40.c:17:     int digits = log10(i)+1;
	fcvt.w.d a5,fa5,rtz	# tmp159, _3
	sw	a5,-76(s0)	# tmp159, digits
# problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	sw	zero,-80(s0)	#, j
# problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	j	.L3		#
.L5:
# problem40.c:20:       if (nth == pow(10, l)) {
	lw	a5,-96(s0)		# tmp161, nth
	fcvt.d.w	fs0,a5	# _4, tmp160
# problem40.c:20:       if (nth == pow(10, l)) {
	lw	a5,-88(s0)		# tmp163, l
	fcvt.d.w	fa4,a5	# _5, tmp162
	lla	a5,.LC1	# tmp165,
	fld	fa5,0(a5)	# tmp164,
	fmv.d	fa1,fa4	#, _5
	fmv.d	fa0,fa5	#, tmp164
	call	pow@plt	#
	fmv.d	fa5,fa0	# _6,
# problem40.c:20:       if (nth == pow(10, l)) {
	feq.d	a5,fs0,fa5	#, tmp166, _4, _6
	beq	a5,zero,.L4	#, tmp166,,
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	lw	a5,-76(s0)		# tmp169, digits
	mv	a4,a5	# tmp168, tmp169
	lw	a5,-80(s0)		# tmp171, j
	subw	a5,a4,a5	# tmp167, tmp168, tmp170
	sext.w	a5,a5	# _7, tmp167
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	addiw	a5,a5,-1	#, tmp172, _7
	sext.w	a5,a5	# _8, tmp172
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	fcvt.d.w	fa4,a5	# _9, _8
	lla	a5,.LC1	# tmp174,
	fld	fa5,0(a5)	# tmp173,
	fmv.d	fa1,fa4	#, _9
	fmv.d	fa0,fa5	#, tmp173
	call	pow@plt	#
	fmv.d	fa5,fa0	# _10,
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	fcvt.w.d a5,fa5,rtz	# tmp175, _10
	sext.w	a5,a5	# _11, tmp175
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	lw	a4,-92(s0)		# tmp179, i
	divw	a5,a4,a5	# _11, tmp177, tmp178
	sext.w	a3,a5	# _12, tmp177
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	lw	a5,-88(s0)		# l.0_13, l
	addiw	a4,a5,1	#, tmp180, l.0_13
	sw	a4,-88(s0)	# tmp180, l
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	li	a4,10		# tmp184,
	remw	a4,a3,a4	# tmp184, tmp183, tmp182
	sext.w	a4,a4	# _14, tmp183
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	slli	a5,a5,2	#, tmp185, l.0_13
	addi	a5,a5,-32	#, tmp227, tmp185
	add	a5,a5,s0	#, tmp185, tmp227
	sw	a4,-40(a5)	# _14, d[l.0_13]
.L4:
# problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	lw	a5,-80(s0)		# tmp188, j
	addiw	a5,a5,1	#, tmp186, tmp187
	sw	a5,-80(s0)	# tmp186, j
# problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	lw	a5,-96(s0)		# tmp191, nth
	addiw	a5,a5,1	#, tmp189, tmp190
	sw	a5,-96(s0)	# tmp189, nth
.L3:
# problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	lw	a5,-80(s0)		# tmp193, j
	mv	a4,a5	# tmp192, tmp193
	lw	a5,-76(s0)		# tmp195, digits
	sext.w	a4,a4	# tmp196, tmp192
	sext.w	a5,a5	# tmp197, tmp194
	blt	a4,a5,.L5	#, tmp196, tmp197,
# problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	lw	a5,-92(s0)		# tmp200, i
	addiw	a5,a5,1	#, tmp198, tmp199
	sw	a5,-92(s0)	# tmp198, i
.L2:
# problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	lw	a5,-88(s0)		# tmp202, l
	sext.w	a4,a5	# tmp203, tmp201
	li	a5,6		# tmp204,
	ble	a4,a5,.L6	#, tmp203, tmp204,
# problem40.c:26:   for (i = 0; i < l; i++) {
	sw	zero,-92(s0)	#, i
# problem40.c:26:   for (i = 0; i < l; i++) {
	j	.L7		#
.L8:
# problem40.c:27:     p *= d[i];
	lw	a5,-92(s0)		# tmp205, i
	slli	a5,a5,2	#, tmp206, tmp205
	addi	a5,a5,-32	#, tmp228, tmp206
	add	a5,a5,s0	#, tmp206, tmp228
	lw	a5,-40(a5)		# _15, d[i_19]
# problem40.c:27:     p *= d[i];
	lw	a4,-84(s0)		# tmp209, p
	mulw	a5,a4,a5	# tmp207, tmp208, _15
	sw	a5,-84(s0)	# tmp207, p
# problem40.c:26:   for (i = 0; i < l; i++) {
	lw	a5,-92(s0)		# tmp212, i
	addiw	a5,a5,1	#, tmp210, tmp211
	sw	a5,-92(s0)	# tmp210, i
.L7:
# problem40.c:26:   for (i = 0; i < l; i++) {
	lw	a5,-92(s0)		# tmp214, i
	mv	a4,a5	# tmp213, tmp214
	lw	a5,-88(s0)		# tmp216, l
	sext.w	a4,a4	# tmp217, tmp213
	sext.w	a5,a5	# tmp218, tmp215
	blt	a4,a5,.L8	#, tmp217, tmp218,
# problem40.c:29:   printf("%d\n", p);
	lw	a5,-84(s0)		# tmp219, p
	mv	a1,a5	#, tmp219
	lla	a0,.LC2	#,
	call	printf@plt	#
# problem40.c:31:   return 0;
	li	a5,0		# _35,
# problem40.c:32: }
	mv	a4,a5	# <retval>, _35
	la	a5,__stack_chk_guard		# tmp221,
	ld	a3, -40(s0)	# tmp224, D.3772
	ld	a5, 0(a5)	# tmp222, __stack_chk_guard
	xor	a5, a3, a5	# tmp222, tmp224
	li	a3, 0	# tmp224
	beq	a5,zero,.L10	#, tmp222,,
	call	__stack_chk_fail@plt	#
.L10:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	.cfi_restore 1
	ld	s0,80(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	fld	fs0,72(sp)	#,
	.cfi_restore 40
	addi	sp,sp,96	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1072693248
	.align	3
.LC1:
	.word	0
	.word	1076101120
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
