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
	.string	"%d"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-112	#,,
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,112	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp149, x
	mv	a4,a1	# tmp151, shift
	sw	a5,-100(s0)	# tmp150, x
	mv	a5,a4	# tmp152, tmp151
	sw	a5,-104(s0)	# tmp152, shift
# code.c:5: char* func0(int x, int shift) {
	la	a5,__stack_chk_guard		# tmp153,
	ld	a4, 0(a5)	# tmp212, __stack_chk_guard
	sd	a4, -24(s0)	# tmp212, D.3460
	li	a4, 0	# tmp212
# code.c:7:     sprintf(xs, "%d", x);
	lw	a5,-100(s0)		# tmp154, x
	mv	a2,a5	#, tmp154
	lla	a1,.LC0	#,
	lla	a0,xs.0	#,
	call	sprintf@plt	#
# code.c:8:     int len = strlen(xs);
	lla	a0,xs.0	#,
	call	strlen@plt	#
	mv	a5,a0	# _1,
# code.c:8:     int len = strlen(xs);
	sw	a5,-84(s0)	# _1, len
# code.c:10:     if (len < shift) {
	lw	a5,-84(s0)		# tmp156, len
	mv	a4,a5	# tmp155, tmp156
	lw	a5,-104(s0)		# tmp158, shift
	sext.w	a4,a4	# tmp159, tmp155
	sext.w	a5,a5	# tmp160, tmp157
	bge	a4,a5,.L2	#, tmp159, tmp160,
# code.c:11:         for (int i = 0; i < len / 2; i++) {
	sw	zero,-88(s0)	#, i
# code.c:11:         for (int i = 0; i < len / 2; i++) {
	j	.L3		#
.L4:
# code.c:12:             char temp = xs[i];
	lla	a4,xs.0	# tmp161,
	lw	a5,-88(s0)		# tmp162, i
	add	a5,a4,a5	# tmp162, tmp163, tmp161
	lbu	a5,0(a5)	# tmp164, xs[i_14]
	sb	a5,-89(s0)	# tmp164, temp
# code.c:13:             xs[i] = xs[len - 1 - i];
	lw	a5,-84(s0)		# tmp167, len
	addiw	a5,a5,-1	#, tmp165, tmp166
	sext.w	a5,a5	# _2, tmp165
# code.c:13:             xs[i] = xs[len - 1 - i];
	lw	a4,-88(s0)		# tmp170, i
	subw	a5,a5,a4	# tmp168, _2, tmp169
	sext.w	a5,a5	# _3, tmp168
# code.c:13:             xs[i] = xs[len - 1 - i];
	lla	a4,xs.0	# tmp171,
	add	a5,a4,a5	# _3, tmp172, tmp171
	lbu	a4,0(a5)	# _4, xs[_3]
# code.c:13:             xs[i] = xs[len - 1 - i];
	lla	a3,xs.0	# tmp173,
	lw	a5,-88(s0)		# tmp174, i
	add	a5,a3,a5	# tmp174, tmp175, tmp173
	sb	a4,0(a5)	# _4, xs[i_14]
# code.c:14:             xs[len - 1 - i] = temp;
	lw	a5,-84(s0)		# tmp178, len
	addiw	a5,a5,-1	#, tmp176, tmp177
	sext.w	a5,a5	# _5, tmp176
# code.c:14:             xs[len - 1 - i] = temp;
	lw	a4,-88(s0)		# tmp181, i
	subw	a5,a5,a4	# tmp179, _5, tmp180
	sext.w	a5,a5	# _6, tmp179
# code.c:14:             xs[len - 1 - i] = temp;
	lla	a4,xs.0	# tmp182,
	add	a5,a4,a5	# _6, tmp183, tmp182
	lbu	a4,-89(s0)	# tmp184, temp
	sb	a4,0(a5)	# tmp184, xs[_6]
# code.c:11:         for (int i = 0; i < len / 2; i++) {
	lw	a5,-88(s0)		# tmp187, i
	addiw	a5,a5,1	#, tmp185, tmp186
	sw	a5,-88(s0)	# tmp185, i
.L3:
# code.c:11:         for (int i = 0; i < len / 2; i++) {
	lw	a5,-84(s0)		# tmp190, len
	srliw	a4,a5,31	#, tmp191, tmp189
	addw	a5,a4,a5	# tmp189, tmp192, tmp191
	sraiw	a5,a5,1	#, tmp193, tmp192
	sext.w	a4,a5	# _7, tmp193
# code.c:11:         for (int i = 0; i < len / 2; i++) {
	lw	a5,-88(s0)		# tmp195, i
	sext.w	a5,a5	# tmp196, tmp194
	blt	a5,a4,.L4	#, tmp196, tmp197,
	j	.L5		#
.L2:
# code.c:18:         strcpy(temp, xs + len - shift);
	lw	a4,-84(s0)		# _8, len
	lw	a5,-104(s0)		# _9, shift
	sub	a4,a4,a5	# _10, _8, _9
# code.c:18:         strcpy(temp, xs + len - shift);
	lla	a5,xs.0	# tmp198,
	add	a4,a4,a5	# tmp198, _11, _10
	addi	a5,s0,-80	#, tmp199,
	mv	a1,a4	#, _11
	mv	a0,a5	#, tmp199
	call	strcpy@plt	#
# code.c:19:         temp[shift] = '\0';
	lw	a5,-104(s0)		# tmp200, shift
	addi	a5,a5,-16	#, tmp216, tmp200
	add	a5,a5,s0	#, tmp201, tmp216
	sb	zero,-64(a5)	#, temp[shift_21(D)]
# code.c:20:         strncat(temp, xs, len - shift);
	lw	a5,-84(s0)		# tmp204, len
	mv	a4,a5	# tmp203, tmp204
	lw	a5,-104(s0)		# tmp206, shift
	subw	a5,a4,a5	# tmp202, tmp203, tmp205
	sext.w	a5,a5	# _12, tmp202
# code.c:20:         strncat(temp, xs, len - shift);
	mv	a4,a5	# _13, _12
	addi	a5,s0,-80	#, tmp207,
	mv	a2,a4	#, _13
	lla	a1,xs.0	#,
	mv	a0,a5	#, tmp207
	call	strncat@plt	#
# code.c:21:         strcpy(xs, temp);
	addi	a5,s0,-80	#, tmp208,
	mv	a1,a5	#, tmp208
	lla	a0,xs.0	#,
	call	strcpy@plt	#
.L5:
# code.c:24:     return xs;
	lla	a5,xs.0	# _32,
# code.c:24:     return xs;
	mv	a4,a5	# <retval>, _32
# code.c:25: }
	la	a5,__stack_chk_guard		# tmp210,
	ld	a3, -24(s0)	# tmp213, D.3460
	ld	a5, 0(a5)	# tmp211, __stack_chk_guard
	xor	a5, a3, a5	# tmp211, tmp213
	li	a3, 0	# tmp213
	beq	a5,zero,.L7	#, tmp211,,
	call	__stack_chk_fail@plt	#
.L7:
	mv	a0,a4	#, <retval>
	ld	ra,104(sp)		#,
	.cfi_restore 1
	ld	s0,96(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.local	xs.0
	.comm	xs.0,50,8
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
