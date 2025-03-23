	.file	"problem111.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-64	#,,
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# lst1, lst1
	mv	a5,a1	# tmp86, size1
	sd	a2,-56(s0)	# lst2, lst2
	mv	a4,a3	# tmp88, size2
	sw	a5,-44(s0)	# tmp87, size1
	mv	a5,a4	# tmp89, tmp88
	sw	a5,-48(s0)	# tmp89, size2
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
	ld	a4,-40(s0)		# tmp90, lst1
	add	a5,a4,a5	# _2, _3, tmp90
	lw	a5,0(a5)		# _4, *_3
# problem111.c:6:         if (lst1[i] % 2 == 0) num += 1;
	sext.w	a5,a5	# _5, _4
	andi	a5,a5,1	#, tmp92, tmp91
	sext.w	a5,a5	# _6, tmp92
# problem111.c:6:         if (lst1[i] % 2 == 0) num += 1;
	bne	a5,zero,.L3	#, _6,,
# problem111.c:6:         if (lst1[i] % 2 == 0) num += 1;
	lw	a5,-28(s0)		# tmp95, num
	addiw	a5,a5,1	#, tmp93, tmp94
	sw	a5,-28(s0)	# tmp93, num
.L3:
# problem111.c:5:     for (int i = 0; i < size1; i++)
	lw	a5,-24(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-24(s0)	# tmp96, i
.L2:
# problem111.c:5:     for (int i = 0; i < size1; i++)
	lw	a5,-24(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-44(s0)		# tmp102, size1
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L4	#, tmp103, tmp104,
# problem111.c:7:     for (int i = 0; i < size2; i++)
	sw	zero,-20(s0)	#, i
# problem111.c:7:     for (int i = 0; i < size2; i++)
	j	.L5		#
.L7:
# problem111.c:8:         if (lst2[i] % 2 == 0) num += 1;
	lw	a5,-20(s0)		# _7, i
	slli	a5,a5,2	#, _8, _7
	ld	a4,-56(s0)		# tmp105, lst2
	add	a5,a4,a5	# _8, _9, tmp105
	lw	a5,0(a5)		# _10, *_9
# problem111.c:8:         if (lst2[i] % 2 == 0) num += 1;
	sext.w	a5,a5	# _11, _10
	andi	a5,a5,1	#, tmp107, tmp106
	sext.w	a5,a5	# _12, tmp107
# problem111.c:8:         if (lst2[i] % 2 == 0) num += 1;
	bne	a5,zero,.L6	#, _12,,
# problem111.c:8:         if (lst2[i] % 2 == 0) num += 1;
	lw	a5,-28(s0)		# tmp110, num
	addiw	a5,a5,1	#, tmp108, tmp109
	sw	a5,-28(s0)	# tmp108, num
.L6:
# problem111.c:7:     for (int i = 0; i < size2; i++)
	lw	a5,-20(s0)		# tmp113, i
	addiw	a5,a5,1	#, tmp111, tmp112
	sw	a5,-20(s0)	# tmp111, i
.L5:
# problem111.c:7:     for (int i = 0; i < size2; i++)
	lw	a5,-20(s0)		# tmp115, i
	mv	a4,a5	# tmp114, tmp115
	lw	a5,-48(s0)		# tmp117, size2
	sext.w	a4,a4	# tmp118, tmp114
	sext.w	a5,a5	# tmp119, tmp116
	blt	a4,a5,.L7	#, tmp118, tmp119,
# problem111.c:9:     if (num >= size1) return "YES";
	lw	a5,-28(s0)		# tmp121, num
	mv	a4,a5	# tmp120, tmp121
	lw	a5,-44(s0)		# tmp123, size1
	sext.w	a4,a4	# tmp124, tmp120
	sext.w	a5,a5	# tmp125, tmp122
	blt	a4,a5,.L8	#, tmp124, tmp125,
# problem111.c:9:     if (num >= size1) return "YES";
	lla	a5,.LC5	# _19,
	j	.L9		#
.L8:
# problem111.c:10:     return "NO";
	lla	a5,.LC6	# _19,
.L9:
# problem111.c:11: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
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
	addi	sp,sp,-80	#,,
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	addi	s0,sp,80	#,,
# problem111.c:18: int main() {
	la	a5,__stack_chk_guard		# tmp88,
	ld	a4, 0(a5)	# tmp155, __stack_chk_guard
	sd	a4, -24(s0)	# tmp155, D.2185
	li	a4, 0	# tmp155
# problem111.c:19:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 2, 3, 4}, 4), "YES") == 0);
	lla	a5,.LC0	# tmp89,
	ld	a4,0(a5)		# tmp90,
	sd	a4,-72(s0)	# tmp90, MEM[(int[4] *)_84]
	ld	a5,8(a5)		# tmp91,
	sd	a5,-64(s0)	# tmp91, MEM[(int[4] *)_84]
	lla	a5,.LC0	# tmp92,
	ld	a4,0(a5)		# tmp93,
	sd	a4,-48(s0)	# tmp93, MEM[(int[4] *)_85]
	ld	a5,8(a5)		# tmp94,
	sd	a5,-40(s0)	# tmp94, MEM[(int[4] *)_85]
	addi	a4,s0,-48	#, tmp95,
	addi	a5,s0,-72	#, tmp96,
	li	a3,4		#,
	mv	a2,a4	#, tmp95
	li	a1,4		#,
	mv	a0,a5	#, tmp96
	call	func0		#
	mv	a5,a0	# _1,
	lla	a1,.LC5	#,
	mv	a0,a5	#, _1
	call	strcmp@plt	#
	mv	a5,a0	# tmp97,
	beq	a5,zero,.L11	#, _2,,
# problem111.c:19:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 2, 3, 4}, 4), "YES") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC7	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L11:
# problem111.c:20:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 5, 3, 4}, 4), "NO") == 0);
	lla	a5,.LC0	# tmp98,
	ld	a4,0(a5)		# tmp99,
	sd	a4,-72(s0)	# tmp99, MEM[(int[4] *)_84]
	ld	a5,8(a5)		# tmp100,
	sd	a5,-64(s0)	# tmp100, MEM[(int[4] *)_84]
	lla	a5,.LC1	# tmp101,
	ld	a4,0(a5)		# tmp102,
	sd	a4,-48(s0)	# tmp102, MEM[(int[4] *)_85]
	ld	a5,8(a5)		# tmp103,
	sd	a5,-40(s0)	# tmp103, MEM[(int[4] *)_85]
	addi	a4,s0,-48	#, tmp104,
	addi	a5,s0,-72	#, tmp105,
	li	a3,4		#,
	mv	a2,a4	#, tmp104
	li	a1,4		#,
	mv	a0,a5	#, tmp105
	call	func0		#
	mv	a5,a0	# _3,
	lla	a1,.LC6	#,
	mv	a0,a5	#, _3
	call	strcmp@plt	#
	mv	a5,a0	# tmp106,
	beq	a5,zero,.L12	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC7	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L12:
# problem111.c:21:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){2, 1, 4, 3}, 4), "YES") == 0);
	lla	a5,.LC0	# tmp107,
	ld	a4,0(a5)		# tmp108,
	sd	a4,-72(s0)	# tmp108, MEM[(int[4] *)_84]
	ld	a5,8(a5)		# tmp109,
	sd	a5,-64(s0)	# tmp109, MEM[(int[4] *)_84]
	lla	a5,.LC2	# tmp110,
	ld	a4,0(a5)		# tmp111,
	sd	a4,-48(s0)	# tmp111, MEM[(int[4] *)_85]
	ld	a5,8(a5)		# tmp112,
	sd	a5,-40(s0)	# tmp112, MEM[(int[4] *)_85]
	addi	a4,s0,-48	#, tmp113,
	addi	a5,s0,-72	#, tmp114,
	li	a3,4		#,
	mv	a2,a4	#, tmp113
	li	a1,4		#,
	mv	a0,a5	#, tmp114
	call	func0		#
	mv	a5,a0	# _5,
	lla	a1,.LC5	#,
	mv	a0,a5	#, _5
	call	strcmp@plt	#
	mv	a5,a0	# tmp115,
	beq	a5,zero,.L13	#, _6,,
# problem111.c:21:     assert(strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){2, 1, 4, 3}, 4), "YES") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC7	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L13:
# problem111.c:22:     assert(strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 4}, 3), "YES") == 0);
	li	a5,5		# tmp116,
	sw	a5,-72(s0)	# tmp116, MEM[(int[3] *)_84][0]
	li	a5,7		# tmp117,
	sw	a5,-68(s0)	# tmp117, MEM[(int[3] *)_84][1]
	li	a5,3		# tmp118,
	sw	a5,-64(s0)	# tmp118, MEM[(int[3] *)_84][2]
	li	a5,2		# tmp119,
	sw	a5,-48(s0)	# tmp119, MEM[(int[3] *)_85][0]
	li	a5,6		# tmp120,
	sw	a5,-44(s0)	# tmp120, MEM[(int[3] *)_85][1]
	li	a5,4		# tmp121,
	sw	a5,-40(s0)	# tmp121, MEM[(int[3] *)_85][2]
	addi	a4,s0,-48	#, tmp122,
	addi	a5,s0,-72	#, tmp123,
	li	a3,3		#,
	mv	a2,a4	#, tmp122
	li	a1,3		#,
	mv	a0,a5	#, tmp123
	call	func0		#
	mv	a5,a0	# _7,
	lla	a1,.LC5	#,
	mv	a0,a5	#, _7
	call	strcmp@plt	#
	mv	a5,a0	# tmp124,
	beq	a5,zero,.L14	#, _8,,
# problem111.c:22:     assert(strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 4}, 3), "YES") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC7	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L14:
# problem111.c:23:     assert(strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 3}, 3), "NO") == 0);
	li	a5,5		# tmp125,
	sw	a5,-72(s0)	# tmp125, MEM[(int[3] *)_84][0]
	li	a5,7		# tmp126,
	sw	a5,-68(s0)	# tmp126, MEM[(int[3] *)_84][1]
	li	a5,3		# tmp127,
	sw	a5,-64(s0)	# tmp127, MEM[(int[3] *)_84][2]
	li	a5,2		# tmp128,
	sw	a5,-48(s0)	# tmp128, MEM[(int[3] *)_85][0]
	li	a5,6		# tmp129,
	sw	a5,-44(s0)	# tmp129, MEM[(int[3] *)_85][1]
	li	a5,3		# tmp130,
	sw	a5,-40(s0)	# tmp130, MEM[(int[3] *)_85][2]
	addi	a4,s0,-48	#, tmp131,
	addi	a5,s0,-72	#, tmp132,
	li	a3,3		#,
	mv	a2,a4	#, tmp131
	li	a1,3		#,
	mv	a0,a5	#, tmp132
	call	func0		#
	mv	a5,a0	# _9,
	lla	a1,.LC6	#,
	mv	a0,a5	#, _9
	call	strcmp@plt	#
	mv	a5,a0	# tmp133,
	beq	a5,zero,.L15	#, _10,,
# problem111.c:23:     assert(strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 3}, 3), "NO") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC7	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L15:
# problem111.c:24:     assert(strcmp(func0((int[]){3, 2, 6, 1, 8, 9}, 6, (int[]){3, 5, 5, 1, 1, 1}, 6), "NO") == 0);
	lla	a5,.LC3	# tmp134,
	ld	a4,0(a5)		# tmp135,
	sd	a4,-72(s0)	# tmp135, MEM[(int[6] *)_84]
	ld	a4,8(a5)		# tmp136,
	sd	a4,-64(s0)	# tmp136, MEM[(int[6] *)_84]
	ld	a5,16(a5)		# tmp137,
	sd	a5,-56(s0)	# tmp137, MEM[(int[6] *)_84]
	lla	a5,.LC4	# tmp138,
	ld	a4,0(a5)		# tmp139,
	sd	a4,-48(s0)	# tmp139, MEM[(int[6] *)_85]
	ld	a4,8(a5)		# tmp140,
	sd	a4,-40(s0)	# tmp140, MEM[(int[6] *)_85]
	ld	a5,16(a5)		# tmp141,
	sd	a5,-32(s0)	# tmp141, MEM[(int[6] *)_85]
	addi	a4,s0,-48	#, tmp142,
	addi	a5,s0,-72	#, tmp143,
	li	a3,6		#,
	mv	a2,a4	#, tmp142
	li	a1,6		#,
	mv	a0,a5	#, tmp143
	call	func0		#
	mv	a5,a0	# _11,
	lla	a1,.LC6	#,
	mv	a0,a5	#, _11
	call	strcmp@plt	#
	mv	a5,a0	# tmp144,
	beq	a5,zero,.L16	#, _12,,
# problem111.c:24:     assert(strcmp(func0((int[]){3, 2, 6, 1, 8, 9}, 6, (int[]){3, 5, 5, 1, 1, 1}, 6), "NO") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC7	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L16:
# problem111.c:25:     assert(strcmp(func0((int[]){100, 200}, 2, (int[]){200, 200}, 2), "YES") == 0);
	li	a5,100		# tmp145,
	sw	a5,-72(s0)	# tmp145, MEM[(int[2] *)_84][0]
	li	a5,200		# tmp146,
	sw	a5,-68(s0)	# tmp146, MEM[(int[2] *)_84][1]
	li	a5,200		# tmp147,
	sw	a5,-48(s0)	# tmp147, MEM[(int[2] *)_85][0]
	li	a5,200		# tmp148,
	sw	a5,-44(s0)	# tmp148, MEM[(int[2] *)_85][1]
	addi	a4,s0,-48	#, tmp149,
	addi	a5,s0,-72	#, tmp150,
	li	a3,2		#,
	mv	a2,a4	#, tmp149
	li	a1,2		#,
	mv	a0,a5	#, tmp150
	call	func0		#
	mv	a5,a0	# _13,
	lla	a1,.LC5	#,
	mv	a0,a5	#, _13
	call	strcmp@plt	#
	mv	a5,a0	# tmp151,
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
	la	a5,__stack_chk_guard		# tmp153,
	ld	a3, -24(s0)	# tmp156, D.2185
	ld	a5, 0(a5)	# tmp154, __stack_chk_guard
	xor	a5, a3, a5	# tmp154, tmp156
	li	a3, 0	# tmp156
	beq	a5,zero,.L19	#, tmp154,,
# problem111.c:28: }
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
