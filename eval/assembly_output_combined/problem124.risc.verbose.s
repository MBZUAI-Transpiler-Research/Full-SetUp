	.file	"problem124.c"
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
	mv	a5,a0	# tmp102, n
	sd	a1,-48(s0)	# out, out
	sd	a2,-56(s0)	# size, size
	sw	a5,-36(s0)	# tmp103, n
# problem124.c:5:     int capacity = 10;
	li	a5,10		# tmp104,
	sw	a5,-32(s0)	# tmp104, capacity
# problem124.c:6:     *size = 1;
	ld	a5,-56(s0)		# tmp105, size
	li	a4,1		# tmp106,
	sw	a4,0(a5)	# tmp106, *size_45(D)
# problem124.c:7:     out[0] = 1;
	ld	a5,-48(s0)		# tmp107, out
	li	a4,1		# tmp108,
	sw	a4,0(a5)	# tmp108, *out_47(D)
# problem124.c:9:     while (n != 1) {
	j	.L2		#
.L5:
# problem124.c:10:         if (n % 2 == 1) {
	lw	a5,-36(s0)		# tmp111, n
	mv	a4,a5	# tmp110, tmp111
	sraiw	a5,a4,31	#, tmp112, tmp110
	srliw	a5,a5,31	#, tmp113, tmp112
	addw	a4,a4,a5	# tmp113, tmp114, tmp110
	andi	a4,a4,1	#, tmp115, tmp114
	subw	a5,a4,a5	# tmp116, tmp115, tmp113
	sext.w	a5,a5	# _1, tmp116
# problem124.c:10:         if (n % 2 == 1) {
	mv	a4,a5	# tmp117, _1
	li	a5,1		# tmp118,
	bne	a4,a5,.L3	#, tmp117, tmp118,
# problem124.c:11:             if (*size >= capacity) {
	ld	a5,-56(s0)		# tmp119, size
	lw	a4,0(a5)		# _2, *size_45(D)
# problem124.c:11:             if (*size >= capacity) {
	lw	a5,-32(s0)		# tmp121, capacity
	sext.w	a5,a5	# tmp122, tmp120
	bgt	a5,a4,.L4	#, tmp122, tmp123,
# problem124.c:12:                 capacity *= 2;
	lw	a5,-32(s0)		# tmp126, capacity
	slliw	a5,a5,1	#, tmp124, tmp125
	sw	a5,-32(s0)	# tmp124, capacity
# problem124.c:13:                 out = (int*)realloc(out, capacity * sizeof(int));
	lw	a5,-32(s0)		# _3, capacity
	slli	a5,a5,2	#, _4, _3
	mv	a1,a5	#, _4
	ld	a0,-48(s0)		#, out
	call	realloc@plt	#
	sd	a0,-48(s0)	#, out
.L4:
# problem124.c:15:             out[(*size)++] = n;
	ld	a5,-56(s0)		# tmp127, size
	lw	a5,0(a5)		# _5, *size_45(D)
# problem124.c:15:             out[(*size)++] = n;
	addiw	a4,a5,1	#, tmp128, _5
	sext.w	a3,a4	# _7, tmp128
	ld	a4,-56(s0)		# tmp129, size
	sw	a3,0(a4)	# _7, *size_45(D)
# problem124.c:15:             out[(*size)++] = n;
	slli	a5,a5,2	#, _9, _8
	ld	a4,-48(s0)		# tmp130, out
	add	a5,a4,a5	# _9, _10, tmp130
# problem124.c:15:             out[(*size)++] = n;
	lw	a4,-36(s0)		# tmp131, n
	sw	a4,0(a5)	# tmp131, *_10
# problem124.c:16:             n = n * 3 + 1;
	lw	a5,-36(s0)		# tmp133, n
	mv	a4,a5	# tmp132, tmp133
	mv	a5,a4	# tmp134, tmp132
	slliw	a5,a5,1	#, tmp135, tmp134
	addw	a5,a5,a4	# tmp132, tmp134, tmp134
	sext.w	a5,a5	# _11, tmp134
# problem124.c:16:             n = n * 3 + 1;
	addiw	a5,a5,1	#, tmp136, _11
	sw	a5,-36(s0)	# tmp136, n
	j	.L2		#
.L3:
# problem124.c:18:             n = n / 2;
	lw	a5,-36(s0)		# tmp139, n
	srliw	a4,a5,31	#, tmp140, tmp138
	addw	a5,a4,a5	# tmp138, tmp141, tmp140
	sraiw	a5,a5,1	#, tmp142, tmp141
	sw	a5,-36(s0)	# tmp142, n
.L2:
# problem124.c:9:     while (n != 1) {
	lw	a5,-36(s0)		# tmp144, n
	sext.w	a4,a5	# tmp145, tmp143
	li	a5,1		# tmp146,
	bne	a4,a5,.L5	#, tmp145, tmp146,
# problem124.c:22:     for (int i = 1; i < *size; i++) {
	li	a5,1		# tmp147,
	sw	a5,-28(s0)	# tmp147, i
# problem124.c:22:     for (int i = 1; i < *size; i++) {
	j	.L6		#
.L10:
# problem124.c:23:         int key = out[i];
	lw	a5,-28(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-48(s0)		# tmp148, out
	add	a5,a4,a5	# _13, _14, tmp148
# problem124.c:23:         int key = out[i];
	lw	a5,0(a5)		# tmp149, *_14
	sw	a5,-20(s0)	# tmp149, key
# problem124.c:24:         int j = i - 1;
	lw	a5,-28(s0)		# tmp152, i
	addiw	a5,a5,-1	#, tmp150, tmp151
	sw	a5,-24(s0)	# tmp150, j
# problem124.c:26:         while (j >= 0 && out[j] > key) {
	j	.L7		#
.L9:
# problem124.c:27:             out[j + 1] = out[j];
	lw	a5,-24(s0)		# _15, j
	slli	a5,a5,2	#, _16, _15
	ld	a4,-48(s0)		# tmp153, out
	add	a4,a4,a5	# _16, _17, tmp153
# problem124.c:27:             out[j + 1] = out[j];
	lw	a5,-24(s0)		# _18, j
	addi	a5,a5,1	#, _19, _18
	slli	a5,a5,2	#, _20, _19
	ld	a3,-48(s0)		# tmp154, out
	add	a5,a3,a5	# _20, _21, tmp154
# problem124.c:27:             out[j + 1] = out[j];
	lw	a4,0(a4)		# _22, *_17
# problem124.c:27:             out[j + 1] = out[j];
	sw	a4,0(a5)	# _22, *_21
# problem124.c:28:             j = j - 1;
	lw	a5,-24(s0)		# tmp157, j
	addiw	a5,a5,-1	#, tmp155, tmp156
	sw	a5,-24(s0)	# tmp155, j
.L7:
# problem124.c:26:         while (j >= 0 && out[j] > key) {
	lw	a5,-24(s0)		# tmp159, j
	sext.w	a5,a5	# tmp160, tmp158
	blt	a5,zero,.L8	#, tmp160,,
# problem124.c:26:         while (j >= 0 && out[j] > key) {
	lw	a5,-24(s0)		# _23, j
	slli	a5,a5,2	#, _24, _23
	ld	a4,-48(s0)		# tmp161, out
	add	a5,a4,a5	# _24, _25, tmp161
	lw	a4,0(a5)		# _26, *_25
# problem124.c:26:         while (j >= 0 && out[j] > key) {
	lw	a5,-20(s0)		# tmp163, key
	sext.w	a5,a5	# tmp164, tmp162
	blt	a5,a4,.L9	#, tmp164, tmp165,
.L8:
# problem124.c:30:         out[j + 1] = key;
	lw	a5,-24(s0)		# _27, j
	addi	a5,a5,1	#, _28, _27
	slli	a5,a5,2	#, _29, _28
	ld	a4,-48(s0)		# tmp166, out
	add	a5,a4,a5	# _29, _30, tmp166
# problem124.c:30:         out[j + 1] = key;
	lw	a4,-20(s0)		# tmp167, key
	sw	a4,0(a5)	# tmp167, *_30
# problem124.c:22:     for (int i = 1; i < *size; i++) {
	lw	a5,-28(s0)		# tmp170, i
	addiw	a5,a5,1	#, tmp168, tmp169
	sw	a5,-28(s0)	# tmp168, i
.L6:
# problem124.c:22:     for (int i = 1; i < *size; i++) {
	ld	a5,-56(s0)		# tmp171, size
	lw	a4,0(a5)		# _31, *size_45(D)
# problem124.c:22:     for (int i = 1; i < *size; i++) {
	lw	a5,-28(s0)		# tmp173, i
	sext.w	a5,a5	# tmp174, tmp172
	blt	a5,a4,.L10	#, tmp174, tmp175,
# problem124.c:32: }
	nop	
	nop	
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
	mv	a5,a1	# tmp82, size_a
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp84, size_b
	sw	a5,-44(s0)	# tmp83, size_a
	mv	a5,a4	# tmp85, tmp84
	sw	a5,-48(s0)	# tmp85, size_b
# problem124.c:40:     if (size_a != size_b) return 0;
	lw	a5,-44(s0)		# tmp87, size_a
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-48(s0)		# tmp89, size_b
	sext.w	a4,a4	# tmp90, tmp86
	sext.w	a5,a5	# tmp91, tmp88
	beq	a4,a5,.L12	#, tmp90, tmp91,
# problem124.c:40:     if (size_a != size_b) return 0;
	li	a5,0		# _10,
	j	.L13		#
.L12:
# problem124.c:41:     for (int i = 0; i < size_a; i++) {
	sw	zero,-20(s0)	#, i
# problem124.c:41:     for (int i = 0; i < size_a; i++) {
	j	.L14		#
.L16:
# problem124.c:42:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp92, a
	add	a5,a4,a5	# _2, _3, tmp92
	lw	a3,0(a5)		# _4, *_3
# problem124.c:42:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp93, b
	add	a5,a4,a5	# _6, _7, tmp93
	lw	a5,0(a5)		# _8, *_7
# problem124.c:42:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp94, _4
	beq	a4,a5,.L15	#, tmp94, tmp95,
# problem124.c:42:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L13		#
.L15:
# problem124.c:41:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L14:
# problem124.c:41:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-44(s0)		# tmp102, size_a
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L16	#, tmp103, tmp104,
# problem124.c:44:     return 1;
	li	a5,1		# _10,
.L13:
# problem124.c:45: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC1:
	.string	"problem124.c"
	.align	3
.LC2:
	.string	"issame(result, size, expected1, 6)"
	.align	3
.LC3:
	.string	"issame(result, size, expected2, 2)"
	.align	3
.LC4:
	.string	"issame(result, size, expected3, 3)"
	.align	3
.LC5:
	.string	"issame(result, size, expected4, 1)"
	.align	3
.LC0:
	.word	1
	.word	5
	.word	7
	.word	11
	.word	13
	.word	17
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-96	#,,
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	addi	s0,sp,96	#,,
# problem124.c:47: int main() {
	la	a5,__stack_chk_guard		# tmp82,
	ld	a4, 0(a5)	# tmp112, __stack_chk_guard
	sd	a4, -24(s0)	# tmp112, D.2496
	li	a4, 0	# tmp112
# problem124.c:52:     int expected1[] = {1, 5, 7, 11, 13, 17};
	lla	a5,.LC0	# tmp83,
	ld	a4,0(a5)		# tmp84,
	sd	a4,-48(s0)	# tmp84, expected1
	ld	a4,8(a5)		# tmp85,
	sd	a4,-40(s0)	# tmp85, expected1
	ld	a5,16(a5)		# tmp86,
	sd	a5,-32(s0)	# tmp86, expected1
# problem124.c:53:     result = (int*)malloc(100 * sizeof(int));
	li	a0,400		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp87,
	sd	a5,-88(s0)	# tmp87, result
# problem124.c:54:     func0(14, result, &size);
	addi	a5,s0,-92	#, tmp88,
	mv	a2,a5	#, tmp88
	ld	a1,-88(s0)		#, result
	li	a0,14		#,
	call	func0		#
# problem124.c:55:     assert(issame(result, size, expected1, 6));
	lw	a5,-92(s0)		# size.0_1, size
	addi	a4,s0,-48	#, tmp89,
	li	a3,6		#,
	mv	a2,a4	#, tmp89
	mv	a1,a5	#, size.0_1
	ld	a0,-88(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp90,
	bne	a5,zero,.L18	#, _2,,
# problem124.c:55:     assert(issame(result, size, expected1, 6));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,55		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L18:
# problem124.c:56:     free(result);
	ld	a0,-88(s0)		#, result
	call	free@plt	#
# problem124.c:59:     int expected2[] = {1, 5};
	li	a5,1		# tmp91,
	sw	a5,-72(s0)	# tmp91, expected2[0]
	li	a5,5		# tmp92,
	sw	a5,-68(s0)	# tmp92, expected2[1]
# problem124.c:60:     result = (int*)malloc(100 * sizeof(int));
	li	a0,400		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp93,
	sd	a5,-88(s0)	# tmp93, result
# problem124.c:61:     func0(5, result, &size);
	addi	a5,s0,-92	#, tmp94,
	mv	a2,a5	#, tmp94
	ld	a1,-88(s0)		#, result
	li	a0,5		#,
	call	func0		#
# problem124.c:62:     assert(issame(result, size, expected2, 2));
	lw	a5,-92(s0)		# size.1_3, size
	addi	a4,s0,-72	#, tmp95,
	li	a3,2		#,
	mv	a2,a4	#, tmp95
	mv	a1,a5	#, size.1_3
	ld	a0,-88(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp96,
	bne	a5,zero,.L19	#, _4,,
# problem124.c:62:     assert(issame(result, size, expected2, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,62		#,
	lla	a1,.LC1	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L19:
# problem124.c:63:     free(result);
	ld	a0,-88(s0)		#, result
	call	free@plt	#
# problem124.c:66:     int expected3[] = {1, 3, 5};
	li	a5,1		# tmp97,
	sw	a5,-64(s0)	# tmp97, expected3[0]
	li	a5,3		# tmp98,
	sw	a5,-60(s0)	# tmp98, expected3[1]
	li	a5,5		# tmp99,
	sw	a5,-56(s0)	# tmp99, expected3[2]
# problem124.c:67:     result = (int*)malloc(100 * sizeof(int));
	li	a0,400		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp100,
	sd	a5,-88(s0)	# tmp100, result
# problem124.c:68:     func0(12, result, &size);
	addi	a5,s0,-92	#, tmp101,
	mv	a2,a5	#, tmp101
	ld	a1,-88(s0)		#, result
	li	a0,12		#,
	call	func0		#
# problem124.c:69:     assert(issame(result, size, expected3, 3));
	lw	a5,-92(s0)		# size.2_5, size
	addi	a4,s0,-64	#, tmp102,
	li	a3,3		#,
	mv	a2,a4	#, tmp102
	mv	a1,a5	#, size.2_5
	ld	a0,-88(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp103,
	bne	a5,zero,.L20	#, _6,,
# problem124.c:69:     assert(issame(result, size, expected3, 3));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,69		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L20:
# problem124.c:70:     free(result);
	ld	a0,-88(s0)		#, result
	call	free@plt	#
# problem124.c:73:     int expected4[] = {1};
	li	a5,1		# tmp104,
	sw	a5,-80(s0)	# tmp104, expected4[0]
# problem124.c:74:     result = (int*)malloc(100 * sizeof(int));
	li	a0,400		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp105,
	sd	a5,-88(s0)	# tmp105, result
# problem124.c:75:     func0(1, result, &size);
	addi	a5,s0,-92	#, tmp106,
	mv	a2,a5	#, tmp106
	ld	a1,-88(s0)		#, result
	li	a0,1		#,
	call	func0		#
# problem124.c:76:     assert(issame(result, size, expected4, 1));
	lw	a5,-92(s0)		# size.3_7, size
	addi	a4,s0,-80	#, tmp107,
	li	a3,1		#,
	mv	a2,a4	#, tmp107
	mv	a1,a5	#, size.3_7
	ld	a0,-88(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp108,
	bne	a5,zero,.L21	#, _8,,
# problem124.c:76:     assert(issame(result, size, expected4, 1));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,76		#,
	lla	a1,.LC1	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L21:
# problem124.c:77:     free(result);
	ld	a0,-88(s0)		#, result
	call	free@plt	#
# problem124.c:79:     return 0;
	li	a5,0		# _41,
# problem124.c:80: }
	mv	a4,a5	# <retval>, _41
	la	a5,__stack_chk_guard		# tmp110,
	ld	a3, -24(s0)	# tmp113, D.2496
	ld	a5, 0(a5)	# tmp111, __stack_chk_guard
	xor	a5, a3, a5	# tmp111, tmp113
	li	a3, 0	# tmp113
	beq	a5,zero,.L23	#, tmp111,,
	call	__stack_chk_fail@plt	#
.L23:
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
