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
	.string	"YES"
	.align	3
.LC1:
	.string	"NO"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64	#,,
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# lst1, lst1
	mv	a5,a1	# tmp86, size1
	sd	a2,-56(s0)	# lst2, lst2
	mv	a4,a3	# tmp88, size2
	sw	a5,-44(s0)	# tmp87, size1
	mv	a5,a4	# tmp89, tmp88
	sw	a5,-48(s0)	# tmp89, size2
# eval/problem111//code.c:4:     int num = 0;
	sw	zero,-28(s0)	#, num
# eval/problem111//code.c:5:     for (int i = 0; i < size1; i++)
	sw	zero,-24(s0)	#, i
# eval/problem111//code.c:5:     for (int i = 0; i < size1; i++)
	j	.L2		#
.L4:
# eval/problem111//code.c:6:         if (lst1[i] % 2 == 0) num += 1;
	lw	a5,-24(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp90, lst1
	add	a5,a4,a5	# _2, _3, tmp90
	lw	a5,0(a5)		# _4, *_3
# eval/problem111//code.c:6:         if (lst1[i] % 2 == 0) num += 1;
	sext.w	a5,a5	# _5, _4
	andi	a5,a5,1	#, tmp92, tmp91
	sext.w	a5,a5	# _6, tmp92
# eval/problem111//code.c:6:         if (lst1[i] % 2 == 0) num += 1;
	bne	a5,zero,.L3	#, _6,,
# eval/problem111//code.c:6:         if (lst1[i] % 2 == 0) num += 1;
	lw	a5,-28(s0)		# tmp95, num
	addiw	a5,a5,1	#, tmp93, tmp94
	sw	a5,-28(s0)	# tmp93, num
.L3:
# eval/problem111//code.c:5:     for (int i = 0; i < size1; i++)
	lw	a5,-24(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-24(s0)	# tmp96, i
.L2:
# eval/problem111//code.c:5:     for (int i = 0; i < size1; i++)
	lw	a5,-24(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-44(s0)		# tmp102, size1
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L4	#, tmp103, tmp104,
# eval/problem111//code.c:7:     for (int i = 0; i < size2; i++)
	sw	zero,-20(s0)	#, i
# eval/problem111//code.c:7:     for (int i = 0; i < size2; i++)
	j	.L5		#
.L7:
# eval/problem111//code.c:8:         if (lst2[i] % 2 == 0) num += 1;
	lw	a5,-20(s0)		# _7, i
	slli	a5,a5,2	#, _8, _7
	ld	a4,-56(s0)		# tmp105, lst2
	add	a5,a4,a5	# _8, _9, tmp105
	lw	a5,0(a5)		# _10, *_9
# eval/problem111//code.c:8:         if (lst2[i] % 2 == 0) num += 1;
	sext.w	a5,a5	# _11, _10
	andi	a5,a5,1	#, tmp107, tmp106
	sext.w	a5,a5	# _12, tmp107
# eval/problem111//code.c:8:         if (lst2[i] % 2 == 0) num += 1;
	bne	a5,zero,.L6	#, _12,,
# eval/problem111//code.c:8:         if (lst2[i] % 2 == 0) num += 1;
	lw	a5,-28(s0)		# tmp110, num
	addiw	a5,a5,1	#, tmp108, tmp109
	sw	a5,-28(s0)	# tmp108, num
.L6:
# eval/problem111//code.c:7:     for (int i = 0; i < size2; i++)
	lw	a5,-20(s0)		# tmp113, i
	addiw	a5,a5,1	#, tmp111, tmp112
	sw	a5,-20(s0)	# tmp111, i
.L5:
# eval/problem111//code.c:7:     for (int i = 0; i < size2; i++)
	lw	a5,-20(s0)		# tmp115, i
	mv	a4,a5	# tmp114, tmp115
	lw	a5,-48(s0)		# tmp117, size2
	sext.w	a4,a4	# tmp118, tmp114
	sext.w	a5,a5	# tmp119, tmp116
	blt	a4,a5,.L7	#, tmp118, tmp119,
# eval/problem111//code.c:9:     if (num >= size1) return "YES";
	lw	a5,-28(s0)		# tmp121, num
	mv	a4,a5	# tmp120, tmp121
	lw	a5,-44(s0)		# tmp123, size1
	sext.w	a4,a4	# tmp124, tmp120
	sext.w	a5,a5	# tmp125, tmp122
	blt	a4,a5,.L8	#, tmp124, tmp125,
# eval/problem111//code.c:9:     if (num >= size1) return "YES";
	lla	a5,.LC0	# _19,
	j	.L9		#
.L8:
# eval/problem111//code.c:10:     return "NO";
	lla	a5,.LC1	# _19,
.L9:
# eval/problem111//code.c:11: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
