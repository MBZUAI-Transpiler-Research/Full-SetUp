	.file	"problem45.c"
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
	.string	"%llu\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	li	a5,144		# tmp138,
	sd	a5,-32(s0)	# tmp138, i
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	j	.L2		#
.L3:
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	ld	a5,-32(s0)		# tmp140, i
	addi	a5,a5,1	#, tmp139, tmp140
	sd	a5,-32(s0)	# tmp139, i
.L2:
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	ld	a0,-32(s0)		#, i
	call	hexagonal		#
	sd	a0,-24(s0)	#, h
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	ld	a0,-24(s0)		#, h
	call	is_pentagonal		#
	mv	a5,a0	# tmp141,
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	beq	a5,zero,.L3	#, _1,,
# problem45.c:16:   for (i = 144; !(is_pentagonal(h = hexagonal(i)) && is_triangle(h)); i++)
	ld	a0,-24(s0)		#, h
	call	is_triangle		#
	mv	a5,a0	# tmp142,
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
	.cfi_restore 1
	ld	s0,16(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	1
	.globl	is_triangle
	.type	is_triangle, @function
is_triangle:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# n, n
# problem45.c:24:   unsigned long long sq = sqrt(1+8*n);
	ld	a5,-40(s0)		# tmp145, n
	slli	a5,a5,3	#, _1, tmp145
# problem45.c:24:   unsigned long long sq = sqrt(1+8*n);
	addi	a5,a5,1	#, _2, _1
# problem45.c:24:   unsigned long long sq = sqrt(1+8*n);
	fcvt.d.lu	fa5,a5	# _3, _2
	fmv.d	fa0,fa5	#, _3
	call	sqrt@plt	#
	fmv.d	fa5,fa0	# _4,
# problem45.c:24:   unsigned long long sq = sqrt(1+8*n);
	fcvt.lu.d a5,fa5,rtz	# tmp146, _4
	sd	a5,-24(s0)	# tmp146, sq
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	ld	a5,-24(s0)		# tmp147, sq
	mul	a4,a5,a5	# _5, tmp147, tmp147
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	ld	a5,-40(s0)		# tmp148, n
	slli	a5,a5,3	#, _6, tmp148
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	addi	a5,a5,1	#, _7, _6
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	bne	a4,a5,.L6	#, _5, _7,
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	ld	a5,-24(s0)		# tmp149, sq
	addi	a5,a5,-1	#, _8, tmp149
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	andi	a5,a5,1	#, _9, _8
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	bne	a5,zero,.L6	#, _9,,
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	li	a5,1		# iftmp.0_10,
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	j	.L7		#
.L6:
# problem45.c:25:   return sq*sq == 1+8*n && (sq-1) % 2 == 0;
	li	a5,0		# iftmp.0_10,
.L7:
# problem45.c:26: }
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
.LFE1:
	.size	is_triangle, .-is_triangle
	.align	1
	.globl	is_pentagonal
	.type	is_pentagonal, @function
is_pentagonal:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# n, n
# problem45.c:30:   unsigned long long sq = sqrt(1+24*n);
	ld	a4,-40(s0)		# tmp145, n
	mv	a5,a4	# tmp146, tmp145
	slli	a5,a5,1	#, tmp147, tmp146
	add	a5,a5,a4	# tmp145, tmp146, tmp146
	slli	a5,a5,3	#, tmp148, tmp146
# problem45.c:30:   unsigned long long sq = sqrt(1+24*n);
	addi	a5,a5,1	#, _2, _1
# problem45.c:30:   unsigned long long sq = sqrt(1+24*n);
	fcvt.d.lu	fa5,a5	# _3, _2
	fmv.d	fa0,fa5	#, _3
	call	sqrt@plt	#
	fmv.d	fa5,fa0	# _4,
# problem45.c:30:   unsigned long long sq = sqrt(1+24*n);
	fcvt.lu.d a5,fa5,rtz	# tmp149, _4
	sd	a5,-24(s0)	# tmp149, sq
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	ld	a5,-24(s0)		# tmp150, sq
	mul	a3,a5,a5	# _5, tmp150, tmp150
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	ld	a4,-40(s0)		# tmp151, n
	mv	a5,a4	# tmp152, tmp151
	slli	a5,a5,1	#, tmp153, tmp152
	add	a5,a5,a4	# tmp151, tmp152, tmp152
	slli	a5,a5,3	#, tmp154, tmp152
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	addi	a5,a5,1	#, _7, _6
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	bne	a3,a5,.L10	#, _5, _7,
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	ld	a5,-24(s0)		# tmp155, sq
	addi	a4,a5,1	#, _8, tmp155
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	li	a5,6		# tmp156,
	remu	a5,a4,a5	# tmp156, _9, _8
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	bne	a5,zero,.L10	#, _9,,
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	li	a5,1		# iftmp.1_10,
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	j	.L11		#
.L10:
# problem45.c:31:   return sq*sq == 1+24*n && (1+sq) % 6 == 0;
	li	a5,0		# iftmp.1_10,
.L11:
# problem45.c:32: }
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
.LFE2:
	.size	is_pentagonal, .-is_pentagonal
	.align	1
	.globl	hexagonal
	.type	hexagonal, @function
hexagonal:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)	# n, n
# problem45.c:36:   return n*(2*n-1);
	ld	a5,-24(s0)		# tmp138, n
	slli	a5,a5,1	#, _1, tmp138
# problem45.c:36:   return n*(2*n-1);
	addi	a4,a5,-1	#, _2, _1
# problem45.c:36:   return n*(2*n-1);
	ld	a5,-24(s0)		# tmp139, n
	mul	a5,a4,a5	# _4, _2, tmp139
# problem45.c:37: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE3:
	.size	hexagonal, .-hexagonal
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
