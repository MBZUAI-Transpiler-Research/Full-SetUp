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
	sd	a0,-40(s0)	# text, text
# eval/problem49//code.c:6:     int len = strlen(text);
	ld	a0,-40(s0)		#, text
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem49//code.c:6:     int len = strlen(text);
	sw	a5,-20(s0)	# _1, len
# eval/problem49//code.c:7:     for (int i = 0; i < len / 2; i++) {
	sw	zero,-24(s0)	#, i
# eval/problem49//code.c:7:     for (int i = 0; i < len / 2; i++) {
	j	.L2		#
.L5:
# eval/problem49//code.c:8:         if (text[i] != text[len - 1 - i]) {
	lw	a5,-24(s0)		# _2, i
	ld	a4,-40(s0)		# tmp146, text
	add	a5,a4,a5	# _2, _3, tmp146
	lbu	a4,0(a5)	# _4, *_3
# eval/problem49//code.c:8:         if (text[i] != text[len - 1 - i]) {
	lw	a5,-20(s0)		# tmp149, len
	addiw	a5,a5,-1	#, tmp147, tmp148
	sext.w	a5,a5	# _5, tmp147
# eval/problem49//code.c:8:         if (text[i] != text[len - 1 - i]) {
	lw	a3,-24(s0)		# tmp152, i
	subw	a5,a5,a3	# tmp150, _5, tmp151
	sext.w	a5,a5	# _6, tmp150
	mv	a3,a5	# _7, _6
# eval/problem49//code.c:8:         if (text[i] != text[len - 1 - i]) {
	ld	a5,-40(s0)		# tmp153, text
	add	a5,a5,a3	# _7, _8, tmp153
	lbu	a5,0(a5)	# _9, *_8
# eval/problem49//code.c:8:         if (text[i] != text[len - 1 - i]) {
	beq	a4,a5,.L3	#, tmp154, tmp155,
# eval/problem49//code.c:9:             return false;
	li	a5,0		# _12,
	j	.L4		#
.L3:
# eval/problem49//code.c:7:     for (int i = 0; i < len / 2; i++) {
	lw	a5,-24(s0)		# tmp158, i
	addiw	a5,a5,1	#, tmp156, tmp157
	sw	a5,-24(s0)	# tmp156, i
.L2:
# eval/problem49//code.c:7:     for (int i = 0; i < len / 2; i++) {
	lw	a5,-20(s0)		# tmp161, len
	srliw	a4,a5,31	#, tmp162, tmp160
	addw	a5,a4,a5	# tmp160, tmp163, tmp162
	sraiw	a5,a5,1	#, tmp164, tmp163
	sext.w	a4,a5	# _10, tmp164
# eval/problem49//code.c:7:     for (int i = 0; i < len / 2; i++) {
	lw	a5,-24(s0)		# tmp166, i
	sext.w	a5,a5	# tmp167, tmp165
	blt	a5,a4,.L5	#, tmp167, tmp168,
# eval/problem49//code.c:12:     return true;
	li	a5,1		# _12,
.L4:
# eval/problem49//code.c:13: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
