	.file	"problem10.c"
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
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# numbers, numbers
	mv	a5,a1	# tmp86, size
	sw	a5,-44(s0)	# tmp87, size
# problem10.c:5:     if (size <= 0) {
	lw	a5,-44(s0)		# tmp89, size
	sext.w	a5,a5	# tmp90, tmp88
	bgt	a5,zero,.L2	#, tmp90,,
# problem10.c:6:         return NULL;
	li	a5,0		# _16,
	j	.L3		#
.L2:
# problem10.c:9:     int *out = malloc(size * sizeof(int));
	lw	a5,-44(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp91,
	sd	a5,-24(s0)	# tmp91, out
# problem10.c:10:     if (!out) {
	ld	a5,-24(s0)		# tmp92, out
	bne	a5,zero,.L4	#, tmp92,,
# problem10.c:11:         return NULL;
	li	a5,0		# _16,
	j	.L3		#
.L4:
# problem10.c:14:     int max = numbers[0];
	ld	a5,-40(s0)		# tmp93, numbers
	lw	a5,0(a5)		# tmp94, *numbers_23(D)
	sw	a5,-32(s0)	# tmp94, max
# problem10.c:15:     for (int i = 0; i < size; i++) {
	sw	zero,-28(s0)	#, i
# problem10.c:15:     for (int i = 0; i < size; i++) {
	j	.L5		#
.L7:
# problem10.c:16:         if (numbers[i] > max) max = numbers[i];
	lw	a5,-28(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
	ld	a4,-40(s0)		# tmp95, numbers
	add	a5,a4,a5	# _4, _5, tmp95
	lw	a4,0(a5)		# _6, *_5
# problem10.c:16:         if (numbers[i] > max) max = numbers[i];
	lw	a5,-32(s0)		# tmp97, max
	sext.w	a5,a5	# tmp98, tmp96
	bge	a5,a4,.L6	#, tmp98, tmp99,
# problem10.c:16:         if (numbers[i] > max) max = numbers[i];
	lw	a5,-28(s0)		# _7, i
	slli	a5,a5,2	#, _8, _7
	ld	a4,-40(s0)		# tmp100, numbers
	add	a5,a4,a5	# _8, _9, tmp100
# problem10.c:16:         if (numbers[i] > max) max = numbers[i];
	lw	a5,0(a5)		# tmp101, *_9
	sw	a5,-32(s0)	# tmp101, max
.L6:
# problem10.c:17:         out[i] = max;
	lw	a5,-28(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a4,-24(s0)		# tmp102, out
	add	a5,a4,a5	# _11, _12, tmp102
# problem10.c:17:         out[i] = max;
	lw	a4,-32(s0)		# tmp103, max
	sw	a4,0(a5)	# tmp103, *_12
# problem10.c:15:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp106, i
	addiw	a5,a5,1	#, tmp104, tmp105
	sw	a5,-28(s0)	# tmp104, i
.L5:
# problem10.c:15:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp108, i
	mv	a4,a5	# tmp107, tmp108
	lw	a5,-44(s0)		# tmp110, size
	sext.w	a4,a4	# tmp111, tmp107
	sext.w	a5,a5	# tmp112, tmp109
	blt	a4,a5,.L7	#, tmp111, tmp112,
# problem10.c:19:     return out;
	ld	a5,-24(s0)		# _16, out
.L3:
# problem10.c:20: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
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
# problem10.c:29:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem10.c:29:     for (int i = 0; i < size; i++) {
	j	.L9		#
.L12:
# problem10.c:30:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp84, a
	add	a5,a4,a5	# _2, _3, tmp84
	lw	a3,0(a5)		# _4, *_3
# problem10.c:30:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp85, b
	add	a5,a4,a5	# _6, _7, tmp85
	lw	a5,0(a5)		# _8, *_7
# problem10.c:30:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp86, _4
	beq	a4,a5,.L10	#, tmp86, tmp87,
# problem10.c:30:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L11		#
.L10:
# problem10.c:29:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp90, i
	addiw	a5,a5,1	#, tmp88, tmp89
	sw	a5,-20(s0)	# tmp88, i
.L9:
# problem10.c:29:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp92, i
	mv	a4,a5	# tmp91, tmp92
	lw	a5,-52(s0)		# tmp94, size
	sext.w	a4,a4	# tmp95, tmp91
	sext.w	a5,a5	# tmp96, tmp93
	blt	a4,a5,.L12	#, tmp95, tmp96,
# problem10.c:32:     return 1;
	li	a5,1		# _10,
.L11:
# problem10.c:33: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC5:
	.string	"problem10.c"
	.align	3
.LC6:
	.string	"result == NULL"
	.align	3
.LC7:
	.string	"issame(result, (int[]){1, 2, 3, 4}, 4)"
	.align	3
.LC8:
	.string	"issame(result, (int[]){4, 4, 4, 4}, 4)"
	.align	3
.LC9:
	.string	"issame(result, (int[]){3, 3, 3, 100, 100}, 5)"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.align	3
.LC1:
	.word	4
	.word	3
	.word	2
	.word	1
	.align	3
.LC2:
	.word	4
	.word	4
	.word	4
	.word	4
	.align	3
.LC3:
	.word	3
	.word	2
	.word	3
	.word	100
	.word	3
	.align	3
.LC4:
	.word	3
	.word	3
	.word	3
	.word	100
	.word	100
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-128	#,,
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	addi	s0,sp,128	#,,
# problem10.c:35: int main() {
	la	a5,__stack_chk_guard		# tmp77,
	ld	a4, 0(a5)	# tmp112, __stack_chk_guard
	sd	a4, -24(s0)	# tmp112, D.2495
	li	a4, 0	# tmp112
# problem10.c:39:     result = func0((int[]){}, 0);
	addi	a5,s0,-112	#, tmp78,
	li	a1,0		#,
	mv	a0,a5	#, tmp78
	call	func0		#
	sd	a0,-120(s0)	#, result
# problem10.c:40:     assert(result == NULL);
	ld	a5,-120(s0)		# tmp79, result
	beq	a5,zero,.L14	#, tmp79,,
# problem10.c:40:     assert(result == NULL);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC5	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L14:
# problem10.c:41:     free(result);
	ld	a0,-120(s0)		#, result
	call	free@plt	#
# problem10.c:44:     int test1[] = {1, 2, 3, 4};
	lla	a5,.LC0	# tmp80,
	ld	a4,0(a5)		# tmp81,
	sd	a4,-104(s0)	# tmp81, test1
	ld	a5,8(a5)		# tmp82,
	sd	a5,-96(s0)	# tmp82, test1
# problem10.c:45:     result = func0(test1, 4);
	addi	a5,s0,-104	#, tmp83,
	li	a1,4		#,
	mv	a0,a5	#, tmp83
	call	func0		#
	sd	a0,-120(s0)	#, result
# problem10.c:46:     assert(issame(result, (int[]){1, 2, 3, 4}, 4));
	lla	a5,.LC0	# tmp84,
	ld	a4,0(a5)		# tmp85,
	sd	a4,-48(s0)	# tmp85, MEM[(int[4] *)_43]
	ld	a5,8(a5)		# tmp86,
	sd	a5,-40(s0)	# tmp86, MEM[(int[4] *)_43]
	addi	a5,s0,-48	#, tmp87,
	li	a2,4		#,
	mv	a1,a5	#, tmp87
	ld	a0,-120(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp88,
	bne	a5,zero,.L15	#, _1,,
# problem10.c:46:     assert(issame(result, (int[]){1, 2, 3, 4}, 4));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,46		#,
	lla	a1,.LC5	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L15:
# problem10.c:47:     free(result);
	ld	a0,-120(s0)		#, result
	call	free@plt	#
# problem10.c:50:     int test2[] = {4, 3, 2, 1};
	lla	a5,.LC1	# tmp89,
	ld	a4,0(a5)		# tmp90,
	sd	a4,-88(s0)	# tmp90, test2
	ld	a5,8(a5)		# tmp91,
	sd	a5,-80(s0)	# tmp91, test2
# problem10.c:51:     result = func0(test2, 4);
	addi	a5,s0,-88	#, tmp92,
	li	a1,4		#,
	mv	a0,a5	#, tmp92
	call	func0		#
	sd	a0,-120(s0)	#, result
# problem10.c:52:     assert(issame(result, (int[]){4, 4, 4, 4}, 4));
	lla	a5,.LC2	# tmp93,
	ld	a4,0(a5)		# tmp94,
	sd	a4,-48(s0)	# tmp94, MEM[(int[4] *)_43]
	ld	a5,8(a5)		# tmp95,
	sd	a5,-40(s0)	# tmp95, MEM[(int[4] *)_43]
	addi	a5,s0,-48	#, tmp96,
	li	a2,4		#,
	mv	a1,a5	#, tmp96
	ld	a0,-120(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp97,
	bne	a5,zero,.L16	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,52		#,
	lla	a1,.LC5	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L16:
# problem10.c:53:     free(result);
	ld	a0,-120(s0)		#, result
	call	free@plt	#
# problem10.c:56:     int test3[] = {3, 2, 3, 100, 3};
	lla	a5,.LC3	# tmp98,
	ld	a4,0(a5)		# tmp99,
	sd	a4,-72(s0)	# tmp99, test3
	ld	a4,8(a5)		# tmp100,
	sd	a4,-64(s0)	# tmp100, test3
	lw	a5,16(a5)		# tmp101,
	sw	a5,-56(s0)	# tmp101, test3
# problem10.c:57:     result = func0(test3, 5);
	addi	a5,s0,-72	#, tmp102,
	li	a1,5		#,
	mv	a0,a5	#, tmp102
	call	func0		#
	sd	a0,-120(s0)	#, result
# problem10.c:58:     assert(issame(result, (int[]){3, 3, 3, 100, 100}, 5));
	lla	a5,.LC4	# tmp103,
	ld	a4,0(a5)		# tmp104,
	sd	a4,-48(s0)	# tmp104, MEM[(int[5] *)_43]
	ld	a4,8(a5)		# tmp105,
	sd	a4,-40(s0)	# tmp105, MEM[(int[5] *)_43]
	lw	a5,16(a5)		# tmp106,
	sw	a5,-32(s0)	# tmp106, MEM[(int[5] *)_43]
	addi	a5,s0,-48	#, tmp107,
	li	a2,5		#,
	mv	a1,a5	#, tmp107
	ld	a0,-120(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp108,
	bne	a5,zero,.L17	#, _3,,
# problem10.c:58:     assert(issame(result, (int[]){3, 3, 3, 100, 100}, 5));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,58		#,
	lla	a1,.LC5	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L17:
# problem10.c:59:     free(result);
	ld	a0,-120(s0)		#, result
	call	free@plt	#
# problem10.c:61:     return 0;
	li	a5,0		# _34,
# problem10.c:62: }
	mv	a4,a5	# <retval>, _34
	la	a5,__stack_chk_guard		# tmp110,
	ld	a3, -24(s0)	# tmp113, D.2495
	ld	a5, 0(a5)	# tmp111, __stack_chk_guard
	xor	a5, a3, a5	# tmp111, tmp113
	li	a3, 0	# tmp113
	beq	a5,zero,.L19	#, tmp111,,
# problem10.c:62: }
	call	__stack_chk_fail@plt	#
.L19:
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
