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
	sd	a0,-40(s0)	# brackets, brackets
# eval/problem57//code.c:6:     int level = 0;
	sw	zero,-24(s0)	#, level
# eval/problem57//code.c:7:     int i = 0;
	sw	zero,-20(s0)	#, i
# eval/problem57//code.c:8:     while (brackets[i]) {
	j	.L2		#
.L7:
# eval/problem57//code.c:9:         if (brackets[i] == '<') level++;
	lw	a5,-20(s0)		# _1, i
	ld	a4,-40(s0)		# tmp145, brackets
	add	a5,a4,a5	# _1, _2, tmp145
	lbu	a5,0(a5)	# _3, *_2
# eval/problem57//code.c:9:         if (brackets[i] == '<') level++;
	mv	a4,a5	# tmp146, _3
	li	a5,60		# tmp147,
	bne	a4,a5,.L3	#, tmp146, tmp147,
# eval/problem57//code.c:9:         if (brackets[i] == '<') level++;
	lw	a5,-24(s0)		# tmp150, level
	addiw	a5,a5,1	#, tmp148, tmp149
	sw	a5,-24(s0)	# tmp148, level
.L3:
# eval/problem57//code.c:10:         if (brackets[i] == '>') level--;
	lw	a5,-20(s0)		# _4, i
	ld	a4,-40(s0)		# tmp151, brackets
	add	a5,a4,a5	# _4, _5, tmp151
	lbu	a5,0(a5)	# _6, *_5
# eval/problem57//code.c:10:         if (brackets[i] == '>') level--;
	mv	a4,a5	# tmp152, _6
	li	a5,62		# tmp153,
	bne	a4,a5,.L4	#, tmp152, tmp153,
# eval/problem57//code.c:10:         if (brackets[i] == '>') level--;
	lw	a5,-24(s0)		# tmp156, level
	addiw	a5,a5,-1	#, tmp154, tmp155
	sw	a5,-24(s0)	# tmp154, level
.L4:
# eval/problem57//code.c:11:         if (level < 0) return false;
	lw	a5,-24(s0)		# tmp158, level
	sext.w	a5,a5	# tmp159, tmp157
	bge	a5,zero,.L5	#, tmp159,,
# eval/problem57//code.c:11:         if (level < 0) return false;
	li	a5,0		# _14,
# eval/problem57//code.c:11:         if (level < 0) return false;
	j	.L6		#
.L5:
# eval/problem57//code.c:12:         i++;
	lw	a5,-20(s0)		# tmp162, i
	addiw	a5,a5,1	#, tmp160, tmp161
	sw	a5,-20(s0)	# tmp160, i
.L2:
# eval/problem57//code.c:8:     while (brackets[i]) {
	lw	a5,-20(s0)		# _7, i
	ld	a4,-40(s0)		# tmp163, brackets
	add	a5,a4,a5	# _7, _8, tmp163
	lbu	a5,0(a5)	# _9, *_8
# eval/problem57//code.c:8:     while (brackets[i]) {
	bne	a5,zero,.L7	#, _9,,
# eval/problem57//code.c:14:     if (level != 0) return false;
	lw	a5,-24(s0)		# tmp165, level
	sext.w	a5,a5	# tmp166, tmp164
	beq	a5,zero,.L8	#, tmp166,,
# eval/problem57//code.c:14:     if (level != 0) return false;
	li	a5,0		# _14,
# eval/problem57//code.c:14:     if (level != 0) return false;
	j	.L6		#
.L8:
# eval/problem57//code.c:15:     return true;
	li	a5,1		# _14,
.L6:
# eval/problem57//code.c:16: }
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
