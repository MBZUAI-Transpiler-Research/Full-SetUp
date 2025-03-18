	.file	"problem58.c"
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
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# l, l
	mv	a5,a1	# tmp155, size
	sw	a5,-44(s0)	# tmp156, size
# problem58.c:6:     incr = decr = 0;
	sw	zero,-24(s0)	#, decr
# problem58.c:6:     incr = decr = 0;
	lw	a5,-24(s0)		# tmp157, decr
	sw	a5,-28(s0)	# tmp157, incr
# problem58.c:8:     for (int i = 1; i < size; i++) {
	li	a5,1		# tmp158,
	sw	a5,-20(s0)	# tmp158, i
# problem58.c:8:     for (int i = 1; i < size; i++) {
	j	.L2		#
.L7:
# problem58.c:9:         if (l[i] > l[i - 1]) incr = 1;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp159, l
	add	a5,a4,a5	# _2, _3, tmp159
	flw	fa4,0(a5)	# _4, *_3
# problem58.c:9:         if (l[i] > l[i - 1]) incr = 1;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	addi	a5,a5,-4	#, _7, _6
	ld	a4,-40(s0)		# tmp160, l
	add	a5,a4,a5	# _7, _8, tmp160
	flw	fa5,0(a5)	# _9, *_8
# problem58.c:9:         if (l[i] > l[i - 1]) incr = 1;
	fgt.s	a5,fa4,fa5	#, tmp161, _4, _9
	beq	a5,zero,.L3	#, tmp161,,
# problem58.c:9:         if (l[i] > l[i - 1]) incr = 1;
	li	a5,1		# tmp162,
	sw	a5,-28(s0)	# tmp162, incr
.L3:
# problem58.c:10:         if (l[i] < l[i - 1]) decr = 1;
	lw	a5,-20(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a4,-40(s0)		# tmp163, l
	add	a5,a4,a5	# _11, _12, tmp163
	flw	fa4,0(a5)	# _13, *_12
# problem58.c:10:         if (l[i] < l[i - 1]) decr = 1;
	lw	a5,-20(s0)		# _14, i
	slli	a5,a5,2	#, _15, _14
	addi	a5,a5,-4	#, _16, _15
	ld	a4,-40(s0)		# tmp164, l
	add	a5,a4,a5	# _16, _17, tmp164
	flw	fa5,0(a5)	# _18, *_17
# problem58.c:10:         if (l[i] < l[i - 1]) decr = 1;
	flt.s	a5,fa4,fa5	#, tmp165, _13, _18
	beq	a5,zero,.L5	#, tmp165,,
# problem58.c:10:         if (l[i] < l[i - 1]) decr = 1;
	li	a5,1		# tmp166,
	sw	a5,-24(s0)	# tmp166, decr
.L5:
# problem58.c:8:     for (int i = 1; i < size; i++) {
	lw	a5,-20(s0)		# tmp169, i
	addiw	a5,a5,1	#, tmp167, tmp168
	sw	a5,-20(s0)	# tmp167, i
.L2:
# problem58.c:8:     for (int i = 1; i < size; i++) {
	lw	a5,-20(s0)		# tmp171, i
	mv	a4,a5	# tmp170, tmp171
	lw	a5,-44(s0)		# tmp173, size
	sext.w	a4,a4	# tmp174, tmp170
	sext.w	a5,a5	# tmp175, tmp172
	blt	a4,a5,.L7	#, tmp174, tmp175,
# problem58.c:12:     if (incr + decr == 2) return false;
	lw	a5,-28(s0)		# tmp178, incr
	mv	a4,a5	# tmp177, tmp178
	lw	a5,-24(s0)		# tmp180, decr
	addw	a5,a4,a5	# tmp179, tmp176, tmp177
	sext.w	a5,a5	# _19, tmp176
# problem58.c:12:     if (incr + decr == 2) return false;
	mv	a4,a5	# tmp181, _19
	li	a5,2		# tmp182,
	bne	a4,a5,.L8	#, tmp181, tmp182,
# problem58.c:12:     if (incr + decr == 2) return false;
	li	a5,0		# _25,
# problem58.c:12:     if (incr + decr == 2) return false;
	j	.L9		#
.L8:
# problem58.c:13:     return true;
	li	a5,1		# _25,
.L9:
# problem58.c:14: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC8:
	.string	"problem58.c"
	.align	3
.LC9:
	.string	"func0(list1, 4) == true"
	.align	3
.LC10:
	.string	"func0(list2, 4) == true"
	.align	3
.LC11:
	.string	"func0(list3, 4) == false"
	.align	3
.LC12:
	.string	"func0(list4, 4) == true"
	.align	3
.LC13:
	.string	"func0(list5, 4) == true"
	.align	3
.LC14:
	.string	"func0(list6, 6) == false"
	.align	3
.LC15:
	.string	"func0(list7, 6) == true"
	.align	3
.LC16:
	.string	"func0(list8, 4) == true"
	.align	3
.LC0:
	.word	1065353216
	.word	1073741824
	.word	1082130432
	.word	1092616192
	.align	3
.LC1:
	.word	1065353216
	.word	1073741824
	.word	1082130432
	.word	1101004800
	.align	3
.LC2:
	.word	1065353216
	.word	1101004800
	.word	1082130432
	.word	1092616192
	.align	3
.LC3:
	.word	1082130432
	.word	1065353216
	.word	0
	.word	-1054867456
	.align	3
.LC4:
	.word	1082130432
	.word	1065353216
	.word	1065353216
	.word	0
	.align	3
.LC5:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1073741824
	.word	1084227584
	.word	1114636288
	.align	3
.LC6:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.word	1114636288
	.align	3
.LC7:
	.word	1091567616
	.word	1091567616
	.word	1091567616
	.word	1091567616
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-176	#,,
	.cfi_def_cfa_offset 176
	sd	ra,168(sp)	#,
	sd	s0,160(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,176	#,,
	.cfi_def_cfa 8, 0
# problem58.c:21: int main() {
	la	a5,__stack_chk_guard		# tmp146,
	ld	a4, 0(a5)	# tmp194, __stack_chk_guard
	sd	a4, -24(s0)	# tmp194, D.2792
	li	a4, 0	# tmp194
# problem58.c:22:     float list1[] = {1, 2, 4, 10};
	lla	a5,.LC0	# tmp147,
	ld	a4,0(a5)		# tmp148,
	sd	a4,-168(s0)	# tmp148, list1
	ld	a5,8(a5)		# tmp149,
	sd	a5,-160(s0)	# tmp149, list1
# problem58.c:23:     float list2[] = {1, 2, 4, 20};
	lla	a5,.LC1	# tmp150,
	ld	a4,0(a5)		# tmp151,
	sd	a4,-152(s0)	# tmp151, list2
	ld	a5,8(a5)		# tmp152,
	sd	a5,-144(s0)	# tmp152, list2
# problem58.c:24:     float list3[] = {1, 20, 4, 10};
	lla	a5,.LC2	# tmp153,
	ld	a4,0(a5)		# tmp154,
	sd	a4,-136(s0)	# tmp154, list3
	ld	a5,8(a5)		# tmp155,
	sd	a5,-128(s0)	# tmp155, list3
# problem58.c:25:     float list4[] = {4, 1, 0, -10};
	lla	a5,.LC3	# tmp156,
	ld	a4,0(a5)		# tmp157,
	sd	a4,-120(s0)	# tmp157, list4
	ld	a5,8(a5)		# tmp158,
	sd	a5,-112(s0)	# tmp158, list4
# problem58.c:26:     float list5[] = {4, 1, 1, 0};
	lla	a5,.LC4	# tmp159,
	ld	a4,0(a5)		# tmp160,
	sd	a4,-104(s0)	# tmp160, list5
	ld	a5,8(a5)		# tmp161,
	sd	a5,-96(s0)	# tmp161, list5
# problem58.c:27:     float list6[] = {1, 2, 3, 2, 5, 60};
	lla	a5,.LC5	# tmp162,
	ld	a4,0(a5)		# tmp163,
	sd	a4,-72(s0)	# tmp163, list6
	ld	a4,8(a5)		# tmp164,
	sd	a4,-64(s0)	# tmp164, list6
	ld	a5,16(a5)		# tmp165,
	sd	a5,-56(s0)	# tmp165, list6
# problem58.c:28:     float list7[] = {1, 2, 3, 4, 5, 60};
	lla	a5,.LC6	# tmp166,
	ld	a4,0(a5)		# tmp167,
	sd	a4,-48(s0)	# tmp167, list7
	ld	a4,8(a5)		# tmp168,
	sd	a4,-40(s0)	# tmp168, list7
	ld	a5,16(a5)		# tmp169,
	sd	a5,-32(s0)	# tmp169, list7
# problem58.c:29:     float list8[] = {9, 9, 9, 9};
	lla	a5,.LC7	# tmp170,
	ld	a4,0(a5)		# tmp171,
	sd	a4,-88(s0)	# tmp171, list8
	ld	a5,8(a5)		# tmp172,
	sd	a5,-80(s0)	# tmp172, list8
# problem58.c:31:     assert(func0(list1, 4) == true);
	addi	a5,s0,-168	#, tmp173,
	li	a1,4		#,
	mv	a0,a5	#, tmp173
	call	func0		#
	mv	a5,a0	# tmp174,
# problem58.c:31:     assert(func0(list1, 4) == true);
	bne	a5,zero,.L13	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC8	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L13:
# problem58.c:32:     assert(func0(list2, 4) == true);
	addi	a5,s0,-152	#, tmp175,
	li	a1,4		#,
	mv	a0,a5	#, tmp175
	call	func0		#
	mv	a5,a0	# tmp176,
# problem58.c:32:     assert(func0(list2, 4) == true);
	bne	a5,zero,.L14	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC8	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L14:
# problem58.c:33:     assert(func0(list3, 4) == false);
	addi	a5,s0,-136	#, tmp177,
	li	a1,4		#,
	mv	a0,a5	#, tmp177
	call	func0		#
	mv	a5,a0	# tmp178,
# problem58.c:33:     assert(func0(list3, 4) == false);
	xori	a5,a5,1	#, tmp179, _3
	andi	a5,a5,0xff	# _4, tmp179
	bne	a5,zero,.L15	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC8	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L15:
# problem58.c:34:     assert(func0(list4, 4) == true);
	addi	a5,s0,-120	#, tmp180,
	li	a1,4		#,
	mv	a0,a5	#, tmp180
	call	func0		#
	mv	a5,a0	# tmp181,
# problem58.c:34:     assert(func0(list4, 4) == true);
	bne	a5,zero,.L16	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC8	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L16:
# problem58.c:35:     assert(func0(list5, 4) == true);
	addi	a5,s0,-104	#, tmp182,
	li	a1,4		#,
	mv	a0,a5	#, tmp182
	call	func0		#
	mv	a5,a0	# tmp183,
# problem58.c:35:     assert(func0(list5, 4) == true);
	bne	a5,zero,.L17	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC8	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L17:
# problem58.c:36:     assert(func0(list6, 6) == false);
	addi	a5,s0,-72	#, tmp184,
	li	a1,6		#,
	mv	a0,a5	#, tmp184
	call	func0		#
	mv	a5,a0	# tmp185,
# problem58.c:36:     assert(func0(list6, 6) == false);
	xori	a5,a5,1	#, tmp186, _7
	andi	a5,a5,0xff	# _8, tmp186
	bne	a5,zero,.L18	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC8	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L18:
# problem58.c:37:     assert(func0(list7, 6) == true);
	addi	a5,s0,-48	#, tmp187,
	li	a1,6		#,
	mv	a0,a5	#, tmp187
	call	func0		#
	mv	a5,a0	# tmp188,
# problem58.c:37:     assert(func0(list7, 6) == true);
	bne	a5,zero,.L19	#, _9,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC8	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L19:
# problem58.c:38:     assert(func0(list8, 4) == true);
	addi	a5,s0,-88	#, tmp189,
	li	a1,4		#,
	mv	a0,a5	#, tmp189
	call	func0		#
	mv	a5,a0	# tmp190,
# problem58.c:38:     assert(func0(list8, 4) == true);
	bne	a5,zero,.L20	#, _10,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC8	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L20:
# problem58.c:40:     return 0;
	li	a5,0		# _36,
# problem58.c:41: }
	mv	a4,a5	# <retval>, _36
	la	a5,__stack_chk_guard		# tmp192,
	ld	a3, -24(s0)	# tmp195, D.2792
	ld	a5, 0(a5)	# tmp193, __stack_chk_guard
	xor	a5, a3, a5	# tmp193, tmp195
	li	a3, 0	# tmp195
	beq	a5,zero,.L22	#, tmp193,,
	call	__stack_chk_fail@plt	#
.L22:
	mv	a0,a4	#, <retval>
	ld	ra,168(sp)		#,
	.cfi_restore 1
	ld	s0,160(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	addi	sp,sp,176	#,,
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
