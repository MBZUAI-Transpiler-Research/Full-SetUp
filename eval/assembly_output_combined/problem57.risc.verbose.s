	.file	"problem57.c"
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
	ld	a4,-40(s0)		# tmp83, brackets
	add	a5,a4,a5	# _1, _2, tmp83
	lbu	a5,0(a5)	# _3, *_2
# problem57.c:9:         if (brackets[i] == '<') level++;
	mv	a4,a5	# tmp84, _3
	li	a5,60		# tmp85,
	bne	a4,a5,.L3	#, tmp84, tmp85,
# problem57.c:9:         if (brackets[i] == '<') level++;
	lw	a5,-24(s0)		# tmp88, level
	addiw	a5,a5,1	#, tmp86, tmp87
	sw	a5,-24(s0)	# tmp86, level
.L3:
# problem57.c:10:         if (brackets[i] == '>') level--;
	lw	a5,-20(s0)		# _4, i
	ld	a4,-40(s0)		# tmp89, brackets
	add	a5,a4,a5	# _4, _5, tmp89
	lbu	a5,0(a5)	# _6, *_5
# problem57.c:10:         if (brackets[i] == '>') level--;
	mv	a4,a5	# tmp90, _6
	li	a5,62		# tmp91,
	bne	a4,a5,.L4	#, tmp90, tmp91,
# problem57.c:10:         if (brackets[i] == '>') level--;
	lw	a5,-24(s0)		# tmp94, level
	addiw	a5,a5,-1	#, tmp92, tmp93
	sw	a5,-24(s0)	# tmp92, level
.L4:
# problem57.c:11:         if (level < 0) return false;
	lw	a5,-24(s0)		# tmp96, level
	sext.w	a5,a5	# tmp97, tmp95
	bge	a5,zero,.L5	#, tmp97,,
# problem57.c:11:         if (level < 0) return false;
	li	a5,0		# _14,
	j	.L6		#
.L5:
# problem57.c:12:         i++;
	lw	a5,-20(s0)		# tmp100, i
	addiw	a5,a5,1	#, tmp98, tmp99
	sw	a5,-20(s0)	# tmp98, i
.L2:
# problem57.c:8:     while (brackets[i]) {
	lw	a5,-20(s0)		# _7, i
	ld	a4,-40(s0)		# tmp101, brackets
	add	a5,a4,a5	# _7, _8, tmp101
	lbu	a5,0(a5)	# _9, *_8
# problem57.c:8:     while (brackets[i]) {
	bne	a5,zero,.L7	#, _9,,
# problem57.c:14:     if (level != 0) return false;
	lw	a5,-24(s0)		# tmp103, level
	sext.w	a5,a5	# tmp104, tmp102
	beq	a5,zero,.L8	#, tmp104,,
# problem57.c:14:     if (level != 0) return false;
	li	a5,0		# _14,
	j	.L6		#
.L8:
# problem57.c:15:     return true;
	li	a5,1		# _14,
.L6:
# problem57.c:16: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
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
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem57.c:24:     assert(func0("<>"));
	lla	a0,.LC0	#,
	call	func0		#
	mv	a5,a0	# tmp94,
	bne	a5,zero,.L10	#, _1,,
# problem57.c:24:     assert(func0("<>"));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L10:
# problem57.c:25:     assert(func0("<<><>>"));
	lla	a0,.LC3	#,
	call	func0		#
	mv	a5,a0	# tmp95,
	bne	a5,zero,.L11	#, _2,,
# problem57.c:25:     assert(func0("<<><>>"));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L11:
# problem57.c:26:     assert(func0("<><><<><>><>"));
	lla	a0,.LC5	#,
	call	func0		#
	mv	a5,a0	# tmp96,
	bne	a5,zero,.L12	#, _3,,
# problem57.c:26:     assert(func0("<><><<><>><>"));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC1	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L12:
# problem57.c:27:     assert(func0("<><><<<><><>><>><<><><<>>>"));
	lla	a0,.LC7	#,
	call	func0		#
	mv	a5,a0	# tmp97,
	bne	a5,zero,.L13	#, _4,,
# problem57.c:27:     assert(func0("<><><<<><><>><>><<><><<>>>"));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L13:
# problem57.c:28:     assert(!func0("<<<><>>>>"));
	lla	a0,.LC9	#,
	call	func0		#
	mv	a5,a0	# tmp98,
	xori	a5,a5,1	#, tmp99, _5
	andi	a5,a5,0xff	# _6, tmp99
	bne	a5,zero,.L14	#, _6,,
# problem57.c:28:     assert(!func0("<<<><>>>>"));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC1	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L14:
# problem57.c:29:     assert(!func0("><<>"));
	lla	a0,.LC11	#,
	call	func0		#
	mv	a5,a0	# tmp100,
	xori	a5,a5,1	#, tmp101, _7
	andi	a5,a5,0xff	# _8, tmp101
	bne	a5,zero,.L15	#, _8,,
# problem57.c:29:     assert(!func0("><<>"));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC1	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L15:
# problem57.c:30:     assert(!func0("<"));
	lla	a0,.LC13	#,
	call	func0		#
	mv	a5,a0	# tmp102,
	xori	a5,a5,1	#, tmp103, _9
	andi	a5,a5,0xff	# _10, tmp103
	bne	a5,zero,.L16	#, _10,,
# problem57.c:30:     assert(!func0("<"));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC1	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L16:
# problem57.c:31:     assert(!func0("<<<<"));
	lla	a0,.LC15	#,
	call	func0		#
	mv	a5,a0	# tmp104,
	xori	a5,a5,1	#, tmp105, _11
	andi	a5,a5,0xff	# _12, tmp105
	bne	a5,zero,.L17	#, _12,,
# problem57.c:31:     assert(!func0("<<<<"));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC1	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L17:
# problem57.c:32:     assert(!func0(">"));
	lla	a0,.LC17	#,
	call	func0		#
	mv	a5,a0	# tmp106,
	xori	a5,a5,1	#, tmp107, _13
	andi	a5,a5,0xff	# _14, tmp107
	bne	a5,zero,.L18	#, _14,,
# problem57.c:32:     assert(!func0(">"));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC1	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L18:
# problem57.c:33:     assert(!func0("<<>"));
	lla	a0,.LC19	#,
	call	func0		#
	mv	a5,a0	# tmp108,
	xori	a5,a5,1	#, tmp109, _15
	andi	a5,a5,0xff	# _16, tmp109
	bne	a5,zero,.L19	#, _16,,
# problem57.c:33:     assert(!func0("<<>"));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC1	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L19:
# problem57.c:34:     assert(!func0("<><><<><>><>><<>"));
	lla	a0,.LC21	#,
	call	func0		#
	mv	a5,a0	# tmp110,
	xori	a5,a5,1	#, tmp111, _17
	andi	a5,a5,0xff	# _18, tmp111
	bne	a5,zero,.L20	#, _18,,
# problem57.c:34:     assert(!func0("<><><<><>><>><<>"));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC1	#,
	lla	a0,.LC22	#,
	call	__assert_fail@plt	#
.L20:
# problem57.c:35:     assert(!func0("<><><<><>><>>><>"));
	lla	a0,.LC23	#,
	call	func0		#
	mv	a5,a0	# tmp112,
	xori	a5,a5,1	#, tmp113, _19
	andi	a5,a5,0xff	# _20, tmp113
	bne	a5,zero,.L21	#, _20,,
# problem57.c:35:     assert(!func0("<><><<><>><>>><>"));
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
	ld	s0,0(sp)		#,
	addi	sp,sp,16	#,,
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
