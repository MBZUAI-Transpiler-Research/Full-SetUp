	.file	"problem24.c"
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
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# str, str
# problem24.c:4:     int length = 0;
	sw	zero,-20(s0)	#, length
# problem24.c:5:     while (str[length] != '\0') {
	j	.L2		#
.L3:
# problem24.c:6:         length++;
	lw	a5,-20(s0)		# tmp79, length
	addiw	a5,a5,1	#, tmp77, tmp78
	sw	a5,-20(s0)	# tmp77, length
.L2:
# problem24.c:5:     while (str[length] != '\0') {
	lw	a5,-20(s0)		# _1, length
	ld	a4,-40(s0)		# tmp80, str
	add	a5,a4,a5	# _1, _2, tmp80
	lbu	a5,0(a5)	# _3, *_2
# problem24.c:5:     while (str[length] != '\0') {
	bne	a5,zero,.L3	#, _3,,
# problem24.c:8:     return length;
	lw	a5,-20(s0)		# _8, length
# problem24.c:9: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"problem24.c"
	.align	3
.LC2:
	.string	"func0(\"\") == 0"
	.align	3
.LC3:
	.string	"x"
	.align	3
.LC4:
	.string	"func0(\"x\") == 1"
	.align	3
.LC5:
	.string	"asdasnakj"
	.align	3
.LC6:
	.string	"func0(\"asdasnakj\") == 9"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem24.c:16:     assert(func0("") == 0);
	lla	a0,.LC0	#,
	call	func0		#
	mv	a5,a0	# tmp77,
	beq	a5,zero,.L6	#, _1,,
# problem24.c:16:     assert(func0("") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,16		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L6:
# problem24.c:17:     assert(func0("x") == 1);
	lla	a0,.LC3	#,
	call	func0		#
	mv	a5,a0	# tmp78,
	mv	a4,a5	# tmp79, _2
	li	a5,1		# tmp80,
	beq	a4,a5,.L7	#, tmp79, tmp80,
# problem24.c:17:     assert(func0("x") == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L7:
# problem24.c:18:     assert(func0("asdasnakj") == 9);
	lla	a0,.LC5	#,
	call	func0		#
	mv	a5,a0	# tmp81,
	mv	a4,a5	# tmp82, _3
	li	a5,9		# tmp83,
	beq	a4,a5,.L8	#, tmp82, tmp83,
# problem24.c:18:     assert(func0("asdasnakj") == 9);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC1	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L8:
# problem24.c:20:     return 0;
	li	a5,0		# _11,
# problem24.c:21: }
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
