	.file	"problem81.c"
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
	sd	a0,-56(s0)	# s, s
# problem81.c:5:     if (strlen(s) < 3) return false;
	ld	a0,-56(s0)		#, s
	call	strlen@plt	#
	mv	a4,a0	# _1,
# problem81.c:5:     if (strlen(s) < 3) return false;
	li	a5,2		# tmp153,
	bgtu	a4,a5,.L2	#, _1, tmp153,
# problem81.c:5:     if (strlen(s) < 3) return false;
	li	a5,0		# _19,
# problem81.c:5:     if (strlen(s) < 3) return false;
	j	.L3		#
.L2:
# problem81.c:6:     for (int i = 2; i < strlen(s); i++)
	li	a5,2		# tmp154,
	sw	a5,-36(s0)	# tmp154, i
# problem81.c:6:     for (int i = 2; i < strlen(s); i++)
	j	.L4		#
.L7:
# problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	lw	a5,-36(s0)		# _2, i
	ld	a4,-56(s0)		# tmp155, s
	add	a5,a4,a5	# _2, _3, tmp155
	lbu	a3,0(a5)	# _4, *_3
# problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	lw	a5,-36(s0)		# _5, i
	addi	a5,a5,-1	#, _6, _5
	ld	a4,-56(s0)		# tmp156, s
	add	a5,a4,a5	# _6, _7, tmp156
	lbu	a5,0(a5)	# _8, *_7
# problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	mv	a4,a3	# tmp157, _4
	beq	a4,a5,.L5	#, tmp157, tmp158,
# problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	lw	a5,-36(s0)		# _9, i
	ld	a4,-56(s0)		# tmp159, s
	add	a5,a4,a5	# _9, _10, tmp159
	lbu	a3,0(a5)	# _11, *_10
# problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	lw	a5,-36(s0)		# _12, i
	addi	a5,a5,-2	#, _13, _12
	ld	a4,-56(s0)		# tmp160, s
	add	a5,a4,a5	# _13, _14, tmp160
	lbu	a5,0(a5)	# _15, *_14
# problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	mv	a4,a3	# tmp161, _11
	bne	a4,a5,.L6	#, tmp161, tmp162,
.L5:
# problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	li	a5,0		# _19,
# problem81.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	j	.L3		#
.L6:
# problem81.c:6:     for (int i = 2; i < strlen(s); i++)
	lw	a5,-36(s0)		# tmp165, i
	addiw	a5,a5,1	#, tmp163, tmp164
	sw	a5,-36(s0)	# tmp163, i
.L4:
# problem81.c:6:     for (int i = 2; i < strlen(s); i++)
	lw	s1,-36(s0)		# _16, i
# problem81.c:6:     for (int i = 2; i < strlen(s); i++)
	ld	a0,-56(s0)		#, s
	call	strlen@plt	#
	mv	a5,a0	# _17,
# problem81.c:6:     for (int i = 2; i < strlen(s); i++)
	bltu	s1,a5,.L7	#, _16, _17,
# problem81.c:8:     return true;
	li	a5,1		# _19,
.L3:
# problem81.c:9: }
	mv	a0,a5	#, <retval>
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
	.section	.rodata
	.align	3
.LC0:
	.string	"a"
	.align	3
.LC1:
	.string	"problem81.c"
	.align	3
.LC2:
	.string	"func0(\"a\") == false"
	.align	3
.LC3:
	.string	"aa"
	.align	3
.LC4:
	.string	"func0(\"aa\") == false"
	.align	3
.LC5:
	.string	"abcd"
	.align	3
.LC6:
	.string	"func0(\"abcd\") == true"
	.align	3
.LC7:
	.string	"aabb"
	.align	3
.LC8:
	.string	"func0(\"aabb\") == false"
	.align	3
.LC9:
	.string	"adb"
	.align	3
.LC10:
	.string	"func0(\"adb\") == true"
	.align	3
.LC11:
	.string	"xyy"
	.align	3
.LC12:
	.string	"func0(\"xyy\") == false"
	.align	3
.LC13:
	.string	"iopaxpoi"
	.align	3
.LC14:
	.string	"func0(\"iopaxpoi\") == true"
	.align	3
.LC15:
	.string	"iopaxioi"
	.align	3
.LC16:
	.string	"func0(\"iopaxioi\") == false"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
# problem81.c:17:     assert(func0("a") == false);
	lla	a0,.LC0	#,
	call	func0		#
	mv	a5,a0	# tmp149,
# problem81.c:17:     assert(func0("a") == false);
	xori	a5,a5,1	#, tmp150, _1
	andi	a5,a5,0xff	# _2, tmp150
	bne	a5,zero,.L9	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L9:
# problem81.c:18:     assert(func0("aa") == false);
	lla	a0,.LC3	#,
	call	func0		#
	mv	a5,a0	# tmp151,
# problem81.c:18:     assert(func0("aa") == false);
	xori	a5,a5,1	#, tmp152, _3
	andi	a5,a5,0xff	# _4, tmp152
	bne	a5,zero,.L10	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L10:
# problem81.c:19:     assert(func0("abcd") == true);
	lla	a0,.LC5	#,
	call	func0		#
	mv	a5,a0	# tmp153,
# problem81.c:19:     assert(func0("abcd") == true);
	bne	a5,zero,.L11	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC1	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L11:
# problem81.c:20:     assert(func0("aabb") == false);
	lla	a0,.LC7	#,
	call	func0		#
	mv	a5,a0	# tmp154,
# problem81.c:20:     assert(func0("aabb") == false);
	xori	a5,a5,1	#, tmp155, _6
	andi	a5,a5,0xff	# _7, tmp155
	bne	a5,zero,.L12	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L12:
# problem81.c:21:     assert(func0("adb") == true);
	lla	a0,.LC9	#,
	call	func0		#
	mv	a5,a0	# tmp156,
# problem81.c:21:     assert(func0("adb") == true);
	bne	a5,zero,.L13	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC1	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L13:
# problem81.c:22:     assert(func0("xyy") == false);
	lla	a0,.LC11	#,
	call	func0		#
	mv	a5,a0	# tmp157,
# problem81.c:22:     assert(func0("xyy") == false);
	xori	a5,a5,1	#, tmp158, _9
	andi	a5,a5,0xff	# _10, tmp158
	bne	a5,zero,.L14	#, _10,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC1	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L14:
# problem81.c:23:     assert(func0("iopaxpoi") == true);
	lla	a0,.LC13	#,
	call	func0		#
	mv	a5,a0	# tmp159,
# problem81.c:23:     assert(func0("iopaxpoi") == true);
	bne	a5,zero,.L15	#, _11,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC1	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L15:
# problem81.c:24:     assert(func0("iopaxioi") == false);
	lla	a0,.LC15	#,
	call	func0		#
	mv	a5,a0	# tmp160,
# problem81.c:24:     assert(func0("iopaxioi") == false);
	xori	a5,a5,1	#, tmp161, _12
	andi	a5,a5,0xff	# _13, tmp161
	bne	a5,zero,.L16	#, _13,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC1	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L16:
# problem81.c:26:     return 0;
	li	a5,0		# _31,
# problem81.c:27: }
	mv	a0,a5	#, <retval>
	ld	ra,8(sp)		#,
	.cfi_restore 1
	ld	s0,0(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16	#,,
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
