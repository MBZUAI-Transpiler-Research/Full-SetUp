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
	mv	a5,a0	# tmp139, a
	sw	a5,-36(s0)	# tmp140, a
# eval/problem76//code.c:5:     if (a < 2) return 0;
	lw	a5,-36(s0)		# tmp142, a
	sext.w	a4,a5	# tmp143, tmp141
	li	a5,1		# tmp144,
	bgt	a4,a5,.L2	#, tmp143, tmp144,
# eval/problem76//code.c:5:     if (a < 2) return 0;
	li	a5,0		# _10,
# eval/problem76//code.c:5:     if (a < 2) return 0;
	j	.L3		#
.L2:
# eval/problem76//code.c:6:     int num = 0;
	sw	zero,-24(s0)	#, num
# eval/problem76//code.c:7:     for (int i = 2; i * i <= a; i++) {
	li	a5,2		# tmp145,
	sw	a5,-20(s0)	# tmp145, i
# eval/problem76//code.c:7:     for (int i = 2; i * i <= a; i++) {
	j	.L4		#
.L6:
# eval/problem76//code.c:9:             a = a / i;
	lw	a5,-36(s0)		# tmp149, a
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-20(s0)		# tmp151, i
	divw	a5,a4,a5	# tmp150, tmp147, tmp148
	sw	a5,-36(s0)	# tmp147, a
# eval/problem76//code.c:10:             num++;
	lw	a5,-24(s0)		# tmp154, num
	addiw	a5,a5,1	#, tmp152, tmp153
	sw	a5,-24(s0)	# tmp152, num
.L5:
# eval/problem76//code.c:8:         while (a % i == 0) {
	lw	a5,-36(s0)		# tmp157, a
	mv	a4,a5	# tmp156, tmp157
	lw	a5,-20(s0)		# tmp160, i
	remw	a5,a4,a5	# tmp159, tmp158, tmp156
	sext.w	a5,a5	# _1, tmp158
# eval/problem76//code.c:8:         while (a % i == 0) {
	beq	a5,zero,.L6	#, _1,,
# eval/problem76//code.c:7:     for (int i = 2; i * i <= a; i++) {
	lw	a5,-20(s0)		# tmp163, i
	addiw	a5,a5,1	#, tmp161, tmp162
	sw	a5,-20(s0)	# tmp161, i
.L4:
# eval/problem76//code.c:7:     for (int i = 2; i * i <= a; i++) {
	lw	a5,-20(s0)		# tmp166, i
	mulw	a5,a5,a5	# tmp164, tmp165, tmp165
	sext.w	a4,a5	# _2, tmp164
# eval/problem76//code.c:7:     for (int i = 2; i * i <= a; i++) {
	lw	a5,-36(s0)		# tmp168, a
	sext.w	a5,a5	# tmp169, tmp167
	bge	a5,a4,.L5	#, tmp169, tmp170,
# eval/problem76//code.c:13:     if (a > 1) num++;
	lw	a5,-36(s0)		# tmp172, a
	sext.w	a4,a5	# tmp173, tmp171
	li	a5,1		# tmp174,
	ble	a4,a5,.L8	#, tmp173, tmp174,
# eval/problem76//code.c:13:     if (a > 1) num++;
	lw	a5,-24(s0)		# tmp177, num
	addiw	a5,a5,1	#, tmp175, tmp176
	sw	a5,-24(s0)	# tmp175, num
.L8:
# eval/problem76//code.c:14:     return num == 3;
	lw	a5,-24(s0)		# tmp180, num
	sext.w	a4,a5	# tmp182, tmp179
	li	a5,3		# tmp184,
	sub	a5,a4,a5	# tmp183, tmp182, tmp184
	seqz	a5,a5	# tmp181, tmp183
	andi	a5,a5,0xff	# _3, tmp178
	sext.w	a5,a5	# _10, _3
.L3:
# eval/problem76//code.c:15: }
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
