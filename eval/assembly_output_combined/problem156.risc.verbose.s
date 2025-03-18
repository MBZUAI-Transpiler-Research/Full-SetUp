	.file	"problem156.c"
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
# problem156.c:5:     int even_count = 0, odd_count = 0;
	sw	zero,-28(s0)	#, even_count
# problem156.c:5:     int even_count = 0, odd_count = 0;
	sw	zero,-24(s0)	#, odd_count
# problem156.c:6:     num = abs(num);
	lw	a5,-36(s0)		# tmp141, num
	sraiw	a5,a5,31	#, tmp139, tmp140
	lw	a4,-36(s0)		# tmp143, num
	xor	a4,a5,a4	# tmp142, tmp144, tmp139
	subw	a5,a4,a5	# tmp145, tmp144, tmp139
	sw	a5,-36(s0)	# tmp145, num
.L4:
# problem156.c:9:         int digit = num % 10;
	lw	a5,-36(s0)		# tmp148, num
	mv	a4,a5	# tmp147, tmp148
	li	a5,10		# tmp150,
	remw	a5,a4,a5	# tmp150, tmp149, tmp147
	sw	a5,-20(s0)	# tmp149, digit
# problem156.c:10:         if (digit % 2 == 0) {
	lw	a5,-20(s0)		# digit.0_1, digit
	andi	a5,a5,1	#, tmp152, tmp151
	sext.w	a5,a5	# _2, tmp152
# problem156.c:10:         if (digit % 2 == 0) {
	bne	a5,zero,.L2	#, _2,,
# problem156.c:11:             even_count++;
	lw	a5,-28(s0)		# tmp155, even_count
	addiw	a5,a5,1	#, tmp153, tmp154
	sw	a5,-28(s0)	# tmp153, even_count
	j	.L3		#
.L2:
# problem156.c:13:             odd_count++;
	lw	a5,-24(s0)		# tmp158, odd_count
	addiw	a5,a5,1	#, tmp156, tmp157
	sw	a5,-24(s0)	# tmp156, odd_count
.L3:
# problem156.c:15:         num /= 10;
	lw	a5,-36(s0)		# tmp161, num
	mv	a4,a5	# tmp160, tmp161
	li	a5,10		# tmp163,
	divw	a5,a4,a5	# tmp163, tmp162, tmp160
	sw	a5,-36(s0)	# tmp162, num
# problem156.c:16:     } while (num > 0);
	lw	a5,-36(s0)		# tmp165, num
	sext.w	a5,a5	# tmp166, tmp164
	bgt	a5,zero,.L4	#, tmp166,,
# problem156.c:18:     result[0] = even_count;
	ld	a5,-48(s0)		# tmp167, result
	lw	a4,-28(s0)		# tmp168, even_count
	sw	a4,0(a5)	# tmp168, *result_18(D)
# problem156.c:19:     result[1] = odd_count;
	ld	a5,-48(s0)		# tmp169, result
	addi	a5,a5,4	#, _3, tmp169
# problem156.c:19:     result[1] = odd_count;
	lw	a4,-24(s0)		# tmp170, odd_count
	sw	a4,0(a5)	# tmp170, *_3
# problem156.c:20: }
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
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# a, a
	sd	a1,-32(s0)	# b, b
	mv	a5,a2	# tmp140, size
	sw	a5,-36(s0)	# tmp141, size
# problem156.c:28:     return memcmp(a, b, size * sizeof(int)) == 0;
	lw	a5,-36(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a2,a5	#, _2
	ld	a1,-32(s0)		#, b
	ld	a0,-24(s0)		#, a
	call	memcmp@plt	#
	mv	a5,a0	# tmp142,
# problem156.c:28:     return memcmp(a, b, size * sizeof(int)) == 0;
	seqz	a5,a5	# tmp144, tmp145
	andi	a5,a5,0xff	# _4, tmp143
	sext.w	a5,a5	# _9, _4
# problem156.c:29: }
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
.LFE7:
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
.LFB8:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
# problem156.c:31: int main() {
	la	a5,__stack_chk_guard		# tmp144,
	ld	a4, 0(a5)	# tmp197, __stack_chk_guard
	sd	a4, -24(s0)	# tmp197, D.3531
	li	a4, 0	# tmp197
# problem156.c:34:     func0(7, result);
	addi	a5,s0,-40	#, tmp145,
	mv	a1,a5	#, tmp145
	li	a0,7		#,
	call	func0		#
# problem156.c:35:     assert(issame(result, (int[]){0, 1}, 2));
	sw	zero,-32(s0)	#, MEM[(int[2] *)_69][0]
	li	a5,1		# tmp146,
	sw	a5,-28(s0)	# tmp146, MEM[(int[2] *)_69][1]
	addi	a4,s0,-32	#, tmp147,
	addi	a5,s0,-40	#, tmp148,
	li	a2,2		#,
	mv	a1,a4	#, tmp147
	mv	a0,a5	#, tmp148
	call	issame		#
	mv	a5,a0	# tmp149,
# problem156.c:35:     assert(issame(result, (int[]){0, 1}, 2));
	bne	a5,zero,.L8	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L8:
# problem156.c:37:     func0(-78, result);
	addi	a5,s0,-40	#, tmp150,
	mv	a1,a5	#, tmp150
	li	a0,-78		#,
	call	func0		#
# problem156.c:38:     assert(issame(result, (int[]){1, 1}, 2));
	li	a5,1		# tmp151,
	sw	a5,-32(s0)	# tmp151, MEM[(int[2] *)_69][0]
	li	a5,1		# tmp152,
	sw	a5,-28(s0)	# tmp152, MEM[(int[2] *)_69][1]
	addi	a4,s0,-32	#, tmp153,
	addi	a5,s0,-40	#, tmp154,
	li	a2,2		#,
	mv	a1,a4	#, tmp153
	mv	a0,a5	#, tmp154
	call	issame		#
	mv	a5,a0	# tmp155,
# problem156.c:38:     assert(issame(result, (int[]){1, 1}, 2));
	bne	a5,zero,.L9	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L9:
# problem156.c:40:     func0(3452, result);
	addi	a5,s0,-40	#, tmp156,
	mv	a1,a5	#, tmp156
	li	a5,4096		# tmp157,
	addi	a0,a5,-644	#,, tmp157
	call	func0		#
# problem156.c:41:     assert(issame(result, (int[]){2, 2}, 2));
	li	a5,2		# tmp158,
	sw	a5,-32(s0)	# tmp158, MEM[(int[2] *)_69][0]
	li	a5,2		# tmp159,
	sw	a5,-28(s0)	# tmp159, MEM[(int[2] *)_69][1]
	addi	a4,s0,-32	#, tmp160,
	addi	a5,s0,-40	#, tmp161,
	li	a2,2		#,
	mv	a1,a4	#, tmp160
	mv	a0,a5	#, tmp161
	call	issame		#
	mv	a5,a0	# tmp162,
# problem156.c:41:     assert(issame(result, (int[]){2, 2}, 2));
	bne	a5,zero,.L10	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L10:
# problem156.c:43:     func0(346211, result);
	addi	a5,s0,-40	#, tmp163,
	mv	a1,a5	#, tmp163
	li	a5,348160		# tmp164,
	addi	a0,a5,-1949	#,, tmp164
	call	func0		#
# problem156.c:44:     assert(issame(result, (int[]){3, 3}, 2));
	li	a5,3		# tmp165,
	sw	a5,-32(s0)	# tmp165, MEM[(int[2] *)_69][0]
	li	a5,3		# tmp166,
	sw	a5,-28(s0)	# tmp166, MEM[(int[2] *)_69][1]
	addi	a4,s0,-32	#, tmp167,
	addi	a5,s0,-40	#, tmp168,
	li	a2,2		#,
	mv	a1,a4	#, tmp167
	mv	a0,a5	#, tmp168
	call	issame		#
	mv	a5,a0	# tmp169,
# problem156.c:44:     assert(issame(result, (int[]){3, 3}, 2));
	bne	a5,zero,.L11	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,44		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L11:
# problem156.c:46:     func0(-345821, result);
	addi	a5,s0,-40	#, tmp170,
	mv	a1,a5	#, tmp170
	li	a5,-344064		# tmp171,
	addi	a0,a5,-1757	#,, tmp171
	call	func0		#
# problem156.c:47:     assert(issame(result, (int[]){3, 3}, 2));
	li	a5,3		# tmp172,
	sw	a5,-32(s0)	# tmp172, MEM[(int[2] *)_69][0]
	li	a5,3		# tmp173,
	sw	a5,-28(s0)	# tmp173, MEM[(int[2] *)_69][1]
	addi	a4,s0,-32	#, tmp174,
	addi	a5,s0,-40	#, tmp175,
	li	a2,2		#,
	mv	a1,a4	#, tmp174
	mv	a0,a5	#, tmp175
	call	issame		#
	mv	a5,a0	# tmp176,
# problem156.c:47:     assert(issame(result, (int[]){3, 3}, 2));
	bne	a5,zero,.L12	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,47		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L12:
# problem156.c:49:     func0(-2, result);
	addi	a5,s0,-40	#, tmp177,
	mv	a1,a5	#, tmp177
	li	a0,-2		#,
	call	func0		#
# problem156.c:50:     assert(issame(result, (int[]){1, 0}, 2));
	li	a5,1		# tmp178,
	sw	a5,-32(s0)	# tmp178, MEM[(int[2] *)_69][0]
	sw	zero,-28(s0)	#, MEM[(int[2] *)_69][1]
	addi	a4,s0,-32	#, tmp179,
	addi	a5,s0,-40	#, tmp180,
	li	a2,2		#,
	mv	a1,a4	#, tmp179
	mv	a0,a5	#, tmp180
	call	issame		#
	mv	a5,a0	# tmp181,
# problem156.c:50:     assert(issame(result, (int[]){1, 0}, 2));
	bne	a5,zero,.L13	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L13:
# problem156.c:52:     func0(-45347, result);
	addi	a5,s0,-40	#, tmp182,
	mv	a1,a5	#, tmp182
	li	a5,-45056		# tmp183,
	addi	a0,a5,-291	#,, tmp183
	call	func0		#
# problem156.c:53:     assert(issame(result, (int[]){2, 3}, 2));
	li	a5,2		# tmp184,
	sw	a5,-32(s0)	# tmp184, MEM[(int[2] *)_69][0]
	li	a5,3		# tmp185,
	sw	a5,-28(s0)	# tmp185, MEM[(int[2] *)_69][1]
	addi	a4,s0,-32	#, tmp186,
	addi	a5,s0,-40	#, tmp187,
	li	a2,2		#,
	mv	a1,a4	#, tmp186
	mv	a0,a5	#, tmp187
	call	issame		#
	mv	a5,a0	# tmp188,
# problem156.c:53:     assert(issame(result, (int[]){2, 3}, 2));
	bne	a5,zero,.L14	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,53		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L14:
# problem156.c:55:     func0(0, result);
	addi	a5,s0,-40	#, tmp189,
	mv	a1,a5	#, tmp189
	li	a0,0		#,
	call	func0		#
# problem156.c:56:     assert(issame(result, (int[]){1, 0}, 2));
	li	a5,1		# tmp190,
	sw	a5,-32(s0)	# tmp190, MEM[(int[2] *)_69][0]
	sw	zero,-28(s0)	#, MEM[(int[2] *)_69][1]
	addi	a4,s0,-32	#, tmp191,
	addi	a5,s0,-40	#, tmp192,
	li	a2,2		#,
	mv	a1,a4	#, tmp191
	mv	a0,a5	#, tmp192
	call	issame		#
	mv	a5,a0	# tmp193,
# problem156.c:56:     assert(issame(result, (int[]){1, 0}, 2));
	bne	a5,zero,.L15	#, _8,,
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
	la	a5,__stack_chk_guard		# tmp195,
	ld	a3, -24(s0)	# tmp198, D.3531
	ld	a5, 0(a5)	# tmp196, __stack_chk_guard
	xor	a5, a3, a5	# tmp196, tmp198
	li	a3, 0	# tmp198
	beq	a5,zero,.L17	#, tmp196,,
	call	__stack_chk_fail@plt	#
.L17:
	mv	a0,a4	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
