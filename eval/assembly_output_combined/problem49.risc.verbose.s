	.file	"problem49.c"
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
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# text, text
# problem49.c:6:     int len = strlen(text);
	ld	a0,-40(s0)		#, text
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem49.c:6:     int len = strlen(text);
	sw	a5,-20(s0)	# _1, len
# problem49.c:7:     for (int i = 0; i < len / 2; i++) {
	sw	zero,-24(s0)	#, i
# problem49.c:7:     for (int i = 0; i < len / 2; i++) {
	j	.L2		#
.L5:
# problem49.c:8:         if (text[i] != text[len - 1 - i]) {
	lw	a5,-24(s0)		# _2, i
	ld	a4,-40(s0)		# tmp146, text
	add	a5,a4,a5	# _2, _3, tmp146
	lbu	a4,0(a5)	# _4, *_3
# problem49.c:8:         if (text[i] != text[len - 1 - i]) {
	lw	a5,-20(s0)		# tmp149, len
	addiw	a5,a5,-1	#, tmp147, tmp148
	sext.w	a5,a5	# _5, tmp147
# problem49.c:8:         if (text[i] != text[len - 1 - i]) {
	lw	a3,-24(s0)		# tmp152, i
	subw	a5,a5,a3	# tmp150, _5, tmp151
	sext.w	a5,a5	# _6, tmp150
	mv	a3,a5	# _7, _6
# problem49.c:8:         if (text[i] != text[len - 1 - i]) {
	ld	a5,-40(s0)		# tmp153, text
	add	a5,a5,a3	# _7, _8, tmp153
	lbu	a5,0(a5)	# _9, *_8
# problem49.c:8:         if (text[i] != text[len - 1 - i]) {
	beq	a4,a5,.L3	#, tmp154, tmp155,
# problem49.c:9:             return false;
	li	a5,0		# _12,
	j	.L4		#
.L3:
# problem49.c:7:     for (int i = 0; i < len / 2; i++) {
	lw	a5,-24(s0)		# tmp158, i
	addiw	a5,a5,1	#, tmp156, tmp157
	sw	a5,-24(s0)	# tmp156, i
.L2:
# problem49.c:7:     for (int i = 0; i < len / 2; i++) {
	lw	a5,-20(s0)		# tmp161, len
	srliw	a4,a5,31	#, tmp162, tmp160
	addw	a5,a4,a5	# tmp160, tmp163, tmp162
	sraiw	a5,a5,1	#, tmp164, tmp163
	sext.w	a4,a5	# _10, tmp164
# problem49.c:7:     for (int i = 0; i < len / 2; i++) {
	lw	a5,-24(s0)		# tmp166, i
	sext.w	a5,a5	# tmp167, tmp165
	blt	a5,a4,.L5	#, tmp167, tmp168,
# problem49.c:12:     return true;
	li	a5,1		# _12,
.L4:
# problem49.c:13: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
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
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"problem49.c"
	.align	3
.LC2:
	.string	"func0(\"\") == true"
	.align	3
.LC3:
	.string	"aba"
	.align	3
.LC4:
	.string	"func0(\"aba\") == true"
	.align	3
.LC5:
	.string	"aaaaa"
	.align	3
.LC6:
	.string	"func0(\"aaaaa\") == true"
	.align	3
.LC7:
	.string	"zbcd"
	.align	3
.LC8:
	.string	"func0(\"zbcd\") == false"
	.align	3
.LC9:
	.string	"xywyx"
	.align	3
.LC10:
	.string	"func0(\"xywyx\") == true"
	.align	3
.LC11:
	.string	"xywyz"
	.align	3
.LC12:
	.string	"func0(\"xywyz\") == false"
	.align	3
.LC13:
	.string	"xywzx"
	.align	3
.LC14:
	.string	"func0(\"xywzx\") == false"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
# problem49.c:22:     assert(func0("") == true);
	lla	a0,.LC0	#,
	call	func0		#
	mv	a5,a0	# tmp146,
# problem49.c:22:     assert(func0("") == true);
	bne	a5,zero,.L7	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L7:
# problem49.c:23:     assert(func0("aba") == true);
	lla	a0,.LC3	#,
	call	func0		#
	mv	a5,a0	# tmp147,
# problem49.c:23:     assert(func0("aba") == true);
	bne	a5,zero,.L8	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L8:
# problem49.c:24:     assert(func0("aaaaa") == true);
	lla	a0,.LC5	#,
	call	func0		#
	mv	a5,a0	# tmp148,
# problem49.c:24:     assert(func0("aaaaa") == true);
	bne	a5,zero,.L9	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC1	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L9:
# problem49.c:25:     assert(func0("zbcd") == false);
	lla	a0,.LC7	#,
	call	func0		#
	mv	a5,a0	# tmp149,
# problem49.c:25:     assert(func0("zbcd") == false);
	xori	a5,a5,1	#, tmp150, _4
	andi	a5,a5,0xff	# _5, tmp150
	bne	a5,zero,.L10	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L10:
# problem49.c:26:     assert(func0("xywyx") == true);
	lla	a0,.LC9	#,
	call	func0		#
	mv	a5,a0	# tmp151,
# problem49.c:26:     assert(func0("xywyx") == true);
	bne	a5,zero,.L11	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC1	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L11:
# problem49.c:27:     assert(func0("xywyz") == false);
	lla	a0,.LC11	#,
	call	func0		#
	mv	a5,a0	# tmp152,
# problem49.c:27:     assert(func0("xywyz") == false);
	xori	a5,a5,1	#, tmp153, _7
	andi	a5,a5,0xff	# _8, tmp153
	bne	a5,zero,.L12	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC1	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L12:
# problem49.c:28:     assert(func0("xywzx") == false);
	lla	a0,.LC13	#,
	call	func0		#
	mv	a5,a0	# tmp154,
# problem49.c:28:     assert(func0("xywzx") == false);
	xori	a5,a5,1	#, tmp155, _9
	andi	a5,a5,0xff	# _10, tmp155
	bne	a5,zero,.L13	#, _10,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC1	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L13:
# problem49.c:30:     return 0;
	li	a5,0		# _26,
# problem49.c:31: }
	mv	a0,a5	#, <retval>
	ld	ra,8(sp)		#,
	.cfi_restore 1
	ld	s0,0(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16	#,,
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
