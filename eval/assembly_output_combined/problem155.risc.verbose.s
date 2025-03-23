	.file	"problem155.c"
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
	sd	a0,-56(s0)	# a, a
	sd	a1,-64(s0)	# b, b
# problem155.c:7:     int len_a = strlen(a);
	ld	a0,-56(s0)		#, a
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem155.c:7:     int len_a = strlen(a);
	sw	a5,-32(s0)	# _1, len_a
# problem155.c:8:     int len_b = strlen(b);
	ld	a0,-64(s0)		#, b
	call	strlen@plt	#
	mv	a5,a0	# _2,
# problem155.c:8:     int len_b = strlen(b);
	sw	a5,-28(s0)	# _2, len_b
# problem155.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	lw	a5,-28(s0)		# tmp93, len_b
	slliw	a5,a5,1	#, tmp91, tmp92
	sext.w	a5,a5	# _3, tmp91
# problem155.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	addiw	a5,a5,1	#, tmp94, _3
	sext.w	a5,a5	# _4, tmp94
# problem155.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	mv	a0,a5	#, _5
	call	malloc@plt	#
	mv	a5,a0	# tmp95,
	sd	a5,-24(s0)	# tmp95, temp
# problem155.c:11:     for (int i = 0; i < len_b; i++) {
	sw	zero,-36(s0)	#, i
# problem155.c:11:     for (int i = 0; i < len_b; i++) {
	j	.L2		#
.L5:
# problem155.c:12:         strncpy(temp, b + i, len_b - i);
	lw	a5,-36(s0)		# _6, i
	ld	a4,-64(s0)		# tmp96, b
	add	a5,a4,a5	# _6, _7, tmp96
# problem155.c:12:         strncpy(temp, b + i, len_b - i);
	lw	a4,-28(s0)		# tmp99, len_b
	mv	a3,a4	# tmp98, tmp99
	lw	a4,-36(s0)		# tmp101, i
	subw	a4,a3,a4	# tmp97, tmp98, tmp100
	sext.w	a4,a4	# _8, tmp97
# problem155.c:12:         strncpy(temp, b + i, len_b - i);
	mv	a2,a4	#, _9
	mv	a1,a5	#, _7
	ld	a0,-24(s0)		#, temp
	call	strncpy@plt	#
# problem155.c:13:         strncpy(temp + len_b - i, b, i);
	lw	a4,-28(s0)		# _10, len_b
	lw	a5,-36(s0)		# _11, i
	sub	a5,a4,a5	# _12, _10, _11
# problem155.c:13:         strncpy(temp + len_b - i, b, i);
	ld	a4,-24(s0)		# tmp102, temp
	add	a5,a4,a5	# _12, _13, tmp102
	lw	a4,-36(s0)		# _14, i
	mv	a2,a4	#, _14
	ld	a1,-64(s0)		#, b
	mv	a0,a5	#, _13
	call	strncpy@plt	#
# problem155.c:14:         temp[len_b] = '\0';
	lw	a5,-28(s0)		# _15, len_b
	ld	a4,-24(s0)		# tmp103, temp
	add	a5,a4,a5	# _15, _16, tmp103
# problem155.c:14:         temp[len_b] = '\0';
	sb	zero,0(a5)	#, *_16
# problem155.c:15:         if (strstr(a, temp)) {
	ld	a1,-24(s0)		#, temp
	ld	a0,-56(s0)		#, a
	call	strstr@plt	#
	mv	a5,a0	# _17,
# problem155.c:15:         if (strstr(a, temp)) {
	beq	a5,zero,.L3	#, _17,,
# problem155.c:16:             free(temp);
	ld	a0,-24(s0)		#, temp
	call	free@plt	#
# problem155.c:17:             return true;
	li	a5,1		# _19,
	j	.L4		#
.L3:
# problem155.c:11:     for (int i = 0; i < len_b; i++) {
	lw	a5,-36(s0)		# tmp106, i
	addiw	a5,a5,1	#, tmp104, tmp105
	sw	a5,-36(s0)	# tmp104, i
.L2:
# problem155.c:11:     for (int i = 0; i < len_b; i++) {
	lw	a5,-36(s0)		# tmp108, i
	mv	a4,a5	# tmp107, tmp108
	lw	a5,-28(s0)		# tmp110, len_b
	sext.w	a4,a4	# tmp111, tmp107
	sext.w	a5,a5	# tmp112, tmp109
	blt	a4,a5,.L5	#, tmp111, tmp112,
# problem155.c:21:     free(temp);
	ld	a0,-24(s0)		#, temp
	call	free@plt	#
# problem155.c:22:     return false;
	li	a5,0		# _19,
.L4:
# problem155.c:23: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"xyw"
	.align	3
.LC1:
	.string	"xyzw"
	.align	3
.LC2:
	.string	"problem155.c"
	.align	3
.LC3:
	.string	"func0(\"xyzw\", \"xyw\") == false"
	.align	3
.LC4:
	.string	"ell"
	.align	3
.LC5:
	.string	"yello"
	.align	3
.LC6:
	.string	"func0(\"yello\", \"ell\") == true"
	.align	3
.LC7:
	.string	"ptut"
	.align	3
.LC8:
	.string	"whattup"
	.align	3
.LC9:
	.string	"func0(\"whattup\", \"ptut\") == false"
	.align	3
.LC10:
	.string	"fee"
	.align	3
.LC11:
	.string	"efef"
	.align	3
.LC12:
	.string	"func0(\"efef\", \"fee\") == true"
	.align	3
.LC13:
	.string	"aabb"
	.align	3
.LC14:
	.string	"abab"
	.align	3
.LC15:
	.string	"func0(\"abab\", \"aabb\") == false"
	.align	3
.LC16:
	.string	"tinem"
	.align	3
.LC17:
	.string	"winemtt"
	.align	3
.LC18:
	.string	"func0(\"winemtt\", \"tinem\") == true"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem155.c:31:     assert(func0("xyzw", "xyw") == false);
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	func0		#
	mv	a5,a0	# tmp83,
	xori	a5,a5,1	#, tmp84, _1
	andi	a5,a5,0xff	# _2, tmp84
	bne	a5,zero,.L7	#, _2,,
# problem155.c:31:     assert(func0("xyzw", "xyw") == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L7:
# problem155.c:32:     assert(func0("yello", "ell") == true);
	lla	a1,.LC4	#,
	lla	a0,.LC5	#,
	call	func0		#
	mv	a5,a0	# tmp85,
	bne	a5,zero,.L8	#, _3,,
# problem155.c:32:     assert(func0("yello", "ell") == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC2	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L8:
# problem155.c:33:     assert(func0("whattup", "ptut") == false);
	lla	a1,.LC7	#,
	lla	a0,.LC8	#,
	call	func0		#
	mv	a5,a0	# tmp86,
	xori	a5,a5,1	#, tmp87, _4
	andi	a5,a5,0xff	# _5, tmp87
	bne	a5,zero,.L9	#, _5,,
# problem155.c:33:     assert(func0("whattup", "ptut") == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC2	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L9:
# problem155.c:34:     assert(func0("efef", "fee") == true);
	lla	a1,.LC10	#,
	lla	a0,.LC11	#,
	call	func0		#
	mv	a5,a0	# tmp88,
	bne	a5,zero,.L10	#, _6,,
# problem155.c:34:     assert(func0("efef", "fee") == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC2	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L10:
# problem155.c:35:     assert(func0("abab", "aabb") == false);
	lla	a1,.LC13	#,
	lla	a0,.LC14	#,
	call	func0		#
	mv	a5,a0	# tmp89,
	xori	a5,a5,1	#, tmp90, _7
	andi	a5,a5,0xff	# _8, tmp90
	bne	a5,zero,.L11	#, _8,,
# problem155.c:35:     assert(func0("abab", "aabb") == false);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC2	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L11:
# problem155.c:36:     assert(func0("winemtt", "tinem") == true);
	lla	a1,.LC16	#,
	lla	a0,.LC17	#,
	call	func0		#
	mv	a5,a0	# tmp91,
	bne	a5,zero,.L12	#, _9,,
# problem155.c:36:     assert(func0("winemtt", "tinem") == true);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC2	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L12:
# problem155.c:38:     return 0;
	li	a5,0		# _23,
# problem155.c:39: }
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
