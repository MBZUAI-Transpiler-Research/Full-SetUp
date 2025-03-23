	.file	"code.c"
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
# eval/problem24//code.c:4:     int length = 0;
	sw	zero,-20(s0)	#, length
# eval/problem24//code.c:5:     while (str[length] != '\0') {
	j	.L2		#
.L3:
# eval/problem24//code.c:6:         length++;
	lw	a5,-20(s0)		# tmp79, length
	addiw	a5,a5,1	#, tmp77, tmp78
	sw	a5,-20(s0)	# tmp77, length
.L2:
# eval/problem24//code.c:5:     while (str[length] != '\0') {
	lw	a5,-20(s0)		# _1, length
	ld	a4,-40(s0)		# tmp80, str
	add	a5,a4,a5	# _1, _2, tmp80
	lbu	a5,0(a5)	# _3, *_2
# eval/problem24//code.c:5:     while (str[length] != '\0') {
	bne	a5,zero,.L3	#, _3,,
# eval/problem24//code.c:8:     return length;
	lw	a5,-20(s0)		# _8, length
# eval/problem24//code.c:9: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
