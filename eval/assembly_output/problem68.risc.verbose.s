	.file	"problem68.c"
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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-112	#,,
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	sd	s1,88(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,112	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-104(s0)	# s, s
	mv	a5,a1	# tmp161, n
	sw	a5,-108(s0)	# tmp162, n
# problem68.c:5: int func0(const char *s, int n) {
	la	a5,__stack_chk_guard		# tmp163,
	ld	a4, 0(a5)	# tmp199, __stack_chk_guard
	sd	a4, -40(s0)	# tmp199, D.3415
	li	a4, 0	# tmp199
# problem68.c:6:     char num1[10] = "";
	sd	zero,-72(s0)	#, num1
	sh	zero,-64(s0)	#, num1
# problem68.c:7:     char num2[10] = "";
	sd	zero,-56(s0)	#, num2
	sh	zero,-48(s0)	#, num2
# problem68.c:8:     int is12 = 0, j = 0;
	sw	zero,-84(s0)	#, is12
# problem68.c:8:     int is12 = 0, j = 0;
	sw	zero,-80(s0)	#, j
# problem68.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	sw	zero,-76(s0)	#, i
# problem68.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	j	.L2		#
.L6:
# problem68.c:11:         if (isdigit(s[i])) {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _1,
# problem68.c:11:         if (isdigit(s[i])) {
	ld	a4,0(a5)		# _2, *_1
	lw	a5,-76(s0)		# _3, i
	ld	a3,-104(s0)		# tmp164, s
	add	a5,a3,a5	# _3, _4, tmp164
	lbu	a5,0(a5)	# _5, *_4
	slli	a5,a5,1	#, _7, _6
	add	a5,a4,a5	# _7, _8, _2
	lhu	a5,0(a5)	# _9, *_8
	sext.w	a4,a5	# _10, _9
	li	a5,4096		# tmp167,
	addi	a5,a5,-2048	#, tmp166, tmp167
	and	a5,a4,a5	# tmp166, tmp165, _10
	sext.w	a5,a5	# _11, tmp165
# problem68.c:11:         if (isdigit(s[i])) {
	beq	a5,zero,.L3	#, _11,,
# problem68.c:12:             if (is12 == 0) {
	lw	a5,-84(s0)		# tmp169, is12
	sext.w	a5,a5	# tmp170, tmp168
	bne	a5,zero,.L4	#, tmp170,,
# problem68.c:13:                 num1[j++] = s[i];
	lw	a5,-76(s0)		# _12, i
	ld	a4,-104(s0)		# tmp171, s
	add	a4,a4,a5	# _12, _13, tmp171
# problem68.c:13:                 num1[j++] = s[i];
	lw	a5,-80(s0)		# j.0_14, j
	addiw	a3,a5,1	#, tmp172, j.0_14
	sw	a3,-80(s0)	# tmp172, j
# problem68.c:13:                 num1[j++] = s[i];
	lbu	a4,0(a4)	# _15, *_13
# problem68.c:13:                 num1[j++] = s[i];
	addi	a5,a5,-32	#, tmp203, j.0_14
	add	a5,a5,s0	#, tmp173, tmp203
	sb	a4,-40(a5)	# _15, num1[j.0_14]
	j	.L5		#
.L4:
# problem68.c:15:                 num2[j++] = s[i];
	lw	a5,-76(s0)		# _16, i
	ld	a4,-104(s0)		# tmp174, s
	add	a4,a4,a5	# _16, _17, tmp174
# problem68.c:15:                 num2[j++] = s[i];
	lw	a5,-80(s0)		# j.1_18, j
	addiw	a3,a5,1	#, tmp175, j.1_18
	sw	a3,-80(s0)	# tmp175, j
# problem68.c:15:                 num2[j++] = s[i];
	lbu	a4,0(a4)	# _19, *_17
# problem68.c:15:                 num2[j++] = s[i];
	addi	a5,a5,-32	#, tmp204, j.1_18
	add	a5,a5,s0	#, tmp176, tmp204
	sb	a4,-24(a5)	# _19, num2[j.1_18]
	j	.L5		#
.L3:
# problem68.c:18:             if (is12 == 0 && j > 0) {
	lw	a5,-84(s0)		# tmp178, is12
	sext.w	a5,a5	# tmp179, tmp177
	bne	a5,zero,.L5	#, tmp179,,
# problem68.c:18:             if (is12 == 0 && j > 0) {
	lw	a5,-80(s0)		# tmp181, j
	sext.w	a5,a5	# tmp182, tmp180
	ble	a5,zero,.L5	#, tmp182,,
# problem68.c:19:                 is12 = 1;
	li	a5,1		# tmp183,
	sw	a5,-84(s0)	# tmp183, is12
# problem68.c:20:                 j = 0;
	sw	zero,-80(s0)	#, j
.L5:
# problem68.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	lw	a5,-76(s0)		# tmp186, i
	addiw	a5,a5,1	#, tmp184, tmp185
	sw	a5,-76(s0)	# tmp184, i
.L2:
# problem68.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	lw	a5,-76(s0)		# _20, i
	ld	a4,-104(s0)		# tmp187, s
	add	a5,a4,a5	# _20, _21, tmp187
	lbu	a5,0(a5)	# _22, *_21
# problem68.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	bne	a5,zero,.L6	#, _22,,
# problem68.c:24:     return n - atoi(num1) - atoi(num2);
	addi	a5,s0,-72	#, tmp188,
	mv	a0,a5	#, tmp188
	call	atoi@plt	#
	mv	a5,a0	# tmp189,
# problem68.c:24:     return n - atoi(num1) - atoi(num2);
	lw	a4,-108(s0)		# tmp192, n
	subw	a5,a4,a5	# tmp190, tmp191, _23
	sext.w	s1,a5	# _24, tmp190
# problem68.c:24:     return n - atoi(num1) - atoi(num2);
	addi	a5,s0,-56	#, tmp193,
	mv	a0,a5	#, tmp193
	call	atoi@plt	#
	mv	a5,a0	# tmp194,
# problem68.c:24:     return n - atoi(num1) - atoi(num2);
	subw	a5,s1,a5	# tmp195, _24, _25
	sext.w	a5,a5	# _41, tmp195
# problem68.c:24:     return n - atoi(num1) - atoi(num2);
	mv	a4,a5	# <retval>, _41
# problem68.c:25: }
	la	a5,__stack_chk_guard		# tmp197,
	ld	a3, -40(s0)	# tmp200, D.3415
	ld	a5, 0(a5)	# tmp198, __stack_chk_guard
	xor	a5, a3, a5	# tmp198, tmp200
	li	a3, 0	# tmp200
	beq	a5,zero,.L8	#, tmp198,,
	call	__stack_chk_fail@plt	#
.L8:
	mv	a0,a4	#, <retval>
	ld	ra,104(sp)		#,
	.cfi_restore 1
	ld	s0,96(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	ld	s1,88(sp)		#,
	.cfi_restore 9
	addi	sp,sp,112	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"5 apples and 6 oranges"
	.align	3
.LC1:
	.string	"problem68.c"
	.align	3
.LC2:
	.string	"func0(\"5 apples and 6 oranges\", 19) == 8"
	.align	3
.LC3:
	.string	"func0(\"5 apples and 6 oranges\", 21) == 10"
	.align	3
.LC4:
	.string	"0 apples and 1 oranges"
	.align	3
.LC5:
	.string	"func0(\"0 apples and 1 oranges\", 3) == 2"
	.align	3
.LC6:
	.string	"1 apples and 0 oranges"
	.align	3
.LC7:
	.string	"func0(\"1 apples and 0 oranges\", 3) == 2"
	.align	3
.LC8:
	.string	"2 apples and 3 oranges"
	.align	3
.LC9:
	.string	"func0(\"2 apples and 3 oranges\", 100) == 95"
	.align	3
.LC10:
	.string	"func0(\"2 apples and 3 oranges\", 5) == 0"
	.align	3
.LC11:
	.string	"1 apples and 100 oranges"
	.align	3
.LC12:
	.string	"func0(\"1 apples and 100 oranges\", 120) == 19"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
# problem68.c:32:     assert(func0("5 apples and 6 oranges", 19) == 8);
	li	a1,19		#,
	lla	a0,.LC0	#,
	call	func0		#
	mv	a5,a0	# tmp143,
# problem68.c:32:     assert(func0("5 apples and 6 oranges", 19) == 8);
	mv	a4,a5	# tmp144, _1
	li	a5,8		# tmp145,
	beq	a4,a5,.L10	#, tmp144, tmp145,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L10:
# problem68.c:33:     assert(func0("5 apples and 6 oranges", 21) == 10);
	li	a1,21		#,
	lla	a0,.LC0	#,
	call	func0		#
	mv	a5,a0	# tmp146,
# problem68.c:33:     assert(func0("5 apples and 6 oranges", 21) == 10);
	mv	a4,a5	# tmp147, _2
	li	a5,10		# tmp148,
	beq	a4,a5,.L11	#, tmp147, tmp148,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC1	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L11:
# problem68.c:34:     assert(func0("0 apples and 1 oranges", 3) == 2);
	li	a1,3		#,
	lla	a0,.LC4	#,
	call	func0		#
	mv	a5,a0	# tmp149,
# problem68.c:34:     assert(func0("0 apples and 1 oranges", 3) == 2);
	mv	a4,a5	# tmp150, _3
	li	a5,2		# tmp151,
	beq	a4,a5,.L12	#, tmp150, tmp151,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC1	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L12:
# problem68.c:35:     assert(func0("1 apples and 0 oranges", 3) == 2);
	li	a1,3		#,
	lla	a0,.LC6	#,
	call	func0		#
	mv	a5,a0	# tmp152,
# problem68.c:35:     assert(func0("1 apples and 0 oranges", 3) == 2);
	mv	a4,a5	# tmp153, _4
	li	a5,2		# tmp154,
	beq	a4,a5,.L13	#, tmp153, tmp154,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC1	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L13:
# problem68.c:36:     assert(func0("2 apples and 3 oranges", 100) == 95);
	li	a1,100		#,
	lla	a0,.LC8	#,
	call	func0		#
	mv	a5,a0	# tmp155,
# problem68.c:36:     assert(func0("2 apples and 3 oranges", 100) == 95);
	mv	a4,a5	# tmp156, _5
	li	a5,95		# tmp157,
	beq	a4,a5,.L14	#, tmp156, tmp157,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC1	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L14:
# problem68.c:37:     assert(func0("2 apples and 3 oranges", 5) == 0);
	li	a1,5		#,
	lla	a0,.LC8	#,
	call	func0		#
	mv	a5,a0	# tmp158,
# problem68.c:37:     assert(func0("2 apples and 3 oranges", 5) == 0);
	beq	a5,zero,.L15	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC1	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L15:
# problem68.c:38:     assert(func0("1 apples and 100 oranges", 120) == 19);
	li	a1,120		#,
	lla	a0,.LC11	#,
	call	func0		#
	mv	a5,a0	# tmp159,
# problem68.c:38:     assert(func0("1 apples and 100 oranges", 120) == 19);
	mv	a4,a5	# tmp160, _7
	li	a5,19		# tmp161,
	beq	a4,a5,.L16	#, tmp160, tmp161,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC1	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L16:
# problem68.c:40:     return 0;
	li	a5,0		# _23,
# problem68.c:41: }
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
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
