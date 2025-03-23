	.file	"code.c"
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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# s, s
	mv	a5,a1	# tmp143, encode
	sw	a5,-60(s0)	# tmp144, encode
# eval/problem51//code.c:6:     int shift = encode ? 5 : 21;
	lw	a5,-60(s0)		# tmp146, encode
	sext.w	a5,a5	# tmp147, tmp145
	beq	a5,zero,.L2	#, tmp147,,
# eval/problem51//code.c:6:     int shift = encode ? 5 : 21;
	li	a5,5		# iftmp.0_10,
	j	.L3		#
.L2:
# eval/problem51//code.c:6:     int shift = encode ? 5 : 21;
	li	a5,21		# iftmp.0_10,
.L3:
# eval/problem51//code.c:6:     int shift = encode ? 5 : 21;
	sw	a5,-40(s0)	# iftmp.0_10, shift
# eval/problem51//code.c:7:     size_t len = strlen(s);
	ld	a0,-56(s0)		#, s
	call	strlen@plt	#
	sd	a0,-24(s0)	#, len
# eval/problem51//code.c:8:     for (size_t i = 0; i < len; i++) {
	sd	zero,-32(s0)	#, i
# eval/problem51//code.c:8:     for (size_t i = 0; i < len; i++) {
	j	.L4		#
.L5:
# eval/problem51//code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	ld	a4,-56(s0)		# tmp148, s
	ld	a5,-32(s0)		# tmp149, i
	add	a5,a4,a5	# tmp149, _1, tmp148
	lbu	a5,0(a5)	# _2, *_1
	sext.w	a5,a5	# _3, _2
# eval/problem51//code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	addiw	a5,a5,-97	#, tmp150, _3
	sext.w	a5,a5	# _4, tmp150
# eval/problem51//code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	lw	a4,-40(s0)		# tmp153, shift
	addw	a5,a4,a5	# _4, tmp151, tmp152
	sext.w	a5,a5	# _5, tmp151
# eval/problem51//code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	mv	a4,a5	# tmp155, _5
	li	a5,26		# tmp157,
	remw	a5,a4,a5	# tmp157, tmp156, tmp155
	sext.w	a5,a5	# _6, tmp156
# eval/problem51//code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	addiw	a5,a5,97	#, tmp158, _6
	sw	a5,-36(s0)	# tmp158, w
# eval/problem51//code.c:10:         s[i] = (char)w;
	ld	a4,-56(s0)		# tmp159, s
	ld	a5,-32(s0)		# tmp160, i
	add	a5,a4,a5	# tmp160, _7, tmp159
# eval/problem51//code.c:10:         s[i] = (char)w;
	lw	a4,-36(s0)		# tmp162, w
	andi	a4,a4,0xff	# _8, tmp161
# eval/problem51//code.c:10:         s[i] = (char)w;
	sb	a4,0(a5)	# _8, *_7
# eval/problem51//code.c:8:     for (size_t i = 0; i < len; i++) {
	ld	a5,-32(s0)		# tmp164, i
	addi	a5,a5,1	#, tmp163, tmp164
	sd	a5,-32(s0)	# tmp163, i
.L4:
# eval/problem51//code.c:8:     for (size_t i = 0; i < len; i++) {
	ld	a4,-32(s0)		# tmp165, i
	ld	a5,-24(s0)		# tmp166, len
	bltu	a4,a5,.L5	#, tmp165, tmp166,
# eval/problem51//code.c:12: }
	nop	
	nop	
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
