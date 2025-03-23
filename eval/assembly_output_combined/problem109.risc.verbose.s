	.file	"problem109.c"
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
	sd	a0,-40(s0)	# n, n
	mv	a5,a1	# tmp83, size
	sw	a5,-44(s0)	# tmp84, size
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
	ld	a4,-40(s0)		# tmp85, n
	add	a5,a4,a5	# _2, _3, tmp85
	lw	a5,0(a5)		# _4, *_3
# problem109.c:7:         if (n[i] > 0) {
	ble	a5,zero,.L3	#, tmp86,,
# problem109.c:8:             num += 1;
	lw	a5,-32(s0)		# tmp89, num
	addiw	a5,a5,1	#, tmp87, tmp88
	sw	a5,-32(s0)	# tmp87, num
	j	.L4		#
.L3:
# problem109.c:10:             int sum = 0;
	sw	zero,-24(s0)	#, sum
# problem109.c:11:             int w = abs(n[i]);
	lw	a5,-28(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp90, n
	add	a5,a4,a5	# _6, _7, tmp90
	lw	a4,0(a5)		# _8, *_7
# problem109.c:11:             int w = abs(n[i]);
	sraiw	a5,a4,31	#, tmp91, _8
	xor	a4,a4,a5	# tmp91, tmp92, _8
	subw	a5,a4,a5	# tmp93, tmp92, tmp91
	sw	a5,-20(s0)	# tmp93, w
# problem109.c:12:             while (w >= 10) {
	j	.L5		#
.L6:
# problem109.c:13:                 sum += w % 10;
	lw	a5,-20(s0)		# tmp96, w
	mv	a4,a5	# tmp95, tmp96
	li	a5,10		# tmp98,
	remw	a5,a4,a5	# tmp98, tmp97, tmp95
	sext.w	a5,a5	# _9, tmp97
# problem109.c:13:                 sum += w % 10;
	lw	a4,-24(s0)		# tmp101, sum
	addw	a5,a4,a5	# _9, tmp99, tmp100
	sw	a5,-24(s0)	# tmp99, sum
# problem109.c:14:                 w = w / 10;
	lw	a5,-20(s0)		# tmp104, w
	mv	a4,a5	# tmp103, tmp104
	li	a5,10		# tmp106,
	divw	a5,a4,a5	# tmp106, tmp105, tmp103
	sw	a5,-20(s0)	# tmp105, w
.L5:
# problem109.c:12:             while (w >= 10) {
	lw	a5,-20(s0)		# tmp108, w
	sext.w	a4,a5	# tmp109, tmp107
	li	a5,9		# tmp110,
	bgt	a4,a5,.L6	#, tmp109, tmp110,
# problem109.c:16:             sum -= w;
	lw	a5,-24(s0)		# tmp113, sum
	mv	a4,a5	# tmp112, tmp113
	lw	a5,-20(s0)		# tmp115, w
	subw	a5,a4,a5	# tmp111, tmp112, tmp114
	sw	a5,-24(s0)	# tmp111, sum
# problem109.c:17:             if (sum > 0) num += 1;
	lw	a5,-24(s0)		# tmp117, sum
	sext.w	a5,a5	# tmp118, tmp116
	ble	a5,zero,.L4	#, tmp118,,
# problem109.c:17:             if (sum > 0) num += 1;
	lw	a5,-32(s0)		# tmp121, num
	addiw	a5,a5,1	#, tmp119, tmp120
	sw	a5,-32(s0)	# tmp119, num
.L4:
# problem109.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp124, i
	addiw	a5,a5,1	#, tmp122, tmp123
	sw	a5,-28(s0)	# tmp122, i
.L2:
# problem109.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp126, i
	mv	a4,a5	# tmp125, tmp126
	lw	a5,-44(s0)		# tmp128, size
	sext.w	a4,a4	# tmp129, tmp125
	sext.w	a5,a5	# tmp130, tmp127
	blt	a4,a5,.L7	#, tmp129, tmp130,
# problem109.c:20:     return num;
	lw	a5,-32(s0)		# _18, num
# problem109.c:21: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
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
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
# problem109.c:27: int main() {
	la	a5,__stack_chk_guard		# tmp82,
	ld	a4, 0(a5)	# tmp136, __stack_chk_guard
	sd	a4, -24(s0)	# tmp136, D.2499
	li	a4, 0	# tmp136
# problem109.c:28:     assert(func0((int[]){}, 0) == 0);
	addi	a5,s0,-56	#, tmp83,
	li	a1,0		#,
	mv	a0,a5	#, tmp83
	call	func0		#
	mv	a5,a0	# tmp84,
	beq	a5,zero,.L10	#, _1,,
# problem109.c:28:     assert(func0((int[]){}, 0) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC4	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L10:
# problem109.c:29:     assert(func0((int[]){-1, -2, 0}, 3) == 0);
	li	a5,-1		# tmp85,
	sw	a5,-56(s0)	# tmp85, MEM[(int[3] *)_55][0]
	li	a5,-2		# tmp86,
	sw	a5,-52(s0)	# tmp86, MEM[(int[3] *)_55][1]
	sw	zero,-48(s0)	#, MEM[(int[3] *)_55][2]
	addi	a5,s0,-56	#, tmp87,
	li	a1,3		#,
	mv	a0,a5	#, tmp87
	call	func0		#
	mv	a5,a0	# tmp88,
	beq	a5,zero,.L11	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC4	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L11:
# problem109.c:30:     assert(func0((int[]){1, 1, 2, -2, 3, 4, 5}, 7) == 6);
	lla	a5,.LC0	# tmp89,
	ld	a2,0(a5)		# tmp90,
	ld	a3,8(a5)		# tmp91,
	ld	a4,16(a5)		# tmp92,
	sd	a2,-56(s0)	# tmp90, MEM[(int[7] *)_55]
	sd	a3,-48(s0)	# tmp91, MEM[(int[7] *)_55]
	sd	a4,-40(s0)	# tmp92, MEM[(int[7] *)_55]
	lw	a5,24(a5)		# tmp93,
	sw	a5,-32(s0)	# tmp93, MEM[(int[7] *)_55]
	addi	a5,s0,-56	#, tmp94,
	li	a1,7		#,
	mv	a0,a5	#, tmp94
	call	func0		#
	mv	a5,a0	# tmp95,
	mv	a4,a5	# tmp96, _3
	li	a5,6		# tmp97,
	beq	a4,a5,.L12	#, tmp96, tmp97,
# problem109.c:30:     assert(func0((int[]){1, 1, 2, -2, 3, 4, 5}, 7) == 6);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC4	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L12:
# problem109.c:31:     assert(func0((int[]){1, 6, 9, -6, 0, 1, 5}, 7) == 5);
	lla	a5,.LC1	# tmp98,
	ld	a2,0(a5)		# tmp99,
	ld	a3,8(a5)		# tmp100,
	ld	a4,16(a5)		# tmp101,
	sd	a2,-56(s0)	# tmp99, MEM[(int[7] *)_55]
	sd	a3,-48(s0)	# tmp100, MEM[(int[7] *)_55]
	sd	a4,-40(s0)	# tmp101, MEM[(int[7] *)_55]
	lw	a5,24(a5)		# tmp102,
	sw	a5,-32(s0)	# tmp102, MEM[(int[7] *)_55]
	addi	a5,s0,-56	#, tmp103,
	li	a1,7		#,
	mv	a0,a5	#, tmp103
	call	func0		#
	mv	a5,a0	# tmp104,
	mv	a4,a5	# tmp105, _4
	li	a5,5		# tmp106,
	beq	a4,a5,.L13	#, tmp105, tmp106,
# problem109.c:31:     assert(func0((int[]){1, 6, 9, -6, 0, 1, 5}, 7) == 5);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC4	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L13:
# problem109.c:32:     assert(func0((int[]){1, 100, 98, -7, 1, -1}, 6) == 4);
	lla	a5,.LC2	# tmp107,
	ld	a4,0(a5)		# tmp108,
	sd	a4,-56(s0)	# tmp108, MEM[(int[6] *)_55]
	ld	a4,8(a5)		# tmp109,
	sd	a4,-48(s0)	# tmp109, MEM[(int[6] *)_55]
	ld	a5,16(a5)		# tmp110,
	sd	a5,-40(s0)	# tmp110, MEM[(int[6] *)_55]
	addi	a5,s0,-56	#, tmp111,
	li	a1,6		#,
	mv	a0,a5	#, tmp111
	call	func0		#
	mv	a5,a0	# tmp112,
	mv	a4,a5	# tmp113, _5
	li	a5,4		# tmp114,
	beq	a4,a5,.L14	#, tmp113, tmp114,
# problem109.c:32:     assert(func0((int[]){1, 100, 98, -7, 1, -1}, 6) == 4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC4	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L14:
# problem109.c:33:     assert(func0((int[]){12, 23, 34, -45, -56, 0}, 6) == 5);
	lla	a5,.LC3	# tmp115,
	ld	a4,0(a5)		# tmp116,
	sd	a4,-56(s0)	# tmp116, MEM[(int[6] *)_55]
	ld	a4,8(a5)		# tmp117,
	sd	a4,-48(s0)	# tmp117, MEM[(int[6] *)_55]
	ld	a5,16(a5)		# tmp118,
	sd	a5,-40(s0)	# tmp118, MEM[(int[6] *)_55]
	addi	a5,s0,-56	#, tmp119,
	li	a1,6		#,
	mv	a0,a5	#, tmp119
	call	func0		#
	mv	a5,a0	# tmp120,
	mv	a4,a5	# tmp121, _6
	li	a5,5		# tmp122,
	beq	a4,a5,.L15	#, tmp121, tmp122,
# problem109.c:33:     assert(func0((int[]){12, 23, 34, -45, -56, 0}, 6) == 5);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC4	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L15:
# problem109.c:34:     assert(func0((int[]){-0, 1}, 2) == 1);
	sw	zero,-56(s0)	#, MEM[(int[2] *)_55][0]
	li	a5,1		# tmp123,
	sw	a5,-52(s0)	# tmp123, MEM[(int[2] *)_55][1]
	addi	a5,s0,-56	#, tmp124,
	li	a1,2		#,
	mv	a0,a5	#, tmp124
	call	func0		#
	mv	a5,a0	# tmp125,
	mv	a4,a5	# tmp126, _7
	li	a5,1		# tmp127,
	beq	a4,a5,.L16	#, tmp126, tmp127,
# problem109.c:34:     assert(func0((int[]){-0, 1}, 2) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC4	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L16:
# problem109.c:35:     assert(func0((int[]){1}, 1) == 1);
	li	a5,1		# tmp128,
	sw	a5,-56(s0)	# tmp128, MEM[(int[1] *)_55][0]
	addi	a5,s0,-56	#, tmp129,
	li	a1,1		#,
	mv	a0,a5	#, tmp129
	call	func0		#
	mv	a5,a0	# tmp130,
	mv	a4,a5	# tmp131, _8
	li	a5,1		# tmp132,
	beq	a4,a5,.L17	#, tmp131, tmp132,
# problem109.c:35:     assert(func0((int[]){1}, 1) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC4	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L17:
# problem109.c:37:     return 0;
	li	a5,0		# _45,
# problem109.c:38: }
	mv	a4,a5	# <retval>, _45
	la	a5,__stack_chk_guard		# tmp134,
	ld	a3, -24(s0)	# tmp137, D.2499
	ld	a5, 0(a5)	# tmp135, __stack_chk_guard
	xor	a5, a3, a5	# tmp135, tmp137
	li	a3, 0	# tmp137
	beq	a5,zero,.L19	#, tmp135,,
# problem109.c:38: }
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
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
