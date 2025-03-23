	.file	"problem97.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp150, n
	sd	a1,-64(s0)	# count, count
	sw	a5,-52(s0)	# tmp151, n
# problem97.c:5:     int *out = malloc(n * sizeof(int));
	lw	a5,-52(s0)		# _1, n
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp152,
	sd	a5,-24(s0)	# tmp152, out
# problem97.c:6:     *count = 0;
	ld	a5,-64(s0)		# tmp153, count
	sw	zero,0(a5)	#, *count_24(D)
# problem97.c:9:     for (i = 2; i < n; i++) {
	li	a5,2		# tmp154,
	sw	a5,-40(s0)	# tmp154, i
# problem97.c:9:     for (i = 2; i < n; i++) {
	j	.L2		#
.L9:
# problem97.c:10:         isp = 1;
	li	a5,1		# tmp155,
	sw	a5,-32(s0)	# tmp155, isp
# problem97.c:11:         for (j = 0; j < *count; j++) {
	sw	zero,-36(s0)	#, j
# problem97.c:11:         for (j = 0; j < *count; j++) {
	j	.L3		#
.L7:
# problem97.c:12:             k = out[j];
	lw	a5,-36(s0)		# _3, j
	slli	a5,a5,2	#, _4, _3
	ld	a4,-24(s0)		# tmp156, out
	add	a5,a4,a5	# _4, _5, tmp156
# problem97.c:12:             k = out[j];
	lw	a5,0(a5)		# tmp157, *_5
	sw	a5,-28(s0)	# tmp157, k
# problem97.c:13:             if (k * k > i) break;
	lw	a5,-28(s0)		# tmp160, k
	mulw	a5,a5,a5	# tmp158, tmp159, tmp159
	sext.w	a4,a5	# _6, tmp158
# problem97.c:13:             if (k * k > i) break;
	lw	a5,-40(s0)		# tmp162, i
	sext.w	a5,a5	# tmp163, tmp161
	blt	a5,a4,.L11	#, tmp163, tmp164,
# problem97.c:14:             if (i % k == 0) {
	lw	a5,-40(s0)		# tmp167, i
	mv	a4,a5	# tmp166, tmp167
	lw	a5,-28(s0)		# tmp170, k
	remw	a5,a4,a5	# tmp169, tmp168, tmp166
	sext.w	a5,a5	# _7, tmp168
# problem97.c:14:             if (i % k == 0) {
	bne	a5,zero,.L6	#, _7,,
# problem97.c:15:                 isp = 0;
	sw	zero,-32(s0)	#, isp
# problem97.c:16:                 break;
	j	.L5		#
.L6:
# problem97.c:11:         for (j = 0; j < *count; j++) {
	lw	a5,-36(s0)		# tmp173, j
	addiw	a5,a5,1	#, tmp171, tmp172
	sw	a5,-36(s0)	# tmp171, j
.L3:
# problem97.c:11:         for (j = 0; j < *count; j++) {
	ld	a5,-64(s0)		# tmp174, count
	lw	a4,0(a5)		# _8, *count_24(D)
# problem97.c:11:         for (j = 0; j < *count; j++) {
	lw	a5,-36(s0)		# tmp176, j
	sext.w	a5,a5	# tmp177, tmp175
	blt	a5,a4,.L7	#, tmp177, tmp178,
	j	.L5		#
.L11:
# problem97.c:13:             if (k * k > i) break;
	nop	
.L5:
# problem97.c:19:         if (isp) {
	lw	a5,-32(s0)		# tmp180, isp
	sext.w	a5,a5	# tmp181, tmp179
	beq	a5,zero,.L8	#, tmp181,,
# problem97.c:20:             out[*count] = i;
	ld	a5,-64(s0)		# tmp182, count
	lw	a5,0(a5)		# _9, *count_24(D)
# problem97.c:20:             out[*count] = i;
	slli	a5,a5,2	#, _11, _10
	ld	a4,-24(s0)		# tmp183, out
	add	a5,a4,a5	# _11, _12, tmp183
# problem97.c:20:             out[*count] = i;
	lw	a4,-40(s0)		# tmp184, i
	sw	a4,0(a5)	# tmp184, *_12
# problem97.c:21:             (*count)++;
	ld	a5,-64(s0)		# tmp185, count
	lw	a5,0(a5)		# _13, *count_24(D)
# problem97.c:21:             (*count)++;
	addiw	a5,a5,1	#, tmp186, _13
	sext.w	a4,a5	# _14, tmp186
	ld	a5,-64(s0)		# tmp187, count
	sw	a4,0(a5)	# _14, *count_24(D)
.L8:
# problem97.c:9:     for (i = 2; i < n; i++) {
	lw	a5,-40(s0)		# tmp190, i
	addiw	a5,a5,1	#, tmp188, tmp189
	sw	a5,-40(s0)	# tmp188, i
.L2:
# problem97.c:9:     for (i = 2; i < n; i++) {
	lw	a5,-40(s0)		# tmp192, i
	mv	a4,a5	# tmp191, tmp192
	lw	a5,-52(s0)		# tmp194, n
	sext.w	a4,a4	# tmp195, tmp191
	sext.w	a5,a5	# tmp196, tmp193
	blt	a4,a5,.L9	#, tmp195, tmp196,
# problem97.c:24:     return out;
	ld	a5,-24(s0)		# _27, out
# problem97.c:25: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# a, a
	mv	a5,a1	# tmp144, a_count
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp146, b_count
	sw	a5,-44(s0)	# tmp145, a_count
	mv	a5,a4	# tmp147, tmp146
	sw	a5,-48(s0)	# tmp147, b_count
# problem97.c:34:     if (a_count != b_count) return 0;
	lw	a5,-44(s0)		# tmp149, a_count
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-48(s0)		# tmp151, b_count
	sext.w	a4,a4	# tmp152, tmp148
	sext.w	a5,a5	# tmp153, tmp150
	beq	a4,a5,.L13	#, tmp152, tmp153,
# problem97.c:34:     if (a_count != b_count) return 0;
	li	a5,0		# _10,
# problem97.c:34:     if (a_count != b_count) return 0;
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
	ld	a4,-40(s0)		# tmp154, a
	add	a5,a4,a5	# _2, _3, tmp154
	lw	a3,0(a5)		# _4, *_3
# problem97.c:36:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp155, b
	add	a5,a4,a5	# _6, _7, tmp155
	lw	a5,0(a5)		# _8, *_7
# problem97.c:36:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp156, _4
	beq	a4,a5,.L16	#, tmp156, tmp157,
# problem97.c:36:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem97.c:36:         if (a[i] != b[i]) return 0;
	j	.L14		#
.L16:
# problem97.c:35:     for (int i = 0; i < a_count; i++) {
	lw	a5,-20(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L15:
# problem97.c:35:     for (int i = 0; i < a_count; i++) {
	lw	a5,-20(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-44(s0)		# tmp164, a_count
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L17	#, tmp165, tmp166,
# problem97.c:38:     return 1;
	li	a5,1		# _10,
.L14:
# problem97.c:39: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
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
.LFB8:
	.cfi_startproc
	addi	sp,sp,-208	#,,
	.cfi_def_cfa_offset 208
	sd	ra,200(sp)	#,
	sd	s0,192(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,208	#,,
	.cfi_def_cfa 8, 0
# problem97.c:41: int main() {
	la	a5,__stack_chk_guard		# tmp154,
	ld	a4, 0(a5)	# tmp218, __stack_chk_guard
	sd	a4, -24(s0)	# tmp218, D.3564
	li	a4, 0	# tmp218
# problem97.c:43:     int expected[] = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97};
	lla	a4,.LC0	# tmp155,
	addi	a5,s0,-128	#, tmp156,
	mv	a3,a4	# tmp157, tmp155
	li	a4,100		# tmp158,
	mv	a2,a4	#, tmp158
	mv	a1,a3	#, tmp157
	mv	a0,a5	#, tmp156
	call	memcpy@plt	#
# problem97.c:45:     int *result = func0(5, &count);
	addi	a5,s0,-196	#, tmp160,
	mv	a1,a5	#, tmp160
	li	a0,5		#,
	call	func0		#
	sd	a0,-192(s0)	#, result
# problem97.c:46:     assert(issame(result, count, (int[]){2, 3}, 2));
	lw	a4,-196(s0)		# count.0_1, count
	li	a5,2		# tmp161,
	sw	a5,-184(s0)	# tmp161, MEM[(int[2] *)_100][0]
	li	a5,3		# tmp162,
	sw	a5,-180(s0)	# tmp162, MEM[(int[2] *)_100][1]
	addi	a5,s0,-184	#, tmp163,
	li	a3,2		#,
	mv	a2,a5	#, tmp163
	mv	a1,a4	#, count.0_1
	ld	a0,-192(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp164,
# problem97.c:46:     assert(issame(result, count, (int[]){2, 3}, 2));
	bne	a5,zero,.L19	#, _2,,
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
	addi	a5,s0,-196	#, tmp165,
	mv	a1,a5	#, tmp165
	li	a0,6		#,
	call	func0		#
	sd	a0,-192(s0)	#, result
# problem97.c:50:     assert(issame(result, count, (int[]){2, 3, 5}, 3));
	lw	a4,-196(s0)		# count.1_3, count
	li	a5,2		# tmp166,
	sw	a5,-184(s0)	# tmp166, MEM[(int[3] *)_100][0]
	li	a5,3		# tmp167,
	sw	a5,-180(s0)	# tmp167, MEM[(int[3] *)_100][1]
	li	a5,5		# tmp168,
	sw	a5,-176(s0)	# tmp168, MEM[(int[3] *)_100][2]
	addi	a5,s0,-184	#, tmp169,
	li	a3,3		#,
	mv	a2,a5	#, tmp169
	mv	a1,a4	#, count.1_3
	ld	a0,-192(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp170,
# problem97.c:50:     assert(issame(result, count, (int[]){2, 3, 5}, 3));
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
	addi	a5,s0,-196	#, tmp171,
	mv	a1,a5	#, tmp171
	li	a0,7		#,
	call	func0		#
	sd	a0,-192(s0)	#, result
# problem97.c:54:     assert(issame(result, count, (int[]){2, 3, 5}, 3));
	lw	a4,-196(s0)		# count.2_5, count
	li	a5,2		# tmp172,
	sw	a5,-184(s0)	# tmp172, MEM[(int[3] *)_100][0]
	li	a5,3		# tmp173,
	sw	a5,-180(s0)	# tmp173, MEM[(int[3] *)_100][1]
	li	a5,5		# tmp174,
	sw	a5,-176(s0)	# tmp174, MEM[(int[3] *)_100][2]
	addi	a5,s0,-184	#, tmp175,
	li	a3,3		#,
	mv	a2,a5	#, tmp175
	mv	a1,a4	#, count.2_5
	ld	a0,-192(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp176,
# problem97.c:54:     assert(issame(result, count, (int[]){2, 3, 5}, 3));
	bne	a5,zero,.L21	#, _6,,
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
	addi	a5,s0,-196	#, tmp177,
	mv	a1,a5	#, tmp177
	li	a0,10		#,
	call	func0		#
	sd	a0,-192(s0)	#, result
# problem97.c:58:     assert(issame(result, count, (int[]){2, 3, 5, 7}, 4));
	lw	a1,-196(s0)		# count.3_7, count
	lla	a5,.LC1	# tmp178,
	ld	a4,0(a5)		# tmp179,
	sd	a4,-184(s0)	# tmp179, MEM[(int[4] *)_100]
	ld	a5,8(a5)		# tmp180,
	sd	a5,-176(s0)	# tmp180, MEM[(int[4] *)_100]
	addi	a5,s0,-184	#, tmp181,
	li	a3,4		#,
	mv	a2,a5	#, tmp181
	ld	a0,-192(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp182,
# problem97.c:58:     assert(issame(result, count, (int[]){2, 3, 5, 7}, 4));
	bne	a5,zero,.L22	#, _8,,
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
	addi	a5,s0,-196	#, tmp183,
	mv	a1,a5	#, tmp183
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
	addi	a5,s0,-196	#, tmp184,
	mv	a1,a5	#, tmp184
	li	a0,22		#,
	call	func0		#
	sd	a0,-192(s0)	#, result
# problem97.c:66:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19}, 8));
	lw	a1,-196(s0)		# count.5_10, count
	lla	a5,.LC2	# tmp185,
	ld	a2,0(a5)		# tmp186,
	ld	a3,8(a5)		# tmp187,
	ld	a4,16(a5)		# tmp188,
	ld	a5,24(a5)		# tmp189,
	sd	a2,-184(s0)	# tmp186, MEM[(int[8] *)_100]
	sd	a3,-176(s0)	# tmp187, MEM[(int[8] *)_100]
	sd	a4,-168(s0)	# tmp188, MEM[(int[8] *)_100]
	sd	a5,-160(s0)	# tmp189, MEM[(int[8] *)_100]
	addi	a5,s0,-184	#, tmp190,
	li	a3,8		#,
	mv	a2,a5	#, tmp190
	ld	a0,-192(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp191,
# problem97.c:66:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19}, 8));
	bne	a5,zero,.L24	#, _11,,
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
	addi	a5,s0,-196	#, tmp192,
	mv	a1,a5	#, tmp192
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
	addi	a5,s0,-196	#, tmp193,
	mv	a1,a5	#, tmp193
	li	a0,18		#,
	call	func0		#
	sd	a0,-192(s0)	#, result
# problem97.c:74:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17}, 7));
	lw	a1,-196(s0)		# count.7_13, count
	lla	a5,.LC3	# tmp194,
	ld	a2,0(a5)		# tmp195,
	ld	a3,8(a5)		# tmp196,
	ld	a4,16(a5)		# tmp197,
	sd	a2,-184(s0)	# tmp195, MEM[(int[7] *)_100]
	sd	a3,-176(s0)	# tmp196, MEM[(int[7] *)_100]
	sd	a4,-168(s0)	# tmp197, MEM[(int[7] *)_100]
	lw	a5,24(a5)		# tmp198,
	sw	a5,-160(s0)	# tmp198, MEM[(int[7] *)_100]
	addi	a5,s0,-184	#, tmp199,
	li	a3,7		#,
	mv	a2,a5	#, tmp199
	ld	a0,-192(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp200,
# problem97.c:74:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17}, 7));
	bne	a5,zero,.L26	#, _14,,
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
	addi	a5,s0,-196	#, tmp201,
	mv	a1,a5	#, tmp201
	li	a0,47		#,
	call	func0		#
	sd	a0,-192(s0)	#, result
# problem97.c:78:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43}, 14));
	lw	a7,-196(s0)		# count.8_15, count
	lla	a5,.LC4	# tmp202,
	ld	a6,0(a5)		# tmp203,
	ld	a0,8(a5)		# tmp204,
	ld	a1,16(a5)		# tmp205,
	ld	a2,24(a5)		# tmp206,
	ld	a3,32(a5)		# tmp207,
	ld	a4,40(a5)		# tmp208,
	ld	a5,48(a5)		# tmp209,
	sd	a6,-184(s0)	# tmp203, MEM[(int[14] *)_100]
	sd	a0,-176(s0)	# tmp204, MEM[(int[14] *)_100]
	sd	a1,-168(s0)	# tmp205, MEM[(int[14] *)_100]
	sd	a2,-160(s0)	# tmp206, MEM[(int[14] *)_100]
	sd	a3,-152(s0)	# tmp207, MEM[(int[14] *)_100]
	sd	a4,-144(s0)	# tmp208, MEM[(int[14] *)_100]
	sd	a5,-136(s0)	# tmp209, MEM[(int[14] *)_100]
	addi	a5,s0,-184	#, tmp210,
	li	a3,14		#,
	mv	a2,a5	#, tmp210
	mv	a1,a7	#, count.8_15
	ld	a0,-192(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp211,
# problem97.c:78:     assert(issame(result, count, (int[]){2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43}, 14));
	bne	a5,zero,.L27	#, _16,,
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
	addi	a5,s0,-196	#, tmp212,
	mv	a1,a5	#, tmp212
	li	a0,101		#,
	call	func0		#
	sd	a0,-192(s0)	#, result
# problem97.c:82:     assert(issame(result, count, expected, 25));
	lw	a5,-196(s0)		# count.9_17, count
	addi	a4,s0,-128	#, tmp213,
	li	a3,25		#,
	mv	a2,a4	#, tmp213
	mv	a1,a5	#, count.9_17
	ld	a0,-192(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp214,
# problem97.c:82:     assert(issame(result, count, expected, 25));
	bne	a5,zero,.L28	#, _18,,
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
	la	a5,__stack_chk_guard		# tmp216,
	ld	a3, -24(s0)	# tmp219, D.3564
	ld	a5, 0(a5)	# tmp217, __stack_chk_guard
	xor	a5, a3, a5	# tmp217, tmp219
	li	a3, 0	# tmp219
	beq	a5,zero,.L30	#, tmp217,,
	call	__stack_chk_fail@plt	#
.L30:
	mv	a0,a4	#, <retval>
	ld	ra,200(sp)		#,
	.cfi_restore 1
	ld	s0,192(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 208
	addi	sp,sp,208	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
