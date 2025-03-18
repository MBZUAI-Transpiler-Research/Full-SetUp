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
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp141, a
	mv	a4,a1	# tmp143, b
	sd	a2,-48(s0)	# out, out
	sd	a3,-56(s0)	# size, size
	sw	a5,-36(s0)	# tmp142, a
	mv	a5,a4	# tmp144, tmp143
	sw	a5,-40(s0)	# tmp144, b
# eval/problem164//code.c:5:     *size = 0;
	ld	a5,-56(s0)		# tmp145, size
	sw	zero,0(a5)	#, *size_15(D)
# eval/problem164//code.c:7:     if (b < a) {
	lw	a5,-40(s0)		# tmp147, b
	mv	a4,a5	# tmp146, tmp147
	lw	a5,-36(s0)		# tmp149, a
	sext.w	a4,a4	# tmp150, tmp146
	sext.w	a5,a5	# tmp151, tmp148
	bge	a4,a5,.L2	#, tmp150, tmp151,
# eval/problem164//code.c:8:         m = a;
	lw	a5,-36(s0)		# tmp152, a
	sw	a5,-20(s0)	# tmp152, m
# eval/problem164//code.c:9:         a = b;
	lw	a5,-40(s0)		# tmp153, b
	sw	a5,-36(s0)	# tmp153, a
# eval/problem164//code.c:10:         b = m;
	lw	a5,-20(s0)		# tmp154, m
	sw	a5,-40(s0)	# tmp154, b
.L2:
# eval/problem164//code.c:13:     for (int i = a; i <= b; i++) {
	lw	a5,-36(s0)		# tmp155, a
	sw	a5,-24(s0)	# tmp155, i
# eval/problem164//code.c:13:     for (int i = a; i <= b; i++) {
	j	.L3		#
.L5:
# eval/problem164//code.c:14:         if (i < 10 && i % 2 == 0) {
	lw	a5,-24(s0)		# tmp157, i
	sext.w	a4,a5	# tmp158, tmp156
	li	a5,9		# tmp159,
	bgt	a4,a5,.L4	#, tmp158, tmp159,
# eval/problem164//code.c:14:         if (i < 10 && i % 2 == 0) {
	lw	a5,-24(s0)		# i.0_1, i
	andi	a5,a5,1	#, tmp161, tmp160
	sext.w	a5,a5	# _2, tmp161
# eval/problem164//code.c:14:         if (i < 10 && i % 2 == 0) {
	bne	a5,zero,.L4	#, _2,,
# eval/problem164//code.c:15:             out[(*size)++] = i;
	ld	a5,-56(s0)		# tmp162, size
	lw	a5,0(a5)		# _3, *size_15(D)
# eval/problem164//code.c:15:             out[(*size)++] = i;
	addiw	a4,a5,1	#, tmp163, _3
	sext.w	a3,a4	# _5, tmp163
	ld	a4,-56(s0)		# tmp164, size
	sw	a3,0(a4)	# _5, *size_15(D)
# eval/problem164//code.c:15:             out[(*size)++] = i;
	slli	a5,a5,2	#, _7, _6
	ld	a4,-48(s0)		# tmp165, out
	add	a5,a4,a5	# _7, _8, tmp165
# eval/problem164//code.c:15:             out[(*size)++] = i;
	lw	a4,-24(s0)		# tmp166, i
	sw	a4,0(a5)	# tmp166, *_8
.L4:
# eval/problem164//code.c:13:     for (int i = a; i <= b; i++) {
	lw	a5,-24(s0)		# tmp169, i
	addiw	a5,a5,1	#, tmp167, tmp168
	sw	a5,-24(s0)	# tmp167, i
.L3:
# eval/problem164//code.c:13:     for (int i = a; i <= b; i++) {
	lw	a5,-24(s0)		# tmp171, i
	mv	a4,a5	# tmp170, tmp171
	lw	a5,-40(s0)		# tmp173, b
	sext.w	a4,a4	# tmp174, tmp170
	sext.w	a5,a5	# tmp175, tmp172
	ble	a4,a5,.L5	#, tmp174, tmp175,
# eval/problem164//code.c:18: }
	nop	
	nop	
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
