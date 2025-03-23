	.file	"problem124.c"
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
	mv	a5,a0	# tmp164, n
	sd	a1,-48(s0)	# out, out
	sd	a2,-56(s0)	# size, size
	sw	a5,-36(s0)	# tmp165, n
# problem124.c:5:     int capacity = 10;
	li	a5,10		# tmp166,
	sw	a5,-32(s0)	# tmp166, capacity
# problem124.c:6:     *size = 1;
	ld	a5,-56(s0)		# tmp167, size
	li	a4,1		# tmp168,
	sw	a4,0(a5)	# tmp168, *size_45(D)
# problem124.c:7:     out[0] = 1;
	ld	a5,-48(s0)		# tmp169, out
	li	a4,1		# tmp170,
	sw	a4,0(a5)	# tmp170, *out_47(D)
# problem124.c:9:     while (n != 1) {
	j	.L2		#
.L6:
# problem124.c:10:         if (n % 2 == 1) {
	lw	a5,-36(s0)		# tmp173, n
	mv	a4,a5	# tmp172, tmp173
	sraiw	a5,a4,31	#, tmp174, tmp172
	srliw	a5,a5,31	#, tmp175, tmp174
	addw	a4,a4,a5	# tmp175, tmp176, tmp172
	andi	a4,a4,1	#, tmp177, tmp176
	subw	a5,a4,a5	# tmp178, tmp177, tmp175
	sext.w	a5,a5	# _1, tmp178
# problem124.c:10:         if (n % 2 == 1) {
	mv	a4,a5	# tmp179, _1
	li	a5,1		# tmp180,
	bne	a4,a5,.L3	#, tmp179, tmp180,
# problem124.c:11:             if (*size >= capacity) {
	ld	a5,-56(s0)		# tmp181, size
	lw	a4,0(a5)		# _2, *size_45(D)
# problem124.c:11:             if (*size >= capacity) {
	lw	a5,-32(s0)		# tmp183, capacity
	sext.w	a5,a5	# tmp184, tmp182
	bgt	a5,a4,.L4	#, tmp184, tmp185,
# problem124.c:12:                 capacity *= 2;
	lw	a5,-32(s0)		# tmp188, capacity
	slliw	a5,a5,1	#, tmp186, tmp187
	sw	a5,-32(s0)	# tmp186, capacity
# problem124.c:13:                 out = (int*)realloc(out, capacity * sizeof(int));
	lw	a5,-32(s0)		# _3, capacity
	slli	a5,a5,2	#, _4, _3
	mv	a1,a5	#, _4
	ld	a0,-48(s0)		#, out
	call	realloc@plt	#
	sd	a0,-48(s0)	#, out
.L4:
# problem124.c:15:             out[(*size)++] = n;
	ld	a5,-56(s0)		# tmp189, size
	lw	a5,0(a5)		# _5, *size_45(D)
# problem124.c:15:             out[(*size)++] = n;
	addiw	a4,a5,1	#, tmp190, _5
	sext.w	a3,a4	# _7, tmp190
	ld	a4,-56(s0)		# tmp191, size
	sw	a3,0(a4)	# _7, *size_45(D)
# problem124.c:15:             out[(*size)++] = n;
	slli	a5,a5,2	#, _9, _8
	ld	a4,-48(s0)		# tmp192, out
	add	a5,a4,a5	# _9, _10, tmp192
# problem124.c:15:             out[(*size)++] = n;
	lw	a4,-36(s0)		# tmp193, n
	sw	a4,0(a5)	# tmp193, *_10
# problem124.c:16:             n = n * 3 + 1;
	lw	a5,-36(s0)		# tmp195, n
	mv	a4,a5	# tmp194, tmp195
	mv	a5,a4	# tmp196, tmp194
	slliw	a5,a5,1	#, tmp197, tmp196
	addw	a5,a5,a4	# tmp194, tmp196, tmp196
	sext.w	a5,a5	# _11, tmp196
# problem124.c:16:             n = n * 3 + 1;
	addiw	a5,a5,1	#, tmp198, _11
	sw	a5,-36(s0)	# tmp198, n
	j	.L2		#
.L3:
# problem124.c:18:             n = n / 2;
	lw	a5,-36(s0)		# tmp201, n
	srliw	a4,a5,31	#, tmp202, tmp200
	addw	a5,a4,a5	# tmp200, tmp203, tmp202
	sraiw	a5,a5,1	#, tmp204, tmp203
	sw	a5,-36(s0)	# tmp204, n
.L2:
# problem124.c:9:     while (n != 1) {
	lw	a5,-36(s0)		# tmp206, n
	sext.w	a4,a5	# tmp207, tmp205
	li	a5,1		# tmp208,
	bne	a4,a5,.L6	#, tmp207, tmp208,
# problem124.c:22:     for (int i = 1; i < *size; i++) {
	li	a5,1		# tmp209,
	sw	a5,-28(s0)	# tmp209, i
# problem124.c:22:     for (int i = 1; i < *size; i++) {
	j	.L7		#
.L11:
# problem124.c:23:         int key = out[i];
	lw	a5,-28(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-48(s0)		# tmp210, out
	add	a5,a4,a5	# _13, _14, tmp210
# problem124.c:23:         int key = out[i];
	lw	a5,0(a5)		# tmp211, *_14
	sw	a5,-20(s0)	# tmp211, key
# problem124.c:24:         int j = i - 1;
	lw	a5,-28(s0)		# tmp214, i
	addiw	a5,a5,-1	#, tmp212, tmp213
	sw	a5,-24(s0)	# tmp212, j
# problem124.c:26:         while (j >= 0 && out[j] > key) {
	j	.L8		#
.L10:
# problem124.c:27:             out[j + 1] = out[j];
	lw	a5,-24(s0)		# _15, j
	slli	a5,a5,2	#, _16, _15
	ld	a4,-48(s0)		# tmp215, out
	add	a4,a4,a5	# _16, _17, tmp215
# problem124.c:27:             out[j + 1] = out[j];
	lw	a5,-24(s0)		# _18, j
	addi	a5,a5,1	#, _19, _18
	slli	a5,a5,2	#, _20, _19
	ld	a3,-48(s0)		# tmp216, out
	add	a5,a3,a5	# _20, _21, tmp216
# problem124.c:27:             out[j + 1] = out[j];
	lw	a4,0(a4)		# _22, *_17
# problem124.c:27:             out[j + 1] = out[j];
	sw	a4,0(a5)	# _22, *_21
# problem124.c:28:             j = j - 1;
	lw	a5,-24(s0)		# tmp219, j
	addiw	a5,a5,-1	#, tmp217, tmp218
	sw	a5,-24(s0)	# tmp217, j
.L8:
# problem124.c:26:         while (j >= 0 && out[j] > key) {
	lw	a5,-24(s0)		# tmp221, j
	sext.w	a5,a5	# tmp222, tmp220
	blt	a5,zero,.L9	#, tmp222,,
# problem124.c:26:         while (j >= 0 && out[j] > key) {
	lw	a5,-24(s0)		# _23, j
	slli	a5,a5,2	#, _24, _23
	ld	a4,-48(s0)		# tmp223, out
	add	a5,a4,a5	# _24, _25, tmp223
	lw	a4,0(a5)		# _26, *_25
# problem124.c:26:         while (j >= 0 && out[j] > key) {
	lw	a5,-20(s0)		# tmp225, key
	sext.w	a5,a5	# tmp226, tmp224
	blt	a5,a4,.L10	#, tmp226, tmp227,
.L9:
# problem124.c:30:         out[j + 1] = key;
	lw	a5,-24(s0)		# _27, j
	addi	a5,a5,1	#, _28, _27
	slli	a5,a5,2	#, _29, _28
	ld	a4,-48(s0)		# tmp228, out
	add	a5,a4,a5	# _29, _30, tmp228
# problem124.c:30:         out[j + 1] = key;
	lw	a4,-20(s0)		# tmp229, key
	sw	a4,0(a5)	# tmp229, *_30
# problem124.c:22:     for (int i = 1; i < *size; i++) {
	lw	a5,-28(s0)		# tmp232, i
	addiw	a5,a5,1	#, tmp230, tmp231
	sw	a5,-28(s0)	# tmp230, i
.L7:
# problem124.c:22:     for (int i = 1; i < *size; i++) {
	ld	a5,-56(s0)		# tmp233, size
	lw	a4,0(a5)		# _31, *size_45(D)
# problem124.c:22:     for (int i = 1; i < *size; i++) {
	lw	a5,-28(s0)		# tmp235, i
	sext.w	a5,a5	# tmp236, tmp234
	blt	a5,a4,.L11	#, tmp236, tmp237,
# problem124.c:32: }
	nop	
	nop	
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
	mv	a5,a1	# tmp144, size_a
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp146, size_b
	sw	a5,-44(s0)	# tmp145, size_a
	mv	a5,a4	# tmp147, tmp146
	sw	a5,-48(s0)	# tmp147, size_b
# problem124.c:40:     if (size_a != size_b) return 0;
	lw	a5,-44(s0)		# tmp149, size_a
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-48(s0)		# tmp151, size_b
	sext.w	a4,a4	# tmp152, tmp148
	sext.w	a5,a5	# tmp153, tmp150
	beq	a4,a5,.L13	#, tmp152, tmp153,
# problem124.c:40:     if (size_a != size_b) return 0;
	li	a5,0		# _10,
# problem124.c:40:     if (size_a != size_b) return 0;
	j	.L14		#
.L13:
# problem124.c:41:     for (int i = 0; i < size_a; i++) {
	sw	zero,-20(s0)	#, i
# problem124.c:41:     for (int i = 0; i < size_a; i++) {
	j	.L15		#
.L17:
# problem124.c:42:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp154, a
	add	a5,a4,a5	# _2, _3, tmp154
	lw	a3,0(a5)		# _4, *_3
# problem124.c:42:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp155, b
	add	a5,a4,a5	# _6, _7, tmp155
	lw	a5,0(a5)		# _8, *_7
# problem124.c:42:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp156, _4
	beq	a4,a5,.L16	#, tmp156, tmp157,
# problem124.c:42:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem124.c:42:         if (a[i] != b[i]) return 0;
	j	.L14		#
.L16:
# problem124.c:41:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L15:
# problem124.c:41:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-44(s0)		# tmp164, size_a
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L17	#, tmp165, tmp166,
# problem124.c:44:     return 1;
	li	a5,1		# _10,
.L14:
# problem124.c:45: }
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
.LFB8:
	.cfi_startproc
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
# problem124.c:47: int main() {
	la	a5,__stack_chk_guard		# tmp144,
	ld	a4, 0(a5)	# tmp174, __stack_chk_guard
	sd	a4, -24(s0)	# tmp174, D.3321
	li	a4, 0	# tmp174
# problem124.c:52:     int expected1[] = {1, 5, 7, 11, 13, 17};
	lla	a5,.LC0	# tmp145,
	ld	a4,0(a5)		# tmp146,
	sd	a4,-48(s0)	# tmp146, expected1
	ld	a4,8(a5)		# tmp147,
	sd	a4,-40(s0)	# tmp147, expected1
	ld	a5,16(a5)		# tmp148,
	sd	a5,-32(s0)	# tmp148, expected1
# problem124.c:53:     result = (int*)malloc(100 * sizeof(int));
	li	a0,400		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp149,
	sd	a5,-88(s0)	# tmp149, result
# problem124.c:54:     func0(14, result, &size);
	addi	a5,s0,-92	#, tmp150,
	mv	a2,a5	#, tmp150
	ld	a1,-88(s0)		#, result
	li	a0,14		#,
	call	func0		#
# problem124.c:55:     assert(issame(result, size, expected1, 6));
	lw	a5,-92(s0)		# size.0_1, size
	addi	a4,s0,-48	#, tmp151,
	li	a3,6		#,
	mv	a2,a4	#, tmp151
	mv	a1,a5	#, size.0_1
	ld	a0,-88(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp152,
# problem124.c:55:     assert(issame(result, size, expected1, 6));
	bne	a5,zero,.L19	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,55		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L19:
# problem124.c:56:     free(result);
	ld	a0,-88(s0)		#, result
	call	free@plt	#
# problem124.c:59:     int expected2[] = {1, 5};
	li	a5,1		# tmp153,
	sw	a5,-72(s0)	# tmp153, expected2[0]
	li	a5,5		# tmp154,
	sw	a5,-68(s0)	# tmp154, expected2[1]
# problem124.c:60:     result = (int*)malloc(100 * sizeof(int));
	li	a0,400		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp155,
	sd	a5,-88(s0)	# tmp155, result
# problem124.c:61:     func0(5, result, &size);
	addi	a5,s0,-92	#, tmp156,
	mv	a2,a5	#, tmp156
	ld	a1,-88(s0)		#, result
	li	a0,5		#,
	call	func0		#
# problem124.c:62:     assert(issame(result, size, expected2, 2));
	lw	a5,-92(s0)		# size.1_3, size
	addi	a4,s0,-72	#, tmp157,
	li	a3,2		#,
	mv	a2,a4	#, tmp157
	mv	a1,a5	#, size.1_3
	ld	a0,-88(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp158,
# problem124.c:62:     assert(issame(result, size, expected2, 2));
	bne	a5,zero,.L20	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,62		#,
	lla	a1,.LC1	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L20:
# problem124.c:63:     free(result);
	ld	a0,-88(s0)		#, result
	call	free@plt	#
# problem124.c:66:     int expected3[] = {1, 3, 5};
	li	a5,1		# tmp159,
	sw	a5,-64(s0)	# tmp159, expected3[0]
	li	a5,3		# tmp160,
	sw	a5,-60(s0)	# tmp160, expected3[1]
	li	a5,5		# tmp161,
	sw	a5,-56(s0)	# tmp161, expected3[2]
# problem124.c:67:     result = (int*)malloc(100 * sizeof(int));
	li	a0,400		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp162,
	sd	a5,-88(s0)	# tmp162, result
# problem124.c:68:     func0(12, result, &size);
	addi	a5,s0,-92	#, tmp163,
	mv	a2,a5	#, tmp163
	ld	a1,-88(s0)		#, result
	li	a0,12		#,
	call	func0		#
# problem124.c:69:     assert(issame(result, size, expected3, 3));
	lw	a5,-92(s0)		# size.2_5, size
	addi	a4,s0,-64	#, tmp164,
	li	a3,3		#,
	mv	a2,a4	#, tmp164
	mv	a1,a5	#, size.2_5
	ld	a0,-88(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp165,
# problem124.c:69:     assert(issame(result, size, expected3, 3));
	bne	a5,zero,.L21	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,69		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L21:
# problem124.c:70:     free(result);
	ld	a0,-88(s0)		#, result
	call	free@plt	#
# problem124.c:73:     int expected4[] = {1};
	li	a5,1		# tmp166,
	sw	a5,-80(s0)	# tmp166, expected4[0]
# problem124.c:74:     result = (int*)malloc(100 * sizeof(int));
	li	a0,400		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp167,
	sd	a5,-88(s0)	# tmp167, result
# problem124.c:75:     func0(1, result, &size);
	addi	a5,s0,-92	#, tmp168,
	mv	a2,a5	#, tmp168
	ld	a1,-88(s0)		#, result
	li	a0,1		#,
	call	func0		#
# problem124.c:76:     assert(issame(result, size, expected4, 1));
	lw	a5,-92(s0)		# size.3_7, size
	addi	a4,s0,-80	#, tmp169,
	li	a3,1		#,
	mv	a2,a4	#, tmp169
	mv	a1,a5	#, size.3_7
	ld	a0,-88(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp170,
# problem124.c:76:     assert(issame(result, size, expected4, 1));
	bne	a5,zero,.L22	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,76		#,
	lla	a1,.LC1	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L22:
# problem124.c:77:     free(result);
	ld	a0,-88(s0)		#, result
	call	free@plt	#
# problem124.c:79:     return 0;
	li	a5,0		# _41,
# problem124.c:80: }
	mv	a4,a5	# <retval>, _41
	la	a5,__stack_chk_guard		# tmp172,
	ld	a3, -24(s0)	# tmp175, D.3321
	ld	a5, 0(a5)	# tmp173, __stack_chk_guard
	xor	a5, a3, a5	# tmp173, tmp175
	li	a3, 0	# tmp175
	beq	a5,zero,.L24	#, tmp173,,
	call	__stack_chk_fail@plt	#
.L24:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	.cfi_restore 1
	ld	s0,80(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96	#,,
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
