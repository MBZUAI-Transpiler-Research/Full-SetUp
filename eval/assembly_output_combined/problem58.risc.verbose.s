	.file	"problem58.c"
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
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# l, l
	mv	a5,a1	# tmp93, size
	sw	a5,-44(s0)	# tmp94, size
# problem58.c:6:     incr = decr = 0;
	sw	zero,-24(s0)	#, decr
# problem58.c:6:     incr = decr = 0;
	lw	a5,-24(s0)		# tmp95, decr
	sw	a5,-28(s0)	# tmp95, incr
# problem58.c:8:     for (int i = 1; i < size; i++) {
	li	a5,1		# tmp96,
	sw	a5,-20(s0)	# tmp96, i
# problem58.c:8:     for (int i = 1; i < size; i++) {
	j	.L2		#
.L7:
# problem58.c:9:         if (l[i] > l[i - 1]) incr = 1;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp97, l
	add	a5,a4,a5	# _2, _3, tmp97
	flw	fa4,0(a5)	# _4, *_3
# problem58.c:9:         if (l[i] > l[i - 1]) incr = 1;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	addi	a5,a5,-4	#, _7, _6
	ld	a4,-40(s0)		# tmp98, l
	add	a5,a4,a5	# _7, _8, tmp98
	flw	fa5,0(a5)	# _9, *_8
# problem58.c:9:         if (l[i] > l[i - 1]) incr = 1;
	fgt.s	a5,fa4,fa5	#, tmp99, _4, _9
	beq	a5,zero,.L3	#, tmp99,,
# problem58.c:9:         if (l[i] > l[i - 1]) incr = 1;
	li	a5,1		# tmp100,
	sw	a5,-28(s0)	# tmp100, incr
.L3:
# problem58.c:10:         if (l[i] < l[i - 1]) decr = 1;
	lw	a5,-20(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a4,-40(s0)		# tmp101, l
	add	a5,a4,a5	# _11, _12, tmp101
	flw	fa4,0(a5)	# _13, *_12
# problem58.c:10:         if (l[i] < l[i - 1]) decr = 1;
	lw	a5,-20(s0)		# _14, i
	slli	a5,a5,2	#, _15, _14
	addi	a5,a5,-4	#, _16, _15
	ld	a4,-40(s0)		# tmp102, l
	add	a5,a4,a5	# _16, _17, tmp102
	flw	fa5,0(a5)	# _18, *_17
# problem58.c:10:         if (l[i] < l[i - 1]) decr = 1;
	flt.s	a5,fa4,fa5	#, tmp103, _13, _18
	beq	a5,zero,.L5	#, tmp103,,
# problem58.c:10:         if (l[i] < l[i - 1]) decr = 1;
	li	a5,1		# tmp104,
	sw	a5,-24(s0)	# tmp104, decr
.L5:
# problem58.c:8:     for (int i = 1; i < size; i++) {
	lw	a5,-20(s0)		# tmp107, i
	addiw	a5,a5,1	#, tmp105, tmp106
	sw	a5,-20(s0)	# tmp105, i
.L2:
# problem58.c:8:     for (int i = 1; i < size; i++) {
	lw	a5,-20(s0)		# tmp109, i
	mv	a4,a5	# tmp108, tmp109
	lw	a5,-44(s0)		# tmp111, size
	sext.w	a4,a4	# tmp112, tmp108
	sext.w	a5,a5	# tmp113, tmp110
	blt	a4,a5,.L7	#, tmp112, tmp113,
# problem58.c:12:     if (incr + decr == 2) return false;
	lw	a5,-28(s0)		# tmp116, incr
	mv	a4,a5	# tmp115, tmp116
	lw	a5,-24(s0)		# tmp118, decr
	addw	a5,a4,a5	# tmp117, tmp114, tmp115
	sext.w	a5,a5	# _19, tmp114
# problem58.c:12:     if (incr + decr == 2) return false;
	mv	a4,a5	# tmp119, _19
	li	a5,2		# tmp120,
	bne	a4,a5,.L8	#, tmp119, tmp120,
# problem58.c:12:     if (incr + decr == 2) return false;
	li	a5,0		# _25,
	j	.L9		#
.L8:
# problem58.c:13:     return true;
	li	a5,1		# _25,
.L9:
# problem58.c:14: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
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
	addi	sp,sp,-176	#,,
	sd	ra,168(sp)	#,
	sd	s0,160(sp)	#,
	addi	s0,sp,176	#,,
# problem58.c:21: int main() {
	la	a5,__stack_chk_guard		# tmp84,
	ld	a4, 0(a5)	# tmp132, __stack_chk_guard
	sd	a4, -24(s0)	# tmp132, D.1974
	li	a4, 0	# tmp132
# problem58.c:22:     float list1[] = {1, 2, 4, 10};
	lla	a5,.LC0	# tmp85,
	ld	a4,0(a5)		# tmp86,
	sd	a4,-168(s0)	# tmp86, list1
	ld	a5,8(a5)		# tmp87,
	sd	a5,-160(s0)	# tmp87, list1
# problem58.c:23:     float list2[] = {1, 2, 4, 20};
	lla	a5,.LC1	# tmp88,
	ld	a4,0(a5)		# tmp89,
	sd	a4,-152(s0)	# tmp89, list2
	ld	a5,8(a5)		# tmp90,
	sd	a5,-144(s0)	# tmp90, list2
# problem58.c:24:     float list3[] = {1, 20, 4, 10};
	lla	a5,.LC2	# tmp91,
	ld	a4,0(a5)		# tmp92,
	sd	a4,-136(s0)	# tmp92, list3
	ld	a5,8(a5)		# tmp93,
	sd	a5,-128(s0)	# tmp93, list3
# problem58.c:25:     float list4[] = {4, 1, 0, -10};
	lla	a5,.LC3	# tmp94,
	ld	a4,0(a5)		# tmp95,
	sd	a4,-120(s0)	# tmp95, list4
	ld	a5,8(a5)		# tmp96,
	sd	a5,-112(s0)	# tmp96, list4
# problem58.c:26:     float list5[] = {4, 1, 1, 0};
	lla	a5,.LC4	# tmp97,
	ld	a4,0(a5)		# tmp98,
	sd	a4,-104(s0)	# tmp98, list5
	ld	a5,8(a5)		# tmp99,
	sd	a5,-96(s0)	# tmp99, list5
# problem58.c:27:     float list6[] = {1, 2, 3, 2, 5, 60};
	lla	a5,.LC5	# tmp100,
	ld	a4,0(a5)		# tmp101,
	sd	a4,-72(s0)	# tmp101, list6
	ld	a4,8(a5)		# tmp102,
	sd	a4,-64(s0)	# tmp102, list6
	ld	a5,16(a5)		# tmp103,
	sd	a5,-56(s0)	# tmp103, list6
# problem58.c:28:     float list7[] = {1, 2, 3, 4, 5, 60};
	lla	a5,.LC6	# tmp104,
	ld	a4,0(a5)		# tmp105,
	sd	a4,-48(s0)	# tmp105, list7
	ld	a4,8(a5)		# tmp106,
	sd	a4,-40(s0)	# tmp106, list7
	ld	a5,16(a5)		# tmp107,
	sd	a5,-32(s0)	# tmp107, list7
# problem58.c:29:     float list8[] = {9, 9, 9, 9};
	lla	a5,.LC7	# tmp108,
	ld	a4,0(a5)		# tmp109,
	sd	a4,-88(s0)	# tmp109, list8
	ld	a5,8(a5)		# tmp110,
	sd	a5,-80(s0)	# tmp110, list8
# problem58.c:31:     assert(func0(list1, 4) == true);
	addi	a5,s0,-168	#, tmp111,
	li	a1,4		#,
	mv	a0,a5	#, tmp111
	call	func0		#
	mv	a5,a0	# tmp112,
	bne	a5,zero,.L13	#, _1,,
# problem58.c:31:     assert(func0(list1, 4) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC8	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L13:
# problem58.c:32:     assert(func0(list2, 4) == true);
	addi	a5,s0,-152	#, tmp113,
	li	a1,4		#,
	mv	a0,a5	#, tmp113
	call	func0		#
	mv	a5,a0	# tmp114,
	bne	a5,zero,.L14	#, _2,,
# problem58.c:32:     assert(func0(list2, 4) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC8	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L14:
# problem58.c:33:     assert(func0(list3, 4) == false);
	addi	a5,s0,-136	#, tmp115,
	li	a1,4		#,
	mv	a0,a5	#, tmp115
	call	func0		#
	mv	a5,a0	# tmp116,
	xori	a5,a5,1	#, tmp117, _3
	andi	a5,a5,0xff	# _4, tmp117
	bne	a5,zero,.L15	#, _4,,
# problem58.c:33:     assert(func0(list3, 4) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC8	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L15:
# problem58.c:34:     assert(func0(list4, 4) == true);
	addi	a5,s0,-120	#, tmp118,
	li	a1,4		#,
	mv	a0,a5	#, tmp118
	call	func0		#
	mv	a5,a0	# tmp119,
	bne	a5,zero,.L16	#, _5,,
# problem58.c:34:     assert(func0(list4, 4) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC8	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L16:
# problem58.c:35:     assert(func0(list5, 4) == true);
	addi	a5,s0,-104	#, tmp120,
	li	a1,4		#,
	mv	a0,a5	#, tmp120
	call	func0		#
	mv	a5,a0	# tmp121,
	bne	a5,zero,.L17	#, _6,,
# problem58.c:35:     assert(func0(list5, 4) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC8	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L17:
# problem58.c:36:     assert(func0(list6, 6) == false);
	addi	a5,s0,-72	#, tmp122,
	li	a1,6		#,
	mv	a0,a5	#, tmp122
	call	func0		#
	mv	a5,a0	# tmp123,
	xori	a5,a5,1	#, tmp124, _7
	andi	a5,a5,0xff	# _8, tmp124
	bne	a5,zero,.L18	#, _8,,
# problem58.c:36:     assert(func0(list6, 6) == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC8	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L18:
# problem58.c:37:     assert(func0(list7, 6) == true);
	addi	a5,s0,-48	#, tmp125,
	li	a1,6		#,
	mv	a0,a5	#, tmp125
	call	func0		#
	mv	a5,a0	# tmp126,
	bne	a5,zero,.L19	#, _9,,
# problem58.c:37:     assert(func0(list7, 6) == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC8	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L19:
# problem58.c:38:     assert(func0(list8, 4) == true);
	addi	a5,s0,-88	#, tmp127,
	li	a1,4		#,
	mv	a0,a5	#, tmp127
	call	func0		#
	mv	a5,a0	# tmp128,
	bne	a5,zero,.L20	#, _10,,
# problem58.c:38:     assert(func0(list8, 4) == true);
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
	la	a5,__stack_chk_guard		# tmp130,
	ld	a3, -24(s0)	# tmp133, D.1974
	ld	a5, 0(a5)	# tmp131, __stack_chk_guard
	xor	a5, a3, a5	# tmp131, tmp133
	li	a3, 0	# tmp133
	beq	a5,zero,.L22	#, tmp131,,
	call	__stack_chk_fail@plt	#
.L22:
	mv	a0,a4	#, <retval>
	ld	ra,168(sp)		#,
	ld	s0,160(sp)		#,
	addi	sp,sp,176	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
