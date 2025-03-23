	.file	"code.c"
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
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# lst, lst
	mv	a5,a1	# tmp183, size
	sd	a2,-72(s0)	# out, out
	sw	a5,-60(s0)	# tmp184, size
# eval/problem71//code.c:5:     for (int i = 0; i < size - 1; i++) {
	sw	zero,-40(s0)	#, i
# eval/problem71//code.c:5:     for (int i = 0; i < size - 1; i++) {
	j	.L2		#
.L6:
# eval/problem71//code.c:6:         for (int j = i + 1; j < size; j++) {
	lw	a5,-40(s0)		# tmp187, i
	addiw	a5,a5,1	#, tmp185, tmp186
	sw	a5,-36(s0)	# tmp185, j
# eval/problem71//code.c:6:         for (int j = i + 1; j < size; j++) {
	j	.L3		#
.L5:
# eval/problem71//code.c:7:             if (lst[i] > lst[j]) {
	lw	a5,-40(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-56(s0)		# tmp188, lst
	add	a5,a4,a5	# _2, _3, tmp188
	lw	a3,0(a5)		# _4, *_3
# eval/problem71//code.c:7:             if (lst[i] > lst[j]) {
	lw	a5,-36(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp189, lst
	add	a5,a4,a5	# _6, _7, tmp189
	lw	a5,0(a5)		# _8, *_7
# eval/problem71//code.c:7:             if (lst[i] > lst[j]) {
	mv	a4,a3	# tmp190, _4
	ble	a4,a5,.L4	#, tmp190, tmp191,
# eval/problem71//code.c:8:                 int temp = lst[i];
	lw	a5,-40(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a4,-56(s0)		# tmp192, lst
	add	a5,a4,a5	# _10, _11, tmp192
# eval/problem71//code.c:8:                 int temp = lst[i];
	lw	a5,0(a5)		# tmp193, *_11
	sw	a5,-20(s0)	# tmp193, temp
# eval/problem71//code.c:9:                 lst[i] = lst[j];
	lw	a5,-36(s0)		# _12, j
	slli	a5,a5,2	#, _13, _12
	ld	a4,-56(s0)		# tmp194, lst
	add	a4,a4,a5	# _13, _14, tmp194
# eval/problem71//code.c:9:                 lst[i] = lst[j];
	lw	a5,-40(s0)		# _15, i
	slli	a5,a5,2	#, _16, _15
	ld	a3,-56(s0)		# tmp195, lst
	add	a5,a3,a5	# _16, _17, tmp195
# eval/problem71//code.c:9:                 lst[i] = lst[j];
	lw	a4,0(a4)		# _18, *_14
# eval/problem71//code.c:9:                 lst[i] = lst[j];
	sw	a4,0(a5)	# _18, *_17
# eval/problem71//code.c:10:                 lst[j] = temp;
	lw	a5,-36(s0)		# _19, j
	slli	a5,a5,2	#, _20, _19
	ld	a4,-56(s0)		# tmp196, lst
	add	a5,a4,a5	# _20, _21, tmp196
# eval/problem71//code.c:10:                 lst[j] = temp;
	lw	a4,-20(s0)		# tmp197, temp
	sw	a4,0(a5)	# tmp197, *_21
.L4:
# eval/problem71//code.c:6:         for (int j = i + 1; j < size; j++) {
	lw	a5,-36(s0)		# tmp200, j
	addiw	a5,a5,1	#, tmp198, tmp199
	sw	a5,-36(s0)	# tmp198, j
.L3:
# eval/problem71//code.c:6:         for (int j = i + 1; j < size; j++) {
	lw	a5,-36(s0)		# tmp202, j
	mv	a4,a5	# tmp201, tmp202
	lw	a5,-60(s0)		# tmp204, size
	sext.w	a4,a4	# tmp205, tmp201
	sext.w	a5,a5	# tmp206, tmp203
	blt	a4,a5,.L5	#, tmp205, tmp206,
# eval/problem71//code.c:5:     for (int i = 0; i < size - 1; i++) {
	lw	a5,-40(s0)		# tmp209, i
	addiw	a5,a5,1	#, tmp207, tmp208
	sw	a5,-40(s0)	# tmp207, i
.L2:
# eval/problem71//code.c:5:     for (int i = 0; i < size - 1; i++) {
	lw	a5,-60(s0)		# tmp212, size
	addiw	a5,a5,-1	#, tmp210, tmp211
	sext.w	a4,a5	# _22, tmp210
# eval/problem71//code.c:5:     for (int i = 0; i < size - 1; i++) {
	lw	a5,-40(s0)		# tmp214, i
	sext.w	a5,a5	# tmp215, tmp213
	blt	a5,a4,.L6	#, tmp215, tmp216,
# eval/problem71//code.c:15:     int l = 0, r = size - 1;
	sw	zero,-32(s0)	#, l
# eval/problem71//code.c:15:     int l = 0, r = size - 1;
	lw	a5,-60(s0)		# tmp219, size
	addiw	a5,a5,-1	#, tmp217, tmp218
	sw	a5,-28(s0)	# tmp217, r
# eval/problem71//code.c:16:     int index = 0;
	sw	zero,-24(s0)	#, index
# eval/problem71//code.c:18:     while (l <= r) {
	j	.L7		#
.L10:
# eval/problem71//code.c:19:         if (l == r) {
	lw	a5,-32(s0)		# tmp221, l
	mv	a4,a5	# tmp220, tmp221
	lw	a5,-28(s0)		# tmp223, r
	sext.w	a4,a4	# tmp224, tmp220
	sext.w	a5,a5	# tmp225, tmp222
	bne	a4,a5,.L8	#, tmp224, tmp225,
# eval/problem71//code.c:20:             out[index++] = lst[l++];
	lw	a5,-32(s0)		# l.0_23, l
	addiw	a4,a5,1	#, tmp226, l.0_23
	sw	a4,-32(s0)	# tmp226, l
# eval/problem71//code.c:20:             out[index++] = lst[l++];
	slli	a5,a5,2	#, _25, _24
	ld	a4,-56(s0)		# tmp227, lst
	add	a4,a4,a5	# _25, _26, tmp227
# eval/problem71//code.c:20:             out[index++] = lst[l++];
	lw	a5,-24(s0)		# index.1_27, index
	addiw	a3,a5,1	#, tmp228, index.1_27
	sw	a3,-24(s0)	# tmp228, index
# eval/problem71//code.c:20:             out[index++] = lst[l++];
	slli	a5,a5,2	#, _29, _28
	ld	a3,-72(s0)		# tmp229, out
	add	a5,a3,a5	# _29, _30, tmp229
# eval/problem71//code.c:20:             out[index++] = lst[l++];
	lw	a4,0(a4)		# _31, *_26
# eval/problem71//code.c:20:             out[index++] = lst[l++];
	sw	a4,0(a5)	# _31, *_30
	j	.L7		#
.L8:
# eval/problem71//code.c:22:             out[index++] = lst[l++];
	lw	a5,-32(s0)		# l.2_32, l
	addiw	a4,a5,1	#, tmp230, l.2_32
	sw	a4,-32(s0)	# tmp230, l
# eval/problem71//code.c:22:             out[index++] = lst[l++];
	slli	a5,a5,2	#, _34, _33
	ld	a4,-56(s0)		# tmp231, lst
	add	a4,a4,a5	# _34, _35, tmp231
# eval/problem71//code.c:22:             out[index++] = lst[l++];
	lw	a5,-24(s0)		# index.3_36, index
	addiw	a3,a5,1	#, tmp232, index.3_36
	sw	a3,-24(s0)	# tmp232, index
# eval/problem71//code.c:22:             out[index++] = lst[l++];
	slli	a5,a5,2	#, _38, _37
	ld	a3,-72(s0)		# tmp233, out
	add	a5,a3,a5	# _38, _39, tmp233
# eval/problem71//code.c:22:             out[index++] = lst[l++];
	lw	a4,0(a4)		# _40, *_35
# eval/problem71//code.c:22:             out[index++] = lst[l++];
	sw	a4,0(a5)	# _40, *_39
# eval/problem71//code.c:23:             out[index++] = lst[r--];
	lw	a5,-28(s0)		# r.4_41, r
	addiw	a4,a5,-1	#, tmp234, r.4_41
	sw	a4,-28(s0)	# tmp234, r
# eval/problem71//code.c:23:             out[index++] = lst[r--];
	slli	a5,a5,2	#, _43, _42
	ld	a4,-56(s0)		# tmp235, lst
	add	a4,a4,a5	# _43, _44, tmp235
# eval/problem71//code.c:23:             out[index++] = lst[r--];
	lw	a5,-24(s0)		# index.5_45, index
	addiw	a3,a5,1	#, tmp236, index.5_45
	sw	a3,-24(s0)	# tmp236, index
# eval/problem71//code.c:23:             out[index++] = lst[r--];
	slli	a5,a5,2	#, _47, _46
	ld	a3,-72(s0)		# tmp237, out
	add	a5,a3,a5	# _47, _48, tmp237
# eval/problem71//code.c:23:             out[index++] = lst[r--];
	lw	a4,0(a4)		# _49, *_44
# eval/problem71//code.c:23:             out[index++] = lst[r--];
	sw	a4,0(a5)	# _49, *_48
.L7:
# eval/problem71//code.c:18:     while (l <= r) {
	lw	a5,-32(s0)		# tmp239, l
	mv	a4,a5	# tmp238, tmp239
	lw	a5,-28(s0)		# tmp241, r
	sext.w	a4,a4	# tmp242, tmp238
	sext.w	a5,a5	# tmp243, tmp240
	ble	a4,a5,.L10	#, tmp242, tmp243,
# eval/problem71//code.c:26: }
	nop	
	nop	
	ld	s0,72(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
