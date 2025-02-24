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
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# s, s
	sd	a1,-48(s0)	# out, out
# code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	sw	zero,-24(s0)	#, i
# code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	j	.L2		#
.L3:
# code.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	lw	a5,-24(s0)		# _1, i
	ld	a4,-40(s0)		# tmp148, s
	add	a5,a4,a5	# _1, _2, tmp148
	lbu	a5,0(a5)	# _3, *_2
# code.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	sext.w	a5,a5	# _4, _3
# code.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	addiw	a5,a5,-93	#, tmp149, _4
	sext.w	a5,a5	# _5, tmp149
# code.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	mv	a4,a5	# tmp151, _5
	li	a5,26		# tmp153,
	remw	a5,a4,a5	# tmp153, tmp152, tmp151
	sext.w	a5,a5	# _6, tmp152
# code.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	addiw	a5,a5,97	#, tmp154, _6
	sw	a5,-20(s0)	# tmp154, w
# code.c:8:         out[i] = (char)w;
	lw	a5,-24(s0)		# _7, i
	ld	a4,-48(s0)		# tmp155, out
	add	a5,a4,a5	# _7, _8, tmp155
# code.c:8:         out[i] = (char)w;
	lw	a4,-20(s0)		# tmp157, w
	andi	a4,a4,0xff	# _9, tmp156
# code.c:8:         out[i] = (char)w;
	sb	a4,0(a5)	# _9, *_8
# code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	lw	a5,-24(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-24(s0)	# tmp158, i
.L2:
# code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	lw	a5,-24(s0)		# _10, i
	ld	a4,-40(s0)		# tmp161, s
	add	a5,a4,a5	# _10, _11, tmp161
	lbu	a5,0(a5)	# _12, *_11
# code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	bne	a5,zero,.L3	#, _12,,
# code.c:10:     out[i] = '\0';
	lw	a5,-24(s0)		# _13, i
	ld	a4,-48(s0)		# tmp162, out
	add	a5,a4,a5	# _13, _14, tmp162
# code.c:10:     out[i] = '\0';
	sb	zero,0(a5)	#, *_14
# code.c:11: }
	nop	
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
