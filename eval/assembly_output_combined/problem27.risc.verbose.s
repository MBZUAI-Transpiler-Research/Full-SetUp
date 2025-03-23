	.file	"problem27.c"
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
	addi	sp,sp,-128	#,,
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-104(s0)	# numbers, numbers
	mv	a5,a1	# tmp170, size
	sd	a2,-120(s0)	# new_size, new_size
	sw	a5,-108(s0)	# tmp171, size
# problem27.c:5:     int* out = (int*)malloc(size * sizeof(int));
	lw	a5,-108(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp172,
	sd	a5,-40(s0)	# tmp172, out
# problem27.c:6:     int* has1 = (int*)calloc(size, sizeof(int));
	lw	a5,-108(s0)		# _3, size
	li	a1,4		#,
	mv	a0,a5	#, _3
	call	calloc@plt	#
	mv	a5,a0	# tmp173,
	sd	a5,-32(s0)	# tmp173, has1
# problem27.c:7:     int* has2 = (int*)calloc(size, sizeof(int));
	lw	a5,-108(s0)		# _4, size
	li	a1,4		#,
	mv	a0,a5	#, _4
	call	calloc@plt	#
	mv	a5,a0	# tmp174,
	sd	a5,-24(s0)	# tmp174, has2
# problem27.c:8:     int has1_count = 0;
	sw	zero,-92(s0)	#, has1_count
# problem27.c:9:     int has2_count = 0;
	sw	zero,-88(s0)	#, has2_count
# problem27.c:10:     int out_count = 0;
	sw	zero,-84(s0)	#, out_count
# problem27.c:12:     for (int i = 0; i < size; i++) {
	sw	zero,-80(s0)	#, i
# problem27.c:12:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L14:
# problem27.c:13:         int num = numbers[i];
	lw	a5,-80(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-104(s0)		# tmp175, numbers
	add	a5,a4,a5	# _6, _7, tmp175
# problem27.c:13:         int num = numbers[i];
	lw	a5,0(a5)		# tmp176, *_7
	sw	a5,-44(s0)	# tmp176, num
# problem27.c:14:         int in_has2 = 0;
	sw	zero,-76(s0)	#, in_has2
# problem27.c:16:         for (int j = 0; j < has2_count; j++) {
	sw	zero,-72(s0)	#, j
# problem27.c:16:         for (int j = 0; j < has2_count; j++) {
	j	.L3		#
.L6:
# problem27.c:17:             if (has2[j] == num) {
	lw	a5,-72(s0)		# _8, j
	slli	a5,a5,2	#, _9, _8
	ld	a4,-24(s0)		# tmp177, has2
	add	a5,a4,a5	# _9, _10, tmp177
	lw	a4,0(a5)		# _11, *_10
# problem27.c:17:             if (has2[j] == num) {
	lw	a5,-44(s0)		# tmp179, num
	sext.w	a5,a5	# tmp180, tmp178
	bne	a5,a4,.L4	#, tmp180, tmp181,
# problem27.c:18:                 in_has2 = 1;
	li	a5,1		# tmp182,
	sw	a5,-76(s0)	# tmp182, in_has2
# problem27.c:19:                 break;
	j	.L5		#
.L4:
# problem27.c:16:         for (int j = 0; j < has2_count; j++) {
	lw	a5,-72(s0)		# tmp185, j
	addiw	a5,a5,1	#, tmp183, tmp184
	sw	a5,-72(s0)	# tmp183, j
.L3:
# problem27.c:16:         for (int j = 0; j < has2_count; j++) {
	lw	a5,-72(s0)		# tmp187, j
	mv	a4,a5	# tmp186, tmp187
	lw	a5,-88(s0)		# tmp189, has2_count
	sext.w	a4,a4	# tmp190, tmp186
	sext.w	a5,a5	# tmp191, tmp188
	blt	a4,a5,.L6	#, tmp190, tmp191,
.L5:
# problem27.c:22:         if (in_has2) continue;
	lw	a5,-76(s0)		# tmp193, in_has2
	sext.w	a5,a5	# tmp194, tmp192
	bne	a5,zero,.L23	#, tmp194,,
# problem27.c:24:         int in_has1 = 0;
	sw	zero,-68(s0)	#, in_has1
# problem27.c:25:         for (int j = 0; j < has1_count; j++) {
	sw	zero,-64(s0)	#, j
# problem27.c:25:         for (int j = 0; j < has1_count; j++) {
	j	.L9		#
.L12:
# problem27.c:26:             if (has1[j] == num) {
	lw	a5,-64(s0)		# _12, j
	slli	a5,a5,2	#, _13, _12
	ld	a4,-32(s0)		# tmp195, has1
	add	a5,a4,a5	# _13, _14, tmp195
	lw	a4,0(a5)		# _15, *_14
# problem27.c:26:             if (has1[j] == num) {
	lw	a5,-44(s0)		# tmp197, num
	sext.w	a5,a5	# tmp198, tmp196
	bne	a5,a4,.L10	#, tmp198, tmp199,
# problem27.c:27:                 in_has1 = 1;
	li	a5,1		# tmp200,
	sw	a5,-68(s0)	# tmp200, in_has1
# problem27.c:28:                 break;
	j	.L11		#
.L10:
# problem27.c:25:         for (int j = 0; j < has1_count; j++) {
	lw	a5,-64(s0)		# tmp203, j
	addiw	a5,a5,1	#, tmp201, tmp202
	sw	a5,-64(s0)	# tmp201, j
.L9:
# problem27.c:25:         for (int j = 0; j < has1_count; j++) {
	lw	a5,-64(s0)		# tmp205, j
	mv	a4,a5	# tmp204, tmp205
	lw	a5,-92(s0)		# tmp207, has1_count
	sext.w	a4,a4	# tmp208, tmp204
	sext.w	a5,a5	# tmp209, tmp206
	blt	a4,a5,.L12	#, tmp208, tmp209,
.L11:
# problem27.c:31:         if (in_has1) {
	lw	a5,-68(s0)		# tmp211, in_has1
	sext.w	a5,a5	# tmp212, tmp210
	beq	a5,zero,.L13	#, tmp212,,
# problem27.c:32:             has2[has2_count++] = num;
	lw	a5,-88(s0)		# has2_count.0_16, has2_count
	addiw	a4,a5,1	#, tmp213, has2_count.0_16
	sw	a4,-88(s0)	# tmp213, has2_count
# problem27.c:32:             has2[has2_count++] = num;
	slli	a5,a5,2	#, _18, _17
	ld	a4,-24(s0)		# tmp214, has2
	add	a5,a4,a5	# _18, _19, tmp214
# problem27.c:32:             has2[has2_count++] = num;
	lw	a4,-44(s0)		# tmp215, num
	sw	a4,0(a5)	# tmp215, *_19
	j	.L8		#
.L13:
# problem27.c:34:             has1[has1_count++] = num;
	lw	a5,-92(s0)		# has1_count.1_20, has1_count
	addiw	a4,a5,1	#, tmp216, has1_count.1_20
	sw	a4,-92(s0)	# tmp216, has1_count
# problem27.c:34:             has1[has1_count++] = num;
	slli	a5,a5,2	#, _22, _21
	ld	a4,-32(s0)		# tmp217, has1
	add	a5,a4,a5	# _22, _23, tmp217
# problem27.c:34:             has1[has1_count++] = num;
	lw	a4,-44(s0)		# tmp218, num
	sw	a4,0(a5)	# tmp218, *_23
	j	.L8		#
.L23:
# problem27.c:22:         if (in_has2) continue;
	nop	
.L8:
# problem27.c:12:     for (int i = 0; i < size; i++) {
	lw	a5,-80(s0)		# tmp221, i
	addiw	a5,a5,1	#, tmp219, tmp220
	sw	a5,-80(s0)	# tmp219, i
.L2:
# problem27.c:12:     for (int i = 0; i < size; i++) {
	lw	a5,-80(s0)		# tmp223, i
	mv	a4,a5	# tmp222, tmp223
	lw	a5,-108(s0)		# tmp225, size
	sext.w	a4,a4	# tmp226, tmp222
	sext.w	a5,a5	# tmp227, tmp224
	blt	a4,a5,.L14	#, tmp226, tmp227,
# problem27.c:38:     for (int i = 0; i < size; i++) {
	sw	zero,-60(s0)	#, i
# problem27.c:38:     for (int i = 0; i < size; i++) {
	j	.L15		#
.L21:
# problem27.c:39:         int num = numbers[i];
	lw	a5,-60(s0)		# _24, i
	slli	a5,a5,2	#, _25, _24
	ld	a4,-104(s0)		# tmp228, numbers
	add	a5,a4,a5	# _25, _26, tmp228
# problem27.c:39:         int num = numbers[i];
	lw	a5,0(a5)		# tmp229, *_26
	sw	a5,-48(s0)	# tmp229, num
# problem27.c:40:         int in_has2 = 0;
	sw	zero,-56(s0)	#, in_has2
# problem27.c:41:         for (int j = 0; j < has2_count; j++) {
	sw	zero,-52(s0)	#, j
# problem27.c:41:         for (int j = 0; j < has2_count; j++) {
	j	.L16		#
.L19:
# problem27.c:42:             if (has2[j] == num) {
	lw	a5,-52(s0)		# _27, j
	slli	a5,a5,2	#, _28, _27
	ld	a4,-24(s0)		# tmp230, has2
	add	a5,a4,a5	# _28, _29, tmp230
	lw	a4,0(a5)		# _30, *_29
# problem27.c:42:             if (has2[j] == num) {
	lw	a5,-48(s0)		# tmp232, num
	sext.w	a5,a5	# tmp233, tmp231
	bne	a5,a4,.L17	#, tmp233, tmp234,
# problem27.c:43:                 in_has2 = 1;
	li	a5,1		# tmp235,
	sw	a5,-56(s0)	# tmp235, in_has2
# problem27.c:44:                 break;
	j	.L18		#
.L17:
# problem27.c:41:         for (int j = 0; j < has2_count; j++) {
	lw	a5,-52(s0)		# tmp238, j
	addiw	a5,a5,1	#, tmp236, tmp237
	sw	a5,-52(s0)	# tmp236, j
.L16:
# problem27.c:41:         for (int j = 0; j < has2_count; j++) {
	lw	a5,-52(s0)		# tmp240, j
	mv	a4,a5	# tmp239, tmp240
	lw	a5,-88(s0)		# tmp242, has2_count
	sext.w	a4,a4	# tmp243, tmp239
	sext.w	a5,a5	# tmp244, tmp241
	blt	a4,a5,.L19	#, tmp243, tmp244,
.L18:
# problem27.c:47:         if (!in_has2) {
	lw	a5,-56(s0)		# tmp246, in_has2
	sext.w	a5,a5	# tmp247, tmp245
	bne	a5,zero,.L20	#, tmp247,,
# problem27.c:48:             out[out_count++] = num;
	lw	a5,-84(s0)		# out_count.2_31, out_count
	addiw	a4,a5,1	#, tmp248, out_count.2_31
	sw	a4,-84(s0)	# tmp248, out_count
# problem27.c:48:             out[out_count++] = num;
	slli	a5,a5,2	#, _33, _32
	ld	a4,-40(s0)		# tmp249, out
	add	a5,a4,a5	# _33, _34, tmp249
# problem27.c:48:             out[out_count++] = num;
	lw	a4,-48(s0)		# tmp250, num
	sw	a4,0(a5)	# tmp250, *_34
.L20:
# problem27.c:38:     for (int i = 0; i < size; i++) {
	lw	a5,-60(s0)		# tmp253, i
	addiw	a5,a5,1	#, tmp251, tmp252
	sw	a5,-60(s0)	# tmp251, i
.L15:
# problem27.c:38:     for (int i = 0; i < size; i++) {
	lw	a5,-60(s0)		# tmp255, i
	mv	a4,a5	# tmp254, tmp255
	lw	a5,-108(s0)		# tmp257, size
	sext.w	a4,a4	# tmp258, tmp254
	sext.w	a5,a5	# tmp259, tmp256
	blt	a4,a5,.L21	#, tmp258, tmp259,
# problem27.c:52:     *new_size = out_count;
	ld	a5,-120(s0)		# tmp260, new_size
	lw	a4,-84(s0)		# tmp261, out_count
	sw	a4,0(a5)	# tmp261, *new_size_66(D)
# problem27.c:53:     free(has1);
	ld	a0,-32(s0)		#, has1
	call	free@plt	#
# problem27.c:54:     free(has2);
	ld	a0,-24(s0)		#, has2
	call	free@plt	#
# problem27.c:55:     return out;
	ld	a5,-40(s0)		# _70, out
# problem27.c:56: }
	mv	a0,a5	#, <retval>
	ld	ra,120(sp)		#,
	.cfi_restore 1
	ld	s0,112(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128	#,,
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
# problem27.c:65:     if (a_size != b_size) return 0;
	lw	a5,-44(s0)		# tmp149, a_size
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-48(s0)		# tmp151, b_size
	sext.w	a4,a4	# tmp152, tmp148
	sext.w	a5,a5	# tmp153, tmp150
	beq	a4,a5,.L25	#, tmp152, tmp153,
# problem27.c:65:     if (a_size != b_size) return 0;
	li	a5,0		# _10,
# problem27.c:65:     if (a_size != b_size) return 0;
	j	.L26		#
.L25:
# problem27.c:66:     for (int i = 0; i < a_size; i++) {
	sw	zero,-20(s0)	#, i
# problem27.c:66:     for (int i = 0; i < a_size; i++) {
	j	.L27		#
.L29:
# problem27.c:67:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp154, a
	add	a5,a4,a5	# _2, _3, tmp154
	lw	a3,0(a5)		# _4, *_3
# problem27.c:67:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp155, b
	add	a5,a4,a5	# _6, _7, tmp155
	lw	a5,0(a5)		# _8, *_7
# problem27.c:67:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp156, _4
	beq	a4,a5,.L28	#, tmp156, tmp157,
# problem27.c:67:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem27.c:67:         if (a[i] != b[i]) return 0;
	j	.L26		#
.L28:
# problem27.c:66:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L27:
# problem27.c:66:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-44(s0)		# tmp164, a_size
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L29	#, tmp165, tmp166,
# problem27.c:69:     return 1;
	li	a5,1		# _10,
.L26:
# problem27.c:70: }
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
.LC2:
	.string	"problem27.c"
	.align	3
.LC3:
	.string	"issame(result, new_size, (int[]){}, 0)"
	.align	3
.LC4:
	.string	"issame(result, new_size, (int[]){1, 2, 3, 4}, 4)"
	.align	3
.LC5:
	.string	"issame(result, new_size, (int[]){1, 4, 5}, 3)"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	2
	.word	4
	.word	3
	.word	5
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-112	#,,
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,112	#,,
	.cfi_def_cfa 8, 0
# problem27.c:72: int main() {
	la	a5,__stack_chk_guard		# tmp142,
	ld	a4, 0(a5)	# tmp172, __stack_chk_guard
	sd	a4, -24(s0)	# tmp172, D.3567
	li	a4, 0	# tmp172
# problem27.c:76:     result = func0((int[]){}, 0, &new_size);
	addi	a4,s0,-108	#, tmp143,
	addi	a5,s0,-96	#, tmp144,
	mv	a2,a4	#, tmp143
	li	a1,0		#,
	mv	a0,a5	#, tmp144
	call	func0		#
	sd	a0,-104(s0)	#, result
# problem27.c:77:     assert(issame(result, new_size, (int[]){}, 0));
	lw	a5,-108(s0)		# new_size.3_1, new_size
	addi	a4,s0,-56	#, tmp145,
	li	a3,0		#,
	mv	a2,a4	#, tmp145
	mv	a1,a5	#, new_size.3_1
	ld	a0,-104(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp146,
# problem27.c:77:     assert(issame(result, new_size, (int[]){}, 0));
	bne	a5,zero,.L31	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,77		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L31:
# problem27.c:78:     free(result);
	ld	a0,-104(s0)		#, result
	call	free@plt	#
# problem27.c:80:     result = func0((int[]){1, 2, 3, 4}, 4, &new_size);
	lla	a5,.LC0	# tmp147,
	ld	a4,0(a5)		# tmp148,
	sd	a4,-72(s0)	# tmp148, D.3521
	ld	a5,8(a5)		# tmp149,
	sd	a5,-64(s0)	# tmp149, D.3521
# problem27.c:80:     result = func0((int[]){1, 2, 3, 4}, 4, &new_size);
	addi	a4,s0,-108	#, tmp150,
	addi	a5,s0,-72	#, tmp151,
	mv	a2,a4	#, tmp150
	li	a1,4		#,
	mv	a0,a5	#, tmp151
	call	func0		#
	sd	a0,-104(s0)	#, result
# problem27.c:81:     assert(issame(result, new_size, (int[]){1, 2, 3, 4}, 4));
	lw	a1,-108(s0)		# new_size.4_3, new_size
	lla	a5,.LC0	# tmp152,
	ld	a4,0(a5)		# tmp153,
	sd	a4,-56(s0)	# tmp153, MEM[(int[4] *)_41]
	ld	a5,8(a5)		# tmp154,
	sd	a5,-48(s0)	# tmp154, MEM[(int[4] *)_41]
	addi	a5,s0,-56	#, tmp155,
	li	a3,4		#,
	mv	a2,a5	#, tmp155
	ld	a0,-104(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp156,
# problem27.c:81:     assert(issame(result, new_size, (int[]){1, 2, 3, 4}, 4));
	bne	a5,zero,.L32	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,81		#,
	lla	a1,.LC2	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L32:
# problem27.c:82:     free(result);
	ld	a0,-104(s0)		#, result
	call	free@plt	#
# problem27.c:84:     result = func0((int[]){1, 2, 3, 2, 4, 3, 5}, 7, &new_size);
	lla	a5,.LC1	# tmp157,
	ld	a2,0(a5)		# tmp158,
	ld	a3,8(a5)		# tmp159,
	ld	a4,16(a5)		# tmp160,
	sd	a2,-56(s0)	# tmp158, MEM[(int[7] *)_41]
	sd	a3,-48(s0)	# tmp159, MEM[(int[7] *)_41]
	sd	a4,-40(s0)	# tmp160, MEM[(int[7] *)_41]
	lw	a5,24(a5)		# tmp161,
	sw	a5,-32(s0)	# tmp161, MEM[(int[7] *)_41]
# problem27.c:84:     result = func0((int[]){1, 2, 3, 2, 4, 3, 5}, 7, &new_size);
	addi	a4,s0,-108	#, tmp162,
	addi	a5,s0,-56	#, tmp163,
	mv	a2,a4	#, tmp162
	li	a1,7		#,
	mv	a0,a5	#, tmp163
	call	func0		#
	sd	a0,-104(s0)	#, result
# problem27.c:85:     assert(issame(result, new_size, (int[]){1, 4, 5}, 3));
	lw	a4,-108(s0)		# new_size.5_5, new_size
	li	a5,1		# tmp164,
	sw	a5,-88(s0)	# tmp164, D.3526[0]
	li	a5,4		# tmp165,
	sw	a5,-84(s0)	# tmp165, D.3526[1]
	li	a5,5		# tmp166,
	sw	a5,-80(s0)	# tmp166, D.3526[2]
	addi	a5,s0,-88	#, tmp167,
	li	a3,3		#,
	mv	a2,a5	#, tmp167
	mv	a1,a4	#, new_size.5_5
	ld	a0,-104(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp168,
# problem27.c:85:     assert(issame(result, new_size, (int[]){1, 4, 5}, 3));
	bne	a5,zero,.L33	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,85		#,
	lla	a1,.LC2	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L33:
# problem27.c:86:     free(result);
	ld	a0,-104(s0)		#, result
	call	free@plt	#
# problem27.c:88:     return 0;
	li	a5,0		# _32,
# problem27.c:89: }
	mv	a4,a5	# <retval>, _32
	la	a5,__stack_chk_guard		# tmp170,
	ld	a3, -24(s0)	# tmp173, D.3567
	ld	a5, 0(a5)	# tmp171, __stack_chk_guard
	xor	a5, a3, a5	# tmp171, tmp173
	li	a3, 0	# tmp173
	beq	a5,zero,.L35	#, tmp171,,
	call	__stack_chk_fail@plt	#
.L35:
	mv	a0,a4	#, <retval>
	ld	ra,104(sp)		#,
	.cfi_restore 1
	ld	s0,96(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112	#,,
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
