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
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# str, str
	sd	a1,-48(s0)	# out, out
# code.c:5:     int length = strlen(str);
	ld	a0,-40(s0)		#, str
	call	strlen@plt	#
	mv	a5,a0	# _1,
# code.c:5:     int length = strlen(str);
	sw	a5,-20(s0)	# _1, length
# code.c:6:     for (int i = 0; i < length; i++) {
	sw	zero,-24(s0)	#, i
# code.c:6:     for (int i = 0; i < length; i++) {
	j	.L2		#
.L5:
# code.c:7:         char w = str[i];
	lw	a5,-24(s0)		# _2, i
	ld	a4,-40(s0)		# tmp141, str
	add	a5,a4,a5	# _2, _3, tmp141
# code.c:7:         char w = str[i];
	lbu	a5,0(a5)	# tmp142, *_3
	sb	a5,-25(s0)	# tmp142, w
# code.c:8:         if (w >= 'a' && w <= 'z') {
	lbu	a5,-25(s0)	# tmp144, w
	andi	a4,a5,0xff	# tmp145, tmp143
	li	a5,96		# tmp146,
	bleu	a4,a5,.L3	#, tmp145, tmp146,
# code.c:8:         if (w >= 'a' && w <= 'z') {
	lbu	a5,-25(s0)	# tmp148, w
	andi	a4,a5,0xff	# tmp149, tmp147
	li	a5,122		# tmp150,
	bgtu	a4,a5,.L3	#, tmp149, tmp150,
# code.c:9:             w -= 32;
	lbu	a5,-25(s0)	# tmp152, w
	addiw	a5,a5,-32	#, tmp153, tmp151
	sb	a5,-25(s0)	# tmp153, w
	j	.L4		#
.L3:
# code.c:10:         } else if (w >= 'A' && w <= 'Z') {
	lbu	a5,-25(s0)	# tmp155, w
	andi	a4,a5,0xff	# tmp156, tmp154
	li	a5,64		# tmp157,
	bleu	a4,a5,.L4	#, tmp156, tmp157,
# code.c:10:         } else if (w >= 'A' && w <= 'Z') {
	lbu	a5,-25(s0)	# tmp159, w
	andi	a4,a5,0xff	# tmp160, tmp158
	li	a5,90		# tmp161,
	bgtu	a4,a5,.L4	#, tmp160, tmp161,
# code.c:11:             w += 32;
	lbu	a5,-25(s0)	# tmp163, w
	addiw	a5,a5,32	#, tmp164, tmp162
	sb	a5,-25(s0)	# tmp164, w
.L4:
# code.c:13:         out[i] = w;
	lw	a5,-24(s0)		# _4, i
	ld	a4,-48(s0)		# tmp165, out
	add	a5,a4,a5	# _4, _5, tmp165
# code.c:13:         out[i] = w;
	lbu	a4,-25(s0)	# tmp166, w
	sb	a4,0(a5)	# tmp166, *_5
# code.c:6:     for (int i = 0; i < length; i++) {
	lw	a5,-24(s0)		# tmp169, i
	addiw	a5,a5,1	#, tmp167, tmp168
	sw	a5,-24(s0)	# tmp167, i
.L2:
# code.c:6:     for (int i = 0; i < length; i++) {
	lw	a5,-24(s0)		# tmp171, i
	mv	a4,a5	# tmp170, tmp171
	lw	a5,-20(s0)		# tmp173, length
	sext.w	a4,a4	# tmp174, tmp170
	sext.w	a5,a5	# tmp175, tmp172
	blt	a4,a5,.L5	#, tmp174, tmp175,
# code.c:15:     out[length] = '\0';
	lw	a5,-20(s0)		# _6, length
	ld	a4,-48(s0)		# tmp176, out
	add	a5,a4,a5	# _6, _7, tmp176
# code.c:15:     out[length] = '\0';
	sb	zero,0(a5)	#, *_7
# code.c:16: }
	nop	
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
