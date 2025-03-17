	.file	"problem157.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-208	#,,
	.cfi_def_cfa_offset 208
	sd	ra,200(sp)	#,
	sd	s0,192(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,208	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp137, number
	sd	a1,-208(s0)	# result, result
	sw	a5,-196(s0)	# tmp138, number
# problem157.c:4: void func0(int number, char *result) {
	la	a5,__stack_chk_guard		# tmp139,
	ld	a4, 0(a5)	# tmp178, __stack_chk_guard
	sd	a4, -24(s0)	# tmp178, D.3017
	li	a4, 0	# tmp178
# problem157.c:5:     const char *rep[] = {"m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i"};
	lla	a4,.LC15	# tmp140,
	addi	a5,s0,-128	#, tmp141,
	mv	a3,a4	# tmp142, tmp140
	li	a4,104		# tmp143,
	mv	a2,a4	#, tmp143
	mv	a1,a3	#, tmp142
	mv	a0,a5	#, tmp141
	call	memcpy@plt	#
# problem157.c:6:     const int num[] = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
	lla	a5,.LC14	# tmp145,
	ld	a6,0(a5)		# tmp146,
	ld	a0,8(a5)		# tmp147,
	ld	a1,16(a5)		# tmp148,
	ld	a2,24(a5)		# tmp149,
	ld	a3,32(a5)		# tmp150,
	ld	a4,40(a5)		# tmp151,
	sd	a6,-184(s0)	# tmp146, num
	sd	a0,-176(s0)	# tmp147, num
	sd	a1,-168(s0)	# tmp148, num
	sd	a2,-160(s0)	# tmp149, num
	sd	a3,-152(s0)	# tmp150, num
	sd	a4,-144(s0)	# tmp151, num
	lw	a5,48(a5)		# tmp152,
	sw	a5,-136(s0)	# tmp152, num
# problem157.c:7:     int pos = 0;
	sw	zero,-188(s0)	#, pos
# problem157.c:8:     result[0] = '\0';
	ld	a5,-208(s0)		# tmp153, result
	sb	zero,0(a5)	#, *result_13(D)
# problem157.c:10:     while(number > 0) {
	j	.L2		#
.L4:
# problem157.c:12:             strcat(result, rep[pos]);
	lw	a5,-188(s0)		# tmp154, pos
	slli	a5,a5,3	#, tmp155, tmp154
	addi	a5,a5,-16	#, tmp182, tmp155
	add	a5,a5,s0	#, tmp155, tmp182
	ld	a5,-112(a5)		# _1, rep[pos_6]
	mv	a1,a5	#, _1
	ld	a0,-208(s0)		#, result
	call	strcat@plt	#
# problem157.c:13:             number -= num[pos];
	lw	a5,-188(s0)		# tmp156, pos
	slli	a5,a5,2	#, tmp157, tmp156
	addi	a5,a5,-16	#, tmp183, tmp157
	add	a5,a5,s0	#, tmp157, tmp183
	lw	a5,-168(a5)		# _2, num[pos_6]
# problem157.c:13:             number -= num[pos];
	lw	a4,-196(s0)		# tmp160, number
	subw	a5,a4,a5	# tmp158, tmp159, _2
	sw	a5,-196(s0)	# tmp158, number
.L3:
# problem157.c:11:         while (number >= num[pos]) {
	lw	a5,-188(s0)		# tmp161, pos
	slli	a5,a5,2	#, tmp162, tmp161
	addi	a5,a5,-16	#, tmp184, tmp162
	add	a5,a5,s0	#, tmp162, tmp184
	lw	a4,-168(a5)		# _3, num[pos_6]
# problem157.c:11:         while (number >= num[pos]) {
	lw	a5,-196(s0)		# tmp164, number
	sext.w	a5,a5	# tmp165, tmp163
	bge	a5,a4,.L4	#, tmp165, tmp166,
# problem157.c:15:         if (number > 0) pos++;
	lw	a5,-196(s0)		# tmp168, number
	sext.w	a5,a5	# tmp169, tmp167
	ble	a5,zero,.L2	#, tmp169,,
# problem157.c:15:         if (number > 0) pos++;
	lw	a5,-188(s0)		# tmp172, pos
	addiw	a5,a5,1	#, tmp170, tmp171
	sw	a5,-188(s0)	# tmp170, pos
.L2:
# problem157.c:10:     while(number > 0) {
	lw	a5,-196(s0)		# tmp174, number
	sext.w	a5,a5	# tmp175, tmp173
	bgt	a5,zero,.L3	#, tmp175,,
# problem157.c:17: }
	nop	
	la	a5,__stack_chk_guard		# tmp176,
	ld	a4, -24(s0)	# tmp179, D.3017
	ld	a5, 0(a5)	# tmp177, __stack_chk_guard
	xor	a5, a4, a5	# tmp177, tmp179
	li	a4, 0	# tmp179
	beq	a5,zero,.L7	#, tmp177,,
	call	__stack_chk_fail@plt	#
.L7:
	ld	ra,200(sp)		#,
	.cfi_restore 1
	ld	s0,192(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 208
	addi	sp,sp,208	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
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
.LFB1:
	.cfi_startproc
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
# problem157.c:24: int main() {
	la	a5,__stack_chk_guard		# tmp150,
	ld	a4, 0(a5)	# tmp196, __stack_chk_guard
	sd	a4, -24(s0)	# tmp196, D.3024
	li	a4, 0	# tmp196
# problem157.c:27:     func0(19, result);
	addi	a5,s0,-88	#, tmp151,
	mv	a1,a5	#, tmp151
	li	a0,19		#,
	call	func0		#
# problem157.c:28:     assert(strcmp(result, "xix") == 0);
	addi	a5,s0,-88	#, tmp152,
	lla	a1,.LC16	#,
	mv	a0,a5	#, tmp152
	call	strcmp@plt	#
	mv	a5,a0	# tmp153,
# problem157.c:28:     assert(strcmp(result, "xix") == 0);
	beq	a5,zero,.L9	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC17	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L9:
# problem157.c:30:     func0(152, result);
	addi	a5,s0,-88	#, tmp154,
	mv	a1,a5	#, tmp154
	li	a0,152		#,
	call	func0		#
# problem157.c:31:     assert(strcmp(result, "clii") == 0);
	addi	a5,s0,-88	#, tmp155,
	lla	a1,.LC19	#,
	mv	a0,a5	#, tmp155
	call	strcmp@plt	#
	mv	a5,a0	# tmp156,
# problem157.c:31:     assert(strcmp(result, "clii") == 0);
	beq	a5,zero,.L10	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC17	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L10:
# problem157.c:33:     func0(251, result);
	addi	a5,s0,-88	#, tmp157,
	mv	a1,a5	#, tmp157
	li	a0,251		#,
	call	func0		#
# problem157.c:34:     assert(strcmp(result, "ccli") == 0);
	addi	a5,s0,-88	#, tmp158,
	lla	a1,.LC21	#,
	mv	a0,a5	#, tmp158
	call	strcmp@plt	#
	mv	a5,a0	# tmp159,
# problem157.c:34:     assert(strcmp(result, "ccli") == 0);
	beq	a5,zero,.L11	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC17	#,
	lla	a0,.LC22	#,
	call	__assert_fail@plt	#
.L11:
# problem157.c:36:     func0(426, result);
	addi	a5,s0,-88	#, tmp160,
	mv	a1,a5	#, tmp160
	li	a0,426		#,
	call	func0		#
# problem157.c:37:     assert(strcmp(result, "cdxxvi") == 0);
	addi	a5,s0,-88	#, tmp161,
	lla	a1,.LC23	#,
	mv	a0,a5	#, tmp161
	call	strcmp@plt	#
	mv	a5,a0	# tmp162,
# problem157.c:37:     assert(strcmp(result, "cdxxvi") == 0);
	beq	a5,zero,.L12	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC17	#,
	lla	a0,.LC24	#,
	call	__assert_fail@plt	#
.L12:
# problem157.c:39:     func0(500, result);
	addi	a5,s0,-88	#, tmp163,
	mv	a1,a5	#, tmp163
	li	a0,500		#,
	call	func0		#
# problem157.c:40:     assert(strcmp(result, "d") == 0);
	addi	a5,s0,-88	#, tmp164,
	lla	a1,.LC2	#,
	mv	a0,a5	#, tmp164
	call	strcmp@plt	#
	mv	a5,a0	# tmp165,
# problem157.c:40:     assert(strcmp(result, "d") == 0);
	beq	a5,zero,.L13	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC17	#,
	lla	a0,.LC25	#,
	call	__assert_fail@plt	#
.L13:
# problem157.c:42:     func0(1, result);
	addi	a5,s0,-88	#, tmp166,
	mv	a1,a5	#, tmp166
	li	a0,1		#,
	call	func0		#
# problem157.c:43:     assert(strcmp(result, "i") == 0);
	addi	a5,s0,-88	#, tmp167,
	lla	a1,.LC12	#,
	mv	a0,a5	#, tmp167
	call	strcmp@plt	#
	mv	a5,a0	# tmp168,
# problem157.c:43:     assert(strcmp(result, "i") == 0);
	beq	a5,zero,.L14	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,43		#,
	lla	a1,.LC17	#,
	lla	a0,.LC26	#,
	call	__assert_fail@plt	#
.L14:
# problem157.c:45:     func0(4, result);
	addi	a5,s0,-88	#, tmp169,
	mv	a1,a5	#, tmp169
	li	a0,4		#,
	call	func0		#
# problem157.c:46:     assert(strcmp(result, "iv") == 0);
	addi	a5,s0,-88	#, tmp170,
	lla	a1,.LC11	#,
	mv	a0,a5	#, tmp170
	call	strcmp@plt	#
	mv	a5,a0	# tmp171,
# problem157.c:46:     assert(strcmp(result, "iv") == 0);
	beq	a5,zero,.L15	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,46		#,
	lla	a1,.LC17	#,
	lla	a0,.LC27	#,
	call	__assert_fail@plt	#
.L15:
# problem157.c:48:     func0(43, result);
	addi	a5,s0,-88	#, tmp172,
	mv	a1,a5	#, tmp172
	li	a0,43		#,
	call	func0		#
# problem157.c:49:     assert(strcmp(result, "xliii") == 0);
	addi	a5,s0,-88	#, tmp173,
	lla	a1,.LC28	#,
	mv	a0,a5	#, tmp173
	call	strcmp@plt	#
	mv	a5,a0	# tmp174,
# problem157.c:49:     assert(strcmp(result, "xliii") == 0);
	beq	a5,zero,.L16	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,49		#,
	lla	a1,.LC17	#,
	lla	a0,.LC29	#,
	call	__assert_fail@plt	#
.L16:
# problem157.c:51:     func0(90, result);
	addi	a5,s0,-88	#, tmp175,
	mv	a1,a5	#, tmp175
	li	a0,90		#,
	call	func0		#
# problem157.c:52:     assert(strcmp(result, "xc") == 0);
	addi	a5,s0,-88	#, tmp176,
	lla	a1,.LC5	#,
	mv	a0,a5	#, tmp176
	call	strcmp@plt	#
	mv	a5,a0	# tmp177,
# problem157.c:52:     assert(strcmp(result, "xc") == 0);
	beq	a5,zero,.L17	#, _9,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,52		#,
	lla	a1,.LC17	#,
	lla	a0,.LC30	#,
	call	__assert_fail@plt	#
.L17:
# problem157.c:54:     func0(94, result);
	addi	a5,s0,-88	#, tmp178,
	mv	a1,a5	#, tmp178
	li	a0,94		#,
	call	func0		#
# problem157.c:55:     assert(strcmp(result, "xciv") == 0);
	addi	a5,s0,-88	#, tmp179,
	lla	a1,.LC31	#,
	mv	a0,a5	#, tmp179
	call	strcmp@plt	#
	mv	a5,a0	# tmp180,
# problem157.c:55:     assert(strcmp(result, "xciv") == 0);
	beq	a5,zero,.L18	#, _10,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,55		#,
	lla	a1,.LC17	#,
	lla	a0,.LC32	#,
	call	__assert_fail@plt	#
.L18:
# problem157.c:57:     func0(532, result);
	addi	a5,s0,-88	#, tmp181,
	mv	a1,a5	#, tmp181
	li	a0,532		#,
	call	func0		#
# problem157.c:58:     assert(strcmp(result, "dxxxii") == 0);
	addi	a5,s0,-88	#, tmp182,
	lla	a1,.LC33	#,
	mv	a0,a5	#, tmp182
	call	strcmp@plt	#
	mv	a5,a0	# tmp183,
# problem157.c:58:     assert(strcmp(result, "dxxxii") == 0);
	beq	a5,zero,.L19	#, _11,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,58		#,
	lla	a1,.LC17	#,
	lla	a0,.LC34	#,
	call	__assert_fail@plt	#
.L19:
# problem157.c:60:     func0(900, result);
	addi	a5,s0,-88	#, tmp184,
	mv	a1,a5	#, tmp184
	li	a0,900		#,
	call	func0		#
# problem157.c:61:     assert(strcmp(result, "cm") == 0);
	addi	a5,s0,-88	#, tmp185,
	lla	a1,.LC1	#,
	mv	a0,a5	#, tmp185
	call	strcmp@plt	#
	mv	a5,a0	# tmp186,
# problem157.c:61:     assert(strcmp(result, "cm") == 0);
	beq	a5,zero,.L20	#, _12,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,61		#,
	lla	a1,.LC17	#,
	lla	a0,.LC35	#,
	call	__assert_fail@plt	#
.L20:
# problem157.c:63:     func0(994, result);
	addi	a5,s0,-88	#, tmp187,
	mv	a1,a5	#, tmp187
	li	a0,994		#,
	call	func0		#
# problem157.c:64:     assert(strcmp(result, "cmxciv") == 0);
	addi	a5,s0,-88	#, tmp188,
	lla	a1,.LC36	#,
	mv	a0,a5	#, tmp188
	call	strcmp@plt	#
	mv	a5,a0	# tmp189,
# problem157.c:64:     assert(strcmp(result, "cmxciv") == 0);
	beq	a5,zero,.L21	#, _13,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,64		#,
	lla	a1,.LC17	#,
	lla	a0,.LC37	#,
	call	__assert_fail@plt	#
.L21:
# problem157.c:66:     func0(1000, result);
	addi	a5,s0,-88	#, tmp190,
	mv	a1,a5	#, tmp190
	li	a0,1000		#,
	call	func0		#
# problem157.c:67:     assert(strcmp(result, "m") == 0);
	addi	a5,s0,-88	#, tmp191,
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp191
	call	strcmp@plt	#
	mv	a5,a0	# tmp192,
# problem157.c:67:     assert(strcmp(result, "m") == 0);
	beq	a5,zero,.L22	#, _14,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,67		#,
	lla	a1,.LC17	#,
	lla	a0,.LC38	#,
	call	__assert_fail@plt	#
.L22:
# problem157.c:69:     return 0;
	li	a5,0		# _44,
# problem157.c:70: }
	mv	a4,a5	# <retval>, _44
	la	a5,__stack_chk_guard		# tmp194,
	ld	a3, -24(s0)	# tmp197, D.3024
	ld	a5, 0(a5)	# tmp195, __stack_chk_guard
	xor	a5, a3, a5	# tmp195, tmp197
	li	a3, 0	# tmp197
	beq	a5,zero,.L24	#, tmp195,,
	call	__stack_chk_fail@plt	#
.L24:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	.cfi_restore 1
	ld	s0,80(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96	#,,
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
