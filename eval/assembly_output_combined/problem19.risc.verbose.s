	.file	"problem19.c"
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
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# str, str
	sd	a1,-48(s0)	# substring, substring
# problem19.c:5:     int out = 0;
	sw	zero,-32(s0)	#, out
# problem19.c:6:     int str_len = strlen(str);
	ld	a0,-40(s0)		#, str
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem19.c:6:     int str_len = strlen(str);
	sw	a5,-24(s0)	# _1, str_len
# problem19.c:7:     int sub_len = strlen(substring);
	ld	a0,-48(s0)		#, substring
	call	strlen@plt	#
	mv	a5,a0	# _2,
# problem19.c:7:     int sub_len = strlen(substring);
	sw	a5,-20(s0)	# _2, sub_len
# problem19.c:8:     if (str_len == 0) return 0;
	lw	a5,-24(s0)		# tmp144, str_len
	sext.w	a5,a5	# tmp145, tmp143
	bne	a5,zero,.L2	#, tmp145,,
# problem19.c:8:     if (str_len == 0) return 0;
	li	a5,0		# _11,
# problem19.c:8:     if (str_len == 0) return 0;
	j	.L3		#
.L2:
# problem19.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	sw	zero,-28(s0)	#, i
# problem19.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	j	.L4		#
.L6:
# problem19.c:10:         if (strncmp(&str[i], substring, sub_len) == 0)
	lw	a5,-28(s0)		# _3, i
	ld	a4,-40(s0)		# tmp146, str
	add	a5,a4,a5	# _3, _4, tmp146
	lw	a4,-20(s0)		# _5, sub_len
	mv	a2,a4	#, _5
	ld	a1,-48(s0)		#, substring
	mv	a0,a5	#, _4
	call	strncmp@plt	#
	mv	a5,a0	# tmp147,
# problem19.c:10:         if (strncmp(&str[i], substring, sub_len) == 0)
	bne	a5,zero,.L5	#, _6,,
# problem19.c:11:             out++;
	lw	a5,-32(s0)		# tmp150, out
	addiw	a5,a5,1	#, tmp148, tmp149
	sw	a5,-32(s0)	# tmp148, out
.L5:
# problem19.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	lw	a5,-28(s0)		# tmp153, i
	addiw	a5,a5,1	#, tmp151, tmp152
	sw	a5,-28(s0)	# tmp151, i
.L4:
# problem19.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	lw	a5,-24(s0)		# tmp156, str_len
	mv	a4,a5	# tmp155, tmp156
	lw	a5,-20(s0)		# tmp158, sub_len
	subw	a5,a4,a5	# tmp154, tmp155, tmp157
	sext.w	a4,a5	# _7, tmp154
# problem19.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	lw	a5,-28(s0)		# tmp160, i
	sext.w	a5,a5	# tmp161, tmp159
	ble	a5,a4,.L6	#, tmp161, tmp162,
# problem19.c:13:     return out;
	lw	a5,-32(s0)		# _11, out
.L3:
# problem19.c:14: }
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
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"x"
	.align	3
.LC1:
	.string	""
	.align	3
.LC2:
	.string	"problem19.c"
	.align	3
.LC3:
	.string	"func0(\"\", \"x\") == 0"
	.align	3
.LC4:
	.string	"xyxyxyx"
	.align	3
.LC5:
	.string	"func0(\"xyxyxyx\", \"x\") == 4"
	.align	3
.LC6:
	.string	"cac"
	.align	3
.LC7:
	.string	"cacacacac"
	.align	3
.LC8:
	.string	"func0(\"cacacacac\", \"cac\") == 4"
	.align	3
.LC9:
	.string	"john"
	.align	3
.LC10:
	.string	"john doe"
	.align	3
.LC11:
	.string	"func0(\"john doe\", \"john\") == 1"
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
# problem19.c:21:     assert(func0("", "x") == 0);
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	func0		#
	mv	a5,a0	# tmp140,
# problem19.c:21:     assert(func0("", "x") == 0);
	beq	a5,zero,.L8	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L8:
# problem19.c:22:     assert(func0("xyxyxyx", "x") == 4);
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	func0		#
	mv	a5,a0	# tmp141,
# problem19.c:22:     assert(func0("xyxyxyx", "x") == 4);
	mv	a4,a5	# tmp142, _2
	li	a5,4		# tmp143,
	beq	a4,a5,.L9	#, tmp142, tmp143,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC2	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L9:
# problem19.c:23:     assert(func0("cacacacac", "cac") == 4);
	lla	a1,.LC6	#,
	lla	a0,.LC7	#,
	call	func0		#
	mv	a5,a0	# tmp144,
# problem19.c:23:     assert(func0("cacacacac", "cac") == 4);
	mv	a4,a5	# tmp145, _3
	li	a5,4		# tmp146,
	beq	a4,a5,.L10	#, tmp145, tmp146,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC2	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L10:
# problem19.c:24:     assert(func0("john doe", "john") == 1);
	lla	a1,.LC9	#,
	lla	a0,.LC10	#,
	call	func0		#
	mv	a5,a0	# tmp147,
# problem19.c:24:     assert(func0("john doe", "john") == 1);
	mv	a4,a5	# tmp148, _4
	li	a5,1		# tmp149,
	beq	a4,a5,.L11	#, tmp148, tmp149,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC2	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L11:
# problem19.c:26:     return 0;
	li	a5,0		# _14,
# problem19.c:27: }
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
