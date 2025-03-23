	.file	"problem74.c"
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
	sd	a0,-40(s0)	# arr, arr
	mv	a5,a1	# tmp85, size
	sw	a5,-44(s0)	# tmp86, size
# problem74.c:4:     int out = 0;
	sw	zero,-24(s0)	#, out
# problem74.c:5:     for (int i = 0; i < size / 2; i++) {
	sw	zero,-20(s0)	#, i
# problem74.c:5:     for (int i = 0; i < size / 2; i++) {
	j	.L2		#
.L4:
# problem74.c:6:         if (arr[i] != arr[size - 1 - i]) {
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp87, arr
	add	a5,a4,a5	# _2, _3, tmp87
	lw	a3,0(a5)		# _4, *_3
# problem74.c:6:         if (arr[i] != arr[size - 1 - i]) {
	lw	a5,-44(s0)		# tmp90, size
	addiw	a5,a5,-1	#, tmp88, tmp89
	sext.w	a5,a5	# _5, tmp88
# problem74.c:6:         if (arr[i] != arr[size - 1 - i]) {
	lw	a4,-20(s0)		# tmp93, i
	subw	a5,a5,a4	# tmp91, _5, tmp92
	sext.w	a5,a5	# _6, tmp91
# problem74.c:6:         if (arr[i] != arr[size - 1 - i]) {
	slli	a5,a5,2	#, _8, _7
	ld	a4,-40(s0)		# tmp94, arr
	add	a5,a4,a5	# _8, _9, tmp94
	lw	a5,0(a5)		# _10, *_9
# problem74.c:6:         if (arr[i] != arr[size - 1 - i]) {
	mv	a4,a3	# tmp95, _4
	beq	a4,a5,.L3	#, tmp95, tmp96,
# problem74.c:7:             out++;
	lw	a5,-24(s0)		# tmp99, out
	addiw	a5,a5,1	#, tmp97, tmp98
	sw	a5,-24(s0)	# tmp97, out
.L3:
# problem74.c:5:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-20(s0)		# tmp102, i
	addiw	a5,a5,1	#, tmp100, tmp101
	sw	a5,-20(s0)	# tmp100, i
.L2:
# problem74.c:5:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-44(s0)		# tmp105, size
	srliw	a4,a5,31	#, tmp106, tmp104
	addw	a5,a4,a5	# tmp104, tmp107, tmp106
	sraiw	a5,a5,1	#, tmp108, tmp107
	sext.w	a4,a5	# _11, tmp108
# problem74.c:5:     for (int i = 0; i < size / 2; i++) {
	lw	a5,-20(s0)		# tmp110, i
	sext.w	a5,a5	# tmp111, tmp109
	blt	a5,a4,.L4	#, tmp111, tmp112,
# problem74.c:10:     return out;
	lw	a5,-24(s0)		# _18, out
# problem74.c:11: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"problem74.c"
	.align	3
.LC6:
	.string	"func0(test1, 8) == 4"
	.align	3
.LC7:
	.string	"func0(test2, 7) == 1"
	.align	3
.LC8:
	.string	"func0(test3, 3) == 1"
	.align	3
.LC9:
	.string	"func0(test4, 4) == 1"
	.align	3
.LC10:
	.string	"func0(test5, 5) == 0"
	.align	3
.LC11:
	.string	"func0(test6, 4) == 0"
	.align	3
.LC12:
	.string	"func0(test7, 1) == 0"
	.align	3
.LC13:
	.string	"func0(test8, 2) == 1"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	5
	.word	4
	.word	7
	.word	9
	.word	6
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	3
	.word	2
	.word	2
	.align	3
.LC2:
	.word	1
	.word	4
	.word	4
	.word	2
	.align	3
.LC3:
	.word	1
	.word	2
	.word	3
	.word	2
	.word	1
	.align	3
.LC4:
	.word	3
	.word	1
	.word	1
	.word	3
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-176	#,,
	sd	ra,168(sp)	#,
	sd	s0,160(sp)	#,
	addi	s0,sp,176	#,,
# problem74.c:18: int main() {
	la	a5,__stack_chk_guard		# tmp82,
	ld	a4, 0(a5)	# tmp137, __stack_chk_guard
	sd	a4, -24(s0)	# tmp137, D.1966
	li	a4, 0	# tmp137
# problem74.c:19:     int test1[] = {1, 2, 3, 5, 4, 7, 9, 6};
	lla	a5,.LC0	# tmp83,
	ld	a2,0(a5)		# tmp84,
	ld	a3,8(a5)		# tmp85,
	ld	a4,16(a5)		# tmp86,
	ld	a5,24(a5)		# tmp87,
	sd	a2,-56(s0)	# tmp84, test1
	sd	a3,-48(s0)	# tmp85, test1
	sd	a4,-40(s0)	# tmp86, test1
	sd	a5,-32(s0)	# tmp87, test1
# problem74.c:20:     assert(func0(test1, 8) == 4);
	addi	a5,s0,-56	#, tmp88,
	li	a1,8		#,
	mv	a0,a5	#, tmp88
	call	func0		#
	mv	a5,a0	# tmp89,
	mv	a4,a5	# tmp90, _1
	li	a5,4		# tmp91,
	beq	a4,a5,.L7	#, tmp90, tmp91,
# problem74.c:20:     assert(func0(test1, 8) == 4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC5	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L7:
# problem74.c:22:     int test2[] = {1, 2, 3, 4, 3, 2, 2};
	lla	a5,.LC1	# tmp92,
	ld	a2,0(a5)		# tmp93,
	ld	a3,8(a5)		# tmp94,
	ld	a4,16(a5)		# tmp95,
	sd	a2,-88(s0)	# tmp93, test2
	sd	a3,-80(s0)	# tmp94, test2
	sd	a4,-72(s0)	# tmp95, test2
	lw	a5,24(a5)		# tmp96,
	sw	a5,-64(s0)	# tmp96, test2
# problem74.c:23:     assert(func0(test2, 7) == 1);
	addi	a5,s0,-88	#, tmp97,
	li	a1,7		#,
	mv	a0,a5	#, tmp97
	call	func0		#
	mv	a5,a0	# tmp98,
	mv	a4,a5	# tmp99, _2
	li	a5,1		# tmp100,
	beq	a4,a5,.L8	#, tmp99, tmp100,
# problem74.c:23:     assert(func0(test2, 7) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC5	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L8:
# problem74.c:25:     int test3[] = {1, 4, 2};
	li	a5,1		# tmp101,
	sw	a5,-160(s0)	# tmp101, test3[0]
	li	a5,4		# tmp102,
	sw	a5,-156(s0)	# tmp102, test3[1]
	li	a5,2		# tmp103,
	sw	a5,-152(s0)	# tmp103, test3[2]
# problem74.c:26:     assert(func0(test3, 3) == 1);
	addi	a5,s0,-160	#, tmp104,
	li	a1,3		#,
	mv	a0,a5	#, tmp104
	call	func0		#
	mv	a5,a0	# tmp105,
	mv	a4,a5	# tmp106, _3
	li	a5,1		# tmp107,
	beq	a4,a5,.L9	#, tmp106, tmp107,
# problem74.c:26:     assert(func0(test3, 3) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC5	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L9:
# problem74.c:28:     int test4[] = {1, 4, 4, 2};
	lla	a5,.LC2	# tmp108,
	ld	a4,0(a5)		# tmp109,
	sd	a4,-144(s0)	# tmp109, test4
	ld	a5,8(a5)		# tmp110,
	sd	a5,-136(s0)	# tmp110, test4
# problem74.c:29:     assert(func0(test4, 4) == 1);
	addi	a5,s0,-144	#, tmp111,
	li	a1,4		#,
	mv	a0,a5	#, tmp111
	call	func0		#
	mv	a5,a0	# tmp112,
	mv	a4,a5	# tmp113, _4
	li	a5,1		# tmp114,
	beq	a4,a5,.L10	#, tmp113, tmp114,
# problem74.c:29:     assert(func0(test4, 4) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC5	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L10:
# problem74.c:31:     int test5[] = {1, 2, 3, 2, 1};
	lla	a5,.LC3	# tmp115,
	ld	a4,0(a5)		# tmp116,
	sd	a4,-112(s0)	# tmp116, test5
	ld	a4,8(a5)		# tmp117,
	sd	a4,-104(s0)	# tmp117, test5
	lw	a5,16(a5)		# tmp118,
	sw	a5,-96(s0)	# tmp118, test5
# problem74.c:32:     assert(func0(test5, 5) == 0);
	addi	a5,s0,-112	#, tmp119,
	li	a1,5		#,
	mv	a0,a5	#, tmp119
	call	func0		#
	mv	a5,a0	# tmp120,
	beq	a5,zero,.L11	#, _5,,
# problem74.c:32:     assert(func0(test5, 5) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC5	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L11:
# problem74.c:34:     int test6[] = {3, 1, 1, 3};
	lla	a5,.LC4	# tmp121,
	ld	a4,0(a5)		# tmp122,
	sd	a4,-128(s0)	# tmp122, test6
	ld	a5,8(a5)		# tmp123,
	sd	a5,-120(s0)	# tmp123, test6
# problem74.c:35:     assert(func0(test6, 4) == 0);
	addi	a5,s0,-128	#, tmp124,
	li	a1,4		#,
	mv	a0,a5	#, tmp124
	call	func0		#
	mv	a5,a0	# tmp125,
	beq	a5,zero,.L12	#, _6,,
# problem74.c:35:     assert(func0(test6, 4) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC5	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L12:
# problem74.c:37:     int test7[] = {1};
	li	a5,1		# tmp126,
	sw	a5,-176(s0)	# tmp126, test7[0]
# problem74.c:38:     assert(func0(test7, 1) == 0);
	addi	a5,s0,-176	#, tmp127,
	li	a1,1		#,
	mv	a0,a5	#, tmp127
	call	func0		#
	mv	a5,a0	# tmp128,
	beq	a5,zero,.L13	#, _7,,
# problem74.c:38:     assert(func0(test7, 1) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC5	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L13:
# problem74.c:40:     int test8[] = {0, 1};
	sw	zero,-168(s0)	#, test8[0]
	li	a5,1		# tmp129,
	sw	a5,-164(s0)	# tmp129, test8[1]
# problem74.c:41:     assert(func0(test8, 2) == 1);
	addi	a5,s0,-168	#, tmp130,
	li	a1,2		#,
	mv	a0,a5	#, tmp130
	call	func0		#
	mv	a5,a0	# tmp131,
	mv	a4,a5	# tmp132, _8
	li	a5,1		# tmp133,
	beq	a4,a5,.L14	#, tmp132, tmp133,
# problem74.c:41:     assert(func0(test8, 2) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC5	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L14:
# problem74.c:43:     return 0;
	li	a5,0		# _37,
# problem74.c:44: }
	mv	a4,a5	# <retval>, _37
	la	a5,__stack_chk_guard		# tmp135,
	ld	a3, -24(s0)	# tmp138, D.1966
	ld	a5, 0(a5)	# tmp136, __stack_chk_guard
	xor	a5, a3, a5	# tmp136, tmp138
	li	a3, 0	# tmp138
	beq	a5,zero,.L16	#, tmp136,,
	call	__stack_chk_fail@plt	#
.L16:
	mv	a0,a4	#, <retval>
	ld	ra,168(sp)		#,
	ld	s0,160(sp)		#,
	addi	sp,sp,176	#,,
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
