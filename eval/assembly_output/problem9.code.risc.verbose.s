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
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# numbers, numbers
	mv	a5,a1	# tmp143, size
	sd	a2,-56(s0)	# result, result
	sw	a5,-44(s0)	# tmp144, size
# code.c:4:     int sum = 0, product = 1;
	sw	zero,-28(s0)	#, sum
# code.c:4:     int sum = 0, product = 1;
	li	a5,1		# tmp145,
	sw	a5,-24(s0)	# tmp145, product
# code.c:5:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# code.c:5:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L3:
# code.c:6:         sum += numbers[i];
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp146, numbers
	add	a5,a4,a5	# _2, _3, tmp146
	lw	a5,0(a5)		# _4, *_3
# code.c:6:         sum += numbers[i];
	lw	a4,-28(s0)		# tmp149, sum
	addw	a5,a4,a5	# _4, tmp147, tmp148
	sw	a5,-28(s0)	# tmp147, sum
# code.c:7:         product *= numbers[i];
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp150, numbers
	add	a5,a4,a5	# _6, _7, tmp150
	lw	a5,0(a5)		# _8, *_7
# code.c:7:         product *= numbers[i];
	lw	a4,-24(s0)		# tmp153, product
	mulw	a5,a4,a5	# tmp151, tmp152, _8
	sw	a5,-24(s0)	# tmp151, product
# code.c:5:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp156, i
	addiw	a5,a5,1	#, tmp154, tmp155
	sw	a5,-20(s0)	# tmp154, i
.L2:
# code.c:5:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp158, i
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-44(s0)		# tmp160, size
	sext.w	a4,a4	# tmp161, tmp157
	sext.w	a5,a5	# tmp162, tmp159
	blt	a4,a5,.L3	#, tmp161, tmp162,
# code.c:9:     result[0] = sum;
	ld	a5,-56(s0)		# tmp163, result
	lw	a4,-28(s0)		# tmp164, sum
	sw	a4,0(a5)	# tmp164, *result_18(D)
# code.c:10:     result[1] = product;
	ld	a5,-56(s0)		# tmp165, result
	addi	a5,a5,4	#, _9, tmp165
# code.c:10:     result[1] = product;
	lw	a4,-24(s0)		# tmp166, product
	sw	a4,0(a5)	# tmp166, *_9
# code.c:11: }
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
