	.file	"code.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp76, interval1_start
	mv	a4,a3	# tmp82, interval2_end
	sw	a5,-36(s0)	# tmp77, interval1_start
	mv	a5,a1	# tmp79, tmp78
	sw	a5,-40(s0)	# tmp79, interval1_end
	mv	a5,a2	# tmp81, tmp80
	sw	a5,-44(s0)	# tmp81, interval2_start
	mv	a5,a4	# tmp83, tmp82
	sw	a5,-48(s0)	# tmp83, interval2_end
# eval/problem128//code.c:5:     inter1 = interval1_start > interval2_start ? interval1_start : interval2_start;
	lw	a5,-36(s0)		# tmp86, interval1_start
	mv	a2,a5	# tmp85, tmp86
	lw	a5,-44(s0)		# tmp87, interval2_start
	sext.w	a3,a5	# tmp88, tmp84
	sext.w	a4,a2	# tmp89, tmp85
	bge	a3,a4,.L2	#, tmp88, tmp89,
	mv	a5,a2	# tmp84, tmp85
.L2:
	sw	a5,-28(s0)	# tmp84, inter1
# eval/problem128//code.c:6:     inter2 = interval1_end < interval2_end ? interval1_end : interval2_end;
	lw	a5,-40(s0)		# tmp92, interval1_end
	mv	a2,a5	# tmp91, tmp92
	lw	a5,-48(s0)		# tmp93, interval2_end
	sext.w	a3,a5	# tmp94, tmp90
	sext.w	a4,a2	# tmp95, tmp91
	ble	a3,a4,.L3	#, tmp94, tmp95,
	mv	a5,a2	# tmp90, tmp91
.L3:
	sw	a5,-24(s0)	# tmp90, inter2
# eval/problem128//code.c:7:     l = inter2 - inter1;
	lw	a5,-24(s0)		# tmp98, inter2
	mv	a4,a5	# tmp97, tmp98
	lw	a5,-28(s0)		# tmp100, inter1
	subw	a5,a4,a5	# tmp96, tmp97, tmp99
	sw	a5,-20(s0)	# tmp96, l
# eval/problem128//code.c:9:     if (l < 2) return "NO";
	lw	a5,-20(s0)		# tmp102, l
	sext.w	a4,a5	# tmp103, tmp101
	li	a5,1		# tmp104,
	bgt	a4,a5,.L4	#, tmp103, tmp104,
# eval/problem128//code.c:9:     if (l < 2) return "NO";
	lla	a5,.LC0	# _4,
	j	.L5		#
.L4:
# eval/problem128//code.c:11:     for (i = 2; i * i <= l; i++)
	li	a5,2		# tmp105,
	sw	a5,-32(s0)	# tmp105, i
# eval/problem128//code.c:11:     for (i = 2; i * i <= l; i++)
	j	.L6		#
.L8:
# eval/problem128//code.c:12:         if (l % i == 0) return "NO";
	lw	a5,-20(s0)		# tmp108, l
	mv	a4,a5	# tmp107, tmp108
	lw	a5,-32(s0)		# tmp111, i
	remw	a5,a4,a5	# tmp110, tmp109, tmp107
	sext.w	a5,a5	# _1, tmp109
# eval/problem128//code.c:12:         if (l % i == 0) return "NO";
	bne	a5,zero,.L7	#, _1,,
# eval/problem128//code.c:12:         if (l % i == 0) return "NO";
	lla	a5,.LC0	# _4,
	j	.L5		#
.L7:
# eval/problem128//code.c:11:     for (i = 2; i * i <= l; i++)
	lw	a5,-32(s0)		# tmp114, i
	addiw	a5,a5,1	#, tmp112, tmp113
	sw	a5,-32(s0)	# tmp112, i
.L6:
# eval/problem128//code.c:11:     for (i = 2; i * i <= l; i++)
	lw	a5,-32(s0)		# tmp117, i
	mulw	a5,a5,a5	# tmp115, tmp116, tmp116
	sext.w	a4,a5	# _2, tmp115
# eval/problem128//code.c:11:     for (i = 2; i * i <= l; i++)
	lw	a5,-20(s0)		# tmp119, l
	sext.w	a5,a5	# tmp120, tmp118
	bge	a5,a4,.L8	#, tmp120, tmp121,
# eval/problem128//code.c:14:     return "YES";
	lla	a5,.LC1	# _4,
.L5:
# eval/problem128//code.c:15: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
