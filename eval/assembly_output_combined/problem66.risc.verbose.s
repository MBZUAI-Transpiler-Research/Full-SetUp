	.file	"problem66.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-112	#,,
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	addi	s0,sp,112	#,,
	mv	a5,a0	# tmp87, x
	mv	a4,a1	# tmp89, shift
	sw	a5,-100(s0)	# tmp88, x
	mv	a5,a4	# tmp90, tmp89
	sw	a5,-104(s0)	# tmp90, shift
# problem66.c:5: char* func0(int x, int shift) {
	la	a5,__stack_chk_guard		# tmp91,
	ld	a4, 0(a5)	# tmp150, __stack_chk_guard
	sd	a4, -24(s0)	# tmp150, D.2648
	li	a4, 0	# tmp150
# problem66.c:7:     sprintf(xs, "%d", x);
	lw	a5,-100(s0)		# tmp92, x
	mv	a2,a5	#, tmp92
	lla	a1,.LC0	#,
	lla	a0,xs.1	#,
	call	sprintf@plt	#
# problem66.c:8:     int len = strlen(xs);
	lla	a0,xs.1	#,
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem66.c:8:     int len = strlen(xs);
	sw	a5,-84(s0)	# _1, len
# problem66.c:10:     if (len < shift) {
	lw	a5,-84(s0)		# tmp94, len
	mv	a4,a5	# tmp93, tmp94
	lw	a5,-104(s0)		# tmp96, shift
	sext.w	a4,a4	# tmp97, tmp93
	sext.w	a5,a5	# tmp98, tmp95
	bge	a4,a5,.L2	#, tmp97, tmp98,
# problem66.c:11:         for (int i = 0; i < len / 2; i++) {
	sw	zero,-88(s0)	#, i
# problem66.c:11:         for (int i = 0; i < len / 2; i++) {
	j	.L3		#
.L4:
# problem66.c:12:             char temp = xs[i];
	lla	a4,xs.1	# tmp99,
	lw	a5,-88(s0)		# tmp100, i
	add	a5,a4,a5	# tmp100, tmp101, tmp99
	lbu	a5,0(a5)	# tmp102, xs[i_14]
	sb	a5,-89(s0)	# tmp102, temp
# problem66.c:13:             xs[i] = xs[len - 1 - i];
	lw	a5,-84(s0)		# tmp105, len
	addiw	a5,a5,-1	#, tmp103, tmp104
	sext.w	a5,a5	# _2, tmp103
# problem66.c:13:             xs[i] = xs[len - 1 - i];
	lw	a4,-88(s0)		# tmp108, i
	subw	a5,a5,a4	# tmp106, _2, tmp107
	sext.w	a5,a5	# _3, tmp106
# problem66.c:13:             xs[i] = xs[len - 1 - i];
	lla	a4,xs.1	# tmp109,
	add	a5,a4,a5	# _3, tmp110, tmp109
	lbu	a4,0(a5)	# _4, xs[_3]
# problem66.c:13:             xs[i] = xs[len - 1 - i];
	lla	a3,xs.1	# tmp111,
	lw	a5,-88(s0)		# tmp112, i
	add	a5,a3,a5	# tmp112, tmp113, tmp111
	sb	a4,0(a5)	# _4, xs[i_14]
# problem66.c:14:             xs[len - 1 - i] = temp;
	lw	a5,-84(s0)		# tmp116, len
	addiw	a5,a5,-1	#, tmp114, tmp115
	sext.w	a5,a5	# _5, tmp114
# problem66.c:14:             xs[len - 1 - i] = temp;
	lw	a4,-88(s0)		# tmp119, i
	subw	a5,a5,a4	# tmp117, _5, tmp118
	sext.w	a5,a5	# _6, tmp117
# problem66.c:14:             xs[len - 1 - i] = temp;
	lla	a4,xs.1	# tmp120,
	add	a5,a4,a5	# _6, tmp121, tmp120
	lbu	a4,-89(s0)	# tmp122, temp
	sb	a4,0(a5)	# tmp122, xs[_6]
# problem66.c:11:         for (int i = 0; i < len / 2; i++) {
	lw	a5,-88(s0)		# tmp125, i
	addiw	a5,a5,1	#, tmp123, tmp124
	sw	a5,-88(s0)	# tmp123, i
.L3:
# problem66.c:11:         for (int i = 0; i < len / 2; i++) {
	lw	a5,-84(s0)		# tmp128, len
	srliw	a4,a5,31	#, tmp129, tmp127
	addw	a5,a4,a5	# tmp127, tmp130, tmp129
	sraiw	a5,a5,1	#, tmp131, tmp130
	sext.w	a4,a5	# _7, tmp131
# problem66.c:11:         for (int i = 0; i < len / 2; i++) {
	lw	a5,-88(s0)		# tmp133, i
	sext.w	a5,a5	# tmp134, tmp132
	blt	a5,a4,.L4	#, tmp134, tmp135,
	j	.L5		#
.L2:
# problem66.c:18:         strcpy(temp, xs + len - shift);
	lw	a4,-84(s0)		# _8, len
	lw	a5,-104(s0)		# _9, shift
	sub	a4,a4,a5	# _10, _8, _9
# problem66.c:18:         strcpy(temp, xs + len - shift);
	lla	a5,xs.1	# tmp136,
	add	a4,a4,a5	# tmp136, _11, _10
	addi	a5,s0,-80	#, tmp137,
	mv	a1,a4	#, _11
	mv	a0,a5	#, tmp137
	call	strcpy@plt	#
# problem66.c:19:         temp[shift] = '\0';
	lw	a5,-104(s0)		# tmp138, shift
	addi	a5,a5,-16	#, tmp154, tmp138
	add	a5,a5,s0	#, tmp139, tmp154
	sb	zero,-64(a5)	#, temp[shift_21(D)]
# problem66.c:20:         strncat(temp, xs, len - shift);
	lw	a5,-84(s0)		# tmp142, len
	mv	a4,a5	# tmp141, tmp142
	lw	a5,-104(s0)		# tmp144, shift
	subw	a5,a4,a5	# tmp140, tmp141, tmp143
	sext.w	a5,a5	# _12, tmp140
# problem66.c:20:         strncat(temp, xs, len - shift);
	mv	a4,a5	# _13, _12
	addi	a5,s0,-80	#, tmp145,
	mv	a2,a4	#, _13
	lla	a1,xs.1	#,
	mv	a0,a5	#, tmp145
	call	strncat@plt	#
# problem66.c:21:         strcpy(xs, temp);
	addi	a5,s0,-80	#, tmp146,
	mv	a1,a5	#, tmp146
	lla	a0,xs.1	#,
	call	strcpy@plt	#
.L5:
# problem66.c:24:     return xs;
	lla	a5,xs.1	# _32,
	mv	a4,a5	# <retval>, _32
# problem66.c:25: }
	la	a5,__stack_chk_guard		# tmp148,
	ld	a3, -24(s0)	# tmp151, D.2648
	ld	a5, 0(a5)	# tmp149, __stack_chk_guard
	xor	a5, a3, a5	# tmp149, tmp151
	li	a3, 0	# tmp151
	beq	a5,zero,.L7	#, tmp149,,
	call	__stack_chk_fail@plt	#
.L7:
	mv	a0,a4	#, <retval>
	ld	ra,104(sp)		#,
	ld	s0,96(sp)		#,
	addi	sp,sp,112	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"001"
	.align	3
.LC2:
	.string	"problem66.c"
	.align	3
.LC3:
	.string	"strcmp(func0(100, 2), \"001\") == 0"
	.align	3
.LC4:
	.string	"12"
	.align	3
.LC5:
	.string	"strcmp(func0(12, 2), \"12\") == 0"
	.align	3
.LC6:
	.string	"79"
	.align	3
.LC7:
	.string	"strcmp(func0(97, 8), \"79\") == 0"
	.align	3
.LC8:
	.string	"21"
	.align	3
.LC9:
	.string	"strcmp(func0(12, 1), \"21\") == 0"
	.align	3
.LC10:
	.string	"11"
	.align	3
.LC11:
	.string	"strcmp(func0(11, 101), \"11\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem66.c:33:     assert(strcmp(func0(100, 2), "001") == 0);
	li	a1,2		#,
	li	a0,100		#,
	call	func0		#
	mv	a5,a0	# _1,
	lla	a1,.LC1	#,
	mv	a0,a5	#, _1
	call	strcmp@plt	#
	mv	a5,a0	# tmp84,
	beq	a5,zero,.L9	#, _2,,
# problem66.c:33:     assert(strcmp(func0(100, 2), "001") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L9:
# problem66.c:34:     assert(strcmp(func0(12, 2), "12") == 0);
	li	a1,2		#,
	li	a0,12		#,
	call	func0		#
	mv	a5,a0	# _3,
	lla	a1,.LC4	#,
	mv	a0,a5	#, _3
	call	strcmp@plt	#
	mv	a5,a0	# tmp85,
	beq	a5,zero,.L10	#, _4,,
# problem66.c:34:     assert(strcmp(func0(12, 2), "12") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC2	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L10:
# problem66.c:35:     assert(strcmp(func0(97, 8), "79") == 0);
	li	a1,8		#,
	li	a0,97		#,
	call	func0		#
	mv	a5,a0	# _5,
	lla	a1,.LC6	#,
	mv	a0,a5	#, _5
	call	strcmp@plt	#
	mv	a5,a0	# tmp86,
	beq	a5,zero,.L11	#, _6,,
# problem66.c:35:     assert(strcmp(func0(97, 8), "79") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC2	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L11:
# problem66.c:36:     assert(strcmp(func0(12, 1), "21") == 0);
	li	a1,1		#,
	li	a0,12		#,
	call	func0		#
	mv	a5,a0	# _7,
	lla	a1,.LC8	#,
	mv	a0,a5	#, _7
	call	strcmp@plt	#
	mv	a5,a0	# tmp87,
	beq	a5,zero,.L12	#, _8,,
# problem66.c:36:     assert(strcmp(func0(12, 1), "21") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC2	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L12:
# problem66.c:37:     assert(strcmp(func0(11, 101), "11") == 0);
	li	a1,101		#,
	li	a0,11		#,
	call	func0		#
	mv	a5,a0	# _9,
	lla	a1,.LC10	#,
	mv	a0,a5	#, _9
	call	strcmp@plt	#
	mv	a5,a0	# tmp88,
	beq	a5,zero,.L13	#, _10,,
# problem66.c:37:     assert(strcmp(func0(11, 101), "11") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC2	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L13:
# problem66.c:39:     return 0;
	li	a5,0		# _22,
# problem66.c:40: }
	mv	a0,a5	#, <retval>
	ld	ra,8(sp)		#,
	ld	s0,0(sp)		#,
	addi	sp,sp,16	#,,
	jr	ra		#
	.size	main, .-main
	.local	xs.1
	.comm	xs.1,50,8
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
