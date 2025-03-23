	.file	"problem108.c"
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
	mv	a5,a0	# tmp84, n
	sw	a5,-52(s0)	# tmp85, n
# problem108.c:5:     int* counts = (int*)malloc(2 * sizeof(int));
	li	a0,8		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp86,
	sd	a5,-24(s0)	# tmp86, counts
# problem108.c:6:     counts[0] = 0;
	ld	a5,-24(s0)		# tmp87, counts
	sw	zero,0(a5)	#, *counts_18
# problem108.c:7:     counts[1] = 0;
	ld	a5,-24(s0)		# tmp88, counts
	addi	a5,a5,4	#, _1, tmp88
# problem108.c:7:     counts[1] = 0;
	sw	zero,0(a5)	#, *_1
# problem108.c:9:     for (int i = 1; i <= n; i++) {
	li	a5,1		# tmp89,
	sw	a5,-40(s0)	# tmp89, i
# problem108.c:9:     for (int i = 1; i <= n; i++) {
	j	.L2		#
.L7:
# problem108.c:10:         int reversed = 0, original = i;
	sw	zero,-36(s0)	#, reversed
# problem108.c:10:         int reversed = 0, original = i;
	lw	a5,-40(s0)		# tmp90, i
	sw	a5,-28(s0)	# tmp90, original
# problem108.c:12:         int number = i;
	lw	a5,-40(s0)		# tmp91, i
	sw	a5,-32(s0)	# tmp91, number
# problem108.c:13:         while (number != 0) {
	j	.L3		#
.L4:
# problem108.c:14:             reversed = reversed * 10 + number % 10;
	lw	a5,-36(s0)		# tmp93, reversed
	mv	a4,a5	# tmp92, tmp93
	mv	a5,a4	# tmp94, tmp92
	slliw	a5,a5,2	#, tmp95, tmp94
	addw	a5,a5,a4	# tmp92, tmp94, tmp94
	slliw	a5,a5,1	#, tmp96, tmp94
	sext.w	a4,a5	# _2, tmp94
# problem108.c:14:             reversed = reversed * 10 + number % 10;
	lw	a5,-32(s0)		# tmp99, number
	mv	a3,a5	# tmp98, tmp99
	li	a5,10		# tmp101,
	remw	a5,a3,a5	# tmp101, tmp100, tmp98
	sext.w	a5,a5	# _3, tmp100
# problem108.c:14:             reversed = reversed * 10 + number % 10;
	addw	a5,a4,a5	# _3, tmp102, _2
	sw	a5,-36(s0)	# tmp102, reversed
# problem108.c:15:             number /= 10;
	lw	a5,-32(s0)		# tmp105, number
	mv	a4,a5	# tmp104, tmp105
	li	a5,10		# tmp107,
	divw	a5,a4,a5	# tmp107, tmp106, tmp104
	sw	a5,-32(s0)	# tmp106, number
.L3:
# problem108.c:13:         while (number != 0) {
	lw	a5,-32(s0)		# tmp109, number
	sext.w	a5,a5	# tmp110, tmp108
	bne	a5,zero,.L4	#, tmp110,,
# problem108.c:18:         if (original == reversed) {
	lw	a5,-28(s0)		# tmp112, original
	mv	a4,a5	# tmp111, tmp112
	lw	a5,-36(s0)		# tmp114, reversed
	sext.w	a4,a4	# tmp115, tmp111
	sext.w	a5,a5	# tmp116, tmp113
	bne	a4,a5,.L5	#, tmp115, tmp116,
# problem108.c:19:             if (original % 2 == 0) counts[0]++;
	lw	a5,-28(s0)		# original.0_4, original
	andi	a5,a5,1	#, tmp118, tmp117
	sext.w	a5,a5	# _5, tmp118
# problem108.c:19:             if (original % 2 == 0) counts[0]++;
	bne	a5,zero,.L6	#, _5,,
# problem108.c:19:             if (original % 2 == 0) counts[0]++;
	ld	a5,-24(s0)		# tmp119, counts
	lw	a5,0(a5)		# _6, *counts_18
# problem108.c:19:             if (original % 2 == 0) counts[0]++;
	addiw	a5,a5,1	#, tmp120, _6
	sext.w	a4,a5	# _7, tmp120
	ld	a5,-24(s0)		# tmp121, counts
	sw	a4,0(a5)	# _7, *counts_18
	j	.L5		#
.L6:
# problem108.c:20:             else counts[1]++;
	ld	a5,-24(s0)		# tmp122, counts
	addi	a5,a5,4	#, _8, tmp122
	lw	a4,0(a5)		# _9, *_8
# problem108.c:20:             else counts[1]++;
	addiw	a4,a4,1	#, tmp123, _9
	sext.w	a4,a4	# _10, tmp123
	sw	a4,0(a5)	# _10, *_8
.L5:
# problem108.c:9:     for (int i = 1; i <= n; i++) {
	lw	a5,-40(s0)		# tmp126, i
	addiw	a5,a5,1	#, tmp124, tmp125
	sw	a5,-40(s0)	# tmp124, i
.L2:
# problem108.c:9:     for (int i = 1; i <= n; i++) {
	lw	a5,-40(s0)		# tmp128, i
	mv	a4,a5	# tmp127, tmp128
	lw	a5,-52(s0)		# tmp130, n
	sext.w	a4,a4	# tmp131, tmp127
	sext.w	a5,a5	# tmp132, tmp129
	ble	a4,a5,.L7	#, tmp131, tmp132,
# problem108.c:24:     return counts;
	ld	a5,-24(s0)		# _23, counts
# problem108.c:25: }
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
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp82, size
	sw	a5,-52(s0)	# tmp83, size
# problem108.c:34:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem108.c:34:     for (int i = 0; i < size; i++) {
	j	.L10		#
.L13:
# problem108.c:35:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp84, a
	add	a5,a4,a5	# _2, _3, tmp84
	lw	a3,0(a5)		# _4, *_3
# problem108.c:35:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp85, b
	add	a5,a4,a5	# _6, _7, tmp85
	lw	a5,0(a5)		# _8, *_7
# problem108.c:35:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp86, _4
	beq	a4,a5,.L11	#, tmp86, tmp87,
# problem108.c:35:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L12		#
.L11:
# problem108.c:34:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp90, i
	addiw	a5,a5,1	#, tmp88, tmp89
	sw	a5,-20(s0)	# tmp88, i
.L10:
# problem108.c:34:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp92, i
	mv	a4,a5	# tmp91, tmp92
	lw	a5,-52(s0)		# tmp94, size
	sext.w	a4,a4	# tmp95, tmp91
	sext.w	a5,a5	# tmp96, tmp93
	blt	a4,a5,.L13	#, tmp95, tmp96,
# problem108.c:37:     return 1;
	li	a5,1		# _10,
.L12:
# problem108.c:38: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"problem108.c"
	.align	3
.LC1:
	.string	"issame(result, expected1, 2)"
	.align	3
.LC2:
	.string	"issame(result, expected2, 2)"
	.align	3
.LC3:
	.string	"issame(result, expected3, 2)"
	.align	3
.LC4:
	.string	"issame(result, expected4, 2)"
	.align	3
.LC5:
	.string	"issame(result, expected5, 2)"
	.align	3
.LC6:
	.string	"issame(result, expected6, 2)"
	.align	3
.LC7:
	.string	"issame(result, expected7, 2)"
	.align	3
.LC8:
	.string	"issame(result, expected8, 2)"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-96	#,,
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	addi	s0,sp,96	#,,
# problem108.c:40: int main() {
	la	a5,__stack_chk_guard		# tmp82,
	ld	a4, 0(a5)	# tmp117, __stack_chk_guard
	sd	a4, -24(s0)	# tmp117, D.2500
	li	a4, 0	# tmp117
# problem108.c:43:     result = func0(123);
	li	a0,123		#,
	call	func0		#
	sd	a0,-96(s0)	#, result
# problem108.c:44:     int expected1[] = {8, 13};
	li	a5,8		# tmp83,
	sw	a5,-88(s0)	# tmp83, expected1[0]
	li	a5,13		# tmp84,
	sw	a5,-84(s0)	# tmp84, expected1[1]
# problem108.c:45:     assert(issame(result, expected1, 2));
	addi	a5,s0,-88	#, tmp85,
	li	a2,2		#,
	mv	a1,a5	#, tmp85
	ld	a0,-96(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp86,
	bne	a5,zero,.L15	#, _1,,
# problem108.c:45:     assert(issame(result, expected1, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L15:
# problem108.c:46:     free(result);
	ld	a0,-96(s0)		#, result
	call	free@plt	#
# problem108.c:48:     result = func0(12);
	li	a0,12		#,
	call	func0		#
	sd	a0,-96(s0)	#, result
# problem108.c:49:     int expected2[] = {4, 6};
	li	a5,4		# tmp87,
	sw	a5,-80(s0)	# tmp87, expected2[0]
	li	a5,6		# tmp88,
	sw	a5,-76(s0)	# tmp88, expected2[1]
# problem108.c:50:     assert(issame(result, expected2, 2));
	addi	a5,s0,-80	#, tmp89,
	li	a2,2		#,
	mv	a1,a5	#, tmp89
	ld	a0,-96(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp90,
	bne	a5,zero,.L16	#, _2,,
# problem108.c:50:     assert(issame(result, expected2, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L16:
# problem108.c:51:     free(result);
	ld	a0,-96(s0)		#, result
	call	free@plt	#
# problem108.c:53:     result = func0(3);
	li	a0,3		#,
	call	func0		#
	sd	a0,-96(s0)	#, result
# problem108.c:54:     int expected3[] = {1, 2};
	li	a5,1		# tmp91,
	sw	a5,-72(s0)	# tmp91, expected3[0]
	li	a5,2		# tmp92,
	sw	a5,-68(s0)	# tmp92, expected3[1]
# problem108.c:55:     assert(issame(result, expected3, 2));
	addi	a5,s0,-72	#, tmp93,
	li	a2,2		#,
	mv	a1,a5	#, tmp93
	ld	a0,-96(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp94,
	bne	a5,zero,.L17	#, _3,,
# problem108.c:55:     assert(issame(result, expected3, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,55		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L17:
# problem108.c:56:     free(result);
	ld	a0,-96(s0)		#, result
	call	free@plt	#
# problem108.c:58:     result = func0(63);
	li	a0,63		#,
	call	func0		#
	sd	a0,-96(s0)	#, result
# problem108.c:59:     int expected4[] = {6, 8};
	li	a5,6		# tmp95,
	sw	a5,-64(s0)	# tmp95, expected4[0]
	li	a5,8		# tmp96,
	sw	a5,-60(s0)	# tmp96, expected4[1]
# problem108.c:60:     assert(issame(result, expected4, 2));
	addi	a5,s0,-64	#, tmp97,
	li	a2,2		#,
	mv	a1,a5	#, tmp97
	ld	a0,-96(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp98,
	bne	a5,zero,.L18	#, _4,,
# problem108.c:60:     assert(issame(result, expected4, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,60		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L18:
# problem108.c:61:     free(result);
	ld	a0,-96(s0)		#, result
	call	free@plt	#
# problem108.c:63:     result = func0(25);
	li	a0,25		#,
	call	func0		#
	sd	a0,-96(s0)	#, result
# problem108.c:64:     int expected5[] = {5, 6};
	li	a5,5		# tmp99,
	sw	a5,-56(s0)	# tmp99, expected5[0]
	li	a5,6		# tmp100,
	sw	a5,-52(s0)	# tmp100, expected5[1]
# problem108.c:65:     assert(issame(result, expected5, 2));
	addi	a5,s0,-56	#, tmp101,
	li	a2,2		#,
	mv	a1,a5	#, tmp101
	ld	a0,-96(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp102,
	bne	a5,zero,.L19	#, _5,,
# problem108.c:65:     assert(issame(result, expected5, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,65		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L19:
# problem108.c:66:     free(result);
	ld	a0,-96(s0)		#, result
	call	free@plt	#
# problem108.c:68:     result = func0(19);
	li	a0,19		#,
	call	func0		#
	sd	a0,-96(s0)	#, result
# problem108.c:69:     int expected6[] = {4, 6};
	li	a5,4		# tmp103,
	sw	a5,-48(s0)	# tmp103, expected6[0]
	li	a5,6		# tmp104,
	sw	a5,-44(s0)	# tmp104, expected6[1]
# problem108.c:70:     assert(issame(result, expected6, 2));
	addi	a5,s0,-48	#, tmp105,
	li	a2,2		#,
	mv	a1,a5	#, tmp105
	ld	a0,-96(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp106,
	bne	a5,zero,.L20	#, _6,,
# problem108.c:70:     assert(issame(result, expected6, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,70		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L20:
# problem108.c:71:     free(result);
	ld	a0,-96(s0)		#, result
	call	free@plt	#
# problem108.c:73:     result = func0(9);
	li	a0,9		#,
	call	func0		#
	sd	a0,-96(s0)	#, result
# problem108.c:74:     int expected7[] = {4, 5};
	li	a5,4		# tmp107,
	sw	a5,-40(s0)	# tmp107, expected7[0]
	li	a5,5		# tmp108,
	sw	a5,-36(s0)	# tmp108, expected7[1]
# problem108.c:75:     assert(issame(result, expected7, 2));
	addi	a5,s0,-40	#, tmp109,
	li	a2,2		#,
	mv	a1,a5	#, tmp109
	ld	a0,-96(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp110,
	bne	a5,zero,.L21	#, _7,,
# problem108.c:75:     assert(issame(result, expected7, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,75		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L21:
# problem108.c:76:     free(result);
	ld	a0,-96(s0)		#, result
	call	free@plt	#
# problem108.c:78:     result = func0(1);
	li	a0,1		#,
	call	func0		#
	sd	a0,-96(s0)	#, result
# problem108.c:79:     int expected8[] = {0, 1};
	sw	zero,-32(s0)	#, expected8[0]
	li	a5,1		# tmp111,
	sw	a5,-28(s0)	# tmp111, expected8[1]
# problem108.c:80:     assert(issame(result, expected8, 2));
	addi	a5,s0,-32	#, tmp112,
	li	a2,2		#,
	mv	a1,a5	#, tmp112
	ld	a0,-96(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp113,
	bne	a5,zero,.L22	#, _8,,
# problem108.c:80:     assert(issame(result, expected8, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,80		#,
	lla	a1,.LC0	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L22:
# problem108.c:81:     free(result);
	ld	a0,-96(s0)		#, result
	call	free@plt	#
# problem108.c:83:     return 0;
	li	a5,0		# _66,
# problem108.c:84: }
	mv	a4,a5	# <retval>, _66
	la	a5,__stack_chk_guard		# tmp115,
	ld	a3, -24(s0)	# tmp118, D.2500
	ld	a5, 0(a5)	# tmp116, __stack_chk_guard
	xor	a5, a3, a5	# tmp116, tmp118
	li	a3, 0	# tmp118
	beq	a5,zero,.L24	#, tmp116,,
	call	__stack_chk_fail@plt	#
.L24:
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
