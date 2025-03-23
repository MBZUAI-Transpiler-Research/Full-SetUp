	.file	"problem9.c"
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
	addi	sp,sp,-64	#,,
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# numbers, numbers
	mv	a5,a1	# tmp81, size
	sd	a2,-56(s0)	# result, result
	sw	a5,-44(s0)	# tmp82, size
# problem9.c:4:     int sum = 0, product = 1;
	sw	zero,-28(s0)	#, sum
# problem9.c:4:     int sum = 0, product = 1;
	li	a5,1		# tmp83,
	sw	a5,-24(s0)	# tmp83, product
# problem9.c:5:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem9.c:5:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L3:
# problem9.c:6:         sum += numbers[i];
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp84, numbers
	add	a5,a4,a5	# _2, _3, tmp84
	lw	a5,0(a5)		# _4, *_3
# problem9.c:6:         sum += numbers[i];
	lw	a4,-28(s0)		# tmp87, sum
	addw	a5,a4,a5	# _4, tmp85, tmp86
	sw	a5,-28(s0)	# tmp85, sum
# problem9.c:7:         product *= numbers[i];
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp88, numbers
	add	a5,a4,a5	# _6, _7, tmp88
	lw	a5,0(a5)		# _8, *_7
# problem9.c:7:         product *= numbers[i];
	lw	a4,-24(s0)		# tmp91, product
	mulw	a5,a4,a5	# tmp89, tmp90, _8
	sw	a5,-24(s0)	# tmp89, product
# problem9.c:5:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp94, i
	addiw	a5,a5,1	#, tmp92, tmp93
	sw	a5,-20(s0)	# tmp92, i
.L2:
# problem9.c:5:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp96, i
	mv	a4,a5	# tmp95, tmp96
	lw	a5,-44(s0)		# tmp98, size
	sext.w	a4,a4	# tmp99, tmp95
	sext.w	a5,a5	# tmp100, tmp97
	blt	a4,a5,.L3	#, tmp99, tmp100,
# problem9.c:9:     result[0] = sum;
	ld	a5,-56(s0)		# tmp101, result
	lw	a4,-28(s0)		# tmp102, sum
	sw	a4,0(a5)	# tmp102, *result_18(D)
# problem9.c:10:     result[1] = product;
	ld	a5,-56(s0)		# tmp103, result
	addi	a5,a5,4	#, _9, tmp103
# problem9.c:10:     result[1] = product;
	lw	a4,-24(s0)		# tmp104, product
	sw	a4,0(a5)	# tmp104, *_9
# problem9.c:11: }
	nop	
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-64	#,,
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp82, size
	sw	a5,-52(s0)	# tmp83, size
# problem9.c:18:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem9.c:18:     for (int i = 0; i < size; i++) {
	j	.L5		#
.L8:
# problem9.c:19:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp84, a
	add	a5,a4,a5	# _2, _3, tmp84
	lw	a3,0(a5)		# _4, *_3
# problem9.c:19:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp85, b
	add	a5,a4,a5	# _6, _7, tmp85
	lw	a5,0(a5)		# _8, *_7
# problem9.c:19:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp86, _4
	beq	a4,a5,.L6	#, tmp86, tmp87,
# problem9.c:19:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L7		#
.L6:
# problem9.c:18:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp90, i
	addiw	a5,a5,1	#, tmp88, tmp89
	sw	a5,-20(s0)	# tmp88, i
.L5:
# problem9.c:18:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp92, i
	mv	a4,a5	# tmp91, tmp92
	lw	a5,-52(s0)		# tmp94, size
	sext.w	a4,a4	# tmp95, tmp91
	sext.w	a5,a5	# tmp96, tmp93
	blt	a4,a5,.L8	#, tmp95, tmp96,
# problem9.c:21:     return 1;
	li	a5,1		# _10,
.L7:
# problem9.c:22: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"problem9.c"
	.align	3
.LC1:
	.string	"issame(result, (const int[]){0, 1}, 2)"
	.align	3
.LC2:
	.string	"issame(result, (const int[]){3, 1}, 2)"
	.align	3
.LC3:
	.string	"issame(result, (const int[]){100, 0}, 2)"
	.align	3
.LC4:
	.string	"issame(result, (const int[]){3 + 5 + 7, 3 * 5 * 7}, 2)"
	.align	3
.LC5:
	.string	"issame(result, (const int[]){10, 10}, 2)"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-96	#,,
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	addi	s0,sp,96	#,,
# problem9.c:24: int main() {
	la	a5,__stack_chk_guard		# tmp79,
	ld	a4, 0(a5)	# tmp124, __stack_chk_guard
	sd	a4, -24(s0)	# tmp124, D.1976
	li	a4, 0	# tmp124
# problem9.c:28:     func0((int[]){}, 0, result);
	addi	a4,s0,-80	#, tmp80,
	addi	a5,s0,-96	#, tmp81,
	mv	a2,a4	#, tmp80
	li	a1,0		#,
	mv	a0,a5	#, tmp81
	call	func0		#
# problem9.c:29:     assert(issame(result, (const int[]){0, 1}, 2));
	sw	zero,-40(s0)	#, MEM[(int[2] *)_60][0]
	li	a5,1		# tmp82,
	sw	a5,-36(s0)	# tmp82, MEM[(int[2] *)_60][1]
	addi	a4,s0,-40	#, tmp83,
	addi	a5,s0,-80	#, tmp84,
	li	a2,2		#,
	mv	a1,a4	#, tmp83
	mv	a0,a5	#, tmp84
	call	issame		#
	mv	a5,a0	# tmp85,
	bne	a5,zero,.L10	#, _1,,
# problem9.c:29:     assert(issame(result, (const int[]){0, 1}, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L10:
# problem9.c:32:     func0((int[]){1, 1, 1}, 3, result);
	li	a5,1		# tmp86,
	sw	a5,-56(s0)	# tmp86, D.1937[0]
	li	a5,1		# tmp87,
	sw	a5,-52(s0)	# tmp87, D.1937[1]
	li	a5,1		# tmp88,
	sw	a5,-48(s0)	# tmp88, D.1937[2]
# problem9.c:32:     func0((int[]){1, 1, 1}, 3, result);
	addi	a4,s0,-80	#, tmp89,
	addi	a5,s0,-56	#, tmp90,
	mv	a2,a4	#, tmp89
	li	a1,3		#,
	mv	a0,a5	#, tmp90
	call	func0		#
# problem9.c:33:     assert(issame(result, (const int[]){3, 1}, 2));
	li	a5,3		# tmp91,
	sw	a5,-40(s0)	# tmp91, MEM[(int[2] *)_60][0]
	li	a5,1		# tmp92,
	sw	a5,-36(s0)	# tmp92, MEM[(int[2] *)_60][1]
	addi	a4,s0,-40	#, tmp93,
	addi	a5,s0,-80	#, tmp94,
	li	a2,2		#,
	mv	a1,a4	#, tmp93
	mv	a0,a5	#, tmp94
	call	issame		#
	mv	a5,a0	# tmp95,
	bne	a5,zero,.L11	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L11:
# problem9.c:36:     func0((int[]){100, 0}, 2, result);
	li	a5,100		# tmp96,
	sw	a5,-72(s0)	# tmp96, D.1940[0]
	sw	zero,-68(s0)	#, D.1940[1]
# problem9.c:36:     func0((int[]){100, 0}, 2, result);
	addi	a4,s0,-80	#, tmp97,
	addi	a5,s0,-72	#, tmp98,
	mv	a2,a4	#, tmp97
	li	a1,2		#,
	mv	a0,a5	#, tmp98
	call	func0		#
# problem9.c:37:     assert(issame(result, (const int[]){100, 0}, 2));
	li	a5,100		# tmp99,
	sw	a5,-40(s0)	# tmp99, MEM[(int[2] *)_60][0]
	sw	zero,-36(s0)	#, MEM[(int[2] *)_60][1]
	addi	a4,s0,-40	#, tmp100,
	addi	a5,s0,-80	#, tmp101,
	li	a2,2		#,
	mv	a1,a4	#, tmp100
	mv	a0,a5	#, tmp101
	call	issame		#
	mv	a5,a0	# tmp102,
	bne	a5,zero,.L12	#, _3,,
# problem9.c:37:     assert(issame(result, (const int[]){100, 0}, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L12:
# problem9.c:40:     func0((int[]){3, 5, 7}, 3, result);
	li	a5,3		# tmp103,
	sw	a5,-40(s0)	# tmp103, MEM[(int[3] *)_60][0]
	li	a5,5		# tmp104,
	sw	a5,-36(s0)	# tmp104, MEM[(int[3] *)_60][1]
	li	a5,7		# tmp105,
	sw	a5,-32(s0)	# tmp105, MEM[(int[3] *)_60][2]
# problem9.c:40:     func0((int[]){3, 5, 7}, 3, result);
	addi	a4,s0,-80	#, tmp106,
	addi	a5,s0,-40	#, tmp107,
	mv	a2,a4	#, tmp106
	li	a1,3		#,
	mv	a0,a5	#, tmp107
	call	func0		#
# problem9.c:41:     assert(issame(result, (const int[]){3 + 5 + 7, 3 * 5 * 7}, 2));
	li	a5,15		# tmp108,
	sw	a5,-64(s0)	# tmp108, MEM[(int[2] *)_61][0]
	li	a5,105		# tmp109,
	sw	a5,-60(s0)	# tmp109, MEM[(int[2] *)_61][1]
	addi	a4,s0,-64	#, tmp110,
	addi	a5,s0,-80	#, tmp111,
	li	a2,2		#,
	mv	a1,a4	#, tmp110
	mv	a0,a5	#, tmp111
	call	issame		#
	mv	a5,a0	# tmp112,
	bne	a5,zero,.L13	#, _4,,
# problem9.c:41:     assert(issame(result, (const int[]){3 + 5 + 7, 3 * 5 * 7}, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L13:
# problem9.c:44:     func0((int[]){10}, 1, result);
	li	a5,10		# tmp113,
	sw	a5,-88(s0)	# tmp113, D.1946[0]
# problem9.c:44:     func0((int[]){10}, 1, result);
	addi	a4,s0,-80	#, tmp114,
	addi	a5,s0,-88	#, tmp115,
	mv	a2,a4	#, tmp114
	li	a1,1		#,
	mv	a0,a5	#, tmp115
	call	func0		#
# problem9.c:45:     assert(issame(result, (const int[]){10, 10}, 2));
	li	a5,10		# tmp116,
	sw	a5,-64(s0)	# tmp116, MEM[(int[2] *)_61][0]
	li	a5,10		# tmp117,
	sw	a5,-60(s0)	# tmp117, MEM[(int[2] *)_61][1]
	addi	a4,s0,-64	#, tmp118,
	addi	a5,s0,-80	#, tmp119,
	li	a2,2		#,
	mv	a1,a4	#, tmp118
	mv	a0,a5	#, tmp119
	call	issame		#
	mv	a5,a0	# tmp120,
	bne	a5,zero,.L14	#, _5,,
# problem9.c:45:     assert(issame(result, (const int[]){10, 10}, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L14:
# problem9.c:47:     return 0;
	li	a5,0		# _47,
# problem9.c:48: }
	mv	a4,a5	# <retval>, _47
	la	a5,__stack_chk_guard		# tmp122,
	ld	a3, -24(s0)	# tmp125, D.1976
	ld	a5, 0(a5)	# tmp123, __stack_chk_guard
	xor	a5, a3, a5	# tmp123, tmp125
	li	a3, 0	# tmp125
	beq	a5,zero,.L16	#, tmp123,,
# problem9.c:48: }
	call	__stack_chk_fail@plt	#
.L16:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	ld	s0,80(sp)		#,
	addi	sp,sp,96	#,,
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
