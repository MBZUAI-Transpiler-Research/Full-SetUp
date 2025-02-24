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
	sd	a0,-56(s0)	# dict, dict
	mv	a5,a1	# tmp176, size
	sw	a5,-60(s0)	# tmp177, size
# code.c:7:     if (size == 0) return 0;
	lw	a5,-60(s0)		# tmp179, size
	sext.w	a5,a5	# tmp180, tmp178
	bne	a5,zero,.L2	#, tmp180,,
# code.c:7:     if (size == 0) return 0;
	li	a5,0		# _49,
# code.c:7:     if (size == 0) return 0;
	j	.L3		#
.L2:
# code.c:8:     int has_lower = 0, has_upper = 0;
	sw	zero,-40(s0)	#, has_lower
# code.c:8:     int has_lower = 0, has_upper = 0;
	sw	zero,-36(s0)	#, has_upper
# code.c:9:     for (int i = 0; i < size; ++i) {
	sw	zero,-32(s0)	#, i
# code.c:9:     for (int i = 0; i < size; ++i) {
	j	.L4		#
.L11:
# code.c:10:         char* key = dict[i][0];
	lw	a5,-32(s0)		# _1, i
	slli	a5,a5,4	#, _2, _1
	ld	a4,-56(s0)		# tmp181, dict
	add	a5,a4,a5	# _2, _3, tmp181
# code.c:10:         char* key = dict[i][0];
	ld	a5,0(a5)		# tmp182, (*_3)[0]
	sd	a5,-24(s0)	# tmp182, key
# code.c:11:         for (int j = 0; key[j]; ++j) {
	sw	zero,-28(s0)	#, j
# code.c:11:         for (int j = 0; key[j]; ++j) {
	j	.L5		#
.L10:
# code.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _4,
# code.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	ld	a4,0(a5)		# _5, *_4
	lw	a5,-28(s0)		# _6, j
	ld	a3,-24(s0)		# tmp183, key
	add	a5,a3,a5	# _6, _7, tmp183
	lbu	a5,0(a5)	# _8, *_7
	slli	a5,a5,1	#, _10, _9
	add	a5,a4,a5	# _10, _11, _5
	lhu	a5,0(a5)	# _12, *_11
	sext.w	a5,a5	# _13, _12
	andi	a5,a5,1024	#, tmp184, _13
	sext.w	a5,a5	# _14, tmp184
# code.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	bne	a5,zero,.L6	#, _14,,
# code.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	li	a5,0		# _49,
# code.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	j	.L3		#
.L6:
# code.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _15,
# code.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	ld	a4,0(a5)		# _16, *_15
	lw	a5,-28(s0)		# _17, j
	ld	a3,-24(s0)		# tmp185, key
	add	a5,a3,a5	# _17, _18, tmp185
	lbu	a5,0(a5)	# _19, *_18
	slli	a5,a5,1	#, _21, _20
	add	a5,a4,a5	# _21, _22, _16
	lhu	a5,0(a5)	# _23, *_22
	sext.w	a5,a5	# _24, _23
	andi	a5,a5,256	#, tmp186, _24
	sext.w	a5,a5	# _25, tmp186
# code.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	beq	a5,zero,.L7	#, _25,,
# code.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	li	a5,1		# tmp187,
	sw	a5,-36(s0)	# tmp187, has_upper
.L7:
# code.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _26,
# code.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	ld	a4,0(a5)		# _27, *_26
	lw	a5,-28(s0)		# _28, j
	ld	a3,-24(s0)		# tmp188, key
	add	a5,a3,a5	# _28, _29, tmp188
	lbu	a5,0(a5)	# _30, *_29
	slli	a5,a5,1	#, _32, _31
	add	a5,a4,a5	# _32, _33, _27
	lhu	a5,0(a5)	# _34, *_33
	sext.w	a5,a5	# _35, _34
	andi	a5,a5,512	#, tmp189, _35
	sext.w	a5,a5	# _36, tmp189
# code.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	beq	a5,zero,.L8	#, _36,,
# code.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	li	a5,1		# tmp190,
	sw	a5,-40(s0)	# tmp190, has_lower
.L8:
# code.c:15:             if (has_upper + has_lower == 2) return 0;
	lw	a5,-36(s0)		# tmp193, has_upper
	mv	a4,a5	# tmp192, tmp193
	lw	a5,-40(s0)		# tmp195, has_lower
	addw	a5,a4,a5	# tmp194, tmp191, tmp192
	sext.w	a5,a5	# _37, tmp191
# code.c:15:             if (has_upper + has_lower == 2) return 0;
	mv	a4,a5	# tmp196, _37
	li	a5,2		# tmp197,
	bne	a4,a5,.L9	#, tmp196, tmp197,
# code.c:15:             if (has_upper + has_lower == 2) return 0;
	li	a5,0		# _49,
# code.c:15:             if (has_upper + has_lower == 2) return 0;
	j	.L3		#
.L9:
# code.c:11:         for (int j = 0; key[j]; ++j) {
	lw	a5,-28(s0)		# tmp200, j
	addiw	a5,a5,1	#, tmp198, tmp199
	sw	a5,-28(s0)	# tmp198, j
.L5:
# code.c:11:         for (int j = 0; key[j]; ++j) {
	lw	a5,-28(s0)		# _38, j
	ld	a4,-24(s0)		# tmp201, key
	add	a5,a4,a5	# _38, _39, tmp201
	lbu	a5,0(a5)	# _40, *_39
# code.c:11:         for (int j = 0; key[j]; ++j) {
	bne	a5,zero,.L10	#, _40,,
# code.c:9:     for (int i = 0; i < size; ++i) {
	lw	a5,-32(s0)		# tmp204, i
	addiw	a5,a5,1	#, tmp202, tmp203
	sw	a5,-32(s0)	# tmp202, i
.L4:
# code.c:9:     for (int i = 0; i < size; ++i) {
	lw	a5,-32(s0)		# tmp206, i
	mv	a4,a5	# tmp205, tmp206
	lw	a5,-60(s0)		# tmp208, size
	sext.w	a4,a4	# tmp209, tmp205
	sext.w	a5,a5	# tmp210, tmp207
	blt	a4,a5,.L11	#, tmp209, tmp210,
# code.c:18:     return 1;
	li	a5,1		# _49,
.L3:
# code.c:19: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
