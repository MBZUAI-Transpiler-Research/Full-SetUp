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
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	sd	s1,56(sp)	#,
	fsd	fs0,40(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 40, -40
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)	# lst, lst
	mv	a5,a1	# tmp177, lst_size
	sw	a5,-76(s0)	# tmp178, lst_size
# code.c:5:     long long sum = 0;
	sd	zero,-56(s0)	#, sum
# code.c:6:     for (int i = 0; i < lst_size; i++) {
	sw	zero,-60(s0)	#, i
# code.c:6:     for (int i = 0; i < lst_size; i++) {
	j	.L2		#
.L6:
# code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	lw	a5,-60(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-72(s0)		# tmp179, lst
	add	a5,a4,a5	# _2, _3, tmp179
	flw	fa5,0(a5)	# _4, *_3
	fcvt.d.s	fs0,fa5	# _5, _4
# code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	lw	a5,-60(s0)		# _6, i
	slli	a5,a5,2	#, _7, _6
	ld	a4,-72(s0)		# tmp180, lst
	add	a5,a4,a5	# _7, _8, tmp180
	flw	fa5,0(a5)	# _9, *_8
# code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fcvt.d.s	fa5,fa5	# _10, _9
	fmv.d	fa0,fa5	#, _10
	call	round@plt	#
	fmv.d	fa5,fa0	# _11,
# code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fsub.d	fa5,fs0,fa5	# _12, _5, _11
# code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fabs.d	fa4,fa5	# _13, _12
# code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	lla	a5,.LC0	# tmp182,
	fld	fa5,0(a5)	# tmp181,
	flt.d	a5,fa4,fa5	#, tmp183, _13, tmp181
	beq	a5,zero,.L3	#, tmp183,,
# code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	lw	a5,-60(s0)		# _14, i
	slli	a5,a5,2	#, _15, _14
	ld	a4,-72(s0)		# tmp184, lst
	add	a5,a4,a5	# _15, _16, tmp184
	flw	fa5,0(a5)	# _17, *_16
# code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	fmv.s.x	fa4,zero	# tmp185,
	fgt.s	a5,fa5,fa4	#, tmp186, _17, tmp185
	beq	a5,zero,.L3	#, tmp186,,
# code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	lw	a5,-60(s0)		# _18, i
	slli	a5,a5,2	#, _19, _18
	ld	a4,-72(s0)		# tmp187, lst
	add	a5,a4,a5	# _19, _20, tmp187
	flw	fa5,0(a5)	# _21, *_20
# code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	fcvt.d.s	fa5,fa5	# _22, _21
	fmv.d	fa0,fa5	#, _22
	call	round@plt	#
	fmv.d	fa5,fa0	# _23,
# code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	fcvt.w.d a5,fa5,rtz	# tmp188, _23
	sext.w	a5,a5	# _24, tmp188
# code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	mv	a4,a5	# tmp190, _24
	sraiw	a5,a4,31	#, tmp191, tmp190
	srliw	a5,a5,31	#, tmp192, tmp191
	addw	a4,a4,a5	# tmp192, tmp193, tmp190
	andi	a4,a4,1	#, tmp194, tmp193
	subw	a5,a4,a5	# tmp195, tmp194, tmp192
	sext.w	a5,a5	# _25, tmp195
# code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	mv	a4,a5	# tmp196, _25
	li	a5,1		# tmp197,
	bne	a4,a5,.L3	#, tmp196, tmp197,
# code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	lw	a5,-60(s0)		# _26, i
	slli	a5,a5,2	#, _27, _26
	ld	a4,-72(s0)		# tmp198, lst
	add	a5,a4,a5	# _27, _28, tmp198
	flw	fa5,0(a5)	# _29, *_28
# code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvt.d.s	fa5,fa5	# _30, _29
	fmv.d	fa0,fa5	#, _30
	call	round@plt	#
	fmv.d	fa5,fa0	# _31,
# code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvt.w.d a5,fa5,rtz	# tmp199, _31
	sext.w	s1,a5	# _32, tmp199
# code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	lw	a5,-60(s0)		# _33, i
	slli	a5,a5,2	#, _34, _33
	ld	a4,-72(s0)		# tmp200, lst
	add	a5,a4,a5	# _34, _35, tmp200
	flw	fa5,0(a5)	# _36, *_35
# code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvt.d.s	fa5,fa5	# _37, _36
	fmv.d	fa0,fa5	#, _37
	call	round@plt	#
	fmv.d	fa5,fa0	# _38,
# code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvt.w.d a5,fa5,rtz	# tmp201, _38
	sext.w	a5,a5	# _39, tmp201
# code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	mulw	a5,s1,a5	# tmp202, _32, _39
	sext.w	a5,a5	# _40, tmp202
	mv	a4,a5	# _41, _40
# code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	ld	a5,-56(s0)		# tmp204, sum
	add	a5,a5,a4	# _41, tmp203, tmp204
	sd	a5,-56(s0)	# tmp203, sum
.L3:
# code.c:6:     for (int i = 0; i < lst_size; i++) {
	lw	a5,-60(s0)		# tmp207, i
	addiw	a5,a5,1	#, tmp205, tmp206
	sw	a5,-60(s0)	# tmp205, i
.L2:
# code.c:6:     for (int i = 0; i < lst_size; i++) {
	lw	a5,-60(s0)		# tmp209, i
	mv	a4,a5	# tmp208, tmp209
	lw	a5,-76(s0)		# tmp211, lst_size
	sext.w	a4,a4	# tmp212, tmp208
	sext.w	a5,a5	# tmp213, tmp210
	blt	a4,a5,.L6	#, tmp212, tmp213,
# code.c:13:     return sum;
	ld	a5,-56(s0)		# _48, sum
# code.c:14: }
	mv	a0,a5	#, <retval>
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	ld	s1,56(sp)		#,
	.cfi_restore 9
	fld	fs0,40(sp)	#,
	.cfi_restore 40
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
