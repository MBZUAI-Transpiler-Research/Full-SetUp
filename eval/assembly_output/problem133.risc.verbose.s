	.file	"problem133.c"
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
	sd	a0,-56(s0)	# str, str
# problem133.c:5:     int count = 0, maxcount = 0;
	sw	zero,-44(s0)	#, count
# problem133.c:5:     int count = 0, maxcount = 0;
	sw	zero,-40(s0)	#, maxcount
# problem133.c:6:     for (int i = 0; i < strlen(str); i++) {
	sw	zero,-36(s0)	#, i
# problem133.c:6:     for (int i = 0; i < strlen(str); i++) {
	j	.L2		#
.L9:
# problem133.c:7:         if (str[i] == '[') count += 1;
	lw	a5,-36(s0)		# _1, i
	ld	a4,-56(s0)		# tmp145, str
	add	a5,a4,a5	# _1, _2, tmp145
	lbu	a5,0(a5)	# _3, *_2
# problem133.c:7:         if (str[i] == '[') count += 1;
	mv	a4,a5	# tmp146, _3
	li	a5,91		# tmp147,
	bne	a4,a5,.L3	#, tmp146, tmp147,
# problem133.c:7:         if (str[i] == '[') count += 1;
	lw	a5,-44(s0)		# tmp150, count
	addiw	a5,a5,1	#, tmp148, tmp149
	sw	a5,-44(s0)	# tmp148, count
.L3:
# problem133.c:8:         if (str[i] == ']') count -= 1;
	lw	a5,-36(s0)		# _4, i
	ld	a4,-56(s0)		# tmp151, str
	add	a5,a4,a5	# _4, _5, tmp151
	lbu	a5,0(a5)	# _6, *_5
# problem133.c:8:         if (str[i] == ']') count -= 1;
	mv	a4,a5	# tmp152, _6
	li	a5,93		# tmp153,
	bne	a4,a5,.L4	#, tmp152, tmp153,
# problem133.c:8:         if (str[i] == ']') count -= 1;
	lw	a5,-44(s0)		# tmp156, count
	addiw	a5,a5,-1	#, tmp154, tmp155
	sw	a5,-44(s0)	# tmp154, count
.L4:
# problem133.c:9:         if (count < 0) count = 0;
	lw	a5,-44(s0)		# tmp158, count
	sext.w	a5,a5	# tmp159, tmp157
	bge	a5,zero,.L5	#, tmp159,,
# problem133.c:9:         if (count < 0) count = 0;
	sw	zero,-44(s0)	#, count
.L5:
# problem133.c:10:         if (count > maxcount) maxcount = count;
	lw	a5,-44(s0)		# tmp161, count
	mv	a4,a5	# tmp160, tmp161
	lw	a5,-40(s0)		# tmp163, maxcount
	sext.w	a4,a4	# tmp164, tmp160
	sext.w	a5,a5	# tmp165, tmp162
	ble	a4,a5,.L6	#, tmp164, tmp165,
# problem133.c:10:         if (count > maxcount) maxcount = count;
	lw	a5,-44(s0)		# tmp166, count
	sw	a5,-40(s0)	# tmp166, maxcount
.L6:
# problem133.c:11:         if (count <= maxcount - 2) return 1;
	lw	a5,-40(s0)		# tmp169, maxcount
	addiw	a5,a5,-1	#, tmp167, tmp168
	sext.w	a4,a5	# _7, tmp167
# problem133.c:11:         if (count <= maxcount - 2) return 1;
	lw	a5,-44(s0)		# tmp171, count
	sext.w	a5,a5	# tmp172, tmp170
	bge	a5,a4,.L7	#, tmp172, tmp173,
# problem133.c:11:         if (count <= maxcount - 2) return 1;
	li	a5,1		# _17,
# problem133.c:11:         if (count <= maxcount - 2) return 1;
	j	.L8		#
.L7:
# problem133.c:6:     for (int i = 0; i < strlen(str); i++) {
	lw	a5,-36(s0)		# tmp176, i
	addiw	a5,a5,1	#, tmp174, tmp175
	sw	a5,-36(s0)	# tmp174, i
.L2:
# problem133.c:6:     for (int i = 0; i < strlen(str); i++) {
	lw	s1,-36(s0)		# _8, i
# problem133.c:6:     for (int i = 0; i < strlen(str); i++) {
	ld	a0,-56(s0)		#, str
	call	strlen@plt	#
	mv	a5,a0	# _9,
# problem133.c:6:     for (int i = 0; i < strlen(str); i++) {
	bltu	s1,a5,.L9	#, _8, _9,
# problem133.c:13:     return 0;
	li	a5,0		# _17,
.L8:
# problem133.c:14: }
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
	.string	"[[]]"
	.align	3
.LC1:
	.string	"problem133.c"
	.align	3
.LC2:
	.string	"func0(\"[[]]\") == 1"
	.align	3
.LC3:
	.string	"[]]]]]]][[[[[]"
	.align	3
.LC4:
	.string	"func0(\"[]]]]]]][[[[[]\") == 0"
	.align	3
.LC5:
	.string	"[][]"
	.align	3
.LC6:
	.string	"func0(\"[][]\") == 0"
	.align	3
.LC7:
	.string	"[]"
	.align	3
.LC8:
	.string	"func0(\"[]\") == 0"
	.align	3
.LC9:
	.string	"[[[[]]]]"
	.align	3
.LC10:
	.string	"func0(\"[[[[]]]]\") == 1"
	.align	3
.LC11:
	.string	"[]]]]]]]]]]"
	.align	3
.LC12:
	.string	"func0(\"[]]]]]]]]]]\") == 0"
	.align	3
.LC13:
	.string	"[][][[]]"
	.align	3
.LC14:
	.string	"func0(\"[][][[]]\") == 1"
	.align	3
.LC15:
	.string	"[[]"
	.align	3
.LC16:
	.string	"func0(\"[[]\") == 0"
	.align	3
.LC17:
	.string	"[]]"
	.align	3
.LC18:
	.string	"func0(\"[]]\") == 0"
	.align	3
.LC19:
	.string	"[[]][["
	.align	3
.LC20:
	.string	"func0(\"[[]][[\") == 1"
	.align	3
.LC21:
	.string	"[[][]]"
	.align	3
.LC22:
	.string	"func0(\"[[][]]\") == 1"
	.align	3
.LC23:
	.string	""
	.align	3
.LC24:
	.string	"func0(\"\") == 0"
	.align	3
.LC25:
	.string	"[[[[[[[["
	.align	3
.LC26:
	.string	"func0(\"[[[[[[[[\") == 0"
	.align	3
.LC27:
	.string	"]]]]]]]]"
	.align	3
.LC28:
	.string	"func0(\"]]]]]]]]\") == 0"
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
# problem133.c:22:     assert(func0("[[]]") == 1);
	lla	a0,.LC0	#,
	call	func0		#
	mv	a5,a0	# tmp150,
# problem133.c:22:     assert(func0("[[]]") == 1);
	mv	a4,a5	# tmp151, _1
	li	a5,1		# tmp152,
	beq	a4,a5,.L11	#, tmp151, tmp152,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L11:
# problem133.c:23:     assert(func0("[]]]]]]][[[[[]") == 0);
	lla	a0,.LC3	#,
	call	func0		#
	mv	a5,a0	# tmp153,
# problem133.c:23:     assert(func0("[]]]]]]][[[[[]") == 0);
	beq	a5,zero,.L12	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L12:
# problem133.c:24:     assert(func0("[][]") == 0);
	lla	a0,.LC5	#,
	call	func0		#
	mv	a5,a0	# tmp154,
# problem133.c:24:     assert(func0("[][]") == 0);
	beq	a5,zero,.L13	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC1	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L13:
# problem133.c:25:     assert(func0("[]") == 0);
	lla	a0,.LC7	#,
	call	func0		#
	mv	a5,a0	# tmp155,
# problem133.c:25:     assert(func0("[]") == 0);
	beq	a5,zero,.L14	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L14:
# problem133.c:26:     assert(func0("[[[[]]]]") == 1);
	lla	a0,.LC9	#,
	call	func0		#
	mv	a5,a0	# tmp156,
# problem133.c:26:     assert(func0("[[[[]]]]") == 1);
	mv	a4,a5	# tmp157, _5
	li	a5,1		# tmp158,
	beq	a4,a5,.L15	#, tmp157, tmp158,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC1	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L15:
# problem133.c:27:     assert(func0("[]]]]]]]]]]") == 0);
	lla	a0,.LC11	#,
	call	func0		#
	mv	a5,a0	# tmp159,
# problem133.c:27:     assert(func0("[]]]]]]]]]]") == 0);
	beq	a5,zero,.L16	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC1	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L16:
# problem133.c:28:     assert(func0("[][][[]]") == 1);
	lla	a0,.LC13	#,
	call	func0		#
	mv	a5,a0	# tmp160,
# problem133.c:28:     assert(func0("[][][[]]") == 1);
	mv	a4,a5	# tmp161, _7
	li	a5,1		# tmp162,
	beq	a4,a5,.L17	#, tmp161, tmp162,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC1	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L17:
# problem133.c:29:     assert(func0("[[]") == 0);
	lla	a0,.LC15	#,
	call	func0		#
	mv	a5,a0	# tmp163,
# problem133.c:29:     assert(func0("[[]") == 0);
	beq	a5,zero,.L18	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC1	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L18:
# problem133.c:30:     assert(func0("[]]") == 0);
	lla	a0,.LC17	#,
	call	func0		#
	mv	a5,a0	# tmp164,
# problem133.c:30:     assert(func0("[]]") == 0);
	beq	a5,zero,.L19	#, _9,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC1	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L19:
# problem133.c:31:     assert(func0("[[]][[") == 1);
	lla	a0,.LC19	#,
	call	func0		#
	mv	a5,a0	# tmp165,
# problem133.c:31:     assert(func0("[[]][[") == 1);
	mv	a4,a5	# tmp166, _10
	li	a5,1		# tmp167,
	beq	a4,a5,.L20	#, tmp166, tmp167,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC1	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L20:
# problem133.c:32:     assert(func0("[[][]]") == 1);
	lla	a0,.LC21	#,
	call	func0		#
	mv	a5,a0	# tmp168,
# problem133.c:32:     assert(func0("[[][]]") == 1);
	mv	a4,a5	# tmp169, _11
	li	a5,1		# tmp170,
	beq	a4,a5,.L21	#, tmp169, tmp170,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC1	#,
	lla	a0,.LC22	#,
	call	__assert_fail@plt	#
.L21:
# problem133.c:33:     assert(func0("") == 0);
	lla	a0,.LC23	#,
	call	func0		#
	mv	a5,a0	# tmp171,
# problem133.c:33:     assert(func0("") == 0);
	beq	a5,zero,.L22	#, _12,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC1	#,
	lla	a0,.LC24	#,
	call	__assert_fail@plt	#
.L22:
# problem133.c:34:     assert(func0("[[[[[[[[") == 0);
	lla	a0,.LC25	#,
	call	func0		#
	mv	a5,a0	# tmp172,
# problem133.c:34:     assert(func0("[[[[[[[[") == 0);
	beq	a5,zero,.L23	#, _13,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC1	#,
	lla	a0,.LC26	#,
	call	__assert_fail@plt	#
.L23:
# problem133.c:35:     assert(func0("]]]]]]]]") == 0);
	lla	a0,.LC27	#,
	call	func0		#
	mv	a5,a0	# tmp173,
# problem133.c:35:     assert(func0("]]]]]]]]") == 0);
	beq	a5,zero,.L24	#, _14,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC1	#,
	lla	a0,.LC28	#,
	call	__assert_fail@plt	#
.L24:
# problem133.c:37:     return 0;
	li	a5,0		# _44,
# problem133.c:38: }
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
