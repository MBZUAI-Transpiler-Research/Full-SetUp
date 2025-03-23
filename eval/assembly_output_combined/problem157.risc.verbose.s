	.file	"problem157.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"m"
	.align	3
.LC1:
	.string	"cm"
	.align	3
.LC2:
	.string	"d"
	.align	3
.LC3:
	.string	"cd"
	.align	3
.LC4:
	.string	"c"
	.align	3
.LC5:
	.string	"xc"
	.align	3
.LC6:
	.string	"l"
	.align	3
.LC7:
	.string	"xl"
	.align	3
.LC8:
	.string	"x"
	.align	3
.LC9:
	.string	"ix"
	.align	3
.LC10:
	.string	"v"
	.align	3
.LC11:
	.string	"iv"
	.align	3
.LC12:
	.string	"i"
	.data
	.align	3
.LC15:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC5
	.dword	.LC6
	.dword	.LC7
	.dword	.LC8
	.dword	.LC9
	.dword	.LC10
	.dword	.LC11
	.dword	.LC12
	.section	.rodata
	.align	3
.LC14:
	.word	1000
	.word	900
	.word	500
	.word	400
	.word	100
	.word	90
	.word	50
	.word	40
	.word	10
	.word	9
	.word	5
	.word	4
	.word	1
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-208	#,,
	sd	ra,200(sp)	#,
	sd	s0,192(sp)	#,
	addi	s0,sp,208	#,,
	mv	a5,a0	# tmp75, number
	sd	a1,-208(s0)	# result, result
	sw	a5,-196(s0)	# tmp76, number
# problem157.c:4: void func0(int number, char *result) {
	la	a5,__stack_chk_guard		# tmp77,
	ld	a4, 0(a5)	# tmp116, __stack_chk_guard
	sd	a4, -24(s0)	# tmp116, D.2172
	li	a4, 0	# tmp116
# problem157.c:5:     const char *rep[] = {"m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i"};
	lla	a4,.LC15	# tmp78,
	addi	a5,s0,-128	#, tmp79,
	mv	a3,a4	# tmp80, tmp78
	li	a4,104		# tmp81,
	mv	a2,a4	#, tmp81
	mv	a1,a3	#, tmp80
	mv	a0,a5	#, tmp79
	call	memcpy@plt	#
# problem157.c:6:     const int num[] = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
	lla	a5,.LC14	# tmp83,
	ld	a6,0(a5)		# tmp84,
	ld	a0,8(a5)		# tmp85,
	ld	a1,16(a5)		# tmp86,
	ld	a2,24(a5)		# tmp87,
	ld	a3,32(a5)		# tmp88,
	ld	a4,40(a5)		# tmp89,
	sd	a6,-184(s0)	# tmp84, num
	sd	a0,-176(s0)	# tmp85, num
	sd	a1,-168(s0)	# tmp86, num
	sd	a2,-160(s0)	# tmp87, num
	sd	a3,-152(s0)	# tmp88, num
	sd	a4,-144(s0)	# tmp89, num
	lw	a5,48(a5)		# tmp90,
	sw	a5,-136(s0)	# tmp90, num
# problem157.c:7:     int pos = 0;
	sw	zero,-188(s0)	#, pos
# problem157.c:8:     result[0] = '\0';
	ld	a5,-208(s0)		# tmp91, result
	sb	zero,0(a5)	#, *result_13(D)
# problem157.c:10:     while(number > 0) {
	j	.L2		#
.L4:
# problem157.c:12:             strcat(result, rep[pos]);
	lw	a5,-188(s0)		# tmp92, pos
	slli	a5,a5,3	#, tmp93, tmp92
	addi	a5,a5,-16	#, tmp120, tmp93
	add	a5,a5,s0	#, tmp93, tmp120
	ld	a5,-112(a5)		# _1, rep[pos_6]
	mv	a1,a5	#, _1
	ld	a0,-208(s0)		#, result
	call	strcat@plt	#
# problem157.c:13:             number -= num[pos];
	lw	a5,-188(s0)		# tmp94, pos
	slli	a5,a5,2	#, tmp95, tmp94
	addi	a5,a5,-16	#, tmp121, tmp95
	add	a5,a5,s0	#, tmp95, tmp121
	lw	a5,-168(a5)		# _2, num[pos_6]
# problem157.c:13:             number -= num[pos];
	lw	a4,-196(s0)		# tmp98, number
	subw	a5,a4,a5	# tmp96, tmp97, _2
	sw	a5,-196(s0)	# tmp96, number
.L3:
# problem157.c:11:         while (number >= num[pos]) {
	lw	a5,-188(s0)		# tmp99, pos
	slli	a5,a5,2	#, tmp100, tmp99
	addi	a5,a5,-16	#, tmp122, tmp100
	add	a5,a5,s0	#, tmp100, tmp122
	lw	a4,-168(a5)		# _3, num[pos_6]
# problem157.c:11:         while (number >= num[pos]) {
	lw	a5,-196(s0)		# tmp102, number
	sext.w	a5,a5	# tmp103, tmp101
	bge	a5,a4,.L4	#, tmp103, tmp104,
# problem157.c:15:         if (number > 0) pos++;
	lw	a5,-196(s0)		# tmp106, number
	sext.w	a5,a5	# tmp107, tmp105
	ble	a5,zero,.L2	#, tmp107,,
# problem157.c:15:         if (number > 0) pos++;
	lw	a5,-188(s0)		# tmp110, pos
	addiw	a5,a5,1	#, tmp108, tmp109
	sw	a5,-188(s0)	# tmp108, pos
.L2:
# problem157.c:10:     while(number > 0) {
	lw	a5,-196(s0)		# tmp112, number
	sext.w	a5,a5	# tmp113, tmp111
	bgt	a5,zero,.L3	#, tmp113,,
# problem157.c:17: }
	nop	
	la	a5,__stack_chk_guard		# tmp114,
	ld	a4, -24(s0)	# tmp117, D.2172
	ld	a5, 0(a5)	# tmp115, __stack_chk_guard
	xor	a5, a4, a5	# tmp115, tmp117
	li	a4, 0	# tmp117
	beq	a5,zero,.L6	#, tmp115,,
	call	__stack_chk_fail@plt	#
.L6:
	ld	ra,200(sp)		#,
	ld	s0,192(sp)		#,
	addi	sp,sp,208	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC16:
	.string	"xix"
	.align	3
.LC17:
	.string	"problem157.c"
	.align	3
.LC18:
	.string	"strcmp(result, \"xix\") == 0"
	.align	3
.LC19:
	.string	"clii"
	.align	3
.LC20:
	.string	"strcmp(result, \"clii\") == 0"
	.align	3
.LC21:
	.string	"ccli"
	.align	3
.LC22:
	.string	"strcmp(result, \"ccli\") == 0"
	.align	3
.LC23:
	.string	"cdxxvi"
	.align	3
.LC24:
	.string	"strcmp(result, \"cdxxvi\") == 0"
	.align	3
.LC25:
	.string	"strcmp(result, \"d\") == 0"
	.align	3
.LC26:
	.string	"strcmp(result, \"i\") == 0"
	.align	3
.LC27:
	.string	"strcmp(result, \"iv\") == 0"
	.align	3
.LC28:
	.string	"xliii"
	.align	3
.LC29:
	.string	"strcmp(result, \"xliii\") == 0"
	.align	3
.LC30:
	.string	"strcmp(result, \"xc\") == 0"
	.align	3
.LC31:
	.string	"xciv"
	.align	3
.LC32:
	.string	"strcmp(result, \"xciv\") == 0"
	.align	3
.LC33:
	.string	"dxxxii"
	.align	3
.LC34:
	.string	"strcmp(result, \"dxxxii\") == 0"
	.align	3
.LC35:
	.string	"strcmp(result, \"cm\") == 0"
	.align	3
.LC36:
	.string	"cmxciv"
	.align	3
.LC37:
	.string	"strcmp(result, \"cmxciv\") == 0"
	.align	3
.LC38:
	.string	"strcmp(result, \"m\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-96	#,,
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	addi	s0,sp,96	#,,
# problem157.c:24: int main() {
	la	a5,__stack_chk_guard		# tmp88,
	ld	a4, 0(a5)	# tmp134, __stack_chk_guard
	sd	a4, -24(s0)	# tmp134, D.2179
	li	a4, 0	# tmp134
# problem157.c:27:     func0(19, result);
	addi	a5,s0,-88	#, tmp89,
	mv	a1,a5	#, tmp89
	li	a0,19		#,
	call	func0		#
# problem157.c:28:     assert(strcmp(result, "xix") == 0);
	addi	a5,s0,-88	#, tmp90,
	lla	a1,.LC16	#,
	mv	a0,a5	#, tmp90
	call	strcmp@plt	#
	mv	a5,a0	# tmp91,
	beq	a5,zero,.L8	#, _1,,
# problem157.c:28:     assert(strcmp(result, "xix") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC17	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L8:
# problem157.c:30:     func0(152, result);
	addi	a5,s0,-88	#, tmp92,
	mv	a1,a5	#, tmp92
	li	a0,152		#,
	call	func0		#
# problem157.c:31:     assert(strcmp(result, "clii") == 0);
	addi	a5,s0,-88	#, tmp93,
	lla	a1,.LC19	#,
	mv	a0,a5	#, tmp93
	call	strcmp@plt	#
	mv	a5,a0	# tmp94,
	beq	a5,zero,.L9	#, _2,,
# problem157.c:31:     assert(strcmp(result, "clii") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC17	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L9:
# problem157.c:33:     func0(251, result);
	addi	a5,s0,-88	#, tmp95,
	mv	a1,a5	#, tmp95
	li	a0,251		#,
	call	func0		#
# problem157.c:34:     assert(strcmp(result, "ccli") == 0);
	addi	a5,s0,-88	#, tmp96,
	lla	a1,.LC21	#,
	mv	a0,a5	#, tmp96
	call	strcmp@plt	#
	mv	a5,a0	# tmp97,
	beq	a5,zero,.L10	#, _3,,
# problem157.c:34:     assert(strcmp(result, "ccli") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC17	#,
	lla	a0,.LC22	#,
	call	__assert_fail@plt	#
.L10:
# problem157.c:36:     func0(426, result);
	addi	a5,s0,-88	#, tmp98,
	mv	a1,a5	#, tmp98
	li	a0,426		#,
	call	func0		#
# problem157.c:37:     assert(strcmp(result, "cdxxvi") == 0);
	addi	a5,s0,-88	#, tmp99,
	lla	a1,.LC23	#,
	mv	a0,a5	#, tmp99
	call	strcmp@plt	#
	mv	a5,a0	# tmp100,
	beq	a5,zero,.L11	#, _4,,
# problem157.c:37:     assert(strcmp(result, "cdxxvi") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC17	#,
	lla	a0,.LC24	#,
	call	__assert_fail@plt	#
.L11:
# problem157.c:39:     func0(500, result);
	addi	a5,s0,-88	#, tmp101,
	mv	a1,a5	#, tmp101
	li	a0,500		#,
	call	func0		#
# problem157.c:40:     assert(strcmp(result, "d") == 0);
	addi	a5,s0,-88	#, tmp102,
	lla	a1,.LC2	#,
	mv	a0,a5	#, tmp102
	call	strcmp@plt	#
	mv	a5,a0	# tmp103,
	beq	a5,zero,.L12	#, _5,,
# problem157.c:40:     assert(strcmp(result, "d") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC17	#,
	lla	a0,.LC25	#,
	call	__assert_fail@plt	#
.L12:
# problem157.c:42:     func0(1, result);
	addi	a5,s0,-88	#, tmp104,
	mv	a1,a5	#, tmp104
	li	a0,1		#,
	call	func0		#
# problem157.c:43:     assert(strcmp(result, "i") == 0);
	addi	a5,s0,-88	#, tmp105,
	lla	a1,.LC12	#,
	mv	a0,a5	#, tmp105
	call	strcmp@plt	#
	mv	a5,a0	# tmp106,
	beq	a5,zero,.L13	#, _6,,
# problem157.c:43:     assert(strcmp(result, "i") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,43		#,
	lla	a1,.LC17	#,
	lla	a0,.LC26	#,
	call	__assert_fail@plt	#
.L13:
# problem157.c:45:     func0(4, result);
	addi	a5,s0,-88	#, tmp107,
	mv	a1,a5	#, tmp107
	li	a0,4		#,
	call	func0		#
# problem157.c:46:     assert(strcmp(result, "iv") == 0);
	addi	a5,s0,-88	#, tmp108,
	lla	a1,.LC11	#,
	mv	a0,a5	#, tmp108
	call	strcmp@plt	#
	mv	a5,a0	# tmp109,
	beq	a5,zero,.L14	#, _7,,
# problem157.c:46:     assert(strcmp(result, "iv") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,46		#,
	lla	a1,.LC17	#,
	lla	a0,.LC27	#,
	call	__assert_fail@plt	#
.L14:
# problem157.c:48:     func0(43, result);
	addi	a5,s0,-88	#, tmp110,
	mv	a1,a5	#, tmp110
	li	a0,43		#,
	call	func0		#
# problem157.c:49:     assert(strcmp(result, "xliii") == 0);
	addi	a5,s0,-88	#, tmp111,
	lla	a1,.LC28	#,
	mv	a0,a5	#, tmp111
	call	strcmp@plt	#
	mv	a5,a0	# tmp112,
	beq	a5,zero,.L15	#, _8,,
# problem157.c:49:     assert(strcmp(result, "xliii") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,49		#,
	lla	a1,.LC17	#,
	lla	a0,.LC29	#,
	call	__assert_fail@plt	#
.L15:
# problem157.c:51:     func0(90, result);
	addi	a5,s0,-88	#, tmp113,
	mv	a1,a5	#, tmp113
	li	a0,90		#,
	call	func0		#
# problem157.c:52:     assert(strcmp(result, "xc") == 0);
	addi	a5,s0,-88	#, tmp114,
	lla	a1,.LC5	#,
	mv	a0,a5	#, tmp114
	call	strcmp@plt	#
	mv	a5,a0	# tmp115,
	beq	a5,zero,.L16	#, _9,,
# problem157.c:52:     assert(strcmp(result, "xc") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,52		#,
	lla	a1,.LC17	#,
	lla	a0,.LC30	#,
	call	__assert_fail@plt	#
.L16:
# problem157.c:54:     func0(94, result);
	addi	a5,s0,-88	#, tmp116,
	mv	a1,a5	#, tmp116
	li	a0,94		#,
	call	func0		#
# problem157.c:55:     assert(strcmp(result, "xciv") == 0);
	addi	a5,s0,-88	#, tmp117,
	lla	a1,.LC31	#,
	mv	a0,a5	#, tmp117
	call	strcmp@plt	#
	mv	a5,a0	# tmp118,
	beq	a5,zero,.L17	#, _10,,
# problem157.c:55:     assert(strcmp(result, "xciv") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,55		#,
	lla	a1,.LC17	#,
	lla	a0,.LC32	#,
	call	__assert_fail@plt	#
.L17:
# problem157.c:57:     func0(532, result);
	addi	a5,s0,-88	#, tmp119,
	mv	a1,a5	#, tmp119
	li	a0,532		#,
	call	func0		#
# problem157.c:58:     assert(strcmp(result, "dxxxii") == 0);
	addi	a5,s0,-88	#, tmp120,
	lla	a1,.LC33	#,
	mv	a0,a5	#, tmp120
	call	strcmp@plt	#
	mv	a5,a0	# tmp121,
	beq	a5,zero,.L18	#, _11,,
# problem157.c:58:     assert(strcmp(result, "dxxxii") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,58		#,
	lla	a1,.LC17	#,
	lla	a0,.LC34	#,
	call	__assert_fail@plt	#
.L18:
# problem157.c:60:     func0(900, result);
	addi	a5,s0,-88	#, tmp122,
	mv	a1,a5	#, tmp122
	li	a0,900		#,
	call	func0		#
# problem157.c:61:     assert(strcmp(result, "cm") == 0);
	addi	a5,s0,-88	#, tmp123,
	lla	a1,.LC1	#,
	mv	a0,a5	#, tmp123
	call	strcmp@plt	#
	mv	a5,a0	# tmp124,
	beq	a5,zero,.L19	#, _12,,
# problem157.c:61:     assert(strcmp(result, "cm") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,61		#,
	lla	a1,.LC17	#,
	lla	a0,.LC35	#,
	call	__assert_fail@plt	#
.L19:
# problem157.c:63:     func0(994, result);
	addi	a5,s0,-88	#, tmp125,
	mv	a1,a5	#, tmp125
	li	a0,994		#,
	call	func0		#
# problem157.c:64:     assert(strcmp(result, "cmxciv") == 0);
	addi	a5,s0,-88	#, tmp126,
	lla	a1,.LC36	#,
	mv	a0,a5	#, tmp126
	call	strcmp@plt	#
	mv	a5,a0	# tmp127,
	beq	a5,zero,.L20	#, _13,,
# problem157.c:64:     assert(strcmp(result, "cmxciv") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,64		#,
	lla	a1,.LC17	#,
	lla	a0,.LC37	#,
	call	__assert_fail@plt	#
.L20:
# problem157.c:66:     func0(1000, result);
	addi	a5,s0,-88	#, tmp128,
	mv	a1,a5	#, tmp128
	li	a0,1000		#,
	call	func0		#
# problem157.c:67:     assert(strcmp(result, "m") == 0);
	addi	a5,s0,-88	#, tmp129,
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp129
	call	strcmp@plt	#
	mv	a5,a0	# tmp130,
	beq	a5,zero,.L21	#, _14,,
# problem157.c:67:     assert(strcmp(result, "m") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,67		#,
	lla	a1,.LC17	#,
	lla	a0,.LC38	#,
	call	__assert_fail@plt	#
.L21:
# problem157.c:69:     return 0;
	li	a5,0		# _44,
# problem157.c:70: }
	mv	a4,a5	# <retval>, _44
	la	a5,__stack_chk_guard		# tmp132,
	ld	a3, -24(s0)	# tmp135, D.2179
	ld	a5, 0(a5)	# tmp133, __stack_chk_guard
	xor	a5, a3, a5	# tmp133, tmp135
	li	a3, 0	# tmp135
	beq	a5,zero,.L23	#, tmp133,,
	call	__stack_chk_fail@plt	#
.L23:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	ld	s0,80(sp)		#,
	addi	sp,sp,96	#,,
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
