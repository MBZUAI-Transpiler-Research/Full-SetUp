	.file	"problem31.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
# problem31.c:10:   int z = 0;
	sw	zero,-52(s0)	#, z
# problem31.c:11:   int n = 200;
	li	a5,200		# tmp80,
	sw	a5,-20(s0)	# tmp80, n
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
	lw	a5,-48(s0)		# tmp83, a
	mv	a4,a5	# tmp82, tmp83
	lw	a5,-44(s0)		# tmp85, b
	addw	a5,a4,a5	# tmp84, tmp81, tmp82
	sext.w	a5,a5	# _1, tmp81
# problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	lw	a4,-40(s0)		# tmp88, c
	addw	a5,a4,a5	# _1, tmp86, tmp87
	sext.w	a5,a5	# _2, tmp86
# problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	lw	a4,-36(s0)		# tmp91, d
	addw	a5,a4,a5	# _2, tmp89, tmp90
	sext.w	a5,a5	# _3, tmp89
# problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	lw	a4,-32(s0)		# tmp94, e
	addw	a5,a4,a5	# _3, tmp92, tmp93
	sext.w	a5,a5	# _4, tmp92
# problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	lw	a4,-28(s0)		# tmp97, f
	addw	a5,a4,a5	# _4, tmp95, tmp96
	sext.w	a5,a5	# _5, tmp95
# problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	lw	a4,-24(s0)		# tmp100, g
	addw	a5,a4,a5	# _5, tmp98, tmp99
	sext.w	a5,a5	# _6, tmp98
# problem31.c:21:                 if (a+b+c+d+e+f+g <= 200)
	mv	a4,a5	# tmp101, _6
	li	a5,200		# tmp102,
	bgt	a4,a5,.L9	#, tmp101, tmp102,
# problem31.c:22:                   z++;
	lw	a5,-52(s0)		# tmp105, z
	addiw	a5,a5,1	#, tmp103, tmp104
	sw	a5,-52(s0)	# tmp103, z
.L9:
# problem31.c:20:               for (g = 0; g <= n; g += 2)
	lw	a5,-24(s0)		# tmp108, g
	addiw	a5,a5,2	#, tmp106, tmp107
	sw	a5,-24(s0)	# tmp106, g
.L8:
# problem31.c:20:               for (g = 0; g <= n; g += 2)
	lw	a5,-24(s0)		# tmp110, g
	mv	a4,a5	# tmp109, tmp110
	lw	a5,-20(s0)		# tmp112, n
	sext.w	a4,a4	# tmp113, tmp109
	sext.w	a5,a5	# tmp114, tmp111
	ble	a4,a5,.L10	#, tmp113, tmp114,
# problem31.c:19:             for (f = 0; f <= n; f += 5)
	lw	a5,-28(s0)		# tmp117, f
	addiw	a5,a5,5	#, tmp115, tmp116
	sw	a5,-28(s0)	# tmp115, f
.L7:
# problem31.c:19:             for (f = 0; f <= n; f += 5)
	lw	a5,-28(s0)		# tmp119, f
	mv	a4,a5	# tmp118, tmp119
	lw	a5,-20(s0)		# tmp121, n
	sext.w	a4,a4	# tmp122, tmp118
	sext.w	a5,a5	# tmp123, tmp120
	ble	a4,a5,.L11	#, tmp122, tmp123,
# problem31.c:18:           for (e = 0; e <= n; e += 10)
	lw	a5,-32(s0)		# tmp126, e
	addiw	a5,a5,10	#, tmp124, tmp125
	sw	a5,-32(s0)	# tmp124, e
.L6:
# problem31.c:18:           for (e = 0; e <= n; e += 10)
	lw	a5,-32(s0)		# tmp128, e
	mv	a4,a5	# tmp127, tmp128
	lw	a5,-20(s0)		# tmp130, n
	sext.w	a4,a4	# tmp131, tmp127
	sext.w	a5,a5	# tmp132, tmp129
	ble	a4,a5,.L12	#, tmp131, tmp132,
# problem31.c:17:         for (d = 0; d <= n; d += 20)
	lw	a5,-36(s0)		# tmp135, d
	addiw	a5,a5,20	#, tmp133, tmp134
	sw	a5,-36(s0)	# tmp133, d
.L5:
# problem31.c:17:         for (d = 0; d <= n; d += 20)
	lw	a5,-36(s0)		# tmp137, d
	mv	a4,a5	# tmp136, tmp137
	lw	a5,-20(s0)		# tmp139, n
	sext.w	a4,a4	# tmp140, tmp136
	sext.w	a5,a5	# tmp141, tmp138
	ble	a4,a5,.L13	#, tmp140, tmp141,
# problem31.c:16:       for (c = 0; c <= n; c += 50)
	lw	a5,-40(s0)		# tmp144, c
	addiw	a5,a5,50	#, tmp142, tmp143
	sw	a5,-40(s0)	# tmp142, c
.L4:
# problem31.c:16:       for (c = 0; c <= n; c += 50)
	lw	a5,-40(s0)		# tmp146, c
	mv	a4,a5	# tmp145, tmp146
	lw	a5,-20(s0)		# tmp148, n
	sext.w	a4,a4	# tmp149, tmp145
	sext.w	a5,a5	# tmp150, tmp147
	ble	a4,a5,.L14	#, tmp149, tmp150,
# problem31.c:15:     for (b = 0; b <= n; b += 100)
	lw	a5,-44(s0)		# tmp153, b
	addiw	a5,a5,100	#, tmp151, tmp152
	sw	a5,-44(s0)	# tmp151, b
.L3:
# problem31.c:15:     for (b = 0; b <= n; b += 100)
	lw	a5,-44(s0)		# tmp155, b
	mv	a4,a5	# tmp154, tmp155
	lw	a5,-20(s0)		# tmp157, n
	sext.w	a4,a4	# tmp158, tmp154
	sext.w	a5,a5	# tmp159, tmp156
	ble	a4,a5,.L15	#, tmp158, tmp159,
# problem31.c:14:   for (a = 0; a <= n; a += 200)
	lw	a5,-48(s0)		# tmp162, a
	addiw	a5,a5,200	#, tmp160, tmp161
	sw	a5,-48(s0)	# tmp160, a
.L2:
# problem31.c:14:   for (a = 0; a <= n; a += 200)
	lw	a5,-48(s0)		# tmp164, a
	mv	a4,a5	# tmp163, tmp164
	lw	a5,-20(s0)		# tmp166, n
	sext.w	a4,a4	# tmp167, tmp163
	sext.w	a5,a5	# tmp168, tmp165
	ble	a4,a5,.L16	#, tmp167, tmp168,
# problem31.c:23:   printf("%d\n", z);
	lw	a5,-52(s0)		# tmp169, z
	mv	a1,a5	#, tmp169
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem31.c:25:   return 0;
	li	a5,0		# _27,
# problem31.c:26: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
