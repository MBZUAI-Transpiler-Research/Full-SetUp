	.file	"problem57.c"
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
	sd	a0,-40(s0)	# brackets, brackets
# problem57.c:6:     int level = 0;
	sw	zero,-24(s0)	#, level
# problem57.c:7:     int i = 0;
	sw	zero,-20(s0)	#, i
# problem57.c:8:     while (brackets[i]) {
	j	.L2		#
.L7:
# problem57.c:9:         if (brackets[i] == '<') level++;
	lw	a5,-20(s0)		# _1, i
	ld	a4,-40(s0)		# tmp145, brackets
	add	a5,a4,a5	# _1, _2, tmp145
	lbu	a5,0(a5)	# _3, *_2
# problem57.c:9:         if (brackets[i] == '<') level++;
	mv	a4,a5	# tmp146, _3
	li	a5,60		# tmp147,
	bne	a4,a5,.L3	#, tmp146, tmp147,
# problem57.c:9:         if (brackets[i] == '<') level++;
	lw	a5,-24(s0)		# tmp150, level
	addiw	a5,a5,1	#, tmp148, tmp149
	sw	a5,-24(s0)	# tmp148, level
.L3:
# problem57.c:10:         if (brackets[i] == '>') level--;
	lw	a5,-20(s0)		# _4, i
	ld	a4,-40(s0)		# tmp151, brackets
	add	a5,a4,a5	# _4, _5, tmp151
	lbu	a5,0(a5)	# _6, *_5
# problem57.c:10:         if (brackets[i] == '>') level--;
	mv	a4,a5	# tmp152, _6
	li	a5,62		# tmp153,
	bne	a4,a5,.L4	#, tmp152, tmp153,
# problem57.c:10:         if (brackets[i] == '>') level--;
	lw	a5,-24(s0)		# tmp156, level
	addiw	a5,a5,-1	#, tmp154, tmp155
	sw	a5,-24(s0)	# tmp154, level
.L4:
# problem57.c:11:         if (level < 0) return false;
	lw	a5,-24(s0)		# tmp158, level
	sext.w	a5,a5	# tmp159, tmp157
	bge	a5,zero,.L5	#, tmp159,,
# problem57.c:11:         if (level < 0) return false;
	li	a5,0		# _14,
# problem57.c:11:         if (level < 0) return false;
	j	.L6		#
.L5:
# problem57.c:12:         i++;
	lw	a5,-20(s0)		# tmp162, i
	addiw	a5,a5,1	#, tmp160, tmp161
	sw	a5,-20(s0)	# tmp160, i
.L2:
# problem57.c:8:     while (brackets[i]) {
	lw	a5,-20(s0)		# _7, i
	ld	a4,-40(s0)		# tmp163, brackets
	add	a5,a4,a5	# _7, _8, tmp163
	lbu	a5,0(a5)	# _9, *_8
# problem57.c:8:     while (brackets[i]) {
	bne	a5,zero,.L7	#, _9,,
# problem57.c:14:     if (level != 0) return false;
	lw	a5,-24(s0)		# tmp165, level
	sext.w	a5,a5	# tmp166, tmp164
	beq	a5,zero,.L8	#, tmp166,,
# problem57.c:14:     if (level != 0) return false;
	li	a5,0		# _14,
# problem57.c:14:     if (level != 0) return false;
	j	.L6		#
.L8:
# problem57.c:15:     return true;
	li	a5,1		# _14,
.L6:
# problem57.c:16: }
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
.LC0:
	.string	"<>"
	.align	3
.LC1:
	.string	"problem57.c"
	.align	3
.LC2:
	.string	"func0(\"<>\")"
	.align	3
.LC3:
	.string	"<<><>>"
	.align	3
.LC4:
	.string	"func0(\"<<><>>\")"
	.align	3
.LC5:
	.string	"<><><<><>><>"
	.align	3
.LC6:
	.string	"func0(\"<><><<><>><>\")"
	.align	3
.LC7:
	.string	"<><><<<><><>><>><<><><<>>>"
	.align	3
.LC8:
	.string	"func0(\"<><><<<><><>><>><<><><<>>>\")"
	.align	3
.LC9:
	.string	"<<<><>>>>"
	.align	3
.LC10:
	.string	"!func0(\"<<<><>>>>\")"
	.align	3
.LC11:
	.string	"><<>"
	.align	3
.LC12:
	.string	"!func0(\"><<>\")"
	.align	3
.LC13:
	.string	"<"
	.align	3
.LC14:
	.string	"!func0(\"<\")"
	.align	3
.LC15:
	.string	"<<<<"
	.align	3
.LC16:
	.string	"!func0(\"<<<<\")"
	.align	3
.LC17:
	.string	">"
	.align	3
.LC18:
	.string	"!func0(\">\")"
	.align	3
.LC19:
	.string	"<<>"
	.align	3
.LC20:
	.string	"!func0(\"<<>\")"
	.align	3
.LC21:
	.string	"<><><<><>><>><<>"
	.align	3
.LC22:
	.string	"!func0(\"<><><<><>><>><<>\")"
	.align	3
.LC23:
	.string	"<><><<><>><>>><>"
	.align	3
.LC24:
	.string	"!func0(\"<><><<><>><>>><>\")"
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
# problem57.c:24:     assert(func0("<>"));
	lla	a0,.LC0	#,
	call	func0		#
	mv	a5,a0	# tmp156,
# problem57.c:24:     assert(func0("<>"));
	bne	a5,zero,.L10	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L10:
# problem57.c:25:     assert(func0("<<><>>"));
	lla	a0,.LC3	#,
	call	func0		#
	mv	a5,a0	# tmp157,
# problem57.c:25:     assert(func0("<<><>>"));
	bne	a5,zero,.L11	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L11:
# problem57.c:26:     assert(func0("<><><<><>><>"));
	lla	a0,.LC5	#,
	call	func0		#
	mv	a5,a0	# tmp158,
# problem57.c:26:     assert(func0("<><><<><>><>"));
	bne	a5,zero,.L12	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC1	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L12:
# problem57.c:27:     assert(func0("<><><<<><><>><>><<><><<>>>"));
	lla	a0,.LC7	#,
	call	func0		#
	mv	a5,a0	# tmp159,
# problem57.c:27:     assert(func0("<><><<<><><>><>><<><><<>>>"));
	bne	a5,zero,.L13	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L13:
# problem57.c:28:     assert(!func0("<<<><>>>>"));
	lla	a0,.LC9	#,
	call	func0		#
	mv	a5,a0	# tmp160,
# problem57.c:28:     assert(!func0("<<<><>>>>"));
	xori	a5,a5,1	#, tmp161, _5
	andi	a5,a5,0xff	# _6, tmp161
	bne	a5,zero,.L14	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC1	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L14:
# problem57.c:29:     assert(!func0("><<>"));
	lla	a0,.LC11	#,
	call	func0		#
	mv	a5,a0	# tmp162,
# problem57.c:29:     assert(!func0("><<>"));
	xori	a5,a5,1	#, tmp163, _7
	andi	a5,a5,0xff	# _8, tmp163
	bne	a5,zero,.L15	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC1	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L15:
# problem57.c:30:     assert(!func0("<"));
	lla	a0,.LC13	#,
	call	func0		#
	mv	a5,a0	# tmp164,
# problem57.c:30:     assert(!func0("<"));
	xori	a5,a5,1	#, tmp165, _9
	andi	a5,a5,0xff	# _10, tmp165
	bne	a5,zero,.L16	#, _10,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC1	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L16:
# problem57.c:31:     assert(!func0("<<<<"));
	lla	a0,.LC15	#,
	call	func0		#
	mv	a5,a0	# tmp166,
# problem57.c:31:     assert(!func0("<<<<"));
	xori	a5,a5,1	#, tmp167, _11
	andi	a5,a5,0xff	# _12, tmp167
	bne	a5,zero,.L17	#, _12,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC1	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L17:
# problem57.c:32:     assert(!func0(">"));
	lla	a0,.LC17	#,
	call	func0		#
	mv	a5,a0	# tmp168,
# problem57.c:32:     assert(!func0(">"));
	xori	a5,a5,1	#, tmp169, _13
	andi	a5,a5,0xff	# _14, tmp169
	bne	a5,zero,.L18	#, _14,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC1	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L18:
# problem57.c:33:     assert(!func0("<<>"));
	lla	a0,.LC19	#,
	call	func0		#
	mv	a5,a0	# tmp170,
# problem57.c:33:     assert(!func0("<<>"));
	xori	a5,a5,1	#, tmp171, _15
	andi	a5,a5,0xff	# _16, tmp171
	bne	a5,zero,.L19	#, _16,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC1	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L19:
# problem57.c:34:     assert(!func0("<><><<><>><>><<>"));
	lla	a0,.LC21	#,
	call	func0		#
	mv	a5,a0	# tmp172,
# problem57.c:34:     assert(!func0("<><><<><>><>><<>"));
	xori	a5,a5,1	#, tmp173, _17
	andi	a5,a5,0xff	# _18, tmp173
	bne	a5,zero,.L20	#, _18,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC1	#,
	lla	a0,.LC22	#,
	call	__assert_fail@plt	#
.L20:
# problem57.c:35:     assert(!func0("<><><<><>><>>><>"));
	lla	a0,.LC23	#,
	call	func0		#
	mv	a5,a0	# tmp174,
# problem57.c:35:     assert(!func0("<><><<><>><>>><>"));
	xori	a5,a5,1	#, tmp175, _19
	andi	a5,a5,0xff	# _20, tmp175
	bne	a5,zero,.L21	#, _20,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC1	#,
	lla	a0,.LC24	#,
	call	__assert_fail@plt	#
.L21:
# problem57.c:37:     return 0;
	li	a5,0		# _46,
# problem57.c:38: }
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
