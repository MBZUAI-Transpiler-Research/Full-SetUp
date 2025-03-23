	.file	"problem83.c"
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
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# str, str
# problem83.c:6:     int l = strlen(str);
	ld	a0,-40(s0)		#, str
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem83.c:6:     int l = strlen(str);
	sw	a5,-20(s0)	# _1, l
# problem83.c:7:     if (l < 2) return false;
	lw	a5,-20(s0)		# tmp78, l
	sext.w	a4,a5	# tmp79, tmp77
	li	a5,1		# tmp80,
	bgt	a4,a5,.L2	#, tmp79, tmp80,
# problem83.c:7:     if (l < 2) return false;
	li	a5,0		# _5,
	j	.L3		#
.L2:
# problem83.c:8:     for (int i = 2; i * i <= l; i++) {
	li	a5,2		# tmp81,
	sw	a5,-24(s0)	# tmp81, i
# problem83.c:8:     for (int i = 2; i * i <= l; i++) {
	j	.L4		#
.L6:
# problem83.c:9:         if (l % i == 0) return false;
	lw	a5,-20(s0)		# tmp84, l
	mv	a4,a5	# tmp83, tmp84
	lw	a5,-24(s0)		# tmp87, i
	remw	a5,a4,a5	# tmp86, tmp85, tmp83
	sext.w	a5,a5	# _2, tmp85
# problem83.c:9:         if (l % i == 0) return false;
	bne	a5,zero,.L5	#, _2,,
# problem83.c:9:         if (l % i == 0) return false;
	li	a5,0		# _5,
	j	.L3		#
.L5:
# problem83.c:8:     for (int i = 2; i * i <= l; i++) {
	lw	a5,-24(s0)		# tmp90, i
	addiw	a5,a5,1	#, tmp88, tmp89
	sw	a5,-24(s0)	# tmp88, i
.L4:
# problem83.c:8:     for (int i = 2; i * i <= l; i++) {
	lw	a5,-24(s0)		# tmp93, i
	mulw	a5,a5,a5	# tmp91, tmp92, tmp92
	sext.w	a4,a5	# _3, tmp91
# problem83.c:8:     for (int i = 2; i * i <= l; i++) {
	lw	a5,-20(s0)		# tmp95, l
	sext.w	a5,a5	# tmp96, tmp94
	bge	a5,a4,.L6	#, tmp96, tmp97,
# problem83.c:11:     return true;
	li	a5,1		# _5,
.L3:
# problem83.c:12: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"Hello"
	.align	3
.LC1:
	.string	"problem83.c"
	.align	3
.LC2:
	.string	"func0(\"Hello\") == true"
	.align	3
.LC3:
	.string	"abcdcba"
	.align	3
.LC4:
	.string	"func0(\"abcdcba\") == true"
	.align	3
.LC5:
	.string	"kittens"
	.align	3
.LC6:
	.string	"func0(\"kittens\") == true"
	.align	3
.LC7:
	.string	"orange"
	.align	3
.LC8:
	.string	"func0(\"orange\") == false"
	.align	3
.LC9:
	.string	"wow"
	.align	3
.LC10:
	.string	"func0(\"wow\") == true"
	.align	3
.LC11:
	.string	"world"
	.align	3
.LC12:
	.string	"func0(\"world\") == true"
	.align	3
.LC13:
	.string	"MadaM"
	.align	3
.LC14:
	.string	"func0(\"MadaM\") == true"
	.align	3
.LC15:
	.string	"Wow"
	.align	3
.LC16:
	.string	"func0(\"Wow\") == true"
	.align	3
.LC17:
	.string	""
	.align	3
.LC18:
	.string	"func0(\"\") == false"
	.align	3
.LC19:
	.string	"HI"
	.align	3
.LC20:
	.string	"func0(\"HI\") == true"
	.align	3
.LC21:
	.string	"go"
	.align	3
.LC22:
	.string	"func0(\"go\") == true"
	.align	3
.LC23:
	.string	"gogo"
	.align	3
.LC24:
	.string	"func0(\"gogo\") == false"
	.align	3
.LC25:
	.string	"aaaaaaaaaaaaaaa"
	.align	3
.LC26:
	.string	"func0(\"aaaaaaaaaaaaaaa\") == false"
	.align	3
.LC27:
	.string	"Madam"
	.align	3
.LC28:
	.string	"func0(\"Madam\") == true"
	.align	3
.LC29:
	.string	"M"
	.align	3
.LC30:
	.string	"func0(\"M\") == false"
	.align	3
.LC31:
	.string	"0"
	.align	3
.LC32:
	.string	"func0(\"0\") == false"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem83.c:20:     assert(func0("Hello") == true);
	lla	a0,.LC0	#,
	call	func0		#
	mv	a5,a0	# tmp96,
	bne	a5,zero,.L8	#, _1,,
# problem83.c:20:     assert(func0("Hello") == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L8:
# problem83.c:21:     assert(func0("abcdcba") == true);
	lla	a0,.LC3	#,
	call	func0		#
	mv	a5,a0	# tmp97,
	bne	a5,zero,.L9	#, _2,,
# problem83.c:21:     assert(func0("abcdcba") == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L9:
# problem83.c:22:     assert(func0("kittens") == true);
	lla	a0,.LC5	#,
	call	func0		#
	mv	a5,a0	# tmp98,
	bne	a5,zero,.L10	#, _3,,
# problem83.c:22:     assert(func0("kittens") == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC1	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L10:
# problem83.c:23:     assert(func0("orange") == false);
	lla	a0,.LC7	#,
	call	func0		#
	mv	a5,a0	# tmp99,
	xori	a5,a5,1	#, tmp100, _4
	andi	a5,a5,0xff	# _5, tmp100
	bne	a5,zero,.L11	#, _5,,
# problem83.c:23:     assert(func0("orange") == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L11:
# problem83.c:24:     assert(func0("wow") == true);
	lla	a0,.LC9	#,
	call	func0		#
	mv	a5,a0	# tmp101,
	bne	a5,zero,.L12	#, _6,,
# problem83.c:24:     assert(func0("wow") == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC1	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L12:
# problem83.c:25:     assert(func0("world") == true);
	lla	a0,.LC11	#,
	call	func0		#
	mv	a5,a0	# tmp102,
	bne	a5,zero,.L13	#, _7,,
# problem83.c:25:     assert(func0("world") == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC1	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L13:
# problem83.c:26:     assert(func0("MadaM") == true);
	lla	a0,.LC13	#,
	call	func0		#
	mv	a5,a0	# tmp103,
	bne	a5,zero,.L14	#, _8,,
# problem83.c:26:     assert(func0("MadaM") == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC1	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L14:
# problem83.c:27:     assert(func0("Wow") == true);
	lla	a0,.LC15	#,
	call	func0		#
	mv	a5,a0	# tmp104,
	bne	a5,zero,.L15	#, _9,,
# problem83.c:27:     assert(func0("Wow") == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC1	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L15:
# problem83.c:28:     assert(func0("") == false);
	lla	a0,.LC17	#,
	call	func0		#
	mv	a5,a0	# tmp105,
	xori	a5,a5,1	#, tmp106, _10
	andi	a5,a5,0xff	# _11, tmp106
	bne	a5,zero,.L16	#, _11,,
# problem83.c:28:     assert(func0("") == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC1	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L16:
# problem83.c:29:     assert(func0("HI") == true);
	lla	a0,.LC19	#,
	call	func0		#
	mv	a5,a0	# tmp107,
	bne	a5,zero,.L17	#, _12,,
# problem83.c:29:     assert(func0("HI") == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC1	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L17:
# problem83.c:30:     assert(func0("go") == true);
	lla	a0,.LC21	#,
	call	func0		#
	mv	a5,a0	# tmp108,
	bne	a5,zero,.L18	#, _13,,
# problem83.c:30:     assert(func0("go") == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC1	#,
	lla	a0,.LC22	#,
	call	__assert_fail@plt	#
.L18:
# problem83.c:31:     assert(func0("gogo") == false);
	lla	a0,.LC23	#,
	call	func0		#
	mv	a5,a0	# tmp109,
	xori	a5,a5,1	#, tmp110, _14
	andi	a5,a5,0xff	# _15, tmp110
	bne	a5,zero,.L19	#, _15,,
# problem83.c:31:     assert(func0("gogo") == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC1	#,
	lla	a0,.LC24	#,
	call	__assert_fail@plt	#
.L19:
# problem83.c:32:     assert(func0("aaaaaaaaaaaaaaa") == false);
	lla	a0,.LC25	#,
	call	func0		#
	mv	a5,a0	# tmp111,
	xori	a5,a5,1	#, tmp112, _16
	andi	a5,a5,0xff	# _17, tmp112
	bne	a5,zero,.L20	#, _17,,
# problem83.c:32:     assert(func0("aaaaaaaaaaaaaaa") == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC1	#,
	lla	a0,.LC26	#,
	call	__assert_fail@plt	#
.L20:
# problem83.c:33:     assert(func0("Madam") == true);
	lla	a0,.LC27	#,
	call	func0		#
	mv	a5,a0	# tmp113,
	bne	a5,zero,.L21	#, _18,,
# problem83.c:33:     assert(func0("Madam") == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC1	#,
	lla	a0,.LC28	#,
	call	__assert_fail@plt	#
.L21:
# problem83.c:34:     assert(func0("M") == false);
	lla	a0,.LC29	#,
	call	func0		#
	mv	a5,a0	# tmp114,
	xori	a5,a5,1	#, tmp115, _19
	andi	a5,a5,0xff	# _20, tmp115
	bne	a5,zero,.L22	#, _20,,
# problem83.c:34:     assert(func0("M") == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC1	#,
	lla	a0,.LC30	#,
	call	__assert_fail@plt	#
.L22:
# problem83.c:35:     assert(func0("0") == false);
	lla	a0,.LC31	#,
	call	func0		#
	mv	a5,a0	# tmp116,
	xori	a5,a5,1	#, tmp117, _21
	andi	a5,a5,0xff	# _22, tmp117
	bne	a5,zero,.L23	#, _22,,
# problem83.c:35:     assert(func0("0") == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC1	#,
	lla	a0,.LC32	#,
	call	__assert_fail@plt	#
.L23:
# problem83.c:37:     return 0;
	li	a5,0		# _56,
# problem83.c:38: }
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
