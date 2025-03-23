	.file	"problem26.c"
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
	mv	a5,a0	# tmp86, n
	sd	a1,-48(s0)	# size, size
	sw	a5,-36(s0)	# tmp87, n
# problem26.c:5:     int* out = malloc(sizeof(int) * 64);
	li	a0,256		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp88,
	sd	a5,-24(s0)	# tmp88, out
# problem26.c:6:     *size = 0;
	ld	a5,-48(s0)		# tmp89, size
	sw	zero,0(a5)	#, *size_24(D)
# problem26.c:7:     for (int i = 2; i * i <= n; i++) {
	li	a5,2		# tmp90,
	sw	a5,-28(s0)	# tmp90, i
# problem26.c:7:     for (int i = 2; i * i <= n; i++) {
	j	.L2		#
.L4:
# problem26.c:9:             n = n / i;
	lw	a5,-36(s0)		# tmp94, n
	mv	a4,a5	# tmp93, tmp94
	lw	a5,-28(s0)		# tmp96, i
	divw	a5,a4,a5	# tmp95, tmp92, tmp93
	sw	a5,-36(s0)	# tmp92, n
# problem26.c:10:             out[(*size)++] = i;
	ld	a5,-48(s0)		# tmp97, size
	lw	a5,0(a5)		# _1, *size_24(D)
# problem26.c:10:             out[(*size)++] = i;
	addiw	a4,a5,1	#, tmp98, _1
	sext.w	a3,a4	# _3, tmp98
	ld	a4,-48(s0)		# tmp99, size
	sw	a3,0(a4)	# _3, *size_24(D)
# problem26.c:10:             out[(*size)++] = i;
	slli	a5,a5,2	#, _5, _4
	ld	a4,-24(s0)		# tmp100, out
	add	a5,a4,a5	# _5, _6, tmp100
# problem26.c:10:             out[(*size)++] = i;
	lw	a4,-28(s0)		# tmp101, i
	sw	a4,0(a5)	# tmp101, *_6
.L3:
# problem26.c:8:         while (n % i == 0) {
	lw	a5,-36(s0)		# tmp104, n
	mv	a4,a5	# tmp103, tmp104
	lw	a5,-28(s0)		# tmp107, i
	remw	a5,a4,a5	# tmp106, tmp105, tmp103
	sext.w	a5,a5	# _7, tmp105
# problem26.c:8:         while (n % i == 0) {
	beq	a5,zero,.L4	#, _7,,
# problem26.c:7:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-28(s0)		# tmp110, i
	addiw	a5,a5,1	#, tmp108, tmp109
	sw	a5,-28(s0)	# tmp108, i
.L2:
# problem26.c:7:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-28(s0)		# tmp113, i
	mulw	a5,a5,a5	# tmp111, tmp112, tmp112
	sext.w	a4,a5	# _8, tmp111
# problem26.c:7:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-36(s0)		# tmp115, n
	sext.w	a5,a5	# tmp116, tmp114
	bge	a5,a4,.L3	#, tmp116, tmp117,
# problem26.c:13:     if (n > 1) {
	lw	a5,-36(s0)		# tmp119, n
	sext.w	a4,a5	# tmp120, tmp118
	li	a5,1		# tmp121,
	ble	a4,a5,.L6	#, tmp120, tmp121,
# problem26.c:14:         out[(*size)++] = n;
	ld	a5,-48(s0)		# tmp122, size
	lw	a5,0(a5)		# _9, *size_24(D)
# problem26.c:14:         out[(*size)++] = n;
	addiw	a4,a5,1	#, tmp123, _9
	sext.w	a3,a4	# _11, tmp123
	ld	a4,-48(s0)		# tmp124, size
	sw	a3,0(a4)	# _11, *size_24(D)
# problem26.c:14:         out[(*size)++] = n;
	slli	a5,a5,2	#, _13, _12
	ld	a4,-24(s0)		# tmp125, out
	add	a5,a4,a5	# _13, _14, tmp125
# problem26.c:14:         out[(*size)++] = n;
	lw	a4,-36(s0)		# tmp126, n
	sw	a4,0(a5)	# tmp126, *_14
.L6:
# problem26.c:16:     return out;
	ld	a5,-24(s0)		# _30, out
# problem26.c:17: }
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
	mv	a5,a1	# tmp82, a_size
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp84, b_size
	sw	a5,-44(s0)	# tmp83, a_size
	mv	a5,a4	# tmp85, tmp84
	sw	a5,-48(s0)	# tmp85, b_size
# problem26.c:26:     if (a_size != b_size) return 0;
	lw	a5,-44(s0)		# tmp87, a_size
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-48(s0)		# tmp89, b_size
	sext.w	a4,a4	# tmp90, tmp86
	sext.w	a5,a5	# tmp91, tmp88
	beq	a4,a5,.L9	#, tmp90, tmp91,
# problem26.c:26:     if (a_size != b_size) return 0;
	li	a5,0		# _10,
	j	.L10		#
.L9:
# problem26.c:27:     for (int i = 0; i < a_size; i++) {
	sw	zero,-20(s0)	#, i
# problem26.c:27:     for (int i = 0; i < a_size; i++) {
	j	.L11		#
.L13:
# problem26.c:28:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp92, a
	add	a5,a4,a5	# _2, _3, tmp92
	lw	a3,0(a5)		# _4, *_3
# problem26.c:28:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp93, b
	add	a5,a4,a5	# _6, _7, tmp93
	lw	a5,0(a5)		# _8, *_7
# problem26.c:28:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp94, _4
	beq	a4,a5,.L12	#, tmp94, tmp95,
# problem26.c:28:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L10		#
.L12:
# problem26.c:27:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L11:
# problem26.c:27:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-44(s0)		# tmp102, a_size
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L13	#, tmp103, tmp104,
# problem26.c:30:     return 1;
	li	a5,1		# _10,
.L10:
# problem26.c:31: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC3:
	.string	"problem26.c"
	.align	3
.LC4:
	.string	"issame(result, size, (int[]){2}, 1)"
	.align	3
.LC5:
	.string	"issame(result, size, (int[]){2, 2}, 2)"
	.align	3
.LC6:
	.string	"issame(result, size, (int[]){2, 2, 2}, 3)"
	.align	3
.LC7:
	.string	"issame(result, size, (int[]){3, 19}, 2)"
	.align	3
.LC8:
	.string	"issame(result, size, (int[]){3, 3, 19, 19}, 4)"
	.align	3
.LC9:
	.string	"issame(result, size, (int[]){3, 3, 3, 19, 19, 19}, 6)"
	.align	3
.LC10:
	.string	"issame(result, size, (int[]){3, 19, 19, 19}, 4)"
	.align	3
.LC11:
	.string	"issame(result, size, (int[]){2, 3, 3}, 3)"
	.align	3
.LC0:
	.word	3
	.word	3
	.word	19
	.word	19
	.align	3
.LC1:
	.word	3
	.word	3
	.word	3
	.word	19
	.word	19
	.word	19
	.align	3
.LC2:
	.word	3
	.word	19
	.word	19
	.word	19
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
# problem26.c:33: int main() {
	la	a5,__stack_chk_guard		# tmp90,
	ld	a4, 0(a5)	# tmp142, __stack_chk_guard
	sd	a4, -24(s0)	# tmp142, D.2697
	li	a4, 0	# tmp142
# problem26.c:37:     result = func0(2, &size);
	addi	a5,s0,-60	#, tmp91,
	mv	a1,a5	#, tmp91
	li	a0,2		#,
	call	func0		#
	sd	a0,-56(s0)	#, result
# problem26.c:38:     assert(issame(result, size, (int[]){2}, 1));
	lw	a4,-60(s0)		# size.0_1, size
	li	a5,2		# tmp92,
	sw	a5,-48(s0)	# tmp92, MEM[(int[1] *)_91][0]
	addi	a5,s0,-48	#, tmp93,
	li	a3,1		#,
	mv	a2,a5	#, tmp93
	mv	a1,a4	#, size.0_1
	ld	a0,-56(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp94,
	bne	a5,zero,.L15	#, _2,,
# problem26.c:38:     assert(issame(result, size, (int[]){2}, 1));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC3	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L15:
# problem26.c:39:     free(result);
	ld	a0,-56(s0)		#, result
	call	free@plt	#
# problem26.c:41:     result = func0(4, &size);
	addi	a5,s0,-60	#, tmp95,
	mv	a1,a5	#, tmp95
	li	a0,4		#,
	call	func0		#
	sd	a0,-56(s0)	#, result
# problem26.c:42:     assert(issame(result, size, (int[]){2, 2}, 2));
	lw	a4,-60(s0)		# size.1_3, size
	li	a5,2		# tmp96,
	sw	a5,-48(s0)	# tmp96, MEM[(int[2] *)_91][0]
	li	a5,2		# tmp97,
	sw	a5,-44(s0)	# tmp97, MEM[(int[2] *)_91][1]
	addi	a5,s0,-48	#, tmp98,
	li	a3,2		#,
	mv	a2,a5	#, tmp98
	mv	a1,a4	#, size.1_3
	ld	a0,-56(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp99,
	bne	a5,zero,.L16	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC3	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L16:
# problem26.c:43:     free(result);
	ld	a0,-56(s0)		#, result
	call	free@plt	#
# problem26.c:45:     result = func0(8, &size);
	addi	a5,s0,-60	#, tmp100,
	mv	a1,a5	#, tmp100
	li	a0,8		#,
	call	func0		#
	sd	a0,-56(s0)	#, result
# problem26.c:46:     assert(issame(result, size, (int[]){2, 2, 2}, 3));
	lw	a4,-60(s0)		# size.2_5, size
	li	a5,2		# tmp101,
	sw	a5,-48(s0)	# tmp101, MEM[(int[3] *)_91][0]
	li	a5,2		# tmp102,
	sw	a5,-44(s0)	# tmp102, MEM[(int[3] *)_91][1]
	li	a5,2		# tmp103,
	sw	a5,-40(s0)	# tmp103, MEM[(int[3] *)_91][2]
	addi	a5,s0,-48	#, tmp104,
	li	a3,3		#,
	mv	a2,a5	#, tmp104
	mv	a1,a4	#, size.2_5
	ld	a0,-56(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp105,
	bne	a5,zero,.L17	#, _6,,
# problem26.c:46:     assert(issame(result, size, (int[]){2, 2, 2}, 3));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,46		#,
	lla	a1,.LC3	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L17:
# problem26.c:47:     free(result);
	ld	a0,-56(s0)		#, result
	call	free@plt	#
# problem26.c:49:     result = func0(3 * 19, &size);
	addi	a5,s0,-60	#, tmp106,
	mv	a1,a5	#, tmp106
	li	a0,57		#,
	call	func0		#
	sd	a0,-56(s0)	#, result
# problem26.c:50:     assert(issame(result, size, (int[]){3, 19}, 2));
	lw	a4,-60(s0)		# size.3_7, size
	li	a5,3		# tmp107,
	sw	a5,-48(s0)	# tmp107, MEM[(int[2] *)_91][0]
	li	a5,19		# tmp108,
	sw	a5,-44(s0)	# tmp108, MEM[(int[2] *)_91][1]
	addi	a5,s0,-48	#, tmp109,
	li	a3,2		#,
	mv	a2,a5	#, tmp109
	mv	a1,a4	#, size.3_7
	ld	a0,-56(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp110,
	bne	a5,zero,.L18	#, _8,,
# problem26.c:50:     assert(issame(result, size, (int[]){3, 19}, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC3	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L18:
# problem26.c:51:     free(result);
	ld	a0,-56(s0)		#, result
	call	free@plt	#
# problem26.c:53:     result = func0(3 * 19 * 3 * 19, &size);
	addi	a5,s0,-60	#, tmp111,
	mv	a1,a5	#, tmp111
	li	a5,4096		# tmp112,
	addi	a0,a5,-847	#,, tmp112
	call	func0		#
	sd	a0,-56(s0)	#, result
# problem26.c:54:     assert(issame(result, size, (int[]){3, 3, 19, 19}, 4));
	lw	a1,-60(s0)		# size.4_9, size
	lla	a5,.LC0	# tmp113,
	ld	a4,0(a5)		# tmp114,
	sd	a4,-48(s0)	# tmp114, MEM[(int[4] *)_91]
	ld	a5,8(a5)		# tmp115,
	sd	a5,-40(s0)	# tmp115, MEM[(int[4] *)_91]
	addi	a5,s0,-48	#, tmp116,
	li	a3,4		#,
	mv	a2,a5	#, tmp116
	ld	a0,-56(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp117,
	bne	a5,zero,.L19	#, _10,,
# problem26.c:54:     assert(issame(result, size, (int[]){3, 3, 19, 19}, 4));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,54		#,
	lla	a1,.LC3	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L19:
# problem26.c:55:     free(result);
	ld	a0,-56(s0)		#, result
	call	free@plt	#
# problem26.c:57:     result = func0(3 * 19 * 3 * 19 * 3 * 19, &size);
	addi	a5,s0,-60	#, tmp118,
	mv	a1,a5	#, tmp118
	li	a5,184320		# tmp119,
	addi	a0,a5,873	#,, tmp119
	call	func0		#
	sd	a0,-56(s0)	#, result
# problem26.c:58:     assert(issame(result, size, (int[]){3, 3, 3, 19, 19, 19}, 6));
	lw	a1,-60(s0)		# size.5_11, size
	lla	a5,.LC1	# tmp120,
	ld	a4,0(a5)		# tmp121,
	sd	a4,-48(s0)	# tmp121, MEM[(int[6] *)_91]
	ld	a4,8(a5)		# tmp122,
	sd	a4,-40(s0)	# tmp122, MEM[(int[6] *)_91]
	ld	a5,16(a5)		# tmp123,
	sd	a5,-32(s0)	# tmp123, MEM[(int[6] *)_91]
	addi	a5,s0,-48	#, tmp124,
	li	a3,6		#,
	mv	a2,a5	#, tmp124
	ld	a0,-56(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp125,
	bne	a5,zero,.L20	#, _12,,
# problem26.c:58:     assert(issame(result, size, (int[]){3, 3, 3, 19, 19, 19}, 6));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,58		#,
	lla	a1,.LC3	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L20:
# problem26.c:59:     free(result);
	ld	a0,-56(s0)		#, result
	call	free@plt	#
# problem26.c:61:     result = func0(3 * 19 * 19 * 19, &size);
	addi	a5,s0,-60	#, tmp126,
	mv	a1,a5	#, tmp126
	li	a5,20480		# tmp127,
	addi	a0,a5,97	#,, tmp127
	call	func0		#
	sd	a0,-56(s0)	#, result
# problem26.c:62:     assert(issame(result, size, (int[]){3, 19, 19, 19}, 4));
	lw	a1,-60(s0)		# size.6_13, size
	lla	a5,.LC2	# tmp128,
	ld	a4,0(a5)		# tmp129,
	sd	a4,-48(s0)	# tmp129, MEM[(int[4] *)_91]
	ld	a5,8(a5)		# tmp130,
	sd	a5,-40(s0)	# tmp130, MEM[(int[4] *)_91]
	addi	a5,s0,-48	#, tmp131,
	li	a3,4		#,
	mv	a2,a5	#, tmp131
	ld	a0,-56(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp132,
	bne	a5,zero,.L21	#, _14,,
# problem26.c:62:     assert(issame(result, size, (int[]){3, 19, 19, 19}, 4));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,62		#,
	lla	a1,.LC3	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L21:
# problem26.c:63:     free(result);
	ld	a0,-56(s0)		#, result
	call	free@plt	#
# problem26.c:65:     result = func0(3 * 2 * 3, &size);
	addi	a5,s0,-60	#, tmp133,
	mv	a1,a5	#, tmp133
	li	a0,18		#,
	call	func0		#
	sd	a0,-56(s0)	#, result
# problem26.c:66:     assert(issame(result, size, (int[]){2, 3, 3}, 3));
	lw	a4,-60(s0)		# size.7_15, size
	li	a5,2		# tmp134,
	sw	a5,-48(s0)	# tmp134, MEM[(int[3] *)_91][0]
	li	a5,3		# tmp135,
	sw	a5,-44(s0)	# tmp135, MEM[(int[3] *)_91][1]
	li	a5,3		# tmp136,
	sw	a5,-40(s0)	# tmp136, MEM[(int[3] *)_91][2]
	addi	a5,s0,-48	#, tmp137,
	li	a3,3		#,
	mv	a2,a5	#, tmp137
	mv	a1,a4	#, size.7_15
	ld	a0,-56(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp138,
	bne	a5,zero,.L22	#, _16,,
# problem26.c:66:     assert(issame(result, size, (int[]){2, 3, 3}, 3));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,66		#,
	lla	a1,.LC3	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L22:
# problem26.c:67:     free(result);
	ld	a0,-56(s0)		#, result
	call	free@plt	#
# problem26.c:69:     return 0;
	li	a5,0		# _80,
# problem26.c:70: }
	mv	a4,a5	# <retval>, _80
	la	a5,__stack_chk_guard		# tmp140,
	ld	a3, -24(s0)	# tmp143, D.2697
	ld	a5, 0(a5)	# tmp141, __stack_chk_guard
	xor	a5, a3, a5	# tmp141, tmp143
	li	a3, 0	# tmp143
	beq	a5,zero,.L24	#, tmp141,,
# problem26.c:70: }
	call	__stack_chk_fail@plt	#
.L24:
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
