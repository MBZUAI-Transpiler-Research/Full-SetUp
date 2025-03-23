	.file	"problem164.c"
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
	mv	a5,a0	# tmp79, a
	mv	a4,a1	# tmp81, b
	sd	a2,-48(s0)	# out, out
	sd	a3,-56(s0)	# size, size
	sw	a5,-36(s0)	# tmp80, a
	mv	a5,a4	# tmp82, tmp81
	sw	a5,-40(s0)	# tmp82, b
# problem164.c:5:     *size = 0;
	ld	a5,-56(s0)		# tmp83, size
	sw	zero,0(a5)	#, *size_15(D)
# problem164.c:7:     if (b < a) {
	lw	a5,-40(s0)		# tmp85, b
	mv	a4,a5	# tmp84, tmp85
	lw	a5,-36(s0)		# tmp87, a
	sext.w	a4,a4	# tmp88, tmp84
	sext.w	a5,a5	# tmp89, tmp86
	bge	a4,a5,.L2	#, tmp88, tmp89,
# problem164.c:8:         m = a;
	lw	a5,-36(s0)		# tmp90, a
	sw	a5,-20(s0)	# tmp90, m
# problem164.c:9:         a = b;
	lw	a5,-40(s0)		# tmp91, b
	sw	a5,-36(s0)	# tmp91, a
# problem164.c:10:         b = m;
	lw	a5,-20(s0)		# tmp92, m
	sw	a5,-40(s0)	# tmp92, b
.L2:
# problem164.c:13:     for (int i = a; i <= b; i++) {
	lw	a5,-36(s0)		# tmp93, a
	sw	a5,-24(s0)	# tmp93, i
# problem164.c:13:     for (int i = a; i <= b; i++) {
	j	.L3		#
.L5:
# problem164.c:14:         if (i < 10 && i % 2 == 0) {
	lw	a5,-24(s0)		# tmp95, i
	sext.w	a4,a5	# tmp96, tmp94
	li	a5,9		# tmp97,
	bgt	a4,a5,.L4	#, tmp96, tmp97,
# problem164.c:14:         if (i < 10 && i % 2 == 0) {
	lw	a5,-24(s0)		# i.0_1, i
	andi	a5,a5,1	#, tmp99, tmp98
	sext.w	a5,a5	# _2, tmp99
# problem164.c:14:         if (i < 10 && i % 2 == 0) {
	bne	a5,zero,.L4	#, _2,,
# problem164.c:15:             out[(*size)++] = i;
	ld	a5,-56(s0)		# tmp100, size
	lw	a5,0(a5)		# _3, *size_15(D)
# problem164.c:15:             out[(*size)++] = i;
	addiw	a4,a5,1	#, tmp101, _3
	sext.w	a3,a4	# _5, tmp101
	ld	a4,-56(s0)		# tmp102, size
	sw	a3,0(a4)	# _5, *size_15(D)
# problem164.c:15:             out[(*size)++] = i;
	slli	a5,a5,2	#, _7, _6
	ld	a4,-48(s0)		# tmp103, out
	add	a5,a4,a5	# _7, _8, tmp103
# problem164.c:15:             out[(*size)++] = i;
	lw	a4,-24(s0)		# tmp104, i
	sw	a4,0(a5)	# tmp104, *_8
.L4:
# problem164.c:13:     for (int i = a; i <= b; i++) {
	lw	a5,-24(s0)		# tmp107, i
	addiw	a5,a5,1	#, tmp105, tmp106
	sw	a5,-24(s0)	# tmp105, i
.L3:
# problem164.c:13:     for (int i = a; i <= b; i++) {
	lw	a5,-24(s0)		# tmp109, i
	mv	a4,a5	# tmp108, tmp109
	lw	a5,-40(s0)		# tmp111, b
	sext.w	a4,a4	# tmp112, tmp108
	sext.w	a5,a5	# tmp113, tmp110
	ble	a4,a5,.L5	#, tmp112, tmp113,
# problem164.c:18: }
	nop	
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
	mv	a5,a1	# tmp82, a_size
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp84, b_size
	sw	a5,-44(s0)	# tmp83, a_size
	mv	a5,a4	# tmp85, tmp84
	sw	a5,-48(s0)	# tmp85, b_size
# problem164.c:25:     if (a_size != b_size) return 0;
	lw	a5,-44(s0)		# tmp87, a_size
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-48(s0)		# tmp89, b_size
	sext.w	a4,a4	# tmp90, tmp86
	sext.w	a5,a5	# tmp91, tmp88
	beq	a4,a5,.L7	#, tmp90, tmp91,
# problem164.c:25:     if (a_size != b_size) return 0;
	li	a5,0		# _10,
	j	.L8		#
.L7:
# problem164.c:26:     for (int i = 0; i < a_size; i++) {
	sw	zero,-20(s0)	#, i
# problem164.c:26:     for (int i = 0; i < a_size; i++) {
	j	.L9		#
.L11:
# problem164.c:27:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp92, a
	add	a5,a4,a5	# _2, _3, tmp92
	lw	a3,0(a5)		# _4, *_3
# problem164.c:27:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp93, b
	add	a5,a4,a5	# _6, _7, tmp93
	lw	a5,0(a5)		# _8, *_7
# problem164.c:27:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp94, _4
	beq	a4,a5,.L10	#, tmp94, tmp95,
# problem164.c:27:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L8		#
.L10:
# problem164.c:26:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L9:
# problem164.c:26:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-44(s0)		# tmp102, a_size
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L11	#, tmp103, tmp104,
# problem164.c:29:     return 1;
	li	a5,1		# _10,
.L8:
# problem164.c:30: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC1:
	.string	"problem164.c"
	.align	3
.LC2:
	.string	"issame(result, size, expected1, 4)"
	.align	3
.LC3:
	.string	"issame(result, size, expected2, 4)"
	.align	3
.LC4:
	.string	"issame(result, size, expected3, 4)"
	.align	3
.LC5:
	.string	"issame(result, size, expected4, 0)"
	.align	3
.LC6:
	.string	"All tests passed."
	.align	3
.LC0:
	.word	2
	.word	4
	.word	6
	.word	8
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-128	#,,
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	addi	s0,sp,128	#,,
# problem164.c:32: int main() {
	la	a5,__stack_chk_guard		# tmp82,
	ld	a4, 0(a5)	# tmp115, __stack_chk_guard
	sd	a4, -24(s0)	# tmp115, D.1974
	li	a4, 0	# tmp115
# problem164.c:35:     int expected1[] = {2, 4, 6, 8};
	lla	a5,.LC0	# tmp83,
	ld	a4,0(a5)		# tmp84,
	sd	a4,-112(s0)	# tmp84, expected1
	ld	a5,8(a5)		# tmp85,
	sd	a5,-104(s0)	# tmp85, expected1
# problem164.c:36:     func0(2, 10, result, &size);
	addi	a4,s0,-124	#, tmp86,
	addi	a5,s0,-64	#, tmp87,
	mv	a3,a4	#, tmp86
	mv	a2,a5	#, tmp87
	li	a1,10		#,
	li	a0,2		#,
	call	func0		#
# problem164.c:37:     assert(issame(result, size, expected1, 4));
	lw	a4,-124(s0)		# size.1_1, size
	addi	a2,s0,-112	#, tmp88,
	addi	a5,s0,-64	#, tmp89,
	li	a3,4		#,
	mv	a1,a4	#, size.1_1
	mv	a0,a5	#, tmp89
	call	issame		#
	mv	a5,a0	# tmp90,
	bne	a5,zero,.L13	#, _2,,
# problem164.c:37:     assert(issame(result, size, expected1, 4));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L13:
# problem164.c:39:     int expected2[] = {2, 4, 6, 8};
	lla	a5,.LC0	# tmp91,
	ld	a4,0(a5)		# tmp92,
	sd	a4,-96(s0)	# tmp92, expected2
	ld	a5,8(a5)		# tmp93,
	sd	a5,-88(s0)	# tmp93, expected2
# problem164.c:40:     func0(10, 2, result, &size);
	addi	a4,s0,-124	#, tmp94,
	addi	a5,s0,-64	#, tmp95,
	mv	a3,a4	#, tmp94
	mv	a2,a5	#, tmp95
	li	a1,2		#,
	li	a0,10		#,
	call	func0		#
# problem164.c:41:     assert(issame(result, size, expected2, 4));
	lw	a4,-124(s0)		# size.2_3, size
	addi	a2,s0,-96	#, tmp96,
	addi	a5,s0,-64	#, tmp97,
	li	a3,4		#,
	mv	a1,a4	#, size.2_3
	mv	a0,a5	#, tmp97
	call	issame		#
	mv	a5,a0	# tmp98,
	bne	a5,zero,.L14	#, _4,,
# problem164.c:41:     assert(issame(result, size, expected2, 4));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC1	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L14:
# problem164.c:43:     int expected3[] = {2, 4, 6, 8};
	lla	a5,.LC0	# tmp99,
	ld	a4,0(a5)		# tmp100,
	sd	a4,-80(s0)	# tmp100, expected3
	ld	a5,8(a5)		# tmp101,
	sd	a5,-72(s0)	# tmp101, expected3
# problem164.c:44:     func0(132, 2, result, &size);
	addi	a4,s0,-124	#, tmp102,
	addi	a5,s0,-64	#, tmp103,
	mv	a3,a4	#, tmp102
	mv	a2,a5	#, tmp103
	li	a1,2		#,
	li	a0,132		#,
	call	func0		#
# problem164.c:45:     assert(issame(result, size, expected3, 4));
	lw	a4,-124(s0)		# size.3_5, size
	addi	a2,s0,-80	#, tmp104,
	addi	a5,s0,-64	#, tmp105,
	li	a3,4		#,
	mv	a1,a4	#, size.3_5
	mv	a0,a5	#, tmp105
	call	issame		#
	mv	a5,a0	# tmp106,
	bne	a5,zero,.L15	#, _6,,
# problem164.c:45:     assert(issame(result, size, expected3, 4));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L15:
# problem164.c:48:     func0(17, 89, result, &size);
	addi	a4,s0,-124	#, tmp107,
	addi	a5,s0,-64	#, tmp108,
	mv	a3,a4	#, tmp107
	mv	a2,a5	#, tmp108
	li	a1,89		#,
	li	a0,17		#,
	call	func0		#
# problem164.c:49:     assert(issame(result, size, expected4, 0));
	lw	a4,-124(s0)		# size.4_7, size
	addi	a2,s0,-120	#, tmp109,
	addi	a5,s0,-64	#, tmp110,
	li	a3,0		#,
	mv	a1,a4	#, size.4_7
	mv	a0,a5	#, tmp110
	call	issame		#
	mv	a5,a0	# tmp111,
	bne	a5,zero,.L16	#, _8,,
# problem164.c:49:     assert(issame(result, size, expected4, 0));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,49		#,
	lla	a1,.LC1	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L16:
# problem164.c:51:     printf("All tests passed.\n");
	lla	a0,.LC6	#,
	call	puts@plt	#
# problem164.c:53:     return 0;
	li	a5,0		# _27,
# problem164.c:54: }
	mv	a4,a5	# <retval>, _27
	la	a5,__stack_chk_guard		# tmp113,
	ld	a3, -24(s0)	# tmp116, D.1974
	ld	a5, 0(a5)	# tmp114, __stack_chk_guard
	xor	a5, a3, a5	# tmp114, tmp116
	li	a3, 0	# tmp116
	beq	a5,zero,.L18	#, tmp114,,
	call	__stack_chk_fail@plt	#
.L18:
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
