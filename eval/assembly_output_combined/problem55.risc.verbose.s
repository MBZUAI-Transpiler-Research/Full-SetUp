	.file	"problem55.c"
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
	addi	s0,sp,64	#,,
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
	ld	a4,-56(s0)		# tmp90, s0
	add	a5,a4,a5	# _3, _4, tmp90
	lbu	a3,0(a5)	# _5, *_4
# problem55.c:10:             if (s0[i] == s1[j]) {
	lw	a5,-36(s0)		# _6, j
	ld	a4,-64(s0)		# tmp91, s1
	add	a5,a4,a5	# _6, _7, tmp91
	lbu	a5,0(a5)	# _8, *_7
# problem55.c:10:             if (s0[i] == s1[j]) {
	mv	a4,a3	# tmp92, _5
	bne	a4,a5,.L4	#, tmp92, tmp93,
# problem55.c:11:                 found = true;
	li	a5,1		# tmp94,
	sb	a5,-42(s0)	# tmp94, found
# problem55.c:12:                 break;
	j	.L5		#
.L4:
# problem55.c:9:         for (int j = 0; j < len1; j++) {
	lw	a5,-36(s0)		# tmp97, j
	addiw	a5,a5,1	#, tmp95, tmp96
	sw	a5,-36(s0)	# tmp95, j
.L3:
# problem55.c:9:         for (int j = 0; j < len1; j++) {
	lw	a5,-36(s0)		# tmp99, j
	mv	a4,a5	# tmp98, tmp99
	lw	a5,-20(s0)		# tmp101, len1
	sext.w	a4,a4	# tmp102, tmp98
	sext.w	a5,a5	# tmp103, tmp100
	blt	a4,a5,.L6	#, tmp102, tmp103,
.L5:
# problem55.c:15:         if (!found) return false;
	lbu	a5,-42(s0)	# tmp105, found
	xori	a5,a5,1	#, tmp106, tmp104
	andi	a5,a5,0xff	# _9, tmp106
# problem55.c:15:         if (!found) return false;
	beq	a5,zero,.L7	#, _9,,
# problem55.c:15:         if (!found) return false;
	li	a5,0		# _23,
	j	.L8		#
.L7:
# problem55.c:7:     for (int i = 0; i < len0; i++) {
	lw	a5,-40(s0)		# tmp109, i
	addiw	a5,a5,1	#, tmp107, tmp108
	sw	a5,-40(s0)	# tmp107, i
.L2:
# problem55.c:7:     for (int i = 0; i < len0; i++) {
	lw	a5,-40(s0)		# tmp111, i
	mv	a4,a5	# tmp110, tmp111
	lw	a5,-24(s0)		# tmp113, len0
	sext.w	a4,a4	# tmp114, tmp110
	sext.w	a5,a5	# tmp115, tmp112
	blt	a4,a5,.L9	#, tmp114, tmp115,
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
	ld	a4,-64(s0)		# tmp116, s1
	add	a5,a4,a5	# _10, _11, tmp116
	lbu	a3,0(a5)	# _12, *_11
# problem55.c:20:             if (s1[i] == s0[j]) {
	lw	a5,-28(s0)		# _13, j
	ld	a4,-56(s0)		# tmp117, s0
	add	a5,a4,a5	# _13, _14, tmp117
	lbu	a5,0(a5)	# _15, *_14
# problem55.c:20:             if (s1[i] == s0[j]) {
	mv	a4,a3	# tmp118, _12
	bne	a4,a5,.L12	#, tmp118, tmp119,
# problem55.c:21:                 found = true;
	li	a5,1		# tmp120,
	sb	a5,-41(s0)	# tmp120, found
# problem55.c:22:                 break;
	j	.L13		#
.L12:
# problem55.c:19:         for (int j = 0; j < len0; j++) {
	lw	a5,-28(s0)		# tmp123, j
	addiw	a5,a5,1	#, tmp121, tmp122
	sw	a5,-28(s0)	# tmp121, j
.L11:
# problem55.c:19:         for (int j = 0; j < len0; j++) {
	lw	a5,-28(s0)		# tmp125, j
	mv	a4,a5	# tmp124, tmp125
	lw	a5,-24(s0)		# tmp127, len0
	sext.w	a4,a4	# tmp128, tmp124
	sext.w	a5,a5	# tmp129, tmp126
	blt	a4,a5,.L14	#, tmp128, tmp129,
.L13:
# problem55.c:25:         if (!found) return false;
	lbu	a5,-41(s0)	# tmp131, found
	xori	a5,a5,1	#, tmp132, tmp130
	andi	a5,a5,0xff	# _16, tmp132
# problem55.c:25:         if (!found) return false;
	beq	a5,zero,.L15	#, _16,,
# problem55.c:25:         if (!found) return false;
	li	a5,0		# _23,
	j	.L8		#
.L15:
# problem55.c:17:     for (int i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp135, i
	addiw	a5,a5,1	#, tmp133, tmp134
	sw	a5,-32(s0)	# tmp133, i
.L10:
# problem55.c:17:     for (int i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp137, i
	mv	a4,a5	# tmp136, tmp137
	lw	a5,-20(s0)		# tmp139, len1
	sext.w	a4,a4	# tmp140, tmp136
	sext.w	a5,a5	# tmp141, tmp138
	blt	a4,a5,.L16	#, tmp140, tmp141,
# problem55.c:27:     return true;
	li	a5,1		# _23,
.L8:
# problem55.c:28: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
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
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem55.c:36:     assert(func0("eabcdzzzz", "dddzzzzzzzddeddabc") == true);
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	func0		#
	mv	a5,a0	# tmp85,
	bne	a5,zero,.L18	#, _1,,
# problem55.c:36:     assert(func0("eabcdzzzz", "dddzzzzzzzddeddabc") == true);
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
	mv	a5,a0	# tmp86,
	bne	a5,zero,.L19	#, _2,,
# problem55.c:37:     assert(func0("abcd", "dddddddabc") == true);
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
	mv	a5,a0	# tmp87,
	bne	a5,zero,.L20	#, _3,,
# problem55.c:38:     assert(func0("dddddddabc", "abcd") == true);
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
	mv	a5,a0	# tmp88,
	xori	a5,a5,1	#, tmp89, _4
	andi	a5,a5,0xff	# _5, tmp89
	bne	a5,zero,.L21	#, _5,,
# problem55.c:39:     assert(func0("eabcd", "dddddddabc") == false);
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
	mv	a5,a0	# tmp90,
	xori	a5,a5,1	#, tmp91, _6
	andi	a5,a5,0xff	# _7, tmp91
	bne	a5,zero,.L22	#, _7,,
# problem55.c:40:     assert(func0("abcd", "dddddddabce") == false);
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
	mv	a5,a0	# tmp92,
	xori	a5,a5,1	#, tmp93, _8
	andi	a5,a5,0xff	# _9, tmp93
	bne	a5,zero,.L23	#, _9,,
# problem55.c:41:     assert(func0("eabcdzzzz", "dddzzzzzzzddddabc") == false);
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
	mv	a5,a0	# tmp94,
	xori	a5,a5,1	#, tmp95, _10
	andi	a5,a5,0xff	# _11, tmp95
	bne	a5,zero,.L24	#, _11,,
# problem55.c:42:     assert(func0("aabb", "aaccc") == false);
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
