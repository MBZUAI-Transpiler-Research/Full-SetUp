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
	addi	sp,sp,-2032	#,,
	.cfi_def_cfa_offset 2032
	sd	ra,2024(sp)	#,
	sd	s0,2016(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,2032	#,,
	.cfi_def_cfa 8, 0
	addi	sp,sp,-2016	#,,
	mv	a4,a0	# tmp141, n
	li	a5,-4096		# tmp142,
	addi	a5,a5,-16	#, tmp212, tmp142
	add	a5,a5,s0	#, tmp143, tmp212
	sw	a4,76(a5)	# tmp144, n
# eval/problem56//code.c:3: int func0(int n) {
	la	a5,__stack_chk_guard		# tmp145,
	ld	a4, 0(a5)	# tmp209, __stack_chk_guard
	sd	a4, -24(s0)	# tmp209, D.2719
	li	a4, 0	# tmp209
# eval/problem56//code.c:4:     int f[1000] = {0};
	li	a5,-4096		# tmp146,
	addi	a5,a5,-16	#, tmp214, tmp146
	add	a5,a5,s0	#, tmp147, tmp214
	addi	a4,a5,88	#, tmp148, tmp147
	li	a5,4096		# tmp150,
	addi	a5,a5,-96	#, tmp149, tmp150
	mv	a2,a5	#, tmp149
	li	a1,0		#,
	mv	a0,a4	#, tmp148
	call	memset@plt	#
# eval/problem56//code.c:5:     f[0] = 0;
	li	a5,-4096		# tmp152,
	addi	a5,a5,-16	#, tmp215, tmp152
	add	a5,a5,s0	#, tmp153, tmp215
	sw	zero,88(a5)	#, f[0]
# eval/problem56//code.c:6:     f[1] = 1;
	li	a5,-4096		# tmp154,
	addi	a5,a5,-16	#, tmp216, tmp154
	add	a5,a5,s0	#, tmp155, tmp216
	li	a4,1		# tmp156,
	sw	a4,92(a5)	# tmp156, f[1]
# eval/problem56//code.c:7:     for (int i = 2; i <= n; i++)
	li	a5,-4096		# tmp157,
	addi	a5,a5,-16	#, tmp217, tmp157
	add	a5,a5,s0	#, tmp158, tmp217
	li	a4,2		# tmp159,
	sw	a4,84(a5)	# tmp159, i
# eval/problem56//code.c:7:     for (int i = 2; i <= n; i++)
	j	.L2		#
.L3:
# eval/problem56//code.c:8:         f[i] = f[i - 1] + f[i - 2];
	li	a5,-4096		# tmp160,
	addi	a5,a5,-16	#, tmp218, tmp160
	add	a5,a5,s0	#, tmp161, tmp218
	lw	a5,84(a5)		# tmp164, i
	addiw	a5,a5,-1	#, tmp162, tmp163
	sext.w	a5,a5	# _1, tmp162
# eval/problem56//code.c:8:         f[i] = f[i - 1] + f[i - 2];
	li	a4,-4096		# tmp165,
	addi	a4,a4,-16	#, tmp219, tmp165
	add	a4,a4,s0	#, tmp166, tmp219
	slli	a5,a5,2	#, tmp167, _1
	add	a5,a4,a5	# tmp167, tmp167, tmp166
	lw	a4,88(a5)		# _2, f[_1]
# eval/problem56//code.c:8:         f[i] = f[i - 1] + f[i - 2];
	li	a5,-4096		# tmp168,
	addi	a5,a5,-16	#, tmp220, tmp168
	add	a5,a5,s0	#, tmp169, tmp220
	lw	a5,84(a5)		# tmp172, i
	addiw	a5,a5,-2	#, tmp170, tmp171
	sext.w	a5,a5	# _3, tmp170
# eval/problem56//code.c:8:         f[i] = f[i - 1] + f[i - 2];
	li	a3,-4096		# tmp173,
	addi	a3,a3,-16	#, tmp221, tmp173
	add	a3,a3,s0	#, tmp174, tmp221
	slli	a5,a5,2	#, tmp175, _3
	add	a5,a3,a5	# tmp175, tmp175, tmp174
	lw	a5,88(a5)		# _4, f[_3]
# eval/problem56//code.c:8:         f[i] = f[i - 1] + f[i - 2];
	addw	a5,a4,a5	# _4, tmp176, _2
	sext.w	a4,a5	# _5, tmp176
# eval/problem56//code.c:8:         f[i] = f[i - 1] + f[i - 2];
	li	a5,-4096		# tmp177,
	addi	a5,a5,-16	#, tmp222, tmp177
	add	a3,a5,s0	#, tmp178, tmp222
	li	a5,-4096		# tmp179,
	addi	a5,a5,-16	#, tmp223, tmp179
	add	a5,a5,s0	#, tmp180, tmp223
	lw	a5,84(a5)		# tmp181, i
	slli	a5,a5,2	#, tmp182, tmp181
	add	a5,a3,a5	# tmp182, tmp182, tmp178
	sw	a4,88(a5)	# _5, f[i_6]
# eval/problem56//code.c:7:     for (int i = 2; i <= n; i++)
	li	a5,-4096		# tmp183,
	addi	a5,a5,-16	#, tmp224, tmp183
	add	a5,a5,s0	#, tmp184, tmp224
	li	a4,-4096		# tmp185,
	addi	a4,a4,-16	#, tmp225, tmp185
	add	a4,a4,s0	#, tmp186, tmp225
	lw	a4,84(a4)		# tmp189, i
	addiw	a4,a4,1	#, tmp187, tmp188
	sw	a4,84(a5)	# tmp187, i
.L2:
# eval/problem56//code.c:7:     for (int i = 2; i <= n; i++)
	li	a5,-4096		# tmp190,
	addi	a5,a5,-16	#, tmp226, tmp190
	add	a4,a5,s0	#, tmp191, tmp226
	li	a5,-4096		# tmp192,
	addi	a5,a5,-16	#, tmp227, tmp192
	add	a5,a5,s0	#, tmp193, tmp227
	lw	a4,84(a4)		# tmp195, i
	lw	a5,76(a5)		# tmp197, n
	sext.w	a4,a4	# tmp198, tmp194
	sext.w	a5,a5	# tmp199, tmp196
	ble	a4,a5,.L3	#, tmp198, tmp199,
# eval/problem56//code.c:9:     return f[n];
	li	a5,-4096		# tmp200,
	addi	a5,a5,-16	#, tmp228, tmp200
	add	a4,a5,s0	#, tmp201, tmp228
	li	a5,-4096		# tmp202,
	addi	a5,a5,-16	#, tmp229, tmp202
	add	a5,a5,s0	#, tmp203, tmp229
	lw	a5,76(a5)		# tmp204, n
	slli	a5,a5,2	#, tmp205, tmp204
	add	a5,a4,a5	# tmp205, tmp205, tmp201
	lw	a5,88(a5)		# _14, f[n_13(D)]
	mv	a4,a5	# <retval>, _14
# eval/problem56//code.c:10: }
	la	a5,__stack_chk_guard		# tmp207,
	ld	a3, -24(s0)	# tmp210, D.2719
	ld	a5, 0(a5)	# tmp208, __stack_chk_guard
	xor	a5, a3, a5	# tmp208, tmp210
	li	a3, 0	# tmp210
	beq	a5,zero,.L5	#, tmp208,,
	call	__stack_chk_fail@plt	#
.L5:
	mv	a0,a4	#, <retval>
	addi	sp,sp,2016	#,,
	.cfi_def_cfa 2, 2032
	ld	ra,2024(sp)		#,
	.cfi_restore 1
	ld	s0,2016(sp)		#,
	.cfi_restore 8
	addi	sp,sp,2032	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
