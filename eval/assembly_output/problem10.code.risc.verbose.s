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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# numbers, numbers
	mv	a5,a1	# tmp148, size
	sw	a5,-44(s0)	# tmp149, size
# code.c:5:     if (size <= 0) {
	lw	a5,-44(s0)		# tmp151, size
	sext.w	a5,a5	# tmp152, tmp150
	bgt	a5,zero,.L2	#, tmp152,,
# code.c:6:         return NULL;
	li	a5,0		# _16,
	j	.L3		#
.L2:
# code.c:9:     int *out = malloc(size * sizeof(int));
	lw	a5,-44(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp153,
	sd	a5,-24(s0)	# tmp153, out
# code.c:10:     if (!out) {
	ld	a5,-24(s0)		# tmp154, out
	bne	a5,zero,.L4	#, tmp154,,
# code.c:11:         return NULL;
	li	a5,0		# _16,
	j	.L3		#
.L4:
# code.c:14:     int max = numbers[0];
	ld	a5,-40(s0)		# tmp155, numbers
	lw	a5,0(a5)		# tmp156, *numbers_23(D)
	sw	a5,-32(s0)	# tmp156, max
# code.c:15:     for (int i = 0; i < size; i++) {
	sw	zero,-28(s0)	#, i
# code.c:15:     for (int i = 0; i < size; i++) {
	j	.L5		#
.L7:
# code.c:16:         if (numbers[i] > max) max = numbers[i];
	lw	a5,-28(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
	ld	a4,-40(s0)		# tmp157, numbers
	add	a5,a4,a5	# _4, _5, tmp157
	lw	a4,0(a5)		# _6, *_5
# code.c:16:         if (numbers[i] > max) max = numbers[i];
	lw	a5,-32(s0)		# tmp159, max
	sext.w	a5,a5	# tmp160, tmp158
	bge	a5,a4,.L6	#, tmp160, tmp161,
# code.c:16:         if (numbers[i] > max) max = numbers[i];
	lw	a5,-28(s0)		# _7, i
	slli	a5,a5,2	#, _8, _7
	ld	a4,-40(s0)		# tmp162, numbers
	add	a5,a4,a5	# _8, _9, tmp162
# code.c:16:         if (numbers[i] > max) max = numbers[i];
	lw	a5,0(a5)		# tmp163, *_9
	sw	a5,-32(s0)	# tmp163, max
.L6:
# code.c:17:         out[i] = max;
	lw	a5,-28(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a4,-24(s0)		# tmp164, out
	add	a5,a4,a5	# _11, _12, tmp164
# code.c:17:         out[i] = max;
	lw	a4,-32(s0)		# tmp165, max
	sw	a4,0(a5)	# tmp165, *_12
# code.c:15:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp168, i
	addiw	a5,a5,1	#, tmp166, tmp167
	sw	a5,-28(s0)	# tmp166, i
.L5:
# code.c:15:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp170, i
	mv	a4,a5	# tmp169, tmp170
	lw	a5,-44(s0)		# tmp172, size
	sext.w	a4,a4	# tmp173, tmp169
	sext.w	a5,a5	# tmp174, tmp171
	blt	a4,a5,.L7	#, tmp173, tmp174,
# code.c:19:     return out;
	ld	a5,-24(s0)		# _16, out
.L3:
# code.c:20: }
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
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
