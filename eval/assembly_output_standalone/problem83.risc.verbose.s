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
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# str, str
# eval/problem83//code.c:6:     int l = strlen(str);
	ld	a0,-40(s0)		#, str
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem83//code.c:6:     int l = strlen(str);
	sw	a5,-20(s0)	# _1, l
# eval/problem83//code.c:7:     if (l < 2) return false;
	lw	a5,-20(s0)		# tmp140, l
	sext.w	a4,a5	# tmp141, tmp139
	li	a5,1		# tmp142,
	bgt	a4,a5,.L2	#, tmp141, tmp142,
# eval/problem83//code.c:7:     if (l < 2) return false;
	li	a5,0		# _5,
# eval/problem83//code.c:7:     if (l < 2) return false;
	j	.L3		#
.L2:
# eval/problem83//code.c:8:     for (int i = 2; i * i <= l; i++) {
	li	a5,2		# tmp143,
	sw	a5,-24(s0)	# tmp143, i
# eval/problem83//code.c:8:     for (int i = 2; i * i <= l; i++) {
	j	.L4		#
.L6:
# eval/problem83//code.c:9:         if (l % i == 0) return false;
	lw	a5,-20(s0)		# tmp146, l
	mv	a4,a5	# tmp145, tmp146
	lw	a5,-24(s0)		# tmp149, i
	remw	a5,a4,a5	# tmp148, tmp147, tmp145
	sext.w	a5,a5	# _2, tmp147
# eval/problem83//code.c:9:         if (l % i == 0) return false;
	bne	a5,zero,.L5	#, _2,,
# eval/problem83//code.c:9:         if (l % i == 0) return false;
	li	a5,0		# _5,
# eval/problem83//code.c:9:         if (l % i == 0) return false;
	j	.L3		#
.L5:
# eval/problem83//code.c:8:     for (int i = 2; i * i <= l; i++) {
	lw	a5,-24(s0)		# tmp152, i
	addiw	a5,a5,1	#, tmp150, tmp151
	sw	a5,-24(s0)	# tmp150, i
.L4:
# eval/problem83//code.c:8:     for (int i = 2; i * i <= l; i++) {
	lw	a5,-24(s0)		# tmp155, i
	mulw	a5,a5,a5	# tmp153, tmp154, tmp154
	sext.w	a4,a5	# _3, tmp153
# eval/problem83//code.c:8:     for (int i = 2; i * i <= l; i++) {
	lw	a5,-20(s0)		# tmp157, l
	sext.w	a5,a5	# tmp158, tmp156
	bge	a5,a4,.L6	#, tmp158, tmp159,
# eval/problem83//code.c:11:     return true;
	li	a5,1		# _5,
.L3:
# eval/problem83//code.c:12: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
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
