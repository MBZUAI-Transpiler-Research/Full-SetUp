	.file	"problem160.c"
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
	mv	a5,a0	# tmp139, number
	mv	a4,a2	# tmp143, remaining
	sd	a3,-40(s0)	# result, result
	sw	a5,-20(s0)	# tmp140, number
	mv	a5,a1	# tmp142, tmp141
	sw	a5,-24(s0)	# tmp142, need
	mv	a5,a4	# tmp144, tmp143
	sw	a5,-28(s0)	# tmp144, remaining
# problem160.c:4:     if (need > remaining) {
	lw	a5,-24(s0)		# tmp146, need
	mv	a4,a5	# tmp145, tmp146
	lw	a5,-28(s0)		# tmp148, remaining
	sext.w	a4,a4	# tmp149, tmp145
	sext.w	a5,a5	# tmp150, tmp147
	ble	a4,a5,.L2	#, tmp149, tmp150,
# problem160.c:5:         result[0] = number + remaining;
	lw	a5,-20(s0)		# tmp153, number
	mv	a4,a5	# tmp152, tmp153
	lw	a5,-28(s0)		# tmp155, remaining
	addw	a5,a4,a5	# tmp154, tmp151, tmp152
	sext.w	a4,a5	# _1, tmp151
# problem160.c:5:         result[0] = number + remaining;
	ld	a5,-40(s0)		# tmp156, result
	sw	a4,0(a5)	# _1, *result_11(D)
# problem160.c:6:         result[1] = 0;
	ld	a5,-40(s0)		# tmp157, result
	addi	a5,a5,4	#, _2, tmp157
# problem160.c:6:         result[1] = 0;
	sw	zero,0(a5)	#, *_2
# problem160.c:11: }
	j	.L4		#
.L2:
# problem160.c:8:         result[0] = number + need;
	lw	a5,-20(s0)		# tmp160, number
	mv	a4,a5	# tmp159, tmp160
	lw	a5,-24(s0)		# tmp162, need
	addw	a5,a4,a5	# tmp161, tmp158, tmp159
	sext.w	a4,a5	# _3, tmp158
# problem160.c:8:         result[0] = number + need;
	ld	a5,-40(s0)		# tmp163, result
	sw	a4,0(a5)	# _3, *result_11(D)
# problem160.c:9:         result[1] = remaining - need;
	ld	a5,-40(s0)		# tmp164, result
	addi	a5,a5,4	#, _4, tmp164
# problem160.c:9:         result[1] = remaining - need;
	lw	a4,-28(s0)		# tmp167, remaining
	mv	a3,a4	# tmp166, tmp167
	lw	a4,-24(s0)		# tmp169, need
	subw	a4,a3,a4	# tmp165, tmp166, tmp168
	sext.w	a4,a4	# _5, tmp165
# problem160.c:9:         result[1] = remaining - need;
	sw	a4,0(a5)	# _5, *_4
.L4:
# problem160.c:11: }
	nop	
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# a, a
	sd	a1,-32(s0)	# b, b
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	ld	a5,-24(s0)		# tmp142, a
	lw	a4,0(a5)		# _1, *a_9(D)
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	ld	a5,-32(s0)		# tmp143, b
	lw	a5,0(a5)		# _2, *b_10(D)
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	bne	a4,a5,.L6	#, tmp144, tmp145,
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	ld	a5,-24(s0)		# tmp146, a
	addi	a5,a5,4	#, _3, tmp146
	lw	a4,0(a5)		# _4, *_3
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	ld	a5,-32(s0)		# tmp147, b
	addi	a5,a5,4	#, _5, tmp147
	lw	a5,0(a5)		# _6, *_5
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	bne	a4,a5,.L6	#, tmp148, tmp149,
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	li	a5,1		# iftmp.0_7,
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	j	.L7		#
.L6:
# problem160.c:18:     return a[0] == b[0] && a[1] == b[1];
	li	a5,0		# iftmp.0_7,
.L7:
# problem160.c:19: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"problem160.c"
	.align	3
.LC1:
	.string	"issame(result, (int[]){11, 4})"
	.align	3
.LC2:
	.string	"issame(result, (int[]){12, 1})"
	.align	3
.LC3:
	.string	"issame(result, (int[]){11, 0})"
	.align	3
.LC4:
	.string	"issame(result, (int[]){7, 0})"
	.align	3
.LC5:
	.string	"issame(result, (int[]){9, 2})"
	.align	3
.LC6:
	.string	"issame(result, (int[]){5, 0})"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
# problem160.c:21: int main() {
	la	a5,__stack_chk_guard		# tmp142,
	ld	a4, 0(a5)	# tmp179, __stack_chk_guard
	sd	a4, -24(s0)	# tmp179, D.2790
	li	a4, 0	# tmp179
# problem160.c:24:     func0(5, 6, 10, result);
	addi	a5,s0,-40	#, tmp143,
	mv	a3,a5	#, tmp143
	li	a2,10		#,
	li	a1,6		#,
	li	a0,5		#,
	call	func0		#
# problem160.c:25:     assert(issame(result, (int[]){11, 4}));
	li	a5,11		# tmp144,
	sw	a5,-32(s0)	# tmp144, MEM[(int[2] *)_53][0]
	li	a5,4		# tmp145,
	sw	a5,-28(s0)	# tmp145, MEM[(int[2] *)_53][1]
	addi	a4,s0,-32	#, tmp146,
	addi	a5,s0,-40	#, tmp147,
	mv	a1,a4	#, tmp146
	mv	a0,a5	#, tmp147
	call	issame		#
	mv	a5,a0	# tmp148,
# problem160.c:25:     assert(issame(result, (int[]){11, 4}));
	bne	a5,zero,.L10	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L10:
# problem160.c:27:     func0(4, 8, 9, result);
	addi	a5,s0,-40	#, tmp149,
	mv	a3,a5	#, tmp149
	li	a2,9		#,
	li	a1,8		#,
	li	a0,4		#,
	call	func0		#
# problem160.c:28:     assert(issame(result, (int[]){12, 1}));
	li	a5,12		# tmp150,
	sw	a5,-32(s0)	# tmp150, MEM[(int[2] *)_53][0]
	li	a5,1		# tmp151,
	sw	a5,-28(s0)	# tmp151, MEM[(int[2] *)_53][1]
	addi	a4,s0,-32	#, tmp152,
	addi	a5,s0,-40	#, tmp153,
	mv	a1,a4	#, tmp152
	mv	a0,a5	#, tmp153
	call	issame		#
	mv	a5,a0	# tmp154,
# problem160.c:28:     assert(issame(result, (int[]){12, 1}));
	bne	a5,zero,.L11	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L11:
# problem160.c:30:     func0(1, 10, 10, result);
	addi	a5,s0,-40	#, tmp155,
	mv	a3,a5	#, tmp155
	li	a2,10		#,
	li	a1,10		#,
	li	a0,1		#,
	call	func0		#
# problem160.c:31:     assert(issame(result, (int[]){11, 0}));
	li	a5,11		# tmp156,
	sw	a5,-32(s0)	# tmp156, MEM[(int[2] *)_53][0]
	sw	zero,-28(s0)	#, MEM[(int[2] *)_53][1]
	addi	a4,s0,-32	#, tmp157,
	addi	a5,s0,-40	#, tmp158,
	mv	a1,a4	#, tmp157
	mv	a0,a5	#, tmp158
	call	issame		#
	mv	a5,a0	# tmp159,
# problem160.c:31:     assert(issame(result, (int[]){11, 0}));
	bne	a5,zero,.L12	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L12:
# problem160.c:33:     func0(2, 11, 5, result);
	addi	a5,s0,-40	#, tmp160,
	mv	a3,a5	#, tmp160
	li	a2,5		#,
	li	a1,11		#,
	li	a0,2		#,
	call	func0		#
# problem160.c:34:     assert(issame(result, (int[]){7, 0}));
	li	a5,7		# tmp161,
	sw	a5,-32(s0)	# tmp161, MEM[(int[2] *)_53][0]
	sw	zero,-28(s0)	#, MEM[(int[2] *)_53][1]
	addi	a4,s0,-32	#, tmp162,
	addi	a5,s0,-40	#, tmp163,
	mv	a1,a4	#, tmp162
	mv	a0,a5	#, tmp163
	call	issame		#
	mv	a5,a0	# tmp164,
# problem160.c:34:     assert(issame(result, (int[]){7, 0}));
	bne	a5,zero,.L13	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L13:
# problem160.c:36:     func0(4, 5, 7, result);
	addi	a5,s0,-40	#, tmp165,
	mv	a3,a5	#, tmp165
	li	a2,7		#,
	li	a1,5		#,
	li	a0,4		#,
	call	func0		#
# problem160.c:37:     assert(issame(result, (int[]){9, 2}));
	li	a5,9		# tmp166,
	sw	a5,-32(s0)	# tmp166, MEM[(int[2] *)_53][0]
	li	a5,2		# tmp167,
	sw	a5,-28(s0)	# tmp167, MEM[(int[2] *)_53][1]
	addi	a4,s0,-32	#, tmp168,
	addi	a5,s0,-40	#, tmp169,
	mv	a1,a4	#, tmp168
	mv	a0,a5	#, tmp169
	call	issame		#
	mv	a5,a0	# tmp170,
# problem160.c:37:     assert(issame(result, (int[]){9, 2}));
	bne	a5,zero,.L14	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L14:
# problem160.c:39:     func0(4, 5, 1, result);
	addi	a5,s0,-40	#, tmp171,
	mv	a3,a5	#, tmp171
	li	a2,1		#,
	li	a1,5		#,
	li	a0,4		#,
	call	func0		#
# problem160.c:40:     assert(issame(result, (int[]){5, 0}));
	li	a5,5		# tmp172,
	sw	a5,-32(s0)	# tmp172, MEM[(int[2] *)_53][0]
	sw	zero,-28(s0)	#, MEM[(int[2] *)_53][1]
	addi	a4,s0,-32	#, tmp173,
	addi	a5,s0,-40	#, tmp174,
	mv	a1,a4	#, tmp173
	mv	a0,a5	#, tmp174
	call	issame		#
	mv	a5,a0	# tmp175,
# problem160.c:40:     assert(issame(result, (int[]){5, 0}));
	bne	a5,zero,.L15	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L15:
# problem160.c:42:     return 0;
	li	a5,0		# _44,
# problem160.c:43: }
	mv	a4,a5	# <retval>, _44
	la	a5,__stack_chk_guard		# tmp177,
	ld	a3, -24(s0)	# tmp180, D.2790
	ld	a5, 0(a5)	# tmp178, __stack_chk_guard
	xor	a5, a3, a5	# tmp178, tmp180
	li	a3, 0	# tmp180
	beq	a5,zero,.L17	#, tmp178,,
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
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
