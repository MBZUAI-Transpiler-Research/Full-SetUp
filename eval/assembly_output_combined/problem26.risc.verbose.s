	.file	"problem26.c"
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
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp148, n
	sd	a1,-48(s0)	# size, size
	sw	a5,-36(s0)	# tmp149, n
# problem26.c:5:     int* out = malloc(sizeof(int) * 64);
	li	a0,256		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp150,
	sd	a5,-24(s0)	# tmp150, out
# problem26.c:6:     *size = 0;
	ld	a5,-48(s0)		# tmp151, size
	sw	zero,0(a5)	#, *size_24(D)
# problem26.c:7:     for (int i = 2; i * i <= n; i++) {
	li	a5,2		# tmp152,
	sw	a5,-28(s0)	# tmp152, i
# problem26.c:7:     for (int i = 2; i * i <= n; i++) {
	j	.L2		#
.L4:
# problem26.c:9:             n = n / i;
	lw	a5,-36(s0)		# tmp156, n
	mv	a4,a5	# tmp155, tmp156
	lw	a5,-28(s0)		# tmp158, i
	divw	a5,a4,a5	# tmp157, tmp154, tmp155
	sw	a5,-36(s0)	# tmp154, n
# problem26.c:10:             out[(*size)++] = i;
	ld	a5,-48(s0)		# tmp159, size
	lw	a5,0(a5)		# _1, *size_24(D)
# problem26.c:10:             out[(*size)++] = i;
	addiw	a4,a5,1	#, tmp160, _1
	sext.w	a3,a4	# _3, tmp160
	ld	a4,-48(s0)		# tmp161, size
	sw	a3,0(a4)	# _3, *size_24(D)
# problem26.c:10:             out[(*size)++] = i;
	slli	a5,a5,2	#, _5, _4
	ld	a4,-24(s0)		# tmp162, out
	add	a5,a4,a5	# _5, _6, tmp162
# problem26.c:10:             out[(*size)++] = i;
	lw	a4,-28(s0)		# tmp163, i
	sw	a4,0(a5)	# tmp163, *_6
.L3:
# problem26.c:8:         while (n % i == 0) {
	lw	a5,-36(s0)		# tmp166, n
	mv	a4,a5	# tmp165, tmp166
	lw	a5,-28(s0)		# tmp169, i
	remw	a5,a4,a5	# tmp168, tmp167, tmp165
	sext.w	a5,a5	# _7, tmp167
# problem26.c:8:         while (n % i == 0) {
	beq	a5,zero,.L4	#, _7,,
# problem26.c:7:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-28(s0)		# tmp172, i
	addiw	a5,a5,1	#, tmp170, tmp171
	sw	a5,-28(s0)	# tmp170, i
.L2:
# problem26.c:7:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-28(s0)		# tmp175, i
	mulw	a5,a5,a5	# tmp173, tmp174, tmp174
	sext.w	a4,a5	# _8, tmp173
# problem26.c:7:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-36(s0)		# tmp177, n
	sext.w	a5,a5	# tmp178, tmp176
	bge	a5,a4,.L3	#, tmp178, tmp179,
# problem26.c:13:     if (n > 1) {
	lw	a5,-36(s0)		# tmp181, n
	sext.w	a4,a5	# tmp182, tmp180
	li	a5,1		# tmp183,
	ble	a4,a5,.L6	#, tmp182, tmp183,
# problem26.c:14:         out[(*size)++] = n;
	ld	a5,-48(s0)		# tmp184, size
	lw	a5,0(a5)		# _9, *size_24(D)
# problem26.c:14:         out[(*size)++] = n;
	addiw	a4,a5,1	#, tmp185, _9
	sext.w	a3,a4	# _11, tmp185
	ld	a4,-48(s0)		# tmp186, size
	sw	a3,0(a4)	# _11, *size_24(D)
# problem26.c:14:         out[(*size)++] = n;
	slli	a5,a5,2	#, _13, _12
	ld	a4,-24(s0)		# tmp187, out
	add	a5,a4,a5	# _13, _14, tmp187
# problem26.c:14:         out[(*size)++] = n;
	lw	a4,-36(s0)		# tmp188, n
	sw	a4,0(a5)	# tmp188, *_14
.L6:
# problem26.c:16:     return out;
	ld	a5,-24(s0)		# _30, out
# problem26.c:17: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
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
	mv	a5,a1	# tmp144, a_size
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp146, b_size
	sw	a5,-44(s0)	# tmp145, a_size
	mv	a5,a4	# tmp147, tmp146
	sw	a5,-48(s0)	# tmp147, b_size
# problem26.c:26:     if (a_size != b_size) return 0;
	lw	a5,-44(s0)		# tmp149, a_size
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-48(s0)		# tmp151, b_size
	sext.w	a4,a4	# tmp152, tmp148
	sext.w	a5,a5	# tmp153, tmp150
	beq	a4,a5,.L9	#, tmp152, tmp153,
# problem26.c:26:     if (a_size != b_size) return 0;
	li	a5,0		# _10,
# problem26.c:26:     if (a_size != b_size) return 0;
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
	ld	a4,-40(s0)		# tmp154, a
	add	a5,a4,a5	# _2, _3, tmp154
	lw	a3,0(a5)		# _4, *_3
# problem26.c:28:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp155, b
	add	a5,a4,a5	# _6, _7, tmp155
	lw	a5,0(a5)		# _8, *_7
# problem26.c:28:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp156, _4
	beq	a4,a5,.L12	#, tmp156, tmp157,
# problem26.c:28:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem26.c:28:         if (a[i] != b[i]) return 0;
	j	.L10		#
.L12:
# problem26.c:27:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L11:
# problem26.c:27:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-44(s0)		# tmp164, a_size
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L13	#, tmp165, tmp166,
# problem26.c:30:     return 1;
	li	a5,1		# _10,
.L10:
# problem26.c:31: }
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
.LFB8:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
# problem26.c:33: int main() {
	la	a5,__stack_chk_guard		# tmp152,
	ld	a4, 0(a5)	# tmp204, __stack_chk_guard
	sd	a4, -24(s0)	# tmp204, D.3549
	li	a4, 0	# tmp204
# problem26.c:37:     result = func0(2, &size);
	addi	a5,s0,-60	#, tmp153,
	mv	a1,a5	#, tmp153
	li	a0,2		#,
	call	func0		#
	sd	a0,-56(s0)	#, result
# problem26.c:38:     assert(issame(result, size, (int[]){2}, 1));
	lw	a4,-60(s0)		# size.0_1, size
	li	a5,2		# tmp154,
	sw	a5,-48(s0)	# tmp154, MEM[(int[1] *)_91][0]
	addi	a5,s0,-48	#, tmp155,
	li	a3,1		#,
	mv	a2,a5	#, tmp155
	mv	a1,a4	#, size.0_1
	ld	a0,-56(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp156,
# problem26.c:38:     assert(issame(result, size, (int[]){2}, 1));
	bne	a5,zero,.L15	#, _2,,
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
	addi	a5,s0,-60	#, tmp157,
	mv	a1,a5	#, tmp157
	li	a0,4		#,
	call	func0		#
	sd	a0,-56(s0)	#, result
# problem26.c:42:     assert(issame(result, size, (int[]){2, 2}, 2));
	lw	a4,-60(s0)		# size.1_3, size
	li	a5,2		# tmp158,
	sw	a5,-48(s0)	# tmp158, MEM[(int[2] *)_91][0]
	li	a5,2		# tmp159,
	sw	a5,-44(s0)	# tmp159, MEM[(int[2] *)_91][1]
	addi	a5,s0,-48	#, tmp160,
	li	a3,2		#,
	mv	a2,a5	#, tmp160
	mv	a1,a4	#, size.1_3
	ld	a0,-56(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp161,
# problem26.c:42:     assert(issame(result, size, (int[]){2, 2}, 2));
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
	addi	a5,s0,-60	#, tmp162,
	mv	a1,a5	#, tmp162
	li	a0,8		#,
	call	func0		#
	sd	a0,-56(s0)	#, result
# problem26.c:46:     assert(issame(result, size, (int[]){2, 2, 2}, 3));
	lw	a4,-60(s0)		# size.2_5, size
	li	a5,2		# tmp163,
	sw	a5,-48(s0)	# tmp163, MEM[(int[3] *)_91][0]
	li	a5,2		# tmp164,
	sw	a5,-44(s0)	# tmp164, MEM[(int[3] *)_91][1]
	li	a5,2		# tmp165,
	sw	a5,-40(s0)	# tmp165, MEM[(int[3] *)_91][2]
	addi	a5,s0,-48	#, tmp166,
	li	a3,3		#,
	mv	a2,a5	#, tmp166
	mv	a1,a4	#, size.2_5
	ld	a0,-56(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp167,
# problem26.c:46:     assert(issame(result, size, (int[]){2, 2, 2}, 3));
	bne	a5,zero,.L17	#, _6,,
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
	addi	a5,s0,-60	#, tmp168,
	mv	a1,a5	#, tmp168
	li	a0,57		#,
	call	func0		#
	sd	a0,-56(s0)	#, result
# problem26.c:50:     assert(issame(result, size, (int[]){3, 19}, 2));
	lw	a4,-60(s0)		# size.3_7, size
	li	a5,3		# tmp169,
	sw	a5,-48(s0)	# tmp169, MEM[(int[2] *)_91][0]
	li	a5,19		# tmp170,
	sw	a5,-44(s0)	# tmp170, MEM[(int[2] *)_91][1]
	addi	a5,s0,-48	#, tmp171,
	li	a3,2		#,
	mv	a2,a5	#, tmp171
	mv	a1,a4	#, size.3_7
	ld	a0,-56(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp172,
# problem26.c:50:     assert(issame(result, size, (int[]){3, 19}, 2));
	bne	a5,zero,.L18	#, _8,,
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
	addi	a5,s0,-60	#, tmp173,
	mv	a1,a5	#, tmp173
	li	a5,4096		# tmp174,
	addi	a0,a5,-847	#,, tmp174
	call	func0		#
	sd	a0,-56(s0)	#, result
# problem26.c:54:     assert(issame(result, size, (int[]){3, 3, 19, 19}, 4));
	lw	a1,-60(s0)		# size.4_9, size
	lla	a5,.LC0	# tmp175,
	ld	a4,0(a5)		# tmp176,
	sd	a4,-48(s0)	# tmp176, MEM[(int[4] *)_91]
	ld	a5,8(a5)		# tmp177,
	sd	a5,-40(s0)	# tmp177, MEM[(int[4] *)_91]
	addi	a5,s0,-48	#, tmp178,
	li	a3,4		#,
	mv	a2,a5	#, tmp178
	ld	a0,-56(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp179,
# problem26.c:54:     assert(issame(result, size, (int[]){3, 3, 19, 19}, 4));
	bne	a5,zero,.L19	#, _10,,
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
	addi	a5,s0,-60	#, tmp180,
	mv	a1,a5	#, tmp180
	li	a5,184320		# tmp181,
	addi	a0,a5,873	#,, tmp181
	call	func0		#
	sd	a0,-56(s0)	#, result
# problem26.c:58:     assert(issame(result, size, (int[]){3, 3, 3, 19, 19, 19}, 6));
	lw	a1,-60(s0)		# size.5_11, size
	lla	a5,.LC1	# tmp182,
	ld	a4,0(a5)		# tmp183,
	sd	a4,-48(s0)	# tmp183, MEM[(int[6] *)_91]
	ld	a4,8(a5)		# tmp184,
	sd	a4,-40(s0)	# tmp184, MEM[(int[6] *)_91]
	ld	a5,16(a5)		# tmp185,
	sd	a5,-32(s0)	# tmp185, MEM[(int[6] *)_91]
	addi	a5,s0,-48	#, tmp186,
	li	a3,6		#,
	mv	a2,a5	#, tmp186
	ld	a0,-56(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp187,
# problem26.c:58:     assert(issame(result, size, (int[]){3, 3, 3, 19, 19, 19}, 6));
	bne	a5,zero,.L20	#, _12,,
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
	addi	a5,s0,-60	#, tmp188,
	mv	a1,a5	#, tmp188
	li	a5,20480		# tmp189,
	addi	a0,a5,97	#,, tmp189
	call	func0		#
	sd	a0,-56(s0)	#, result
# problem26.c:62:     assert(issame(result, size, (int[]){3, 19, 19, 19}, 4));
	lw	a1,-60(s0)		# size.6_13, size
	lla	a5,.LC2	# tmp190,
	ld	a4,0(a5)		# tmp191,
	sd	a4,-48(s0)	# tmp191, MEM[(int[4] *)_91]
	ld	a5,8(a5)		# tmp192,
	sd	a5,-40(s0)	# tmp192, MEM[(int[4] *)_91]
	addi	a5,s0,-48	#, tmp193,
	li	a3,4		#,
	mv	a2,a5	#, tmp193
	ld	a0,-56(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp194,
# problem26.c:62:     assert(issame(result, size, (int[]){3, 19, 19, 19}, 4));
	bne	a5,zero,.L21	#, _14,,
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
	addi	a5,s0,-60	#, tmp195,
	mv	a1,a5	#, tmp195
	li	a0,18		#,
	call	func0		#
	sd	a0,-56(s0)	#, result
# problem26.c:66:     assert(issame(result, size, (int[]){2, 3, 3}, 3));
	lw	a4,-60(s0)		# size.7_15, size
	li	a5,2		# tmp196,
	sw	a5,-48(s0)	# tmp196, MEM[(int[3] *)_91][0]
	li	a5,3		# tmp197,
	sw	a5,-44(s0)	# tmp197, MEM[(int[3] *)_91][1]
	li	a5,3		# tmp198,
	sw	a5,-40(s0)	# tmp198, MEM[(int[3] *)_91][2]
	addi	a5,s0,-48	#, tmp199,
	li	a3,3		#,
	mv	a2,a5	#, tmp199
	mv	a1,a4	#, size.7_15
	ld	a0,-56(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp200,
# problem26.c:66:     assert(issame(result, size, (int[]){2, 3, 3}, 3));
	bne	a5,zero,.L22	#, _16,,
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
	la	a5,__stack_chk_guard		# tmp202,
	ld	a3, -24(s0)	# tmp205, D.3549
	ld	a5, 0(a5)	# tmp203, __stack_chk_guard
	xor	a5, a3, a5	# tmp203, tmp205
	li	a3, 0	# tmp205
	beq	a5,zero,.L24	#, tmp203,,
	call	__stack_chk_fail@plt	#
.L24:
	mv	a0,a4	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
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
