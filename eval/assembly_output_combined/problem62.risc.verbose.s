	.file	"problem62.c"
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
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	sd	s1,40(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# brackets, brackets
# problem62.c:6:     int level = 0;
	sw	zero,-40(s0)	#, level
# problem62.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	sw	zero,-36(s0)	#, i
# problem62.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	j	.L2		#
.L7:
# problem62.c:8:         if (brackets[i] == '(') level += 1;
	lw	a5,-36(s0)		# _1, i
	ld	a4,-56(s0)		# tmp82, brackets
	add	a5,a4,a5	# _1, _2, tmp82
	lbu	a5,0(a5)	# _3, *_2
# problem62.c:8:         if (brackets[i] == '(') level += 1;
	mv	a4,a5	# tmp83, _3
	li	a5,40		# tmp84,
	bne	a4,a5,.L3	#, tmp83, tmp84,
# problem62.c:8:         if (brackets[i] == '(') level += 1;
	lw	a5,-40(s0)		# tmp87, level
	addiw	a5,a5,1	#, tmp85, tmp86
	sw	a5,-40(s0)	# tmp85, level
.L3:
# problem62.c:9:         if (brackets[i] == ')') level -= 1;
	lw	a5,-36(s0)		# _4, i
	ld	a4,-56(s0)		# tmp88, brackets
	add	a5,a4,a5	# _4, _5, tmp88
	lbu	a5,0(a5)	# _6, *_5
# problem62.c:9:         if (brackets[i] == ')') level -= 1;
	mv	a4,a5	# tmp89, _6
	li	a5,41		# tmp90,
	bne	a4,a5,.L4	#, tmp89, tmp90,
# problem62.c:9:         if (brackets[i] == ')') level -= 1;
	lw	a5,-40(s0)		# tmp93, level
	addiw	a5,a5,-1	#, tmp91, tmp92
	sw	a5,-40(s0)	# tmp91, level
.L4:
# problem62.c:10:         if (level < 0) return false;
	lw	a5,-40(s0)		# tmp95, level
	sext.w	a5,a5	# tmp96, tmp94
	bge	a5,zero,.L5	#, tmp96,,
# problem62.c:10:         if (level < 0) return false;
	li	a5,0		# _13,
	j	.L6		#
.L5:
# problem62.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	lw	a5,-36(s0)		# tmp99, i
	addiw	a5,a5,1	#, tmp97, tmp98
	sw	a5,-36(s0)	# tmp97, i
.L2:
# problem62.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	lw	s1,-36(s0)		# _7, i
# problem62.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	ld	a0,-56(s0)		#, brackets
	call	strlen@plt	#
	mv	a5,a0	# _8,
# problem62.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	bltu	s1,a5,.L7	#, _7, _8,
# problem62.c:12:     return level == 0;
	lw	a5,-40(s0)		# tmp102, level
	sext.w	a5,a5	# tmp104, tmp101
	seqz	a5,a5	# tmp103, tmp104
	andi	a5,a5,0xff	# _13, tmp100
.L6:
# problem62.c:13: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	ld	s1,40(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"()"
	.align	3
.LC1:
	.string	"problem62.c"
	.align	3
.LC2:
	.string	"func0(\"()\")"
	.align	3
.LC3:
	.string	"(()())"
	.align	3
.LC4:
	.string	"func0(\"(()())\")"
	.align	3
.LC5:
	.string	"()()(()())()"
	.align	3
.LC6:
	.string	"func0(\"()()(()())()\")"
	.align	3
.LC7:
	.string	"()()((()()())())(()()(()))"
	.align	3
.LC8:
	.string	"func0(\"()()((()()())())(()()(()))\")"
	.align	3
.LC9:
	.string	"((()())))"
	.align	3
.LC10:
	.string	"!func0(\"((()())))\")"
	.align	3
.LC11:
	.string	")(()"
	.align	3
.LC12:
	.string	"!func0(\")(()\")"
	.align	3
.LC13:
	.string	"("
	.align	3
.LC14:
	.string	"!func0(\"(\")"
	.align	3
.LC15:
	.string	"(((("
	.align	3
.LC16:
	.string	"!func0(\"((((\")"
	.align	3
.LC17:
	.string	")"
	.align	3
.LC18:
	.string	"!func0(\")\")"
	.align	3
.LC19:
	.string	"(()"
	.align	3
.LC20:
	.string	"!func0(\"(()\")"
	.align	3
.LC21:
	.string	"()()(()())())(()"
	.align	3
.LC22:
	.string	"!func0(\"()()(()())())(()\")"
	.align	3
.LC23:
	.string	"()()(()())()))()"
	.align	3
.LC24:
	.string	"!func0(\"()()(()())()))()\")"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem62.c:21:     assert(func0("()"));
	lla	a0,.LC0	#,
	call	func0		#
	mv	a5,a0	# tmp94,
	bne	a5,zero,.L9	#, _1,,
# problem62.c:21:     assert(func0("()"));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L9:
# problem62.c:22:     assert(func0("(()())"));
	lla	a0,.LC3	#,
	call	func0		#
	mv	a5,a0	# tmp95,
	bne	a5,zero,.L10	#, _2,,
# problem62.c:22:     assert(func0("(()())"));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L10:
# problem62.c:23:     assert(func0("()()(()())()"));
	lla	a0,.LC5	#,
	call	func0		#
	mv	a5,a0	# tmp96,
	bne	a5,zero,.L11	#, _3,,
# problem62.c:23:     assert(func0("()()(()())()"));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC1	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L11:
# problem62.c:24:     assert(func0("()()((()()())())(()()(()))"));
	lla	a0,.LC7	#,
	call	func0		#
	mv	a5,a0	# tmp97,
	bne	a5,zero,.L12	#, _4,,
# problem62.c:24:     assert(func0("()()((()()())())(()()(()))"));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L12:
# problem62.c:25:     assert(!func0("((()())))"));
	lla	a0,.LC9	#,
	call	func0		#
	mv	a5,a0	# tmp98,
	xori	a5,a5,1	#, tmp99, _5
	andi	a5,a5,0xff	# _6, tmp99
	bne	a5,zero,.L13	#, _6,,
# problem62.c:25:     assert(!func0("((()())))"));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC1	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L13:
# problem62.c:26:     assert(!func0(")(()"));
	lla	a0,.LC11	#,
	call	func0		#
	mv	a5,a0	# tmp100,
	xori	a5,a5,1	#, tmp101, _7
	andi	a5,a5,0xff	# _8, tmp101
	bne	a5,zero,.L14	#, _8,,
# problem62.c:26:     assert(!func0(")(()"));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC1	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L14:
# problem62.c:27:     assert(!func0("("));
	lla	a0,.LC13	#,
	call	func0		#
	mv	a5,a0	# tmp102,
	xori	a5,a5,1	#, tmp103, _9
	andi	a5,a5,0xff	# _10, tmp103
	bne	a5,zero,.L15	#, _10,,
# problem62.c:27:     assert(!func0("("));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC1	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L15:
# problem62.c:28:     assert(!func0("(((("));
	lla	a0,.LC15	#,
	call	func0		#
	mv	a5,a0	# tmp104,
	xori	a5,a5,1	#, tmp105, _11
	andi	a5,a5,0xff	# _12, tmp105
	bne	a5,zero,.L16	#, _12,,
# problem62.c:28:     assert(!func0("(((("));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC1	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L16:
# problem62.c:29:     assert(!func0(")"));
	lla	a0,.LC17	#,
	call	func0		#
	mv	a5,a0	# tmp106,
	xori	a5,a5,1	#, tmp107, _13
	andi	a5,a5,0xff	# _14, tmp107
	bne	a5,zero,.L17	#, _14,,
# problem62.c:29:     assert(!func0(")"));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC1	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L17:
# problem62.c:30:     assert(!func0("(()"));
	lla	a0,.LC19	#,
	call	func0		#
	mv	a5,a0	# tmp108,
	xori	a5,a5,1	#, tmp109, _15
	andi	a5,a5,0xff	# _16, tmp109
	bne	a5,zero,.L18	#, _16,,
# problem62.c:30:     assert(!func0("(()"));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC1	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L18:
# problem62.c:31:     assert(!func0("()()(()())())(()"));
	lla	a0,.LC21	#,
	call	func0		#
	mv	a5,a0	# tmp110,
	xori	a5,a5,1	#, tmp111, _17
	andi	a5,a5,0xff	# _18, tmp111
	bne	a5,zero,.L19	#, _18,,
# problem62.c:31:     assert(!func0("()()(()())())(()"));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC1	#,
	lla	a0,.LC22	#,
	call	__assert_fail@plt	#
.L19:
# problem62.c:32:     assert(!func0("()()(()())()))()"));
	lla	a0,.LC23	#,
	call	func0		#
	mv	a5,a0	# tmp112,
	xori	a5,a5,1	#, tmp113, _19
	andi	a5,a5,0xff	# _20, tmp113
	bne	a5,zero,.L20	#, _20,,
# problem62.c:32:     assert(!func0("()()(()())()))()"));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC1	#,
	lla	a0,.LC24	#,
	call	__assert_fail@plt	#
.L20:
# problem62.c:34:     return 0;
	li	a5,0		# _46,
# problem62.c:35: }
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
