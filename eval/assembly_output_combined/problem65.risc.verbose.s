	.file	"problem65.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"aeiouAEIOU"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# s, s
# problem65.c:6:     const char *vowels = "aeiouAEIOU";
	lla	a5,.LC0	# tmp88,
	sd	a5,-24(s0)	# tmp88, vowels
# problem65.c:7:     int count = 0;
	sw	zero,-36(s0)	#, count
# problem65.c:8:     int length = strlen(s);
	ld	a0,-56(s0)		#, s
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem65.c:8:     int length = strlen(s);
	sw	a5,-28(s0)	# _1, length
# problem65.c:10:     for (int i = 0; i < length; i++) {
	sw	zero,-32(s0)	#, i
# problem65.c:10:     for (int i = 0; i < length; i++) {
	j	.L2		#
.L4:
# problem65.c:11:         if (strchr(vowels, s[i])) {
	lw	a5,-32(s0)		# _2, i
	ld	a4,-56(s0)		# tmp89, s
	add	a5,a4,a5	# _2, _3, tmp89
	lbu	a5,0(a5)	# _4, *_3
# problem65.c:11:         if (strchr(vowels, s[i])) {
	sext.w	a5,a5	# _5, _4
	mv	a1,a5	#, _5
	ld	a0,-24(s0)		#, vowels
	call	strchr@plt	#
	mv	a5,a0	# _6,
# problem65.c:11:         if (strchr(vowels, s[i])) {
	beq	a5,zero,.L3	#, _6,,
# problem65.c:12:             count++;
	lw	a5,-36(s0)		# tmp92, count
	addiw	a5,a5,1	#, tmp90, tmp91
	sw	a5,-36(s0)	# tmp90, count
.L3:
# problem65.c:10:     for (int i = 0; i < length; i++) {
	lw	a5,-32(s0)		# tmp95, i
	addiw	a5,a5,1	#, tmp93, tmp94
	sw	a5,-32(s0)	# tmp93, i
.L2:
# problem65.c:10:     for (int i = 0; i < length; i++) {
	lw	a5,-32(s0)		# tmp97, i
	mv	a4,a5	# tmp96, tmp97
	lw	a5,-28(s0)		# tmp99, length
	sext.w	a4,a4	# tmp100, tmp96
	sext.w	a5,a5	# tmp101, tmp98
	blt	a4,a5,.L4	#, tmp100, tmp101,
# problem65.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	lw	a5,-28(s0)		# tmp103, length
	sext.w	a5,a5	# tmp104, tmp102
	ble	a5,zero,.L5	#, tmp104,,
# problem65.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	lw	a5,-28(s0)		# _7, length
	addi	a5,a5,-1	#, _8, _7
	ld	a4,-56(s0)		# tmp105, s
	add	a5,a4,a5	# _8, _9, tmp105
	lbu	a5,0(a5)	# _10, *_9
# problem65.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	mv	a4,a5	# tmp106, _10
	li	a5,121		# tmp107,
	beq	a4,a5,.L6	#, tmp106, tmp107,
# problem65.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	lw	a5,-28(s0)		# _11, length
	addi	a5,a5,-1	#, _12, _11
	ld	a4,-56(s0)		# tmp108, s
	add	a5,a4,a5	# _12, _13, tmp108
	lbu	a5,0(a5)	# _14, *_13
# problem65.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	mv	a4,a5	# tmp109, _14
	li	a5,89		# tmp110,
	bne	a4,a5,.L5	#, tmp109, tmp110,
.L6:
# problem65.c:17:         count++;
	lw	a5,-36(s0)		# tmp113, count
	addiw	a5,a5,1	#, tmp111, tmp112
	sw	a5,-36(s0)	# tmp111, count
.L5:
# problem65.c:20:     return count;
	lw	a5,-36(s0)		# _26, count
# problem65.c:21: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"abcde"
	.align	3
.LC2:
	.string	"problem65.c"
	.align	3
.LC3:
	.string	"func0(\"abcde\") == 2"
	.align	3
.LC4:
	.string	"Alone"
	.align	3
.LC5:
	.string	"func0(\"Alone\") == 3"
	.align	3
.LC6:
	.string	"key"
	.align	3
.LC7:
	.string	"func0(\"key\") == 2"
	.align	3
.LC8:
	.string	"bye"
	.align	3
.LC9:
	.string	"func0(\"bye\") == 1"
	.align	3
.LC10:
	.string	"keY"
	.align	3
.LC11:
	.string	"func0(\"keY\") == 2"
	.align	3
.LC12:
	.string	"bYe"
	.align	3
.LC13:
	.string	"func0(\"bYe\") == 1"
	.align	3
.LC14:
	.string	"ACEDY"
	.align	3
.LC15:
	.string	"func0(\"ACEDY\") == 3"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem65.c:28:     assert(func0("abcde") == 2);
	lla	a0,.LC1	#,
	call	func0		#
	mv	a5,a0	# tmp81,
	mv	a4,a5	# tmp82, _1
	li	a5,2		# tmp83,
	beq	a4,a5,.L9	#, tmp82, tmp83,
# problem65.c:28:     assert(func0("abcde") == 2);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L9:
# problem65.c:29:     assert(func0("Alone") == 3);
	lla	a0,.LC4	#,
	call	func0		#
	mv	a5,a0	# tmp84,
	mv	a4,a5	# tmp85, _2
	li	a5,3		# tmp86,
	beq	a4,a5,.L10	#, tmp85, tmp86,
# problem65.c:29:     assert(func0("Alone") == 3);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC2	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L10:
# problem65.c:30:     assert(func0("key") == 2);
	lla	a0,.LC6	#,
	call	func0		#
	mv	a5,a0	# tmp87,
	mv	a4,a5	# tmp88, _3
	li	a5,2		# tmp89,
	beq	a4,a5,.L11	#, tmp88, tmp89,
# problem65.c:30:     assert(func0("key") == 2);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC2	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L11:
# problem65.c:31:     assert(func0("bye") == 1);
	lla	a0,.LC8	#,
	call	func0		#
	mv	a5,a0	# tmp90,
	mv	a4,a5	# tmp91, _4
	li	a5,1		# tmp92,
	beq	a4,a5,.L12	#, tmp91, tmp92,
# problem65.c:31:     assert(func0("bye") == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC2	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L12:
# problem65.c:32:     assert(func0("keY") == 2);
	lla	a0,.LC10	#,
	call	func0		#
	mv	a5,a0	# tmp93,
	mv	a4,a5	# tmp94, _5
	li	a5,2		# tmp95,
	beq	a4,a5,.L13	#, tmp94, tmp95,
# problem65.c:32:     assert(func0("keY") == 2);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC2	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L13:
# problem65.c:33:     assert(func0("bYe") == 1);
	lla	a0,.LC12	#,
	call	func0		#
	mv	a5,a0	# tmp96,
	mv	a4,a5	# tmp97, _6
	li	a5,1		# tmp98,
	beq	a4,a5,.L14	#, tmp97, tmp98,
# problem65.c:33:     assert(func0("bYe") == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC2	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L14:
# problem65.c:34:     assert(func0("ACEDY") == 3);
	lla	a0,.LC14	#,
	call	func0		#
	mv	a5,a0	# tmp99,
	mv	a4,a5	# tmp100, _7
	li	a5,3		# tmp101,
	beq	a4,a5,.L15	#, tmp100, tmp101,
# problem65.c:34:     assert(func0("ACEDY") == 3);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC2	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L15:
# problem65.c:36:     return 0;
	li	a5,0		# _23,
# problem65.c:37: }
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
