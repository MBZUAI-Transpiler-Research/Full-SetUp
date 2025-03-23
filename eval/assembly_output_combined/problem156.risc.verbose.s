	.file	"problem156.c"
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
# problem156.c:5:     int even_count = 0, odd_count = 0;
	sw	zero,-28(s0)	#, even_count
# problem156.c:5:     int even_count = 0, odd_count = 0;
	sw	zero,-24(s0)	#, odd_count
# problem156.c:6:     num = abs(num);
	lw	a5,-36(s0)		# tmp79, num
	sraiw	a5,a5,31	#, tmp77, tmp78
	lw	a4,-36(s0)		# tmp81, num
	xor	a4,a5,a4	# tmp80, tmp82, tmp77
	subw	a5,a4,a5	# tmp83, tmp82, tmp77
	sw	a5,-36(s0)	# tmp83, num
.L4:
# problem156.c:9:         int digit = num % 10;
	lw	a5,-36(s0)		# tmp86, num
	mv	a4,a5	# tmp85, tmp86
	li	a5,10		# tmp88,
	remw	a5,a4,a5	# tmp88, tmp87, tmp85
	sw	a5,-20(s0)	# tmp87, digit
# problem156.c:10:         if (digit % 2 == 0) {
	lw	a5,-20(s0)		# digit.0_1, digit
	andi	a5,a5,1	#, tmp90, tmp89
	sext.w	a5,a5	# _2, tmp90
# problem156.c:10:         if (digit % 2 == 0) {
	bne	a5,zero,.L2	#, _2,,
# problem156.c:11:             even_count++;
	lw	a5,-28(s0)		# tmp93, even_count
	addiw	a5,a5,1	#, tmp91, tmp92
	sw	a5,-28(s0)	# tmp91, even_count
	j	.L3		#
.L2:
# problem156.c:13:             odd_count++;
	lw	a5,-24(s0)		# tmp96, odd_count
	addiw	a5,a5,1	#, tmp94, tmp95
	sw	a5,-24(s0)	# tmp94, odd_count
.L3:
# problem156.c:15:         num /= 10;
	lw	a5,-36(s0)		# tmp99, num
	mv	a4,a5	# tmp98, tmp99
	li	a5,10		# tmp101,
	divw	a5,a4,a5	# tmp101, tmp100, tmp98
	sw	a5,-36(s0)	# tmp100, num
# problem156.c:16:     } while (num > 0);
	lw	a5,-36(s0)		# tmp103, num
	sext.w	a5,a5	# tmp104, tmp102
	bgt	a5,zero,.L4	#, tmp104,,
# problem156.c:18:     result[0] = even_count;
	ld	a5,-48(s0)		# tmp105, result
	lw	a4,-28(s0)		# tmp106, even_count
	sw	a4,0(a5)	# tmp106, *result_18(D)
# problem156.c:19:     result[1] = odd_count;
	ld	a5,-48(s0)		# tmp107, result
	addi	a5,a5,4	#, _3, tmp107
# problem156.c:19:     result[1] = odd_count;
	lw	a4,-24(s0)		# tmp108, odd_count
	sw	a4,0(a5)	# tmp108, *_3
# problem156.c:20: }
	nop	
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-24(s0)	# a, a
	sd	a1,-32(s0)	# b, b
	mv	a5,a2	# tmp78, size
	sw	a5,-36(s0)	# tmp79, size
# problem156.c:28:     return memcmp(a, b, size * sizeof(int)) == 0;
	lw	a5,-36(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a2,a5	#, _2
	ld	a1,-32(s0)		#, b
	ld	a0,-24(s0)		#, a
	call	memcmp@plt	#
	mv	a5,a0	# tmp80,
# problem156.c:28:     return memcmp(a, b, size * sizeof(int)) == 0;
	seqz	a5,a5	# tmp82, tmp83
	andi	a5,a5,0xff	# _4, tmp81
	sext.w	a5,a5	# _9, _4
# problem156.c:29: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"problem156.c"
	.align	3
.LC1:
	.string	"issame(result, (int[]){0, 1}, 2)"
	.align	3
.LC2:
	.string	"issame(result, (int[]){1, 1}, 2)"
	.align	3
.LC3:
	.string	"issame(result, (int[]){2, 2}, 2)"
	.align	3
.LC4:
	.string	"issame(result, (int[]){3, 3}, 2)"
	.align	3
.LC5:
	.string	"issame(result, (int[]){1, 0}, 2)"
	.align	3
.LC6:
	.string	"issame(result, (int[]){2, 3}, 2)"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
# problem156.c:31: int main() {
	la	a5,__stack_chk_guard		# tmp82,
	ld	a4, 0(a5)	# tmp135, __stack_chk_guard
	sd	a4, -24(s0)	# tmp135, D.2679
	li	a4, 0	# tmp135
# problem156.c:34:     func0(7, result);
	addi	a5,s0,-40	#, tmp83,
	mv	a1,a5	#, tmp83
	li	a0,7		#,
	call	func0		#
# problem156.c:35:     assert(issame(result, (int[]){0, 1}, 2));
	sw	zero,-32(s0)	#, MEM[(int[2] *)_69][0]
	li	a5,1		# tmp84,
	sw	a5,-28(s0)	# tmp84, MEM[(int[2] *)_69][1]
	addi	a4,s0,-32	#, tmp85,
	addi	a5,s0,-40	#, tmp86,
	li	a2,2		#,
	mv	a1,a4	#, tmp85
	mv	a0,a5	#, tmp86
	call	issame		#
	mv	a5,a0	# tmp87,
	bne	a5,zero,.L8	#, _1,,
# problem156.c:35:     assert(issame(result, (int[]){0, 1}, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L8:
# problem156.c:37:     func0(-78, result);
	addi	a5,s0,-40	#, tmp88,
	mv	a1,a5	#, tmp88
	li	a0,-78		#,
	call	func0		#
# problem156.c:38:     assert(issame(result, (int[]){1, 1}, 2));
	li	a5,1		# tmp89,
	sw	a5,-32(s0)	# tmp89, MEM[(int[2] *)_69][0]
	li	a5,1		# tmp90,
	sw	a5,-28(s0)	# tmp90, MEM[(int[2] *)_69][1]
	addi	a4,s0,-32	#, tmp91,
	addi	a5,s0,-40	#, tmp92,
	li	a2,2		#,
	mv	a1,a4	#, tmp91
	mv	a0,a5	#, tmp92
	call	issame		#
	mv	a5,a0	# tmp93,
	bne	a5,zero,.L9	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L9:
# problem156.c:40:     func0(3452, result);
	addi	a5,s0,-40	#, tmp94,
	mv	a1,a5	#, tmp94
	li	a5,4096		# tmp95,
	addi	a0,a5,-644	#,, tmp95
	call	func0		#
# problem156.c:41:     assert(issame(result, (int[]){2, 2}, 2));
	li	a5,2		# tmp96,
	sw	a5,-32(s0)	# tmp96, MEM[(int[2] *)_69][0]
	li	a5,2		# tmp97,
	sw	a5,-28(s0)	# tmp97, MEM[(int[2] *)_69][1]
	addi	a4,s0,-32	#, tmp98,
	addi	a5,s0,-40	#, tmp99,
	li	a2,2		#,
	mv	a1,a4	#, tmp98
	mv	a0,a5	#, tmp99
	call	issame		#
	mv	a5,a0	# tmp100,
	bne	a5,zero,.L10	#, _3,,
# problem156.c:41:     assert(issame(result, (int[]){2, 2}, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L10:
# problem156.c:43:     func0(346211, result);
	addi	a5,s0,-40	#, tmp101,
	mv	a1,a5	#, tmp101
	li	a5,348160		# tmp102,
	addi	a0,a5,-1949	#,, tmp102
	call	func0		#
# problem156.c:44:     assert(issame(result, (int[]){3, 3}, 2));
	li	a5,3		# tmp103,
	sw	a5,-32(s0)	# tmp103, MEM[(int[2] *)_69][0]
	li	a5,3		# tmp104,
	sw	a5,-28(s0)	# tmp104, MEM[(int[2] *)_69][1]
	addi	a4,s0,-32	#, tmp105,
	addi	a5,s0,-40	#, tmp106,
	li	a2,2		#,
	mv	a1,a4	#, tmp105
	mv	a0,a5	#, tmp106
	call	issame		#
	mv	a5,a0	# tmp107,
	bne	a5,zero,.L11	#, _4,,
# problem156.c:44:     assert(issame(result, (int[]){3, 3}, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,44		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L11:
# problem156.c:46:     func0(-345821, result);
	addi	a5,s0,-40	#, tmp108,
	mv	a1,a5	#, tmp108
	li	a5,-344064		# tmp109,
	addi	a0,a5,-1757	#,, tmp109
	call	func0		#
# problem156.c:47:     assert(issame(result, (int[]){3, 3}, 2));
	li	a5,3		# tmp110,
	sw	a5,-32(s0)	# tmp110, MEM[(int[2] *)_69][0]
	li	a5,3		# tmp111,
	sw	a5,-28(s0)	# tmp111, MEM[(int[2] *)_69][1]
	addi	a4,s0,-32	#, tmp112,
	addi	a5,s0,-40	#, tmp113,
	li	a2,2		#,
	mv	a1,a4	#, tmp112
	mv	a0,a5	#, tmp113
	call	issame		#
	mv	a5,a0	# tmp114,
	bne	a5,zero,.L12	#, _5,,
# problem156.c:47:     assert(issame(result, (int[]){3, 3}, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,47		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L12:
# problem156.c:49:     func0(-2, result);
	addi	a5,s0,-40	#, tmp115,
	mv	a1,a5	#, tmp115
	li	a0,-2		#,
	call	func0		#
# problem156.c:50:     assert(issame(result, (int[]){1, 0}, 2));
	li	a5,1		# tmp116,
	sw	a5,-32(s0)	# tmp116, MEM[(int[2] *)_69][0]
	sw	zero,-28(s0)	#, MEM[(int[2] *)_69][1]
	addi	a4,s0,-32	#, tmp117,
	addi	a5,s0,-40	#, tmp118,
	li	a2,2		#,
	mv	a1,a4	#, tmp117
	mv	a0,a5	#, tmp118
	call	issame		#
	mv	a5,a0	# tmp119,
	bne	a5,zero,.L13	#, _6,,
# problem156.c:50:     assert(issame(result, (int[]){1, 0}, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L13:
# problem156.c:52:     func0(-45347, result);
	addi	a5,s0,-40	#, tmp120,
	mv	a1,a5	#, tmp120
	li	a5,-45056		# tmp121,
	addi	a0,a5,-291	#,, tmp121
	call	func0		#
# problem156.c:53:     assert(issame(result, (int[]){2, 3}, 2));
	li	a5,2		# tmp122,
	sw	a5,-32(s0)	# tmp122, MEM[(int[2] *)_69][0]
	li	a5,3		# tmp123,
	sw	a5,-28(s0)	# tmp123, MEM[(int[2] *)_69][1]
	addi	a4,s0,-32	#, tmp124,
	addi	a5,s0,-40	#, tmp125,
	li	a2,2		#,
	mv	a1,a4	#, tmp124
	mv	a0,a5	#, tmp125
	call	issame		#
	mv	a5,a0	# tmp126,
	bne	a5,zero,.L14	#, _7,,
# problem156.c:53:     assert(issame(result, (int[]){2, 3}, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,53		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L14:
# problem156.c:55:     func0(0, result);
	addi	a5,s0,-40	#, tmp127,
	mv	a1,a5	#, tmp127
	li	a0,0		#,
	call	func0		#
# problem156.c:56:     assert(issame(result, (int[]){1, 0}, 2));
	li	a5,1		# tmp128,
	sw	a5,-32(s0)	# tmp128, MEM[(int[2] *)_69][0]
	sw	zero,-28(s0)	#, MEM[(int[2] *)_69][1]
	addi	a4,s0,-32	#, tmp129,
	addi	a5,s0,-40	#, tmp130,
	li	a2,2		#,
	mv	a1,a4	#, tmp129
	mv	a0,a5	#, tmp130
	call	issame		#
	mv	a5,a0	# tmp131,
	bne	a5,zero,.L15	#, _8,,
# problem156.c:56:     assert(issame(result, (int[]){1, 0}, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,56		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L15:
# problem156.c:58:     return 0;
	li	a5,0		# _58,
# problem156.c:59: }
	mv	a4,a5	# <retval>, _58
	la	a5,__stack_chk_guard		# tmp133,
	ld	a3, -24(s0)	# tmp136, D.2679
	ld	a5, 0(a5)	# tmp134, __stack_chk_guard
	xor	a5, a3, a5	# tmp134, tmp136
	li	a3, 0	# tmp136
	beq	a5,zero,.L17	#, tmp134,,
# problem156.c:59: }
	call	__stack_chk_fail@plt	#
.L17:
	mv	a0,a4	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
