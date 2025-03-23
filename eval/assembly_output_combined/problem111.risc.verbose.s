	.file	"problem111.c"
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
.LC5:
	.string	"YES"
	.align	3
.LC6:
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
# problem111.c:4:     int num = 0;
	sw	zero,-28(s0)	#, num
# problem111.c:5:     for (int i = 0; i < size1; i++)
	sw	zero,-24(s0)	#, i
# problem111.c:5:     for (int i = 0; i < size1; i++)
	j	.L2		#
.L4:
# problem111.c:6:         if (lst1[i] % 2 == 0) num += 1;
	lw	a5,-24(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp152, lst1
	add	a5,a4,a5	# _2, _3, tmp152
	lw	a5,0(a5)		# _4, *_3
# problem111.c:6:         if (lst1[i] % 2 == 0) num += 1;
	sext.w	a5,a5	# _5, _4
	andi	a5,a5,1	#, tmp154, tmp153
	sext.w	a5,a5	# _6, tmp154
# problem111.c:6:         if (lst1[i] % 2 == 0) num += 1;
	bne	a5,zero,.L3	#, _6,,
# problem111.c:6:         if (lst1[i] % 2 == 0) num += 1;
	lw	a5,-28(s0)		# tmp157, num
	addiw	a5,a5,1	#, tmp155, tmp156
	sw	a5,-28(s0)	# tmp155, num
.L3:
# problem111.c:5:     for (int i = 0; i < size1; i++)
	lw	a5,-24(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-24(s0)	# tmp158, i
.L2:
# problem111.c:5:     for (int i = 0; i < size1; i++)
	lw	a5,-24(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-44(s0)		# tmp164, size1
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L4	#, tmp165, tmp166,
# problem111.c:7:     for (int i = 0; i < size2; i++)
	sw	zero,-20(s0)	#, i
# problem111.c:7:     for (int i = 0; i < size2; i++)
	j	.L5		#
.L7:
# problem111.c:8:         if (lst2[i] % 2 == 0) num += 1;
	lw	a5,-20(s0)		# _7, i
	slli	a5,a5,2	#, _8, _7
	ld	a4,-56(s0)		# tmp167, lst2
	add	a5,a4,a5	# _8, _9, tmp167
	lw	a5,0(a5)		# _10, *_9
# problem111.c:8:         if (lst2[i] % 2 == 0) num += 1;
	sext.w	a5,a5	# _11, _10
	andi	a5,a5,1	#, tmp169, tmp168
	sext.w	a5,a5	# _12, tmp169
# problem111.c:8:         if (lst2[i] % 2 == 0) num += 1;
	bne	a5,zero,.L6	#, _12,,
# problem111.c:8:         if (lst2[i] % 2 == 0) num += 1;
	lw	a5,-28(s0)		# tmp172, num
	addiw	a5,a5,1	#, tmp170, tmp171
	sw	a5,-28(s0)	# tmp170, num
.L6:
# problem111.c:7:     for (int i = 0; i < size2; i++)
	lw	a5,-20(s0)		# tmp175, i
	addiw	a5,a5,1	#, tmp173, tmp174
	sw	a5,-20(s0)	# tmp173, i
.L5:
# problem111.c:7:     for (int i = 0; i < size2; i++)
	lw	a5,-20(s0)		# tmp177, i
	mv	a4,a5	# tmp176, tmp177
	lw	a5,-48(s0)		# tmp179, size2
	sext.w	a4,a4	# tmp180, tmp176
	sext.w	a5,a5	# tmp181, tmp178
	blt	a4,a5,.L7	#, tmp180, tmp181,
# problem111.c:9:     if (num >= size1) return "YES";
	lw	a5,-28(s0)		# tmp183, num
	mv	a4,a5	# tmp182, tmp183
	lw	a5,-44(s0)		# tmp185, size1
	sext.w	a4,a4	# tmp186, tmp182
	sext.w	a5,a5	# tmp187, tmp184
	blt	a4,a5,.L8	#, tmp186, tmp187,
# problem111.c:9:     if (num >= size1) return "YES";
	lla	a5,.LC5	# _19,
# problem111.c:9:     if (num >= size1) return "YES";
	j	.L9		#
.L8:
# problem111.c:10:     return "NO";
	lla	a5,.LC6	# _19,
.L9:
# problem111.c:11: }
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
	.section	.rodata
	.align	3
.LC7:
	.string	"problem111.c"
	.align	3
.LC8:
	.string	"strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 2, 3, 4}, 4), \"YES\") == 0"
	.align	3
.LC9:
	.string	"strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 5, 3, 4}, 4), \"NO\") == 0"
	.align	3
.LC10:
	.string	"strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){2, 1, 4, 3}, 4), \"YES\") == 0"
	.align	3
.LC11:
	.string	"strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 4}, 3), \"YES\") == 0"
	.align	3
.LC12:
	.string	"strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 3}, 3), \"NO\") == 0"
	.align	3
.LC13:
	.string	"strcmp(func0((int[]){3, 2, 6, 1, 8, 9}, 6, (int[]){3, 5, 5, 1, 1, 1}, 6), \"NO\") == 0"
	.align	3
.LC14:
	.string	"strcmp(func0((int[]){100, 200}, 2, (int[]){200, 200}, 2), \"YES\") == 0"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.align	3
.LC1:
	.word	1
	.word	5
	.word	3
	.word	4
	.align	3
.LC2:
	.word	2
	.word	1
	.word	4
	.word	3
	.align	3
.LC3:
	.word	3
	.word	2
	.word	6
	.word	1
	.word	8
	.word	9
	.align	3
.LC4:
	.word	3
	.word	5
	.word	5
	.word	1
	.word	1
	.word	1
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
# problem111.c:18: int main() {
	la	a5,__stack_chk_guard		# tmp150,
	ld	a4, 0(a5)	# tmp217, __stack_chk_guard
	sd	a4, -24(s0)	# tmp217, D.3030
	li	a4, 0	# tmp217
# problem111.c:19:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 2, 3, 4}, 4), "YES") == 0);
	lla	a5,.LC0	# tmp151,
	ld	a4,0(a5)		# tmp152,
	sd	a4,-72(s0)	# tmp152, MEM[(int[4] *)_84]
	ld	a5,8(a5)		# tmp153,
	sd	a5,-64(s0)	# tmp153, MEM[(int[4] *)_84]
	lla	a5,.LC0	# tmp154,
	ld	a4,0(a5)		# tmp155,
	sd	a4,-48(s0)	# tmp155, MEM[(int[4] *)_85]
	ld	a5,8(a5)		# tmp156,
	sd	a5,-40(s0)	# tmp156, MEM[(int[4] *)_85]
	addi	a4,s0,-48	#, tmp157,
	addi	a5,s0,-72	#, tmp158,
	li	a3,4		#,
	mv	a2,a4	#, tmp157
	li	a1,4		#,
	mv	a0,a5	#, tmp158
	call	func0		#
	mv	a5,a0	# _1,
# problem111.c:19:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 2, 3, 4}, 4), "YES") == 0);
	lla	a1,.LC5	#,
	mv	a0,a5	#, _1
	call	strcmp@plt	#
	mv	a5,a0	# tmp159,
# problem111.c:19:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 2, 3, 4}, 4), "YES") == 0);
	beq	a5,zero,.L11	#, _2,,
# problem111.c:19:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 2, 3, 4}, 4), "YES") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC7	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L11:
# problem111.c:20:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 5, 3, 4}, 4), "NO") == 0);
	lla	a5,.LC0	# tmp160,
	ld	a4,0(a5)		# tmp161,
	sd	a4,-72(s0)	# tmp161, MEM[(int[4] *)_84]
	ld	a5,8(a5)		# tmp162,
	sd	a5,-64(s0)	# tmp162, MEM[(int[4] *)_84]
	lla	a5,.LC1	# tmp163,
	ld	a4,0(a5)		# tmp164,
	sd	a4,-48(s0)	# tmp164, MEM[(int[4] *)_85]
	ld	a5,8(a5)		# tmp165,
	sd	a5,-40(s0)	# tmp165, MEM[(int[4] *)_85]
	addi	a4,s0,-48	#, tmp166,
	addi	a5,s0,-72	#, tmp167,
	li	a3,4		#,
	mv	a2,a4	#, tmp166
	li	a1,4		#,
	mv	a0,a5	#, tmp167
	call	func0		#
	mv	a5,a0	# _3,
# problem111.c:20:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 5, 3, 4}, 4), "NO") == 0);
	lla	a1,.LC6	#,
	mv	a0,a5	#, _3
	call	strcmp@plt	#
	mv	a5,a0	# tmp168,
# problem111.c:20:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 5, 3, 4}, 4), "NO") == 0);
	beq	a5,zero,.L12	#, _4,,
# problem111.c:20:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 5, 3, 4}, 4), "NO") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC7	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L12:
# problem111.c:21:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){2, 1, 4, 3}, 4), "YES") == 0);
	lla	a5,.LC0	# tmp169,
	ld	a4,0(a5)		# tmp170,
	sd	a4,-72(s0)	# tmp170, MEM[(int[4] *)_84]
	ld	a5,8(a5)		# tmp171,
	sd	a5,-64(s0)	# tmp171, MEM[(int[4] *)_84]
	lla	a5,.LC2	# tmp172,
	ld	a4,0(a5)		# tmp173,
	sd	a4,-48(s0)	# tmp173, MEM[(int[4] *)_85]
	ld	a5,8(a5)		# tmp174,
	sd	a5,-40(s0)	# tmp174, MEM[(int[4] *)_85]
	addi	a4,s0,-48	#, tmp175,
	addi	a5,s0,-72	#, tmp176,
	li	a3,4		#,
	mv	a2,a4	#, tmp175
	li	a1,4		#,
	mv	a0,a5	#, tmp176
	call	func0		#
	mv	a5,a0	# _5,
# problem111.c:21:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){2, 1, 4, 3}, 4), "YES") == 0);
	lla	a1,.LC5	#,
	mv	a0,a5	#, _5
	call	strcmp@plt	#
	mv	a5,a0	# tmp177,
# problem111.c:21:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){2, 1, 4, 3}, 4), "YES") == 0);
	beq	a5,zero,.L13	#, _6,,
# problem111.c:21:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){2, 1, 4, 3}, 4), "YES") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC7	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L13:
# problem111.c:22:     assert(strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 4}, 3), "YES") == 0);
	li	a5,5		# tmp178,
	sw	a5,-72(s0)	# tmp178, MEM[(int[3] *)_84][0]
	li	a5,7		# tmp179,
	sw	a5,-68(s0)	# tmp179, MEM[(int[3] *)_84][1]
	li	a5,3		# tmp180,
	sw	a5,-64(s0)	# tmp180, MEM[(int[3] *)_84][2]
	li	a5,2		# tmp181,
	sw	a5,-48(s0)	# tmp181, MEM[(int[3] *)_85][0]
	li	a5,6		# tmp182,
	sw	a5,-44(s0)	# tmp182, MEM[(int[3] *)_85][1]
	li	a5,4		# tmp183,
	sw	a5,-40(s0)	# tmp183, MEM[(int[3] *)_85][2]
	addi	a4,s0,-48	#, tmp184,
	addi	a5,s0,-72	#, tmp185,
	li	a3,3		#,
	mv	a2,a4	#, tmp184
	li	a1,3		#,
	mv	a0,a5	#, tmp185
	call	func0		#
	mv	a5,a0	# _7,
# problem111.c:22:     assert(strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 4}, 3), "YES") == 0);
	lla	a1,.LC5	#,
	mv	a0,a5	#, _7
	call	strcmp@plt	#
	mv	a5,a0	# tmp186,
# problem111.c:22:     assert(strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 4}, 3), "YES") == 0);
	beq	a5,zero,.L14	#, _8,,
# problem111.c:22:     assert(strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 4}, 3), "YES") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC7	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L14:
# problem111.c:23:     assert(strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 3}, 3), "NO") == 0);
	li	a5,5		# tmp187,
	sw	a5,-72(s0)	# tmp187, MEM[(int[3] *)_84][0]
	li	a5,7		# tmp188,
	sw	a5,-68(s0)	# tmp188, MEM[(int[3] *)_84][1]
	li	a5,3		# tmp189,
	sw	a5,-64(s0)	# tmp189, MEM[(int[3] *)_84][2]
	li	a5,2		# tmp190,
	sw	a5,-48(s0)	# tmp190, MEM[(int[3] *)_85][0]
	li	a5,6		# tmp191,
	sw	a5,-44(s0)	# tmp191, MEM[(int[3] *)_85][1]
	li	a5,3		# tmp192,
	sw	a5,-40(s0)	# tmp192, MEM[(int[3] *)_85][2]
	addi	a4,s0,-48	#, tmp193,
	addi	a5,s0,-72	#, tmp194,
	li	a3,3		#,
	mv	a2,a4	#, tmp193
	li	a1,3		#,
	mv	a0,a5	#, tmp194
	call	func0		#
	mv	a5,a0	# _9,
# problem111.c:23:     assert(strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 3}, 3), "NO") == 0);
	lla	a1,.LC6	#,
	mv	a0,a5	#, _9
	call	strcmp@plt	#
	mv	a5,a0	# tmp195,
# problem111.c:23:     assert(strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 3}, 3), "NO") == 0);
	beq	a5,zero,.L15	#, _10,,
# problem111.c:23:     assert(strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 3}, 3), "NO") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC7	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L15:
# problem111.c:24:     assert(strcmp(func0((int[]){3, 2, 6, 1, 8, 9}, 6, (int[]){3, 5, 5, 1, 1, 1}, 6), "NO") == 0);
	lla	a5,.LC3	# tmp196,
	ld	a4,0(a5)		# tmp197,
	sd	a4,-72(s0)	# tmp197, MEM[(int[6] *)_84]
	ld	a4,8(a5)		# tmp198,
	sd	a4,-64(s0)	# tmp198, MEM[(int[6] *)_84]
	ld	a5,16(a5)		# tmp199,
	sd	a5,-56(s0)	# tmp199, MEM[(int[6] *)_84]
	lla	a5,.LC4	# tmp200,
	ld	a4,0(a5)		# tmp201,
	sd	a4,-48(s0)	# tmp201, MEM[(int[6] *)_85]
	ld	a4,8(a5)		# tmp202,
	sd	a4,-40(s0)	# tmp202, MEM[(int[6] *)_85]
	ld	a5,16(a5)		# tmp203,
	sd	a5,-32(s0)	# tmp203, MEM[(int[6] *)_85]
	addi	a4,s0,-48	#, tmp204,
	addi	a5,s0,-72	#, tmp205,
	li	a3,6		#,
	mv	a2,a4	#, tmp204
	li	a1,6		#,
	mv	a0,a5	#, tmp205
	call	func0		#
	mv	a5,a0	# _11,
# problem111.c:24:     assert(strcmp(func0((int[]){3, 2, 6, 1, 8, 9}, 6, (int[]){3, 5, 5, 1, 1, 1}, 6), "NO") == 0);
	lla	a1,.LC6	#,
	mv	a0,a5	#, _11
	call	strcmp@plt	#
	mv	a5,a0	# tmp206,
# problem111.c:24:     assert(strcmp(func0((int[]){3, 2, 6, 1, 8, 9}, 6, (int[]){3, 5, 5, 1, 1, 1}, 6), "NO") == 0);
	beq	a5,zero,.L16	#, _12,,
# problem111.c:24:     assert(strcmp(func0((int[]){3, 2, 6, 1, 8, 9}, 6, (int[]){3, 5, 5, 1, 1, 1}, 6), "NO") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC7	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L16:
# problem111.c:25:     assert(strcmp(func0((int[]){100, 200}, 2, (int[]){200, 200}, 2), "YES") == 0);
	li	a5,100		# tmp207,
	sw	a5,-72(s0)	# tmp207, MEM[(int[2] *)_84][0]
	li	a5,200		# tmp208,
	sw	a5,-68(s0)	# tmp208, MEM[(int[2] *)_84][1]
	li	a5,200		# tmp209,
	sw	a5,-48(s0)	# tmp209, MEM[(int[2] *)_85][0]
	li	a5,200		# tmp210,
	sw	a5,-44(s0)	# tmp210, MEM[(int[2] *)_85][1]
	addi	a4,s0,-48	#, tmp211,
	addi	a5,s0,-72	#, tmp212,
	li	a3,2		#,
	mv	a2,a4	#, tmp211
	li	a1,2		#,
	mv	a0,a5	#, tmp212
	call	func0		#
	mv	a5,a0	# _13,
# problem111.c:25:     assert(strcmp(func0((int[]){100, 200}, 2, (int[]){200, 200}, 2), "YES") == 0);
	lla	a1,.LC5	#,
	mv	a0,a5	#, _13
	call	strcmp@plt	#
	mv	a5,a0	# tmp213,
# problem111.c:25:     assert(strcmp(func0((int[]){100, 200}, 2, (int[]){200, 200}, 2), "YES") == 0);
	beq	a5,zero,.L17	#, _14,,
# problem111.c:25:     assert(strcmp(func0((int[]){100, 200}, 2, (int[]){200, 200}, 2), "YES") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC7	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L17:
# problem111.c:27:     return 0;
	li	a5,0		# _68,
# problem111.c:28: }
	mv	a4,a5	# <retval>, _68
	la	a5,__stack_chk_guard		# tmp215,
	ld	a3, -24(s0)	# tmp218, D.3030
	ld	a5, 0(a5)	# tmp216, __stack_chk_guard
	xor	a5, a3, a5	# tmp216, tmp218
	li	a3, 0	# tmp218
	beq	a5,zero,.L19	#, tmp216,,
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
