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
	sd	a0,-56(s0)	# brackets, brackets
# eval/problem62//code.c:6:     int level = 0;
	sw	zero,-40(s0)	#, level
# eval/problem62//code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	sw	zero,-36(s0)	#, i
# eval/problem62//code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	j	.L2		#
.L7:
# eval/problem62//code.c:8:         if (brackets[i] == '(') level += 1;
	lw	a5,-36(s0)		# _1, i
	ld	a4,-56(s0)		# tmp144, brackets
	add	a5,a4,a5	# _1, _2, tmp144
	lbu	a5,0(a5)	# _3, *_2
# eval/problem62//code.c:8:         if (brackets[i] == '(') level += 1;
	mv	a4,a5	# tmp145, _3
	li	a5,40		# tmp146,
	bne	a4,a5,.L3	#, tmp145, tmp146,
# eval/problem62//code.c:8:         if (brackets[i] == '(') level += 1;
	lw	a5,-40(s0)		# tmp149, level
	addiw	a5,a5,1	#, tmp147, tmp148
	sw	a5,-40(s0)	# tmp147, level
.L3:
# eval/problem62//code.c:9:         if (brackets[i] == ')') level -= 1;
	lw	a5,-36(s0)		# _4, i
	ld	a4,-56(s0)		# tmp150, brackets
	add	a5,a4,a5	# _4, _5, tmp150
	lbu	a5,0(a5)	# _6, *_5
# eval/problem62//code.c:9:         if (brackets[i] == ')') level -= 1;
	mv	a4,a5	# tmp151, _6
	li	a5,41		# tmp152,
	bne	a4,a5,.L4	#, tmp151, tmp152,
# eval/problem62//code.c:9:         if (brackets[i] == ')') level -= 1;
	lw	a5,-40(s0)		# tmp155, level
	addiw	a5,a5,-1	#, tmp153, tmp154
	sw	a5,-40(s0)	# tmp153, level
.L4:
# eval/problem62//code.c:10:         if (level < 0) return false;
	lw	a5,-40(s0)		# tmp157, level
	sext.w	a5,a5	# tmp158, tmp156
	bge	a5,zero,.L5	#, tmp158,,
# eval/problem62//code.c:10:         if (level < 0) return false;
	li	a5,0		# _13,
# eval/problem62//code.c:10:         if (level < 0) return false;
	j	.L6		#
.L5:
# eval/problem62//code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	lw	a5,-36(s0)		# tmp161, i
	addiw	a5,a5,1	#, tmp159, tmp160
	sw	a5,-36(s0)	# tmp159, i
.L2:
# eval/problem62//code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	lw	s1,-36(s0)		# _7, i
# eval/problem62//code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	ld	a0,-56(s0)		#, brackets
	call	strlen@plt	#
	mv	a5,a0	# _8,
# eval/problem62//code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	bltu	s1,a5,.L7	#, _7, _8,
# eval/problem62//code.c:12:     return level == 0;
	lw	a5,-40(s0)		# tmp164, level
	sext.w	a5,a5	# tmp166, tmp163
	seqz	a5,a5	# tmp165, tmp166
	andi	a5,a5,0xff	# _13, tmp162
.L6:
# eval/problem62//code.c:13: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
