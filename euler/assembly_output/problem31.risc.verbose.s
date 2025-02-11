	.file	"problem31.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
# problem31.c:10:   int z = 0;
	sw	zero,-52(s0)	#, z
# problem31.c:11:   int n = 200;
	li	a5,200		# tmp142,
	sw	a5,-20(s0)	# tmp142, n
# problem31.c:14:   for (a = 0; a <= n; a += 200)
	sw	zero,-48(s0)	#, a
# problem31.c:14:   for (a = 0; a <= n; a += 200)
	j	.L2		#
.L16:
# problem31.c:15:     for (b = 0; b <= n; b += 100)
	sw	zero,-44(s0)	#, b
# problem31.c:15:     for (b = 0; b <= n; b += 100)
	j	.L3		#
.L15:
# problem31.c:16:       for (c = 0; c <= n; c += 50)
	sw	zero,-40(s0)	#, c
# problem31.c:16:       for (c = 0; c <= n; c += 50)
	j	.L4		#
.L14:
# problem31.c:17:         for (d = 0; d <= n; d += 20)
	sw	zero,-36(s0)	#, d
# problem31.c:17:         for (d = 0; d <= n; d += 20)
	j	.L5		#
.L13:
# problem31.c:18:           for (e = 0; e <= n; e += 10)
	sw	zero,-32(s0)	#, e
# problem31.c:18:           for (e = 0; e <= n; e += 10)
	j	.L6		#
.L12:
# problem31.c:19:             for (f = 0; f <= n; f += 5)
	sw	zero,-28(s0)	#, f
# problem31.c:19:             for (f = 0; f <= n; f += 5)
	j	.L7		#
.L11:
# problem31.c:20:               for (g = 0; g <= n; g += 2)
	sw	zero,-24(s0)	#, g
# problem31.c:20:               for (g = 0; g <= n; g += 2)
	j	.L8		#
.L10:
# problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	lw	a5,-48(s0)		# tmp145, a
	mv	a4,a5	# tmp144, tmp145
	lw	a5,-44(s0)		# tmp147, b
	addw	a5,a4,a5	# tmp146, tmp143, tmp144
	sext.w	a5,a5	# _1, tmp143
# problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	lw	a4,-40(s0)		# tmp150, c
	addw	a5,a4,a5	# _1, tmp148, tmp149
	sext.w	a5,a5	# _2, tmp148
# problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	lw	a4,-36(s0)		# tmp153, d
	addw	a5,a4,a5	# _2, tmp151, tmp152
	sext.w	a5,a5	# _3, tmp151
# problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	lw	a4,-32(s0)		# tmp156, e
	addw	a5,a4,a5	# _3, tmp154, tmp155
	sext.w	a5,a5	# _4, tmp154
# problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	lw	a4,-28(s0)		# tmp159, f
	addw	a5,a4,a5	# _4, tmp157, tmp158
	sext.w	a5,a5	# _5, tmp157
# problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	lw	a4,-24(s0)		# tmp162, g
	addw	a5,a4,a5	# _5, tmp160, tmp161
	sext.w	a5,a5	# _6, tmp160
# problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	mv	a4,a5	# tmp163, _6
	li	a5,200		# tmp164,
	bgt	a4,a5,.L9	#, tmp163, tmp164,
# problem31.c:22:                   z++;
	lw	a5,-52(s0)		# tmp167, z
	addiw	a5,a5,1	#, tmp165, tmp166
	sw	a5,-52(s0)	# tmp165, z
.L9:
# problem31.c:20:               for (g = 0; g <= n; g += 2)
	lw	a5,-24(s0)		# tmp170, g
	addiw	a5,a5,2	#, tmp168, tmp169
	sw	a5,-24(s0)	# tmp168, g
.L8:
# problem31.c:20:               for (g = 0; g <= n; g += 2)
	lw	a5,-24(s0)		# tmp172, g
	mv	a4,a5	# tmp171, tmp172
	lw	a5,-20(s0)		# tmp174, n
	sext.w	a4,a4	# tmp175, tmp171
	sext.w	a5,a5	# tmp176, tmp173
	ble	a4,a5,.L10	#, tmp175, tmp176,
# problem31.c:19:             for (f = 0; f <= n; f += 5)
	lw	a5,-28(s0)		# tmp179, f
	addiw	a5,a5,5	#, tmp177, tmp178
	sw	a5,-28(s0)	# tmp177, f
.L7:
# problem31.c:19:             for (f = 0; f <= n; f += 5)
	lw	a5,-28(s0)		# tmp181, f
	mv	a4,a5	# tmp180, tmp181
	lw	a5,-20(s0)		# tmp183, n
	sext.w	a4,a4	# tmp184, tmp180
	sext.w	a5,a5	# tmp185, tmp182
	ble	a4,a5,.L11	#, tmp184, tmp185,
# problem31.c:18:           for (e = 0; e <= n; e += 10)
	lw	a5,-32(s0)		# tmp188, e
	addiw	a5,a5,10	#, tmp186, tmp187
	sw	a5,-32(s0)	# tmp186, e
.L6:
# problem31.c:18:           for (e = 0; e <= n; e += 10)
	lw	a5,-32(s0)		# tmp190, e
	mv	a4,a5	# tmp189, tmp190
	lw	a5,-20(s0)		# tmp192, n
	sext.w	a4,a4	# tmp193, tmp189
	sext.w	a5,a5	# tmp194, tmp191
	ble	a4,a5,.L12	#, tmp193, tmp194,
# problem31.c:17:         for (d = 0; d <= n; d += 20)
	lw	a5,-36(s0)		# tmp197, d
	addiw	a5,a5,20	#, tmp195, tmp196
	sw	a5,-36(s0)	# tmp195, d
.L5:
# problem31.c:17:         for (d = 0; d <= n; d += 20)
	lw	a5,-36(s0)		# tmp199, d
	mv	a4,a5	# tmp198, tmp199
	lw	a5,-20(s0)		# tmp201, n
	sext.w	a4,a4	# tmp202, tmp198
	sext.w	a5,a5	# tmp203, tmp200
	ble	a4,a5,.L13	#, tmp202, tmp203,
# problem31.c:16:       for (c = 0; c <= n; c += 50)
	lw	a5,-40(s0)		# tmp206, c
	addiw	a5,a5,50	#, tmp204, tmp205
	sw	a5,-40(s0)	# tmp204, c
.L4:
# problem31.c:16:       for (c = 0; c <= n; c += 50)
	lw	a5,-40(s0)		# tmp208, c
	mv	a4,a5	# tmp207, tmp208
	lw	a5,-20(s0)		# tmp210, n
	sext.w	a4,a4	# tmp211, tmp207
	sext.w	a5,a5	# tmp212, tmp209
	ble	a4,a5,.L14	#, tmp211, tmp212,
# problem31.c:15:     for (b = 0; b <= n; b += 100)
	lw	a5,-44(s0)		# tmp215, b
	addiw	a5,a5,100	#, tmp213, tmp214
	sw	a5,-44(s0)	# tmp213, b
.L3:
# problem31.c:15:     for (b = 0; b <= n; b += 100)
	lw	a5,-44(s0)		# tmp217, b
	mv	a4,a5	# tmp216, tmp217
	lw	a5,-20(s0)		# tmp219, n
	sext.w	a4,a4	# tmp220, tmp216
	sext.w	a5,a5	# tmp221, tmp218
	ble	a4,a5,.L15	#, tmp220, tmp221,
# problem31.c:14:   for (a = 0; a <= n; a += 200)
	lw	a5,-48(s0)		# tmp224, a
	addiw	a5,a5,200	#, tmp222, tmp223
	sw	a5,-48(s0)	# tmp222, a
.L2:
# problem31.c:14:   for (a = 0; a <= n; a += 200)
	lw	a5,-48(s0)		# tmp226, a
	mv	a4,a5	# tmp225, tmp226
	lw	a5,-20(s0)		# tmp228, n
	sext.w	a4,a4	# tmp229, tmp225
	sext.w	a5,a5	# tmp230, tmp227
	ble	a4,a5,.L16	#, tmp229, tmp230,
# problem31.c:23:   printf("%d\n", z);
	lw	a5,-52(s0)		# tmp231, z
	mv	a1,a5	#, tmp231
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem31.c:25:   return 0;
	li	a5,0		# _27,
# problem31.c:26: }
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
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
