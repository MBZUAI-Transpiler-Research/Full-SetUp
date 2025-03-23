	.file	"problem152.c"
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
# problem152.c:5:     long long sum = 0;
	sd	zero,-56(s0)	#, sum
# problem152.c:6:     for (int i = 0; i < lst_size; i++) {
	sw	zero,-60(s0)	#, i
# problem152.c:6:     for (int i = 0; i < lst_size; i++) {
	j	.L2		#
.L6:
# problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	lw	a5,-60(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-72(s0)		# tmp179, lst
	add	a5,a4,a5	# _2, _3, tmp179
	flw	fa5,0(a5)	# _4, *_3
	fcvt.d.s	fs0,fa5	# _5, _4
# problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	lw	a5,-60(s0)		# _6, i
	slli	a5,a5,2	#, _7, _6
	ld	a4,-72(s0)		# tmp180, lst
	add	a5,a4,a5	# _7, _8, tmp180
	flw	fa5,0(a5)	# _9, *_8
# problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fcvt.d.s	fa5,fa5	# _10, _9
	fmv.d	fa0,fa5	#, _10
	call	round@plt	#
	fmv.d	fa5,fa0	# _11,
# problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fsub.d	fa5,fs0,fa5	# _12, _5, _11
# problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fabs.d	fa4,fa5	# _13, _12
# problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	lla	a5,.LC0	# tmp182,
	fld	fa5,0(a5)	# tmp181,
	flt.d	a5,fa4,fa5	#, tmp183, _13, tmp181
	beq	a5,zero,.L3	#, tmp183,,
# problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	lw	a5,-60(s0)		# _14, i
	slli	a5,a5,2	#, _15, _14
	ld	a4,-72(s0)		# tmp184, lst
	add	a5,a4,a5	# _15, _16, tmp184
	flw	fa5,0(a5)	# _17, *_16
# problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	fmv.s.x	fa4,zero	# tmp185,
	fgt.s	a5,fa5,fa4	#, tmp186, _17, tmp185
	beq	a5,zero,.L3	#, tmp186,,
# problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	lw	a5,-60(s0)		# _18, i
	slli	a5,a5,2	#, _19, _18
	ld	a4,-72(s0)		# tmp187, lst
	add	a5,a4,a5	# _19, _20, tmp187
	flw	fa5,0(a5)	# _21, *_20
# problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	fcvt.d.s	fa5,fa5	# _22, _21
	fmv.d	fa0,fa5	#, _22
	call	round@plt	#
	fmv.d	fa5,fa0	# _23,
# problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	fcvt.w.d a5,fa5,rtz	# tmp188, _23
	sext.w	a5,a5	# _24, tmp188
# problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	mv	a4,a5	# tmp190, _24
	sraiw	a5,a4,31	#, tmp191, tmp190
	srliw	a5,a5,31	#, tmp192, tmp191
	addw	a4,a4,a5	# tmp192, tmp193, tmp190
	andi	a4,a4,1	#, tmp194, tmp193
	subw	a5,a4,a5	# tmp195, tmp194, tmp192
	sext.w	a5,a5	# _25, tmp195
# problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	mv	a4,a5	# tmp196, _25
	li	a5,1		# tmp197,
	bne	a4,a5,.L3	#, tmp196, tmp197,
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	lw	a5,-60(s0)		# _26, i
	slli	a5,a5,2	#, _27, _26
	ld	a4,-72(s0)		# tmp198, lst
	add	a5,a4,a5	# _27, _28, tmp198
	flw	fa5,0(a5)	# _29, *_28
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvt.d.s	fa5,fa5	# _30, _29
	fmv.d	fa0,fa5	#, _30
	call	round@plt	#
	fmv.d	fa5,fa0	# _31,
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvt.w.d a5,fa5,rtz	# tmp199, _31
	sext.w	s1,a5	# _32, tmp199
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	lw	a5,-60(s0)		# _33, i
	slli	a5,a5,2	#, _34, _33
	ld	a4,-72(s0)		# tmp200, lst
	add	a5,a4,a5	# _34, _35, tmp200
	flw	fa5,0(a5)	# _36, *_35
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvt.d.s	fa5,fa5	# _37, _36
	fmv.d	fa0,fa5	#, _37
	call	round@plt	#
	fmv.d	fa5,fa0	# _38,
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvt.w.d a5,fa5,rtz	# tmp201, _38
	sext.w	a5,a5	# _39, tmp201
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	mulw	a5,s1,a5	# tmp202, _32, _39
	sext.w	a5,a5	# _40, tmp202
	mv	a4,a5	# _41, _40
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	ld	a5,-56(s0)		# tmp204, sum
	add	a5,a5,a4	# _41, tmp203, tmp204
	sd	a5,-56(s0)	# tmp203, sum
.L3:
# problem152.c:6:     for (int i = 0; i < lst_size; i++) {
	lw	a5,-60(s0)		# tmp207, i
	addiw	a5,a5,1	#, tmp205, tmp206
	sw	a5,-60(s0)	# tmp205, i
.L2:
# problem152.c:6:     for (int i = 0; i < lst_size; i++) {
	lw	a5,-60(s0)		# tmp209, i
	mv	a4,a5	# tmp208, tmp209
	lw	a5,-76(s0)		# tmp211, lst_size
	sext.w	a4,a4	# tmp212, tmp208
	sext.w	a5,a5	# tmp213, tmp210
	blt	a4,a5,.L6	#, tmp212, tmp213,
# problem152.c:13:     return sum;
	ld	a5,-56(s0)		# _48, sum
# problem152.c:14: }
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
.LC1:
	.string	"problem152.c"
	.align	3
.LC2:
	.string	"func0((float[]){}, 0) == 0"
	.align	3
.LC5:
	.string	"func0((float[]){5, 4}, 2) == 25"
	.align	3
.LC9:
	.string	"func0((float[]){0.1, 0.2, 0.3}, 3) == 0"
	.align	3
.LC13:
	.string	"func0((float[]){-10, -20, -30}, 3) == 0"
	.align	3
.LC17:
	.string	"func0((float[]){-1, -2, 8}, 3) == 0"
	.align	3
.LC19:
	.string	"func0((float[]){0.2, 3, 5}, 3) == 34"
	.align	3
.LC20:
	.string	"func0(lst, lst_size) == odd_sum"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-848	#,,
	.cfi_def_cfa_offset 848
	sd	ra,840(sp)	#,
	sd	s0,832(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,848	#,,
	.cfi_def_cfa 8, 0
# problem152.c:20: int main() {
	la	a5,__stack_chk_guard		# tmp148,
	ld	a4, 0(a5)	# tmp221, __stack_chk_guard
	sd	a4, -24(s0)	# tmp221, D.3835
	li	a4, 0	# tmp221
# problem152.c:21:     assert(func0((float[]){}, 0) == 0);
	addi	a5,s0,-824	#, tmp149,
	li	a1,0		#,
	mv	a0,a5	#, tmp149
	call	func0		#
	mv	a5,a0	# _1,
# problem152.c:21:     assert(func0((float[]){}, 0) == 0);
	beq	a5,zero,.L11	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L11:
# problem152.c:22:     assert(func0((float[]){5, 4}, 2) == 25);
	lla	a5,.LC3	# tmp150,
	flw	fa5,0(a5)	# tmp151,
	fsw	fa5,-824(s0)	# tmp151, MEM[(float[2] *)_69][0]
	lla	a5,.LC4	# tmp152,
	flw	fa5,0(a5)	# tmp153,
	fsw	fa5,-820(s0)	# tmp153, MEM[(float[2] *)_69][1]
	addi	a5,s0,-824	#, tmp154,
	li	a1,2		#,
	mv	a0,a5	#, tmp154
	call	func0		#
	mv	a4,a0	# _2,
# problem152.c:22:     assert(func0((float[]){5, 4}, 2) == 25);
	li	a5,25		# tmp155,
	beq	a4,a5,.L12	#, _2, tmp155,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC1	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L12:
# problem152.c:23:     assert(func0((float[]){0.1, 0.2, 0.3}, 3) == 0);
	lla	a5,.LC6	# tmp156,
	flw	fa5,0(a5)	# tmp157,
	fsw	fa5,-824(s0)	# tmp157, MEM[(float[3] *)_69][0]
	lla	a5,.LC7	# tmp158,
	flw	fa5,0(a5)	# tmp159,
	fsw	fa5,-820(s0)	# tmp159, MEM[(float[3] *)_69][1]
	lla	a5,.LC8	# tmp160,
	flw	fa5,0(a5)	# tmp161,
	fsw	fa5,-816(s0)	# tmp161, MEM[(float[3] *)_69][2]
	addi	a5,s0,-824	#, tmp162,
	li	a1,3		#,
	mv	a0,a5	#, tmp162
	call	func0		#
	mv	a5,a0	# _3,
# problem152.c:23:     assert(func0((float[]){0.1, 0.2, 0.3}, 3) == 0);
	beq	a5,zero,.L13	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC1	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L13:
# problem152.c:24:     assert(func0((float[]){-10, -20, -30}, 3) == 0);
	lla	a5,.LC10	# tmp163,
	flw	fa5,0(a5)	# tmp164,
	fsw	fa5,-824(s0)	# tmp164, MEM[(float[3] *)_69][0]
	lla	a5,.LC11	# tmp165,
	flw	fa5,0(a5)	# tmp166,
	fsw	fa5,-820(s0)	# tmp166, MEM[(float[3] *)_69][1]
	lla	a5,.LC12	# tmp167,
	flw	fa5,0(a5)	# tmp168,
	fsw	fa5,-816(s0)	# tmp168, MEM[(float[3] *)_69][2]
	addi	a5,s0,-824	#, tmp169,
	li	a1,3		#,
	mv	a0,a5	#, tmp169
	call	func0		#
	mv	a5,a0	# _4,
# problem152.c:24:     assert(func0((float[]){-10, -20, -30}, 3) == 0);
	beq	a5,zero,.L14	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC1	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L14:
# problem152.c:25:     assert(func0((float[]){-1, -2, 8}, 3) == 0);
	lla	a5,.LC14	# tmp170,
	flw	fa5,0(a5)	# tmp171,
	fsw	fa5,-824(s0)	# tmp171, MEM[(float[3] *)_69][0]
	lla	a5,.LC15	# tmp172,
	flw	fa5,0(a5)	# tmp173,
	fsw	fa5,-820(s0)	# tmp173, MEM[(float[3] *)_69][1]
	lla	a5,.LC16	# tmp174,
	flw	fa5,0(a5)	# tmp175,
	fsw	fa5,-816(s0)	# tmp175, MEM[(float[3] *)_69][2]
	addi	a5,s0,-824	#, tmp176,
	li	a1,3		#,
	mv	a0,a5	#, tmp176
	call	func0		#
	mv	a5,a0	# _5,
# problem152.c:25:     assert(func0((float[]){-1, -2, 8}, 3) == 0);
	beq	a5,zero,.L15	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC1	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L15:
# problem152.c:26:     assert(func0((float[]){0.2, 3, 5}, 3) == 34);
	lla	a5,.LC7	# tmp177,
	flw	fa5,0(a5)	# tmp178,
	fsw	fa5,-824(s0)	# tmp178, MEM[(float[3] *)_69][0]
	lla	a5,.LC18	# tmp179,
	flw	fa5,0(a5)	# tmp180,
	fsw	fa5,-820(s0)	# tmp180, MEM[(float[3] *)_69][1]
	lla	a5,.LC3	# tmp181,
	flw	fa5,0(a5)	# tmp182,
	fsw	fa5,-816(s0)	# tmp182, MEM[(float[3] *)_69][2]
	addi	a5,s0,-824	#, tmp183,
	li	a1,3		#,
	mv	a0,a5	#, tmp183
	call	func0		#
	mv	a4,a0	# _6,
# problem152.c:26:     assert(func0((float[]){0.2, 3, 5}, 3) == 34);
	li	a5,34		# tmp184,
	beq	a4,a5,.L16	#, _6, tmp184,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC1	#,
	lla	a0,.LC19	#,
	call	__assert_fail@plt	#
.L16:
# problem152.c:28:     long long odd_sum = 0;
	sd	zero,-832(s0)	#, odd_sum
# problem152.c:30:     int lst_size = 0;
	sw	zero,-840(s0)	#, lst_size
# problem152.c:32:     for (int i = -99; i < 100; i += 2) {
	li	a5,-99		# tmp185,
	sw	a5,-836(s0)	# tmp185, i
# problem152.c:32:     for (int i = -99; i < 100; i += 2) {
	j	.L17		#
.L19:
# problem152.c:33:         lst[lst_size++] = i + 0.0f;
	lw	a5,-840(s0)		# lst_size.0_7, lst_size
	addiw	a4,a5,1	#, tmp186, lst_size.0_7
	sw	a4,-840(s0)	# tmp186, lst_size
# problem152.c:33:         lst[lst_size++] = i + 0.0f;
	lw	a4,-836(s0)		# tmp188, i
	fcvt.s.w	fa5,a4	# _8, tmp187
# problem152.c:33:         lst[lst_size++] = i + 0.0f;
	slli	a5,a5,2	#, tmp189, lst_size.0_7
	addi	a5,a5,-16	#, tmp225, tmp189
	add	a5,a5,s0	#, tmp189, tmp225
	fsw	fa5,-808(a5)	# _8, MEM[(float[200] *)_69][lst_size.0_7]
# problem152.c:34:         if (i > 0 && i % 2 == 1) odd_sum += i * i;
	lw	a5,-836(s0)		# tmp191, i
	sext.w	a5,a5	# tmp192, tmp190
	ble	a5,zero,.L18	#, tmp192,,
# problem152.c:34:         if (i > 0 && i % 2 == 1) odd_sum += i * i;
	lw	a5,-836(s0)		# tmp195, i
	mv	a4,a5	# tmp194, tmp195
	sraiw	a5,a4,31	#, tmp196, tmp194
	srliw	a5,a5,31	#, tmp197, tmp196
	addw	a4,a4,a5	# tmp197, tmp198, tmp194
	andi	a4,a4,1	#, tmp199, tmp198
	subw	a5,a4,a5	# tmp200, tmp199, tmp197
	sext.w	a5,a5	# _9, tmp200
# problem152.c:34:         if (i > 0 && i % 2 == 1) odd_sum += i * i;
	mv	a4,a5	# tmp201, _9
	li	a5,1		# tmp202,
	bne	a4,a5,.L18	#, tmp201, tmp202,
# problem152.c:34:         if (i > 0 && i % 2 == 1) odd_sum += i * i;
	lw	a5,-836(s0)		# tmp205, i
	mulw	a5,a5,a5	# tmp203, tmp204, tmp204
	sext.w	a5,a5	# _10, tmp203
	mv	a4,a5	# _11, _10
# problem152.c:34:         if (i > 0 && i % 2 == 1) odd_sum += i * i;
	ld	a5,-832(s0)		# tmp207, odd_sum
	add	a5,a5,a4	# _11, tmp206, tmp207
	sd	a5,-832(s0)	# tmp206, odd_sum
.L18:
# problem152.c:32:     for (int i = -99; i < 100; i += 2) {
	lw	a5,-836(s0)		# tmp210, i
	addiw	a5,a5,2	#, tmp208, tmp209
	sw	a5,-836(s0)	# tmp208, i
.L17:
# problem152.c:32:     for (int i = -99; i < 100; i += 2) {
	lw	a5,-836(s0)		# tmp212, i
	sext.w	a4,a5	# tmp213, tmp211
	li	a5,99		# tmp214,
	ble	a4,a5,.L19	#, tmp213, tmp214,
# problem152.c:37:     assert(func0(lst, lst_size) == odd_sum);
	lw	a4,-840(s0)		# tmp215, lst_size
	addi	a5,s0,-824	#, tmp216,
	mv	a1,a4	#, tmp215
	mv	a0,a5	#, tmp216
	call	func0		#
	mv	a4,a0	# _12,
# problem152.c:37:     assert(func0(lst, lst_size) == odd_sum);
	ld	a5,-832(s0)		# tmp217, odd_sum
	beq	a5,a4,.L20	#, tmp217, _12,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC1	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L20:
# problem152.c:39:     return 0;
	li	a5,0		# _56,
# problem152.c:40: }
	mv	a4,a5	# <retval>, _56
	la	a5,__stack_chk_guard		# tmp219,
	ld	a3, -24(s0)	# tmp222, D.3835
	ld	a5, 0(a5)	# tmp220, __stack_chk_guard
	xor	a5, a3, a5	# tmp220, tmp222
	li	a3, 0	# tmp222
	beq	a5,zero,.L22	#, tmp220,,
	call	__stack_chk_fail@plt	#
.L22:
	mv	a0,a4	#, <retval>
	ld	ra,840(sp)		#,
	.cfi_restore 1
	ld	s0,832(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 848
	addi	sp,sp,848	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC0:
	.word	-350469331
	.word	1058682594
	.align	2
.LC3:
	.word	1084227584
	.align	2
.LC4:
	.word	1082130432
	.align	2
.LC6:
	.word	1036831949
	.align	2
.LC7:
	.word	1045220557
	.align	2
.LC8:
	.word	1050253722
	.align	2
.LC10:
	.word	-1054867456
	.align	2
.LC11:
	.word	-1046478848
	.align	2
.LC12:
	.word	-1041235968
	.align	2
.LC14:
	.word	-1082130432
	.align	2
.LC15:
	.word	-1073741824
	.align	2
.LC16:
	.word	1090519040
	.align	2
.LC18:
	.word	1077936128
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
