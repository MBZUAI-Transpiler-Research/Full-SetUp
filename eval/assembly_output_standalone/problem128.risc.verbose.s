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
	.section	.rodata
	.align	3
.LC0:
	.string	"NO"
	.align	3
.LC1:
	.string	"YES"
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
	mv	a5,a0	# tmp138, interval1_start
	mv	a4,a3	# tmp144, interval2_end
	sw	a5,-36(s0)	# tmp139, interval1_start
	mv	a5,a1	# tmp141, tmp140
	sw	a5,-40(s0)	# tmp141, interval1_end
	mv	a5,a2	# tmp143, tmp142
	sw	a5,-44(s0)	# tmp143, interval2_start
	mv	a5,a4	# tmp145, tmp144
	sw	a5,-48(s0)	# tmp145, interval2_end
# eval/problem128//code.c:5:     inter1 = interval1_start > interval2_start ? interval1_start : interval2_start;
	lw	a5,-36(s0)		# tmp148, interval1_start
	mv	a2,a5	# tmp147, tmp148
	lw	a5,-44(s0)		# tmp149, interval2_start
	sext.w	a3,a5	# tmp150, tmp146
	sext.w	a4,a2	# tmp151, tmp147
	bge	a3,a4,.L2	#, tmp150, tmp151,
	mv	a5,a2	# tmp146, tmp147
.L2:
	sw	a5,-28(s0)	# tmp146, inter1
# eval/problem128//code.c:6:     inter2 = interval1_end < interval2_end ? interval1_end : interval2_end;
	lw	a5,-40(s0)		# tmp154, interval1_end
	mv	a2,a5	# tmp153, tmp154
	lw	a5,-48(s0)		# tmp155, interval2_end
	sext.w	a3,a5	# tmp156, tmp152
	sext.w	a4,a2	# tmp157, tmp153
	ble	a3,a4,.L3	#, tmp156, tmp157,
	mv	a5,a2	# tmp152, tmp153
.L3:
	sw	a5,-24(s0)	# tmp152, inter2
# eval/problem128//code.c:7:     l = inter2 - inter1;
	lw	a5,-24(s0)		# tmp160, inter2
	mv	a4,a5	# tmp159, tmp160
	lw	a5,-28(s0)		# tmp162, inter1
	subw	a5,a4,a5	# tmp158, tmp159, tmp161
	sw	a5,-20(s0)	# tmp158, l
# eval/problem128//code.c:9:     if (l < 2) return "NO";
	lw	a5,-20(s0)		# tmp164, l
	sext.w	a4,a5	# tmp165, tmp163
	li	a5,1		# tmp166,
	bgt	a4,a5,.L4	#, tmp165, tmp166,
# eval/problem128//code.c:9:     if (l < 2) return "NO";
	lla	a5,.LC0	# _4,
# eval/problem128//code.c:9:     if (l < 2) return "NO";
	j	.L5		#
.L4:
# eval/problem128//code.c:11:     for (i = 2; i * i <= l; i++)
	li	a5,2		# tmp167,
	sw	a5,-32(s0)	# tmp167, i
# eval/problem128//code.c:11:     for (i = 2; i * i <= l; i++)
	j	.L6		#
.L8:
# eval/problem128//code.c:12:         if (l % i == 0) return "NO";
	lw	a5,-20(s0)		# tmp170, l
	mv	a4,a5	# tmp169, tmp170
	lw	a5,-32(s0)		# tmp173, i
	remw	a5,a4,a5	# tmp172, tmp171, tmp169
	sext.w	a5,a5	# _1, tmp171
# eval/problem128//code.c:12:         if (l % i == 0) return "NO";
	bne	a5,zero,.L7	#, _1,,
# eval/problem128//code.c:12:         if (l % i == 0) return "NO";
	lla	a5,.LC0	# _4,
# eval/problem128//code.c:12:         if (l % i == 0) return "NO";
	j	.L5		#
.L7:
# eval/problem128//code.c:11:     for (i = 2; i * i <= l; i++)
	lw	a5,-32(s0)		# tmp176, i
	addiw	a5,a5,1	#, tmp174, tmp175
	sw	a5,-32(s0)	# tmp174, i
.L6:
# eval/problem128//code.c:11:     for (i = 2; i * i <= l; i++)
	lw	a5,-32(s0)		# tmp179, i
	mulw	a5,a5,a5	# tmp177, tmp178, tmp178
	sext.w	a4,a5	# _2, tmp177
# eval/problem128//code.c:11:     for (i = 2; i * i <= l; i++)
	lw	a5,-20(s0)		# tmp181, l
	sext.w	a5,a5	# tmp182, tmp180
	bge	a5,a4,.L8	#, tmp182, tmp183,
# eval/problem128//code.c:14:     return "YES";
	lla	a5,.LC1	# _4,
.L5:
# eval/problem128//code.c:15: }
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
