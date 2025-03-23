	.file	"problem107.c"
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
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	mv	a5,a0	# tmp86, n
	sw	a5,-52(s0)	# tmp87, n
# problem107.c:5:     int* out = (int*)malloc(n * sizeof(int));
	lw	a5,-52(s0)		# _1, n
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp88,
	sd	a5,-24(s0)	# tmp88, out
# problem107.c:6:     int sum = 0, prod = 1;
	sw	zero,-36(s0)	#, sum
# problem107.c:6:     int sum = 0, prod = 1;
	li	a5,1		# tmp89,
	sw	a5,-32(s0)	# tmp89, prod
# problem107.c:7:     for (int i = 1; i <= n; i++) {
	li	a5,1		# tmp90,
	sw	a5,-28(s0)	# tmp90, i
# problem107.c:7:     for (int i = 1; i <= n; i++) {
	j	.L2		#
.L5:
# problem107.c:8:         sum += i;
	lw	a5,-36(s0)		# tmp93, sum
	mv	a4,a5	# tmp92, tmp93
	lw	a5,-28(s0)		# tmp95, i
	addw	a5,a4,a5	# tmp94, tmp91, tmp92
	sw	a5,-36(s0)	# tmp91, sum
# problem107.c:9:         prod *= i;
	lw	a5,-32(s0)		# tmp98, prod
	mv	a4,a5	# tmp97, tmp98
	lw	a5,-28(s0)		# tmp100, i
	mulw	a5,a4,a5	# tmp96, tmp97, tmp99
	sw	a5,-32(s0)	# tmp96, prod
# problem107.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	lw	a5,-28(s0)		# i.0_3, i
	andi	a5,a5,1	#, tmp102, tmp101
	sext.w	a5,a5	# _4, tmp102
# problem107.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	bne	a5,zero,.L3	#, _4,,
# problem107.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	lw	a5,-28(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	addi	a5,a5,-4	#, _7, _6
	ld	a4,-24(s0)		# tmp103, out
	add	a5,a4,a5	# _7, _8, tmp103
# problem107.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	lw	a4,-32(s0)		# tmp104, prod
	sw	a4,0(a5)	# tmp104, *_8
	j	.L4		#
.L3:
# problem107.c:11:         else out[i - 1] = sum;
	lw	a5,-28(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	addi	a5,a5,-4	#, _11, _10
	ld	a4,-24(s0)		# tmp105, out
	add	a5,a4,a5	# _11, _12, tmp105
# problem107.c:11:         else out[i - 1] = sum;
	lw	a4,-36(s0)		# tmp106, sum
	sw	a4,0(a5)	# tmp106, *_12
.L4:
# problem107.c:7:     for (int i = 1; i <= n; i++) {
	lw	a5,-28(s0)		# tmp109, i
	addiw	a5,a5,1	#, tmp107, tmp108
	sw	a5,-28(s0)	# tmp107, i
.L2:
# problem107.c:7:     for (int i = 1; i <= n; i++) {
	lw	a5,-28(s0)		# tmp111, i
	mv	a4,a5	# tmp110, tmp111
	lw	a5,-52(s0)		# tmp113, n
	sext.w	a4,a4	# tmp114, tmp110
	sext.w	a5,a5	# tmp115, tmp112
	ble	a4,a5,.L5	#, tmp114, tmp115,
# problem107.c:13:     return out;
	ld	a5,-24(s0)		# _25, out
# problem107.c:14: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
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
# problem107.c:23:     if (a_size != b_size) return 0;
	lw	a5,-44(s0)		# tmp87, a_size
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-48(s0)		# tmp89, b_size
	sext.w	a4,a4	# tmp90, tmp86
	sext.w	a5,a5	# tmp91, tmp88
	beq	a4,a5,.L8	#, tmp90, tmp91,
# problem107.c:23:     if (a_size != b_size) return 0;
	li	a5,0		# _10,
	j	.L9		#
.L8:
# problem107.c:24:     for (int i = 0; i < a_size; i++) {
	sw	zero,-20(s0)	#, i
# problem107.c:24:     for (int i = 0; i < a_size; i++) {
	j	.L10		#
.L12:
# problem107.c:25:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp92, a
	add	a5,a4,a5	# _2, _3, tmp92
	lw	a3,0(a5)		# _4, *_3
# problem107.c:25:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp93, b
	add	a5,a4,a5	# _6, _7, tmp93
	lw	a5,0(a5)		# _8, *_7
# problem107.c:25:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp94, _4
	beq	a4,a5,.L11	#, tmp94, tmp95,
# problem107.c:25:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L9		#
.L11:
# problem107.c:24:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L10:
# problem107.c:24:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-44(s0)		# tmp102, a_size
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L12	#, tmp103, tmp104,
# problem107.c:27:     return 1;
	li	a5,1		# _10,
.L9:
# problem107.c:28: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC2:
	.string	"problem107.c"
	.align	3
.LC3:
	.string	"issame(result, 5, expected1, 5)"
	.align	3
.LC4:
	.string	"issame(result, 7, expected2, 7)"
	.align	3
.LC5:
	.string	"issame(result, 1, expected3, 1)"
	.align	3
.LC6:
	.string	"issame(result, 3, expected4, 3)"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	6
	.word	24
	.word	15
	.align	3
.LC1:
	.word	1
	.word	2
	.word	6
	.word	24
	.word	15
	.word	720
	.word	28
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-112	#,,
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	addi	s0,sp,112	#,,
# problem107.c:30: int main() {
	la	a5,__stack_chk_guard		# tmp78,
	ld	a4, 0(a5)	# tmp103, __stack_chk_guard
	sd	a4, -24(s0)	# tmp103, D.2483
	li	a4, 0	# tmp103
# problem107.c:32:     int expected1[] = {1, 2, 6, 24, 15};
	lla	a5,.LC0	# tmp79,
	ld	a4,0(a5)		# tmp80,
	sd	a4,-80(s0)	# tmp80, expected1
	ld	a4,8(a5)		# tmp81,
	sd	a4,-72(s0)	# tmp81, expected1
	lw	a5,16(a5)		# tmp82,
	sw	a5,-64(s0)	# tmp82, expected1
# problem107.c:33:     result = func0(5);
	li	a0,5		#,
	call	func0		#
	sd	a0,-112(s0)	#, result
# problem107.c:34:     assert(issame(result, 5, expected1, 5));
	addi	a5,s0,-80	#, tmp83,
	li	a3,5		#,
	mv	a2,a5	#, tmp83
	li	a1,5		#,
	ld	a0,-112(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp84,
	bne	a5,zero,.L14	#, _1,,
# problem107.c:34:     assert(issame(result, 5, expected1, 5));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L14:
# problem107.c:35:     free(result);
	ld	a0,-112(s0)		#, result
	call	free@plt	#
# problem107.c:37:     int expected2[] = {1, 2, 6, 24, 15, 720, 28};
	lla	a5,.LC1	# tmp85,
	ld	a2,0(a5)		# tmp86,
	ld	a3,8(a5)		# tmp87,
	ld	a4,16(a5)		# tmp88,
	sd	a2,-56(s0)	# tmp86, expected2
	sd	a3,-48(s0)	# tmp87, expected2
	sd	a4,-40(s0)	# tmp88, expected2
	lw	a5,24(a5)		# tmp89,
	sw	a5,-32(s0)	# tmp89, expected2
# problem107.c:38:     result = func0(7);
	li	a0,7		#,
	call	func0		#
	sd	a0,-112(s0)	#, result
# problem107.c:39:     assert(issame(result, 7, expected2, 7));
	addi	a5,s0,-56	#, tmp90,
	li	a3,7		#,
	mv	a2,a5	#, tmp90
	li	a1,7		#,
	ld	a0,-112(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp91,
	bne	a5,zero,.L15	#, _2,,
# problem107.c:39:     assert(issame(result, 7, expected2, 7));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC2	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L15:
# problem107.c:40:     free(result);
	ld	a0,-112(s0)		#, result
	call	free@plt	#
# problem107.c:42:     int expected3[] = {1};
	li	a5,1		# tmp92,
	sw	a5,-104(s0)	# tmp92, expected3[0]
# problem107.c:43:     result = func0(1);
	li	a0,1		#,
	call	func0		#
	sd	a0,-112(s0)	#, result
# problem107.c:44:     assert(issame(result, 1, expected3, 1));
	addi	a5,s0,-104	#, tmp93,
	li	a3,1		#,
	mv	a2,a5	#, tmp93
	li	a1,1		#,
	ld	a0,-112(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp94,
	bne	a5,zero,.L16	#, _3,,
# problem107.c:44:     assert(issame(result, 1, expected3, 1));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,44		#,
	lla	a1,.LC2	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L16:
# problem107.c:45:     free(result);
	ld	a0,-112(s0)		#, result
	call	free@plt	#
# problem107.c:47:     int expected4[] = {1, 2, 6};
	li	a5,1		# tmp95,
	sw	a5,-96(s0)	# tmp95, expected4[0]
	li	a5,2		# tmp96,
	sw	a5,-92(s0)	# tmp96, expected4[1]
	li	a5,6		# tmp97,
	sw	a5,-88(s0)	# tmp97, expected4[2]
# problem107.c:48:     result = func0(3);
	li	a0,3		#,
	call	func0		#
	sd	a0,-112(s0)	#, result
# problem107.c:49:     assert(issame(result, 3, expected4, 3));
	addi	a5,s0,-96	#, tmp98,
	li	a3,3		#,
	mv	a2,a5	#, tmp98
	li	a1,3		#,
	ld	a0,-112(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp99,
	bne	a5,zero,.L17	#, _4,,
# problem107.c:49:     assert(issame(result, 3, expected4, 3));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,49		#,
	lla	a1,.LC2	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L17:
# problem107.c:50:     free(result);
	ld	a0,-112(s0)		#, result
	call	free@plt	#
# problem107.c:52:     return 0;
	li	a5,0		# _32,
# problem107.c:53: }
	mv	a4,a5	# <retval>, _32
	la	a5,__stack_chk_guard		# tmp101,
	ld	a3, -24(s0)	# tmp104, D.2483
	ld	a5, 0(a5)	# tmp102, __stack_chk_guard
	xor	a5, a3, a5	# tmp102, tmp104
	li	a3, 0	# tmp104
	beq	a5,zero,.L19	#, tmp102,,
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,104(sp)		#,
	ld	s0,96(sp)		#,
	addi	sp,sp,112	#,,
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
