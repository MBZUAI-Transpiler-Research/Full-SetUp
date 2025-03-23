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
	mv	a5,a0	# tmp75, num
	sd	a1,-48(s0)	# result, result
	sw	a5,-36(s0)	# tmp76, num
# eval/problem156//code.c:5:     int even_count = 0, odd_count = 0;
	sw	zero,-28(s0)	#, even_count
# eval/problem156//code.c:5:     int even_count = 0, odd_count = 0;
	sw	zero,-24(s0)	#, odd_count
# eval/problem156//code.c:6:     num = abs(num);
	lw	a5,-36(s0)		# tmp79, num
	sraiw	a5,a5,31	#, tmp77, tmp78
	lw	a4,-36(s0)		# tmp81, num
	xor	a4,a5,a4	# tmp80, tmp82, tmp77
	subw	a5,a4,a5	# tmp83, tmp82, tmp77
	sw	a5,-36(s0)	# tmp83, num
.L4:
# eval/problem156//code.c:9:         int digit = num % 10;
	lw	a5,-36(s0)		# tmp86, num
	mv	a4,a5	# tmp85, tmp86
	li	a5,10		# tmp88,
	remw	a5,a4,a5	# tmp88, tmp87, tmp85
	sw	a5,-20(s0)	# tmp87, digit
# eval/problem156//code.c:10:         if (digit % 2 == 0) {
	lw	a5,-20(s0)		# digit.0_1, digit
	andi	a5,a5,1	#, tmp90, tmp89
	sext.w	a5,a5	# _2, tmp90
# eval/problem156//code.c:10:         if (digit % 2 == 0) {
	bne	a5,zero,.L2	#, _2,,
# eval/problem156//code.c:11:             even_count++;
	lw	a5,-28(s0)		# tmp93, even_count
	addiw	a5,a5,1	#, tmp91, tmp92
	sw	a5,-28(s0)	# tmp91, even_count
	j	.L3		#
.L2:
# eval/problem156//code.c:13:             odd_count++;
	lw	a5,-24(s0)		# tmp96, odd_count
	addiw	a5,a5,1	#, tmp94, tmp95
	sw	a5,-24(s0)	# tmp94, odd_count
.L3:
# eval/problem156//code.c:15:         num /= 10;
	lw	a5,-36(s0)		# tmp99, num
	mv	a4,a5	# tmp98, tmp99
	li	a5,10		# tmp101,
	divw	a5,a4,a5	# tmp101, tmp100, tmp98
	sw	a5,-36(s0)	# tmp100, num
# eval/problem156//code.c:16:     } while (num > 0);
	lw	a5,-36(s0)		# tmp103, num
	sext.w	a5,a5	# tmp104, tmp102
	bgt	a5,zero,.L4	#, tmp104,,
# eval/problem156//code.c:18:     result[0] = even_count;
	ld	a5,-48(s0)		# tmp105, result
	lw	a4,-28(s0)		# tmp106, even_count
	sw	a4,0(a5)	# tmp106, *result_18(D)
# eval/problem156//code.c:19:     result[1] = odd_count;
	ld	a5,-48(s0)		# tmp107, result
	addi	a5,a5,4	#, _3, tmp107
# eval/problem156//code.c:19:     result[1] = odd_count;
	lw	a4,-24(s0)		# tmp108, odd_count
	sw	a4,0(a5)	# tmp108, *_3
# eval/problem156//code.c:20: }
	nop	
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
