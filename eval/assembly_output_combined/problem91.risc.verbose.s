	.file	"problem91.c"
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
	sd	a0,-40(s0)	# lst, lst
	mv	a5,a1	# tmp92, size
	sw	a5,-44(s0)	# tmp93, size
# problem91.c:5:     if (size < 2) return -1;
	lw	a5,-44(s0)		# tmp95, size
	sext.w	a4,a5	# tmp96, tmp94
	li	a5,1		# tmp97,
	bgt	a4,a5,.L2	#, tmp96, tmp97,
# problem91.c:5:     if (size < 2) return -1;
	li	a5,-1		# _24,
	j	.L3		#
.L2:
# problem91.c:7:     int first = INT_MAX, second = INT_MAX;
	li	a5,-2147483648		# tmp99,
	xori	a5,a5,-1	#, tmp98, tmp99
	sw	a5,-28(s0)	# tmp98, first
# problem91.c:7:     int first = INT_MAX, second = INT_MAX;
	li	a5,-2147483648		# tmp101,
	xori	a5,a5,-1	#, tmp100, tmp101
	sw	a5,-24(s0)	# tmp100, second
# problem91.c:8:     for (int i = 0; i < size; ++i) {
	sw	zero,-20(s0)	#, i
# problem91.c:8:     for (int i = 0; i < size; ++i) {
	j	.L4		#
.L7:
# problem91.c:9:         if (lst[i] < first) {
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp102, lst
	add	a5,a4,a5	# _2, _3, tmp102
	lw	a4,0(a5)		# _4, *_3
# problem91.c:9:         if (lst[i] < first) {
	lw	a5,-28(s0)		# tmp104, first
	sext.w	a5,a5	# tmp105, tmp103
	ble	a5,a4,.L5	#, tmp105, tmp106,
# problem91.c:10:             second = first;
	lw	a5,-28(s0)		# tmp107, first
	sw	a5,-24(s0)	# tmp107, second
# problem91.c:11:             first = lst[i];
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp108, lst
	add	a5,a4,a5	# _6, _7, tmp108
# problem91.c:11:             first = lst[i];
	lw	a5,0(a5)		# tmp109, *_7
	sw	a5,-28(s0)	# tmp109, first
	j	.L6		#
.L5:
# problem91.c:12:         } else if (lst[i] < second && lst[i] != first) {
	lw	a5,-20(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a4,-40(s0)		# tmp110, lst
	add	a5,a4,a5	# _9, _10, tmp110
	lw	a4,0(a5)		# _11, *_10
# problem91.c:12:         } else if (lst[i] < second && lst[i] != first) {
	lw	a5,-24(s0)		# tmp112, second
	sext.w	a5,a5	# tmp113, tmp111
	ble	a5,a4,.L6	#, tmp113, tmp114,
# problem91.c:12:         } else if (lst[i] < second && lst[i] != first) {
	lw	a5,-20(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-40(s0)		# tmp115, lst
	add	a5,a4,a5	# _13, _14, tmp115
	lw	a4,0(a5)		# _15, *_14
# problem91.c:12:         } else if (lst[i] < second && lst[i] != first) {
	lw	a5,-28(s0)		# tmp117, first
	sext.w	a5,a5	# tmp118, tmp116
	beq	a5,a4,.L6	#, tmp118, tmp119,
# problem91.c:13:             second = lst[i];
	lw	a5,-20(s0)		# _16, i
	slli	a5,a5,2	#, _17, _16
	ld	a4,-40(s0)		# tmp120, lst
	add	a5,a4,a5	# _17, _18, tmp120
# problem91.c:13:             second = lst[i];
	lw	a5,0(a5)		# tmp121, *_18
	sw	a5,-24(s0)	# tmp121, second
.L6:
# problem91.c:8:     for (int i = 0; i < size; ++i) {
	lw	a5,-20(s0)		# tmp124, i
	addiw	a5,a5,1	#, tmp122, tmp123
	sw	a5,-20(s0)	# tmp122, i
.L4:
# problem91.c:8:     for (int i = 0; i < size; ++i) {
	lw	a5,-20(s0)		# tmp126, i
	mv	a4,a5	# tmp125, tmp126
	lw	a5,-44(s0)		# tmp128, size
	sext.w	a4,a4	# tmp129, tmp125
	sext.w	a5,a5	# tmp130, tmp127
	blt	a4,a5,.L7	#, tmp129, tmp130,
# problem91.c:17:     if (second == INT_MAX) return -1;
	lw	a5,-24(s0)		# tmp132, second
	sext.w	a4,a5	# tmp133, tmp131
	li	a5,-2147483648		# tmp135,
	xori	a5,a5,-1	#, tmp134, tmp135
	bne	a4,a5,.L8	#, tmp133, tmp134,
# problem91.c:17:     if (second == INT_MAX) return -1;
	li	a5,-1		# _24,
	j	.L3		#
.L8:
# problem91.c:18:     return second;
	lw	a5,-24(s0)		# _24, second
.L3:
# problem91.c:19: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"problem91.c"
	.align	3
.LC5:
	.string	"func0(test1, 5) == 2"
	.align	3
.LC6:
	.string	"func0(test2, 5) == 2"
	.align	3
.LC7:
	.string	"func0((int[]){}, 0) == -1"
	.align	3
.LC8:
	.string	"func0(test4, 2) == -1"
	.align	3
.LC9:
	.string	"func0(test5, 5) == 1"
	.align	3
.LC10:
	.string	"func0(test6, 4) == -35"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.align	3
.LC1:
	.word	5
	.word	1
	.word	4
	.word	3
	.word	2
	.align	3
.LC2:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	0
	.align	3
.LC3:
	.word	-35
	.word	34
	.word	12
	.word	-45
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-128	#,,
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	addi	s0,sp,128	#,,
# problem91.c:25: int main() {
	la	a5,__stack_chk_guard		# tmp80,
	ld	a4, 0(a5)	# tmp125, __stack_chk_guard
	sd	a4, -24(s0)	# tmp125, D.1969
	li	a4, 0	# tmp125
# problem91.c:26:     int test1[] = {1, 2, 3, 4, 5};
	lla	a5,.LC0	# tmp81,
	ld	a4,0(a5)		# tmp82,
	sd	a4,-96(s0)	# tmp82, test1
	ld	a4,8(a5)		# tmp83,
	sd	a4,-88(s0)	# tmp83, test1
	lw	a5,16(a5)		# tmp84,
	sw	a5,-80(s0)	# tmp84, test1
# problem91.c:27:     assert(func0(test1, 5) == 2);
	addi	a5,s0,-96	#, tmp85,
	li	a1,5		#,
	mv	a0,a5	#, tmp85
	call	func0		#
	mv	a5,a0	# tmp86,
	mv	a4,a5	# tmp87, _1
	li	a5,2		# tmp88,
	beq	a4,a5,.L10	#, tmp87, tmp88,
# problem91.c:27:     assert(func0(test1, 5) == 2);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC4	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L10:
# problem91.c:29:     int test2[] = {5, 1, 4, 3, 2};
	lla	a5,.LC1	# tmp89,
	ld	a4,0(a5)		# tmp90,
	sd	a4,-72(s0)	# tmp90, test2
	ld	a4,8(a5)		# tmp91,
	sd	a4,-64(s0)	# tmp91, test2
	lw	a5,16(a5)		# tmp92,
	sw	a5,-56(s0)	# tmp92, test2
# problem91.c:30:     assert(func0(test2, 5) == 2);
	addi	a5,s0,-72	#, tmp93,
	li	a1,5		#,
	mv	a0,a5	#, tmp93
	call	func0		#
	mv	a5,a0	# tmp94,
	mv	a4,a5	# tmp95, _2
	li	a5,2		# tmp96,
	beq	a4,a5,.L11	#, tmp95, tmp96,
# problem91.c:30:     assert(func0(test2, 5) == 2);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC4	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L11:
# problem91.c:32:     assert(func0((int[]){}, 0) == -1);
	addi	a5,s0,-48	#, tmp97,
	li	a1,0		#,
	mv	a0,a5	#, tmp97
	call	func0		#
	mv	a5,a0	# tmp98,
	mv	a4,a5	# tmp99, _3
	li	a5,-1		# tmp100,
	beq	a4,a5,.L12	#, tmp99, tmp100,
# problem91.c:32:     assert(func0((int[]){}, 0) == -1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC4	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L12:
# problem91.c:34:     int test4[] = {1, 1};
	li	a5,1		# tmp101,
	sw	a5,-120(s0)	# tmp101, test4[0]
	li	a5,1		# tmp102,
	sw	a5,-116(s0)	# tmp102, test4[1]
# problem91.c:35:     assert(func0(test4, 2) == -1);
	addi	a5,s0,-120	#, tmp103,
	li	a1,2		#,
	mv	a0,a5	#, tmp103
	call	func0		#
	mv	a5,a0	# tmp104,
	mv	a4,a5	# tmp105, _4
	li	a5,-1		# tmp106,
	beq	a4,a5,.L13	#, tmp105, tmp106,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC4	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L13:
# problem91.c:37:     int test5[] = {1, 1, 1, 1, 0};
	lla	a5,.LC2	# tmp107,
	ld	a4,0(a5)		# tmp108,
	sd	a4,-48(s0)	# tmp108, MEM[(int[5] *)_36]
	ld	a4,8(a5)		# tmp109,
	sd	a4,-40(s0)	# tmp109, MEM[(int[5] *)_36]
	lw	a5,16(a5)		# tmp110,
	sw	a5,-32(s0)	# tmp110, MEM[(int[5] *)_36]
# problem91.c:38:     assert(func0(test5, 5) == 1);
	addi	a5,s0,-48	#, tmp111,
	li	a1,5		#,
	mv	a0,a5	#, tmp111
	call	func0		#
	mv	a5,a0	# tmp112,
	mv	a4,a5	# tmp113, _5
	li	a5,1		# tmp114,
	beq	a4,a5,.L14	#, tmp113, tmp114,
# problem91.c:38:     assert(func0(test5, 5) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC4	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L14:
# problem91.c:40:     int test6[] = {-35, 34, 12, -45};
	lla	a5,.LC3	# tmp115,
	ld	a4,0(a5)		# tmp116,
	sd	a4,-112(s0)	# tmp116, test6
	ld	a5,8(a5)		# tmp117,
	sd	a5,-104(s0)	# tmp117, test6
# problem91.c:41:     assert(func0(test6, 4) == -35);
	addi	a5,s0,-112	#, tmp118,
	li	a1,4		#,
	mv	a0,a5	#, tmp118
	call	func0		#
	mv	a5,a0	# tmp119,
	mv	a4,a5	# tmp120, _6
	li	a5,-35		# tmp121,
	beq	a4,a5,.L15	#, tmp120, tmp121,
# problem91.c:41:     assert(func0(test6, 4) == -35);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC4	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L15:
# problem91.c:43:     return 0;
	li	a5,0		# _28,
# problem91.c:44: }
	mv	a4,a5	# <retval>, _28
	la	a5,__stack_chk_guard		# tmp123,
	ld	a3, -24(s0)	# tmp126, D.1969
	ld	a5, 0(a5)	# tmp124, __stack_chk_guard
	xor	a5, a3, a5	# tmp124, tmp126
	li	a3, 0	# tmp126
	beq	a5,zero,.L17	#, tmp124,,
	call	__stack_chk_fail@plt	#
.L17:
	mv	a0,a4	#, <retval>
	ld	ra,120(sp)		#,
	ld	s0,112(sp)		#,
	addi	sp,sp,128	#,,
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
