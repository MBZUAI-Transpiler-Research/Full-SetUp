	.file	"problem45.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%llu\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	li	a5,144		# tmp76,
	sd	a5,-32(s0)	# tmp76, i
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	j	.L2		#
.L3:
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	ld	a5,-32(s0)		# tmp78, i
	addi	a5,a5,1	#, tmp77, tmp78
	sd	a5,-32(s0)	# tmp77, i
.L2:
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	ld	a0,-32(s0)		#, i
	call	hexagonal		#
	sd	a0,-24(s0)	#, h
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	ld	a0,-24(s0)		#, h
	call	is_pentagonal		#
	mv	a5,a0	# tmp79,
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	beq	a5,zero,.L3	#, _1,,
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	ld	a0,-24(s0)		#, h
	call	is_triangle		#
	mv	a5,a0	# tmp80,
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	beq	a5,zero,.L3	#, _2,,
# problem45.c:18:   printf("%llu\n", h);
	ld	a1,-24(s0)		#, h
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem45.c:19:   return 0;
	li	a5,0		# _13,
# problem45.c:20: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.align	1
	.globl	is_triangle
	.type	is_triangle, @function
is_triangle:
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# n, n
# problem45.c:24:   unsigned long long sq = sqrt(1+8*n);
	ld	a5,-40(s0)		# tmp83, n
	slli	a5,a5,3	#, _1, tmp83
# problem45.c:24:   unsigned long long sq = sqrt(1+8*n);
	addi	a5,a5,1	#, _2, _1
# problem45.c:24:   unsigned long long sq = sqrt(1+8*n);
	fcvt.d.lu	fa5,a5	# _3, _2
	fmv.d	fa0,fa5	#, _3
	call	sqrt@plt	#
	fmv.d	fa5,fa0	# _4,
# problem45.c:24:   unsigned long long sq = sqrt(1+8*n);
	fcvt.lu.d a5,fa5,rtz	# tmp84, _4
	sd	a5,-24(s0)	# tmp84, sq
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	ld	a5,-24(s0)		# tmp85, sq
	mul	a4,a5,a5	# _5, tmp85, tmp85
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	ld	a5,-40(s0)		# tmp86, n
	slli	a5,a5,3	#, _6, tmp86
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	addi	a5,a5,1	#, _7, _6
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	bne	a4,a5,.L6	#, _5, _7,
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	ld	a5,-24(s0)		# tmp87, sq
	addi	a5,a5,-1	#, _8, tmp87
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	andi	a5,a5,1	#, _9, _8
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	bne	a5,zero,.L6	#, _9,,
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	li	a5,1		# iftmp.0_10,
	j	.L7		#
.L6:
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	li	a5,0		# iftmp.0_10,
.L7:
# problem45.c:26: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	is_triangle, .-is_triangle
	.align	1
	.globl	is_pentagonal
	.type	is_pentagonal, @function
is_pentagonal:
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# n, n
# problem45.c:30:   unsigned long long sq = sqrt(1+24*n);
	ld	a4,-40(s0)		# tmp83, n
	mv	a5,a4	# tmp84, tmp83
	slli	a5,a5,1	#, tmp85, tmp84
	add	a5,a5,a4	# tmp83, tmp84, tmp84
	slli	a5,a5,3	#, tmp86, tmp84
# problem45.c:30:   unsigned long long sq = sqrt(1+24*n);
	addi	a5,a5,1	#, _2, _1
# problem45.c:30:   unsigned long long sq = sqrt(1+24*n);
	fcvt.d.lu	fa5,a5	# _3, _2
	fmv.d	fa0,fa5	#, _3
	call	sqrt@plt	#
	fmv.d	fa5,fa0	# _4,
# problem45.c:30:   unsigned long long sq = sqrt(1+24*n);
	fcvt.lu.d a5,fa5,rtz	# tmp87, _4
	sd	a5,-24(s0)	# tmp87, sq
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	ld	a5,-24(s0)		# tmp88, sq
	mul	a3,a5,a5	# _5, tmp88, tmp88
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	ld	a4,-40(s0)		# tmp89, n
	mv	a5,a4	# tmp90, tmp89
	slli	a5,a5,1	#, tmp91, tmp90
	add	a5,a5,a4	# tmp89, tmp90, tmp90
	slli	a5,a5,3	#, tmp92, tmp90
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	addi	a5,a5,1	#, _7, _6
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	bne	a3,a5,.L10	#, _5, _7,
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	ld	a5,-24(s0)		# tmp93, sq
	addi	a4,a5,1	#, _8, tmp93
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	li	a5,6		# tmp94,
	remu	a5,a4,a5	# tmp94, _9, _8
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	bne	a5,zero,.L10	#, _9,,
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	li	a5,1		# iftmp.1_10,
	j	.L11		#
.L10:
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	li	a5,0		# iftmp.1_10,
.L11:
# problem45.c:32: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	is_pentagonal, .-is_pentagonal
	.align	1
	.globl	hexagonal
	.type	hexagonal, @function
hexagonal:
	addi	sp,sp,-32	#,,
	sd	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	sd	a0,-24(s0)	# n, n
# problem45.c:36:   return n*(2*n-1);
	ld	a5,-24(s0)		# tmp76, n
	slli	a5,a5,1	#, _1, tmp76
# problem45.c:36:   return n*(2*n-1);
	addi	a4,a5,-1	#, _2, _1
# problem45.c:36:   return n*(2*n-1);
	ld	a5,-24(s0)		# tmp77, n
	mul	a5,a4,a5	# _4, _2, tmp77
# problem45.c:37: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	hexagonal, .-hexagonal
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
