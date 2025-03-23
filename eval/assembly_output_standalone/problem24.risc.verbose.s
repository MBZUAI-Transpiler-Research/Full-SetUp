	.file	"code.c"
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
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# str, str
# eval/problem24//code.c:4:     int length = 0;
	sw	zero,-20(s0)	#, length
# eval/problem24//code.c:5:     while (str[length] != '\0') {
	j	.L2		#
.L3:
# eval/problem24//code.c:6:         length++;
	lw	a5,-20(s0)		# tmp141, length
	addiw	a5,a5,1	#, tmp139, tmp140
	sw	a5,-20(s0)	# tmp139, length
.L2:
# eval/problem24//code.c:5:     while (str[length] != '\0') {
	lw	a5,-20(s0)		# _1, length
	ld	a4,-40(s0)		# tmp142, str
	add	a5,a4,a5	# _1, _2, tmp142
	lbu	a5,0(a5)	# _3, *_2
# eval/problem24//code.c:5:     while (str[length] != '\0') {
	bne	a5,zero,.L3	#, _3,,
# eval/problem24//code.c:8:     return length;
	lw	a5,-20(s0)		# _8, length
# eval/problem24//code.c:9: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
