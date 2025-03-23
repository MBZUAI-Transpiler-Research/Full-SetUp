	.file	"problem55.c"
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
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# s0, s0
	sd	a1,-64(s0)	# s1, s1
# problem55.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	ld	a0,-56(s0)		#, s0
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem55.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	sw	a5,-24(s0)	# _1, len0
# problem55.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	ld	a0,-64(s0)		#, s1
	call	strlen@plt	#
	mv	a5,a0	# _2,
# problem55.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	sw	a5,-20(s0)	# _2, len1
# problem55.c:7:     for (int i = 0; i < len0; i++) {
	sw	zero,-40(s0)	#, i
# problem55.c:7:     for (int i = 0; i < len0; i++) {
	j	.L2		#
.L9:
# problem55.c:8:         bool found = false;
	sb	zero,-42(s0)	#, found
# problem55.c:9:         for (int j = 0; j < len1; j++) {
	sw	zero,-36(s0)	#, j
# problem55.c:9:         for (int j = 0; j < len1; j++) {
	j	.L3		#
.L6:
# problem55.c:10:             if (s0[i] == s1[j]) {
	lw	a5,-40(s0)		# _3, i
	ld	a4,-56(s0)		# tmp152, s0
	add	a5,a4,a5	# _3, _4, tmp152
	lbu	a3,0(a5)	# _5, *_4
# problem55.c:10:             if (s0[i] == s1[j]) {
	lw	a5,-36(s0)		# _6, j
	ld	a4,-64(s0)		# tmp153, s1
	add	a5,a4,a5	# _6, _7, tmp153
	lbu	a5,0(a5)	# _8, *_7
# problem55.c:10:             if (s0[i] == s1[j]) {
	mv	a4,a3	# tmp154, _5
	bne	a4,a5,.L4	#, tmp154, tmp155,
# problem55.c:11:                 found = true;
	li	a5,1		# tmp156,
	sb	a5,-42(s0)	# tmp156, found
# problem55.c:12:                 break;
	j	.L5		#
.L4:
# problem55.c:9:         for (int j = 0; j < len1; j++) {
	lw	a5,-36(s0)		# tmp159, j
	addiw	a5,a5,1	#, tmp157, tmp158
	sw	a5,-36(s0)	# tmp157, j
.L3:
# problem55.c:9:         for (int j = 0; j < len1; j++) {
	lw	a5,-36(s0)		# tmp161, j
	mv	a4,a5	# tmp160, tmp161
	lw	a5,-20(s0)		# tmp163, len1
	sext.w	a4,a4	# tmp164, tmp160
	sext.w	a5,a5	# tmp165, tmp162
	blt	a4,a5,.L6	#, tmp164, tmp165,
.L5:
# problem55.c:15:         if (!found) return false;
	lbu	a5,-42(s0)	# tmp167, found
	xori	a5,a5,1	#, tmp168, tmp166
	andi	a5,a5,0xff	# _9, tmp168
# problem55.c:15:         if (!found) return false;
	beq	a5,zero,.L7	#, _9,,
# problem55.c:15:         if (!found) return false;
	li	a5,0		# _23,
# problem55.c:15:         if (!found) return false;
	j	.L8		#
.L7:
# problem55.c:7:     for (int i = 0; i < len0; i++) {
	lw	a5,-40(s0)		# tmp171, i
	addiw	a5,a5,1	#, tmp169, tmp170
	sw	a5,-40(s0)	# tmp169, i
.L2:
# problem55.c:7:     for (int i = 0; i < len0; i++) {
	lw	a5,-40(s0)		# tmp173, i
	mv	a4,a5	# tmp172, tmp173
	lw	a5,-24(s0)		# tmp175, len0
	sext.w	a4,a4	# tmp176, tmp172
	sext.w	a5,a5	# tmp177, tmp174
	blt	a4,a5,.L9	#, tmp176, tmp177,
# problem55.c:17:     for (int i = 0; i < len1; i++) {
	sw	zero,-32(s0)	#, i
# problem55.c:17:     for (int i = 0; i < len1; i++) {
	j	.L10		#
.L16:
# problem55.c:18:         bool found = false;
	sb	zero,-41(s0)	#, found
# problem55.c:19:         for (int j = 0; j < len0; j++) {
	sw	zero,-28(s0)	#, j
# problem55.c:19:         for (int j = 0; j < len0; j++) {
	j	.L11		#
.L14:
# problem55.c:20:             if (s1[i] == s0[j]) {
	lw	a5,-32(s0)		# _10, i
	ld	a4,-64(s0)		# tmp178, s1
	add	a5,a4,a5	# _10, _11, tmp178
	lbu	a3,0(a5)	# _12, *_11
# problem55.c:20:             if (s1[i] == s0[j]) {
	lw	a5,-28(s0)		# _13, j
	ld	a4,-56(s0)		# tmp179, s0
	add	a5,a4,a5	# _13, _14, tmp179
	lbu	a5,0(a5)	# _15, *_14
# problem55.c:20:             if (s1[i] == s0[j]) {
	mv	a4,a3	# tmp180, _12
	bne	a4,a5,.L12	#, tmp180, tmp181,
# problem55.c:21:                 found = true;
	li	a5,1		# tmp182,
	sb	a5,-41(s0)	# tmp182, found
# problem55.c:22:                 break;
	j	.L13		#
.L12:
# problem55.c:19:         for (int j = 0; j < len0; j++) {
	lw	a5,-28(s0)		# tmp185, j
	addiw	a5,a5,1	#, tmp183, tmp184
	sw	a5,-28(s0)	# tmp183, j
.L11:
# problem55.c:19:         for (int j = 0; j < len0; j++) {
	lw	a5,-28(s0)		# tmp187, j
	mv	a4,a5	# tmp186, tmp187
	lw	a5,-24(s0)		# tmp189, len0
	sext.w	a4,a4	# tmp190, tmp186
	sext.w	a5,a5	# tmp191, tmp188
	blt	a4,a5,.L14	#, tmp190, tmp191,
.L13:
# problem55.c:25:         if (!found) return false;
	lbu	a5,-41(s0)	# tmp193, found
	xori	a5,a5,1	#, tmp194, tmp192
	andi	a5,a5,0xff	# _16, tmp194
# problem55.c:25:         if (!found) return false;
	beq	a5,zero,.L15	#, _16,,
# problem55.c:25:         if (!found) return false;
	li	a5,0		# _23,
# problem55.c:25:         if (!found) return false;
	j	.L8		#
.L15:
# problem55.c:17:     for (int i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp197, i
	addiw	a5,a5,1	#, tmp195, tmp196
	sw	a5,-32(s0)	# tmp195, i
.L10:
# problem55.c:17:     for (int i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp199, i
	mv	a4,a5	# tmp198, tmp199
	lw	a5,-20(s0)		# tmp201, len1
	sext.w	a4,a4	# tmp202, tmp198
	sext.w	a5,a5	# tmp203, tmp200
	blt	a4,a5,.L16	#, tmp202, tmp203,
# problem55.c:27:     return true;
	li	a5,1		# _23,
.L8:
# problem55.c:28: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"dddzzzzzzzddeddabc"
	.align	3
.LC1:
	.string	"eabcdzzzz"
	.align	3
.LC2:
	.string	"problem55.c"
	.align	3
.LC3:
	.string	"func0(\"eabcdzzzz\", \"dddzzzzzzzddeddabc\") == true"
	.align	3
.LC4:
	.string	"dddddddabc"
	.align	3
.LC5:
	.string	"abcd"
	.align	3
.LC6:
	.string	"func0(\"abcd\", \"dddddddabc\") == true"
	.align	3
.LC7:
	.string	"func0(\"dddddddabc\", \"abcd\") == true"
	.align	3
.LC8:
	.string	"eabcd"
	.align	3
.LC9:
	.string	"func0(\"eabcd\", \"dddddddabc\") == false"
	.align	3
.LC10:
	.string	"dddddddabce"
	.align	3
.LC11:
	.string	"func0(\"abcd\", \"dddddddabce\") == false"
	.align	3
.LC12:
	.string	"dddzzzzzzzddddabc"
	.align	3
.LC13:
	.string	"func0(\"eabcdzzzz\", \"dddzzzzzzzddddabc\") == false"
	.align	3
.LC14:
	.string	"aaccc"
	.align	3
.LC15:
	.string	"aabb"
	.align	3
.LC16:
	.string	"func0(\"aabb\", \"aaccc\") == false"
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
# problem55.c:36:     assert(func0("eabcdzzzz", "dddzzzzzzzddeddabc") == true);
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	func0		#
	mv	a5,a0	# tmp147,
# problem55.c:36:     assert(func0("eabcdzzzz", "dddzzzzzzzddeddabc") == true);
	bne	a5,zero,.L18	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L18:
# problem55.c:37:     assert(func0("abcd", "dddddddabc") == true);
	lla	a1,.LC4	#,
	lla	a0,.LC5	#,
	call	func0		#
	mv	a5,a0	# tmp148,
# problem55.c:37:     assert(func0("abcd", "dddddddabc") == true);
	bne	a5,zero,.L19	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC2	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L19:
# problem55.c:38:     assert(func0("dddddddabc", "abcd") == true);
	lla	a1,.LC5	#,
	lla	a0,.LC4	#,
	call	func0		#
	mv	a5,a0	# tmp149,
# problem55.c:38:     assert(func0("dddddddabc", "abcd") == true);
	bne	a5,zero,.L20	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC2	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L20:
# problem55.c:39:     assert(func0("eabcd", "dddddddabc") == false);
	lla	a1,.LC4	#,
	lla	a0,.LC8	#,
	call	func0		#
	mv	a5,a0	# tmp150,
# problem55.c:39:     assert(func0("eabcd", "dddddddabc") == false);
	xori	a5,a5,1	#, tmp151, _4
	andi	a5,a5,0xff	# _5, tmp151
	bne	a5,zero,.L21	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC2	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L21:
# problem55.c:40:     assert(func0("abcd", "dddddddabce") == false);
	lla	a1,.LC10	#,
	lla	a0,.LC5	#,
	call	func0		#
	mv	a5,a0	# tmp152,
# problem55.c:40:     assert(func0("abcd", "dddddddabce") == false);
	xori	a5,a5,1	#, tmp153, _6
	andi	a5,a5,0xff	# _7, tmp153
	bne	a5,zero,.L22	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC2	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L22:
# problem55.c:41:     assert(func0("eabcdzzzz", "dddzzzzzzzddddabc") == false);
	lla	a1,.LC12	#,
	lla	a0,.LC1	#,
	call	func0		#
	mv	a5,a0	# tmp154,
# problem55.c:41:     assert(func0("eabcdzzzz", "dddzzzzzzzddddabc") == false);
	xori	a5,a5,1	#, tmp155, _8
	andi	a5,a5,0xff	# _9, tmp155
	bne	a5,zero,.L23	#, _9,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC2	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L23:
# problem55.c:42:     assert(func0("aabb", "aaccc") == false);
	lla	a1,.LC14	#,
	lla	a0,.LC15	#,
	call	func0		#
	mv	a5,a0	# tmp156,
# problem55.c:42:     assert(func0("aabb", "aaccc") == false);
	xori	a5,a5,1	#, tmp157, _10
	andi	a5,a5,0xff	# _11, tmp157
	bne	a5,zero,.L24	#, _11,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC2	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L24:
# problem55.c:44:     return 0;
	li	a5,0		# _27,
# problem55.c:45: }
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
