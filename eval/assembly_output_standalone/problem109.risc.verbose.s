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
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# n, n
	mv	a5,a1	# tmp145, size
	sw	a5,-44(s0)	# tmp146, size
# eval/problem109//code.c:5:     int num = 0;
	sw	zero,-32(s0)	#, num
# eval/problem109//code.c:6:     for (int i = 0; i < size; i++) {
	sw	zero,-28(s0)	#, i
# eval/problem109//code.c:6:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L7:
# eval/problem109//code.c:7:         if (n[i] > 0) {
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp147, n
	add	a5,a4,a5	# _2, _3, tmp147
	lw	a5,0(a5)		# _4, *_3
# eval/problem109//code.c:7:         if (n[i] > 0) {
	ble	a5,zero,.L3	#, tmp148,,
# eval/problem109//code.c:8:             num += 1;
	lw	a5,-32(s0)		# tmp151, num
	addiw	a5,a5,1	#, tmp149, tmp150
	sw	a5,-32(s0)	# tmp149, num
	j	.L4		#
.L3:
# eval/problem109//code.c:10:             int sum = 0;
	sw	zero,-24(s0)	#, sum
# eval/problem109//code.c:11:             int w = abs(n[i]);
	lw	a5,-28(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp152, n
	add	a5,a4,a5	# _6, _7, tmp152
	lw	a4,0(a5)		# _8, *_7
# eval/problem109//code.c:11:             int w = abs(n[i]);
	sraiw	a5,a4,31	#, tmp153, _8
	xor	a4,a4,a5	# tmp153, tmp154, _8
	subw	a5,a4,a5	# tmp155, tmp154, tmp153
	sw	a5,-20(s0)	# tmp155, w
# eval/problem109//code.c:12:             while (w >= 10) {
	j	.L5		#
.L6:
# eval/problem109//code.c:13:                 sum += w % 10;
	lw	a5,-20(s0)		# tmp158, w
	mv	a4,a5	# tmp157, tmp158
	li	a5,10		# tmp160,
	remw	a5,a4,a5	# tmp160, tmp159, tmp157
	sext.w	a5,a5	# _9, tmp159
# eval/problem109//code.c:13:                 sum += w % 10;
	lw	a4,-24(s0)		# tmp163, sum
	addw	a5,a4,a5	# _9, tmp161, tmp162
	sw	a5,-24(s0)	# tmp161, sum
# eval/problem109//code.c:14:                 w = w / 10;
	lw	a5,-20(s0)		# tmp166, w
	mv	a4,a5	# tmp165, tmp166
	li	a5,10		# tmp168,
	divw	a5,a4,a5	# tmp168, tmp167, tmp165
	sw	a5,-20(s0)	# tmp167, w
.L5:
# eval/problem109//code.c:12:             while (w >= 10) {
	lw	a5,-20(s0)		# tmp170, w
	sext.w	a4,a5	# tmp171, tmp169
	li	a5,9		# tmp172,
	bgt	a4,a5,.L6	#, tmp171, tmp172,
# eval/problem109//code.c:16:             sum -= w;
	lw	a5,-24(s0)		# tmp175, sum
	mv	a4,a5	# tmp174, tmp175
	lw	a5,-20(s0)		# tmp177, w
	subw	a5,a4,a5	# tmp173, tmp174, tmp176
	sw	a5,-24(s0)	# tmp173, sum
# eval/problem109//code.c:17:             if (sum > 0) num += 1;
	lw	a5,-24(s0)		# tmp179, sum
	sext.w	a5,a5	# tmp180, tmp178
	ble	a5,zero,.L4	#, tmp180,,
# eval/problem109//code.c:17:             if (sum > 0) num += 1;
	lw	a5,-32(s0)		# tmp183, num
	addiw	a5,a5,1	#, tmp181, tmp182
	sw	a5,-32(s0)	# tmp181, num
.L4:
# eval/problem109//code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp186, i
	addiw	a5,a5,1	#, tmp184, tmp185
	sw	a5,-28(s0)	# tmp184, i
.L2:
# eval/problem109//code.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp188, i
	mv	a4,a5	# tmp187, tmp188
	lw	a5,-44(s0)		# tmp190, size
	sext.w	a4,a4	# tmp191, tmp187
	sext.w	a5,a5	# tmp192, tmp189
	blt	a4,a5,.L7	#, tmp191, tmp192,
# eval/problem109//code.c:20:     return num;
	lw	a5,-32(s0)		# _18, num
# eval/problem109//code.c:21: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
