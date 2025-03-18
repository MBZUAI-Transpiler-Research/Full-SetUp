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
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp165, n
	sw	a5,-36(s0)	# tmp166, n
# eval/problem131//code.c:5:     int* out = (int*)malloc((n + 1) * sizeof(int));
	lw	a5,-36(s0)		# tmp169, n
	addiw	a5,a5,1	#, tmp167, tmp168
	sext.w	a5,a5	# _1, tmp167
# eval/problem131//code.c:5:     int* out = (int*)malloc((n + 1) * sizeof(int));
	slli	a5,a5,2	#, _3, _2
	mv	a0,a5	#, _3
	call	malloc@plt	#
	mv	a5,a0	# tmp170,
	sd	a5,-24(s0)	# tmp170, out
# eval/problem131//code.c:6:     out[0] = 1;
	ld	a5,-24(s0)		# tmp171, out
	li	a4,1		# tmp172,
	sw	a4,0(a5)	# tmp172, *out_38
# eval/problem131//code.c:7:     if (n == 0) return out;
	lw	a5,-36(s0)		# tmp174, n
	sext.w	a5,a5	# tmp175, tmp173
	bne	a5,zero,.L2	#, tmp175,,
# eval/problem131//code.c:7:     if (n == 0) return out;
	ld	a5,-24(s0)		# _31, out
# eval/problem131//code.c:7:     if (n == 0) return out;
	j	.L3		#
.L2:
# eval/problem131//code.c:8:     out[1] = 3;
	ld	a5,-24(s0)		# tmp176, out
	addi	a5,a5,4	#, _4, tmp176
# eval/problem131//code.c:8:     out[1] = 3;
	li	a4,3		# tmp177,
	sw	a4,0(a5)	# tmp177, *_4
# eval/problem131//code.c:9:     for (int i = 2; i <= n; i++) {
	li	a5,2		# tmp178,
	sw	a5,-28(s0)	# tmp178, i
# eval/problem131//code.c:9:     for (int i = 2; i <= n; i++) {
	j	.L4		#
.L7:
# eval/problem131//code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	lw	a5,-28(s0)		# i.0_5, i
	andi	a5,a5,1	#, tmp180, tmp179
	sext.w	a5,a5	# _6, tmp180
# eval/problem131//code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	bne	a5,zero,.L5	#, _6,,
# eval/problem131//code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	lw	a5,-28(s0)		# tmp183, i
	srliw	a4,a5,31	#, tmp184, tmp182
	addw	a5,a4,a5	# tmp182, tmp185, tmp184
	sraiw	a5,a5,1	#, tmp186, tmp185
	sext.w	a4,a5	# _7, tmp186
# eval/problem131//code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	lw	a5,-28(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a3,-24(s0)		# tmp187, out
	add	a5,a3,a5	# _9, _10, tmp187
# eval/problem131//code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	addiw	a4,a4,1	#, tmp188, _7
	sext.w	a4,a4	# _11, tmp188
# eval/problem131//code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	sw	a4,0(a5)	# _11, *_10
	j	.L6		#
.L5:
# eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	lw	a5,-28(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	addi	a5,a5,-4	#, _14, _13
	ld	a4,-24(s0)		# tmp189, out
	add	a5,a4,a5	# _14, _15, tmp189
	lw	a4,0(a5)		# _16, *_15
# eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	lw	a5,-28(s0)		# _17, i
	slli	a5,a5,2	#, _18, _17
	addi	a5,a5,-8	#, _19, _18
	ld	a3,-24(s0)		# tmp190, out
	add	a5,a3,a5	# _19, _20, tmp190
	lw	a5,0(a5)		# _21, *_20
# eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	addw	a5,a4,a5	# _21, tmp191, _16
	sext.w	a5,a5	# _22, tmp191
# eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	addiw	a5,a5,1	#, tmp192, _22
	sext.w	a3,a5	# _23, tmp192
# eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	lw	a5,-28(s0)		# tmp195, i
	addiw	a5,a5,1	#, tmp193, tmp194
	sext.w	a5,a5	# _24, tmp193
# eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	srliw	a4,a5,31	#, tmp198, tmp197
	addw	a5,a4,a5	# tmp197, tmp199, tmp198
	sraiw	a5,a5,1	#, tmp200, tmp199
	sext.w	a4,a5	# _25, tmp200
# eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	lw	a5,-28(s0)		# _26, i
	slli	a5,a5,2	#, _27, _26
	ld	a2,-24(s0)		# tmp201, out
	add	a5,a2,a5	# _27, _28, tmp201
# eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	addw	a4,a3,a4	# _25, tmp202, _23
	sext.w	a4,a4	# _29, tmp202
# eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	sw	a4,0(a5)	# _29, *_28
.L6:
# eval/problem131//code.c:9:     for (int i = 2; i <= n; i++) {
	lw	a5,-28(s0)		# tmp205, i
	addiw	a5,a5,1	#, tmp203, tmp204
	sw	a5,-28(s0)	# tmp203, i
.L4:
# eval/problem131//code.c:9:     for (int i = 2; i <= n; i++) {
	lw	a5,-28(s0)		# tmp207, i
	mv	a4,a5	# tmp206, tmp207
	lw	a5,-36(s0)		# tmp209, n
	sext.w	a4,a4	# tmp210, tmp206
	sext.w	a5,a5	# tmp211, tmp208
	ble	a4,a5,.L7	#, tmp210, tmp211,
# eval/problem131//code.c:13:     return out;
	ld	a5,-24(s0)		# _31, out
.L3:
# eval/problem131//code.c:14: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
