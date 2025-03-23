	.file	"problem97.c"
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
	mv	a5,a0	# tmp88, n
	sd	a1,-64(s0)	# count, count
	sw	a5,-52(s0)	# tmp89, n
# problem97.c:5:     int *out = malloc(n * sizeof(int));
	lw	a5,-52(s0)		# _1, n
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp90,
	sd	a5,-24(s0)	# tmp90, out
# problem97.c:6:     *count = 0;
	ld	a5,-64(s0)		# tmp91, count
	sw	zero,0(a5)	#, *count_24(D)
# problem97.c:9:     for (i = 2; i < n; i++) {
	li	a5,2		# tmp92,
	sw	a5,-40(s0)	# tmp92, i
# problem97.c:9:     for (i = 2; i < n; i++) {
	j	.L2		#
.L9:
# problem97.c:10:         isp = 1;
	li	a5,1		# tmp93,
	sw	a5,-32(s0)	# tmp93, isp
# problem97.c:11:         for (j = 0; j < *count; j++) {
	sw	zero,-36(s0)	#, j
# problem97.c:11:         for (j = 0; j < *count; j++) {
	j	.L3		#
.L7:
# problem97.c:12:             k = out[j];
	lw	a5,-36(s0)		# _3, j
	slli	a5,a5,2	#, _4, _3
	ld	a4,-24(s0)		# tmp94, out
	add	a5,a4,a5	# _4, _5, tmp94
# problem97.c:12:             k = out[j];
	lw	a5,0(a5)		# tmp95, *_5
	sw	a5,-28(s0)	# tmp95, k
# problem97.c:13:             if (k * k > i) break;
	lw	a5,-28(s0)		# tmp98, k
	mulw	a5,a5,a5	# tmp96, tmp97, tmp97
	sext.w	a4,a5	# _6, tmp96
# problem97.c:13:             if (k * k > i) break;
	lw	a5,-40(s0)		# tmp100, i
	sext.w	a5,a5	# tmp101, tmp99
	blt	a5,a4,.L11	#, tmp101, tmp102,
# problem97.c:14:             if (i % k == 0) {
	lw	a5,-40(s0)		# tmp105, i
	mv	a4,a5	# tmp104, tmp105
	lw	a5,-28(s0)		# tmp108, k
	remw	a5,a4,a5	# tmp107, tmp106, tmp104
	sext.w	a5,a5	# _7, tmp106
# problem97.c:14:             if (i % k == 0) {
	bne	a5,zero,.L6	#, _7,,
# problem97.c:15:                 isp = 0;
	sw	zero,-32(s0)	#, isp
# problem97.c:16:                 break;
	j	.L5		#
.L6:
# problem97.c:11:         for (j = 0; j < *count; j++) {
	lw	a5,-36(s0)		# tmp111, j
	addiw	a5,a5,1	#, tmp109, tmp110
	sw	a5,-36(s0)	# tmp109, j
.L3:
# problem97.c:11:         for (j = 0; j < *count; j++) {
	ld	a5,-64(s0)		# tmp112, count
	lw	a4,0(a5)		# _8, *count_24(D)
# problem97.c:11:         for (j = 0; j < *count; j++) {
	lw	a5,-36(s0)		# tmp114, j
	sext.w	a5,a5	# tmp115, tmp113
	blt	a5,a4,.L7	#, tmp115, tmp116,
	j	.L5		#
.L11:
# problem97.c:13:             if (k * k > i) break;
	nop	
.L5:
# problem97.c:19:         if (isp) {
	lw	a5,-32(s0)		# tmp118, isp
	sext.w	a5,a5	# tmp119, tmp117
	beq	a5,zero,.L8	#, tmp119,,
# problem97.c:20:             out[*count] = i;
	ld	a5,-64(s0)		# tmp120, count
	lw	a5,0(a5)		# _9, *count_24(D)
# problem97.c:20:             out[*count] = i;
	slli	a5,a5,2	#, _11, _10
	ld	a4,-24(s0)		# tmp121, out
	add	a5,a4,a5	# _11, _12, tmp121
# problem97.c:20:             out[*count] = i;
	lw	a4,-40(s0)		# tmp122, i
	sw	a4,0(a5)	# tmp122, *_12
# problem97.c:21:             (*count)++;
	ld	a5,-64(s0)		# tmp123, count
	lw	a5,0(a5)		# _13, *count_24(D)
# problem97.c:21:             (*count)++;
	addiw	a5,a5,1	#, tmp124, _13
	sext.w	a4,a5	# _14, tmp124
	ld	a5,-64(s0)		# tmp125, count
	sw	a4,0(a5)	# _14, *count_24(D)
.L8:
# problem97.c:9:     for (i = 2; i < n; i++) {
	lw	a5,-40(s0)		# tmp128, i
	addiw	a5,a5,1	#, tmp126, tmp127
	sw	a5,-40(s0)	# tmp126, i
.L2:
# problem97.c:9:     for (i = 2; i < n; i++) {
	lw	a5,-40(s0)		# tmp130, i
	mv	a4,a5	# tmp129, tmp130
	lw	a5,-52(s0)		# tmp132, n
	sext.w	a4,a4	# tmp133, tmp129
	sext.w	a5,a5	# tmp134, tmp131
	blt	a4,a5,.L9	#, tmp133, tmp134,
# problem97.c:24:     return out;
	ld	a5,-24(s0)		# _27, out
# problem97.c:25: }
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
	mv	a5,a1	# tmp82, a_count
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp84, b_count
	sw	a5,-44(s0)	# tmp83, a_count
	mv	a5,a4	# tmp85, tmp84
	sw	a5,-48(s0)	# tmp85, b_count
# problem97.c:34:     if (a_count != b_count) return 0;
	lw	a5,-44(s0)		# tmp87, a_count
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-48(s0)		# tmp89, b_count
	sext.w	a4,a4	# tmp90, tmp86
	sext.w	a5,a5	# tmp91, tmp88
	beq	a4,a5,.L13	#, tmp90, tmp91,
# problem97.c:34:     if (a_count != b_count) return 0;
	li	a5,0		# _10,
	j	.L14		#
.L13:
# problem97.c:35:     for (int i = 0; i < a_count; i++) {
	sw	zero,-20(s0)	#, i
# problem97.c:35:     for (int i = 0; i < a_count; i++) {
	j	.L15		#
.L17:
# problem97.c:36:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp92, a
	add	a5,a4,a5	# _2, _3, tmp92
	lw	a3,0(a5)		# _4, *_3
# problem97.c:36:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp93, b
	add	a5,a4,a5	# _6, _7, tmp93
	lw	a5,0(a5)		# _8, *_7
# problem97.c:36:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp94, _4
	beq	a4,a5,.L16	#, tmp94, tmp95,
# problem97.c:36:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L14		#
.L16:
# problem97.c:35:     for (int i = 0; i < a_count; i++) {
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L15:
# problem97.c:35:     for (int i = 0; i < a_count; i++) {
	lw	a5,-20(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-44(s0)		# tmp102, a_count
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L17	#, tmp103, tmp104,
# problem97.c:38:     return 1;
	li	a5,1		# _10,
.L14:
# problem97.c:39: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC5:
	.string	"problem97.c"
	.align	3
.LC6:
	.string	"issame(result, count, (int[]){2, 3}, 2)"
	.align	3
.LC7:
	.string	"issame(result, count, (int[]){2, 3, 5}, 3)"
	.align	3
.LC8:
	.string	"issame(result, count, (int[]){2, 3, 5, 7}, 4)"
	.align	3
.LC9:
	.string	"count == 0"
	.align	3
.LC10:
	.string	"issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19}, 8)"
	.align	3
.LC11:
	.string	"issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17}, 7)"
	.align	3
.LC12:
	.string	"issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43}, 14)"
	.align	3
.LC13:
	.string	"issame(result, count, expected, 25)"
	.align	3
.LC0:
	.word	2
	.word	3
	.word	5
	.word	7
	.word	11
	.word	13
	.word	17
	.word	19
	.word	23
	.word	29
	.word	31
	.word	37
	.word	41
	.word	43
	.word	47
	.word	53
	.word	59
	.word	61
	.word	67
	.word	71
	.word	73
	.word	79
	.word	83
	.word	89
	.word	97
	.align	3
.LC1:
	.word	2
	.word	3
	.word	5
	.word	7
	.align	3
.LC2:
	.word	2
	.word	3
	.word	5
	.word	7
	.word	11
	.word	13
	.word	17
	.word	19
	.align	3
.LC3:
	.word	2
	.word	3
	.word	5
	.word	7
	.word	11
	.word	13
	.word	17
	.align	3
.LC4:
	.word	2
	.word	3
	.word	5
	.word	7
	.word	11
	.word	13
	.word	17
	.word	19
	.word	23
	.word	29
	.word	31
	.word	37
	.word	41
	.word	43
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-208	#,,
	sd	ra,200(sp)	#,
	sd	s0,192(sp)	#,
	addi	s0,sp,208	#,,
# problem97.c:41: int main() {
	la	a5,__stack_chk_guard		# tmp92,
	ld	a4, 0(a5)	# tmp156, __stack_chk_guard
	sd	a4, -24(s0)	# tmp156, D.2712
	li	a4, 0	# tmp156
# problem97.c:43:     int expected[] = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97};
	lla	a4,.LC0	# tmp93,
	addi	a5,s0,-128	#, tmp94,
	mv	a3,a4	# tmp95, tmp93
	li	a4,100		# tmp96,
	mv	a2,a4	#, tmp96
	mv	a1,a3	#, tmp95
	mv	a0,a5	#, tmp94
	call	memcpy@plt	#
# problem97.c:45:     int *result = func0(5, &count);
	addi	a5,s0,-196	#, tmp98,
	mv	a1,a5	#, tmp98
	li	a0,5		#,
	call	func0		#
	sd	a0,-192(s0)	#, result
# problem97.c:46:     assert(issame(result, count, (int[]){2, 3}, 2));
	lw	a4,-196(s0)		# count.0_1, count
	li	a5,2		# tmp99,
	sw	a5,-184(s0)	# tmp99, MEM[(int[2] *)_100][0]
	li	a5,3		# tmp100,
	sw	a5,-180(s0)	# tmp100, MEM[(int[2] *)_100][1]
	addi	a5,s0,-184	#, tmp101,
	li	a3,2		#,
	mv	a2,a5	#, tmp101
	mv	a1,a4	#, count.0_1
	ld	a0,-192(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp102,
	bne	a5,zero,.L19	#, _2,,
# problem97.c:46:     assert(issame(result, count, (int[]){2, 3}, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,46		#,
	lla	a1,.LC5	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L19:
# problem97.c:47:     free(result);
	ld	a0,-192(s0)		#, result
	call	free@plt	#
# problem97.c:49:     result = func0(6, &count);
	addi	a5,s0,-196	#, tmp103,
	mv	a1,a5	#, tmp103
	li	a0,6		#,
	call	func0		#
	sd	a0,-192(s0)	#, result
# problem97.c:50:     assert(issame(result, count, (int[]){2, 3, 5}, 3));
	lw	a4,-196(s0)		# count.1_3, count
	li	a5,2		# tmp104,
	sw	a5,-184(s0)	# tmp104, MEM[(int[3] *)_100][0]
	li	a5,3		# tmp105,
	sw	a5,-180(s0)	# tmp105, MEM[(int[3] *)_100][1]
	li	a5,5		# tmp106,
	sw	a5,-176(s0)	# tmp106, MEM[(int[3] *)_100][2]
	addi	a5,s0,-184	#, tmp107,
	li	a3,3		#,
	mv	a2,a5	#, tmp107
	mv	a1,a4	#, count.1_3
	ld	a0,-192(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp108,
	bne	a5,zero,.L20	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC5	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L20:
# problem97.c:51:     free(result);
	ld	a0,-192(s0)		#, result
	call	free@plt	#
# problem97.c:53:     result = func0(7, &count);
	addi	a5,s0,-196	#, tmp109,
	mv	a1,a5	#, tmp109
	li	a0,7		#,
	call	func0		#
	sd	a0,-192(s0)	#, result
# problem97.c:54:     assert(issame(result, count, (int[]){2, 3, 5}, 3));
	lw	a4,-196(s0)		# count.2_5, count
	li	a5,2		# tmp110,
	sw	a5,-184(s0)	# tmp110, MEM[(int[3] *)_100][0]
	li	a5,3		# tmp111,
	sw	a5,-180(s0)	# tmp111, MEM[(int[3] *)_100][1]
	li	a5,5		# tmp112,
	sw	a5,-176(s0)	# tmp112, MEM[(int[3] *)_100][2]
	addi	a5,s0,-184	#, tmp113,
	li	a3,3		#,
	mv	a2,a5	#, tmp113
	mv	a1,a4	#, count.2_5
	ld	a0,-192(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp114,
	bne	a5,zero,.L21	#, _6,,
# problem97.c:54:     assert(issame(result, count, (int[]){2, 3, 5}, 3));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,54		#,
	lla	a1,.LC5	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L21:
# problem97.c:55:     free(result);
	ld	a0,-192(s0)		#, result
	call	free@plt	#
# problem97.c:57:     result = func0(10, &count);
	addi	a5,s0,-196	#, tmp115,
	mv	a1,a5	#, tmp115
	li	a0,10		#,
	call	func0		#
	sd	a0,-192(s0)	#, result
# problem97.c:58:     assert(issame(result, count, (int[]){2, 3, 5, 7}, 4));
	lw	a1,-196(s0)		# count.3_7, count
	lla	a5,.LC1	# tmp116,
	ld	a4,0(a5)		# tmp117,
	sd	a4,-184(s0)	# tmp117, MEM[(int[4] *)_100]
	ld	a5,8(a5)		# tmp118,
	sd	a5,-176(s0)	# tmp118, MEM[(int[4] *)_100]
	addi	a5,s0,-184	#, tmp119,
	li	a3,4		#,
	mv	a2,a5	#, tmp119
	ld	a0,-192(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp120,
	bne	a5,zero,.L22	#, _8,,
# problem97.c:58:     assert(issame(result, count, (int[]){2, 3, 5, 7}, 4));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,58		#,
	lla	a1,.LC5	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L22:
# problem97.c:59:     free(result);
	ld	a0,-192(s0)		#, result
	call	free@plt	#
# problem97.c:61:     result = func0(0, &count);
	addi	a5,s0,-196	#, tmp121,
	mv	a1,a5	#, tmp121
	li	a0,0		#,
	call	func0		#
	sd	a0,-192(s0)	#, result
# problem97.c:62:     assert(count == 0);
	lw	a5,-196(s0)		# count.4_9, count
	beq	a5,zero,.L23	#, count.4_9,,
# problem97.c:62:     assert(count == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,62		#,
	lla	a1,.LC5	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L23:
# problem97.c:63:     free(result);
	ld	a0,-192(s0)		#, result
	call	free@plt	#
# problem97.c:65:     result = func0(22, &count);
	addi	a5,s0,-196	#, tmp122,
	mv	a1,a5	#, tmp122
	li	a0,22		#,
	call	func0		#
	sd	a0,-192(s0)	#, result
# problem97.c:66:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19}, 8));
	lw	a1,-196(s0)		# count.5_10, count
	lla	a5,.LC2	# tmp123,
	ld	a2,0(a5)		# tmp124,
	ld	a3,8(a5)		# tmp125,
	ld	a4,16(a5)		# tmp126,
	ld	a5,24(a5)		# tmp127,
	sd	a2,-184(s0)	# tmp124, MEM[(int[8] *)_100]
	sd	a3,-176(s0)	# tmp125, MEM[(int[8] *)_100]
	sd	a4,-168(s0)	# tmp126, MEM[(int[8] *)_100]
	sd	a5,-160(s0)	# tmp127, MEM[(int[8] *)_100]
	addi	a5,s0,-184	#, tmp128,
	li	a3,8		#,
	mv	a2,a5	#, tmp128
	ld	a0,-192(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp129,
	bne	a5,zero,.L24	#, _11,,
# problem97.c:66:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19}, 8));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,66		#,
	lla	a1,.LC5	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L24:
# problem97.c:67:     free(result);
	ld	a0,-192(s0)		#, result
	call	free@plt	#
# problem97.c:69:     result = func0(1, &count);
	addi	a5,s0,-196	#, tmp130,
	mv	a1,a5	#, tmp130
	li	a0,1		#,
	call	func0		#
	sd	a0,-192(s0)	#, result
# problem97.c:70:     assert(count == 0);
	lw	a5,-196(s0)		# count.6_12, count
	beq	a5,zero,.L25	#, count.6_12,,
# problem97.c:70:     assert(count == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,70		#,
	lla	a1,.LC5	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L25:
# problem97.c:71:     free(result);
	ld	a0,-192(s0)		#, result
	call	free@plt	#
# problem97.c:73:     result = func0(18, &count);
	addi	a5,s0,-196	#, tmp131,
	mv	a1,a5	#, tmp131
	li	a0,18		#,
	call	func0		#
	sd	a0,-192(s0)	#, result
# problem97.c:74:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17}, 7));
	lw	a1,-196(s0)		# count.7_13, count
	lla	a5,.LC3	# tmp132,
	ld	a2,0(a5)		# tmp133,
	ld	a3,8(a5)		# tmp134,
	ld	a4,16(a5)		# tmp135,
	sd	a2,-184(s0)	# tmp133, MEM[(int[7] *)_100]
	sd	a3,-176(s0)	# tmp134, MEM[(int[7] *)_100]
	sd	a4,-168(s0)	# tmp135, MEM[(int[7] *)_100]
	lw	a5,24(a5)		# tmp136,
	sw	a5,-160(s0)	# tmp136, MEM[(int[7] *)_100]
	addi	a5,s0,-184	#, tmp137,
	li	a3,7		#,
	mv	a2,a5	#, tmp137
	ld	a0,-192(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp138,
	bne	a5,zero,.L26	#, _14,,
# problem97.c:74:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17}, 7));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,74		#,
	lla	a1,.LC5	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L26:
# problem97.c:75:     free(result);
	ld	a0,-192(s0)		#, result
	call	free@plt	#
# problem97.c:77:     result = func0(47, &count);
	addi	a5,s0,-196	#, tmp139,
	mv	a1,a5	#, tmp139
	li	a0,47		#,
	call	func0		#
	sd	a0,-192(s0)	#, result
# problem97.c:78:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43}, 14));
	lw	a7,-196(s0)		# count.8_15, count
	lla	a5,.LC4	# tmp140,
	ld	a6,0(a5)		# tmp141,
	ld	a0,8(a5)		# tmp142,
	ld	a1,16(a5)		# tmp143,
	ld	a2,24(a5)		# tmp144,
	ld	a3,32(a5)		# tmp145,
	ld	a4,40(a5)		# tmp146,
	ld	a5,48(a5)		# tmp147,
	sd	a6,-184(s0)	# tmp141, MEM[(int[14] *)_100]
	sd	a0,-176(s0)	# tmp142, MEM[(int[14] *)_100]
	sd	a1,-168(s0)	# tmp143, MEM[(int[14] *)_100]
	sd	a2,-160(s0)	# tmp144, MEM[(int[14] *)_100]
	sd	a3,-152(s0)	# tmp145, MEM[(int[14] *)_100]
	sd	a4,-144(s0)	# tmp146, MEM[(int[14] *)_100]
	sd	a5,-136(s0)	# tmp147, MEM[(int[14] *)_100]
	addi	a5,s0,-184	#, tmp148,
	li	a3,14		#,
	mv	a2,a5	#, tmp148
	mv	a1,a7	#, count.8_15
	ld	a0,-192(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp149,
	bne	a5,zero,.L27	#, _16,,
# problem97.c:78:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43}, 14));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,78		#,
	lla	a1,.LC5	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L27:
# problem97.c:79:     free(result);
	ld	a0,-192(s0)		#, result
	call	free@plt	#
# problem97.c:81:     result = func0(101, &count);
	addi	a5,s0,-196	#, tmp150,
	mv	a1,a5	#, tmp150
	li	a0,101		#,
	call	func0		#
	sd	a0,-192(s0)	#, result
# problem97.c:82:     assert(issame(result, count, expected, 25));
	lw	a5,-196(s0)		# count.9_17, count
	addi	a4,s0,-128	#, tmp151,
	li	a3,25		#,
	mv	a2,a4	#, tmp151
	mv	a1,a5	#, count.9_17
	ld	a0,-192(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp152,
	bne	a5,zero,.L28	#, _18,,
# problem97.c:82:     assert(issame(result, count, expected, 25));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,82		#,
	lla	a1,.LC5	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L28:
# problem97.c:83:     free(result);
	ld	a0,-192(s0)		#, result
	call	free@plt	#
# problem97.c:85:     return 0;
	li	a5,0		# _88,
# problem97.c:86: }
	mv	a4,a5	# <retval>, _88
	la	a5,__stack_chk_guard		# tmp154,
	ld	a3, -24(s0)	# tmp157, D.2712
	ld	a5, 0(a5)	# tmp155, __stack_chk_guard
	xor	a5, a3, a5	# tmp155, tmp157
	li	a3, 0	# tmp157
	beq	a5,zero,.L30	#, tmp155,,
	call	__stack_chk_fail@plt	#
.L30:
	mv	a0,a4	#, <retval>
	ld	ra,200(sp)		#,
	ld	s0,192(sp)		#,
	addi	sp,sp,208	#,,
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
