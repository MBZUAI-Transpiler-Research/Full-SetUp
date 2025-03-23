	.file	"problem109.c"
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
	sd	a0,-40(s0)	# n, n
	mv	a5,a1	# tmp145, size
	sw	a5,-44(s0)	# tmp146, size
# problem109.c:5:     int num = 0;
	sw	zero,-32(s0)	#, num
# problem109.c:6:     for (int i = 0; i < size; i++) {
	sw	zero,-28(s0)	#, i
# problem109.c:6:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L7:
# problem109.c:7:         if (n[i] > 0) {
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp147, n
	add	a5,a4,a5	# _2, _3, tmp147
	lw	a5,0(a5)		# _4, *_3
# problem109.c:7:         if (n[i] > 0) {
	ble	a5,zero,.L3	#, tmp148,,
# problem109.c:8:             num += 1;
	lw	a5,-32(s0)		# tmp151, num
	addiw	a5,a5,1	#, tmp149, tmp150
	sw	a5,-32(s0)	# tmp149, num
	j	.L4		#
.L3:
# problem109.c:10:             int sum = 0;
	sw	zero,-24(s0)	#, sum
# problem109.c:11:             int w = abs(n[i]);
	lw	a5,-28(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp152, n
	add	a5,a4,a5	# _6, _7, tmp152
	lw	a4,0(a5)		# _8, *_7
# problem109.c:11:             int w = abs(n[i]);
	sraiw	a5,a4,31	#, tmp153, _8
	xor	a4,a4,a5	# tmp153, tmp154, _8
	subw	a5,a4,a5	# tmp155, tmp154, tmp153
	sw	a5,-20(s0)	# tmp155, w
# problem109.c:12:             while (w >= 10) {
	j	.L5		#
.L6:
# problem109.c:13:                 sum += w % 10;
	lw	a5,-20(s0)		# tmp158, w
	mv	a4,a5	# tmp157, tmp158
	li	a5,10		# tmp160,
	remw	a5,a4,a5	# tmp160, tmp159, tmp157
	sext.w	a5,a5	# _9, tmp159
# problem109.c:13:                 sum += w % 10;
	lw	a4,-24(s0)		# tmp163, sum
	addw	a5,a4,a5	# _9, tmp161, tmp162
	sw	a5,-24(s0)	# tmp161, sum
# problem109.c:14:                 w = w / 10;
	lw	a5,-20(s0)		# tmp166, w
	mv	a4,a5	# tmp165, tmp166
	li	a5,10		# tmp168,
	divw	a5,a4,a5	# tmp168, tmp167, tmp165
	sw	a5,-20(s0)	# tmp167, w
.L5:
# problem109.c:12:             while (w >= 10) {
	lw	a5,-20(s0)		# tmp170, w
	sext.w	a4,a5	# tmp171, tmp169
	li	a5,9		# tmp172,
	bgt	a4,a5,.L6	#, tmp171, tmp172,
# problem109.c:16:             sum -= w;
	lw	a5,-24(s0)		# tmp175, sum
	mv	a4,a5	# tmp174, tmp175
	lw	a5,-20(s0)		# tmp177, w
	subw	a5,a4,a5	# tmp173, tmp174, tmp176
	sw	a5,-24(s0)	# tmp173, sum
# problem109.c:17:             if (sum > 0) num += 1;
	lw	a5,-24(s0)		# tmp179, sum
	sext.w	a5,a5	# tmp180, tmp178
	ble	a5,zero,.L4	#, tmp180,,
# problem109.c:17:             if (sum > 0) num += 1;
	lw	a5,-32(s0)		# tmp183, num
	addiw	a5,a5,1	#, tmp181, tmp182
	sw	a5,-32(s0)	# tmp181, num
.L4:
# problem109.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp186, i
	addiw	a5,a5,1	#, tmp184, tmp185
	sw	a5,-28(s0)	# tmp184, i
.L2:
# problem109.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp188, i
	mv	a4,a5	# tmp187, tmp188
	lw	a5,-44(s0)		# tmp190, size
	sext.w	a4,a4	# tmp191, tmp187
	sext.w	a5,a5	# tmp192, tmp189
	blt	a4,a5,.L7	#, tmp191, tmp192,
# problem109.c:20:     return num;
	lw	a5,-32(s0)		# _18, num
# problem109.c:21: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"problem109.c"
	.align	3
.LC5:
	.string	"func0((int[]){}, 0) == 0"
	.align	3
.LC6:
	.string	"func0((int[]){-1, -2, 0}, 3) == 0"
	.align	3
.LC7:
	.string	"func0((int[]){1, 1, 2, -2, 3, 4, 5}, 7) == 6"
	.align	3
.LC8:
	.string	"func0((int[]){1, 6, 9, -6, 0, 1, 5}, 7) == 5"
	.align	3
.LC9:
	.string	"func0((int[]){1, 100, 98, -7, 1, -1}, 6) == 4"
	.align	3
.LC10:
	.string	"func0((int[]){12, 23, 34, -45, -56, 0}, 6) == 5"
	.align	3
.LC11:
	.string	"func0((int[]){-0, 1}, 2) == 1"
	.align	3
.LC12:
	.string	"func0((int[]){1}, 1) == 1"
	.align	3
.LC0:
	.word	1
	.word	1
	.word	2
	.word	-2
	.word	3
	.word	4
	.word	5
	.align	3
.LC1:
	.word	1
	.word	6
	.word	9
	.word	-6
	.word	0
	.word	1
	.word	5
	.align	3
.LC2:
	.word	1
	.word	100
	.word	98
	.word	-7
	.word	1
	.word	-1
	.align	3
.LC3:
	.word	12
	.word	23
	.word	34
	.word	-45
	.word	-56
	.word	0
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
# problem109.c:27: int main() {
	la	a5,__stack_chk_guard		# tmp144,
	ld	a4, 0(a5)	# tmp198, __stack_chk_guard
	sd	a4, -24(s0)	# tmp198, D.3324
	li	a4, 0	# tmp198
# problem109.c:28:     assert(func0((int[]){}, 0) == 0);
	addi	a5,s0,-56	#, tmp145,
	li	a1,0		#,
	mv	a0,a5	#, tmp145
	call	func0		#
	mv	a5,a0	# tmp146,
# problem109.c:28:     assert(func0((int[]){}, 0) == 0);
	beq	a5,zero,.L10	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC4	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L10:
# problem109.c:29:     assert(func0((int[]){-1, -2, 0}, 3) == 0);
	li	a5,-1		# tmp147,
	sw	a5,-56(s0)	# tmp147, MEM[(int[3] *)_54][0]
	li	a5,-2		# tmp148,
	sw	a5,-52(s0)	# tmp148, MEM[(int[3] *)_54][1]
	sw	zero,-48(s0)	#, MEM[(int[3] *)_54][2]
	addi	a5,s0,-56	#, tmp149,
	li	a1,3		#,
	mv	a0,a5	#, tmp149
	call	func0		#
	mv	a5,a0	# tmp150,
# problem109.c:29:     assert(func0((int[]){-1, -2, 0}, 3) == 0);
	beq	a5,zero,.L11	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC4	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L11:
# problem109.c:30:     assert(func0((int[]){1, 1, 2, -2, 3, 4, 5}, 7) == 6);
	lla	a5,.LC0	# tmp151,
	ld	a2,0(a5)		# tmp152,
	ld	a3,8(a5)		# tmp153,
	ld	a4,16(a5)		# tmp154,
	sd	a2,-56(s0)	# tmp152, MEM[(int[7] *)_54]
	sd	a3,-48(s0)	# tmp153, MEM[(int[7] *)_54]
	sd	a4,-40(s0)	# tmp154, MEM[(int[7] *)_54]
	lw	a5,24(a5)		# tmp155,
	sw	a5,-32(s0)	# tmp155, MEM[(int[7] *)_54]
	addi	a5,s0,-56	#, tmp156,
	li	a1,7		#,
	mv	a0,a5	#, tmp156
	call	func0		#
	mv	a5,a0	# tmp157,
# problem109.c:30:     assert(func0((int[]){1, 1, 2, -2, 3, 4, 5}, 7) == 6);
	mv	a4,a5	# tmp158, _3
	li	a5,6		# tmp159,
	beq	a4,a5,.L12	#, tmp158, tmp159,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC4	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L12:
# problem109.c:31:     assert(func0((int[]){1, 6, 9, -6, 0, 1, 5}, 7) == 5);
	lla	a5,.LC1	# tmp160,
	ld	a2,0(a5)		# tmp161,
	ld	a3,8(a5)		# tmp162,
	ld	a4,16(a5)		# tmp163,
	sd	a2,-56(s0)	# tmp161, MEM[(int[7] *)_54]
	sd	a3,-48(s0)	# tmp162, MEM[(int[7] *)_54]
	sd	a4,-40(s0)	# tmp163, MEM[(int[7] *)_54]
	lw	a5,24(a5)		# tmp164,
	sw	a5,-32(s0)	# tmp164, MEM[(int[7] *)_54]
	addi	a5,s0,-56	#, tmp165,
	li	a1,7		#,
	mv	a0,a5	#, tmp165
	call	func0		#
	mv	a5,a0	# tmp166,
# problem109.c:31:     assert(func0((int[]){1, 6, 9, -6, 0, 1, 5}, 7) == 5);
	mv	a4,a5	# tmp167, _4
	li	a5,5		# tmp168,
	beq	a4,a5,.L13	#, tmp167, tmp168,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC4	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L13:
# problem109.c:32:     assert(func0((int[]){1, 100, 98, -7, 1, -1}, 6) == 4);
	lla	a5,.LC2	# tmp169,
	ld	a4,0(a5)		# tmp170,
	sd	a4,-56(s0)	# tmp170, MEM[(int[6] *)_54]
	ld	a4,8(a5)		# tmp171,
	sd	a4,-48(s0)	# tmp171, MEM[(int[6] *)_54]
	ld	a5,16(a5)		# tmp172,
	sd	a5,-40(s0)	# tmp172, MEM[(int[6] *)_54]
	addi	a5,s0,-56	#, tmp173,
	li	a1,6		#,
	mv	a0,a5	#, tmp173
	call	func0		#
	mv	a5,a0	# tmp174,
# problem109.c:32:     assert(func0((int[]){1, 100, 98, -7, 1, -1}, 6) == 4);
	mv	a4,a5	# tmp175, _5
	li	a5,4		# tmp176,
	beq	a4,a5,.L14	#, tmp175, tmp176,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC4	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L14:
# problem109.c:33:     assert(func0((int[]){12, 23, 34, -45, -56, 0}, 6) == 5);
	lla	a5,.LC3	# tmp177,
	ld	a4,0(a5)		# tmp178,
	sd	a4,-56(s0)	# tmp178, MEM[(int[6] *)_54]
	ld	a4,8(a5)		# tmp179,
	sd	a4,-48(s0)	# tmp179, MEM[(int[6] *)_54]
	ld	a5,16(a5)		# tmp180,
	sd	a5,-40(s0)	# tmp180, MEM[(int[6] *)_54]
	addi	a5,s0,-56	#, tmp181,
	li	a1,6		#,
	mv	a0,a5	#, tmp181
	call	func0		#
	mv	a5,a0	# tmp182,
# problem109.c:33:     assert(func0((int[]){12, 23, 34, -45, -56, 0}, 6) == 5);
	mv	a4,a5	# tmp183, _6
	li	a5,5		# tmp184,
	beq	a4,a5,.L15	#, tmp183, tmp184,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC4	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L15:
# problem109.c:34:     assert(func0((int[]){-0, 1}, 2) == 1);
	sw	zero,-56(s0)	#, MEM[(int[2] *)_54][0]
	li	a5,1		# tmp185,
	sw	a5,-52(s0)	# tmp185, MEM[(int[2] *)_54][1]
	addi	a5,s0,-56	#, tmp186,
	li	a1,2		#,
	mv	a0,a5	#, tmp186
	call	func0		#
	mv	a5,a0	# tmp187,
# problem109.c:34:     assert(func0((int[]){-0, 1}, 2) == 1);
	mv	a4,a5	# tmp188, _7
	li	a5,1		# tmp189,
	beq	a4,a5,.L16	#, tmp188, tmp189,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC4	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L16:
# problem109.c:35:     assert(func0((int[]){1}, 1) == 1);
	li	a5,1		# tmp190,
	sw	a5,-56(s0)	# tmp190, MEM[(int[1] *)_54][0]
	addi	a5,s0,-56	#, tmp191,
	li	a1,1		#,
	mv	a0,a5	#, tmp191
	call	func0		#
	mv	a5,a0	# tmp192,
# problem109.c:35:     assert(func0((int[]){1}, 1) == 1);
	mv	a4,a5	# tmp193, _8
	li	a5,1		# tmp194,
	beq	a4,a5,.L17	#, tmp193, tmp194,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC4	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L17:
# problem109.c:37:     return 0;
	li	a5,0		# _44,
# problem109.c:38: }
	mv	a4,a5	# <retval>, _44
	la	a5,__stack_chk_guard		# tmp196,
	ld	a3, -24(s0)	# tmp199, D.3324
	ld	a5, 0(a5)	# tmp197, __stack_chk_guard
	xor	a5, a3, a5	# tmp197, tmp199
	li	a3, 0	# tmp199
	beq	a5,zero,.L19	#, tmp197,,
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
