	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -O0 -fstack-protector-strong
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
# code.c:5:     int capacity = 10;
	li	a5,10		# tmp166,
	sw	a5,-32(s0)	# tmp166, capacity
# code.c:6:     *size = 1;
	ld	a5,-56(s0)		# tmp167, size
	li	a4,1		# tmp168,
	sw	a4,0(a5)	# tmp168, *size_45(D)
# code.c:7:     out[0] = 1;
	ld	a5,-48(s0)		# tmp169, out
	li	a4,1		# tmp170,
	sw	a4,0(a5)	# tmp170, *out_47(D)
# code.c:9:     while (n != 1) {
	j	.L2		#
.L6:
# code.c:10:         if (n % 2 == 1) {
	lw	a5,-36(s0)		# tmp173, n
	mv	a4,a5	# tmp172, tmp173
	sraiw	a5,a4,31	#, tmp174, tmp172
	srliw	a5,a5,31	#, tmp175, tmp174
	addw	a4,a4,a5	# tmp175, tmp176, tmp172
	andi	a4,a4,1	#, tmp177, tmp176
	subw	a5,a4,a5	# tmp178, tmp177, tmp175
	sext.w	a5,a5	# _1, tmp178
# code.c:10:         if (n % 2 == 1) {
	mv	a4,a5	# tmp179, _1
	li	a5,1		# tmp180,
	bne	a4,a5,.L3	#, tmp179, tmp180,
# code.c:11:             if (*size >= capacity) {
	ld	a5,-56(s0)		# tmp181, size
	lw	a4,0(a5)		# _2, *size_45(D)
# code.c:11:             if (*size >= capacity) {
	lw	a5,-32(s0)		# tmp183, capacity
	sext.w	a5,a5	# tmp184, tmp182
	bgt	a5,a4,.L4	#, tmp184, tmp185,
# code.c:12:                 capacity *= 2;
	lw	a5,-32(s0)		# tmp188, capacity
	slliw	a5,a5,1	#, tmp186, tmp187
	sw	a5,-32(s0)	# tmp186, capacity
# code.c:13:                 out = (int*)realloc(out, capacity * sizeof(int));
	lw	a5,-32(s0)		# _3, capacity
	slli	a5,a5,2	#, _4, _3
	mv	a1,a5	#, _4
	ld	a0,-48(s0)		#, out
	call	realloc@plt	#
	sd	a0,-48(s0)	#, out
.L4:
# code.c:15:             out[(*size)++] = n;
	ld	a5,-56(s0)		# tmp189, size
	lw	a5,0(a5)		# _5, *size_45(D)
# code.c:15:             out[(*size)++] = n;
	addiw	a4,a5,1	#, tmp190, _5
	sext.w	a3,a4	# _7, tmp190
	ld	a4,-56(s0)		# tmp191, size
	sw	a3,0(a4)	# _7, *size_45(D)
# code.c:15:             out[(*size)++] = n;
	slli	a5,a5,2	#, _9, _8
	ld	a4,-48(s0)		# tmp192, out
	add	a5,a4,a5	# _9, _10, tmp192
# code.c:15:             out[(*size)++] = n;
	lw	a4,-36(s0)		# tmp193, n
	sw	a4,0(a5)	# tmp193, *_10
# code.c:16:             n = n * 3 + 1;
	lw	a5,-36(s0)		# tmp195, n
	mv	a4,a5	# tmp194, tmp195
	mv	a5,a4	# tmp196, tmp194
	slliw	a5,a5,1	#, tmp197, tmp196
	addw	a5,a5,a4	# tmp194, tmp196, tmp196
	sext.w	a5,a5	# _11, tmp196
# code.c:16:             n = n * 3 + 1;
	addiw	a5,a5,1	#, tmp198, _11
	sw	a5,-36(s0)	# tmp198, n
	j	.L2		#
.L3:
# code.c:18:             n = n / 2;
	lw	a5,-36(s0)		# tmp201, n
	srliw	a4,a5,31	#, tmp202, tmp200
	addw	a5,a4,a5	# tmp200, tmp203, tmp202
	sraiw	a5,a5,1	#, tmp204, tmp203
	sw	a5,-36(s0)	# tmp204, n
.L2:
# code.c:9:     while (n != 1) {
	lw	a5,-36(s0)		# tmp206, n
	sext.w	a4,a5	# tmp207, tmp205
	li	a5,1		# tmp208,
	bne	a4,a5,.L6	#, tmp207, tmp208,
# code.c:22:     for (int i = 1; i < *size; i++) {
	li	a5,1		# tmp209,
	sw	a5,-28(s0)	# tmp209, i
# code.c:22:     for (int i = 1; i < *size; i++) {
	j	.L7		#
.L11:
# code.c:23:         int key = out[i];
	lw	a5,-28(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-48(s0)		# tmp210, out
	add	a5,a4,a5	# _13, _14, tmp210
# code.c:23:         int key = out[i];
	lw	a5,0(a5)		# tmp211, *_14
	sw	a5,-20(s0)	# tmp211, key
# code.c:24:         int j = i - 1;
	lw	a5,-28(s0)		# tmp214, i
	addiw	a5,a5,-1	#, tmp212, tmp213
	sw	a5,-24(s0)	# tmp212, j
# code.c:26:         while (j >= 0 && out[j] > key) {
	j	.L8		#
.L10:
# code.c:27:             out[j + 1] = out[j];
	lw	a5,-24(s0)		# _15, j
	slli	a5,a5,2	#, _16, _15
	ld	a4,-48(s0)		# tmp215, out
	add	a4,a4,a5	# _16, _17, tmp215
# code.c:27:             out[j + 1] = out[j];
	lw	a5,-24(s0)		# _18, j
	addi	a5,a5,1	#, _19, _18
	slli	a5,a5,2	#, _20, _19
	ld	a3,-48(s0)		# tmp216, out
	add	a5,a3,a5	# _20, _21, tmp216
# code.c:27:             out[j + 1] = out[j];
	lw	a4,0(a4)		# _22, *_17
# code.c:27:             out[j + 1] = out[j];
	sw	a4,0(a5)	# _22, *_21
# code.c:28:             j = j - 1;
	lw	a5,-24(s0)		# tmp219, j
	addiw	a5,a5,-1	#, tmp217, tmp218
	sw	a5,-24(s0)	# tmp217, j
.L8:
# code.c:26:         while (j >= 0 && out[j] > key) {
	lw	a5,-24(s0)		# tmp221, j
	sext.w	a5,a5	# tmp222, tmp220
	blt	a5,zero,.L9	#, tmp222,,
# code.c:26:         while (j >= 0 && out[j] > key) {
	lw	a5,-24(s0)		# _23, j
	slli	a5,a5,2	#, _24, _23
	ld	a4,-48(s0)		# tmp223, out
	add	a5,a4,a5	# _24, _25, tmp223
	lw	a4,0(a5)		# _26, *_25
# code.c:26:         while (j >= 0 && out[j] > key) {
	lw	a5,-20(s0)		# tmp225, key
	sext.w	a5,a5	# tmp226, tmp224
	blt	a5,a4,.L10	#, tmp226, tmp227,
.L9:
# code.c:30:         out[j + 1] = key;
	lw	a5,-24(s0)		# _27, j
	addi	a5,a5,1	#, _28, _27
	slli	a5,a5,2	#, _29, _28
	ld	a4,-48(s0)		# tmp228, out
	add	a5,a4,a5	# _29, _30, tmp228
# code.c:30:         out[j + 1] = key;
	lw	a4,-20(s0)		# tmp229, key
	sw	a4,0(a5)	# tmp229, *_30
# code.c:22:     for (int i = 1; i < *size; i++) {
	lw	a5,-28(s0)		# tmp232, i
	addiw	a5,a5,1	#, tmp230, tmp231
	sw	a5,-28(s0)	# tmp230, i
.L7:
# code.c:22:     for (int i = 1; i < *size; i++) {
	ld	a5,-56(s0)		# tmp233, size
	lw	a4,0(a5)		# _31, *size_45(D)
# code.c:22:     for (int i = 1; i < *size; i++) {
	lw	a5,-28(s0)		# tmp235, i
	sext.w	a5,a5	# tmp236, tmp234
	blt	a5,a4,.L11	#, tmp236, tmp237,
# code.c:32: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
