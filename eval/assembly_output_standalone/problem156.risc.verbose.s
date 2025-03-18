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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp137, num
	sd	a1,-48(s0)	# result, result
	sw	a5,-36(s0)	# tmp138, num
# eval/problem156//code.c:5:     int even_count = 0, odd_count = 0;
	sw	zero,-28(s0)	#, even_count
# eval/problem156//code.c:5:     int even_count = 0, odd_count = 0;
	sw	zero,-24(s0)	#, odd_count
# eval/problem156//code.c:6:     num = abs(num);
	lw	a5,-36(s0)		# tmp141, num
	sraiw	a5,a5,31	#, tmp139, tmp140
	lw	a4,-36(s0)		# tmp143, num
	xor	a4,a5,a4	# tmp142, tmp144, tmp139
	subw	a5,a4,a5	# tmp145, tmp144, tmp139
	sw	a5,-36(s0)	# tmp145, num
.L4:
# eval/problem156//code.c:9:         int digit = num % 10;
	lw	a5,-36(s0)		# tmp148, num
	mv	a4,a5	# tmp147, tmp148
	li	a5,10		# tmp150,
	remw	a5,a4,a5	# tmp150, tmp149, tmp147
	sw	a5,-20(s0)	# tmp149, digit
# eval/problem156//code.c:10:         if (digit % 2 == 0) {
	lw	a5,-20(s0)		# digit.0_1, digit
	andi	a5,a5,1	#, tmp152, tmp151
	sext.w	a5,a5	# _2, tmp152
# eval/problem156//code.c:10:         if (digit % 2 == 0) {
	bne	a5,zero,.L2	#, _2,,
# eval/problem156//code.c:11:             even_count++;
	lw	a5,-28(s0)		# tmp155, even_count
	addiw	a5,a5,1	#, tmp153, tmp154
	sw	a5,-28(s0)	# tmp153, even_count
	j	.L3		#
.L2:
# eval/problem156//code.c:13:             odd_count++;
	lw	a5,-24(s0)		# tmp158, odd_count
	addiw	a5,a5,1	#, tmp156, tmp157
	sw	a5,-24(s0)	# tmp156, odd_count
.L3:
# eval/problem156//code.c:15:         num /= 10;
	lw	a5,-36(s0)		# tmp161, num
	mv	a4,a5	# tmp160, tmp161
	li	a5,10		# tmp163,
	divw	a5,a4,a5	# tmp163, tmp162, tmp160
	sw	a5,-36(s0)	# tmp162, num
# eval/problem156//code.c:16:     } while (num > 0);
	lw	a5,-36(s0)		# tmp165, num
	sext.w	a5,a5	# tmp166, tmp164
	bgt	a5,zero,.L4	#, tmp166,,
# eval/problem156//code.c:18:     result[0] = even_count;
	ld	a5,-48(s0)		# tmp167, result
	lw	a4,-28(s0)		# tmp168, even_count
	sw	a4,0(a5)	# tmp168, *result_18(D)
# eval/problem156//code.c:19:     result[1] = odd_count;
	ld	a5,-48(s0)		# tmp169, result
	addi	a5,a5,4	#, _3, tmp169
# eval/problem156//code.c:19:     result[1] = odd_count;
	lw	a4,-24(s0)		# tmp170, odd_count
	sw	a4,0(a5)	# tmp170, *_3
# eval/problem156//code.c:20: }
	nop	
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
