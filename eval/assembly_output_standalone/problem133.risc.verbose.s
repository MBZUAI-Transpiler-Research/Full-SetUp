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
	sd	a0,-56(s0)	# str, str
# eval/problem133//code.c:5:     int count = 0, maxcount = 0;
	sw	zero,-44(s0)	#, count
# eval/problem133//code.c:5:     int count = 0, maxcount = 0;
	sw	zero,-40(s0)	#, maxcount
# eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	sw	zero,-36(s0)	#, i
# eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	j	.L2		#
.L9:
# eval/problem133//code.c:7:         if (str[i] == '[') count += 1;
	lw	a5,-36(s0)		# _1, i
	ld	a4,-56(s0)		# tmp145, str
	add	a5,a4,a5	# _1, _2, tmp145
	lbu	a5,0(a5)	# _3, *_2
# eval/problem133//code.c:7:         if (str[i] == '[') count += 1;
	mv	a4,a5	# tmp146, _3
	li	a5,91		# tmp147,
	bne	a4,a5,.L3	#, tmp146, tmp147,
# eval/problem133//code.c:7:         if (str[i] == '[') count += 1;
	lw	a5,-44(s0)		# tmp150, count
	addiw	a5,a5,1	#, tmp148, tmp149
	sw	a5,-44(s0)	# tmp148, count
.L3:
# eval/problem133//code.c:8:         if (str[i] == ']') count -= 1;
	lw	a5,-36(s0)		# _4, i
	ld	a4,-56(s0)		# tmp151, str
	add	a5,a4,a5	# _4, _5, tmp151
	lbu	a5,0(a5)	# _6, *_5
# eval/problem133//code.c:8:         if (str[i] == ']') count -= 1;
	mv	a4,a5	# tmp152, _6
	li	a5,93		# tmp153,
	bne	a4,a5,.L4	#, tmp152, tmp153,
# eval/problem133//code.c:8:         if (str[i] == ']') count -= 1;
	lw	a5,-44(s0)		# tmp156, count
	addiw	a5,a5,-1	#, tmp154, tmp155
	sw	a5,-44(s0)	# tmp154, count
.L4:
# eval/problem133//code.c:9:         if (count < 0) count = 0;
	lw	a5,-44(s0)		# tmp158, count
	sext.w	a5,a5	# tmp159, tmp157
	bge	a5,zero,.L5	#, tmp159,,
# eval/problem133//code.c:9:         if (count < 0) count = 0;
	sw	zero,-44(s0)	#, count
.L5:
# eval/problem133//code.c:10:         if (count > maxcount) maxcount = count;
	lw	a5,-44(s0)		# tmp161, count
	mv	a4,a5	# tmp160, tmp161
	lw	a5,-40(s0)		# tmp163, maxcount
	sext.w	a4,a4	# tmp164, tmp160
	sext.w	a5,a5	# tmp165, tmp162
	ble	a4,a5,.L6	#, tmp164, tmp165,
# eval/problem133//code.c:10:         if (count > maxcount) maxcount = count;
	lw	a5,-44(s0)		# tmp166, count
	sw	a5,-40(s0)	# tmp166, maxcount
.L6:
# eval/problem133//code.c:11:         if (count <= maxcount - 2) return 1;
	lw	a5,-40(s0)		# tmp169, maxcount
	addiw	a5,a5,-1	#, tmp167, tmp168
	sext.w	a4,a5	# _7, tmp167
# eval/problem133//code.c:11:         if (count <= maxcount - 2) return 1;
	lw	a5,-44(s0)		# tmp171, count
	sext.w	a5,a5	# tmp172, tmp170
	bge	a5,a4,.L7	#, tmp172, tmp173,
# eval/problem133//code.c:11:         if (count <= maxcount - 2) return 1;
	li	a5,1		# _17,
# eval/problem133//code.c:11:         if (count <= maxcount - 2) return 1;
	j	.L8		#
.L7:
# eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	lw	a5,-36(s0)		# tmp176, i
	addiw	a5,a5,1	#, tmp174, tmp175
	sw	a5,-36(s0)	# tmp174, i
.L2:
# eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	lw	s1,-36(s0)		# _8, i
# eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	ld	a0,-56(s0)		#, str
	call	strlen@plt	#
	mv	a5,a0	# _9,
# eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	bltu	s1,a5,.L9	#, _8, _9,
# eval/problem133//code.c:13:     return 0;
	li	a5,0		# _17,
.L8:
# eval/problem133//code.c:14: }
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
