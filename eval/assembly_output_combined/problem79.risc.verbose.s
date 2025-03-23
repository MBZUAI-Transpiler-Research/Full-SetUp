	.file	"problem79.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"2357BD"
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
	sd	a0,-56(s0)	# num, num
# problem79.c:5:     const char* key = "2357BD";
	lla	a5,.LC0	# tmp81,
	sd	a5,-40(s0)	# tmp81, key
# problem79.c:6:     int out = 0;
	sw	zero,-48(s0)	#, out
# problem79.c:7:     for (int i = 0; i < strlen(num); i++) {
	sw	zero,-44(s0)	#, i
# problem79.c:7:     for (int i = 0; i < strlen(num); i++) {
	j	.L2		#
.L4:
# problem79.c:8:         if (strchr(key, num[i])) out += 1;
	lw	a5,-44(s0)		# _1, i
	ld	a4,-56(s0)		# tmp82, num
	add	a5,a4,a5	# _1, _2, tmp82
	lbu	a5,0(a5)	# _3, *_2
# problem79.c:8:         if (strchr(key, num[i])) out += 1;
	sext.w	a5,a5	# _4, _3
	mv	a1,a5	#, _4
	ld	a0,-40(s0)		#, key
	call	strchr@plt	#
	mv	a5,a0	# _5,
# problem79.c:8:         if (strchr(key, num[i])) out += 1;
	beq	a5,zero,.L3	#, _5,,
# problem79.c:8:         if (strchr(key, num[i])) out += 1;
	lw	a5,-48(s0)		# tmp85, out
	addiw	a5,a5,1	#, tmp83, tmp84
	sw	a5,-48(s0)	# tmp83, out
.L3:
# problem79.c:7:     for (int i = 0; i < strlen(num); i++) {
	lw	a5,-44(s0)		# tmp88, i
	addiw	a5,a5,1	#, tmp86, tmp87
	sw	a5,-44(s0)	# tmp86, i
.L2:
# problem79.c:7:     for (int i = 0; i < strlen(num); i++) {
	lw	s1,-44(s0)		# _6, i
# problem79.c:7:     for (int i = 0; i < strlen(num); i++) {
	ld	a0,-56(s0)		#, num
	call	strlen@plt	#
	mv	a5,a0	# _7,
# problem79.c:7:     for (int i = 0; i < strlen(num); i++) {
	bltu	s1,a5,.L4	#, _6, _7,
# problem79.c:10:     return out;
	lw	a5,-48(s0)		# _16, out
# problem79.c:11: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	ld	s1,40(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"AB"
	.align	3
.LC2:
	.string	"problem79.c"
	.align	3
.LC3:
	.string	"func0(\"AB\") == 1"
	.align	3
.LC4:
	.string	"1077E"
	.align	3
.LC5:
	.string	"func0(\"1077E\") == 2"
	.align	3
.LC6:
	.string	"ABED1A33"
	.align	3
.LC7:
	.string	"func0(\"ABED1A33\") == 4"
	.align	3
.LC8:
	.string	"2020"
	.align	3
.LC9:
	.string	"func0(\"2020\") == 2"
	.align	3
.LC10:
	.string	"123456789ABCDEF0"
	.align	3
.LC11:
	.string	"func0(\"123456789ABCDEF0\") == 6"
	.align	3
.LC12:
	.string	"112233445566778899AABBCCDDEEFF00"
	.align	3
.LC13:
	.string	"func0(\"112233445566778899AABBCCDDEEFF00\") == 12"
	.align	3
.LC14:
	.string	""
	.align	3
.LC15:
	.string	"func0(\"\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem79.c:18:     assert(func0("AB") == 1);
	lla	a0,.LC1	#,
	call	func0		#
	mv	a5,a0	# tmp81,
	mv	a4,a5	# tmp82, _1
	li	a5,1		# tmp83,
	beq	a4,a5,.L7	#, tmp82, tmp83,
# problem79.c:18:     assert(func0("AB") == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L7:
# problem79.c:19:     assert(func0("1077E") == 2);
	lla	a0,.LC4	#,
	call	func0		#
	mv	a5,a0	# tmp84,
	mv	a4,a5	# tmp85, _2
	li	a5,2		# tmp86,
	beq	a4,a5,.L8	#, tmp85, tmp86,
# problem79.c:19:     assert(func0("1077E") == 2);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC2	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L8:
# problem79.c:20:     assert(func0("ABED1A33") == 4);
	lla	a0,.LC6	#,
	call	func0		#
	mv	a5,a0	# tmp87,
	mv	a4,a5	# tmp88, _3
	li	a5,4		# tmp89,
	beq	a4,a5,.L9	#, tmp88, tmp89,
# problem79.c:20:     assert(func0("ABED1A33") == 4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC2	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L9:
# problem79.c:21:     assert(func0("2020") == 2);
	lla	a0,.LC8	#,
	call	func0		#
	mv	a5,a0	# tmp90,
	mv	a4,a5	# tmp91, _4
	li	a5,2		# tmp92,
	beq	a4,a5,.L10	#, tmp91, tmp92,
# problem79.c:21:     assert(func0("2020") == 2);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC2	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L10:
# problem79.c:22:     assert(func0("123456789ABCDEF0") == 6);
	lla	a0,.LC10	#,
	call	func0		#
	mv	a5,a0	# tmp93,
	mv	a4,a5	# tmp94, _5
	li	a5,6		# tmp95,
	beq	a4,a5,.L11	#, tmp94, tmp95,
# problem79.c:22:     assert(func0("123456789ABCDEF0") == 6);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC2	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L11:
# problem79.c:23:     assert(func0("112233445566778899AABBCCDDEEFF00") == 12);
	lla	a0,.LC12	#,
	call	func0		#
	mv	a5,a0	# tmp96,
	mv	a4,a5	# tmp97, _6
	li	a5,12		# tmp98,
	beq	a4,a5,.L12	#, tmp97, tmp98,
# problem79.c:23:     assert(func0("112233445566778899AABBCCDDEEFF00") == 12);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC2	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L12:
# problem79.c:24:     assert(func0("") == 0);
	lla	a0,.LC14	#,
	call	func0		#
	mv	a5,a0	# tmp99,
	beq	a5,zero,.L13	#, _7,,
# problem79.c:24:     assert(func0("") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC2	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L13:
# problem79.c:26:     return 0;
	li	a5,0		# _23,
# problem79.c:27: }
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
