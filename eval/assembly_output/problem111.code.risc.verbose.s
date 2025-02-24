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
	.section	.rodata
	.align	3
.LC0:
	.string	"YES"
	.align	3
.LC1:
	.string	"NO"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# lst1, lst1
	mv	a5,a1	# tmp148, size1
	sd	a2,-56(s0)	# lst2, lst2
	mv	a4,a3	# tmp150, size2
	sw	a5,-44(s0)	# tmp149, size1
	mv	a5,a4	# tmp151, tmp150
	sw	a5,-48(s0)	# tmp151, size2
# code.c:4:     int num = 0;
	sw	zero,-28(s0)	#, num
# code.c:5:     for (int i = 0; i < size1; i++)
	sw	zero,-24(s0)	#, i
# code.c:5:     for (int i = 0; i < size1; i++)
	j	.L2		#
.L4:
# code.c:6:         if (lst1[i] % 2 == 0) num += 1;
	lw	a5,-24(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp152, lst1
	add	a5,a4,a5	# _2, _3, tmp152
	lw	a5,0(a5)		# _4, *_3
# code.c:6:         if (lst1[i] % 2 == 0) num += 1;
	sext.w	a5,a5	# _5, _4
	andi	a5,a5,1	#, tmp154, tmp153
	sext.w	a5,a5	# _6, tmp154
# code.c:6:         if (lst1[i] % 2 == 0) num += 1;
	bne	a5,zero,.L3	#, _6,,
# code.c:6:         if (lst1[i] % 2 == 0) num += 1;
	lw	a5,-28(s0)		# tmp157, num
	addiw	a5,a5,1	#, tmp155, tmp156
	sw	a5,-28(s0)	# tmp155, num
.L3:
# code.c:5:     for (int i = 0; i < size1; i++)
	lw	a5,-24(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-24(s0)	# tmp158, i
.L2:
# code.c:5:     for (int i = 0; i < size1; i++)
	lw	a5,-24(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-44(s0)		# tmp164, size1
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L4	#, tmp165, tmp166,
# code.c:7:     for (int i = 0; i < size2; i++)
	sw	zero,-20(s0)	#, i
# code.c:7:     for (int i = 0; i < size2; i++)
	j	.L5		#
.L7:
# code.c:8:         if (lst2[i] % 2 == 0) num += 1;
	lw	a5,-20(s0)		# _7, i
	slli	a5,a5,2	#, _8, _7
	ld	a4,-56(s0)		# tmp167, lst2
	add	a5,a4,a5	# _8, _9, tmp167
	lw	a5,0(a5)		# _10, *_9
# code.c:8:         if (lst2[i] % 2 == 0) num += 1;
	sext.w	a5,a5	# _11, _10
	andi	a5,a5,1	#, tmp169, tmp168
	sext.w	a5,a5	# _12, tmp169
# code.c:8:         if (lst2[i] % 2 == 0) num += 1;
	bne	a5,zero,.L6	#, _12,,
# code.c:8:         if (lst2[i] % 2 == 0) num += 1;
	lw	a5,-28(s0)		# tmp172, num
	addiw	a5,a5,1	#, tmp170, tmp171
	sw	a5,-28(s0)	# tmp170, num
.L6:
# code.c:7:     for (int i = 0; i < size2; i++)
	lw	a5,-20(s0)		# tmp175, i
	addiw	a5,a5,1	#, tmp173, tmp174
	sw	a5,-20(s0)	# tmp173, i
.L5:
# code.c:7:     for (int i = 0; i < size2; i++)
	lw	a5,-20(s0)		# tmp177, i
	mv	a4,a5	# tmp176, tmp177
	lw	a5,-48(s0)		# tmp179, size2
	sext.w	a4,a4	# tmp180, tmp176
	sext.w	a5,a5	# tmp181, tmp178
	blt	a4,a5,.L7	#, tmp180, tmp181,
# code.c:9:     if (num >= size1) return "YES";
	lw	a5,-28(s0)		# tmp183, num
	mv	a4,a5	# tmp182, tmp183
	lw	a5,-44(s0)		# tmp185, size1
	sext.w	a4,a4	# tmp186, tmp182
	sext.w	a5,a5	# tmp187, tmp184
	blt	a4,a5,.L8	#, tmp186, tmp187,
# code.c:9:     if (num >= size1) return "YES";
	lla	a5,.LC0	# _19,
# code.c:9:     if (num >= size1) return "YES";
	j	.L9		#
.L8:
# code.c:10:     return "NO";
	lla	a5,.LC1	# _19,
.L9:
# code.c:11: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
