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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	sd	s1,40(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# text, text
	sd	a1,-64(s0)	# out, out
# eval/problem141//code.c:5:     int space_len = 0;
	sw	zero,-44(s0)	#, space_len
# eval/problem141//code.c:6:     int j = 0;
	sw	zero,-40(s0)	#, j
# eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	sw	zero,-36(s0)	#, i
# eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	j	.L2		#
.L8:
# eval/problem141//code.c:8:         if (text[i] == ' ') {
	lw	a5,-36(s0)		# _1, i
	ld	a4,-56(s0)		# tmp171, text
	add	a5,a4,a5	# _1, _2, tmp171
	lbu	a5,0(a5)	# _3, *_2
# eval/problem141//code.c:8:         if (text[i] == ' ') {
	mv	a4,a5	# tmp172, _3
	li	a5,32		# tmp173,
	bne	a4,a5,.L3	#, tmp172, tmp173,
# eval/problem141//code.c:9:             space_len++;
	lw	a5,-44(s0)		# tmp176, space_len
	addiw	a5,a5,1	#, tmp174, tmp175
	sw	a5,-44(s0)	# tmp174, space_len
	j	.L4		#
.L3:
# eval/problem141//code.c:11:             if (space_len == 1) out[j++] = '_';
	lw	a5,-44(s0)		# tmp178, space_len
	sext.w	a4,a5	# tmp179, tmp177
	li	a5,1		# tmp180,
	bne	a4,a5,.L5	#, tmp179, tmp180,
# eval/problem141//code.c:11:             if (space_len == 1) out[j++] = '_';
	lw	a5,-40(s0)		# j.0_4, j
	addiw	a4,a5,1	#, tmp181, j.0_4
	sw	a4,-40(s0)	# tmp181, j
	mv	a4,a5	# _5, j.0_4
# eval/problem141//code.c:11:             if (space_len == 1) out[j++] = '_';
	ld	a5,-64(s0)		# tmp182, out
	add	a5,a5,a4	# _5, _6, tmp182
# eval/problem141//code.c:11:             if (space_len == 1) out[j++] = '_';
	li	a4,95		# tmp183,
	sb	a4,0(a5)	# tmp183, *_6
.L5:
# eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-44(s0)		# tmp185, space_len
	sext.w	a4,a5	# tmp186, tmp184
	li	a5,2		# tmp187,
	bne	a4,a5,.L6	#, tmp186, tmp187,
# eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-40(s0)		# j.1_7, j
	addiw	a4,a5,1	#, tmp188, j.1_7
	sw	a4,-40(s0)	# tmp188, j
	mv	a4,a5	# _8, j.1_7
# eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ld	a5,-64(s0)		# tmp189, out
	add	a5,a5,a4	# _8, _9, tmp189
# eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	li	a4,95		# tmp190,
	sb	a4,0(a5)	# tmp190, *_9
# eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-40(s0)		# j.2_10, j
	addiw	a4,a5,1	#, tmp191, j.2_10
	sw	a4,-40(s0)	# tmp191, j
	mv	a4,a5	# _11, j.2_10
# eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ld	a5,-64(s0)		# tmp192, out
	add	a5,a5,a4	# _11, _12, tmp192
# eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	li	a4,95		# tmp193,
	sb	a4,0(a5)	# tmp193, *_12
.L6:
# eval/problem141//code.c:13:             if (space_len > 2) out[j++] = '-';
	lw	a5,-44(s0)		# tmp195, space_len
	sext.w	a4,a5	# tmp196, tmp194
	li	a5,2		# tmp197,
	ble	a4,a5,.L7	#, tmp196, tmp197,
# eval/problem141//code.c:13:             if (space_len > 2) out[j++] = '-';
	lw	a5,-40(s0)		# j.3_13, j
	addiw	a4,a5,1	#, tmp198, j.3_13
	sw	a4,-40(s0)	# tmp198, j
	mv	a4,a5	# _14, j.3_13
# eval/problem141//code.c:13:             if (space_len > 2) out[j++] = '-';
	ld	a5,-64(s0)		# tmp199, out
	add	a5,a5,a4	# _14, _15, tmp199
# eval/problem141//code.c:13:             if (space_len > 2) out[j++] = '-';
	li	a4,45		# tmp200,
	sb	a4,0(a5)	# tmp200, *_15
.L7:
# eval/problem141//code.c:14:             space_len = 0;
	sw	zero,-44(s0)	#, space_len
# eval/problem141//code.c:15:             out[j++] = text[i];
	lw	a5,-36(s0)		# _16, i
	ld	a4,-56(s0)		# tmp201, text
	add	a4,a4,a5	# _16, _17, tmp201
# eval/problem141//code.c:15:             out[j++] = text[i];
	lw	a5,-40(s0)		# j.4_18, j
	addiw	a3,a5,1	#, tmp202, j.4_18
	sw	a3,-40(s0)	# tmp202, j
	mv	a3,a5	# _19, j.4_18
# eval/problem141//code.c:15:             out[j++] = text[i];
	ld	a5,-64(s0)		# tmp203, out
	add	a5,a5,a3	# _19, _20, tmp203
# eval/problem141//code.c:15:             out[j++] = text[i];
	lbu	a4,0(a4)	# _21, *_17
# eval/problem141//code.c:15:             out[j++] = text[i];
	sb	a4,0(a5)	# _21, *_20
.L4:
# eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	lw	a5,-36(s0)		# tmp206, i
	addiw	a5,a5,1	#, tmp204, tmp205
	sw	a5,-36(s0)	# tmp204, i
.L2:
# eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	lw	s1,-36(s0)		# _22, i
# eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	ld	a0,-56(s0)		#, text
	call	strlen@plt	#
	mv	a5,a0	# _23,
# eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	bltu	s1,a5,.L8	#, _22, _23,
# eval/problem141//code.c:18:     if (space_len == 1) out[j++] = '_';
	lw	a5,-44(s0)		# tmp208, space_len
	sext.w	a4,a5	# tmp209, tmp207
	li	a5,1		# tmp210,
	bne	a4,a5,.L9	#, tmp209, tmp210,
# eval/problem141//code.c:18:     if (space_len == 1) out[j++] = '_';
	lw	a5,-40(s0)		# j.5_24, j
	addiw	a4,a5,1	#, tmp211, j.5_24
	sw	a4,-40(s0)	# tmp211, j
	mv	a4,a5	# _25, j.5_24
# eval/problem141//code.c:18:     if (space_len == 1) out[j++] = '_';
	ld	a5,-64(s0)		# tmp212, out
	add	a5,a5,a4	# _25, _26, tmp212
# eval/problem141//code.c:18:     if (space_len == 1) out[j++] = '_';
	li	a4,95		# tmp213,
	sb	a4,0(a5)	# tmp213, *_26
.L9:
# eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-44(s0)		# tmp215, space_len
	sext.w	a4,a5	# tmp216, tmp214
	li	a5,2		# tmp217,
	bne	a4,a5,.L10	#, tmp216, tmp217,
# eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-40(s0)		# j.6_27, j
	addiw	a4,a5,1	#, tmp218, j.6_27
	sw	a4,-40(s0)	# tmp218, j
	mv	a4,a5	# _28, j.6_27
# eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ld	a5,-64(s0)		# tmp219, out
	add	a5,a5,a4	# _28, _29, tmp219
# eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	li	a4,95		# tmp220,
	sb	a4,0(a5)	# tmp220, *_29
# eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-40(s0)		# j.7_30, j
	addiw	a4,a5,1	#, tmp221, j.7_30
	sw	a4,-40(s0)	# tmp221, j
	mv	a4,a5	# _31, j.7_30
# eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ld	a5,-64(s0)		# tmp222, out
	add	a5,a5,a4	# _31, _32, tmp222
# eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	li	a4,95		# tmp223,
	sb	a4,0(a5)	# tmp223, *_32
.L10:
# eval/problem141//code.c:20:     if (space_len > 2) out[j++] = '-';
	lw	a5,-44(s0)		# tmp225, space_len
	sext.w	a4,a5	# tmp226, tmp224
	li	a5,2		# tmp227,
	ble	a4,a5,.L11	#, tmp226, tmp227,
# eval/problem141//code.c:20:     if (space_len > 2) out[j++] = '-';
	lw	a5,-40(s0)		# j.8_33, j
	addiw	a4,a5,1	#, tmp228, j.8_33
	sw	a4,-40(s0)	# tmp228, j
	mv	a4,a5	# _34, j.8_33
# eval/problem141//code.c:20:     if (space_len > 2) out[j++] = '-';
	ld	a5,-64(s0)		# tmp229, out
	add	a5,a5,a4	# _34, _35, tmp229
# eval/problem141//code.c:20:     if (space_len > 2) out[j++] = '-';
	li	a4,45		# tmp230,
	sb	a4,0(a5)	# tmp230, *_35
.L11:
# eval/problem141//code.c:21:     out[j] = '\0';
	lw	a5,-40(s0)		# _36, j
	ld	a4,-64(s0)		# tmp231, out
	add	a5,a4,a5	# _36, _37, tmp231
# eval/problem141//code.c:21:     out[j] = '\0';
	sb	zero,0(a5)	#, *_37
# eval/problem141//code.c:22: }
	nop	
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	ld	s1,40(sp)		#,
	.cfi_restore 9
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
