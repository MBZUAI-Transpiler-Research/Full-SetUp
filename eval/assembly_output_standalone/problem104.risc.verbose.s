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
	.string	"-1"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp86, n
	mv	a4,a1	# tmp88, m
	sw	a5,-36(s0)	# tmp87, n
	mv	a5,a4	# tmp89, tmp88
	sw	a5,-40(s0)	# tmp89, m
# eval/problem104//code.c:5:     if (n > m) return "-1";
	lw	a5,-36(s0)		# tmp91, n
	mv	a4,a5	# tmp90, tmp91
	lw	a5,-40(s0)		# tmp93, m
	sext.w	a4,a4	# tmp94, tmp90
	sext.w	a5,a5	# tmp95, tmp92
	ble	a4,a5,.L2	#, tmp94, tmp95,
# eval/problem104//code.c:5:     if (n > m) return "-1";
	lla	a5,.LC0	# _15,
	j	.L3		#
.L2:
# eval/problem104//code.c:6:     int num = (m + n) / 2;
	lw	a5,-40(s0)		# tmp98, m
	mv	a4,a5	# tmp97, tmp98
	lw	a5,-36(s0)		# tmp100, n
	addw	a5,a4,a5	# tmp99, tmp96, tmp97
	sext.w	a5,a5	# _1, tmp96
# eval/problem104//code.c:6:     int num = (m + n) / 2;
	srliw	a4,a5,31	#, tmp102, tmp101
	addw	a5,a4,a5	# tmp101, tmp103, tmp102
	sraiw	a5,a5,1	#, tmp104, tmp103
	sw	a5,-32(s0)	# tmp104, num
# eval/problem104//code.c:7:     char* out = (char*)malloc(33);
	li	a0,33		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp105,
	sd	a5,-24(s0)	# tmp105, out
# eval/problem104//code.c:8:     out[0] = '\0';
	ld	a5,-24(s0)		# tmp106, out
	sb	zero,0(a5)	#, *out_23
# eval/problem104//code.c:10:     int index = 32;
	li	a5,32		# tmp107,
	sw	a5,-28(s0)	# tmp107, index
# eval/problem104//code.c:11:     out[index--] = '\0';
	lw	a5,-28(s0)		# index.0_2, index
	addiw	a4,a5,-1	#, tmp108, index.0_2
	sw	a4,-28(s0)	# tmp108, index
	mv	a4,a5	# _3, index.0_2
# eval/problem104//code.c:11:     out[index--] = '\0';
	ld	a5,-24(s0)		# tmp109, out
	add	a5,a5,a4	# _3, _4, tmp109
# eval/problem104//code.c:11:     out[index--] = '\0';
	sb	zero,0(a5)	#, *_4
.L4:
# eval/problem104//code.c:14:         out[index--] = '0' + num % 2;
	lw	a5,-32(s0)		# tmp112, num
	mv	a4,a5	# tmp111, tmp112
	sraiw	a5,a4,31	#, tmp113, tmp111
	srliw	a5,a5,31	#, tmp114, tmp113
	addw	a4,a4,a5	# tmp114, tmp115, tmp111
	andi	a4,a4,1	#, tmp116, tmp115
	subw	a5,a4,a5	# tmp117, tmp116, tmp114
	sext.w	a5,a5	# _5, tmp117
# eval/problem104//code.c:14:         out[index--] = '0' + num % 2;
	andi	a4,a5,0xff	# _6, _5
# eval/problem104//code.c:14:         out[index--] = '0' + num % 2;
	lw	a5,-28(s0)		# index.1_7, index
	addiw	a3,a5,-1	#, tmp118, index.1_7
	sw	a3,-28(s0)	# tmp118, index
	mv	a3,a5	# _8, index.1_7
# eval/problem104//code.c:14:         out[index--] = '0' + num % 2;
	ld	a5,-24(s0)		# tmp119, out
	add	a5,a5,a3	# _8, _9, tmp119
# eval/problem104//code.c:14:         out[index--] = '0' + num % 2;
	addiw	a4,a4,48	#, tmp120, _6
	andi	a4,a4,0xff	# _10, tmp120
# eval/problem104//code.c:14:         out[index--] = '0' + num % 2;
	sb	a4,0(a5)	# _10, *_9
# eval/problem104//code.c:15:         num /= 2;
	lw	a5,-32(s0)		# tmp123, num
	srliw	a4,a5,31	#, tmp124, tmp122
	addw	a5,a4,a5	# tmp122, tmp125, tmp124
	sraiw	a5,a5,1	#, tmp126, tmp125
	sw	a5,-32(s0)	# tmp126, num
# eval/problem104//code.c:16:     } while (num > 0);
	lw	a5,-32(s0)		# tmp128, num
	sext.w	a5,a5	# tmp129, tmp127
	bgt	a5,zero,.L4	#, tmp129,,
# eval/problem104//code.c:18:     return &out[index + 1]; 
	lw	a5,-28(s0)		# _11, index
	addi	a5,a5,1	#, _12, _11
# eval/problem104//code.c:18:     return &out[index + 1]; 
	ld	a4,-24(s0)		# tmp130, out
	add	a5,a4,a5	# _12, _15, tmp130
.L3:
# eval/problem104//code.c:19: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
